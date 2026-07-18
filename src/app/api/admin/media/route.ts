import { mkdir, writeFile } from "node:fs/promises";
import path from "node:path";
import { randomBytes } from "node:crypto";
import { getCurrentUser } from "@/lib/auth/session";
import { getDb } from "@/lib/db";
import { mediaAssets } from "@/lib/db/schema";
import { canEditContent } from "@/lib/permissions";
import { slugify } from "@/lib/utils";

const allowedTypes: Record<string, string> = {
  "image/jpeg": "jpg",
  "image/png": "png",
  "image/webp": "webp",
  "image/gif": "gif",
};

export async function POST(request: Request) {
  const user = await getCurrentUser();
  if (!user) return new Response("No autenticado", { status: 401 });
  if (!canEditContent(user.role)) return new Response("Sin permisos", { status: 403 });

  const formData = await request.formData();
  const file = formData.get("file");
  const title = String(formData.get("title") ?? "").trim();
  const altText = String(formData.get("altText") ?? "").trim();
  if (!(file instanceof File) || !title || !altText) {
    return new Response("Faltan el archivo, el título o el texto alternativo.", { status: 400 });
  }
  const extension = allowedTypes[file.type];
  if (!extension) return new Response("Formato no permitido.", { status: 415 });
  if (file.size > 8 * 1024 * 1024) return new Response("La imagen supera 8 MB.", { status: 413 });

  const monthFolder = new Date().toISOString().slice(0, 7);
  const uploadDirectory = path.resolve(process.cwd(), "public", "uploads", monthFolder);
  await mkdir(uploadDirectory, { recursive: true });
  const baseName = slugify(title) || "imagen";
  const fileName = `${baseName}-${randomBytes(4).toString("hex")}.${extension}`;
  const filePath = path.join(uploadDirectory, fileName);
  await writeFile(filePath, Buffer.from(await file.arrayBuffer()));

  const url = `/uploads/${monthFolder}/${fileName}`;
  await getDb().insert(mediaAssets).values({
    title,
    url,
    altText,
    sourceType: "upload",
    mimeType: file.type,
    createdById: user.id,
  });

  const responseUrl = new URL("/admin/medios?uploaded=1", request.url);
  return Response.redirect(responseUrl, 303);
}

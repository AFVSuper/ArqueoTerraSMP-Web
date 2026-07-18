import {
  index,
  integer,
  primaryKey,
  sqliteTable,
  text,
  uniqueIndex,
} from "drizzle-orm/sqlite-core";

export const roleCodes = ["SUPERADMIN", "EDITOR", "REVIEWER"] as const;
export const contentStatuses = ["draft", "published"] as const;

const timestamps = {
  createdAt: integer("created_at", { mode: "timestamp_ms" })
    .notNull()
    .$defaultFn(() => new Date()),
  updatedAt: integer("updated_at", { mode: "timestamp_ms" })
    .notNull()
    .$defaultFn(() => new Date()),
};

export const roles = sqliteTable("roles", {
  id: integer("id").primaryKey({ autoIncrement: true }),
  code: text("code", { enum: roleCodes }).notNull().unique(),
  name: text("name").notNull(),
  description: text("description").notNull(),
});

export const users = sqliteTable(
  "users",
  {
    id: integer("id").primaryKey({ autoIncrement: true }),
    name: text("name").notNull(),
    username: text("username").notNull(),
    passwordHash: text("password_hash").notNull(),
    roleId: integer("role_id")
      .notNull()
      .references(() => roles.id, { onDelete: "restrict" }),
    createdAt: timestamps.createdAt,
    updatedAt: timestamps.updatedAt,
  },
  (table) => [uniqueIndex("users_username_idx").on(table.username)],
);

export const sessions = sqliteTable(
  "sessions",
  {
    id: integer("id").primaryKey({ autoIncrement: true }),
    tokenHash: text("token_hash").notNull(),
    userId: integer("user_id")
      .notNull()
      .references(() => users.id, { onDelete: "cascade" }),
    expiresAt: integer("expires_at", { mode: "timestamp_ms" }).notNull(),
    createdAt: timestamps.createdAt,
  },
  (table) => [
    uniqueIndex("sessions_token_idx").on(table.tokenHash),
    index("sessions_user_idx").on(table.userId),
  ],
);

export const mods = sqliteTable(
  "mods",
  {
    id: integer("id").primaryKey({ autoIncrement: true }),
    slug: text("slug").notNull(),
    title: text("title").notNull(),
    shortDescription: text("short_description").notNull(),
    fullDescription: text("full_description").notNull(),
    serverPurpose: text("server_purpose").notNull().default(""),
    mechanics: text("mechanics").notNull().default(""),
    progression: text("progression").notNull().default(""),
    practicalNotes: text("practical_notes").notNull().default(""),
    category: text("category").notNull(),
    coverImage: text("cover_image"),
    gallery: text("gallery").notNull().default("[]"),
    featured: integer("featured", { mode: "boolean" }).notNull().default(false),
    status: text("status", { enum: contentStatuses }).notNull().default("draft"),
    sortOrder: integer("sort_order").notNull().default(0),
    ...timestamps,
  },
  (table) => [
    uniqueIndex("mods_slug_idx").on(table.slug),
    index("mods_status_idx").on(table.status),
  ],
);

export const items = sqliteTable(
  "items",
  {
    id: integer("id").primaryKey({ autoIncrement: true }),
    modId: integer("mod_id")
      .notNull()
      .references(() => mods.id, { onDelete: "cascade" }),
    slug: text("slug").notNull(),
    name: text("name").notNull(),
    // obtainMethod: text("obtainMethod").notNull(),
    summary: text("summary").notNull(),
    description: text("description").notNull(),
    functionDescription: text("function_description").notNull().default(""),
    requirements: text("requirements").notNull().default(""),
    durability: integer("durability"),
    stats: text("stats").notNull().default("{}"),
    howToObtain: text("how_to_obtain").notNull().default(""),
    uses: text("uses").notNull().default(""),
    tips: text("tips").notNull().default(""),
    image: text("image"),
    gallery: text("gallery").notNull().default("[]"),
    status: text("status", { enum: contentStatuses }).notNull().default("draft"),
    sortOrder: integer("sort_order").notNull().default(0),
    ...timestamps,
  },
  (table) => [
    uniqueIndex("items_slug_idx").on(table.slug),
    index("items_mod_idx").on(table.modId),
    index("items_status_idx").on(table.status),
  ],
);

export const craftingRecipes = sqliteTable(
  "crafting_recipes",
  {
    id: integer("id").primaryKey({ autoIncrement: true }),
    itemId: integer("item_id")
      .notNull()
      .references(() => items.id, { onDelete: "cascade" }),
    title: text("title").notNull(),
    station: text("station").notNull(),
    inputs: text("inputs").notNull().default("[]"),
    outputName: text("output_name").notNull(),
    outputQuantity: integer("output_quantity").notNull().default(1),
    notes: text("notes").notNull().default(""),
    image: text("image"),
    status: text("status", { enum: contentStatuses }).notNull().default("draft"),
    ...timestamps,
  },
  (table) => [index("recipes_item_idx").on(table.itemId)],
);

export const tags = sqliteTable("tags", {
  id: integer("id").primaryKey({ autoIncrement: true }),
  slug: text("slug").notNull().unique(),
  name: text("name").notNull(),
});

export const modTags = sqliteTable(
  "mod_tags",
  {
    modId: integer("mod_id")
      .notNull()
      .references(() => mods.id, { onDelete: "cascade" }),
    tagId: integer("tag_id")
      .notNull()
      .references(() => tags.id, { onDelete: "cascade" }),
  },
  (table) => [primaryKey({ columns: [table.modId, table.tagId] })],
);

export const itemTags = sqliteTable(
  "item_tags",
  {
    itemId: integer("item_id")
      .notNull()
      .references(() => items.id, { onDelete: "cascade" }),
    tagId: integer("tag_id")
      .notNull()
      .references(() => tags.id, { onDelete: "cascade" }),
  },
  (table) => [primaryKey({ columns: [table.itemId, table.tagId] })],
);

export const itemRelations = sqliteTable(
  "item_relations",
  {
    itemId: integer("item_id")
      .notNull()
      .references(() => items.id, { onDelete: "cascade" }),
    relatedItemId: integer("related_item_id")
      .notNull()
      .references(() => items.id, { onDelete: "cascade" }),
  },
  (table) => [primaryKey({ columns: [table.itemId, table.relatedItemId] })],
);

export const faqEntries = sqliteTable(
  "faq_entries",
  {
    id: integer("id").primaryKey({ autoIncrement: true }),
    question: text("question").notNull(),
    answer: text("answer").notNull(),
    category: text("category").notNull(),
    status: text("status", { enum: contentStatuses }).notNull().default("draft"),
    sortOrder: integer("sort_order").notNull().default(0),
    ...timestamps,
  },
  (table) => [index("faq_status_idx").on(table.status)],
);

export const installationSections = sqliteTable(
  "installation_sections",
  {
    id: integer("id").primaryKey({ autoIncrement: true }),
    title: text("title").notNull(),
    intro: text("intro").notNull().default(""),
    body: text("body").notNull().default(""),
    steps: text("steps").notNull().default("[]"),
    icon: text("icon").notNull().default("compass"),
    status: text("status", { enum: contentStatuses }).notNull().default("draft"),
    sortOrder: integer("sort_order").notNull().default(0),
    ...timestamps,
  },
  (table) => [index("installation_status_idx").on(table.status)],
);

export const mediaAssets = sqliteTable(
  "media_assets",
  {
    id: integer("id").primaryKey({ autoIncrement: true }),
    title: text("title").notNull(),
    url: text("url").notNull(),
    altText: text("alt_text").notNull(),
    sourceType: text("source_type", { enum: ["upload", "external"] })
      .notNull()
      .default("external"),
    mimeType: text("mime_type"),
    createdById: integer("created_by_id").references(() => users.id, {
      onDelete: "set null",
    }),
    createdAt: timestamps.createdAt,
  },
  (table) => [uniqueIndex("media_url_idx").on(table.url)],
);

export type RoleCode = (typeof roleCodes)[number];
export type ContentStatus = (typeof contentStatuses)[number];

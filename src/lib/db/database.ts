import Database from "better-sqlite3";
import { drizzle } from "drizzle-orm/better-sqlite3";
import { mkdirSync } from "node:fs";
import path from "node:path";
import * as schema from "./schema";

let sqliteClient: Database.Database | null = null;
let database: ReturnType<typeof drizzle<typeof schema>> | null = null;

function resolveDatabasePath() {
  const configuredPath = process.env.DATABASE_PATH ?? ".data/minecraft-guide.db";
  console.log(configuredPath)
  return path.isAbsolute(configuredPath)
    ? configuredPath
    : path.join(/* turbopackIgnore: true */ process.cwd(), configuredPath);
}

function initializeSchema(client: Database.Database) {
  client.pragma("foreign_keys = ON");
  client.pragma("journal_mode = WAL");
  client.exec(`
    CREATE TABLE IF NOT EXISTS roles (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      code TEXT NOT NULL UNIQUE,
      name TEXT NOT NULL,
      description TEXT NOT NULL
    );
    CREATE TABLE IF NOT EXISTS users (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      name TEXT NOT NULL,
      username TEXT NOT NULL UNIQUE,
      password_hash TEXT NOT NULL,
      role_id INTEGER NOT NULL REFERENCES roles(id) ON DELETE RESTRICT,
      created_at INTEGER NOT NULL,
      updated_at INTEGER NOT NULL
    );
    CREATE TABLE IF NOT EXISTS sessions (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      token_hash TEXT NOT NULL UNIQUE,
      user_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
      expires_at INTEGER NOT NULL,
      created_at INTEGER NOT NULL
    );
    CREATE INDEX IF NOT EXISTS sessions_user_idx ON sessions(user_id);
    CREATE TABLE IF NOT EXISTS mods (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      slug TEXT NOT NULL UNIQUE,
      title TEXT NOT NULL,
      short_description TEXT NOT NULL,
      full_description TEXT NOT NULL,
      server_purpose TEXT NOT NULL DEFAULT '',
      mechanics TEXT NOT NULL DEFAULT '',
      progression TEXT NOT NULL DEFAULT '',
      practical_notes TEXT NOT NULL DEFAULT '',
      category TEXT NOT NULL,
      cover_image TEXT,
      gallery TEXT NOT NULL DEFAULT '[]',
      featured INTEGER NOT NULL DEFAULT 0,
      status TEXT NOT NULL DEFAULT 'draft',
      sort_order INTEGER NOT NULL DEFAULT 0,
      created_at INTEGER NOT NULL,
      updated_at INTEGER NOT NULL
    );
    CREATE INDEX IF NOT EXISTS mods_status_idx ON mods(status);
    CREATE TABLE IF NOT EXISTS items (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      mod_id INTEGER NOT NULL REFERENCES mods(id) ON DELETE CASCADE,
      slug TEXT NOT NULL UNIQUE,
      name TEXT NOT NULL,
      summary TEXT NOT NULL,
      description TEXT NOT NULL,
      function_description TEXT NOT NULL DEFAULT '',
      requirements TEXT NOT NULL DEFAULT '',
      durability INTEGER,
      stats TEXT NOT NULL DEFAULT '{}',
      how_to_obtain TEXT NOT NULL DEFAULT '',
      uses TEXT NOT NULL DEFAULT '',
      tips TEXT NOT NULL DEFAULT '',
      image TEXT,
      gallery TEXT NOT NULL DEFAULT '[]',
      status TEXT NOT NULL DEFAULT 'draft',
      sort_order INTEGER NOT NULL DEFAULT 0,
      created_at INTEGER NOT NULL,
      updated_at INTEGER NOT NULL
    );
    CREATE INDEX IF NOT EXISTS items_mod_idx ON items(mod_id);
    CREATE INDEX IF NOT EXISTS items_status_idx ON items(status);
    CREATE TABLE IF NOT EXISTS crafting_recipes (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      item_id INTEGER NOT NULL REFERENCES items(id) ON DELETE CASCADE,
      title TEXT NOT NULL,
      station TEXT NOT NULL,
      inputs TEXT NOT NULL DEFAULT '[]',
      output_name TEXT NOT NULL,
      output_quantity INTEGER NOT NULL DEFAULT 1,
      notes TEXT NOT NULL DEFAULT '',
      image TEXT,
      status TEXT NOT NULL DEFAULT 'draft',
      created_at INTEGER NOT NULL,
      updated_at INTEGER NOT NULL
    );
    CREATE INDEX IF NOT EXISTS recipes_item_idx ON crafting_recipes(item_id);
    CREATE TABLE IF NOT EXISTS tags (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      slug TEXT NOT NULL UNIQUE,
      name TEXT NOT NULL
    );
    CREATE TABLE IF NOT EXISTS mod_tags (
      mod_id INTEGER NOT NULL REFERENCES mods(id) ON DELETE CASCADE,
      tag_id INTEGER NOT NULL REFERENCES tags(id) ON DELETE CASCADE,
      PRIMARY KEY (mod_id, tag_id)
    );
    CREATE TABLE IF NOT EXISTS item_tags (
      item_id INTEGER NOT NULL REFERENCES items(id) ON DELETE CASCADE,
      tag_id INTEGER NOT NULL REFERENCES tags(id) ON DELETE CASCADE,
      PRIMARY KEY (item_id, tag_id)
    );
    CREATE TABLE IF NOT EXISTS item_relations (
      item_id INTEGER NOT NULL REFERENCES items(id) ON DELETE CASCADE,
      related_item_id INTEGER NOT NULL REFERENCES items(id) ON DELETE CASCADE,
      PRIMARY KEY (item_id, related_item_id)
    );
    CREATE TABLE IF NOT EXISTS faq_entries (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      question TEXT NOT NULL,
      answer TEXT NOT NULL,
      category TEXT NOT NULL,
      status TEXT NOT NULL DEFAULT 'draft',
      sort_order INTEGER NOT NULL DEFAULT 0,
      created_at INTEGER NOT NULL,
      updated_at INTEGER NOT NULL
    );
    CREATE INDEX IF NOT EXISTS faq_status_idx ON faq_entries(status);
    CREATE TABLE IF NOT EXISTS installation_sections (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      title TEXT NOT NULL,
      intro TEXT NOT NULL DEFAULT '',
      body TEXT NOT NULL DEFAULT '',
      steps TEXT NOT NULL DEFAULT '[]',
      icon TEXT NOT NULL DEFAULT 'compass',
      status TEXT NOT NULL DEFAULT 'draft',
      sort_order INTEGER NOT NULL DEFAULT 0,
      created_at INTEGER NOT NULL,
      updated_at INTEGER NOT NULL
    );
    CREATE INDEX IF NOT EXISTS installation_status_idx ON installation_sections(status);
    CREATE TABLE IF NOT EXISTS media_assets (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      title TEXT NOT NULL,
      url TEXT NOT NULL UNIQUE,
      alt_text TEXT NOT NULL,
      source_type TEXT NOT NULL DEFAULT 'external',
      mime_type TEXT,
      created_by_id INTEGER REFERENCES users(id) ON DELETE SET NULL,
      created_at INTEGER NOT NULL
    );
  `);

  try {
    client.exec("ALTER TABLE items ADD COLUMN requirements TEXT NOT NULL DEFAULT ''");
  } catch {
    // Existing databases already have this column after the first migration.
  }
}

function getSqliteClient() {
  if (!sqliteClient) {
    const databasePath = resolveDatabasePath();

    sqliteClient = new Database(databasePath);
    initializeSchema(sqliteClient);
  }

  return sqliteClient;
}

// function getSqliteClient() {
//   if (!sqliteClient) {
//     const databasePath = resolveDatabasePath();
//     mkdirSync(path.dirname(databasePath), { recursive: true });
//     sqliteClient = new Database(databasePath);
//     initializeSchema(sqliteClient);
//   }

//   return sqliteClient;
// }

export function getDb() {
  if (!database) {
    database = drizzle(getSqliteClient(), { schema });
  }

  return database;
}

export function getRawDatabase() {
  return getSqliteClient();
}

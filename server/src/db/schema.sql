CREATE TABLE IF NOT EXISTS sessions (
  id         INTEGER PRIMARY KEY AUTOINCREMENT,
  name       TEXT NOT NULL,
  vat_enabled INTEGER NOT NULL DEFAULT 1,
  sc_enabled  INTEGER NOT NULL DEFAULT 1,
  sc_rate     REAL NOT NULL DEFAULT 10,
  created_at  TEXT NOT NULL DEFAULT (datetime('now'))
);

CREATE TABLE IF NOT EXISTS members (
  id         INTEGER PRIMARY KEY AUTOINCREMENT,
  session_id INTEGER NOT NULL REFERENCES sessions(id),
  name       TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS items (
  id         INTEGER PRIMARY KEY AUTOINCREMENT,
  session_id INTEGER NOT NULL REFERENCES sessions(id),
  name       TEXT NOT NULL,
  price      REAL NOT NULL
);

CREATE TABLE IF NOT EXISTS item_members (
  item_id    INTEGER NOT NULL REFERENCES items(id),
  member_id  INTEGER NOT NULL REFERENCES members(id),
  share      REAL NOT NULL DEFAULT 1
);
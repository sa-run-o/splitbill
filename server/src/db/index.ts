import Database from "better-sqlite3";
const db: Database.Database = new Database("splitbill.db");
export default db;

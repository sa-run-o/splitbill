import Database from "better-sqlite3";
import fs from "fs";
import path from "path";

const db = new Database("splitbill.db");
const schema = fs.readFileSync(path.join(__dirname, "schema.sql"), "utf-8");
db.exec(schema);

console.log("Migration complete");
db.close();

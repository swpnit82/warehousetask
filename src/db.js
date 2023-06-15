import { createPool } from "mysql2/promise";

export const pool = createPool({
  host: "db",
  user: "root",
  password: "password",
  port: 3306,
  database: "test",
});

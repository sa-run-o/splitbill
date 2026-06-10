import express, { Request, Response } from "express";

const app = express();
const PORT = 3001;

app.use(express.json());

app.get("/health-check", (req: Request, res: Response) => {
  res.send(`I'm fine.`);
});

app.listen(PORT, () => {
  console.log(`⚡️[server]: Server is running at http://localhost:${PORT}`);
});

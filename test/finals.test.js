import assert from "node:assert/strict";
import { existsSync, readFileSync } from "node:fs";
import path from "node:path";
import test from "node:test";
import { fileURLToPath } from "node:url";

const root = fileURLToPath(new URL("../", import.meta.url));
const page = readFileSync(path.join(root, "_games", "finals.md"), "utf8");
const config = readFileSync(path.join(root, "_config.yml"), "utf8");
const frontMatter = page.match(/^---\r?\n([\s\S]*?)\r?\n---(?:\r?\n|$)/)?.[1];

test("Finals page uses the page layout and title", () => {
  assert.ok(frontMatter, "page has YAML front matter");
  assert.match(frontMatter, /^layout:\s*page\s*$/m);
  assert.match(frontMatter, /^title:\s*Finals\s*$/m);
  assert.match(page, /Installeer \{\{ page\.title \}\}/);
});

test("Finals page references its configured version", () => {
  const configuredVersion = config.match(/^  finals:\r?\n    version:\s*(.+)$/m)?.[1];

  assert.ok(configuredVersion, "Finals version is configured in _config.yml");
  assert.match(page, /\{\{ site\.data\.finals\.version \}\}/);
});

test("Finals page links to the correct Steam game", () => {
  assert.match(page, /\[Steam\]\(steam:\/\/rungameid\/2073850\)/);
});

test("Finals page references an image that exists", () => {
  const imagePath = page.match(/!\[[^\]]*\]\((\/[^)]+)\)/)?.[1];

  assert.ok(imagePath, "page includes a root-relative image");
  assert.ok(
    existsSync(path.join(root, imagePath.replace(/^\/+/, ""))),
    `image exists: ${imagePath}`,
  );
});

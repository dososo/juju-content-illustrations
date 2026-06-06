#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SKILL_DIR="$ROOT_DIR/juju-content-illustrations"

fail() {
  printf 'FAIL release validation: %s\n' "$1" >&2
  exit 1
}

pass() {
  printf 'PASS release validation: %s\n' "$1"
}

required_files=(
  "README.md"
  "README.en.md"
  "VERSION"
  "LICENSE"
  "CODE_OF_CONDUCT.md"
  "CONTRIBUTING.md"
  "SECURITY.md"
  "juju-content-illustrations/SKILL.md"
  "juju-content-illustrations/references/style-dna.md"
  "juju-content-illustrations/references/output-formats.md"
  "juju-content-illustrations/references/workflow.md"
  "juju-content-illustrations/references/prompt-template.md"
  "juju-content-illustrations/references/qa-checklist.md"
  "juju-content-illustrations/examples/composition-3x4-suite.md"
)

for file in "${required_files[@]}"; do
  [[ -f "$ROOT_DIR/$file" ]] || fail "missing file: $file"
done

rg -n '简体中文.*English|version-v0.1.0|Skill 目录' "$ROOT_DIR/README.md" >/dev/null || fail "README.md missing language switch or version badges"
rg -n '简体中文.*English|version-v0.1.0|Skill directory' "$ROOT_DIR/README.en.md" >/dev/null || fail "README.en.md missing language switch or version badges"

image_count="$(find "$SKILL_DIR/assets/examples/composition-3x4" -maxdepth 1 -type f -name '*.png' | wc -l | tr -d ' ')"
[[ "$image_count" == "10" ]] || fail "expected 10 example PNG files, got $image_count"

for image in "$SKILL_DIR"/assets/examples/composition-3x4/*.png; do
  size="$(sips -g pixelWidth -g pixelHeight "$image" 2>/dev/null | awk '/pixelWidth/ {w=$2} /pixelHeight/ {h=$2} END {print w "x" h}')"
  [[ "$size" == "1200x1600" ]] || fail "bad image size for $image: $size"
done

leak_pattern='/Users/|manxiaochu|杰哥|HANDOFF|PROJECT_TODO|CHANGE_LOG|registry/|tasks/|UAT|uat|candidate_|proof|accepted|rejected|preflight|not release ready|release ready|小黑|helloianneo|xiaohei|对标|Douban|豆瓣|何瑶汐|周嘉宁|版权归作者'

if rg -n --glob '!**/validate-release.sh' "$leak_pattern" "$ROOT_DIR" >/dev/null; then
  rg -n --glob '!**/validate-release.sh' "$leak_pattern" "$ROOT_DIR" >&2
  fail "private, benchmark, or process-only text found"
fi

pass "clean open-source skill package is valid"

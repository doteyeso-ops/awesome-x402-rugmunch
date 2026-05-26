#!/bin/bash
# sync-to-hf.sh for awesome-x402
# Pushes the README to HuggingFace after every git push
#
# HF repos:
#   rugmunch/rug-munch-intelligence (org)
#   cryptorugmunch/rug-munch-intelligence (personal)

set -e

HF_TOKEN="${HF_TOKEN:-$(cat ~/.cache/huggingface/token 2>/dev/null || echo '')}"

if [ -z "$HF_TOKEN" ]; then
    echo "ERROR: No HF token. Set HF_TOKEN or save to ~/.cache/huggingface/token"
    exit 1
fi

REPO_DIR="${1:-$(cd "$(dirname "$0")/.." && pwd)}"

echo "=== Syncing awesome-x402 to HuggingFace ==="
echo "Source: $REPO_DIR"

python3 -c "
from huggingface_hub import HfApi

token = '$HF_TOKEN'
api = HfApi(token=token)
repos = ['rugmunch/rug-munch-intelligence', 'cryptorugmunch/rug-munch-intelligence']

for repo_id in repos:
    try:
        api.upload_file(
            path_or_fileobj='$REPO_DIR/README.md',
            path_in_repo='awesome-x402.md',
            repo_id=repo_id,
            repo_type='model',
        )
        print(f'  {repo_id}/awesome-x402.md synced')
    except Exception as e:
        print(f'  {repo_id}: {e}')

print('Done!')
"

echo "=== Sync complete ==="

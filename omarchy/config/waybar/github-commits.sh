#!/bin/bash
TOTAL_COMMITS=0

# Count local commits created today in all user projects
for repo in ~/dev/*/; do
    if [ -d "$repo/.git" ]; then
        COUNT=$(git -C "$repo" log --since="midnight" --author="$(git -C "$repo" config user.email || echo devrizvy)" --oneline 2>/dev/null | wc -l)
        TOTAL_COMMITS=$((TOTAL_COMMITS + COUNT))
    fi
done

if [ "$TOTAL_COMMITS" -eq 0 ]; then
    echo "{\"text\": \"0\", \"tooltip\": \"No commits made today\"}"
else
    echo "{\"text\": \"$TOTAL_COMMITS\", \"tooltip\": \"$TOTAL_COMMITS local commits logged today\"}"
fi

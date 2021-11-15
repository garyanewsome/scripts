cd ~/Github/obsidian-vault

CHANGES_EXIST="$(git status --porcelain | wc -l)"

if [ "$CHANGES_EXIST" -eq 0 ]; then
  exit 0
fi

DATE=`date +%Y-%m-%d_%H:%M:%S`

 git pull && git add . &&  git commit -q -m"MacBook Pro - Auto Sync: ($DATE)" && git push

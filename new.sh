#!/bin/sh

if  [ -z "$1" ] || [ -z "$2" ]; then
  echo "Usage: new.sh post|tweet|video post-slug"
  exit 1
fi

TYPE="$1"
SLUG="$2"

RED='\033[0;31m'
RESET='\033[0m'
ITALIC='\033[3m'

filename=$(printf "posts/Draft-%s-%s.md" $(date +'%Y-%m-%d') $SLUG)

if [ -e "$filename" ]; then
  echo "${RED}ERROR:${RESET} ${ITALIC}${filename}${RESET} already exist!"
  exit 1
fi

if [ $TYPE = "post" ]; then
  cat <<EOF | sed 's/^[ ]*//' > "$filename"
  ---
  Title:
  Date: $(date +'%Y-%m-%d')
  Tags:
  Summary:
  Cover:
  ---

EOF
elif [ $TYPE = "tweet" ]; then
  cat <<EOF | sed 's/^[ ]*//' > "$filename"
  ---
  Title:
  Date: $(date +'%Y-%m-%d')
  Tags:
  View: tweet
  Tweet: 
  ---

EOF
elif [ $TYPE = "video" ]; then
  cat <<EOF | sed 's/^[ ]*//' > "$filename"
  ---
  Title:
  Date: $(date +'%Y-%m-%d')
  Tags:
  View: video
  Video:
  ---

EOF
fi

# echo "${filename} ${TYPE} has been created"

hx ${filename}

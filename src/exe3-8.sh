DB_FILE="DB.txt"

if [ ! -f "$DB_FILE" ]; then
  touch "$DB_FILE"
fi

add_to_database() {
  local name="$1"
  local info="$2"

  echo "$name $info" >> "$DB_FILE"
}

add_to_database "$1" "$2"

cat "$DB_FILE"


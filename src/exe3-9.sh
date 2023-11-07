
DB_FILE="DB.txt"

search_in_database() {
  local name="$1"
  
  grep "$name" "$DB_FILE"
}

search_in_database "$1"


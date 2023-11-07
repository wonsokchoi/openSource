link_file_to_subdir() {
  file_name="$1"               
  dir_name="${file_name%.*}"   

  
  mkdir -p "$dir_name"

  
  ln -sfn "../$file_name" "$dir_name/$file_name"
}

if [ -z "$1" ]; then
  echo "사용법: $0 <디렉토리_이름>"
  exit 1
fi


if [ ! -d "$1" ]; then
  mkdir "$1"
fi


cd "$1"


for i in {0..4}; do
  touch "file$i.txt"
done


for file in *.txt; do
  link_file_to_subdir "$file"
done

if [ "$2" = "ll" ]; then
  long_listing
fi


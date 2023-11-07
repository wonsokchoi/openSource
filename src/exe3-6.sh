if [ ! -d "$1" ]; then
  mkdir "$1"
fi

cd "$1"

touch file{0..4}.txt

tar -cvf files.tar file{0..4}.txt

new_dir="files"
mkdir "$new_dir"
mv files.tar "$new_dir"

cd "$new_dir"
tar -xvf files.tar


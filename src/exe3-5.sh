function list_directory() {
  echo "함수 안으로 들어 왔음"
  ls "$@"
  echo "함수를 빠져나옴"
}

echo "프로그램을 시작합니다."

list_directory "$@"

echo "프로그램을 종료합니다."


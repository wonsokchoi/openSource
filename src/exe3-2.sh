if [ "$#" -ne 3 ]; then
    echo "usage: $0 number1 operator(+|-) number2"
    exit 1
fi
num1=$1
operator=$2
num2=$3

case $operator in
  +)
    echo "$(($num1 + $num2))"
    ;;
  -)
    echo "$(($num1 - $num2))"
    ;;
esac

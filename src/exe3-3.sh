if [ -z "$1" ] || [ -z "$2" ]; then
  read -p "Enter weight (kg): " weight
  read -p "Enter height (cm): " height
else
  weight=$1
  height=$2
fi
bmi=$(echo "scale=2; $weight / (($height / 100) * ($height / 100))" | bc)
if (( $(echo "$bmi < 18.5" | bc -l) )); then
  echo "저체중입니다."
elif (( $(echo "$bmi >= 18.5 && $bmi < 23" | bc -l) )); then
  echo "정상체중입니다."
elif (( $(echo "$bmi >= 23" | bc -l) )); then
  echo "과체중입니다."
fi


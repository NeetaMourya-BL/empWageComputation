echo "Welcome to Employee Wage Computation Program on Master Branch"
function calculateWorkingHour() {
case $1 in
0)
workingHour=0
;;
1)
workingHour=8
;;
2)
workingHour=8
;;
esac
echo $workingHour
}
WageperHour=20;
totalSalary=0;
totalworkinghours=0;
day=1;
while [[ $day -le 20 && $totalworkinghours -lt 100 ]]
do
wHour=$(calculateWorkingHour $((RANDOM%3)))
totalworkinghours=$(($totalworkinghours + $wHour))
if [ $totalworkinghours -gt 100 ]
then
totalworkinghours=$(($totalworkinghours - $wHour))
break
fi
Salary=$(($WageperHour * $wHour))
totalSalary=$(($totalSalary + $Salary))
((day++));
done
echo "Employee has earned $totalSalary $ in a month (Total working Hour : $totalworkinghours)"
echo "Daily wage:"${Salary[@]}
echo "Total wage:"${totalSalary[@]}
echo "Total day:"${day[@]}

echo "Welcome to Employee Wage Computation Program on Master Branch"
WageperHour=20
workingHour=0
totalSalary=0
for (( day=1; day<=20; day++ ))
do
Attendance=$((RANDOM%3))
case $Attendance in
0)
echo "Absent"
WorkingHour=0
;;
1)
echo "Present"
workingHour=8
;;
2)
echo "Part time"
workingHour=4
;;
esac
Salary=$(($WageperHour * $workingHour))
totalSalary=$(($totalSalary * $Salary))
done
echo "Employee has earned" $Salary "total in a month"


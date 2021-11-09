echo "Welcome to Employee Wage Computation Program on Master Branch"
WageperHour=20
workingHour=8
totalSalary=0
#VARIABLE
totalEmpHr=0
totalWorkingDays=0
while [[ $totalEmpHr -lt 100 && $totalworkingDays -le 20 ]]
do
((totalworkingDays++))
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
workingHour=6
;;
esac
totalEmpHr=$(($totalEmpHr + $workingHour))
done
totalSalary=$(($totalEmpHr * $WageperHour))
echo "Employee has earned" $totalSalary "in a month"

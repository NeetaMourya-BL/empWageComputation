echo "Welcome to Employee Wage Computation Program on Master Branch"
Attendance=$((RANDOM%3))
WageperHour=20
FullDayHour=8
PartTimeHour=8
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
echo "Employee has earned" $Salary "today"

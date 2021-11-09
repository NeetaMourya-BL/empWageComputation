echo "Welcome to Employee Wage Computation Program on Master Branch"
Attendance=$((RANDOM%3))
WageperHour=20
FullDayHour=8
PartTimeHour=8
if [[ $Attendance -eq 0 ]]
then
echo "Absent"
Salary=0
echo "Salary="$Salary
elif [[ $Attendance -eq 1 ]]
then
echo "Part time"
Salary=$(($WageperHour * $FullDayHour))
echo "Salary="$Salary
else 
echo "Present"
Salary=$(($WageperHour * $FullDayHour))
echo "Salary="$Salary
fi

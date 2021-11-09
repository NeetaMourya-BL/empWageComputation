echo "Welcome to Employee Wage Computation Program on Master Branch"
Attendance=$((RANDOM%2))
WageperHour=20
FullDayHour=8
if [[ $Attendance -eq 0 ]]
then
echo "Absent"
Salary=0
echo "Salary="$Salary
else 
echo "Present"
Salary=$(($WageperHour * $FullDayHour))
echo "Salary="$Salary
fi

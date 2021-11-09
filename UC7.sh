echo "Welcome to Employee Wage Computation Program on Master Branch"
WageperHour=20
workingHour=8
totalSalary=0
workingDay=20
MaxHour=100
#VARIABLE
totalEmpHr=0
totalSalary=0
totalWorkingDays=0
function getWorkingHours()
{
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
echo $workingHour
}
while [[ $totalWorkingDays -le $workingDay && $totalEmpHr -lt $MaxHour ]]
do
wHour=$(getWorkingHours $((RANDOM%3)))"
totalEmpHr=$(($totatEmpHr + $wHour))
if [[ $totalEmpHr -gt 100 ]]
then
totalEmpHr=$(($totalEmpHr - $wHour))
fi
salary=$(($WageperHour * $wHour))
totalSalary=$(($totalSalary + $salary))
((totalWorkingDays++))
done
echo "Employee has earned" $totalSalary "$ in a month Total working Hour:" $totatEmpHr


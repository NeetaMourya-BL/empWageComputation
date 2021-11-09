echo "Welcome to Employee Wage Computation Program on Master Branch"
Attendance=$((RANDOM%2))
if [[ $Attendance -eq 0 ]]
then
echo "Absent"
else 
echo "Present"
fi

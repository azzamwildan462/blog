date=$(date +%d/%m/%Y)
time=$(date +%H.%M.%S)
who=$(whoami)
log="Last pull: $date at $time by $who"
echo $log >> log.txt
git pull origin main
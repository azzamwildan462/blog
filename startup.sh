date=$(date +%d/%m/%Y)
time=$(date +%H.%M.%S)
who=$(whoami)
os=$(hostnamectl | grep Operating\ System | awk '{print $3}')
os_version=$(hostnamectl | grep Operating\ System | awk '{print $4}')
log="Last pull: $date at $time by $who from $os-$os_version"
echo $log >> log.txt
git pull origin main
date=$(date +%d%m%Y)
commit_msg="Update_$date"
git add .
git commit -m "$commit_msg"
git push origin main

#log_save
date=$(date +%d/%m/%Y)
time=$(date +%H.%M.%S)
who=$(whoami)
init_system=$(ps 1 | grep 1 | awk '{print $5}')

if [[ $init_system -eq "init" ]]
then
    # echo "free-systemd"
    os=$(inxi -S | grep Distro | awk '{print $2}')
    log="Last push: $date by $who from $os (free-systemd) at $time"
else
    # echo "use systemd"
    os=$(hostnamectl | grep Operating\ System | awk '{print $3}')
    os_version=$(hostnamectl | grep Operating\ System | awk '{print $4}')
    log="Last push: $date by $who from $os-$os_version (systemd) at $time "
fi
echo $log >> log.txt


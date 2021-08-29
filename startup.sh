date=$(date +%d/%m/%Y)
time=$(date +%H.%M.%S)
who=$(whoami)
init_system=$(ps 1 | grep 1 | awk '{print $5}')

if [[ $init_system -eq "init" ]]
then
    # echo "using default init (maybe SysV) system"
    os=(inxi -S | grep Distro | awk '{print $2}')
    log="Last pull: $date by $who from $os at $time"
    echo "OS: $os"
else
    # echo "using systemd init system"
    os=$(hostnamectl | grep Operating\ System | awk '{print $3}')
    os_version=$(hostnamectl | grep Operating\ System | awk '{print $4}')
    log="Last pull: $date by $who from $os-$os_version at $time "
fi

echo $log >> log.txt
git pull origin main
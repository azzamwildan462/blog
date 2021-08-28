date=$(date +%d%m%Y)
commit_msg="Update_$date"
git add .
git commit -m "$commit_msg"
git push origin main

#log_save
date=$(date +%d/%m/%Y)
time=$(date +%H.%M.%S)
who=$(whoami)
os=$(hostnamectl | grep Operating\ System | awk '{print $3}')
os_version=$(hostnamectl | grep Operating\ System | awk '{print $4}')
log="Last push: $date at $time by $who@$os-$os_version"
echo $log >> log.txt


date=$(date +%d%m%Y)
commit_msg="Update_$date"
git add .
git commit -m "$commit_msg"
git push origin main

#log_save
date=$(date +%d/%m/%Y)
time=$(date +%H.%M.%S)
who=$(whoami)
log="Last push: $date at $time by $who"
echo $log >> log.txt


tanggal=$(date +%d%m%Y)
nama_commit="Update_$tanggal"
git add .
git commit -m "$nama_commit"
git push origin main

#log_save
date=$(date +%d/%m/%Y)
time=$(date +%H.%M.%S)
who=$(whoami)
log="Last push: $date at $time by $who"
echo $log >> log.txt


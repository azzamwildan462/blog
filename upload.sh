tanggal=$(date +%d%m%Y)
nama_commit="Update_$tanggal"
git add .
git commit -m "$nama_commit"
git push origin main


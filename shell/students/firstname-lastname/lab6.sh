sudo apt install postgresql
systemctl status postgresql.service

date_

sudo systemctl stop postgresql.service >> error.log


res=$(systemctl status postgresql.service | grep -c "inactive")
if [ $res -gt 0 ];
then
  date > error.log 
  res >> error.log
  sudo systemctl start postgresql.service
fi  
NAME="manage.py runserver"
if [ ! -n "$NAME" ]; then
  echo "[-] no arguments"
  exit
fi

ID=$(ps -ef | grep "$NAME" | grep -v "$0" | grep -v "grep" | awk '{print $2}')
i=0
for id in $ID; do
  i=$(($i + 1))
  kill -9 $id
done
echo "[+] $i scan process have been stopped!"
sh ./run.sh

echo "[+]  process have been started!"

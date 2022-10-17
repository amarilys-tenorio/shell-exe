name="number_connection-"$(date +%d-%m-%y)"-"$(date +%H:%M)

cat /var/log/auth.log | grep "session opened for user azerty" | grep "systemd" | wc -l > $name

tar -czvf "Backup/"$name".tar.gz" $name

rm $name

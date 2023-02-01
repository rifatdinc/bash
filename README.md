
# BASH TRİCK

## Author: [@rifatdinc](https://twitter.com/raficimsakinol)

#

## kill port bash ubuntu

   ```text
   sudo kill -9 `sudo lsof -t -i:12019`
   ```

## ubuntu update & upgrade method

```text
sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt-get dist-upgrade -y && sudo apt-get autoremove
```

## ssh client connect with username

```text
ssh -l root 10.137.41.3
```

## process kill shortcut

```text
pkill -f python3
```

## battery info status state & percentage

```text
upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -E "state|percentage"
```

## Http request load test & POST

```text
ab -p data.txt -T application/json -H 'Authorization: asv9asc9aj' -c 10 -n 4000 http://127.0.0.1:12019/
```

## How to find public IP address

```text
curl ifconfig.me
```

## Random hash create

```text
echo date | sha224sum
```

### Only port check

```text
nmap -p 80 127.0.0.1
```

## executing the desired command every 1 second

```text
watch -n 1 echo code
```

## First 5 output

```text
echo data.txt | head -n 5
```

## kill proccess name
```text
kill $(ps aux | grep node | awk '{print $2}')
```

## If we want to delete a file under a folder, we can use this command
   
   ```text
   find ./ -name "file_name" | xargs rm -rf
   
   ```


## Interfaces list

```text

# Sistemdeki ağ arayüzlerinin listesini alın
interfaces=$(ifconfig | awk -F':' '/^[a-z]/ && !/^lo/ {print $1}')

# Her ağ arayüzü için bilgileri ekrana yazdırın
for interface in $interfaces
do
  echo "Arayüz: $interface"
  echo "  IP adresi: $(ifconfig $interface | awk '/inet / {print $2}')"
  echo "  Mask: $(ifconfig $interface | awk '/netmask / {print $4}')"
  echo "  MAC adresi: $(ifconfig $interface | awk '/ether/ {print $2}')"
  echo ""
done
```


## Find hostname

```text

echo "Please enter an IP address: "

read ip_address

host=$(nslookup $ip_address | awk '/^Name:/ {print $2}')

echo "The host name of the entered IP address: $host"
```

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

## First 10 output

```text
echo data.txt | head -n 5
```

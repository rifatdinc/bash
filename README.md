
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

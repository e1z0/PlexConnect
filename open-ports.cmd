@echo off
rem remove all ports
rem netsh int portproxy reset all
rem open ports

netsh interface portproxy add v4tov4 listenaddress=0.0.0.0 listenport=80 connectaddress=172.25.72.230 connectport=80
netsh advfirewall firewall add rule name=”Open Port 80 for WSL2” dir=in action=allow protocol=TCP localport=80
netsh interface portproxy add v4tov4 listenaddress=0.0.0.0 listenport=443 connectaddress=172.25.72.230 connectport=443
netsh advfirewall firewall add rule name=”Open Port 443 for WSL2” dir=in action=allow protocol=TCP localport=443
rem netsh interface portproxy add v4tov4 listenaddress=0.0.0.0 listenport=53 connectaddress=172.25.72.230 connectport=53
netsh advfirewall firewall add rule name=”Open Port 53 for WSL2” dir=in action=allow protocol=UDP localport=53
rem windows can only forward TCP, LOL we need to use 3rdparty tool to achieve this :D:D:D:D:D
sudppipe -x -b 0.0.0.0 172.25.72.230 53 53
rem show all open ports
netsh interface portproxy show v4tov4

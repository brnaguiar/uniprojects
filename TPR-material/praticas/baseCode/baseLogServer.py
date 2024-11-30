import re
import os
import paramiko
from scp import SCPClient

## Apache2 access.log parser (requires root permissions)
def parseApacheLog(log_file):
    regex = '([0-9a-f\.:]+) - (.+) \[(.+)\] "(.+)" ([0-9]+) ([0-9]+) .'
    f = open(log_file, 'r')
    for line in f:
        print(line,end='')
        log=re.match(regex, line).groups()
        client_addr, user, date, req, resp, size=log
        action, obj, httpver=req.split(' ')
        print('\t',client_addr, user, date, action, obj, httpver, resp, size)

###
def createSSHClient(server, port, user, password):
    client = paramiko.SSHClient()
    client.set_missing_host_key_policy(paramiko.AutoAddPolicy())
    client.connect(server, port, user, password)
    return client


log_path='/var/log/'
log_file='apache2/access.log'

parseApacheLog(log_path+log_file)

###

# server='127.0.0.1'
# port=22
# user='labcom'
# password='labcom'

# ssh = createSSHClient(server, port, user, password)
# scp = SCPClient(ssh.get_transport())

# scp.get(log_path+log_file)
# parseApacheLog(log_file)

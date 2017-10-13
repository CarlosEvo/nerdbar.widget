import re
import subprocess

raw = subprocess.check_output('df').decode('utf-8')
line = re.search('\n/dev/disk1s1 .*', raw).group(0)
disk = int(line.split()[4][:-1])

print("%02d" % disk)

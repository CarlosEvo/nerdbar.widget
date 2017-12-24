import re
import subprocess

raw = subprocess.check_output('/usr/local/bin/smartctl -s on -a disk0 | grep Temperature', shell=True).decode('utf-8')
results = re.search('(\d*) \(Min/Max (\d*)/(\d*)\)\n', raw)

current_temp = float(results.group(1))
min_temp = float(results.group(2))
max_temp = float(results.group(3))
temp_percent = (current_temp - min_temp) / (max_temp - min_temp)

if temp_percent <= 0.2:
    print(u'')
elif temp_percent <= 0.4:
    print(u"")
elif temp_percent <= 0.6:
    print(u'')
elif temp_percent <= 0.8:
    print(u'')
else:
    print(u'')

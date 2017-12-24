import re
import subprocess

raw = subprocess.check_output('pmset -g batt', shell=True).decode('utf-8')
bat = float(re.search('\t(\d*)%', raw).group(1))

if bat <= 5:
    print(u'')
elif bat <= 25:
    print(u'')
elif bat <= 50:
    print(u'')
elif bat <= 75:
    print(u'')
else:
    print(u'')

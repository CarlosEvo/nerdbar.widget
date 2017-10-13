import re
import subprocess

raw = subprocess.check_output('pmset -g batt', shell=True).decode('utf-8')
bat = int(re.search('\t(\d*)%', raw).group(1))
print('%03d' % bat)

import re
import subprocess

raw = subprocess.check_output('top -l 1 | head -n 10', shell=True).decode('utf-8')
mem = int(re.search('([0-9]+)M unused', raw).group(1))
mem_percent = int(100 - mem / (16 * 1024) * 100)

print('%02d' % mem_percent)

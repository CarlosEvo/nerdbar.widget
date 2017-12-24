import re
import subprocess

raw = subprocess.check_output(
    'top -l 1 | head -n 10', shell=True).decode('utf-8')
try:
    mem = int(re.search('([0-9]+)M unused', raw).group(1))
    mem_percent = int(100 - mem / (16 * 1024) * 100)
except AttributeError:
    mem_percent = 0

print('%02d' % mem_percent)

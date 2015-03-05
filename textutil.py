__author__ = 'julian'
import sys
import os

i = 1
with open(sys.argv[1]) as f:
    content = [x.strip('\n') for x in f.readlines()]
    for line in content:
        print i
        prefix = ""
        if i < 10:
            prefix = "00"
        elif i < 100:
            prefix = "0"
        cmd = 'echo "' + line + '" > ' + sys.argv[2] + '/utt_' + prefix + str(i) + '.txt'
        print cmd
        os.system(cmd)
        i = i + 1


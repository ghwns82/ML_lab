import os
import datetime
import sys

dir_ = os.path.abspath(os.path.split(sys.argv[0])[0])
root_dir = dir_[:-len(os.path.basename(dir_))]
cmd_root_dir = root_dir.replace(' ','\ ')

if len(sys.argv)>2:
    commit_m=sys.argv[2]
else:
    datetime_format = "%y%m%d"
    commit_date =datetime.datetime.strftime(datetime.datetime.today(), datetime_format)
    commit_m = "added_"+commit_date



cmd = f'cd {cmd_root_dir}'
if len(sys.argv)>1:
    if sys.argv[1] == 'list':
        cmd += f'&& explorer.exe .'     
    elif sys.argv[1] == 'push':
        cmd += '&& git init'
        cmd += '&& git add .'
        cmd += f'&& git commit -m {commit_m}'
        cmd += '&& git push origin main' 
    elif sys.argv[1] == 'pull':
        cmd += '&& git init && git pull origin main' 
    os.system(cmd)
    sys.exit() 
else:
    print('please enter cmd')
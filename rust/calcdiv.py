import sys

for ln in sys.stdin:
    ls = ln.strip().split('|')
    try:
        vs=list(map(float, ls[2:6]))
    except:
        print(ln.strip())
        continue
    print(f'|{ls[1]}|', end='')
    for i in range(4):
        print(f'{vs[i]}{f" (x{vs[i]/vs[i-2]:.2})" if i>=2 and vs[i-2]!=0 else ""}|', end='')
    print('')

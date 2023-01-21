mdtb.md: mdbase.md exp_setting.txt calcdiv.py
	cat exp_setting.txt > $@ ;\
	echo "" >> $@ ;\
	cat $< | python3 calcdiv.py >> $@
mdbase.md: bench_report_all.txt make_mdtable.sh
	cat $< | ./make_mdtable.sh > $@
bench_report_all.txt: run_all_bench.sh
	./run_all_bench.sh > $@
exp_setting.txt:
	cat /proc/cpuinfo | grep -m3 -e 'model name' -e 'cpu MHz' -e 'cache size' > $@ ;\
	head -n1 /etc/os-release >> $@
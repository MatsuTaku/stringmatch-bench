mdtb.md: mdbase.md
	cat $< | python3 calcdiv.py > $@
mdbase.md: bench_report_all.txt
	cat $< | ./make_mdtable.sh > $@
bench_report_all.txt:
	./run_all_bench.sh > $@

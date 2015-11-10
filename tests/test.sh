assert() { if [ $1 = $2 ]; then echo "[32mOK[0m\c"; else echo "[31mError[0m\c"; fi; echo " with [35m$1[0m"; }
assert $(node print.js a b c -l1 1 2 3 -l2 4 5 6) '{"0":"a","1":"b","2":"c","-l1":["1","2","3"],"-l2":["4","5","6"]}'
assert $(node print.js a b c --l1 1 2 3) '{"0":"a","1":"b","2":"c","--l1":["1","2","3"]}'
assert $(node print.js a b c) '{"0":"a","1":"b","2":"c"}'
assert $(node print.js --list) '{"--list":[]}'
assert $(node print.js) '{}'
assert $(node print.js -a -b -c 233) '{"-a":[],"-b":[],"-c":["233"]}'
assert $(node isarray.js) 'true'

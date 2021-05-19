# oracle docker examples

* [source](https://github.com/diemobiliar/minimized-oraclexe-image)
* run oracle XE18 container `docker run -d -e "SGA_TARGET=1024M" --name 18c_xe1024m -p 6789:1521 diemobiliar/minimized-oraclexe-image:18.4.0-xe
` (AOO_TESTS/AOO_TESTS, sid: XE, memory: 288M < 1664M)

----------------

* [source](https://hub.docker.com/r/oracleinanutshell/oracle-xe-11g
)
* run oracle XE11 `docker run -d -p 49161:1521 --name xe oracleinanutshell/oracle-xe-11g
` (system/oracle, sid: xe)
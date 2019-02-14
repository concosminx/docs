**Articole**

  * `Troubleshooting Guide - Oracle Docs <https://docs.oracle.com/javase/10/troubleshoot/JSTGD.pdf>`__

  * `The jcmd Utility <https://docs.oracle.com/javase/8/docs/technotes/guides/troubleshoot/tooldescr006.html>`__

  * `Java Virtual Machine Statistics Monitoring Tool <https://docs.oracle.com/javase/7/docs/technotes/tools/share/jstat.html>`__
  
  * `The jmap Utility <https://docs.oracle.com/javase/8/docs/technotes/guides/troubleshoot/tooldescr014.html>`__
  
  * `The jstack Utility <https://docs.oracle.com/javase/8/docs/technotes/guides/troubleshoot/tooldescr016.html>`__

Comenzi
=======

Heap dump; 
::code::`path/to/jdk/jmap -dump:format=b,file=<filename> id_proces` 

Sumar heap
::code::`path/to/jdk/jmap -heap id_proces` 

Histograma
::code::`path/to/jdk/jmap -histo id_proces` 

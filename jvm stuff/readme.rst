Commands
========

Heap dump

.. code:: 
 
 path/to/jdk/jmap -dump:format=b,file=<filename> id_proces

Heap summary

.. code:: 

 path/to/jdk/jmap -heap id_proces >> path/to/save_file/heap_summary_ddmmyy_hhmm.log

Heap histogram

.. code:: 

  path/to/jdk/jmap -histo id_proces >> path/to/save_file/heap_histo_ddmmyy_hhmm.log

Thread dump 

.. code:: 
  
  path/to/jdk/jstack -F id_proces >> path/to/save_file/thread_dump_ddmmyy_hhmm.log
  
Uptime (in seconds)

.. code:: 
  
  path/to/jdk/jcmd VM.uptime id_proces 
  
VM Flags

.. code:: 
  
  path/to/jdk/jcmd VM.flags id_proces   

GC

.. code:: 
  
  path/to/jdk/jcmd GC.run id_proces   

JVM Uptime (linux)

.. code:: 
  
  ps -p <pid> -o stime,etime    

  

Tools info 
==============

  * `Troubleshooting Guide - Oracle Docs <https://docs.oracle.com/javase/10/troubleshoot/JSTGD.pdf>`__

  * `The jcmd Utility <https://docs.oracle.com/javase/8/docs/technotes/guides/troubleshoot/tooldescr006.html>`__

  * `Java Virtual Machine Statistics Monitoring Tool <https://docs.oracle.com/javase/7/docs/technotes/tools/share/jstat.html>`__
  
  * `The jmap Utility <https://docs.oracle.com/javase/8/docs/technotes/guides/troubleshoot/tooldescr014.html>`__
  
  * `The jstack Utility <https://docs.oracle.com/javase/8/docs/technotes/guides/troubleshoot/tooldescr016.html>`__
  
  * `The jinfo Utility <https://docs.oracle.com/javase/8/docs/technotes/guides/troubleshoot/tooldescr013.html>`__
  
  
Internet Stuff 
==============

  * `JIT explained <https://plumbr.io/blog/java/do-you-get-just-in-time-compilation>`__

  * `Java Heap Size 5 tips <https://dzone.com/articles/5-tips-proper-java-heap-size>`__  

  * `Eclipse Memory Analyzer (MAT) - Tutorial <https://www.vogella.com/tutorials/EclipseMemoryAnalyzer/article.html>`__  
  
  * `Garbage Collector guidelines and tips <https://www.javacodegeeks.com/2013/12/garbage-collector-guidelines-and-tips.html>`__    
  
  * `Java Garbage Collection Distilled <https://www.infoq.com/articles/Java_Garbage_Collection_Distilled/>`__      
  
  * `Interning of String <https://www.geeksforgeeks.org/interning-of-string/>`__        
  
  * `Under the JVM hood – Classloaders <https://www.javacodegeeks.com/2012/12/under-the-jvm-hood-classloaders.html>`__        
  
  * `Weak, Weaker, Weakest, Harnessing The Garbage Collector With Specialist References <https://www.javacodegeeks.com/2012/12/weak-weaker-weakest-harnessing-the-garbage-collector-with-specialist-references.html>`__        
  
  
  
  
  
  

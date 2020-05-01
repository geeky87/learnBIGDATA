*******************************************************************************************
Connect to HDFS
*******************************************************************************************
RFG
***
DEV
kinit rfgpdadm@DDHAD -kt /etc/security/keytabs/rfgpdadm.DDHAD.applicatif.keytab 

INT 
kinit rfgpiadm@DIHAD -kt /etc/security/keytabs/rfgpiadm.DIHAD.applicatif.keytab 

HOM
kinit rfgphadm/app@HDTV -kt /etc/security/keytabs_application_users/rfgphadm.applicatif.rfgphdep.keytab;


PRD
kinit rfgppadm/app@PDTV -kt /etc/security/keytabs_application_users/rfgppadm.applicatif.rfgppdep.keytab;


LRC
***
DEV
kinit lrcpdadm@DDHAD -kt /etc/security/keytabs/lrcpdadm.DDHAD.applicatif.keytab 

INT 
kinit lrcpiadm@DIHAD -kt /etc/security/keytabs/lrcpiadm.DIHAD.applicatif.keytab 

HOM
kinit lrcphadm/app@HDTV -kt /etc/security/keytabs_application_users/lrcphadm.applicatif.lrcphdep.keytab;


PRD
kinit lrcppadm/app@PDTV -kt /etc/security/keytabs_application_users/lrcppadm.applicatif.lrcppdep.keytab;


*******************************************************************************************
Common Commands of  HDFS
*******************************************************************************************
--Help Commands

hdfs dfs -help
hdfs dfs -usage


--Listing the Files
hdfs dfs -ls -R -h /lake/dfin/a8464_lrc

--Listing the Files with Space Usage
hdfs dfs -du -h /lake/dfin/a8464_lrc


--Overall Files with Space System Usage
hdfs dfs -df -h 


-- Creating the Folder
hdfs dfs -mkdir /lake/dfin/a8464_lrc/Test1

hdfs dfs -mkdir -p /lake/dfin/a8464_lrc/Test1/Test2/Test3

-- Removing the Folder
hdfs dfs -rm /lake/dfin/a8464_lrc/Test1

hdfs dfs -rm -r /lake/dfin/a8464_lrc/Test1/Test2/Test3


-- Creating the touch Files





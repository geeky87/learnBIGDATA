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
-----------------Help Commands -----------------

hdfs dfs -help
hdfs dfs -usage


-----------------Listing the Files-----------------
hdfs dfs -ls -R -h /srv/a8464_lrc/

-- Listing the Files with Space Usage
hdfs dfs -du -h /srv/a8464_lrc


-Overall Files with Space System Usage
hdfs dfs -df -h 


-----------------Folder Operations-----------------
--Creating Folder
hdfs dfs -mkdir /srv/a8464_lrc/Test1

hdfs dfs -mkdir -p /srv/a8464_lrc/Test1/Test2/Test3

-- Removing the Folder
hdfs dfs -rm /srv/a8464_lrc/Test1

hdfs dfs -rm -r /srv/a8464_lrc/Test1/Test2/Test3

-- Moving the Folder
hdfs dfs -mv /srv/a8464_lrc/myfiles.txt /lake/dfin/myfiles_new.txt

hdfs dfs -rm -r /srv/a8464_lrc/Test1/Test2/Test3

-- Creating the touch Files
hdfs dfs -touchz /srv/a8464_lrc/myfiles.txt


-----------------File Transfer Operations-----------------
-- Put the files in the HDFS
hdfs dfs -put /home/employees.txt  /srv/a8464_lrc/employees.txt

-- Get the files in the HDFS
hdfs dfs -get /srv/a8464_lrc/employees.txt /home/employees.txt

-- Copy the files in the HDFS
hdfs dfs -get /srv/a8464_lrc/employees.txt /home/employees.txt

--Get Merged files from the HDFS
hdfs dfs -getmerge empl*.txt /home/employees_merged.txt

-----------------Reading Content of the file-----------------
-- Reading files in the HDFS
hdfs dfs -cat /srv/a8464_lrc/employees.txt

hdfs dfs -cat /srv/a8464_lrc/employees.txt | head -10
hdfs dfs -cat /srv/a8464_lrc/employees.txt | tail -10

hdfs dfs -tail /srv/a8464_lrc/env.txt


-----------------User Group Operations------------------------
-- group Information about the User
hdfs groups



-----------------Special Operations------------------------
--Increase or Decrease the replication factor
hdfs dfs -setrep -w 1 hdfs_test_file.txt

--File System check for information on storage on the blocks
hdfs fsck /srv/a8464_lrc -files

--Finding the File in the HDFS
hdfs dfs -find /srv/a8464_lrc -name ''*env*''













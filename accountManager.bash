#!/bin/bash
# accountManager by Geoffrey Sessums
# Purpose:
#     Produces a file of user accounts that have either never logged in or have 
#     NOT logged in during 2017 on two servers. The script uses the output from
#     the lastlog tool for the Fox and Hen servers. Note that users may meet the 
#     criteria for one server but not the other, so it is necessary to remove 
#     those user ID's (handled by screen2.sed).
# Results:
#     Produces 3 files:
#         1) lastlog.tmp
#             -contains user accounts from FoxServer and HenSever
#         2) countlastlog.tmp
#             -contains user accounts with a count of each unique value
#         3) accounts.out
#             -file containing all user accounts from Fox and Hen servers which
#             have never logged in or have not logged on during 2017
# Notes:
#     Uncomment line 36 to remove temporary files.
#################################################################################

# Produce a file with user accounts from Fox and Hen servers that 
# have never logged in or have NOT logged in during 2017. 
sed -f screen1.sed lastlogFoxServer.out > lastlog.tmp
sed -f screen1.sed lastlogHenServer.out >> lastlog.tmp 

# Produce a file containing a count of each unique user ID
sort lastlog.tmp | uniq -c > countlastlog.tmp 

# Removes user ID's with a count of 1  
# (i.e. They did not meet the criteria for both servers)
# then remove the leading count
sed -f screen2.sed countlastlog.tmp > accounts.out

# Uncomment to remove temporary files
#rm *.tmp

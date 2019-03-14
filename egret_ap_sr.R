##just trying out USGS EGRET package
##Suwannee and Apalach sites

library(EGRET)
# Flow history analysis
############################
# Gather discharge data:
siteNumber <- "02358000" #APALACHICOLA RIVER AT CHATTAHOOCHEE FLA
startDate <- "" # Get earliest date 2010-01-01
endDate <- "" # Get latest date
Daily <- readNWISDaily(siteNumber,"00060",startDate,endDate)
# Gather site and parameter information:
# Here user must input some values for
# the default (interactive=TRUE)
INFO <- readNWISInfo(siteNumber,"00060")

INFO$shortName <- "Ap"
############################
############################
# Check flow history data:
eList <- as.egret(INFO, Daily, NA, NA)
plotFlowSingle(eList, istat=7,qUnit="thousandCfs")
plotSDLogQ(eList)
plotQTimeDaily(eList, qLower=1,qUnit=3)
plotFour(eList, qUnit=3)
plotFourStats(eList, qUnit=3)
############################


siteNumber <- "02358000"
startDate <- "2000-01-01"
endDate <- ""
Daily <- readNWISDaily(siteNumber,"00060",startDate,endDate)
INFO <- readNWISInfo(siteNumber,"",interactive=FALSE)
INFO$shortName <- "Apalachicola River @ Chattahoochee"
eList <- as.egret(INFO, Daily, NA, NA)


eList<-setPA(eList,paStart=1,paLong=12) #set to calendar year

plotFlowSingle(eList,istat=5,qUnit="thousandCfs")
plotSDLogQ(eList)

plotFour(eList, qUnit=3)
plotFourStats(eList, qUnit=3)

##########################
#####Suwannee#############
##########################



library(EGRET)
# Flow history analysis
############################
# Gather discharge data:
siteNumber <- "02323500" #Suwannee River @ Wilcox
startDate <- "1945-01-01" # Get earliest date 
endDate <- "2019-01-31" # Get latest date
Daily <- readNWISDaily(siteNumber,"00060",startDate,endDate)
# Gather site and parameter information:
# Here user must input some values for
# the default (interactive=TRUE)
INFO <- readNWISInfo(siteNumber,"00060")

INFO$shortName <- "Suwannee River @ Wilcox"
############################
############################
# Check flow history data:
eList <- as.egret(INFO, Daily, NA, NA)
#eList<-setPA(eList,paStart=1,paLong=12) #set to calendar year
plotFlowSingle(eList, istat=7,qUnit="thousandCfs")
plotSDLogQ(eList)
plotQTimeDaily(eList, qLower=1,qUnit=3)
plotFour(eList, qUnit=3)
plotFourStats(eList, qUnit=3)
############################



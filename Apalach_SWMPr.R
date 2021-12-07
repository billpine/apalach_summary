#SET UP GRAPHICS DEVICE FOR PLOTTING (page-up page-down to scroll through figs)
graphics.off()
if(exists(".SavedPlots",where=1)==T){rm(.SavedPlots,pos=1)}
windows(record=T); par(las=1)


setwd("T:/lab-pine/AB_WQ/ApalachicolaSWMPr")
#install.packages("SWMPr")
library(SWMPr)


# "apacpwq" = Cat Point station
# "apadbwq" = Dry Bar station
# "apaebwq" = East Bay bottom station
# "apaeswq" = East Bay surface station


apa.cp = import_local("apalach_SWMPr_data_fromsite_20211206.zip", "apacpwq")
View(apa.cp)
apa.db = import_local("apalach_SWMPr_data_fromsite_20211206.zip", "apadbwq")

apa.eb = import_local("apalach_SWMPr_data_fromsite_20211206.zip", "apaebwq")

apa.es = import_local("apalach_SWMPr_data_fromsite_20211206.zip", "apaeswq")


apa.cp.plots = plot_summary(apa.cp, param = 'sal', years = c(2010,2021))
apa.db.plots = plot_summary(apa.db, param = 'sal', years = c(2010,2021))
apa.eb.plots = plot_summary(apa.eb, param = 'sal', years = c(2010,2021))
apa.es.plots = plot_summary(apa.es, param = 'sal', years = c(2010,2021))

site_codes()

#Do I need these? vvv
# help.search('retrieve', package = 'SWMPr')
# SWMPr::all_params
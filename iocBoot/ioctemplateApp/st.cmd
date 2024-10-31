#!../../bin/linux-x86_64/templateAppTest

#- You may have to change templateAppTest to something else
#- everywhere it appears in this file

< envPaths

cd "${TOP}"

# Macro prefix
epicsEnvSet("VAR1", "templateAppTestIOC")

## Register all support components
dbLoadDatabase("dbd/templateTestApp.dbd")
templateTestApp_registerRecordDeviceDriver(pdbbase)

dbLoadTemplate("db/templateApp.substitutions")

epicsThreadSleep(2)
iocInit()
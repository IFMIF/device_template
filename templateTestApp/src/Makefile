TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS BELOW HERE
# Build the IOC application
PROD_IOC = templateTestApp

# templateTestApp.dbd will be created and installed
DBD += templateTestApp.dbd

# templateTestApp.dbd will include these files:
templateTestApp_DBD += base.dbd
templateTestApp_DBD += templateApp.dbd

# Link in the code from our support library
templateTestApp_LIBS += calc templateApp

# templateTestApp_registerRecordDeviceDriver.cpp derives from templateTestApp.dbd
templateTestApp_SRCS += templateTestApp_registerRecordDeviceDriver.cpp

# Build the main IOC entry point where needed
templateTestApp_SRCS_DEFAULT += templateTestAppMain.cpp
templateTestApp_SRCS_vxWorks += -nil-

# Finally link IOC to the EPICS Base libraries
templateTestApp_LIBS += $(EPICS_BASE_IOC_LIBS)

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD EXTRA GNUMAKE RULES BELOW HERE
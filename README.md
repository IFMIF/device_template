# Device template (PROPOSAL - WIP)

This repository contains the template source codes for an EPICS support device. One must use it as a template for developing a new device support.

In the past, most of the codes for LIPAc device support were provided within monolithic Top folder. Hence, it became hard to maintain due to the lack of modularity. Also each institute were using their own EPICS distribution and structure. Nowadays in an effort of standardization, a [LIPAc EPICS distribution](https://code.ifmif.org/epics/epics-7.0) is now available and should be used much as possible. 

As well, the development of device support must be modular as possible. Each hardware device or device family should have its own independent source repository. Then, the device support can be then used in a Top application, with several other device support. It can be also used independently for testing and debugging purpose. Finally independent device support repository can be shared more easily within the EPICS community.

## Getting started and template folder structure

This is a template EPICS devices support module, and it follows most of the. You need at least EPICS base to build this template. The template folder is organized as follow:

| Folder          | Description                            |
| --------------- | -------------------------------------- |
| configure       | Configuration file folder              |
| iocBoot         | ioc example for the test application   |
| opi             | Generic OPI for the device support     |
| templateApp     | Sources files for the device support   |
| templateAppSup  | Source or library from third party     |
| templateTestApp | Sources files for the test application |

### Configure folder

This is a typical EPICS configure folder. As developer you may have update the `CONFIG_SITE` and `RELEASE` with the basic EPICS related. If one want provide installation or platform specific configuration, then `CONFIG_SITE.local` `RELEASE.local` `CONFIG_SITE.EPICS_HOST_ARCH.local` `RELEASE.EPICS_HOST_ARCH.local` must be created according to custom installation and the given `EPICS_HOST_ARCH`.

### templateApp

The most important folder that contains the actual device support code. The structure is the following:

| Folder | Description                                          |
| ------ | ---------------------------------------------------- |
| db     | Folder for db, template, proto files                 |
| src    | Source codes of the application and custom dbd files |

#### db folder

This folder contains the record database related to the application. The database record can be in plain `.db` file or by using `.template`, the latter one is recommended. If one uses directly `StreamDevice`, the proto file can be placed in this folder too. Finally, update the `Makefile` according to your files.

#### src folder

The source folder contains the C/C++ sources. The `Makefile` need to be modified to create the support device as library, the DBD generation, dependencies and the different libraries to link. Check the `Makefile` for more detail. If one uses directly `StreamDevice` or `modbus`, the sources can be nil.

### templateAppSup

Support folder contains the source or library from third party. For instance, some hardware company can provide API/header to communicate with their devices. Usually, these libraries are not available in the package repositories of Linux distributions. In that case, one can use this folder to ship directly this kind of dependencies with the device support. Otherwise, just delete this folder.

### templateTestApp

It is a good practice to provide a testing application for your device support. It is particularly useful for debugging the support device. One can also use it directly for its Top application.

### iocBoot folder

The IOC folder contains the st.cmd script to instantiate the IOC. The envPath is generated automatically, only the `st.cmd` need to be modified:
- Change the Database Definition file according to your sources.
- Call the correct driver register function.
- Load the database.

### OPI folder

This folder contains OPI files that can be use with the IOC. The OPI example should generic as possible, so the hardware can be use in a total abstraction of LIPAc, but they can be a good way to show the capabilities of the support. For new development, CSS Phoebus is the recommended.
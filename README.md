# Device template (PROPOSAL - WIP)

This repository contains the template source codes for an EPICS support device. One must use it as a template for developing a new device support.

In the past, most of the codes for LIPAc device support were provided within monolitic Top folder. Hence, it became hard to maintain due to the lack of modularity. Also each institute were using their own EPICS distribution and structure. Nowaday in an effort of standardization, a [LIPAc EPICS distribution](https://code.ifmif.org/epics/epics-7.0) is now avaible and should be used much as possible. 

As well, the development of device support must be modular as possible. Each hardware device or device familly should have its own independant source repository. Then, the device support can be then used in a Top application, with several other device support. It can be also used independantly for testing and debugging purpose. Finally independant device support repository can be shared more easily within the EPICS community.

## Getting started and template folder structure

This is a template EPICS devices support module, and it follows most of the. You need at least EPICS base to build this template. The template folder is organised as follow:

| Folder          | Description                            |
| --------------- | -------------------------------------- |
| configure       | Configuration file folder              |
| iocBoot         | ioc example for the test application   |
| opi             | Generic OPI for the device support     |
| templateApp     | Sources files for the device support   |
| templateAppSup  | Source or library from third party     |
| templateTestApp | Sources files for the test application |

### Configure folder

This is a typical EPICS configure folder. As developper you may have update the `CONFIG_SITE` and `RELEASE` with the basic EPICS related. If one want provide installation or platform specific configuration, then `CONFIG_SITE.local` `RELEASE.local` `CONFIG_SITE.EPICS_HOST_ARCH.local` `RELEASE.EPICS_HOST_ARCH.local` must be created according to custom installation and the given `EPICS_HOST_ARCH`.

### templateApp

The most important folder that contains the actual device support code. The structure

| Folder          | Description                            |
| --------------- | -------------------------------------- |
| db       | Folder for db, template, proto files              |
| src         | Source codes of the application and custom dbd files   |

### templateAppSup

Support folder contains the source or library from third party. For instance, some hardware company can provide API/header to communicate with their devices. Usually, these libraries are not avaible in the package repositories of Linux distributions. In that case, one can use this folder to ship directly this kind of dependecies with the device support.

### templateTestApp

### iocBoot folder

### OPI folder

This folder contains OPI files that can be use with the IOC. The OPI example should generic as possible, so the hardware can be use in a total abstraction of LIPAc, but they can be a good way to show the capabilities of the support. For new development, CSS Phoebus is the recommanded.
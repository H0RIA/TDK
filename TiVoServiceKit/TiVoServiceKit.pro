#-------------------------------------------------
#
# Project created by QtCreator 2016-10-09T15:48:56
#
#-------------------------------------------------

QT       += network sql xml xmlpatterns testlib

QT       -= gui

#VER_MAJ = 0
#VER_MIN = 1
#VER_PAT = 1

TARGET = TiVoServiceKit
TEMPLATE = lib

DEFINES += TIVOSERVICEKIT_LIBRARY

SOURCES += \
    tivoservicekit.cpp

HEADERS +=\
        tivoservicekit_global.h \
    base.h \
    tivoservicekit.h

unix {
    target.path = /usr/lib
    INSTALLS += target
}

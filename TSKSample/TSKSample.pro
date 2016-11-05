#-------------------------------------------------
#
# Project created by QtCreator 2016-10-09T15:50:24
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = TSKSample
TEMPLATE = app

DESTDIR = ..

INCLUDEPATH += ../TiVoServiceKit

SOURCES += main.cpp\
        mainwindow.cpp

HEADERS  += mainwindow.h

CONFIG += mobility
MOBILITY = 

win32: VERSION = 0.1.0.0
else: VERSION = 0.1.0

DEPENDENCY_LIBRARIES = TiVoServiceKit

include(../TiVo.pri)

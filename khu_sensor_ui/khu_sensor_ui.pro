#-------------------------------------------------
#
# Project created by QtCreator 2020-01-30T18:33:46
#
#-------------------------------------------------

QT       += core gui serialport charts

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = khu_sensor_ui
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


SOURCES += \
        main.cpp \
    ADS1292/ads1292.cpp \
    UART/uart.cpp \
    mainwindow.cpp \
    Setting/settingdialog.cpp \
    MPR121/mpr121.cpp

HEADERS += \
    ADS1292/ads1292.h \
    UART/uart.h \
    mainwindow.h \
    Setting/settingdialog.h \
    MPR121/mpr121.h

FORMS += \
    mainwindow.ui \
    Setting/settingdialog.ui

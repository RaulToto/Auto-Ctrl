#-------------------------------------------------
#
# Project created by QtCreator 2018-10-03T19:29:08
#
#-------------------------------------------------

QT += core gui
QT +=sql
QT +=quickwidgets
QT += webenginewidgets
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = Auto-Ctrl
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

CONFIG += c++11

SOURCES += \
        main.cpp \
        mainwindow.cpp \
    geolocation.cpp \
    dbconnection.cpp \
    login.cpp

HEADERS += \
        mainwindow.h \
    geolocation.h \
    dbconnection.h \
    login.h

FORMS += \
        mainwindow.ui \
    login.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target


CONFIG += link_pkgconfig
PKGCONFIG += opencv

RESOURCES += \
    qmlcharts.qrc \
    carres.qrc \
    images.qrc

DISTFILES += \
    DetecColors.py



#LIBS += -L /usr/local/lib/python3.6 -lpython3.6

#INCLUDEPATH += /usr/include/python3.6
#DEPENDPATH += /usr/include/python3.6

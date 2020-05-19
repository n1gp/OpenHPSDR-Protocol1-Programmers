#-------------------------------------------------
#
# Project created by QtCreator 2012-12-29T10:17:39
#
#-------------------------------------------------

QT       += core gui network opengl

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = HPSDRBootloader
TEMPLATE = app

# Included PRI files
include( ../Help/Help.pri )
include( ../Status/Status.pri )
include( ../Programmer/Programmer.pri )
include( ../IPaddress/IPaddressBoot.pri )
include( ../Resources/Resources.pri )


win32 {
    INCLUDEPATH += "../WpdPack/Include"
    LIBS += "../WpdPack/Lib/wpcap.lib" "ws2_32.lib"
 }

macx {
    LIBS += -framework Security -lpcap
    INCLUDEPATH += "/System/Library/Frameworks/Security.framework/Headers"
}

unix {
    LIBS += -lpcap
}




SOURCES += main.cpp\
        mainwindow.cpp


HEADERS  += mainwindow.h \
    version.h


FORMS    += mainwindow.ui

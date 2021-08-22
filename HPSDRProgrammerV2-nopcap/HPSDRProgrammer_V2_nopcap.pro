#-------------------------------------------------
#
# Project created by QtCreator 2013-03-16T12:08:51
#
#-------------------------------------------------

QT       += core gui network opengl

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = HPSDRProgrammer_V2_nopcap
TEMPLATE = app

# Included PRI files
include( ../Help/Help.pri )
include( ./hpsdr/hpsdr.pri)
include( ../Status/Status.pri )
include( ../Resources/Resources.pri )

win32 {
    INCLUDEPATH += "../WpdPack/Include"
    !contains(QMAKE_TARGET.arch, x86_64) {
        LIBS += "../WpdPack/Lib/wpcap.lib"
    } else {
        LIBS += "../WpdPack/Lib/x64/wpcap.lib"
    }
    LIBS += "ws2_32.lib"
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

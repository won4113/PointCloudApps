#-------------------------------------------------
#
# Project created by QtCreator 2015-11-18T23:36:53
#
#-------------------------------------------------

QT       += core gui opengl

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = PCApps
TEMPLATE = app
CONFIG += c++11
QMAKE_CXXFLAGS += -fopenmp
QMAKE_LFLAGS += -fopenmp

INCLUDEPATH += /home/hyukdoo/myLibs/opencv-2.4.11/include
LIBS += -L/home/hyukdoo/myLibs/opencv-2.4.11/lib    \
    -lopencv_core   \
    -lopencv_imgproc    \
    -lopencv_highgui

SOURCES += main.cpp \
    mainwindow.cpp \
    IO/glwidget.cpp \
    IO/glvertexmanager.cpp \
    IO/rgbdfilerw.cpp \
    project_common.cpp

HEADERS  += mainwindow.h \
    project_common.h \
    IO/glwidget.h \
    IO/glvertexmanager.h \
    IO/rgbdfilerw.h \

FORMS    += mainwindow.ui

RESOURCES += \
    shaders.qrc

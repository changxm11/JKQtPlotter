
SOURCES += jkqtplot_test.cpp \
    testmain.cpp \
    TestWidgetFunctionPlots.cpp \
    TestWidgetGeometry.cpp \
    TestWidgetGraphs.cpp \
    TestWidgetImages.cpp \
    TestWidgetLogGraphs.cpp \
    TestWidgetParamScatterPlots.cpp \
    TestWidgetPeaksPlots.cpp \
    TestWidgetRGBImages.cpp \
    TestWidgetBarcharts.cpp \
    TestWidgetContourPlots.cpp \
    TestWidgetEmptyPlot.cpp \
    QTeXEngine/src/QTeXPaintEngine.cpp \
    QTeXEngine/src/QTeXPaintDevice.cpp

greaterThan(QT_MAJOR_VERSION, 4) {
} else {
    win32  {
        SOURCES += jkqtpemfengineadapter.cpp \
            EmfEngine/src/EmfPaintDevice.cpp \
            EmfEngine/src/EmfEngine.cpp \

        HEADERS +=EmfEngine/src/EmfEngine.h \
            jkqtpemfengineadapter.h
    }
}

CONFIG += qt

#QMAKE_LFLAGS += -s

win32: LIBS += -lgdi32

win32-msvc*: DEFINES += _USE_MATH_DEFINES

#QMAKE_CXXFLAGS += -O2

DEFINES -= -DQT_DLL
DEFINES +=
#SHOW_JKQTPLOTTER_DEBUG
#JKQTBP_AUTOTIMER

TARGET = jkqtplot_test

QT += core gui xml svg xml
win32:LIBS += -lgdi32
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets printsupport

#if not added by qmake:
DEFINES += QT_XML_LIB

HEADERS += testmain.h \
    TestWidgetFunctionPlots.h \
    TestWidgetGeometry.h \
    TestWidgetGraphs.h \
    TestWidgetImages.h \
    TestWidgetLogGraphs.h \
    TestWidgetParamScatterPlots.h \
    TestWidgetPeaksPlots.h \
    TestWidgetRGBImages.h \
    TestWidgetBarcharts.h \
    TestWidgetContourPlots.h \
    TestWidgetEmptyPlot.h \
    QTeXEngine/src/QTeXEngine.h


INCLUDEPATH +=

UI_DIR = .uics
OBJECTS_DIR = .objs
MOC_DIR = .mocs
RCC_DIR = .rccs
DESTDIR = ./


RESOURCES += jkqtplot_test.qrc


DEPENDPATH += . ../../lib
INCLUDEPATH += ../../lib
CONFIG (debug, debug|release):LIBS += -L../../lib/debug -ljkqtplotterlib
CONFIG (release):LIBS += -L../../lib/release -ljkqtplotterlib

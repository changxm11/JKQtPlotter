# source code for this simple demo
SOURCES = jkqtplotter_simpletest_symbols_and_styles.cpp 

# configure Qt
CONFIG += qt
QT += core gui xml  svg
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets printsupport

# output executable name
TARGET = jkqtplotter_simpletest_symbols_and_styles


# include JKQtPlotter source code
DEPENDPATH += . ../../lib
INCLUDEPATH += ../../lib
CONFIG (debug, debug|release):LIBS += -L../../lib/debug -ljkqtplotterlib
CONFIG (release):LIBS += -L../../lib/release -ljkqtplotterlib

win32-msvc*: DEFINES += _USE_MATH_DEFINES

# here you can activate some debug options
#DEFINES += SHOW_JKQTPLOTTER_DEBUG
#DEFINES += JKQTBP_AUTOTIMER

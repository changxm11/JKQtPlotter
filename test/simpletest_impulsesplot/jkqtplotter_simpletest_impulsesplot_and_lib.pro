TEMPLATE = subdirs

SUBDIRS +=  jkqtplotterlib jkqtplotter_simpletest_impulsesplot

jkqtplotterlib.file = ../../lib/jkqtplotterlib.pro

jkqtplotter_simpletest_impulsesplot.file=$$PWD/jkqtplotter_simpletest_impulsesplot.pro
jkqtplotter_simpletest_impulsesplot.depends = jkqtplotterlib

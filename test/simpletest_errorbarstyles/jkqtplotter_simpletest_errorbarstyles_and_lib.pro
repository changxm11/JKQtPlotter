TEMPLATE = subdirs

SUBDIRS +=  jkqtplotterlib jkqtplotter_simpletest_errorbarstyles

jkqtplotterlib.file = ../../lib/jkqtplotterlib.pro

jkqtplotter_simpletest_errorbarstyles.file=$$PWD/jkqtplotter_simpletest_errorbarstyles.pro
jkqtplotter_simpletest_errorbarstyles.depends = jkqtplotterlib

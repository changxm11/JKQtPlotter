#ifndef TestWidgetContourPlots_H
#define TestWidgetContourPlots_H
#include <QElapsedTimer>
#include <QCheckBox>
#include <QLineEdit>
#include <QTimer>
#include <QImage>
#include <QVBoxLayout>
#include <QWidget>
#include <QTabWidget>
#include <QFormLayout>
#include <QCheckBox>
#include "jkqtplotter/jkqtplotter.h"
#include "jkqtplotter/jkqtpgeoelements.h"
#include "jkqtplotter/jkqtpimageelements.h"
#include "jkqtplotter/jkqtpoverlayelements.h"
#include "jkqtplotter/jkqtpparsedfunctionelements.h"
#include "jkqtplotter/jkqtpbaseelements.h"
#include "jkqtplotter/jkqtpplotsmodel.h"
#include "jkqtplottertools/jkqtptools.h"

#define N1 200
#define N2 50
#define N3 8




class TestWidgetContourPlots : public QWidget
{
        Q_OBJECT
    public:
        explicit TestWidgetContourPlots(QWidget *parent = 0);
        
    signals:
        
    public slots:


    protected:


        
};


#endif // TestWidgetContourPlots_H

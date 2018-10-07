#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QQmlContext>
#include <QtQuick>
#include <QtCore/QDir>
#include <QtQml/QQmlEngine>
#include <QMessageBox>
#include <QtWebView/QtWebView>
#include <QUrl>

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    QString s="w";
    ui->setupUi(this);
    ui->quickWidget->rootContext()->setContextProperty(s,this);
    ui->quickWidget->setSource(QUrl(QStringLiteral("qrc:/3DcarQml/main.qml")));

    QWebEnginePage *page= new QWebEnginePage();
    ui->preview->setPage(page);
    ui->preview->setUrl(QUrl("https://www.google.com/maps"));

    ui->quickWidget_2->rootContext()->setContextProperty(s,this);
    ui->quickWidget_2->setSource(QUrl(QStringLiteral("qrc:/qmlcharts/qml/chartMain.qml")));
}

MainWindow::~MainWindow()
{
    delete ui;
}



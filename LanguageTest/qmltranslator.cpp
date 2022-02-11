#include "qmltranslator.h"
#include <QApplication>
#include <QDebug>
QmlTranslator::QmlTranslator(QObject* parent) : QObject(parent) {}

void QmlTranslator::setTranslation(QString translation) {
    qDebug() << "translation : " << translation;

    m_translator.load(":/rsc/multilanguage/" + translation, ".");  // load translation
    qApp->installTranslator(&m_translator);                        // Set it to the application
    emit languageChanged();                                        // Signaling a change in the current translation
}

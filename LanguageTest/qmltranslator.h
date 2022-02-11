#ifndef QMLTRANSLATOR_H
#define QMLTRANSLATOR_H

#include <QObject>
#include <QTranslator>

class QmlTranslator : public QObject {
    Q_OBJECT

public:
    explicit QmlTranslator(QObject* parent = 0);

signals:
    // The signal of change the current language to change the interface translation
    void languageChanged();

public:
    // Translation installation method, which will be available in QML
    Q_INVOKABLE void setTranslation(QString translation);

private:
    QTranslator m_translator;
};

#endif  // QMLTRANSLATOR_H

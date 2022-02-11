QT += quick qml widgets

CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        main.cpp \
        qmltranslator.cpp

RESOURCES += qml.qrc \
    multilanguage.qrc

TRANSLATIONS += \
    $$PWD/rsc/multilanguage/ar.ts \
    $$PWD/rsc/multilanguage/bg_BG.ts \
    $$PWD/rsc/multilanguage/cs_CZ.ts \
    $$PWD/rsc/multilanguage/da_DK.ts \
    $$PWD/rsc/multilanguage/de_DE.ts \
    $$PWD/rsc/multilanguage/el_GR.ts \
    $$PWD/rsc/multilanguage/en_AU.ts \
    $$PWD/rsc/multilanguage/en_EN.ts \
    $$PWD/rsc/multilanguage/en_GB.ts \
    $$PWD/rsc/multilanguage/en_US.ts \
    $$PWD/rsc/multilanguage/es_ES.ts \
    $$PWD/rsc/multilanguage/es_US.ts \
    $$PWD/rsc/multilanguage/fi_FI.ts \
    $$PWD/rsc/multilanguage/fr_CA.ts \
    $$PWD/rsc/multilanguage/fr_FR.ts \
    $$PWD/rsc/multilanguage/hr_HR.ts \
    $$PWD/rsc/multilanguage/hu_HU.ts \
    $$PWD/rsc/multilanguage/it_IT.ts \
    $$PWD/rsc/multilanguage/ja_JP.ts \
    $$PWD/rsc/multilanguage/ko_KR.ts \
    $$PWD/rsc/multilanguage/nl_NL.ts \
    $$PWD/rsc/multilanguage/no_NO.ts \
    $$PWD/rsc/multilanguage/pl_PL.ts \
    $$PWD/rsc/multilanguage/pt_BR.ts \
    $$PWD/rsc/multilanguage/pt_PT.ts \
    $$PWD/rsc/multilanguage/ro_RO.ts \
    $$PWD/rsc/multilanguage/ru_RU.ts \
    $$PWD/rsc/multilanguage/sk_SK.ts \
    $$PWD/rsc/multilanguage/sl_SI.ts \
    $$PWD/rsc/multilanguage/sv_SE.ts \
    $$PWD/rsc/multilanguage/tr_TR.ts \
    $$PWD/rsc/multilanguage/uk_UA.ts \
    $$PWD/rsc/multilanguage/zh_CN.ts \
    $$PWD/rsc/multilanguage/id_ID.ts \
    $$PWD/rsc/multilanguage/he_IL.ts \
    $$PWD/rsc/multilanguage/hi_IN.ts \
    $$PWD/rsc/multilanguage/bn_IN.ts \
    $$PWD/rsc/multilanguage/mr_IN.ts \
    $$PWD/rsc/multilanguage/te_IN.ts \
    $$PWD/rsc/multilanguage/ta_IN.ts \
    $$PWD/rsc/multilanguage/gu_IN.ts \
    $$PWD/rsc/multilanguage/kn_IN.ts \
    $$PWD/rsc/multilanguage/or_IN.ts \
    $$PWD/rsc/multilanguage/ml_IN.ts \
    $$PWD/rsc/multilanguage/pa_IN.ts \


# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \
    qmltranslator.h

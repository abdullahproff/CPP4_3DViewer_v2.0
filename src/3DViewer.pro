QT       += core gui openglwidgets
win32: LIBS += -lopengl32
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

TEMPLATE = app
TARGET = 3DViewer_v2.0

SOURCES += \
    main.cc \
    view/s21_view.cc \
    controller/s21_strategy.cc \
    controller/s21_opengl.cc \
    model/s21_model.cc \
    controller/s21_controller.cc
    

HEADERS += \
    view/s21_view.h \
    controller/s21_strategy.h \
    controller/s21_opengl.h \
    model/s21_model.h \
    controller/s21_controller.h
    

FORMS += \
    view/view.ui

# DESTDIR = ../build

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

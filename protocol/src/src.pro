# Собираем статическую библиотеку
TEMPLATE = lib
CONFIG += staticlib

CONFIG += console c++11

# Qt тут не нужен
CONFIG -= app_bundle
CONFIG -= qt

DESTDIR = ../lib

# Общие определения (требуется для LIBINFIX)
include(../../alpha.pri)

# Целевое имя библиотеки
TARGET = alpha.protort.protocol$$LIBINFIX

LIBS += \
    -L$$(PROTOBUF_PATH)/lib \ # Подключаем директорию со сборками protobuf
    -llibprotobuf$$LIBINFIX # Линкуемся с protobuf

# Файлы описания протокола
PROTOS += \
    protobuf/packet.proto

# Для компиляции протокола с помощью protoc налету
include(protobuf/compiler.pri)

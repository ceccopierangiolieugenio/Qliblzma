#-------------------------------------------------
#
# Project created by QtCreator 2017-07-11T17:44:56
# Author:   Eugenio Parodi
#           ceccopierangiolieugenio@googlemail.com
#
# License:  This library is public domain
#           Please refer to the license folder for more details
#           This library includes code from 
#                           XZ Utils <https://tukaani.org/xz/>.
#        
#-------------------------------------------------

QT       -= core gui

TARGET = Qliblzma
TEMPLATE = lib

DEFINES += QLIBLZMA_LIBRARY

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS


win32 {}
win64 {}
win32-g++ {
    QMAKE_CFLAGS += \
        -std=gnu99 \
        -DHAVE_CONFIG_H \
        -D_POSIX \
        -O2
}
win32-msvc2013 {
    QMAKE_CFLAGS += \
        -std=gnu99 \
        -DHAVE_CONFIG_H \
        -D_POSIX
}
win32-msvc2015 {
    QMAKE_CFLAGS += \
        -std=gnu99 \
        -DHAVE_CONFIG_H \
        -D_POSIX
}

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
liblzma/common/common.c \
liblzma/common/block_util.c \
liblzma/common/easy_preset.c \
liblzma/common/filter_common.c \
liblzma/common/hardware_physmem.c \
liblzma/common/index.c \
liblzma/common/stream_flags_common.c \
liblzma/common/vli_size.c \
liblzma/common/hardware_cputhreads.c \
liblzma/common/alone_encoder.c \
liblzma/common/block_buffer_encoder.c \
liblzma/common/block_encoder.c \
liblzma/common/block_header_encoder.c \
liblzma/common/easy_buffer_encoder.c \
liblzma/common/easy_encoder.c \
liblzma/common/easy_encoder_memusage.c \
liblzma/common/filter_buffer_encoder.c \
liblzma/common/filter_encoder.c \
liblzma/common/filter_flags_encoder.c \
liblzma/common/index_encoder.c \
liblzma/common/stream_buffer_encoder.c \
liblzma/common/stream_encoder.c \
liblzma/common/stream_flags_encoder.c \
liblzma/common/vli_encoder.c \
liblzma/common/outqueue.c \
liblzma/common/alone_decoder.c \
liblzma/common/auto_decoder.c \
liblzma/common/block_buffer_decoder.c \
liblzma/common/block_decoder.c \
liblzma/common/block_header_decoder.c \
liblzma/common/easy_decoder_memusage.c \
liblzma/common/filter_buffer_decoder.c \
liblzma/common/filter_decoder.c \
liblzma/common/filter_flags_decoder.c \
liblzma/common/index_decoder.c \
liblzma/common/index_hash.c \
liblzma/common/stream_buffer_decoder.c \
liblzma/common/stream_decoder.c \
liblzma/common/stream_flags_decoder.c \
liblzma/common/vli_decoder.c \
liblzma/check/check.c \
liblzma/check/crc32_table.c \
liblzma/check/crc32_fast.c \
liblzma/check/crc64_table.c \
liblzma/check/crc64_fast.c \
liblzma/check/sha256.c \
liblzma/lz/lz_encoder.c \
liblzma/lz/lz_encoder_mf.c \
liblzma/lz/lz_decoder.c \
liblzma/lzma/lzma_encoder_presets.c \
liblzma/lzma/lzma_encoder.c \
liblzma/lzma/lzma_encoder_optimum_fast.c \
liblzma/lzma/lzma_encoder_optimum_normal.c \
liblzma/lzma/fastpos_table.c \
liblzma/lzma/lzma_decoder.c \
liblzma/lzma/lzma2_encoder.c \
liblzma/lzma/lzma2_decoder.c \
liblzma/rangecoder/price_table.c \
liblzma/delta/delta_common.c \
liblzma/delta/delta_encoder.c \
liblzma/delta/delta_decoder.c \
liblzma/simple/simple_coder.c \
liblzma/simple/simple_encoder.c \
liblzma/simple/simple_decoder.c \
liblzma/simple/x86.c \
liblzma/simple/powerpc.c \
liblzma/simple/ia64.c \
liblzma/simple/arm.c \
liblzma/simple/armthumb.c \
liblzma/simple/sparc.c \
common/tuklib_physmem.c \
common/tuklib_cpucores.c

INCLUDEPATH += \
liblzma/rangecoder/ \
liblzma/simple/ \
liblzma/delta/ \
liblzma/common/ \
liblzma/check/ \
liblzma/lzma/ \
liblzma/api/ \
liblzma/lz/ \
liblzma/ \
common/

HEADERS += \
        qliblzma_global.h \
        liblzma/config.h \
liblzma/api/lzma.h \
liblzma/api/lzma/base.h \
liblzma/api/lzma/bcj.h \
liblzma/api/lzma/block.h \
liblzma/api/lzma/check.h \
liblzma/api/lzma/container.h \
liblzma/api/lzma/delta.h \
liblzma/api/lzma/filter.h \
liblzma/api/lzma/hardware.h \
liblzma/api/lzma/index.h \
liblzma/api/lzma/index_hash.h \
liblzma/api/lzma/lzma12.h \
liblzma/api/lzma/stream_flags.h \
liblzma/api/lzma/version.h \
liblzma/api/lzma/vli.h

unix {
    target.path = /usr/lib
    INSTALLS += target
}

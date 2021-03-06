CONFIG += c++11

#import openmp
QMAKE_CXXFLAGS += -fopenmp
QMAKE_LFLAGS += -fopenmp
LIBS += -fopenmp

# import opencv
INCLUDEPATH += /home/seongwon/MyLibs/LibsInstalled/opencv-3.1.0/include
LIBS += -L/home/seongwon/MyLibs/LibsInstalled/opencv-3.1.0/lib    \
    -lopencv_core   \
    -lopencv_imgproc    \
    -lopencv_highgui    \
    -lopencv_imgcodecs

# import opencl
INCLUDEPATH += /usr/local/cuda-7.5/include
LIBS += -lOpenCL

# import eigen
INCLUDEPATH += /usr/local/include/eigen3

DEFINES += PCApps_PATH=\\\"$$PWD\\\"

INCLUDEPATH += $$PWD

SOURCES += $$PWD/Share/project_common.cpp \
    $$PWD/ClUtils/clsetup.cpp \
    $$PWD/ClUtils/cl_utils.cpp \
    $$PWD/IO/glwidget.cpp \
    $$PWD/IO/glvertexmanager.cpp \
    $$PWD/IO/rgbdfilerw.cpp \
    $$PWD/IO/drawutils.cpp \
    $$PWD/IO/VirtualSensor/virtualrgbdsensor.cpp  \
    $$PWD/PCWork/pcworker.cpp \
    $$PWD/PCWork/radiussearch.cpp \
    $$PWD/PCWork/normalmaker.cpp \
    $$PWD/PCWork/descriptormaker.cpp \
    $$PWD/PCWork/descriptormakerbycpu.cpp \
    $$PWD/PCWork/Clustering/planeclusterpolicy.cpp \
    $$PWD/PCWork/Clustering/smallplanemerger.cpp \
    $$PWD/PCWork/Clustering/objectclusterbase.cpp \
    $$PWD/PCWork/Clustering/objectclusterer.cpp \
    $$PWD/PCWork/Clustering/mergeablegraph.cpp \
    $$PWD/PCWork/Clustering/clustererbydbrect.cpp

HEADERS  += $$PWD/Share/project_common.h \
    $$PWD/Share/forsearchneigbhor.h \
    $$PWD/Share/fordescriptor.h \
    $$PWD/Share/camera_param.h \
    $$PWD/Share/arraydata.h \
    $$PWD/Share/shared_enums.h \
    $$PWD/Share/shared_data.h \
    $$PWD/Share/shared_types.h \
    $$PWD/Share/range.h \
    $$PWD/Share/annotation.h \
    $$PWD/ClUtils/cl_macros.h \
    $$PWD/ClUtils/clsetup.h \
    $$PWD/ClUtils/cloperators.h \
    $$PWD/ClUtils/cl_utils.h \
    $$PWD/ClUtils/clbase.h \
    $$PWD/IO/glwidget.h \
    $$PWD/IO/glvertexmanager.h \
    $$PWD/IO/rgbdfilerw.h \
    $$PWD/IO/imageconverter.h \
    $$PWD/IO/drawutils.h \
    $$PWD/IO/VirtualShape/ivirtualshape.h \
    $$PWD/IO/VirtualShape/virtualrectplane.h \
    $$PWD/IO/VirtualShape/virtualsphere.h \
    $$PWD/IO/VirtualSensor/shapereader.h \
    $$PWD/IO/VirtualSensor/virtualrgbdsensor.h \
    $$PWD/IO/VirtualSensor/posereader.h \
    $$PWD/IO/VirtualSensor/readerutil.h \
    $$PWD/IO/VirtualSensor/noisereader.h \
    $$PWD/IO/VirtualSensor/noisegenerator.h \
    $$PWD/IO/VirtualShape/virtualcuboid.h \
    $$PWD/IO/VirtualShape/virtualellipsoid.h \
    $$PWD/IO/VirtualSensor/attribtype.h \
    $$PWD/IO/VirtualShape/virtualcylinder.h \
    $$PWD/PCWork/pcworker.h \
    $$PWD/PCWork/radiussearch.h \
    $$PWD/PCWork/normalmaker.h \
    $$PWD/PCWork/descriptormaker.h \
    $$PWD/PCWork/descriptormakerbycpu.h \
    $$PWD/PCWork/Clustering/clusterer.h \
    $$PWD/PCWork/Clustering/planeclusterpolicy.h \
    $$PWD/PCWork/Clustering/segment.h \
    $$PWD/PCWork/Clustering/smallplanemerger.h \
    $$PWD/PCWork/Clustering/imline.h \
    $$PWD/PCWork/Clustering/objectclusterbase.h \
    $$PWD/PCWork/Clustering/objectclusterer.h \
    $$PWD/PCWork/Clustering/mergeablegraph.h \
    $$PWD/PCWork/Clustering/clustererbydbrect.h

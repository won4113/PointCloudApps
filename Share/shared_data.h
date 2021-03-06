#ifndef SHAREDDATA_H
#define SHAREDDATA_H

#include <CL/cl.h>
#include <QImage>
#include "Share/project_common.h"
#include "PCWork/Clustering/segment.h"
#include "Share/fordescriptor.h"

class SharedData
{
public:
    SharedData()
        : pointCloud(nullptr)
        , normalCloud(nullptr)
        , descriptors(nullptr)
        , nullityMap(nullptr)
        , planeMap(nullptr)
        , planes(nullptr)
        , objectMap(nullptr)
        , objects(nullptr)
    {}

    bool NullData() { return (pointCloud==nullptr); }

    void SetColorImage(QImage srcimg) { colorImg = srcimg; }
    void SetPointCloud(const cl_float4* srcptr) { pointCloud = srcptr; }
    void SetNormalCloud(const cl_float4* srcptr) { normalCloud = srcptr; }
    void SetDescriptors(const DescType* srcptr) { descriptors = srcptr; }
    void SetNullityMap(const cl_uchar* srcptr) { nullityMap = srcptr; }
    void SetPlaneMap(const cl_int* srcptr) { planeMap = srcptr; }
    void SetPlanes(const vecSegment* srcptr) { planes = srcptr; }
    void SetObjectMap(const cl_int* srcptr) { objectMap = srcptr; }
    void SetObjects(const vecSegment* srcptr) { objects = srcptr; }

    const QImage& ConstColorImage() { return colorImg; }
    const cl_float4* ConstPointCloud() { return pointCloud; }
    const cl_float4* ConstNormalCloud() { return normalCloud; }
    const DescType* ConstDescriptors() { return descriptors; }
    const cl_uchar* ConstNullityMap() { return nullityMap; }
    const cl_int* ConstPlaneMap() { return planeMap; }
    const vecSegment* ConstPlanes() { return planes; }
    const cl_int* ConstObjectMap() { return objectMap; }
    const vecSegment* ConstObjects() { return objects; }

private:
    const cl_float4* pointCloud;
    const cl_float4* normalCloud;
    const DescType* descriptors;
    const cl_uchar* nullityMap;
    const cl_int* planeMap;
    const vecSegment* planes;
    const cl_int* objectMap;
    const vecSegment* objects;
    QImage colorImg;
};

#endif // SHAREDDATA_H

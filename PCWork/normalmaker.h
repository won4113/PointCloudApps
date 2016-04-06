#ifndef NORMALMAKER_H
#define NORMALMAKER_H

#include <QElapsedTimer>
#include "Share/project_common.h"
#include "ClUtils/cl_macros.h"
#include "ClUtils/clsetup.h"
#include "ClUtils/cl_utils.h"

class NormalMaker
{
public:
    NormalMaker();
    ~NormalMaker();
    void ComputeNormal(cl_mem memPoints, cl_mem memNeighborIndices, cl_mem memNumNeighbors, cl_int maxNeighbors
                       , cl_float4* normalCloud_out);

    cl_mem memNormals;
    cl_float debugBuffer[DEBUG_FL_SIZE];

private:
    void Setup();
    bool b_init = false;
    cl_device_id device;
    cl_context context;
    cl_command_queue queue;
    cl_program program;
    cl_kernel kernel;
    size_t gwsize[2];
    size_t lwsize[2];
    size_t imgOrigin[3];
    size_t imgRegion[3];
    cl_int szDebug;
    cl_mem memDebug;
};

#endif // NORMALMAKER_H

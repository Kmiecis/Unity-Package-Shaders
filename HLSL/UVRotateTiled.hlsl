#include "UVRotate.hlsl"

void UVRotateTiled_float(float2 uv, float2 tiling, float angle, out float2 output)
{
    float2 fuv = floor(uv * tiling);
    uv *= tiling;
    uv -= fuv;
    UVRotate_float(uv, angle, uv);
    uv += fuv;
    uv /= tiling;
    output = uv;
}

void UVRotateTiled_half(half2 uv, half2 tiling, half angle, out half2 output)
{
    UVRotateTiled_float(uv, tiling, angle, output);
}

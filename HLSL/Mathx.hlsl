#ifndef MATH_X_INCLUDED
#define MATH_X_INCLUDED

static float unlerp(float a, float b, float t)
{
    return (t - a) / (b - a);
}

static float2 unlerp(float2 a, float2 b, float2 t)
{
    return (t - a) / (b - a);
}

static float3 unlerp(float3 a, float3 b, float3 t)
{
    return (t - a) / (b - a);
}

static float4 unlerp(float4 a, float4 b, float4 t)
{
    return (t - a) / (b - a);
}

static float remap(float fmin, float fmax, float tmin, float tmax, float v)
{
    return lerp(tmin, tmax, unlerp(fmin, fmax, v));
}

static float2 remap(float2 fmin, float2 fmax, float2 tmin, float2 tmax, float2 v)
{
    return lerp(tmin, tmax, unlerp(fmin, fmax, v));
}

static float3 remap(float3 fmin, float3 fmax, float3 tmin, float3 tmax, float3 v)
{
    return lerp(tmin, tmax, unlerp(fmin, fmax, v));
}

static float4 remap(float4 fmin, float4 fmax, float4 tmin, float4 tmax, float4 v)
{
    return lerp(tmin, tmax, unlerp(fmin, fmax, v));
}

#endif
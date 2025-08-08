#ifndef NOISE_COMMON_INCLUDED
#define NOISE_COMMON_INCLUDED

#include "Mathx.hlsl"

static float fade(float t)
{
    return t * t * t * (t * (t * 6.0f - 15.0f) + 10.0f);
}

static float2 fade(float2 t)
{
    return t * t * t * (t * (t * 6.0f - 15.0f) + 10.0f);
}

static float3 fade(float3 t)
{
    return t * t * t * (t * (t * 6.0f - 15.0f) + 10.0f);
}

static float4 fade(float4 t)
{
    return t * t * t * (t * (t * 6.0f - 15.0f) + 10.0f);
}

static float fmod(float x, float y)
{
    return x % y;
}

static float2 fmod(float2 x, float2 y)
{
    return float2(x.x % y.x, x.y % y.y);
}

static float3 fmod(float3 x, float3 y)
{
    return float3(x.x % y.x, x.y % y.y, x.z % y.z);
}

static float4 fmod(float4 x, float4 y)
{
    return float4(x.x % y.x, x.y % y.y, x.z % y.z, x.w % y.w);
}

static float mod289(float x)
{
    return x - floor(x * (1.0f / 289.0f)) * 289.0f;
}

static float2 mod289(float2 x)
{
    return x - floor(x * (1.0f / 289.0f)) * 289.0f;
}

static float3 mod289(float3 x)
{
    return x - floor(x * (1.0f / 289.0f)) * 289.0f;
}

static float4 mod289(float4 x)
{
    return x - floor(x * (1.0f / 289.0f)) * 289.0f;
}

static float mod7(float x)
{
    return x - floor(x * (1.0f / 7.0f)) * 7.0f;
}

static float2 mod7(float2 x)
{
    return x - floor(x * (1.0f / 7.0f)) * 7.0f;
}

static float3 mod7(float3 x)
{
    return x - floor(x * (1.0f / 7.0f)) * 7.0f;
}

static float4 mod7(float4 x)
{
    return x - floor(x * (1.0f / 7.0f)) * 7.0f;
}

static float permute(float x)
{
    return mod289((34.0f * x + 1.0f) * x);
}

static float2 permute(float2 x)
{
    return mod289((34.0f * x + 1.0f) * x);
}

static float3 permute(float3 x)
{
    return mod289((34.0f * x + 1.0f) * x);
}

static float4 permute(float4 x)
{
    return mod289((34.0f * x + 1.0f) * x);
}

static float taylorInvSqrt(float r)
{
    return 1.79284291400159f - 0.85373472095314f * r;
}

static float2 taylorInvSqrt(float2 r)
{
    return 1.79284291400159f - 0.85373472095314f * r;
}

static float3 taylorInvSqrt(float3 r)
{
    return 1.79284291400159f - 0.85373472095314f * r;
}

static float4 taylorInvSqrt(float4 r)
{
    return 1.79284291400159f - 0.85373472095314f * r;
}

#endif
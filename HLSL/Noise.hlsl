#ifndef NOISE_INCLUDED
#define NOISE_INCLUDED

#include "Common.hlsl"

void Noise_float(float2 v, out float Out)
{
    float4 pi = floor(v.xyxy) + float4(0.0f, 0.0f, 1.0f, 1.0f);
    float4 pf = frac(v.xyxy) - float4(0.0f, 0.0f, 1.0f, 1.0f);
    
    pi = mod289(pi); // To avoid truncation effects in permutation
    
    float4 ix = pi.xzxz;
    float4 iy = pi.yyww;
    float4 fx = pf.xzxz;
    float4 fy = pf.yyww;

    float4 i = permute(permute(ix) + iy);

    float4 gx = frac(i * (1.0f / 41.0f)) * 2.0f - 1.0f;
    float4 gy = abs(gx) - 0.5f;
    float4 tx = floor(gx + 0.5f);
    gx = gx - tx;

    float2 g00 = float2(gx.x, gy.x);
    float2 g10 = float2(gx.y, gy.y);
    float2 g01 = float2(gx.z, gy.z);
    float2 g11 = float2(gx.w, gy.w);

    float4 norm = taylorInvSqrt(float4(dot(g00, g00), dot(g01, g01), dot(g10, g10), dot(g11, g11)));
    g00 *= norm.x;
    g01 *= norm.y;
    g10 *= norm.z;
    g11 *= norm.w;

    float n00 = dot(g00, float2(fx.x, fy.x));
    float n10 = dot(g10, float2(fx.y, fy.y));
    float n01 = dot(g01, float2(fx.z, fy.z));
    float n11 = dot(g11, float2(fx.w, fy.w));

    float2 fade_xy = fade(pf.xy);
    float2 n_x = lerp(float2(n00, n01), float2(n10, n11), fade_xy.x);
    float n_xy = lerp(n_x.x, n_x.y, fade_xy.y);
    
    float value = 2.3f * n_xy;
    Out = (value + 1.0f) * 0.5f;
}

void Noise_half(half2 v, out half Out)
{
    Noise_float(v, Out);
}

#endif
#ifndef LAYERED_NOISE_INCLUDED
#define LAYERED_NOISE_INCLUDED

#include "Noise.hlsl"

void LayeredNoise_float(float2 v, float2 s, float octaves, float persistance, float lacunarity, out float Out)
{
    float amplitude = 1.0f;
    float frequency = 1.0f;
    float value = 0.0f;
    
    float pmin = 0.0f;
    float pmax = 1.0f;
    
    for (int i = 1; i < octaves; ++i)
    {
        float ppow = pow(persistance, i);
        pmin += ppow * 0.25f;
        pmax += ppow * 0.75f;
    }

    for (int _ = 0; _ < octaves; ++_)
    {
        float px = (v.x * s.x) * frequency;
        float py = (v.y * s.y) * frequency;

        float n;
        Noise_float(float2(px, py), n);
        
        value += n * amplitude;

        amplitude *= persistance;
        frequency *= lacunarity;
    }
    
    value = remap(pmin, pmax, 0.0f, 1.0f, value);
    
    Out = value;
}

void LayeredNoise_half(half2 v, half2 s, half octaves, half persistance, half lacunarity, out half Out)
{
    LayeredNoise_float(v, s, octaves, persistance, lacunarity, Out);
}

#endif
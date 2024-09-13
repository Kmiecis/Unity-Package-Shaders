void TileIndex_float(float2 uv, float2 tiling, out float output)
{
    uv *= tiling;
    uv = floor(uv);
    output = uv.x + uv.y * tiling.x;
}

void TileIndex_half(half2 uv, half2 tiling, out half output)
{
    TileIndex_float(uv, tiling, output);
}
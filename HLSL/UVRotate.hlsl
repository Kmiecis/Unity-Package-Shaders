void UVRotate_float(float2 uv, float angle, out float2 output)
{
    uv = uv - 0.5;
    float s = sin(angle);
    float c = cos(angle);
    output.x = uv.x * s + uv.y * c + 0.5;
    output.y = uv.y * s - uv.x * c + 0.5;
}

void UVRotate_half(half2 uv, half angle, out half2 output)
{
    UVRotate_float(uv, angle, output);
}

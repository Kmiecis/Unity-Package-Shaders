void Pixelate_float(float4 color, float resolution, out float4 output)
{
	output = (floor(color * resolution)) / resolution;
}

void Pixelate_half(half4 color, half resolution, out half4 output)
{
	Pixelate_float(color, resolution, output);
}

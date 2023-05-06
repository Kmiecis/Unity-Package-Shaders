void Grayscale_float(float4 color, out float4 output)
{
	float grayscale = (color.r + color.g + color.b) * 0.33f;
	output = float4(grayscale, grayscale, grayscale, color.a);
}

void Grayscale_half(half4 color, out half4 output)
{
	Grayscale_float(color, output);
}

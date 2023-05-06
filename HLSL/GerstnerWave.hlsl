static const float UNITY_PI = 3.14159274;

void GerstnerWave_float(float amplitude, float frequency, float speed, float2 direction, float offset, float2 position, out float output)
{
	float time = _Time.y;
	float f0 = 2.0 * UNITY_PI * frequency;
	float f1 = dot(direction * f0, position) - speed * time + offset;
	float fcos = cos(f1);
	float fsin = sin(f1);
	float fa = amplitude / f0;
	float fs = fa * fa;
	output = amplitude * fs * (f0 * fcos + fsin);
}

void GerstnerWave_half(half amplitude, half frequency, half speed, half2 direction, half offset, half2 position, out half output)
{
	GerstnerWave_float(amplitude, frequency, speed, direction, offset, position, output);
}

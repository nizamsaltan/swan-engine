// Used to render texture on screen
// Doesn't affect by any light

#version 330 core
out vec4 FragColor;

in vec2 TexCoord;

uniform sampler2D tex;

void main()
{
	vec4 texColor = texture(tex, TexCoord);
	if(texColor.a < 0.1)
		discard;
	FragColor = texColor;
}
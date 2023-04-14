// Used to render texture on screen (plus you can use objectColor vec3 to give color to texture. but don't forget to set color force!)
// Doesn't affect by any light

#version 330 core
out vec4 FragColor;

in vec2 TexCoord;

uniform sampler2D tex;
uniform vec3 objectColor;
uniform float colorForce;

void main()
{
	vec4 texColor = mix(texture(tex, TexCoord), vec4(objectColor, 0.1), colorForce);
	if(texColor.a < 0.15)
		discard;
	FragColor = texColor;
}
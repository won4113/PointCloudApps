uniform mediump mat4 in_mvpmat;
uniform mediump vec3 in_lightpos;
attribute mediump vec4 in_posit;
attribute mediump vec3 in_normal;
attribute mediump float in_ptsize;
attribute mediump vec3 in_color;
varying mediump vec4 out_color;

void main(void)
{
    float dp = abs(dot(in_lightpos - in_posit.xyz, in_normal));
    float intensity = max(1.0 - (1.0 - dp)/2.0, 0.5);
	out_color.xyz = in_color*intensity;
	out_color.w = 1.0;
    gl_Position = in_mvpmat * in_posit;
    gl_PointSize = in_ptsize;
}


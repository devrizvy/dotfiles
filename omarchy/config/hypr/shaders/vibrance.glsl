precision mediump float;

varying vec2 v_texcoord;
uniform sampler2D tex;

void main() {
    vec4 color = texture2D(tex, v_texcoord);

    float contrast = 1.08;
    color.rgb = (color.rgb - 0.5) * contrast + 0.5;

    float gray = dot(color.rgb, vec3(0.299, 0.587, 0.114));

    float saturation = 1.06;
    color.rgb = mix(vec3(gray), color.rgb, saturation);

    color.rgb *= 0.96;

    gl_FragColor = color;
}
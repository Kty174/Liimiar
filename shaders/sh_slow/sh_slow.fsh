varying vec2 v_vTexcoord;

uniform float strength;

void main() {

    float offset = strength * 0.005; // controla intensidade

    vec2 uv = v_vTexcoord;

    float r = texture2D(gm_BaseTexture, uv + vec2(offset, 0.0)).r;
    float g = texture2D(gm_BaseTexture, uv).g;
    float b = texture2D(gm_BaseTexture, uv - vec2(offset, 0.0)).b;

    vec4 final = vec4(r, g, b, 1.0);

    gl_FragColor = final;
}
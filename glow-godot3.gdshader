shader_type canvas_item;
render_mode blend_premul_alpha;

//uniform sampler2D SCREEN_TEXTURE: hint_screen_texture;
uniform sampler2D viewport_texture;
uniform float glow_strength = 2.5;
uniform float lod = 0.0;
uniform vec2 view_size = vec2(640.0, 360.0);

void fragment() {
	vec2 pix_size = vec2(1.0/view_size.x, 1.0/view_size.y);
	
	//vec4 screen = textureLod(SCREEN_TEXTURE, UV, lod);
	vec4 glow = textureLod(viewport_texture, UV + vec2(0.0, 0.0) * pix_size, lod) * 0.152781;
	glow += textureLod(viewport_texture, UV + vec2(1.0, 0.0) * pix_size, lod) * 0.144599;
	glow += textureLod(viewport_texture, UV + vec2(2.0, 0.0) * pix_size, lod) * 0.122589;
	glow += textureLod(viewport_texture, UV + vec2(3.0, 0.0) * pix_size, lod) * 0.093095;
	glow += textureLod(viewport_texture, UV + vec2(4.0, 0.0) * pix_size, lod) * 0.063327;
	glow += textureLod(viewport_texture, UV + vec2(-1.0, 0.0) * pix_size, lod) * 0.144599;
	glow += textureLod(viewport_texture, UV + vec2(-2.0, 0.0) * pix_size, lod) * 0.122589;
	glow += textureLod(viewport_texture, UV + vec2(-3.0, 0.0) * pix_size, lod) * 0.093095;
	glow += textureLod(viewport_texture, UV + vec2(-4.0, 0.0) * pix_size, lod) * 0.063327;

	glow += textureLod(viewport_texture, UV + vec2(0.0, 1.0) * pix_size, lod) * 0.152781;
	glow += textureLod(viewport_texture, UV + vec2(1.0, 1.0) * pix_size, lod) * 0.144599;
	glow += textureLod(viewport_texture, UV + vec2(2.0, 1.0) * pix_size, lod) * 0.122589;
	glow += textureLod(viewport_texture, UV + vec2(3.0, 1.0) * pix_size, lod) * 0.093095;
	glow += textureLod(viewport_texture, UV + vec2(4.0, 1.0) * pix_size, lod) * 0.063327;
	glow += textureLod(viewport_texture, UV + vec2(-1.0, 1.0) * pix_size, lod) * 0.144599;
	glow += textureLod(viewport_texture, UV + vec2(-2.0, 1.0) * pix_size, lod) * 0.122589;
	glow += textureLod(viewport_texture, UV + vec2(-3.0, 1.0) * pix_size, lod) * 0.093095;
	glow += textureLod(viewport_texture, UV + vec2(-4.0, 1.0) * pix_size, lod) * 0.063327;
	glow *= glow_strength;
	
	COLOR = glow;
}
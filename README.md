# Godot 4 3 2D Glow

![glow-screen1](https://user-images.githubusercontent.com/6783606/235449781-664cc976-30cb-4093-bbe4-560b6fbda74d.png)

This is an attempt to recreate a glow effect in Godot 4's 2D (specifically Compatibility Mode but Vulkan also applies).

We are trying to get a similar effect to Glow in Godot 3, so we use some shader code from that:
https://github.com/godotengine/godot/blob/3.5/drivers/gles3/shaders/effect_blur.glsl

This approach uses a SubViewport to contain any textures that want to glow.

The game world nodes need to place a texture into the Subviewport and then use a RemoteTransform2D to keep it aligned.

## PROBLEM

Currently if one glowed sprite is behind another sprite, the glow will not be clipped.

Looking for solution!

If solution found, then we can proceed with better glow effect.

## WHY NOT WAIT FOR GODOT 4.X?

This solution will probably be short-term. However, it may end up being faster than using HDR on low-end devices, or more customizable.

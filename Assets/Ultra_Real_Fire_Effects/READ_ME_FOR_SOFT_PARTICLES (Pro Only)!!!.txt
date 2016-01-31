Important!   

Enabling Soft Particle Rendering

By default Unity projects are not using deferred lighting with soft particles turned on.  This will cause the particle shaders to cut through the ground in a somewhat unrealistic manor.  To use soft particles, it will require that your game use differed lighting.  To correct this follow these instructions.

1.	From the main menu, select Edit/Project Settings/Player.
2.	In the PlayerSettings inspector make sure the “Setting for PC, Mac & Linux Standalone” is selected.  It’s the icon that looks like an arrow pointing down to a line.
3.	In that tab, change the Rendering Path to Differed Rendering.
4.	From the main menu select Edit/Project Settings/Quality.
5.	Enable Soft Particles.

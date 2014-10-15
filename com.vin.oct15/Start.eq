
/*
 * Start
 * Created by Eqela Studio 2.0b7.4
 */

public class Start : SEScene
{
	SESprite startb;
	int w;
	int h;
	
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		w = get_scene_width();
		h = get_scene_height();
	
	
		rsc.prepare_image("mystart","start",w,h);
		startb = add_sprite_for_image(SEImage.for_resource("mystart"));
		startb.move(0,0);
	}

	public void cleanup() {
		base.cleanup();
	}
		public void on_pointer_press(SEPointerInfo pi) {	
		base.on_pointer_press(pi);
		switch_scene(new MainScene());	
		
	}
}

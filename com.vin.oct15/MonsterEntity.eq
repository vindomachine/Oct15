
/*
 * MonsterEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class MonsterEntity : SEEntity
{
	SESprite monster;
	int w;
	int h;
	int mx;
	int my;
	//int px;
	//int py;
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		w = get_scene_width();
		h = get_scene_height();
		
		rsc.prepare_image("mymonster","m1",0.1*w,0.1*h);
		monster = add_sprite_for_image(SEImage.for_resource("mymonster"));
		monster.move(Math.random(0,w),Math.random(0,h));
	

	//	px = MainScene.x;
	//	py = MainScene.y;
	}

	public void tick(TimeVal now, double delta) {
		base.tick(now, delta);

		mx = monster.get_x();
		my = monster.get_y();
		monster.move(mx+(MainScene.x-mx)/Math.random(100,1000), my+(MainScene.y-my)/Math.random(100,1000));

	
	}
	public void cleanup() {
		base.cleanup();
	}
	
}

function onCreate()

	makeLuaSprite('wtfh','skyie', -350, -250);
	setLuaSpriteScrollFactor('wtfh', 0.9, 0.9);
	addGlitchEffect('wtfh', 2.5,2.5);
	addLuaSprite('wtfh', false)
	
	makeLuaSprite('head','face',25,0)
	addLuaSprite('head',false)

	makeLuaSprite('Ground','groun',-550,605)
	addLuaSprite('Ground',false)
close(true)

end

function onBeatHit()

end

function onStepHit()

end

function onUpdate()

end
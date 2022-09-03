function onCreate()
 	makeLuaSprite('moldybelike','ofaqno', -750, -250);
	setLuaSpriteScrollFactor('moldybelike', 0.9, 0.9);
	addLuaSprite('moldybelike', false)

	makeLuaSprite('halpus','people_fly',-250,450)
	addLuaSprite('halpus',false)

	makeLuaSprite('DSkyTravellers','rocket',350,-100)
	addLuaSprite('DSkyTravellers',false)

	makeLuaSprite('BGroundd2','ouch 2',100, 350)
	addLuaSprite('BGroundd2',false)

	makeLuaSprite('DaPlayground','Playground_confusion',350, 350)
	addLuaSprite('DaPlayground',false)

	makeLuaSprite('DASignBanner','Small Banner Sign',250,175)
	addLuaSprite('DASignBanner',false)

	makeLuaSprite('guy','person_fly',1050, 150)
	addLuaSprite('guy',false)

	makeLuaSprite('BGroundd3','ouch 2',700, 500)
	addLuaSprite('BGroundd3',false)

	makeLuaSprite('peopleatthebenchgoOHNOES','people_bench_scared',975,475)
	addLuaSprite('peopleatthebenchgoOHNOES',false)

	makeLuaSprite('BGroundb','ouch',-500,750)
	addLuaSprite('BGroundb',false)

	makeLuaSprite('DaSEAT','bencch',270,605)
	addLuaSprite('DaSEAT',false)
close(true)

end

function onCreatePost()
    -- Shader Credits What Suppoed To Look Like, tbh this is better https://www.shadertoy.com/view/lsfGD2#
	-- Script and Frag file by TonyTimee
    luaDebugMode = true
    initLuaShader("glitch")
    
    makeLuaSprite("temporaryShader")
    makeGraphic("temporaryShader", screenWidth, screenHeight)
    
    setSpriteShader("temporaryShader", "glitch")
    setShaderFloat("temporaryShader", "uTime", 2)
    setShaderFloat("temporaryShader", "iMouseX", 500)
    setShaderInt("temporaryShader", "NUM_SAMPLES", 3)
    setShaderFloat("temporaryShader", "glitchMultiply", 1)
    
    addHaxeLibrary("ShaderFilter", "openfl.filters")
    runHaxeCode([[
        trace(ShaderFilter);
        game.camGame.setFilters([new ShaderFilter(game.getLuaObject("temporaryShader").shader)]);
        game.camHUD.setFilters([new ShaderFilter(game.getLuaObject("temporaryShader").shader)]);
    ]])
end

function onBeatHit()

end

function onStepHit()

end

function onUpdate()

end
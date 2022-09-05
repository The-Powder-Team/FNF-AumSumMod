local shadname = "glitch"

function onUpdate(elapsed)
	if curStep >= 0 then
	  songPos = getSongPosition()
	  local currentBeat = (songPos/1000)*(bpm/200)
	  doTweenY(dadTweenY, 'dad', -125-75*math.sin((currentBeat*0.25)*math.pi),0.001)
	end
  end

function onCreatePost()
	initLuaShader(shadname)

makeLuaSprite("grapshad")
makeGraphic("grapshad", screenWidth, screenHeight)
	setSpriteShader("grapshad", shadname)

	addHaxeLibrary("ShaderFilter", "openfl.filters")

	runHaxeCode([[
	trace(ShaderFilter);
  game.camGame.setFilters([new ShaderFilter(game.getLuaObject("grapshad").shader)]);
  game.camHUD.setFilters([new ShaderFilter(game.getLuaObject("grapshad").shader)]);
]])  
end
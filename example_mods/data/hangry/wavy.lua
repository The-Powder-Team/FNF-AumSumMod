local shadname = "wavy"

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

function onUpdate(elapsed) ---SET VALUE HERE
 setShaderFloat("grapshad", "frequency",8); 
  setShaderFloat("grapshad", "amplitude", 0.05);
end
function onUpdatePost(elapsed)
    setShaderFloat("grapshad", "iTime", os.clock())
end
curentVersion = 0;

-- The quotes are from the Toots Club server lol
local Quotes = {
    "It's AumSum Time!",
    "What if HScript Disappared?",
    "No AumSum?",
    "Thanks to Heli Pro Gamer for the fix!",
    "No OpenFL?",
    "MOM GET THE CAMERA",
    "This is YOUR Daily Does of Internet",
    "I've over dosed on ketamine and I'm going to die",
    "Oh, AumSum.",
    "hell nah he have merch (its in www.aumsum.com)"
}

function onCreate()
   bit = string.gsub(version,"%.","")

   curentVersion = tonumber(bit)
end


function onCreatePost()
    makeLuaText('songText', songName .. ' - ' .. getProperty('storyDifficultyText') .. ' | FNF Vs. AumSum v1.5 (PE 0.6.2+) | ' .. Quotes[getRandomInt(1, 11)], 0, 2, 701);
    setTextAlignment('songText', 'left');
    setTextSize('songText', 15);
    setTextBorder('songText', 1, '000000');
    setObjectCamera('songText', 'camHUD');
    addLuaText('songText');
end
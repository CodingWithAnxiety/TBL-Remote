--[[

|''||''| '||              '||''|.   '||                  '||      '||'       ||  '||                      
   ||     || ..     ....   ||   ||   ||   ....     ....   ||  ..   ||       ...   || ...  ... ..   ....   
   ||     ||' ||  .|...||  ||'''|.   ||  '' .||  .|   ''  || .'    ||        ||   ||'  ||  ||' '' '' .||  
   ||     ||  ||  ||       ||    ||  ||  .|' ||  ||       ||'|.    ||        ||   ||    |  ||     .|' ||  
  .||.   .||. ||.  '|...' .||...|'  .||. '|..'|'  '|...' .||. ||. .||.....| .||.  '|...'  .||.    '|..'|' 

	"Balance through death!"
	Monocode;
	The Black Libra
  
  In partnership with the;
  
      ...                     _                          ..                            .          ..            
  .zf"` `"tu                 u                     . uW8"                             @88>  x .d88"             
 x88      '8N.        u.    88Nu.   u.             `t888                              %8P    5888R              
 888k     d88&  ...ue888b  '88888.o888c      .u     8888   .        .u          .      .     '888R        .u    
 8888N.  @888F  888R Y888r  ^8888  8888   ud8888.   9888.z88N    ud8888.   .udR88N   .@88u    888R     ud8888.  
 `88888 9888%   888R I888>   8888  8888 :888'8888.  9888  888E :888'8888. <888'888k ''888E`   888R   :888'8888. 
   %888 "88F    888R I888>   8888  8888 d888 '88%"  9888  888E d888 '88%" 9888 'Y"    888E    888R   d888 '88%" 
    8"   "*h=~  888R I888>   8888  8888 8888.+"     9888  888E 8888.+"    9888        888E    888R   8888.+"    
  z8Weu        u8888cJ888   .8888b.888P 8888L       9888  888E 8888L      9888        888E    888R   8888L      
 ""88888i.   Z  "*888*P"     ^Y8888*""  '8888c. .+ .8888  888" '8888c. .+ ?8888u../   888&   .888B . '8888c. .+ 
"   "8888888*     'Y"          `Y"       "88888%    `%888*%"    "88888%    "8888P'    R888"  ^*888%   "88888%   
      ^"**""                               "YP'        "`         "YP'       "P'       ""      "%       "YP'    

	"With love."
	Monocode;
	The Lovebecile
--]]

local kb = libs.keyboard
local toggle_state = false
local dm_state = false
-- Documentation
-- http://www.unifiedremote.com/api

-- Keyboard Library
-- http://www.unifiedremote.com/api/libs/keyboard

-- IC code (LUA)
actions.ic_ooc_toggle_change = function(checked)
    toggle_state = checked
    if toggle_state then
        kb.text("/")
        kb.text("[OOC]")
        kb.press("return")
    else
        kb.text("/")
        kb.text("[IC]")
        kb.press("return")
    end
    layout.my_toggle.text = "[" .. (toggle_state and "OOC" or "IC") .. "]"
end

-- DM CODE (LUA)
actions.dm_toggle_change = function(checked)
    dm_state = checked
    if dm_state then
        kb.text("/")
        kb.text("[DM start]")
        kb.press("return")
    else
        kb.text("/")
        kb.text("[DM end]")
        kb.press("return")
    end
    layout.my_dm_toggle.text = "[" .. (dm_state and "DM end" or "DM call") .. "]"
end

-- Stealth active code (LUA)
actions.stealth_act = function()
    kb.text("/")
    kb.text("Stealth active")
    kb.press("return")
end

-- Stealth inactive code (LUA)
actions.stealth_inact = function()
    kb.text("/")
    kb.text("Stealth inactive")
    kb.press("return")
end

-- Combat active code (LUA)
actions.combat_act = function()
    kb.text("/")
    kb.text("Combat active")
    kb.press("return")
end

-- Combat inactive code (LUA)
actions.combat_inact = function()
    kb.text("/")
    kb.text("Combat inactive")
    kb.press("return")
end

-- Player turn code (LUA)
actions.player_turn = function()
kb.text("/")
kb.text("Player turn")
kb.press("return")
end

-- Enemy turn code (LUA)
actions.enemy_turn = function()
kb.text("/")
kb.text("Enemy turn")
kb.press("return")
end

-- DM call [Inline] code (LUA)
actions.dm_start_in = function()
    kb.text("/")
    kb.text("[DM]")
end

-- DM over [Inline] code (LUA)
actions.dm_end_in = function()
    kb.text("/")
    kb.text("[DM over]")
end

-- Emote freely code (LUA)
actions.emote_f = function()
    kb.text("/")
    kb.text("- Emote Freely! -")
    kb.press("space")
    print("you pressed a button!")
end

-- Radio code (LUA)
actions.radio = function()
    kb.text("/")
    kb.text("[R]")
    kb.press("space")
    print("you pressed a button!")
end

-- Radio code (LUA)
actions.d20 = function()
    kb.text("/")
    kb.text("- Roll a d20! -")
    kb.press("space")
    print("you pressed a button!")
end

-- Roll D20 function
actions.roll_d20 = function ()
local roll = math.random(1, 20)
kb.press("/");
kb.text("The result of the D20 roll is " .. roll);
kb.press("return");
end

-- Roll D100 function
actions.roll_d100 = function ()
local roll = math.random(1, 100)
kb.press("/");
kb.text("The result of the D100 roll is " .. roll);
kb.press("return");
end

-- Roll D500 function
actions.roll_d500 = function ()
local roll = math.random(1, 500)
kb.press("/");
kb.text("The result of the D500 roll is " .. roll);
kb.press("return");
end

-- Roll for Strength function
actions.roll_strength = function ()
kb.press("/");
kb.text("Roll for Strength! Rollsheet bonuses apply.");
kb.press("return");
end

-- Roll for Dexterity function
actions.roll_dexterity = function ()
kb.press("/");
kb.text("Roll for Dexterity! Rollsheet bonuses apply.");
kb.press("return");
end

-- Roll for Intelligence function
actions.roll_intelligence = function ()
kb.press("/");
kb.text("Roll for Intelligence! Rollsheet bonuses apply.");
kb.press("return");
end

-- Roll for Willpower function
actions.roll_willpower = function ()
kb.press("/");
kb.text("Roll for Willpower! Rollsheet bonuses apply.");
kb.press("return");
end

-- Roll for Constitution function
actions.roll_constitution = function ()
kb.press("/");
kb.text("Roll for Constitution! Rollsheet bonuses apply.");
kb.press("return");
end

-- Roll for Charisma function
actions.roll_charisma = function ()
kb.press("/");
kb.text("Roll for Charisma! Rollsheet bonuses apply.");
kb.press("return");
end

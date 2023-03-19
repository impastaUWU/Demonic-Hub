local Network = require(game:GetService("ReplicatedStorage").Library.Client.Network)
local Fire, Invoke = Network.Fire, Network.Invoke
 
local old
old = hookfunction(getupvalue(Fire, 1), function(...)
   return true
end)
 
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Demonic Hub (BETA)", "DarkTheme")
 
local Tab1 = Window:NewTab("Event Auto-Hatch")
local Tab2 = Window:NewTab("Auto-Hatch")
local Section1 = Tab1:NewSection("Auto-Egg")
local Section2 = Tab1:NewSection("Gold Auto-Egg")
local Section3 = Tab1:NewSection("Egg Animation")
local Section4 = Tab2:NewSection("Auto-Egg")
local Section5 = Tab2:NewSection("Gold Auto-Egg")
local Section6 = Tab2:NewSection("Egg Animation")
 
Section1:NewToggle("Clover Egg", "Auto Hatches The Clover Egg", function(state)
    if state then
        _G.AutoCloverEgg = true
 
        while _G.AutoCloverEgg == true do wait()
            Invoke("Buy Egg", "Clover Egg", false, true)
        end
    else
        _G.AutoCloverEgg = false
    end
end)
 
Section1:NewToggle("Leprechaun Egg", "Auto Hatches The Leprechaun Egg", function(state)
    if state then
        _G.AutoLeprechaunEgg = true
 
        while _G.AutoLeprechaunEgg == true do wait()
            Invoke("Buy Egg", "Leprechaun Egg", false, true)
        end
    else
        _G.AutoLeprechaunEgg = false
    end
end)
 
Section1:NewToggle("Horseshoe Egg", "Auto Hatches The Horseshoe Egg", function(state)
    if state then
        _G.AutoHorseshoeEgg = true
 
        while _G.AutoHorseshoeEgg == true do wait()
            Invoke("Buy Egg", "Horseshoe Egg", false, true)
        end
    else
        _G.AutoHorseshoeEgg = false
    end
end)
 
Section1:NewToggle("Lucky Kingdom Egg", "Auto Hatches The Lucky Kingdom Egg", function(state)
    if state then
        _G.AutoLuckyKingdomEgg = true
 
        while _G.AutoLuckyKingdomEgg == true do wait()
            Invoke("Buy Egg", "Lucky Kingdom Egg", false, true)
        end
    else
        _G.AutoLuckyKingdomEgg = false
    end
end)
 
Section2:NewToggle("Gold Clover Egg", "Auto Hatches The Gold Clover Egg", function(state)
    if state then
        _G.AutoGCloverEgg = true
 
        while _G.AutoGCloverEgg == true do wait()
            Invoke("Buy Egg", "Golden Clover Egg", false, true)
        end
    else
        _G.AutoGCloverEgg = false
    end
end)
 
Section2:NewToggle("Gold Leprechaun Egg", "Auto Hatches The Gold Leprechaun Egg", function(state)
    if state then
        _G.AutoGLeprechaunEgg = true
 
        while _G.AutoGLeprechaunEgg == true do wait()
            Invoke("Buy Egg", "Golden Leprechaun Egg", false, true)
        end
    else
        _G.AutoGLeprechaunEgg = false
    end
end)
 
Section2:NewToggle("Gold Horseshoe Egg", "Auto Hatches The Gold Horseshoe Egg", function(state)
    if state then
        _G.AutoGHorseshoeEgg = true
 
        while _G.AutoGHorseshoeEgg == true do wait()
            Invoke("Buy Egg", "Golden Horseshoe Egg", false, true)
        end
    else
        _G.AutoGHorseshoeEgg = false
    end
end)
 
Section2:NewToggle("Gold Lucky Kingdom Egg", "Auto Hatches The Gold Lucky Kingdom Egg", function(state)
    if state then
        _G.AutoGLuckyKingdomEgg = true
 
        while _G.AutoGLuckyKingdomEgg == true do wait()
            Invoke("Buy Egg", "Golden Lucky Kingdom Egg", false, true)
        end
    else
        _G.AutoGLuckyKingdomEgg = false
    end
end)
 
Section3:NewButton("Remove Egg Animation", "No need to explain ;)", function()
    for i,v in pairs(getgc(true)) do
        if (typeof(v) == 'table' and rawget(v, 'OpenEgg')) then
            v.OpenEgg = function()
                return
            end
        end
    end
end)

Section4:NewToggle("Barn Doodle Egg", "Auto Hatches The Barn Doodle Egg", function(state)
    if state then
        _G.AutoBarnEgg = true
 
        while _G.AutoBarnEgg == true do wait()
            Invoke("Buy Egg", "Barn Doodle Egg", false, true)
        end
    else
        _G.AutoBarnEgg = false
    end
end)

Section4:NewToggle("Gem Doodle Egg", "Auto Hatches The Gem Doodle Egg", function(state)
    if state then
        _G.AutoGemEgg = true
 
        while _G.AutoGemEgg == true do wait()
            Invoke("Buy Egg", "Gem Doodle Egg", false, true)
        end
    else
        _G.AutoGemEgg = false
    end
end)

Section4:NewToggle("Café Egg", "Auto Hatches The Café Egg", function(state)
    if state then
        _G.AutoKawaiiEgg = true
 
        while _G.AutoKawaiiEgg == true do wait()
            Invoke("Buy Egg", "Cafe Egg", false, true)
        end
    else
        _G.AutoKawaiiEgg = false
    end
end)

Section5:NewToggle("Gold Barn Doodle Egg", "Auto Hatches The Gold Barn Doodle Egg", function(state)
    if state then
        _G.AutoGBarnEgg = true
 
        while _G.AutoGBarnEgg == true do wait()
            Invoke("Buy Egg", "Golden Barn Doodle Egg", false, true)
        end
    else
        _G.AutoGBarnEgg = false
    end
end)

Section5:NewToggle("Gold Gem Doodle Egg", "Auto Hatches The Gold Gem Doodle Egg", function(state)
    if state then
        _G.AutoGGemEgg = true
 
        while _G.AutoGGemEgg == true do wait()
            Invoke("Buy Egg", "Golden Gem Doodle Egg", false, true)
        end
    else
        _G.AutoGGemEgg = false
    end
end)

Section5:NewToggle("Gold Café Egg", "Auto Hatches The Gold Café Egg", function(state)
    if state then
        _G.AutoGKawaiiEgg = true
 
        while _G.AutoGKawaiiEgg == true do wait()
            Invoke("Buy Egg", "Golden Café Egg", false, true)
        end
    else
        _G.AutoGKawaiiEgg = false
    end
end)

Section6:NewButton("Remove Egg Animation", "No need to explain ;)", function()
    for i,v in pairs(getgc(true)) do
        if (typeof(v) == 'table' and rawget(v, 'OpenEgg')) then
            v.OpenEgg = function()
                return
            end
        end
    end
end)

--If you read this entire thing, you're a NERD

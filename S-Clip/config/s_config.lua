-------------------
--Snoop Dogg#2843--
-------------------

-------------------
--DM IF NEED HELP--
-------------------


Config = {} 

-------------
--RPROGRESS--
-------------
Config.rprogress = { 
    ["text"] = "Using clip", -- Label text to circle bar
	["duration"] = 5000, -- 1000 = 1 sec (now 5 sec)
    ["mouse"] = true, -- Camera move
    ["player"] = false, -- Player movement (JUMP - WALK - RUN)
    ["vehicle"] = true, -- Vehicle movement :D
}

-------------
--ITEM NAME--
-------------
Config.item = { 
    ["item"] = "clip", -- [DATABASE ITEM NAME] item name (EN) clip (FI) lipas
}

-------------
--ITEM NAME--
-------------
Config.settings = { 
    ["ammo"] = 15, -- How many bullet you load in one load
}

----------
--NOTIFY--
----------
Config.notify = { 
    ["used"] = "Clip used succesfully", -- succesfully text
    ["no_gun"] = "You need gun", -- error text
    ["full_ammo"] = "Your gun is fully loaded", -- error text
    ["type"] = "inform", -- Mythic notify types (inform - error - success)
    ["type2"] = "error", -- (THIS ONLY ERROR TEXTS) - (inform - error - success)
}
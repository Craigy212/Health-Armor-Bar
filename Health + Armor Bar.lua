surface.CreateFont( "Whatever", {
	font = "Arial", -- Use the font-name which is shown to you by your operating system Font Viewer, not the file name
	extended = false,
	size = 25,
	weight = 500,
	blursize = 0,
	scanlines = 0,
	antialias = true,
	underline = false,
	italic = false,
	strikeout = false,
	symbol = false,
	rotary = false,
	shadow = false,
	additive = false,
	outline = false,
} )




hook.Add("HUDPaint" , "DrawMyHud" , function()
	
	local health = LocalPlayer():Health()

	draw.RoundedBox(0,8,ScrH() - 100,300+4 , 30+4,Color(40,40,40))
	draw.RoundedBox(0,10,ScrH() - 98,health * 3,30,Color(255,120,120))
	draw.SimpleText(health.."%","Whatever",10 + 150 , ScrH() - 82 ,Color(255,255,255),1,1)

	local armor = LocalPlayer():Armor()

	draw.RoundedBox(0,8,ScrH() - 50,300+4 , 30+4,Color(40,40,40))
	draw.RoundedBox(0,10,ScrH() - 48,armor * 3,30,Color(0,55,255))
	draw.SimpleText(armor.."%","Whatever",10 + 150 ,ScrH() - 34,Color(255,255,255),1,1)


end)

local hide = {
	["CHudHealth"] = true,
	["CHudBattery"] = true
}

hook.Add( "HUDShouldDraw", "HideHUD", function( name )
	if ( hide[ name ] ) then return false end

	-- Don't return anything here, it may break other addons that rely on this hook.
end )
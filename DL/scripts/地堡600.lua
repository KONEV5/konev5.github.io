local Alice_0 = menu.add_submenu("地堡拉货600次 —— 肝帝之眼")

Alice_0:add_action("地堡拉货600次 —— 按完之后进出地堡", function() 
	mpx = stats.get_int("mpply_last_mp_char")
	stats.set_int("MP"..mpx.."_LFETIME_BIKER_BUY_UNDERTA5", 600)
	stats.set_int("MP"..mpx.."_LFETIME_BIKER_BUY_COMPLET5", 600)

end)

Alice_0:add_action("强制触发外星人彩蛋 —— 按完这个去偷货", function()

	globals.set_int(2816239, 20)

end)
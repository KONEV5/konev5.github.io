local Alice_0 = menu.add_submenu("抢劫任务")

	local Alice_1 = Alice_0:add_submenu("公寓抢劫") 
	local Alice_2 = Alice_0:add_submenu("末日豪劫")
	local Alice_2_1 = Alice_2:add_submenu("传送点")
	local Alice_3 = Alice_0:add_submenu("名钻赌场豪劫")
	local Alice_3_1 = Alice_3:add_submenu("手动编辑器")
	local Alice_4 = Alice_0:add_submenu("佩里科岛")
	local Alice_4_1 = Alice_4:add_submenu("手动编辑器")
	local Alice_4_2 = Alice_4:add_submenu("传送点")
	local Alice_5 = Alice_0:add_submenu("事务所合约")

local function Text(Alice, string)
	local text = ""
	if string ~= nil then text = string end
	Alice:add_action(text, function() end)
end

	Text(Alice_1, "�----------------公 寓 抢 劫----------------")
	Text(Alice_2, "�----------------末 日 豪 劫----------------")
	Text(Alice_3, "�-------------名 钻 赌 场 豪 劫------------")
	Text(Alice_3_1, "�-------------名 钻 赌 场 豪 劫------------")
	Text(Alice_4, "�----------------佩 里 科 岛----------------")
	Text(Alice_4_1, "�----------------佩 里 科 岛----------------")
	Text(Alice_4_2, "�----------------佩 里 科 岛----------------")
	Text(Alice_5, "�---------------事 务 所 合 约--------------")



Alice_1:add_action("跳过公寓抢劫", function() 
	mpx = stats.get_int("mpply_last_mp_char")
	stats.set_int("MP"..mpx.."_HEIST_PLANNING_STAGE", -1)
end)

Text(Alice_1, "�--------------------------------------------")

Alice_1:add_int_range("玩家 1", 24, 0, 13043, function() 
	return globals.get_int(1937644 + 1)
end, function(value)
	globals.set_int(1937644 + 1, value)
end)



Alice_2:add_action("数据泄露 (普通384%—困难307%)", function() 
	mpx = stats.get_int("mpply_last_mp_char")
	stats.set_int("MP"..mpx.."_GANGOPS_FLOW_MISSION_PROG", 503)
	stats.set_int("MP"..mpx.."_GANGOPS_HEIST_STATUS", 229383)
	stats.set_int("MP"..mpx.."_GANGOPS_FLOW_NOTIFICATIONS", 1557)
end)

Alice_2:add_action("波格丹危机 (普通263%—困难210%)", function() 
	mpx = stats.get_int("mpply_last_mp_char")
	stats.set_int("MP"..mpx.."_GANGOPS_FLOW_MISSION_PROG", 240)
	stats.set_int("MP"..mpx.."_GANGOPS_HEIST_STATUS", 229378)
	stats.set_int("MP"..mpx.."_GANGOPS_FLOW_NOTIFICATIONS", 1557)
end)

Alice_2:add_action("末日将至 (普通208%—困难166%)", function() 
	mpx = stats.get_int("mpply_last_mp_char")
	stats.set_int("MP"..mpx.."_GANGOPS_FLOW_MISSION_PROG", 16368)
	stats.set_int("MP"..mpx.."_GANGOPS_HEIST_STATUS", 229380)
	stats.set_int("MP"..mpx.."_GANGOPS_FLOW_NOTIFICATIONS", 1557)
end)

Text(Alice_2, "�--------------------------------------------")

Alice_2:add_int_range("玩家 1", 2, 0, 384, function() 
	return globals.get_int(1963625 + 1)
end, function(value)
	globals.set_int(1963625 + 1, value)
end)

Alice_2:add_int_range("玩家 2", 2, 0, 384, function() 
	return globals.get_int(1963625 + 2)
end, function(value)
	globals.set_int(1963625 + 2, value)
end)

Alice_2:add_int_range("玩家 3", 2, 0, 384, function() 
	return globals.get_int(1963625 + 3)
end, function(value)
	globals.set_int(1963625 + 3, value)
end)

Alice_2:add_int_range("玩家 4", 2, 0, 384, function() 
	return globals.get_int(1963625 + 4)
end, function(value)
	globals.set_int(1963625 + 4, value)
end)

	Text(Alice_2_1, "�---------------波 格 丹 危 机--------------")

Alice_2_1:add_action("潜艇联系人", function()
	localplayer:set_position(vector3(515.404053, 4843.126465, -70.289604))
end)

Alice_2_1:add_action("潜艇控制台", function()
	localplayer:set_position(vector3(511.924042, 4847.317871, -63.890057))
end)

	Text(Alice_2_1, "�----------------末 日 将 至----------------")

Alice_2_1:add_action("服务器 1", function()
	localplayer:set_position(vector3(220.165421, 6188.962891, -155.720413))
end)

Alice_2_1:add_action("服务器 2", function()
	localplayer:set_position(vector3(275.303284, 6133.691406, -155.720413))
end)

Alice_2_1:add_action("服务器 3", function()
	localplayer:set_position(vector3(269.965790, 6191.722168, -155.720413))
end)

Alice_2_1:add_action("服务器 4", function()
	localplayer:set_position(vector3(215.845551, 6138.861816, -155.720367))
end)

Alice_2_1:add_action("天基炮", function()
	localplayer:set_position(vector3(244.156021, 6145.571289, -147.722595))
end)




local mpx = stats.get_int("MPPLY_LAST_MP_CHAR")

local Alice_3A = {}

	Alice_3A[0] = "现金"
	Alice_3A[1] = "黄金"
	Alice_3A[2] = "艺术作品"
	Alice_3A[3] = "钻石"

Alice_3_1:add_array_item("目标", Alice_3A, function() 
	return stats.get_int("MP"..mpx.."_H3OPT_TARGET") end, function(Alice)
	           stats.set_int("MP"..mpx.."_H3OPT_TARGET", Alice)
end)

local Alice_3B = {}

	Alice_3B[1] = "隐匿潜踪"
	Alice_3B[2] = "兵不厌诈"
	Alice_3B[3] = "气势汹汹"

Alice_3_1:add_array_item("采取方式", Alice_3B, function() 
	return stats.get_int("MP"..mpx.."_H3OPT_APPROACH") end, function(Alice)
	           stats.set_int("MP"..mpx.."_H3OPT_APPROACH", Alice)
end)

local Alice_3C = {}

	Alice_3C[0] = "重置"
	Alice_3C[-1] = "完成"

Alice_3_1:add_array_item("第一块任务板", Alice_3C, function() 
	return stats.get_int("MP"..mpx.."_H3OPT_BITSET1") end, function(Alice)
	           stats.set_int("MP"..mpx.."_H3OPT_BITSET1", Alice)
end)

Text(Alice_3_1, "�--------------------------------------------")

local Alice_3D = {}

	Alice_3D[1] = "卡尔·阿卜拉季—5%"
	Alice_3D[2] = "古斯塔沃·莫塔—9%"
	Alice_3D[3] = "查理·里德—7%"
	Alice_3D[4] = "切斯特·麦考伊—10%"
	Alice_3D[5] = "帕特里克·麦克瑞利—8%"
	Alice_3D[-1] = "处决枪手—0%"

Alice_3_1:add_array_item("枪手", Alice_3D, function() 
	return stats.get_int("MP"..mpx.."_H3OPT_CREWWEAP") end, function(Alice)
	           stats.set_int("MP"..mpx.."_H3OPT_CREWWEAP", Alice)
end)

local Alice_3E = {}

	Alice_3E[1] = "卡里姆·登茨—5%"
	Alice_3E[2] = "塔丽娜·马丁内斯—7%"
	Alice_3E[3] = "陶艾迪—9%"
	Alice_3E[4] = "扎克·尼尔森—6%"
	Alice_3E[5] = "切斯特·麦考伊—10%"
	Alice_3E[-1] = "处决车手—0%"

Alice_3_1:add_array_item("车手", Alice_3E, function() 
	return stats.get_int("MP"..mpx.."_H3OPT_CREWDRIVER") end, function(Alice)
	           stats.set_int("MP"..mpx.."_H3OPT_CREWDRIVER", Alice)
end)

local Alice_3F = {}

	Alice_3F[1] = "里奇·卢肯斯—3%"
	Alice_3F[2] = "克里斯汀·费尔兹—7%"
	Alice_3F[3] = "尤汗·布莱尔—5%"
	Alice_3F[4] = "阿维·施瓦茨曼—10%"
	Alice_3F[5] = "佩奇·哈里斯—9%"
	Alice_3F[-1] = "处决黑客—0%"

Alice_3_1:add_array_item("黑客", Alice_3F, function() 
	return stats.get_int("MP"..mpx.."_H3OPT_CREWHACKER") end, function(Alice)
	           stats.set_int("MP"..mpx.."_H3OPT_CREWHACKER", Alice)
end)

Alice_3_1:add_action("——————完成上面之后点我————— ", function() 
	mpx = stats.get_int("mpply_last_mp_char")
	stats.set_int("MP"..mpx.."_H3OPT_BITSET1", -1)
	stats.set_int("MP"..mpx.."_H3OPT_DISRUPTSHIP", 3)
	stats.set_int("MP"..mpx.."_H3OPT_KEYLEVELS", 2)
	stats.set_int("MP"..mpx.."_H3OPT_VEHS", 3)
	stats.set_int("MP"..mpx.."_H3OPT_WEAPS", 0)
	stats.set_int("MP"..mpx.."_H3OPT_BITSET0", -1)
end)

local Alice_3G = {}

	Alice_3G[0] = "第一种武器"
	Alice_3G[1] = "第二种武器"

Alice_3_1:add_array_item("无标识武器选择", Alice_3G, function() 
	return stats.get_int("MP"..mpx.."_H3OPT_WEAPS") end, function(Alice)
	           stats.set_int("MP"..mpx.."_H3OPT_WEAPS", Alice)
end)

local Alice_3H = {}

	Alice_3H[0] = "第一种载具"
	Alice_3H[1] = "第二种载具"
	Alice_3H[2] = "第三种载具"
	Alice_3H[3] = "第四种载具"

Alice_3_1:add_array_item("脱身载具选择", Alice_3H, function() 
	return stats.get_int("MP"..mpx.."_H3OPT_VEHS") end, function(Alice)
	           stats.set_int("MP"..mpx.."_H3OPT_VEHS", Alice)
end)

local Alice_3I = {}

	Alice_3I[0] = "重置"
	Alice_3I[-1] = "完成"

Alice_3_1:add_array_item("第二块任务板", Alice_3I, function() 
	return stats.get_int("MP"..mpx.."_H3OPT_BITSET0") end, function(Alice)
	           stats.set_int("MP"..mpx.."_H3OPT_BITSET0", Alice)
end)

Alice_3:add_action("隐匿潜踪 (普通189%—困难172%)", function() 
	mpx = stats.get_int("mpply_last_mp_char")
	stats.set_int("MP"..mpx.."_H3OPT_TARGET", 2)
	stats.set_int("MP"..mpx.."_H3OPT_APPROACH", 1)
	stats.set_int("MP"..mpx.."_H3OPT_BITSET1", -1)
	stats.set_int("MP"..mpx.."_H3OPT_CREWWEAP", 1)
	stats.set_int("MP"..mpx.."_H3OPT_CREWDRIVER", -1)
	stats.set_int("MP"..mpx.."_H3OPT_CREWHACKER", 5)
	stats.set_int("MP"..mpx.."_H3OPT_DISRUPTSHIP", 3)
	stats.set_int("MP"..mpx.."_H3OPT_KEYLEVELS", 2)
	stats.set_int("MP"..mpx.."_H3OPT_VEHS", 3)
	stats.set_int("MP"..mpx.."_H3OPT_WEAPS", 0)
	stats.set_int("MP"..mpx.."_H3OPT_BITSET0", -1)
end)

Alice_3:add_action("兵不厌诈 (普通178%—困难162%)", function() 
	mpx = stats.get_int("mpply_last_mp_char")
	stats.set_int("MP"..mpx.."_H3OPT_TARGET", 2)
	stats.set_int("MP"..mpx.."_H3OPT_APPROACH", 2)
	stats.set_int("MP"..mpx.."_H3OPT_BITSET1", -1)
	stats.set_int("MP"..mpx.."_H3OPT_CREWWEAP", -1)
	stats.set_int("MP"..mpx.."_H3OPT_CREWDRIVER", -1)
	stats.set_int("MP"..mpx.."_H3OPT_CREWHACKER", 5)
	stats.set_int("MP"..mpx.."_H3OPT_DISRUPTSHIP", 3)
	stats.set_int("MP"..mpx.."_H3OPT_KEYLEVELS", 2)
	stats.set_int("MP"..mpx.."_H3OPT_VEHS", 3)
	stats.set_int("MP"..mpx.."_H3OPT_WEAPS", 0)
	stats.set_int("MP"..mpx.."_H3OPT_BITSET0", -1)
end)

Alice_3:add_action("气势汹汹 (普通189%—困难172%)", function() 
	mpx = stats.get_int("mpply_last_mp_char")
	stats.set_int("MP"..mpx.."_H3OPT_TARGET", 2)
	stats.set_int("MP"..mpx.."_H3OPT_APPROACH", 3)
	stats.set_int("MP"..mpx.."_H3OPT_BITSET1", -1)
	stats.set_int("MP"..mpx.."_H3OPT_CREWWEAP", 1)
	stats.set_int("MP"..mpx.."_H3OPT_CREWDRIVER", -1)
	stats.set_int("MP"..mpx.."_H3OPT_CREWHACKER", 5)
	stats.set_int("MP"..mpx.."_H3OPT_DISRUPTSHIP", 3)
	stats.set_int("MP"..mpx.."_H3OPT_KEYLEVELS", 2)
	stats.set_int("MP"..mpx.."_H3OPT_VEHS", 3)
	stats.set_int("MP"..mpx.."_H3OPT_WEAPS", 0)
	stats.set_int("MP"..mpx.."_H3OPT_BITSET0", -1)
end)

Alice_3:add_action("0%分红工具人", function() 
	mpx = stats.get_int("mpply_last_mp_char")
	stats.set_int("MP"..mpx.."_H3OPT_CREWWEAP", -1)
	stats.set_int("MP"..mpx.."_H3OPT_CREWDRIVER", -1)
	stats.set_int("MP"..mpx.."_H3OPT_CREWHACKER", -1)
end)

Alice_3:add_action("重置第一第二块任务板", function() 
	mpx = stats.get_int("mpply_last_mp_char")
	stats.set_int("MP"..mpx.."_H3OPT_BITSET1", 0)
	stats.set_int("MP"..mpx.."_H3OPT_BITSET0", 0)
end)

Alice_3:add_action("作为队长第一次先用这个(先去侦察)", function() 
	mpx = stats.get_int("mpply_last_mp_char")
	stats.set_int("MP"..mpx.."_H3OPT_BITSET1", 0)
	stats.set_int("MP"..mpx.."_H3OPT_APPROACH", 2)
	stats.set_int("MP"..mpx.."_H3OPT_TARGET", 0)
	stats.set_int("MP"..mpx.."_H3OPT_ACCESSPOINTS", -1)
	stats.set_int("MP"..mpx.."_H3OPT_POI", -1)
	stats.set_int("MP"..mpx.."_H3OPT_BITSET1", -1)
	stats.set_int("MP"..mpx.."_H3OPT_BITSET0", 0)
	stats.set_int("MP"..mpx.."_H3OPT_VEHS", 3)
	stats.set_int("MP"..mpx.."_H3OPT_WEAPS", 0)
	stats.set_int("MP"..mpx.."_H3OPT_DISRUPTSHIP", 3)
	stats.set_int("MP"..mpx.."_H3OPT_KEYLEVELS", 2)
	stats.set_int("MP"..mpx.."_H3OPT_CREWWEAP", 1)
	stats.set_int("MP"..mpx.."_H3OPT_CREWDRIVER", 1)
	stats.set_int("MP"..mpx.."_H3OPT_CREWHACKER", 5)
	stats.set_int("MP"..mpx.."_H3OPT_BITSET0", -1)
end)

Alice_3:add_action("解决侦察拍照发送不了给莱斯特", function() 
	mpx = stats.get_int("mpply_last_mp_char")
	stats.set_int("MP"..mpx.."_H3OPT_BITSET1", 0)
	stats.set_int("MP"..mpx.."_H3OPT_BITSET0", 0)
	stats.set_int("MP"..mpx.."_H3OPT_POI", 0)
	stats.set_int("MP"..mpx.."_H3OPT_ACCESSPOINTS", 0)
end)

Text(Alice_3, "�--------------------------------------------")

Alice_3:add_int_range("玩家 1", 1, 0, 1000, function() 
	return globals.get_int(1969064 + 1)
end, function(value)
	globals.set_int(1969064 + 1, value)
end)

Alice_3:add_int_range("玩家 2", 1, 0, 1000, function() 
	return globals.get_int(1969064 + 2)
end, function(value)
	globals.set_int(1969064 + 2, value)
end)

Alice_3:add_int_range("玩家 3", 1, 0, 1000, function() 
	return globals.get_int(1969064 + 3)
end, function(value)
	globals.set_int(1969064 + 3, value)
end)

Alice_3:add_int_range("玩家 4", 1, 0, 1000, function() 
	return globals.get_int(1969064 + 4)
end, function(value)
	globals.set_int(1969064 + 4, value)
end)

Alice_3:add_int_range("现金 (进赌场前设置拿完回调)", 1636363636, 2115000, 1636363636, function() 
	return globals.get_int(262145 + 28469)
end, function(value)
	globals.set_int(262145 + 28469, value)
end)

Alice_3:add_int_range("黄金 (进赌场前设置拿完回调)", 800000000, 2585000, 800000000, function() 
	return globals.get_int(262145 + 28471)
end, function(value)
	globals.set_int(262145 + 28471, value)
end)

Alice_3:add_int_range("钻石 (进赌场前设置拿完回调)", 1636363636, 3290000, 1636363636, function() 
	return globals.get_int(262145 + 28472)
end, function(value)
	globals.set_int(262145 + 28472, value)
end)

Text(Alice_3, "�--------------------------------------------")

Alice_3:add_int_range("团队生命数", 111, 0, 9999, function() 
	return globals.get_int(1648546)
end, function(value)
	local Alice_DC_HP = script("fm_mission_controller")
if Alice_DC_HP then
		Alice_DC_HP:set_int(26077 + 1322 + 1, value)
	end
end)

local Alice_DC_MONEY = {}

Alice_DC_MONEY[0] = "0"
Alice_DC_MONEY[2115000] = "2115000"
Alice_DC_MONEY[2326500] = "2326500"
Alice_DC_MONEY[2350000] = "2350000"
Alice_DC_MONEY[2585000] = "2585000"
Alice_DC_MONEY[2843500] = "2843500"
Alice_DC_MONEY[3290000] = "3290000"
Alice_DC_MONEY[3619000] = "3619000"
Alice_DC_MONEY[10000000] = "10000000"

Alice_3:add_array_item("右下角总收入", Alice_DC_MONEY, function() 
	return globals.get_int(2722456)
end, function(value)
	local Alice_DC_MONEY = script("fm_mission_controller")
if Alice_DC_MONEY then
		Alice_DC_MONEY:set_int(19652 + 2685, value)
	end
end)

menu.register_hotkey(1, function()
	local Alice_DC_DAMEN = script("fm_mission_controller")
		if Alice_DC_DAMEN then
		Alice_DC_DAMEN:set_int(10068 + 7, 4)
	end
end)

menu.register_hotkey(1, function()
	local Alice_DC_DAMEN = script("fm_mission_controller")
		if Alice_DC_DAMEN then
		Alice_DC_DAMEN:set_int(10068 + 7, 6)
	end
end)




local Alice_4A = {}

Alice_4A[126823] = "普通模式"
Alice_4A[131055] = "困难模式"

Alice_4_1:add_array_item("任务难度", Alice_4A, function() 
	return stats.get_int("MP"..mpx.."_H4_PROGRESS") end, function(Alice)
	           stats.set_int("MP"..mpx.."_H4_PROGRESS", Alice)
end)

local Alice_4B = {}

Alice_4B[0] = "西西米托龙舌兰"
Alice_4B[1] = "红宝石项链"
Alice_4B[2] = "不记名债卷"
Alice_4B[3] = "粉钻"
Alice_4B[4] = "玛德拉索文件"
Alice_4B[5] = "猎豹雕像"

Alice_4_1:add_array_item("主目标", Alice_4B, function() 
	return stats.get_int("MP"..mpx.."_H4CNF_TARGET") end, function(Alice)
	           stats.set_int("MP"..mpx.."_H4CNF_TARGET", Alice)
end)

local Alice_4C = {}

Alice_4C[1] = "侵略者—突击霰弹枪+冲锋手枪"
Alice_4C[2] = "阴谋者—军用步枪+0.5口径手枪"
Alice_4C[3] = "神枪手—狙击步枪+穿甲手枪"
Alice_4C[4] = "破坏者—Mk2冲锋枪+Mk2劣质手枪"
Alice_4C[5] = "神射手—Mk2突击步枪+Mk2手枪"

Alice_4_1:add_array_item("武器装备", Alice_4C, function() 
	return stats.get_int("MP"..mpx.."_H4CNF_WEAPONS") end, function(Alice)
	           stats.set_int("MP"..mpx.."_H4CNF_WEAPONS", Alice)
end)

local Alice_4D = {}

Alice_4D[1] = "机场"
Alice_4D[2] = "北码头"
Alice_4D[3] = "主码头—东"
Alice_4D[4] = "主码头—西"
Alice_4D[5] = "混合粉"

Alice_4_1:add_array_item("运货卡车", Alice_4D, function() 
	return stats.get_int("MP"..mpx.."_H4CNF_TROJAN") end, function(Alice)
	           stats.set_int("MP"..mpx.."_H4CNF_TROJAN", Alice)
end)

Alice_4_1:add_action("——————完成上面之后点我————— ", function() 
	mpx = stats.get_int("mpply_last_mp_char")
	stats.set_int("MP"..mpx.."_H4CNF_BS_GEN", 131071)
	stats.set_int("MP"..mpx.."_H4CNF_BS_ENTR", 63)
	stats.set_int("MP"..mpx.."_H4CNF_BS_ABIL", 63)
	stats.set_int("MP"..mpx.."_H4CNF_APPROACH", -1)
	stats.set_int("MP"..mpx.."_H4_MISSIONS", 65535)
	stats.set_int("MP"..mpx.."_H4CNF_WEP_DISRP", 3)
	stats.set_int("MP"..mpx.."_H4CNF_ARM_DISRP", 3)
	stats.set_int("MP"..mpx.."_H4CNF_HEL_DISRP", 3)
	stats.set_int("MP"..mpx.."_H4CNF_GRAPPEL", -1)
	stats.set_int("MP"..mpx.."_H4CNF_UNIFORM", -1)
	stats.set_int("MP"..mpx.."_H4CNF_BOLTCUT", -1)
	stats.set_int("MP"..mpx.."_H4LOOT_CASH_I", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_CASH_C", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_CASH_I_SCOPED", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_CASH_C_SCOPED", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_WEED_I", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_WEED_C", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_WEED_I_SCOPED", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_WEED_C_SCOPED", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_GOLD_I", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_GOLD_C", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_GOLD_I_SCOPED", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_GOLD_C_SCOPED", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_COKE_I", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_COKE_C", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_COKE_I_SCOPED", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_COKE_C_SCOPED", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_PAINT", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_PAINT_SCOPED", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_COKE_V", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_PAINT_V", 0)
	stats.set_int("MP"..mpx.."_H4_PLAYTHROUGH_STATUS", 10)
end)

Alice_4:add_action("第一次 (玛德拉索文件+1画) 100%", function() 
	mpx = stats.get_int("mpply_last_mp_char")
	stats.set_int("MP"..mpx.."_H4CNF_BS_GEN", 131071)
	stats.set_int("MP"..mpx.."_H4CNF_BS_ENTR", 63)
	stats.set_int("MP"..mpx.."_H4CNF_BS_ABIL", 63)
	stats.set_int("MP"..mpx.."_H4CNF_APPROACH", -1)
	stats.set_int("MP"..mpx.."_H4_PROGRESS", 126823)
	stats.set_int("MP"..mpx.."_H4CNF_TARGET", 4)
	stats.set_int("MP"..mpx.."_H4_MISSIONS", 65535)
	stats.set_int("MP"..mpx.."_H4CNF_WEAPONS", 3)
	stats.set_int("MP"..mpx.."_H4CNF_WEP_DISRP", 3)
	stats.set_int("MP"..mpx.."_H4CNF_ARM_DISRP", 3)
	stats.set_int("MP"..mpx.."_H4CNF_HEL_DISRP", 3)
	stats.set_int("MP"..mpx.."_H4CNF_GRAPPEL", -1)
	stats.set_int("MP"..mpx.."_H4CNF_UNIFORM", -1)
	stats.set_int("MP"..mpx.."_H4CNF_BOLTCUT", -1)
	stats.set_int("MP"..mpx.."_H4CNF_TROJAN", 2)
	stats.set_int("MP"..mpx.."_H4LOOT_CASH_I", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_CASH_C", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_CASH_I_SCOPED", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_CASH_C_SCOPED", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_WEED_I", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_WEED_C", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_WEED_I_SCOPED", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_WEED_C_SCOPED", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_GOLD_I", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_GOLD_C", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_GOLD_I_SCOPED", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_GOLD_C_SCOPED", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_COKE_I", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_COKE_C", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_COKE_I_SCOPED", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_COKE_C_SCOPED", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_PAINT", -1)
	stats.set_int("MP"..mpx.."_H4LOOT_PAINT_SCOPED", -1)
	stats.set_int("MP"..mpx.."_H4LOOT_PAINT_V", 1451020)
end)

Alice_4:add_action("1人 (粉钻+1画) 100%", function() 
	mpx = stats.get_int("mpply_last_mp_char")
	stats.set_int("MP"..mpx.."_H4CNF_BS_GEN", 131071)
	stats.set_int("MP"..mpx.."_H4CNF_BS_ENTR", 63)
	stats.set_int("MP"..mpx.."_H4CNF_BS_ABIL", 63)
	stats.set_int("MP"..mpx.."_H4CNF_APPROACH", -1)
	stats.set_int("MP"..mpx.."_H4_PROGRESS", 131055)
	stats.set_int("MP"..mpx.."_H4CNF_TARGET", 3)
	stats.set_int("MP"..mpx.."_H4_MISSIONS", 65535)
	stats.set_int("MP"..mpx.."_H4CNF_WEAPONS", 3)
	stats.set_int("MP"..mpx.."_H4CNF_WEP_DISRP", 3)
	stats.set_int("MP"..mpx.."_H4CNF_ARM_DISRP", 3)
	stats.set_int("MP"..mpx.."_H4CNF_HEL_DISRP", 3)
	stats.set_int("MP"..mpx.."_H4CNF_GRAPPEL", -1)
	stats.set_int("MP"..mpx.."_H4CNF_UNIFORM", -1)
	stats.set_int("MP"..mpx.."_H4CNF_BOLTCUT", -1)
	stats.set_int("MP"..mpx.."_H4CNF_TROJAN", 2)
	stats.set_int("MP"..mpx.."_H4LOOT_CASH_I", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_CASH_C", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_CASH_I_SCOPED", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_CASH_C_SCOPED", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_WEED_I", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_WEED_C", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_WEED_I_SCOPED", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_WEED_C_SCOPED", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_GOLD_I", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_GOLD_C", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_GOLD_I_SCOPED", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_GOLD_C_SCOPED", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_COKE_I", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_COKE_C", -1)
	stats.set_int("MP"..mpx.."_H4LOOT_COKE_I_SCOPED", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_COKE_C_SCOPED", -1)
	stats.set_int("MP"..mpx.."_H4LOOT_PAINT", -1)
	stats.set_int("MP"..mpx.."_H4LOOT_PAINT_SCOPED", -1)
	stats.set_int("MP"..mpx.."_H4LOOT_COKE_V", 1420454)
	stats.set_int("MP"..mpx.."_H4LOOT_PAINT_V", 1410909)
	stats.set_int("MP"..mpx.."_H4_PLAYTHROUGH_STATUS", 10)
end)

Alice_4:add_action("2人 (粉钻+1画) 50%—50%", function() 
	mpx = stats.get_int("mpply_last_mp_char")
	stats.set_int("MP"..mpx.."_H4CNF_BS_GEN", 131071)
	stats.set_int("MP"..mpx.."_H4CNF_BS_ENTR", 63)
	stats.set_int("MP"..mpx.."_H4CNF_BS_ABIL", 63)
	stats.set_int("MP"..mpx.."_H4CNF_APPROACH", -1)
	stats.set_int("MP"..mpx.."_H4_PROGRESS", 131055)
	stats.set_int("MP"..mpx.."_H4CNF_TARGET", 3)
	stats.set_int("MP"..mpx.."_H4_MISSIONS", 65535)
	stats.set_int("MP"..mpx.."_H4CNF_WEAPONS", 3)
	stats.set_int("MP"..mpx.."_H4CNF_WEP_DISRP", 3)
	stats.set_int("MP"..mpx.."_H4CNF_ARM_DISRP", 3)
	stats.set_int("MP"..mpx.."_H4CNF_HEL_DISRP", 3)
	stats.set_int("MP"..mpx.."_H4CNF_GRAPPEL", -1)
	stats.set_int("MP"..mpx.."_H4CNF_UNIFORM", -1)
	stats.set_int("MP"..mpx.."_H4CNF_BOLTCUT", -1)
	stats.set_int("MP"..mpx.."_H4CNF_TROJAN", 2)
	stats.set_int("MP"..mpx.."_H4LOOT_CASH_I", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_CASH_C", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_CASH_I_SCOPED", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_CASH_C_SCOPED", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_WEED_I", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_WEED_C", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_WEED_I_SCOPED", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_WEED_C_SCOPED", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_GOLD_I", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_GOLD_C", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_GOLD_I_SCOPED", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_GOLD_C_SCOPED", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_COKE_I", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_COKE_C", -1)
	stats.set_int("MP"..mpx.."_H4LOOT_COKE_I_SCOPED", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_COKE_C_SCOPED", -1)
	stats.set_int("MP"..mpx.."_H4LOOT_PAINT", -1)
	stats.set_int("MP"..mpx.."_H4LOOT_PAINT_SCOPED", -1)
	stats.set_int("MP"..mpx.."_H4LOOT_COKE_V", 1420454)
	stats.set_int("MP"..mpx.."_H4LOOT_PAINT_V", 4251818)
	stats.set_int("MP"..mpx.."_H4_PLAYTHROUGH_STATUS", 10)
end)

Alice_4:add_action("3人 (粉钻+1画) 30%—35%—35%", function() 
	mpx = stats.get_int("mpply_last_mp_char")
	stats.set_int("MP"..mpx.."_H4CNF_BS_GEN", 131071)
	stats.set_int("MP"..mpx.."_H4CNF_BS_ENTR", 63)
	stats.set_int("MP"..mpx.."_H4CNF_BS_ABIL", 63)
	stats.set_int("MP"..mpx.."_H4CNF_APPROACH", -1)
	stats.set_int("MP"..mpx.."_H4_PROGRESS", 131055)
	stats.set_int("MP"..mpx.."_H4CNF_TARGET", 3)
	stats.set_int("MP"..mpx.."_H4_MISSIONS", 65535)
	stats.set_int("MP"..mpx.."_H4CNF_WEAPONS", 3)
	stats.set_int("MP"..mpx.."_H4CNF_WEP_DISRP", 3)
	stats.set_int("MP"..mpx.."_H4CNF_ARM_DISRP", 3)
	stats.set_int("MP"..mpx.."_H4CNF_HEL_DISRP", 3)
	stats.set_int("MP"..mpx.."_H4CNF_GRAPPEL", -1)
	stats.set_int("MP"..mpx.."_H4CNF_UNIFORM", -1)
	stats.set_int("MP"..mpx.."_H4CNF_BOLTCUT", -1)
	stats.set_int("MP"..mpx.."_H4CNF_TROJAN", 2)
	stats.set_int("MP"..mpx.."_H4LOOT_CASH_I", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_CASH_C", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_CASH_I_SCOPED", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_CASH_C_SCOPED", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_WEED_I", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_WEED_C", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_WEED_I_SCOPED", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_WEED_C_SCOPED", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_GOLD_I", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_GOLD_C", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_GOLD_I_SCOPED", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_GOLD_C_SCOPED", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_COKE_I", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_COKE_C", -1)
	stats.set_int("MP"..mpx.."_H4LOOT_COKE_I_SCOPED", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_COKE_C_SCOPED", -1)
	stats.set_int("MP"..mpx.."_H4LOOT_PAINT", -1)
	stats.set_int("MP"..mpx.."_H4LOOT_PAINT_SCOPED", -1)
	stats.set_int("MP"..mpx.."_H4LOOT_COKE_V", 1420454)
	stats.set_int("MP"..mpx.."_H4LOOT_PAINT_V", 6686883)
	stats.set_int("MP"..mpx.."_H4_PLAYTHROUGH_STATUS", 10)
end)

Alice_4:add_action("4人 (粉钻+1画) 25%—25%—25%—25%", function() 
	mpx = stats.get_int("mpply_last_mp_char")
	stats.set_int("MP"..mpx.."_H4CNF_BS_GEN", 131071)
	stats.set_int("MP"..mpx.."_H4CNF_BS_ENTR", 63)
	stats.set_int("MP"..mpx.."_H4CNF_BS_ABIL", 63)
	stats.set_int("MP"..mpx.."_H4CNF_APPROACH", -1)
	stats.set_int("MP"..mpx.."_H4_PROGRESS", 131055)
	stats.set_int("MP"..mpx.."_H4CNF_TARGET", 3)
	stats.set_int("MP"..mpx.."_H4_MISSIONS", 65535)
	stats.set_int("MP"..mpx.."_H4CNF_WEAPONS", 3)
	stats.set_int("MP"..mpx.."_H4CNF_WEP_DISRP", 3)
	stats.set_int("MP"..mpx.."_H4CNF_ARM_DISRP", 3)
	stats.set_int("MP"..mpx.."_H4CNF_HEL_DISRP", 3)
	stats.set_int("MP"..mpx.."_H4CNF_GRAPPEL", -1)
	stats.set_int("MP"..mpx.."_H4CNF_UNIFORM", -1)
	stats.set_int("MP"..mpx.."_H4CNF_BOLTCUT", -1)
	stats.set_int("MP"..mpx.."_H4CNF_TROJAN", 2)
	stats.set_int("MP"..mpx.."_H4LOOT_CASH_I", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_CASH_C", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_CASH_I_SCOPED", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_CASH_C_SCOPED", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_WEED_I", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_WEED_C", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_WEED_I_SCOPED", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_WEED_C_SCOPED", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_GOLD_I", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_GOLD_C", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_GOLD_I_SCOPED", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_GOLD_C_SCOPED", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_COKE_I", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_COKE_C", -1)
	stats.set_int("MP"..mpx.."_H4LOOT_COKE_I_SCOPED", 0)
	stats.set_int("MP"..mpx.."_H4LOOT_COKE_C_SCOPED", -1)
	stats.set_int("MP"..mpx.."_H4LOOT_PAINT", -1)
	stats.set_int("MP"..mpx.."_H4LOOT_PAINT_SCOPED", -1)
	stats.set_int("MP"..mpx.."_H4LOOT_COKE_V", 1420454)
	stats.set_int("MP"..mpx.."_H4LOOT_PAINT_V", 9933636)
	stats.set_int("MP"..mpx.."_H4_PLAYTHROUGH_STATUS", 10)
end)

Text(Alice_4, "�--------------------------------------------")

Alice_4:add_int_range("玩家 1", 1, 0, 1000, function() 
	return globals.get_int(1974404 + 1)
end, function(value)
	globals.set_int(1974404 + 1, value)
end)

Alice_4:add_int_range("玩家 2", 1, 0, 1000, function() 
	return globals.get_int(1974404 + 2)
end, function(value)
	globals.set_int(1974404 + 2, value)
end)

Alice_4:add_int_range("玩家 3", 1, 0, 1000, function() 
	return globals.get_int(1974404 + 3)
end, function(value)
	globals.set_int(1974404 + 3, value)
end)

Alice_4:add_int_range("玩家 4", 1, 0, 1000, function() 
	return globals.get_int(1974404 + 4)
end, function(value)
	globals.set_int(1974404 + 4, value)
end)

Alice_4:add_int_range("背包容量", 1800, 1800, 45000, function() 
	return globals.get_int(262145 + 29395)
end, function(value)
	globals.set_int(262145 + 29395, value)
end)

Text(Alice_4, "�--------------------------------------------")

Alice_4:add_int_range("团队生命数", 111, 0, 9999, function() 
	return globals.get_int(1648546)
end, function(value)
	local Alice_CAYO_HP = script("fm_mission_controller_2020")
if Alice_CAYO_HP then
		Alice_CAYO_HP:set_int(43059 + 865 + 1, value)
	end
end)

local Alice_CAYO_MONEY = {}

Alice_CAYO_MONEY[0] = "0"

Alice_CAYO_MONEY[1940909] = "普通—西西米托—1人"
Alice_CAYO_MONEY[1850909] = "困难—西西米托—1人"

Alice_CAYO_MONEY[4781818] = "普通—西西米托—2人"
Alice_CAYO_MONEY[4691818] = "困难—西西米托—2人"

Alice_CAYO_MONEY[7216883] = "普通—西西米托—3人"
Alice_CAYO_MONEY[7126883] = "困难—西西米托—3人"

Alice_CAYO_MONEY[10463636] = "普通—西西米托—4人"
Alice_CAYO_MONEY[10373636] = "困难—西西米托—4人"

Alice_CAYO_MONEY[1840909] = "普通—红宝石项链—1人"
Alice_CAYO_MONEY[1740909] = "困难—红宝石项链—1人"

Alice_CAYO_MONEY[4681818] = "普通—红宝石项链—2人"
Alice_CAYO_MONEY[4581818] = "困难—红宝石项链—2人"

Alice_CAYO_MONEY[7116883] = "普通—红宝石项链—3人"
Alice_CAYO_MONEY[7016883] = "困难—红宝石项链—3人"

Alice_CAYO_MONEY[10363636] = "普通—红宝石项链—4人"
Alice_CAYO_MONEY[10263636] = "困难—红宝石项链—4人"

Alice_CAYO_MONEY[1740908] = "普通—不记名债卷—1人"
Alice_CAYO_MONEY[1630909] = "困难—不记名债卷—1人"

Alice_CAYO_MONEY[4581817] = "普通—不记名债卷—2人"
Alice_CAYO_MONEY[4471818] = "困难—不记名债卷—2人"

Alice_CAYO_MONEY[7016882] = "普通—不记名债卷—3人"
Alice_CAYO_MONEY[6906883] = "困难—不记名债卷—3人"

Alice_CAYO_MONEY[10263635] = "普通—不记名债卷—4人"
Alice_CAYO_MONEY[10153636] = "困难—不记名债卷—4人"

Alice_CAYO_MONEY[1540909] = "普通—粉钻—1人"
Alice_CAYO_MONEY[1410909] = "困难—粉钻—1人"

Alice_CAYO_MONEY[4381818] = "普通—粉钻—2人"
Alice_CAYO_MONEY[4251818] = "困难—粉钻—2人"

Alice_CAYO_MONEY[6816883] = "普通—粉钻—3人"
Alice_CAYO_MONEY[6686883] = "困难—粉钻—3人"

Alice_CAYO_MONEY[10063636] = "普通—粉钻—4人"
Alice_CAYO_MONEY[9933636] = "困难—粉钻—4人"

Alice_CAYO_MONEY[940909] = "普通—猎豹雕像—1人"
Alice_CAYO_MONEY[750909] = "困难—猎豹雕像—1人"

Alice_CAYO_MONEY[3781818] = "普通—猎豹雕像—2人"
Alice_CAYO_MONEY[3591818] = "困难—猎豹雕像—2人"

Alice_CAYO_MONEY[6216883] = "普通—猎豹雕像—3人"
Alice_CAYO_MONEY[6026883] = "困难—猎豹雕像—3人"

Alice_CAYO_MONEY[9463636] = "普通—猎豹雕像—4人"
Alice_CAYO_MONEY[9273636] = "困难—猎豹雕像—4人"

Alice_4:add_array_item("右下角总收入", Alice_CAYO_MONEY, function() 
	return globals.get_int(1649748)
end, function(value)
	local Alice_4BB = script("fm_mission_controller_2020")
if Alice_4BB then
		Alice_4BB:set_int(40004 + 1392 + 53, value)
	end
end)

menu.register_hotkey(69, function()
	local Alice_CAYO_BAOBOLI = script("fm_mission_controller_2020")
		if Alice_CAYO_BAOBOLI then
		Alice_CAYO_BAOBOLI:set_float(28269 + 3, 100)
	end
end)

menu.register_hotkey(40, function()
	local Alice_CAYO_ZHIWEN = script("fm_mission_controller_2020")
		if Alice_CAYO_ZHIWEN then
		Alice_CAYO_ZHIWEN:set_int(23177, 5)
	end
end)

Alice_4_2:add_action("主目标", function()
	localplayer:set_position(vector3(5006.750000, -5756.111816, 14.186735))
end)

Alice_4_2:add_action("办公室", function()
	localplayer:set_position(vector3(5014.325684, -5751.882812, 27.545275))
end)

Alice_4_2:add_action("豪宅逃离点", function()
	localplayer:set_position(vector3(4990.144531, -5717.898438, 18.580227))
end)

Alice_4_2:add_action("海上逃离点", function()
	localplayer:set_position(vector3(4795.715820, -6280.685059, -79.160828))
end)

Alice_4_2:add_action("地下室库房", function()
	localplayer:set_position(vector3(4997.699707, -5745.928711, 13.540464))
end)

Alice_4_2:add_action("南库房", function()
	localplayer:set_position(vector3(5011.678223, -5787.826172, 16.531712))
end)

Alice_4_2:add_action("北库房", function()
	localplayer:set_position(vector3(5083.379395, -5757.930664, 14.529649))
end)

Alice_4_2:add_action("西库房", function()
	localplayer:set_position(vector3(5030.206055, -5737.177246, 16.565582))
end)

Alice_4_2:add_action("小岛 1", function()
	localplayer:set_position(vector3(5329.756348, -5271.646484, 31.886406))
end)

Alice_4_2:add_action("小岛 2", function()
	localplayer:set_position(vector3(5195.521973, -5135.988281, 2.049940))
end)

Alice_4_2:add_action("主码头 1", function()
	localplayer:set_position(vector3(4960.430664, -5107.355957, 1.682065))
end)

Alice_4_2:add_action("主码头 2", function()
	localplayer:set_position(vector3(5000.660645, -5165.616211, 1.464554))
end)

Alice_4_2:add_action("主码头 3", function()
	localplayer:set_position(vector3(4923.864746, -5245.434082, 1.223735))
end)

Alice_4_2:add_action("北码头 1", function()
	localplayer:set_position(vector3(5091.124512, -4685.020996, 1.107416))
end)

Alice_4_2:add_action("北码头 2", function()
	localplayer:set_position(vector3(5067.231934, -4591.416504, 1.556606))
end)

Alice_4_2:add_action("北码头 3", function()
	localplayer:set_position(vector3(5132.449707, -4612.920410, 1.172637))
end)

Alice_4_2:add_action("机场 1", function()
	localplayer:set_position(vector3(4503.605469, -4555.634277, 2.871894))
end)

Alice_4_2:add_action("机场 2", function()
	localplayer:set_position(vector3(4437.751465, -4445.923828, 3.028434))
end)

Alice_4_2:add_action("机场 3", function()
	localplayer:set_position(vector3(4447.237793, -4442.296387, 5.936790))
end)



Alice_5:add_action("别惹德瑞", function() 
	mpx = stats.get_int("mpply_last_mp_char")
	stats.set_int("MP"..mpx.."_FIXER_STORY_BS", -1)
end)

Text(Alice_5, "�--------------------------------------------")

Alice_5:add_int_range("别惹德瑞分红", 100000, 0, 2500000, function() 
	return globals.get_int(262145+31389)
end, function(value)
	globals.set_int(262145+31389, value)
end)
	Text(Alice_0, "网站：https://gantamade.com/")
On Error resume next 
Dim csgo_english, objFSO
Set objFSO = CreateObject("Scripting.FileSystemObject")
csgo_english = "csgo_english.txt"
If (objFSO.FileExists(csgo_english)) Then 
pink=Msgbox("[1/2] Do you like pink color?",vbYesNo+vbQuestion, "")
dead=Msgbox("[2/2] Should chat by dead teammates be Red?",vbYesNo+vbQuestion, "")

Const ForReading = 1
Const ForWriting = 2
Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objShell = CreateObject("Wscript.Shell")
Set objFile = objFSO.OpenTextFile("csgo_english.txt", ForReading, false, -1)

strText = objFile.ReadAll
objFile.Close
'SFUI_Freeze_Snapshot'csgo_english
strNewText = Replace(strText,chr(34)&"[%s1]	Save this moment", chr(34)&"<font size='0'>[%s1] Save this moment</font>")
'FreezePanel_ScreenShot'csgo_english
strNewText = Replace(strNewText,chr(34)&"[F5] Save this moment", chr(34)&"<font size='0'>[F5] Save this moment</font>")
'FreezePanel_DamageTaken'csgo_english
strNewText = Replace(strNewText,"<font color='#A0A0A0'>Damage taken:  </font><font color='#FFFFFF'><b>%s1</b></font> <font color='#A0A0A0'> in</font> <font color='#FFFFFF'><b>%s2 hit </b></font> <font color='#A0A0A0'>from %s3</font>", "<font color='#A0A0A0'>Damage taken:  </font><font size='18' color='#ff0080'>%s1</font> <font color='#A0A0A0'> in</font> <font size='18' color='#ff0080'>%s2 hit </font> <font color='#A0A0A0'>from %s3</font>")
'FreezePanel_DamageGiven'csgo_english
strNewText = Replace(strNewText,"<font color='#A0A0A0'>Damage given:  </font><font color='#FFFFFF'><b>%s1</b></font> <font color='#A0A0A0'> in</font> <font color='#FFFFFF'><b>%s2 hit </b></font> <font color='#A0A0A0'>to %s3</font>", "<font color='#A0A0A0'>Damage given:  </font><font size='18' color='#00ff00'>%s1</font> <font color='#A0A0A0'> in</font> <font size='18' color='#00ff00'>%s2 hit </font> <font color='#A0A0A0'>to %s3</font>")
'FreezePanel_DamageTaken_Multi'csgo_english
strNewText = Replace(strNewText,"<font color='#A0A0A0'>Damage taken:  </font><font color='#FFFFFF'><b>%s1</b></font> <font color='#A0A0A0'> in</font> <font color='#FFFFFF'><b>%s2 hits </b></font> <font color='#A0A0A0'>from %s3</font>", "<font color='#A0A0A0'>Damage taken:  </font><font size='18' color='#ff0080'>%s1</font> <font color='#A0A0A0'> in</font> <font size='18' color='#ff0080'>%s2 hits </font> <font color='#A0A0A0'>from %s3</font>")
'FreezePanel_DamageGiven_Multi'csgo_english
strNewText = Replace(strNewText,"<font color='#A0A0A0'>Damage given:  </font><font color='#FFFFFF'><b>%s1</b></font> <font color='#A0A0A0'> in</font> <font color='#FFFFFF'><b>%s2 hits </b></font> <font color='#A0A0A0'>to %s3</font>", "<font color='#A0A0A0'>Damage given:  </font><font size='18' color='#00ff00'>%s1</font> <font color='#A0A0A0'> in</font> <font size='18' color='#00ff00'>%s2 hits </font> <font color='#A0A0A0'>to %s3</font>")
'SFUIHUD_playerid_sameteam'csgo_english
strNewText = Replace(strNewText,"<font color='#6E7D5C'>Friend: %s1 Health: %s2</font>", "<font size='20' color='#00ff00'>%s1 | %s2</font>")
'SFUIHUD_playerid_diffteam'csgo_english
strNewText = Replace(strNewText,"<font color='#CC0000'>Enemy: %s1</font>", "<font size='30' color='#ff0000'>%s1</font>")
'SFUIHUD_playerid_specteam'csgo_english
strNewText = Replace(strNewText,"<font color='#6E7D5C'>%s1</font>", "<font size='20' color='#6E7D5C'>%s1</font>")
'SFUIHUD_playerid_overhead_ct'csgo_english
strNewText = Replace(strNewText,"<font color='#3f74c8'>%s1</font><font color='#5e779f'> %s2</font>", "<font size='20' color='#4f92ff'>%s1</font><font size='25' color='#00ff00'> %s2</font>")
'SFUIHUD_playerid_overhead_ct_lowhealth'csgo_english
strNewText = Replace(strNewText,"<font color='#3f74c8'>%s1</font><font color='#d82429'> %s2</font>", "<font size='20' color='#4f92ff'>%s1</font><font size='30' color='#ff0080'> %s2</font>")
'SFUIHUD_playerid_overhead_ct_money'csgo_english
strNewText = Replace(strNewText,"<font color='#3f74c8'>%s1</font><font color='#7ebc50'> %s2</font>", "<font size='20' color='#3f74c8'>%s1</font><font size='25' color='#00ff00'> %s2</font>")
'SFUIHUD_playerid_overhead_t'csgo_english
strNewText = Replace(strNewText,"<font color='#c3953f'>%s1</font><font color='#9a8661'> %s2</font>", "<font size='20' color='#ffc252'>%s1</font><font size='25' color='#00ff00'> %s2</font>")
'SFUIHUD_playerid_overhead_t_lowhealth'csgo_english
strNewText = Replace(strNewText,"<font color='#c3953f'>%s1</font><font color='#d82429'> %s2</font>", "<font size='20' color='#ffc252'>%s1</font><font size='30' color='#ff0080'> %s2</font>")
'SFUIHUD_playerid_overhead_t_money'csgo_english
strNewText = Replace(strNewText,"<font color='#c3953f'>%s1</font><font color='#7ebc50'> %s2</font>", "<font size='20' color='#c3953f'>%s1</font><font size='25' color='#00ff00'> %s2</font>")
'SFUIHUD_weaponid_pickup'csgo_english
strNewText = Replace(strNewText,chr(34)&"${use} swap for %s1", chr(34)&"<font size='30'>${use} swap for %s1</font>")
'SFUIHUD_weaponid_c4defuse'csgo_english
strNewText = Replace(strNewText,chr(34)&"${use} defuse the C4", chr(34)&"<font size='30'>${use} deffa the bomb</font>")
'SFUIHUD_targetid_FLASHED'csgo_english
strNewText = Replace(strNewText,"<font color='#6600ff'>(BLINDED)</font>", "<font size='0'>(BLINDED)</font>")
'Game_radio'csgo_english
strNewText = Replace(strNewText,"%s1 (RADIO): %s2", "[RADIO] %s1: %s2")	
'Game_radio_location'csgo_english
strNewText = Replace(strNewText,"%s1 @ %s2 (RADIO): %s3", "[RADIO] %s1: %s3 [%s2]")
'Cstrike_Chat_CT_Loc'csgo_english
strNewText = Replace(strNewText,"(Counter-Terrorist) %s1 @ %s3 :  %s2", "[CT] %s1: %s2 [%s3]")
'Cstrike_Chat_CT'csgo_english
strNewText = Replace(strNewText,"(Counter-Terrorist) %s1 :  %s2", "[CT] %s1: %s2")
'Cstrike_Chat_T_Loc'csgo_english
strNewText = Replace(strNewText,"(Terrorist) %s1 @ %s3 :  %s2", "[T] %s1: %s2 [%s3]")
'Cstrike_Chat_T'csgo_english
strNewText = Replace(strNewText,"(Terrorist) %s1 :  %s2", "[T] %s1: %s2")
'Cstrike_Chat_CT_Dead'csgo_english
strNewText = Replace(strNewText,"*DEAD*(Counter-Terrorist) %s1 :  %s2", "*DEAD* [CT] %s1: %s2")
'Cstrike_Chat_T_Dead'csgo_english
strNewText = Replace(strNewText,"*DEAD*(Terrorist) %s1 :  %s2", "*DEAD* [T] %s1: %s2")
'Cstrike_Chat_Spec'csgo_english
strNewText = Replace(strNewText,"(Spectator) %s1 :  %s2", "[S] %s1: %s2")
'Cstrike_Chat_All'csgo_english
strNewText = Replace(strNewText,"%s1 : %s2", "%s1: %s2")
'Cstrike_Chat_AllDead'csgo_english
strNewText = Replace(strNewText,"*DEAD* %s1 : %s2", "*DEAD* %s1: %s2")
'Cstrike_Chat_AllSpec'csgo_english
strNewText = Replace(strNewText,"*SPEC* %s1 : %s2", "*SPEC* %s1: %s2")
'Cstrike_Name_Change'csgo_english
strNewText = Replace(strNewText,"* %s1 changed name to %s2", "* %s1 changed name to %s2")
'SFUIHUD_Spectate_Navigation_Camera'csgo_english
strNewText = Replace(strNewText,"${+jump} Camera ", "<font size='0'>${+jump} Camera</font>")
'SFUIHUD_Spectate_Navigation_Arrows'csgo_english
strNewText = Replace(strNewText,"${+attack} Next Player", "<font size='0'>${+attack}Next Player</font>")
'SFUIHUD_Spectate_Navigation_ToggleOverview'csgo_english
strNewText = Replace(strNewText,"${+duck} Overview ", "<font size='0'>${+duck} Overview</font>")
'Player_Cash_Award_Killed_Enemy_Generic'csgo_english
strNewText = Replace(strNewText," %s1: Award for neutralizing an enemy.", " %s1 riksdaler f"&chr(246)&"r mord.")
'Player_Cash_Award_Killed_Enemy'csgo_english
strNewText = Replace(strNewText," %s1: Award for neutralizing an enemy with the %s2.", " %s1: Award for neutralizing an enemy with the %s2.")
'Player_Cash_Award_Kill_Teammate'csgo_english
strNewText = Replace(strNewText," %s1: Penalty for killing a friendly.", " %s1: Penalty for killing a friendly.")
'Player_Cash_Award_Bomb_Defused
'strNewText = Replace(strNewText," %s1: Award for defusing the C4.", " %s1: Award for defusing the C4.")
'Team_Cash_Award_Win_Defuse_Bomb
'strNewText = Replace(strNewText," %s1: Team award for winning by defusing the C4.", " %s1: Team award for winning by defusing the C4.")
'Cstrike_TitlesTXT_Game_teammate_attack'csgo_english
strNewText = Replace(strNewText,"%s1 attacked a teammate.", " %s1 attacked a teammate.")
'Cstrike_TitlesTXT_Game_teammate_kills'csgo_english
strNewText = Replace(strNewText,chr(34)&"Teammate kills: %s1 of 3", chr(34)&" Teammate kills: %s1 of 3")
'Player_Point_Award_Killed_Enemy'csgo_english
strNewText = Replace(strNewText," %s1 point for neutralizing an enemy with the %s2.", " %s1 point for neutralizing an enemy with the %s2.")
'Player_Point_Award_Killed_Enemy_Plural'csgo_english
strNewText = Replace(strNewText," %s1 points for neutralizing an enemy with the %s2.", " %s1 points for neutralizing an enemy with the %s2.")
'FreezePanel_Killer1_KillerWeapon'csgo_english
strNewText = Replace(strNewText,"killed you with their %s1", "killed you with their <b>%s1</b>")
'FreezePanel_Killer1_OthersWeapon'csgo_english
strNewText = Replace(strNewText,"killed you with <font color='#adadad'>%s2's</font> <b>%s1", "killed you with <font color='#adadad'>%s2's</font> <b>%s1</b>")
'FreezePanel_Killer1_YourWeapon'csgo_english
strNewText = Replace(strNewText,"killed you with your own %s1", "killed you with  your own <b>%s1</b>")
'FreezePanel_Killer1_Weapon'csgo_english
strNewText = Replace(strNewText,"killed you with the %s1", "killed you with the <b>%s1</b>")
'SFUI_Notice_DM_BonusWeaponText'csgo_english
strNewText = Replace(strNewText,"The bonus weapon for the next %s1 seconds is: %s2", "The bonus weapon for the next %s1 seconds is: %s2")
'Player_You_Are_Now_Dominating'csgo_english
strNewText = Replace(strNewText,"You are now dominating %s1.", "You are now dominating %s1.")
'Player_You_Are_Still_Dominating'csgo_english
strNewText = Replace(strNewText,"You are still dominating %s1.", "You are still dominating %s1.")
'SFUI_ARFlashAlert_ReachedLevel'csgo_english
strNewText = Replace(strNewText,"Reached Level  %s1 / %s2", "Reached Level <font size='30' color='#00FF00'><b>%s1</b></font> / %s2")
'SFUIHUD_Spectate_Navigation_Control_Bot_Keyboard'csgo_english
strNewText = Replace(strNewText,"${+use} Control Bot ", "${+use} <img src='icon_like.png' width='15' height='15' vspace='-7'/>Styr B"&chr(229)&"ten ")
'hostagerescuetime'csgo_english
strNewText = Replace(strNewText,"The CTs have earned more time by reaching a hostage.", " The CTs have earned more time by reaching a hostage.")
'SFUI_Notice_Knife_Level'csgo_english
strNewText = Replace(strNewText,"%s1 has reached gold knife level!", " %s1 has reached gold knife level!")
'Cstrike_TitlesTXT_Switch_To_BurstFire'csgo_english
strNewText = Replace(strNewText,chr(34)&"Switched to burst-fire mode", chr(34)&"<font color='#fff000'>BURST-FIRE</font>")
'SFUI_Scoreboard_Navigation_PlayerDetails'csgo_english
strNewText = Replace(strNewText,"<img src='arrow_key.png' width='15' height='15' vspace='-7'/> <img src='arrow_dn_key.png' width='15' height='15' vspace='-7'/>Select Player    <img src='enter_key.png' width='31' height='15' vspace='-5'/>Show Profile", "<font size='0'>SFUI_Scoreboard_Navigation_PlayerDetails</font>")
'SFUIHUD_Spectate_SpecMode_Director'csgo_english
strNewText = Replace(strNewText,"[Auto Director]", "<img src='icon_refresh.png' width='15' height='15' vspace='-7'/>")
'Cstrike_TitlesTXT_Game_afk_bomb_drop'csgo_english
strNewText = Replace(strNewText,chr(34)&"I dropped the bomb.", chr(34)&" I dropped the bomb. ")
'SFUI_Scoreboard_Navigation_Cursor_Hint'csgo_english
strNewText = Replace(strNewText,chr(34)&"<img src='info_icon.png' width='14' height='14' vspace='-13'/><b>%s1</b> Enables Cursor", chr(34)&"<font size='0'>SFUI_Scoreboard_Navigation_Cursor_Hint</font>")
'funfact_ace'csgo_english
strNewText = Replace(strNewText,chr(34)&"Ace!  %s1 killed the entire enemy team.", chr(34)&"<font color='#FF0000'><b>Ace!</b></font> %s1 killed the entire enemy team.")
'funfact_defuse_was_close_call_tenths'csgo_english
strNewText = Replace(strNewText,chr(34)&"%s1 defused the bomb with 0.%s2 seconds remaining.", chr(34)&"%s1 defused the bomb with <font color='#FF0000'><b>0.%s2</b></font> seconds remaining.")
'funfact_defuse_was_close_call_hundredths'csgo_english
strNewText = Replace(strNewText,chr(34)&"%s1 defused the bomb with 0.0%s2 seconds remaining.", chr(34)&"%s1 defused the bomb with <font color='#FF0000'><b>0.0%s2</b></font> seconds remaining.")
'funfact_defuse_was_close_call_thousandths'csgo_english
strNewText = Replace(strNewText,chr(34)&"%s1 defused the bomb with 0.00%s2 seconds remaining.", chr(34)&"%s1 defused the bomb with <font color='#FF0000'><b>0.00%s2</b></font> seconds remaining.")

'SFUI_ELO_RankName_1'csgo_english
strNewText = Replace(strNewText,chr(34)&"Silver I"&chr(34), chr(34)&"Harmless Bot"&chr(34))
'SFUI_ELO_RankName_2'csgo_english
strNewText = Replace(strNewText,chr(34)&"Silver II"&chr(34), chr(34)&"Easy Bot"&chr(34))
'SFUI_ELO_RankName_3'csgo_english
strNewText = Replace(strNewText,chr(34)&"Silver III"&chr(34), chr(34)&"Medium Bot"&chr(34))
'SFUI_ELO_RankName_4'csgo_english
strNewText = Replace(strNewText,chr(34)&"Silver IV"&chr(34), chr(34)&"Hard Bot"&chr(34))
'SFUI_ELO_RankName_5'csgo_english
strNewText = Replace(strNewText,chr(34)&"Silver Elite"&chr(34), chr(34)&"Very Hard Bot"&chr(34))
'SFUI_ELO_RankName_6'csgo_english
strNewText = Replace(strNewText,chr(34)&"Silver Elite Master"&chr(34), chr(34)&"Expert Bot"&chr(34))
'SFUI_ELO_RankName_7'csgo_english
strNewText = Replace(strNewText,chr(34)&"Gold Nova I"&chr(34), chr(34)&"PWRLVL: Grandma"&chr(34))
'SFUI_ELO_RankName_8'csgo_english
strNewText = Replace(strNewText,chr(34)&"Gold Nova II"&chr(34), chr(34)&"PWRLVL: Grandpa"&chr(34))
'SFUI_ELO_RankName_9'csgo_english
strNewText = Replace(strNewText,chr(34)&"Gold Nova III"&chr(34), chr(34)&"PWRLVL: Little Sister"&chr(34))
'SFUI_ELO_RankName_10'csgo_english
strNewText = Replace(strNewText,chr(34)&"Gold Nova Master"&chr(34), chr(34)&"PWRLVL: Little Brother"&chr(34))
'SFUI_ELO_RankName_11'csgo_english
strNewText = Replace(strNewText,chr(34)&"Master Guardian I"&chr(34), chr(34)&"AK"&chr(34))
'SFUI_ELO_RankName_12'csgo_english
strNewText = Replace(strNewText,chr(34)&"Master Guardian II"&chr(34), chr(34)&"Fluff-AK"&chr(34))
'SFUI_ELO_RankName_13'csgo_english
strNewText = Replace(strNewText,chr(34)&"Master Guardian Elite"&chr(34), chr(34)&"Properly Aligned Circle"&chr(34))
'SFUI_ELO_RankName_14'csgo_english
strNewText = Replace(strNewText,chr(34)&"Distinguished Master Guardian"&chr(34), chr(34)&"Tuff Sheriff"&chr(34))
'SFUI_ELO_RankName_15'csgo_english
strNewText = Replace(strNewText,chr(34)&"Legendary Eagle"&chr(34), chr(34)&"Legendarisk "&chr(214)&"rtman"&chr(34))
'SFUI_ELO_RankName_16'csgo_english
strNewText = Replace(strNewText,chr(34)&"Legendary Eagle Master"&chr(34), chr(34)&"Otrolig "&chr(214)&"rtm"&chr(228)&"stare"&chr(34))
'SFUI_ELO_RankName_17'csgo_english
strNewText = Replace(strNewText,chr(34)&"Supreme Master First Class"&chr(34), chr(34)&"Gyllene Kvicken"&chr(34))
'SFUI_ELO_RankName_18'csgo_english
strNewText = Replace(strNewText,chr(34)&"The Global Elite"&chr(34), chr(34)&"Ren"&chr(228)&"ssansman"&chr(34))


'SFUI_TitlesTXT_Fire_in_the_hole'csgo_english
strNewText = Replace(strNewText,chr(34)&"Fire in the hole!", chr(34)&"NADE")
'SFUI_TitlesTXT_Molotov_in_the_hole'csgo_english
strNewText = Replace(strNewText,chr(34)&"FireBomb on the way!", chr(34)&"KOSKENKORVA!")
'SFUI_TitlesTXT_Incendiary_in_the_hole'csgo_english
strNewText = Replace(strNewText,chr(34)&"FireBomb on the way!", chr(34)&"ELDBOMB!")
'SFUI_TitlesTXT_Flashbang_in_the_hole'csgo_english
strNewText = Replace(strNewText,chr(34)&"Flashbang Out!", chr(34)&"FLASH!")
'SFUI_TitlesTXT_Smoke_in_the_hole'csgo_english
strNewText = Replace(strNewText,chr(34)&"Smoke Out!", chr(34)&"SMOKE!")
'SFUI_TitlesTXT_Decoy_in_the_hole'csgo_english
strNewText = Replace(strNewText,chr(34)&"Decoy Out!", chr(34)&"LURING!")
'Cstrike_TitlesTXT_Defusing_Bomb_With_Defuse_Kit'csgo_english
strNewText = Replace(strNewText,chr(34)&"Defusing bomb WITH defuse kit.", chr(34)&"Deffar b"&chr(229)&"mb1 MED ett kitt")
'Cstrike_TitlesTXT_Defusing_Bomb_Without_Defuse_Kit'csgo_english
strNewText = Replace(strNewText,chr(34)&"Defusing bomb WITHOUT defuse kit.", chr(34)&"Deffar b"&chr(229)&"mb1 UTAN ett kit")	
'Cstrike_TitlesTXT_Defusing_Bomb'csgo_english
strNewText = Replace(strNewText,chr(34)&"I'm defusing the bomb.", chr(34)&"Jag lugnar ned situationen.")	
'Cstrike_TitlesTXT_Planting_Bomb'csgo_english
strNewText = Replace(strNewText,chr(34)&"I'm planting the bomb.", chr(34)&"Jag planterar bomben")	
'SFUI_WinPanel_elo_up_string'csgo_english
strNewText = Replace(strNewText,chr(34)&"You are now in a higher Skill Group!", chr(34)&"RANKED DA FUK UP!")		
'SFUI_WinPanel_elo_current_string'csgo_english
strNewText = Replace(strNewText,chr(34)&"Current Skill Group", chr(34)&"Current Rank")
'SFUI_WinPanel_elo_down_string'csgo_english
strNewText = Replace(strNewText,chr(34)&"Your Skill Group has changed", chr(34)&"shit player, shit rank")
'SFUIHUD_InfoPanel_PriorityMsgTitle'csgo_english
strNewText = Replace(strNewText,chr(34)&"Alert", chr(34)&"Ett H"&chr(228)&"rligt Meddelande")

'SFUI_Notice_Alert_Match_Start'csgo_english	
strNewText = Replace(strNewText,chr(34)&"MATCH START", chr(34)&"NU K"&chr(214)&" VI BOYS")
'SFUI_Notice_Alert_Match_Starting_In'csgo_english
strNewText = Replace(strNewText,chr(34)&"<font color='#C6E075'>MATCH STARTING IN %s1...</font>", chr(34)&"<font color='#C6E075'>PANG PANG OM %s1...</font>")
'SFUI_Notice_Alert_Match_Starting'csgo_english
strNewText = Replace(strNewText,chr(34)&"<font color='#C6E075'>MATCH STARTING</font>", chr(34)&"<font color='#C6E075'>PANG PANG!</font>")
'SFUI_Notice_Alert_Warmup_Period'csgo_english
strNewText = Replace(strNewText,chr(34)&"WARMUP %s1", chr(34)&"PRE-PANG %s1")
'SFUI_Notice_Alert_Warmup_Period_Ending'csgo_english
strNewText = Replace(strNewText,chr(34)&"WARMUP ENDING %s1", chr(34)&"SNART K"&chr(214)&" VI %s1")
'SFUI_Notice_Alert_Waiting_For_Players'csgo_english
strNewText = Replace(strNewText,chr(34)&"WAITING FOR PLAYERS %s1", chr(34)&"WAITING FOR SLACKERS %s1")
'SFUI_Notice_All_Players_Connected'csgo_english
strNewText = Replace(strNewText,chr(34)&"All players have connected. Match will start in %s1 seconds.", chr(34)&"Alla har joinat, startar om %s1 sekunder.")
'SFUI_Notice_Alert_Final_Round'csgo_english
strNewText = Replace(strNewText,chr(34)&"FINAL ROUND", chr(34)&"DEN ABSOLUT SISTA RUNDAN")
'SFUI_Notice_Alert_Last_Round_Half'csgo_english
strNewText = Replace(strNewText,chr(34)&"LAST ROUND OF FIRST HALF", chr(34)&"SISTA INNAN HALVLEK")
'SFUI_Notice_Defusing_Bomb_With_Defuse_Kit'csgo_english
strNewText = Replace(strNewText,chr(34)&"Defusing the bomb.", chr(34)&"Deffar b"&chr(229)&"mb1 MED ett kitt")
'SFUI_Notice_Defusing_Bomb_Without_Defuse_Kit'csgo_english
strNewText = Replace(strNewText,chr(34)&"Defusing WITHOUT a defuse kit.", chr(34)&"Deffar b"&chr(229)&"mb1 UTAN ett kit")
'SFUIHUD_InfoPanel_DefuseText'csgo_english
strNewText = Replace(strNewText,chr(34)&"You are defusing the bomb.", chr(34)&"Deffar b"&chr(229)&"mb1 MED ett kitt")
'SFUIHUD_InfoPanel_DefuseText_NoKit'csgo_english
strNewText = Replace(strNewText,chr(34)&"You are defusing the bomb\nwithout a kit.", chr(34)&"Deffar b"&chr(229)&"mb1 UTAN ett kit")
'Cstrike_TitlesTXT_Bomb_Planted'csgo_english
strNewText = Replace(strNewText,chr(34)&"The bomb has been planted.\n%s1 seconds to detonation.", chr(34)&"B"&chr(229)&"mb1 har planterats.\nOm %s1 sekunder sm"&chr(228)&"ller det")
'Cstrike_TitlesTXT_Bomb_Defused'csgo_english
strNewText = Replace(strNewText,chr(34)&"The bomb has been defused.", chr(34)&"The b"&chr(229)&"mb har deffats.")
'SFUIHUD_InfoPanel_DefuseTitle'csgo_english
strNewText = Replace(strNewText,chr(34)&"Defuse Time:", chr(34)&"vinsten "&chr(228)&"r n"&chr(228)&"ra")

'SFUI_PlayMenu_FriendsMatchWingmanButton'csgo_english
strNewText = Replace(strNewText,chr(34)&"PLAY WITH FRIENDS (WINGMAN)", chr(34)&"WINGMAN LOBBY")
'SFUI_PlayMenu_FriendsMatchCompetitiveButton'csgo_english
strNewText = Replace(strNewText,chr(34)&"PLAY WITH FRIENDS", chr(34)&"MATCHMAKING LOBBY")
'SFUI_PlayMenu_BrowseServersButton'csgo_english	
strNewText = Replace(strNewText,chr(34)&"BROWSE COMMUNITY SERVERS", chr(34)&"COMMUNITY SERVERS")
'SFUI_PlayMenu_CustomMatchButton'csgo_english
strNewText = Replace(strNewText,chr(34)&"FIND A GAME", chr(34)&"SOLO QUEUE")

'SFUI_Lobby_MatchReadyTitle'csgo_english
strNewText = Replace(strNewText,chr(34)&"YOUR MATCH IS READY!", chr(34)&"Kom igen nu Britt-Marie")
'SFUI_Lobby_MatchReadyButton'csgo_english
strNewText = Replace(strNewText,chr(34)&"ACCEPT", chr(34)&"K"&chr(214)&"R F"&chr(214)&"R FAN")

'SFUI_Lobby_StatusRichPresence_classic_casual_lobby'csgo_english
strNewText = Replace(strNewText,chr(34)&"In CS:GO Casual Lobby", chr(34)&"Casual Lobby")
'SFUI_Lobby_StatusRichPresence_classic_casual_game'csgo_english
strNewText = Replace(strNewText,chr(34)&"Playing CS:GO Casual", chr(34)&"Playing Casual")
'SFUI_Lobby_StatusRichPresence_classic_casual_community'csgo_english
strNewText = Replace(strNewText,chr(34)&"CS:GO Community Casual", chr(34)&"Community Casual")
'SFUI_Lobby_StatusRichPresence_classic_casual_watch'csgo_english
strNewText = Replace(strNewText,chr(34)&"Watching CS:GO Casual", chr(34)&"Watching Casual")
'SFUI_Lobby_StatusRichPresence_classic_casual_review'csgo_english
strNewText = Replace(strNewText,chr(34)&"Replaying CS:GO Casual", chr(34)&"Replaying Casual")
'SFUI_Lobby_StatusRichPresence_classic_competitive_lobby'csgo_english
strNewText = Replace(strNewText,chr(34)&"In CS:GO Competitive Lobby", chr(34)&"5v5 Lobby")
'SFUI_Lobby_StatusRichPresence_classic_competitive_community'csgo_english
strNewText = Replace(strNewText,chr(34)&"CS:GO Community Competitive", chr(34)&"FaceIT/ESEA")
'SFUI_Lobby_StatusRichPresence_competitive_game'csgo_english
strNewText = Replace(strNewText,chr(34)&"CS:GO Competitive", chr(34)&"Matchmaking")
'SFUI_Lobby_StatusRichPresence_classic_competitive_watch'csgo_english
strNewText = Replace(strNewText,chr(34)&"Watching CS:GO", chr(34)&"Watching 5v5")
'SFUI_Lobby_StatusRichPresence_classic_competitive_review'csgo_english
strNewText = Replace(strNewText,chr(34)&"Replaying CS:GO", chr(34)&"Replaying 5v5")
'SFUI_Lobby_StatusRichPresence_scrimcomp2v2_lobby'csgo_english
strNewText = Replace(strNewText,chr(34)&"In CS:GO Wingman Lobby", chr(34)&"2v2 Lobby")
'SFUI_Lobby_StatusRichPresence_scrimcomp2v2_game'csgo_english
strNewText = Replace(strNewText,chr(34)&"Playing CS:GO Wingman", chr(34)&"Wingman")
'SFUI_Lobby_StatusRichPresence_scrimcomp2v2_community'csgo_english
strNewText = Replace(strNewText,chr(34)&"CS:GO Community Wingman", chr(34)&"Community Wingman")
'SFUI_Lobby_StatusRichPresence_scrimcomp2v2_watch'csgo_english
strNewText = Replace(strNewText,chr(34)&"Watching MM Wingman", chr(34)&"Watching 2v2")
'SFUI_Lobby_StatusRichPresence_scrimcomp2v2_review'csgo_english
strNewText = Replace(strNewText,chr(34)&"Replaying MM Wingman", chr(34)&"Replaying 2v2")
'SFUI_Lobby_StatusRichPresence_gungame_gungameprogressive_lobby'csgo_english
strNewText = Replace(strNewText,chr(34)&"In CS:GO Arms Race Lobby", chr(34)&"Arms Race Lobby")
'SFUI_Lobby_StatusRichPresence_gungame_gungameprogressive_game'csgo_english
strNewText = Replace(strNewText,chr(34)&"Playing CS:GO Arms Race", chr(34)&"Playing Arms Race")
'SFUI_Lobby_StatusRichPresence_gungame_gungameprogressive_community'csgo_english
strNewText = Replace(strNewText,chr(34)&"CS:GO Community Arms Race", chr(34)&"Community Arms Race")
'SFUI_Lobby_StatusRichPresence_gungame_gungameprogressive_watch'csgo_english
strNewText = Replace(strNewText,chr(34)&"Watching CS:GO Arms Race", chr(34)&"Watching Arms Race")
'SFUI_Lobby_StatusRichPresence_gungame_gungameprogressive_review'csgo_english
strNewText = Replace(strNewText,chr(34)&"Replaying CS:GO Arms Race", chr(34)&"Replaying Arms Race")
'SFUI_Lobby_StatusRichPresence_gungame_gungametrbomb_lobby'csgo_english
strNewText = Replace(strNewText,chr(34)&"In CS:GO Demolition Lobby", chr(34)&"Demolition Lobby")
'SFUI_Lobby_StatusRichPresence_gungame_gungametrbomb_game'csgo_english
strNewText = Replace(strNewText,chr(34)&"Playing CS:GO Demolition", chr(34)&"Playing Demolition")
'SFUI_Lobby_StatusRichPresence_gungame_gungametrbomb_community'csgo_english
strNewText = Replace(strNewText,chr(34)&"CS:GO Community Demolition", chr(34)&"Community Demolition")
'SFUI_Lobby_StatusRichPresence_gungame_gungametrbomb_watch'csgo_english
strNewText = Replace(strNewText,chr(34)&"Watching CS:GO Demolition", chr(34)&"Watching Demolition")
'SFUI_Lobby_StatusRichPresence_gungame_gungametrbomb_review'csgo_english
strNewText = Replace(strNewText,chr(34)&"Replaying CS:GO Demolition", chr(34)&"Replaying Demolition")
'SFUI_Lobby_StatusRichPresence_gungame_deathmatch_lobby'csgo_english
strNewText = Replace(strNewText,chr(34)&"In CS:GO Deathmatch Lobby", chr(34)&"Deathmatch Lobby")
'SFUI_Lobby_StatusRichPresence_gungame_deathmatch_game'csgo_english
strNewText = Replace(strNewText,chr(34)&"Playing CS:GO Deathmatch", chr(34)&"Playing Deathmatch")
'SFUI_Lobby_StatusRichPresence_gungame_deathmatch_community'csgo_english
strNewText = Replace(strNewText,chr(34)&"CS:GO Community Deathmatch", chr(34)&"Community Deathmatch")
'SFUI_Lobby_StatusRichPresence_gungame_deathmatch_watch'csgo_english
strNewText = Replace(strNewText,chr(34)&"Watching CS:GO Deathmatch", chr(34)&"Watching Deathmatch")
'SFUI_Lobby_StatusRichPresence_gungame_deathmatch_review'csgo_english
strNewText = Replace(strNewText,chr(34)&"Replaying CS:GO Deathmatch", chr(34)&"Replaying Deathmatch")
'SFUI_Lobby_StatusRichPresence_training_training_game'csgo_english
strNewText = Replace(strNewText,chr(34)&"Playing CS:GO Weapons Course", chr(34)&"Playing Weapons Course")

If pink = 6 Then
strNewText = Replace(strNewText,"", "")
strNewText = Replace(strNewText,"#ff0080", "#ff0000")
End If
If dead = 6 Then
strNewText = Replace(strNewText,"*DEAD*[", "*D"&chr(214)&"D*[")
End If
Set objFile = objFSO.OpenTextFile("csgo_english.txt", ForWriting, true, -1)
objFile.WriteLine strNewText
objFile.Close
End If

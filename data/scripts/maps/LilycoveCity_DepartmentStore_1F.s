LilycoveCity_DepartmentStore_1F_MapScripts:: @ 8159D54
	.byte 0

LilycoveCity_DepartmentStore_1F_EventScript_159D55:: @ 8159D55
	msgbox LilycoveCity_DepartmentStore_1F_Text_18BFB5, 2
	end

LilycoveCity_DepartmentStore_1F_EventScript_159D5E:: @ 8159D5E
	lock
	faceplayer
	checkdailyflags
	compare 0x4045, 0
	jumpif 5, LilycoveCity_DepartmentStore_1F_EventScript_159EB1
	checkflag 2250
	jumpeq LilycoveCity_DepartmentStore_1F_EventScript_159E4C
	msgbox LilycoveCity_DepartmentStore_1F_Text_1C4B5E, 5
	compare RESULT, 0
	jumpeq LilycoveCity_DepartmentStore_1F_EventScript_159E56
	setflag 2250
	message LilycoveCity_DepartmentStore_1F_Text_1C4CC6
	waittext
	special 257
	copyvar 0x8008, RESULT
	special 337
	msgbox LilycoveCity_DepartmentStore_1F_Text_1C4CF6, 4
	move 2, LilycoveCity_DepartmentStore_1F_Movement_1A0843
	waitmove 0
	playsfx 4
	special 217
	special 258
	pause 220
	special 218
	pause 10
	move 2, LilycoveCity_DepartmentStore_1F_Movement_1A0839
	waitmove 0
	compare 0x8004, 0
	jumpeq LilycoveCity_DepartmentStore_1F_EventScript_159E60
	inccounter 46
	compare 0x8006, 0
	callif 1, LilycoveCity_DepartmentStore_1F_EventScript_159E3A
	compare 0x8006, 1
	callif 1, LilycoveCity_DepartmentStore_1F_EventScript_159E43
	bufferitem 0, 0x8005
	compare 0x8004, 1
	callif 1, LilycoveCity_DepartmentStore_1F_EventScript_159E78
	compare 0x8004, 2
	callif 1, LilycoveCity_DepartmentStore_1F_EventScript_159E81
	compare 0x8004, 3
	callif 1, LilycoveCity_DepartmentStore_1F_EventScript_159E8A
	compare 0x8004, 4
	callif 1, LilycoveCity_DepartmentStore_1F_EventScript_159E93
	giveitem 0x8005
	compare RESULT, 0
	jumpeq LilycoveCity_DepartmentStore_1F_EventScript_159E9C
	jump LilycoveCity_DepartmentStore_1F_EventScript_159E6E
	end

LilycoveCity_DepartmentStore_1F_EventScript_159E3A:: @ 8159E3A
	msgbox LilycoveCity_DepartmentStore_1F_Text_1C4D7D, 4
	return

LilycoveCity_DepartmentStore_1F_EventScript_159E43:: @ 8159E43
	msgbox LilycoveCity_DepartmentStore_1F_Text_1C4DD1, 4
	return

LilycoveCity_DepartmentStore_1F_EventScript_159E4C:: @ 8159E4C
	msgbox LilycoveCity_DepartmentStore_1F_Text_1C4C6A, 4
	release
	end

LilycoveCity_DepartmentStore_1F_EventScript_159E56:: @ 8159E56
	msgbox LilycoveCity_DepartmentStore_1F_Text_1C4C85, 4
	release
	end

LilycoveCity_DepartmentStore_1F_EventScript_159E60:: @ 8159E60
	msgbox LilycoveCity_DepartmentStore_1F_Text_1C4E27, 4
	jump LilycoveCity_DepartmentStore_1F_EventScript_159E6E
	end

LilycoveCity_DepartmentStore_1F_EventScript_159E6E:: @ 8159E6E
	msgbox LilycoveCity_DepartmentStore_1F_Text_1C501C, 4
	release
	end

LilycoveCity_DepartmentStore_1F_EventScript_159E78:: @ 8159E78
	msgbox LilycoveCity_DepartmentStore_1F_Text_1C4E4F, 4
	return

LilycoveCity_DepartmentStore_1F_EventScript_159E81:: @ 8159E81
	msgbox LilycoveCity_DepartmentStore_1F_Text_1C4E92, 4
	return

LilycoveCity_DepartmentStore_1F_EventScript_159E8A:: @ 8159E8A
	msgbox LilycoveCity_DepartmentStore_1F_Text_1C4ED8, 4
	return

LilycoveCity_DepartmentStore_1F_EventScript_159E93:: @ 8159E93
	msgbox LilycoveCity_DepartmentStore_1F_Text_1C4F1C, 4
	return

LilycoveCity_DepartmentStore_1F_EventScript_159E9C:: @ 8159E9C
	copyvar 0x4045, 0x8005
	jump LilycoveCity_DepartmentStore_1F_EventScript_159EA7
	end

LilycoveCity_DepartmentStore_1F_EventScript_159EA7:: @ 8159EA7
	msgbox LilycoveCity_DepartmentStore_1F_Text_1C4F77, 4
	release
	end

LilycoveCity_DepartmentStore_1F_EventScript_159EB1:: @ 8159EB1
	msgbox LilycoveCity_DepartmentStore_1F_Text_1C4FCC, 4
	giveitem 0x4045
	compare RESULT, 0
	jumpeq LilycoveCity_DepartmentStore_1F_EventScript_159EA7
	setvar 0x4045, 0
	release
	end

LilycoveCity_DepartmentStore_1F_EventScript_159ED7:: @ 8159ED7
	msgbox LilycoveCity_DepartmentStore_1F_Text_18BFDB, 2
	end

LilycoveCity_DepartmentStore_1F_EventScript_159EE0:: @ 8159EE0
	msgbox LilycoveCity_DepartmentStore_1F_Text_18C044, 2
	end

LilycoveCity_DepartmentStore_1F_EventScript_159EE9:: @ 8159EE9
	msgbox LilycoveCity_DepartmentStore_1F_Text_18C07A, 2
	end

LilycoveCity_DepartmentStore_1F_EventScript_159EF2:: @ 8159EF2
	lock
	faceplayer
	checksound
	pokecry SPECIES_AZUMARILL, 0
	msgbox LilycoveCity_DepartmentStore_1F_Text_18C0C3, 4
	waitpokecry
	release
	end

LilycoveCity_DepartmentStore_1F_EventScript_159F05:: @ 8159F05
	msgbox LilycoveCity_DepartmentStore_1F_Text_18C0D9, 3
	end

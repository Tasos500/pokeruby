Route123_MapScripts:: @ 8151C53
	map_script 3, Route123_MapScript1_151C59
	.byte 0

Route123_MapScript1_151C59:: @ 8151C59
	special 325
	end

Route123_EventScript_151C5D:: @ 8151C5D
	lock
	faceplayer
	checkflag 232
	jumpeq Route123_EventScript_151CAC
	msgbox Route123_Text_171D83, 4
	special 299
	compare RESULT, 0
	jumpeq Route123_EventScript_151CAA
	msgbox Route123_Text_171DC2, 4
	giveitem ITEM_TM19
	compare RESULT, 0
	jumpeq Route123_EventScript_1A029B
	setflag 232
	msgbox Route123_Text_171E34, 4
	release
	end

Route123_EventScript_151CAA:: @ 8151CAA
	release
	end

Route123_EventScript_151CAC:: @ 8151CAC
	msgbox Route123_Text_171E34, 4
	release
	end

Route123_EventScript_151CB6:: @ 8151CB6
	msgbox Route123_Text_171E76, 3
	end

Route123_EventScript_151CBF:: @ 8151CBF
	msgbox Route123_Text_171E8E, 3
	end

Route123_EventScript_151CC8:: @ 8151CC8
	msgbox Route123_Text_171EBC, 3
	end

Route123_EventScript_151CD1:: @ 8151CD1
	trainerbattle 0, 92, 0, Route123_Text_1BFF6A, Route123_Text_1BFFA2
	msgbox Route123_Text_1BFFC1, 6
	end

Route123_EventScript_151CE8:: @ 8151CE8
	trainerbattle 0, 75, 0, Route123_Text_1BFFF0, Route123_Text_1C0057
	msgbox Route123_Text_1C0075, 6
	end

Route123_EventScript_151CFF:: @ 8151CFF
	trainerbattle 0, 39, 0, Route123_Text_1C009E, Route123_Text_1C00D4
	msgbox Route123_Text_1C0100, 6
	end

Route123_EventScript_151D16:: @ 8151D16
	trainerbattle 0, 238, 0, Route123_Text_1C013F, Route123_Text_1C01A3
	specialval RESULT, 57
	compare RESULT, 1
	jumpeq Route123_EventScript_151D3D
	msgbox Route123_Text_1C01B1, 6
	end

Route123_EventScript_151D3D:: @ 8151D3D
	trainerbattle 5, 238, 0, Route123_Text_1C01F9, Route123_Text_1C0240
	msgbox Route123_Text_1C024E, 6
	end

Route123_EventScript_151D54:: @ 8151D54
	trainerbattle 0, 249, 0, Route123_Text_1C028C, Route123_Text_1C0303
	specialval RESULT, 57
	compare RESULT, 1
	jumpeq Route123_EventScript_151D7B
	msgbox Route123_Text_1C030F, 6
	end

Route123_EventScript_151D7B:: @ 8151D7B
	trainerbattle 5, 249, 0, Route123_Text_1C0351, Route123_Text_1C0380
	msgbox Route123_Text_1C038C, 6
	end

Route123_EventScript_151D92:: @ 8151D92
	trainerbattle 4, 484, 0, Route123_Text_1C03CB, Route123_Text_1C040E, Route123_Text_1C0462
	msgbox Route123_Text_1C0423, 6
	end

Route123_EventScript_151DAD:: @ 8151DAD
	trainerbattle 4, 484, 0, Route123_Text_1C049C, Route123_Text_1C04CD, Route123_Text_1C0519
	msgbox Route123_Text_1C04E3, 6
	end

Route123_EventScript_151DC8:: @ 8151DC8
	trainerbattle 0, 106, 0, Route123_Text_1C0554, Route123_Text_1C059F
	msgbox Route123_Text_1C05BC, 6
	end

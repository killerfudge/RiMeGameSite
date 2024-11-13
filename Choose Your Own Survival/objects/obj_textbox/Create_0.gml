room_text = []
pages = 0
index = 1
// Intro to game
if (global.selection == "New Game")
{
	pages = 2
	room_text[0] = "You've started a new game. Click this panel to start story."
	room_text[1] = "Congrats, your bus has crashed! It is now hanging off a cliff and will soon fall. Choose the direction you escape."
}
// Escaped the bus out the front window
else if (global.selection == "Front Window")
{
	pages = 1
	room_text[0] = "You went out the front window"
	global.selection = "Enter map square"
}
// Escaped the bus out the back door
else if (global.selection == "Back Door")
{
	pages = 1
	room_text[0] = "You went out the back door"
}
// Just scavenged materials
else if (global.selection == "Scavenged item")
{
	pages = 1
	room_text[0] = "You found a " + global.item
}
else if (global.selection == "Move map square")
{
	pages = 1
	room_text[0] = "Which direction do you want to move?"
}
// Moving between squares on the map
else if (global.selection == "Enter map square")
{
	// Determine the square
	if (global.player_position == "A4")
	{
		pages = 1
		room_text[0] = "Map square A4\nHas medicinal herbs"
	}
	else if (global.player_position == "A5")
	{
		pages = 1
		room_text[0] = "Map square A5\nHas medicinal herbs"
	}
	else if (global.player_position == "A8")
	{
		pages = 1
		room_text[0] = "Map square A8"
	}
	else if (global.player_position == "A9")
	{
		pages = 1
		room_text[0] = "Hello new area. \nPick a new direction to move."
	}
	else if (global.player_position == "A10")
	{
		pages = 1
		room_text[0] = "This is where you landed after escaping out the back of the bus."
	}
	else if (global.player_position == "A11")
	{
		// This square is split in two, one side closer to where you exit out the front,
		// the other where the bus crash ends up
		if (global.direction_selection == "Front side")
		{
			pages = 1
			room_text[0] = "This is where you landed after escaping out the back of the bus."
		}
		else
		{
			pages = 1
			room_text[0] = "You enter a narrow ravine between two mountain peaks."
			room_text[1] = "As you go further in, you start seeing signs that the ravine walls have more recently been damaged.\nThere are scrap marks along the rocks, and you slowly start seeing torn pieces of metal."
			room_text[2] = "Eventually you arrive at what caused the damage to the ravine: the wreckage of the bus you arrived here in."
		}
	}
	else if (global.player_position == "A12")
	{
		pages = 1
		room_text[0] = "Map square A12"
	}
	else if (global.player_position == "A13")
	{
		pages = 1
		room_text[0] = "Map square A13"
	}
	else if (global.player_position == "A14")
	{
		pages = 1
		room_text[0] = "Map square A14"
	}
	else if (global.player_position == "A15")
	{
		pages = 1
		room_text[0] = "Map square A15"
	}
	else if (global.player_position == "A16")
	{
		pages = 1
		room_text[0] = "Map square A16"
	}
	else if (global.player_position == "A17")
	{
		pages = 1
		room_text[0] = "Map square A17"
	}
	else if (global.player_position == "A18")
	{
		pages = 1
		room_text[0] = "Map square A18"
	}
	else if (global.player_position == "A19")
	{
		pages = 1
		room_text[0] = "Map square A19"
	}
	else if (global.player_position == "A20")
	{
		pages = 1
		room_text[0] = "Map square A20"
	}
	else if (global.player_position == "B4")
	{
		pages = 1
		room_text[0] = "Map square B4\nHas medicinal herbs"
	}
	else if (global.player_position == "B5")
	{
		pages = 1
		room_text[0] = "Map square B5\nHas medicinal herbs"
	}
	else if (global.player_position == "B6")
	{
		pages = 1
		room_text[0] = "Map square B6"
	}
	else if (global.player_position == "B8")
	{
		pages = 1
		room_text[0] = "Map square B8"
	}
	else if (global.player_position == "B9")
	{
		pages = 1
		room_text[0] = "Map square B9"
	}
	else if (global.player_position == "B10")
	{
		pages = 1
		room_text[0] = "Position B10\n" + global.direction_selection
	}
	else if (global.player_position == "B11")
	{
		pages = 1
		room_text[0] = "Position B11\n" + global.direction_selection
	}
	else if (global.player_position == "B12")
	{
		pages = 1
		room_text[0] = "Position B12"
	}
	else if (global.player_position == "B13")
	{
		pages = 1
		room_text[0] = "Position B13"
	}
	else if (global.player_position == "B14")
	{
		pages = 1
		room_text[0] = "Position B14\n" + global.direction_selection
	}
	else if (global.player_position == "B15")
	{
		pages = 1
		room_text[0] = "Position B15"
	}
	else if (global.player_position == "B16")
	{
		pages = 1
		room_text[0] = "Position B16"
	}
	else if (global.player_position == "B17")
	{
		pages = 1
		room_text[0] = "Position B17"
	}
	else if (global.player_position == "B18")
	{
		pages = 1
		room_text[0] = "Position B18"
	}
	else if (global.player_position == "B19")
	{
		pages = 1
		room_text[0] = "Position B19"
	}
	else if (global.player_position == "B20")
	{
		pages = 1
		room_text[0] = "Position B20"
	}
	else if (global.player_position == "C6")
	{
		pages = 1
		room_text[0] = "Map square C6"
	}
	else if (global.player_position == "C8")
	{
		pages = 1
		room_text[0] = "Map square C8"
	}
	else if (global.player_position == "C9")
	{
		pages = 1
		room_text[0] = "Map square C9"
	}
	else if (global.player_position == "C10")
	{
		pages = 1
		room_text[0] = "Position C10\n" + global.direction_selection
	}
	else if (global.player_position == "C11")
	{
		pages = 1
		room_text[0] = "Position C11"
	}
	else if (global.player_position == "C12")
	{
		pages = 1
		room_text[0] = "Position C12"
	}
	else if (global.player_position == "C13")
	{
		pages = 1
		room_text[0] = "Position C13"
	}
	else if (global.player_position == "C14")
	{
		pages = 1
		room_text[0] = "Position C14"
	}
	else if (global.player_position == "C15")
	{
		pages = 1
		room_text[0] = "Position C15"
	}
	else if (global.player_position == "C16")
	{
		pages = 1
		room_text[0] = "Position C16"
	}
	else if (global.player_position == "C17")
	{
		pages = 1
		room_text[0] = "Position C17"
	}
	else if (global.player_position == "C18")
	{
		pages = 1
		room_text[0] = "Position C18"
	}
	else if (global.player_position == "C19")
	{
		pages = 1
		room_text[0] = "Position C19"
	}
	else if (global.player_position == "C20")
	{
		pages = 1
		room_text[0] = "Position C20"
	}
	else if (global.player_position == "D2")
	{
		pages = 1
		room_text[0] = "Map square D2"
	}
	else if (global.player_position == "D3")
	{
		pages = 1
		room_text[0] = "Map square D3"
	}
	else if (global.player_position == "D4")
	{
		pages = 1
		room_text[0] = "Position D4"
	}
	else if (global.player_position == "D5")
	{
		pages = 1
		room_text[0] = "Pride Rock"
	}
	else if (global.player_position == "D6")
	{
		pages = 1
		room_text[0] = "Position D6"
	}
	else if (global.player_position == "D8")
	{
		pages = 1
		room_text[0] = "Position D8"
	}
	else if (global.player_position == "D9")
	{
		pages = 1
		room_text[0] = "Position D9"
	}
	else if (global.player_position == "D10")
	{
		pages = 1
		room_text[0] = "Position D10"
	}
	else if (global.player_position == "D11")
	{
		pages = 1
		room_text[0] = "Position D11"
	}
	else if (global.player_position == "D12")
	{
		pages = 1
		room_text[0] = "Position D12"
	}
	else if (global.player_position == "D13")
	{
		pages = 1
		room_text[0] = "Position D13"
	}
	else if (global.player_position == "D14")
	{
		pages = 1
		room_text[0] = "Position D14"
	}
	else if (global.player_position == "D15")
	{
		pages = 1
		room_text[0] = "Position D15"
	}
	else if (global.player_position == "D16")
	{
		pages = 1
		room_text[0] = "Position D16"
	}
	else if (global.player_position == "D17")
	{
		pages = 1
		room_text[0] = "Position D17"
	}
	else if (global.player_position == "D18")
	{
		pages = 1
		room_text[0] = "Position D18"
	}
	else if (global.player_position == "D19")
	{
		pages = 1
		room_text[0] = "Position D19"
	}
	else if (global.player_position == "D20")
	{
		pages = 1
		room_text[0] = "Position D20"
	}
	else if (global.player_position == "E2")
	{
		pages = 1
		room_text[0] = "Position E2"
	}
	else if (global.player_position == "E3")
	{
		pages = 1
		room_text[0] = "Map square E3"
	}
	else if (global.player_position == "E4")
	{
		pages = 1
		room_text[0] = "Map square E4"
	}
	else if (global.player_position == "E5")
	{
		pages = 1
		room_text[0] = "Position E5"
	}
	else if (global.player_position == "E6")
	{
		pages = 1
		room_text[0] = "Position E6"
	}
	else if (global.player_position == "E7")
	{
		pages = 1
		room_text[0] = "Position E7"
	}
	else if (global.player_position == "E8")
	{
		pages = 1
		room_text[0] = "Position E8"
	}
	else if (global.player_position == "E10")
	{
		pages = 1
		room_text[0] = "Position E10"
	}
	else if (global.player_position == "E11")
	{
		pages = 1
		room_text[0] = "Position E11"
	}
	else if (global.player_position == "E13")
	{
		pages = 1
		room_text[0] = "Position E13"
	}
	else if (global.player_position == "E14")
	{
		pages = 1
		room_text[0] = "Position E14"
	}
	else if (global.player_position == "E15")
	{
		pages = 1
		room_text[0] = "Position E15"
	}
	else if (global.player_position == "E16")
	{
		pages = 1
		room_text[0] = "Position E16"
	}
	else if (global.player_position == "E17")
	{
		pages = 1
		room_text[0] = "Position E17"
	}
	else if (global.player_position == "E18")
	{
		pages = 1
		room_text[0] = "Position E18"
	}
	else if (global.player_position == "E19")
	{
		pages = 1
		room_text[0] = "Position E19"
	}
	else if (global.player_position == "E20")
	{
		pages = 1
		room_text[0] = "Position E20"
	}
	else if (global.player_position == "F1")
	{
		pages = 1
		room_text[0] = "Position F1"
	}
	else if (global.player_position == "F2")
	{
		pages = 1
		room_text[0] = "Position F2"
	}
	else if (global.player_position == "F7")
	{
		pages = 1
		room_text[0] = "Position F7"
	}
	else if (global.player_position == "F8")
	{
		pages = 1
		room_text[0] = "Position F8"
	}
	else if (global.player_position == "F9")
	{
		pages = 1
		room_text[0] = "Position F9"
	}
	else if (global.player_position == "F12")
	{
		pages = 1
		room_text[0] = "Position F12"
	}
	else if (global.player_position == "F13")
	{
		pages = 1
		room_text[0] = "Position F13"
	}
	else if (global.player_position == "F14")
	{
		pages = 1
		room_text[0] = "Position F14"
	}
	else if (global.player_position == "F15")
	{
		pages = 1
		room_text[0] = "Position F15"
	}
	else if (global.player_position == "F16")
	{
		pages = 1
		room_text[0] = "Position F16"
	}
	else if (global.player_position == "F17")
	{
		pages = 1
		room_text[0] = "Position F17"
	}
	else if (global.player_position == "F18")
	{
		pages = 1
		room_text[0] = "Position F18"
	}
	else if (global.player_position == "F19")
	{
		pages = 1
		room_text[0] = "Position F19"
	}
	else if (global.player_position == "F20")
	{
		pages = 1
		room_text[0] = "Position F20"
	}
	else if (global.player_position == "G1")
	{
		pages = 1
		room_text[0] = "Position G1"
	}
	else if (global.player_position == "G2")
	{
		pages = 1
		room_text[0] = "Position G2"
	}
	else if (global.player_position == "G4")
	{
		pages = 1
		room_text[0] = "Position G4"
	}
	else if (global.player_position == "G5")
	{
		pages = 1
		room_text[0] = "Position G5"
	}
	else if (global.player_position == "G6")
	{
		pages = 1
		room_text[0] = "Position G6"
	}
	else if (global.player_position == "G7")
	{
		pages = 1
		room_text[0] = "Position G7"
	}
	else if (global.player_position == "G8")
	{
		pages = 1
		room_text[0] = "Position G8"
	}
	else if (global.player_position == "G9")
	{
		pages = 1
		room_text[0] = "Position G9"
	}
	else if (global.player_position == "G10")
	{
		pages = 1
		room_text[0] = "Position G10"
	}
	else if (global.player_position == "G11")
	{
		pages = 1
		room_text[0] = "Position G11"
	}
	else if (global.player_position == "G12")
	{
		pages = 1
		room_text[0] = "Position G12"
	}
	else if (global.player_position == "G13")
	{
		pages = 1
		room_text[0] = "Position G13"
	}
	else if (global.player_position == "G14")
	{
		pages = 1
		room_text[0] = "Position G14"
	}
	else if (global.player_position == "G15")
	{
		pages = 1
		room_text[0] = "Position G15"
	}
	else if (global.player_position == "G16")
	{
		pages = 1
		room_text[0] = "Position G16"
	}
	else if (global.player_position == "G17")
	{
		pages = 1
		room_text[0] = "Position G17"
	}
	else if (global.player_position == "G18")
	{
		pages = 1
		room_text[0] = "Position G18"
	}
	else if (global.player_position == "G19")
	{
		pages = 1
		room_text[0] = "Position G19"
	}
	else if (global.player_position == "G20")
	{
		pages = 1
		room_text[0] = "Position G20"
	}
	else if (global.player_position == "H1")
	{
		pages = 1
		room_text[0] = "Position H1"
	}
	else if (global.player_position == "H4")
	{
		pages = 1
		room_text[0] = "Position H4"
	}
	else if (global.player_position == "H5")
	{
		pages = 1
		room_text[0] = "Position H5"
	}
	else if (global.player_position == "H6")
	{
		pages = 1
		room_text[0] = "Position H6"
	}
	else if (global.player_position == "H7")
	{
		pages = 1
		room_text[0] = "Position H7"
	}
	else if (global.player_position == "H8")
	{
		pages = 1
		room_text[0] = "Position H8"
	}
	else if (global.player_position == "H9")
	{
		pages = 1
		room_text[0] = "Position H9"
	}
	else if (global.player_position == "H10")
	{
		pages = 1
		room_text[0] = "Position H10"
	}
	else if (global.player_position == "H11")
	{
		pages = 1
		room_text[0] = "Position H11"
	}
	else if (global.player_position == "H12")
	{
		pages = 1
		room_text[0] = "Position H12"
	}
	else if (global.player_position == "H13")
	{
		pages = 1
		room_text[0] = "Position H13"
	}
	else if (global.player_position == "H14")
	{
		pages = 1
		room_text[0] = "Position H14"
	}
	else if (global.player_position == "H15")
	{
		pages = 1
		room_text[0] = "Position H15"
	}
	else if (global.player_position == "H16")
	{
		pages = 1
		room_text[0] = "Position H16"
	}
	else if (global.player_position == "H17")
	{
		pages = 1
		room_text[0] = "Position H17"
	}
	else if (global.player_position == "H18")
	{
		pages = 1
		room_text[0] = "Position H18"
	}
	else if (global.player_position == "H19")
	{
		pages = 1
		room_text[0] = "Position H19"
	}
	else if (global.player_position == "H20")
	{
		pages = 1
		room_text[0] = "Position H20"
	}
	else if (global.player_position == "I1")
	{
		pages = 1
		room_text[0] = "Position I1"
	}
	else if (global.player_position == "I4")
	{
		pages = 1
		room_text[0] = "Position I4"
	}
	else if (global.player_position == "I5")
	{
		pages = 1
		room_text[0] = "Position I5"
	}
	else if (global.player_position == "I6")
	{
		pages = 1
		room_text[0] = "Position I6"
	}
	else if (global.player_position == "I7")
	{
		pages = 1
		room_text[0] = "Position I7"
	}
	else if (global.player_position == "I8")
	{
		pages = 1
		room_text[0] = "Position I8"
	}
	else if (global.player_position == "I9")
	{
		pages = 1
		room_text[0] = "Position I9"
	}
	else if (global.player_position == "I10")
	{
		pages = 1
		room_text[0] = "Position I10"
	}
	else if (global.player_position == "I11")
	{
		pages = 1
		room_text[0] = "Position I11"
	}
	else if (global.player_position == "I12")
	{
		pages = 1
		room_text[0] = "Position I12"
	}
	else if (global.player_position == "I13")
	{
		pages = 1
		room_text[0] = "Position I13"
	}
	else if (global.player_position == "I14")
	{
		pages = 1
		room_text[0] = "Position I14"
	}
	else if (global.player_position == "I15")
	{
		pages = 1
		room_text[0] = "Position I15"
	}
	else if (global.player_position == "I16")
	{
		pages = 1
		room_text[0] = "Position I16"
	}
	else if (global.player_position == "I17")
	{
		pages = 1
		room_text[0] = "Position I17"
	}
	else if (global.player_position == "I18")
	{
		pages = 1
		room_text[0] = "Position I18"
	}
	else if (global.player_position == "I19")
	{
		pages = 1
		room_text[0] = "Position I19"
	}
	else if (global.player_position == "I20")
	{
		pages = 1
		room_text[0] = "Position I20"
	}
	else if (global.player_position == "J1")
	{
		pages = 1
		room_text[0] = "Position J1"
	}
	else if (global.player_position == "J2")
	{
		pages = 1
		room_text[0] = "Position J2"
	}
	else if (global.player_position == "J4")
	{
		pages = 1
		room_text[0] = "Position J4"
	}
	else if (global.player_position == "J5")
	{
		pages = 1
		room_text[0] = "Position J5"
	}
	else if (global.player_position == "J6")
	{
		pages = 1
		room_text[0] = "Position J6"
	}
	else if (global.player_position == "J7")
	{
		pages = 1
		room_text[0] = "Position J7"
	}
	else if (global.player_position == "J8")
	{
		pages = 1
		room_text[0] = "Position J8"
	}
	else if (global.player_position == "J9")
	{
		pages = 1
		room_text[0] = "Position J9"
	}
	else if (global.player_position == "J10")
	{
		pages = 1
		room_text[0] = "Position J10"
	}
	else if (global.player_position == "J12")
	{
		pages = 1
		room_text[0] = "Position J12"
	}
	else if (global.player_position == "J13")
	{
		pages = 1
		room_text[0] = "Position J13"
	}
	else if (global.player_position == "J14")
	{
		pages = 1
		room_text[0] = "Position J14"
	}
	else if (global.player_position == "J15")
	{
		pages = 1
		room_text[0] = "Position J15"
	}
	else if (global.player_position == "J16")
	{
		pages = 1
		room_text[0] = "Position J16"
	}
	else if (global.player_position == "J17")
	{
		pages = 1
		room_text[0] = "Position J17"
	}
	else if (global.player_position == "J18")
	{
		pages = 1
		room_text[0] = "Position J18"
	}
	else if (global.player_position == "J19")
	{
		pages = 1
		room_text[0] = "Position J19"
	}
	else if (global.player_position == "J20")
	{
		pages = 1
		room_text[0] = "Position J20"
	}
	else if (global.player_position == "K1")
	{
		pages = 1
		room_text[0] = "Position K1"
	}
	else if (global.player_position == "K2")
	{
		pages = 1
		room_text[0] = "Position K2"
	}
	else if (global.player_position == "K3")
	{
		pages = 1
		room_text[0] = "Position K3"
	}
	else if (global.player_position == "K4")
	{
		pages = 1
		room_text[0] = "Position K4"
	}
	else if (global.player_position == "K5")
	{
		pages = 1
		room_text[0] = "Position K5"
	}
	else if (global.player_position == "K7")
	{
		pages = 1
		room_text[0] = "Position K7"
	}
	else if (global.player_position == "K8")
	{
		pages = 1
		room_text[0] = "Position K8"
	}
	else if (global.player_position == "K9")
	{
		pages = 1
		room_text[0] = "Position K9"
	}
	else if (global.player_position == "K10")
	{
		pages = 1
		room_text[0] = "Position K10"
	}
	else if (global.player_position == "K12")
	{
		pages = 1
		room_text[0] = "Position K12"
	}
	else if (global.player_position == "K13")
	{
		pages = 1
		room_text[0] = "Position K13"
	}
	else if (global.player_position == "K14")
	{
		pages = 1
		room_text[0] = "Position K14"
	}
	else if (global.player_position == "K15")
	{
		pages = 1
		room_text[0] = "Position K15"
	}
	else if (global.player_position == "K16")
	{
		pages = 1
		room_text[0] = "Position K16"
	}
	else if (global.player_position == "K17")
	{
		pages = 1
		room_text[0] = "Position K17"
	}
	else if (global.player_position == "K18")
	{
		pages = 1
		room_text[0] = "Position K18"
	}
	else if (global.player_position == "K19")
	{
		pages = 1
		room_text[0] = "Position K19"
	}
	else if (global.player_position == "K20")
	{
		pages = 1
		room_text[0] = "Position K20"
	}
	else if (global.player_position == "L1")
	{
		pages = 1
		room_text[0] = "Position L1"
	}
	else if (global.player_position == "L2")
	{
		pages = 1
		room_text[0] = "Position L2"
	}
	else if (global.player_position == "L3")
	{
		pages = 1
		room_text[0] = "Position L3"
	}
	else if (global.player_position == "L4")
	{
		pages = 1
		room_text[0] = "Position L4"
	}
	else if (global.player_position == "L5")
	{
		pages = 1
		room_text[0] = "Position L5"
	}
	else if (global.player_position == "L6")
	{
		pages = 1
		room_text[0] = "Position L6"
	}
	else if (global.player_position == "L7")
	{
		pages = 1
		room_text[0] = "Position L7"
	}
	else if (global.player_position == "L8")
	{
		pages = 1
		room_text[0] = "Position L8"
	}
	else if (global.player_position == "L10")
	{
		pages = 1
		room_text[0] = "Position L10"
	}
	else if (global.player_position == "L12")
	{
		pages = 1
		room_text[0] = "Position L12"
	}
	else if (global.player_position == "L13")
	{
		pages = 1
		room_text[0] = "Position L13"
	}
	else if (global.player_position == "L14")
	{
		pages = 1
		room_text[0] = "Position L14"
	}
	else if (global.player_position == "L15")
	{
		pages = 1
		room_text[0] = "Position L15"
	}
	else if (global.player_position == "L16")
	{
		pages = 1
		room_text[0] = "Position L16"
	}
	else if (global.player_position == "L17")
	{
		pages = 1
		room_text[0] = "Position L17"
	}
	else if (global.player_position == "L18")
	{
		pages = 1
		room_text[0] = "Position L18"
	}
	else if (global.player_position == "L19")
	{
		pages = 1
		room_text[0] = "Position L19"
	}
	else if (global.player_position == "L20")
	{
		pages = 1
		room_text[0] = "Position L20"
	}
	else if (global.player_position == "M1")
	{
		pages = 1
		room_text[0] = "Position M1"
	}
	else if (global.player_position == "M2")
	{
		pages = 1
		room_text[0] = "Position M2"
	}
	else if (global.player_position == "M3")
	{
		pages = 1
		room_text[0] = "Position M3"
	}
	else if (global.player_position == "M4")
	{
		pages = 1
		room_text[0] = "Position M4"
	}
	else if (global.player_position == "M5")
	{
		pages = 1
		room_text[0] = "Position M5"
	}
	else if (global.player_position == "M6")
	{
		pages = 1
		room_text[0] = "Position M6"
	}
	else if (global.player_position == "M7")
	{
		pages = 1
		room_text[0] = "Position M7"
	}
	else if (global.player_position == "M8")
	{
		pages = 1
		room_text[0] = "Position M8"
	}
	else if (global.player_position == "M10")
	{
		pages = 1
		room_text[0] = "Position M10"
	}
	else if (global.player_position == "M11")
	{
		pages = 1
		room_text[0] = "Position M11"
	}
	else if (global.player_position == "M12")
	{
		pages = 1
		room_text[0] = "Position M12"
	}
	else if (global.player_position == "M13")
	{
		pages = 1
		room_text[0] = "Position M13"
	}
	else if (global.player_position == "M14")
	{
		pages = 1
		room_text[0] = "Position M14"
	}
	else if (global.player_position == "M15")
	{
		pages = 1
		room_text[0] = "Position M15"
	}
	else if (global.player_position == "M16")
	{
		pages = 1
		room_text[0] = "Position M16"
	}
	else if (global.player_position == "M17")
	{
		pages = 1
		room_text[0] = "Position M17"
	}
	else if (global.player_position == "M18")
	{
		pages = 1
		room_text[0] = "Position M18"
	}
	else if (global.player_position == "M19")
	{
		pages = 1
		room_text[0] = "Position M19"
	}
	else if (global.player_position == "M20")
	{
		pages = 1
		room_text[0] = "Position M20"
	}
	else if (global.player_position == "N1")
	{
		pages = 1
		room_text[0] = "Position N1"
	}
	else if (global.player_position == "N2")
	{
		pages = 1
		room_text[0] = "Position N2"
	}
	else if (global.player_position == "N3")
	{
		pages = 1
		room_text[0] = "The End"
	}
	else if (global.player_position == "N4")
	{
		pages = 1
		room_text[0] = "The End"
	}
	else if (global.player_position == "N5")
	{
		pages = 1
		room_text[0] = "The End"
	}
	else if (global.player_position == "N6")
	{
		pages = 1
		room_text[0] = "The End"
	}
	else if (global.player_position == "N7")
	{
		pages = 1
		room_text[0] = "Position N7"
	}
	else if (global.player_position == "N8")
	{
		pages = 1
		room_text[0] = "Position N8"
	}
	else if (global.player_position == "N12")
	{
		pages = 1
		room_text[0] = "Position N12"
	}
	else if (global.player_position == "N13")
	{
		pages = 1
		room_text[0] = "Position N13"
	}
	else if (global.player_position == "N16")
	{
		pages = 1
		room_text[0] = "Position N16"
	}
	else if (global.player_position == "N17")
	{
		pages = 1
		room_text[0] = "Position N17"
	}
	else if (global.player_position == "N18")
	{
		pages = 1
		room_text[0] = "Position N18"
	}
	else if (global.player_position == "N19")
	{
		pages = 1
		room_text[0] = "Position N19"
	}
	else if (global.player_position == "N20")
	{
		pages = 1
		room_text[0] = "Position N20"
	}
	else if (global.player_position == "O1")
	{
		pages = 1
		room_text[0] = "Position O1"
	}
	else if (global.player_position == "O2")
	{
		pages = 1
		room_text[0] = "Position O2"
	}
	else if (global.player_position == "O3")
	{
		pages = 1
		room_text[0] = "The End"
	}
	else if (global.player_position == "O6")
	{
		pages = 1
		room_text[0] = "The End"
	}
	else if (global.player_position == "O7")
	{
		pages = 1
		room_text[0] = "Position O7"
	}
	else if (global.player_position == "O8")
	{
		pages = 1
		room_text[0] = "Position O8"
	}
	else if (global.player_position == "O12")
	{
		pages = 1
		room_text[0] = "Position O12"
	}
	else if (global.player_position == "O13")
	{
		pages = 1
		room_text[0] = "Position O13"
	}
	else if (global.player_position == "O14")
	{
		pages = 1
		room_text[0] = "Position O14"
	}
	else if (global.player_position == "O15")
	{
		pages = 1
		room_text[0] = "Position O15"
	}
	else if (global.player_position == "O16")
	{
		pages = 1
		room_text[0] = "Position O16"
	}
	else if (global.player_position == "O17")
	{
		pages = 1
		room_text[0] = "Position O17"
	}
	else if (global.player_position == "O18")
	{
		pages = 1
		room_text[0] = "Position O18"
	}
	else if (global.player_position == "O19")
	{
		pages = 1
		room_text[0] = "Position O19"
	}
	else if (global.player_position == "O20")
	{
		pages = 1
		room_text[0] = "Position O20"
	}
	else if (global.player_position == "P1")
	{
		pages = 1
		room_text[0] = "Position P1"
	}
	else if (global.player_position == "P2")
	{
		pages = 1
		room_text[0] = "Position P2"
	}
	else if (global.player_position == "P3")
	{
		pages = 1
		room_text[0] = "The End"
	}
	else if (global.player_position == "P6")
	{
		pages = 1
		room_text[0] = "The End"
	}
	else if (global.player_position == "P7")
	{
		pages = 1
		room_text[0] = "Position P7"
	}
	else if (global.player_position == "P8")
	{
		pages = 1
		room_text[0] = "Position P8"
	}
	else if (global.player_position == "P9")
	{
		pages = 1
		room_text[0] = "Position P9"
	}
	else if (global.player_position == "P13")
	{
		pages = 1
		room_text[0] = "Position P13"
	}
	else if (global.player_position == "P14")
	{
		pages = 1
		room_text[0] = "Position P14"
	}
	else if (global.player_position == "P15")
	{
		pages = 1
		room_text[0] = "Position P15"
	}
	else if (global.player_position == "P16")
	{
		pages = 1
		room_text[0] = "Position P16"
	}
	else if (global.player_position == "P17")
	{
		pages = 1
		room_text[0] = "Position P17"
	}
	else if (global.player_position == "P18")
	{
		pages = 1
		room_text[0] = "Position P18"
	}
	else if (global.player_position == "P19")
	{
		pages = 1
		room_text[0] = "Position P19"
	}
	else if (global.player_position == "P20")
	{
		pages = 1
		room_text[0] = "Position P20"
	}
	else if (global.player_position == "Q1")
	{
		pages = 1
		room_text[0] = "Position Q1"
	}
	else if (global.player_position == "Q2")
	{
		pages = 1
		room_text[0] = "Position Q2"
	}
	else if (global.player_position == "Q3")
	{
		pages = 1
		room_text[0] = "The End"
	}
	else if (global.player_position == "Q6")
	{
		pages = 1
		room_text[0] = "The End"
	}
	else if (global.player_position == "Q7")
	{
		pages = 1
		room_text[0] = "Position Q7"
	}
	else if (global.player_position == "Q8")
	{
		pages = 1
		room_text[0] = "Position Q8"
	}
	else if (global.player_position == "Q9")
	{
		pages = 1
		room_text[0] = "Position Q9"
	}
	else if (global.player_position == "Q10")
	{
		pages = 1
		room_text[0] = "Position Q10"
	}
	else if (global.player_position == "Q11")
	{
		pages = 1
		room_text[0] = "Position Q11"
	}
	else if (global.player_position == "Q12")
	{
		pages = 1
		room_text[0] = "Position Q12"
	}
	else if (global.player_position == "Q13")
	{
		pages = 1
		room_text[0] = "Position Q13"
	}
	else if (global.player_position == "Q14")
	{
		pages = 1
		room_text[0] = "Position Q14"
	}
	else if (global.player_position == "Q15")
	{
		pages = 1
		room_text[0] = "Position Q15"
	}
	else if (global.player_position == "Q16")
	{
		pages = 1
		room_text[0] = "Position Q16"
	}
	else if (global.player_position == "Q17")
	{
		pages = 1
		room_text[0] = "Position Q17"
	}
	else if (global.player_position == "Q18")
	{
		pages = 1
		room_text[0] = "Position Q18"
	}
	else if (global.player_position == "Q19")
	{
		pages = 1
		room_text[0] = "Position Q19"
	}
	else if (global.player_position == "Q20")
	{
		pages = 1
		room_text[0] = "Position Q20"
	}
	else if (global.player_position == "R1")
	{
		pages = 1
		room_text[0] = "Position R1"
	}
	else if (global.player_position == "R2")
	{
		pages = 1
		room_text[0] = "Position R2"
	}
	else if (global.player_position == "R3")
	{
		pages = 1
		room_text[0] = "The End"
	}
	else if (global.player_position == "R6")
	{
		pages = 1
		room_text[0] = "The End"
	}
	else if (global.player_position == "R7")
	{
		pages = 1
		room_text[0] = "Position R7"
	}
	else if (global.player_position == "R8")
	{
		pages = 1
		room_text[0] = "Position R8"
	}
	else if (global.player_position == "R9")
	{
		pages = 1
		room_text[0] = "Position R9"
	}
	else if (global.player_position == "R10")
	{
		pages = 1
		room_text[0] = "Position R10"
	}
	else if (global.player_position == "R11")
	{
		pages = 1
		room_text[0] = "Position R11"
	}
	else if (global.player_position == "R12")
	{
		pages = 1
		room_text[0] = "Position R12"
	}
	else if (global.player_position == "R13")
	{
		pages = 1
		room_text[0] = "Position R13"
	}
	else if (global.player_position == "R14")
	{
		pages = 1
		room_text[0] = "Position R14"
	}
	else if (global.player_position == "R15")
	{
		pages = 1
		room_text[0] = "Position R15"
	}
	else if (global.player_position == "R16")
	{
		pages = 1
		room_text[0] = "Position R16"
	}
	else if (global.player_position == "R17")
	{
		pages = 1
		room_text[0] = "Position R17"
	}
	else if (global.player_position == "R18")
	{
		pages = 1
		room_text[0] = "The End"
	}
	else if (global.player_position == "R19")
	{
		pages = 1
		room_text[0] = "The End"
	}
	else if (global.player_position == "R20")
	{
		pages = 1
		room_text[0] = "The End"
	}
	else if (global.player_position == "S1")
	{
		pages = 1
		room_text[0] = "Position S1"
	}
	else if (global.player_position == "S9")
	{
		pages = 1
		room_text[0] = "Position S9"
	}
	else if (global.player_position == "S10")
	{
		pages = 1
		room_text[0] = "Position S10"
	}
	else if (global.player_position == "S11")
	{
		pages = 1
		room_text[0] = "Position S11"
	}
	else if (global.player_position == "S12")
	{
		pages = 1
		room_text[0] = "Position S12"
	}
	else if (global.player_position == "S13")
	{
		pages = 1
		room_text[0] = "Position S13"
	}
	else if (global.player_position == "S14")
	{
		pages = 1
		room_text[0] = "Position S14"
	}
	else if (global.player_position == "S15")
	{
		pages = 1
		room_text[0] = "Position S15"
	}
	else if (global.player_position == "S16")
	{
		pages = 1
		room_text[0] = "Position S16"
	}
	else if (global.player_position == "S17")
	{
		pages = 1
		room_text[0] = "Position S17"
	}
	else if (global.player_position == "S18")
	{
		pages = 1
		room_text[0] = "The End"
	}
	else if (global.player_position == "T1")
	{
		pages = 1
		room_text[0] = "Position T1"
	}
	else if (global.player_position == "T9")
	{
		pages = 1
		room_text[0] = "Position T9"
	}
	else if (global.player_position == "T10")
	{
		pages = 1
		room_text[0] = "Position T10"
	}
	else if (global.player_position == "T11")
	{
		pages = 1
		room_text[0] = "Position T11"
	}
	else if (global.player_position == "T12")
	{
		pages = 1
		room_text[0] = "Position T12"
	}
}
text = room_text[0]

// If there is only one block of text, go ahead and have the room load with the buttons
if (pages == 1)
{
	event_perform(ev_mouse, ev_left_release)
}
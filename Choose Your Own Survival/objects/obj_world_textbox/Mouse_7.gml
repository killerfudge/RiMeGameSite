// If there is more story text to display, change the displayed text
if (index < pages)
{
	text = room_text[index++]
}
// If there is no more story text to display, create the buttons
if (index == pages)
{	
	// The first choice in the game
	if (global.selection == "New Game")
	{
		create_button(1, "Escape through the front window")
		create_button(2, "Escape through the back emergency door")
	}
	// Skipping what will be story after escaping the back of the bus
	if (global.selection == "Back Door")
	{
		create_button(1, "Skip to move")
	}
	// Entering a map square
	if (global.selection == "Move map square")
	{
		// Determine new map square
		if (global.player_position == "A4")
		{
			move_between_map_squares(false, false, true, true)
		}
		else if (global.player_position == "A5")
		{
			move_between_map_squares(false, true, true, false)
		}
		else if (global.player_position == "A8")
		{
			move_between_map_squares(false, false, true, true)
		}
		else if (global.player_position == "A9")
		{
			move_between_map_squares(false, true, true, true)
		}
		else if (global.player_position == "A10")
		{
			move_between_map_squares(false, true, true, false)
		}
		else if (global.player_position == "A11")
		{
			if (global.direction_selection == "Crash side")
			{
				move_between_map_squares(false, false, true, false)
			}
			else
			{
				move_between_map_squares(false, false, true, true)
			}
		}
		else if (global.player_position == "A12")
		{
			move_between_map_squares(false, true, true, true)
		}
		else if (global.player_position == "A13")
		{
			move_between_map_squares(false, true, true, true)
		}
		else if (global.player_position == "A14")
		{
			move_between_map_squares(false, true, true, true)
		}
		else if (global.player_position == "A15")
		{
			move_between_map_squares(false, true, true, true)
		}
		else if (global.player_position == "A16")
		{
			move_between_map_squares(false, true, true, true)
		}
		else if (global.player_position == "A17")
		{
			move_between_map_squares(false, true, true, true)
		}
		else if (global.player_position == "A18")
		{
			move_between_map_squares(false, true, true, true)
		}
		else if (global.player_position == "A19")
		{
			move_between_map_squares(false, true, true, true)
		}
		else if (global.player_position == "A20")
		{
			move_between_map_squares(false, true, true, false)
		}
		else if (global.player_position == "B4")
		{
			move_between_map_squares(true, false, false, true)
		}
		else if (global.player_position == "B5")
		{
			move_between_map_squares(true, true, false, true)
		}
		else if (global.player_position == "B6")
		{
			move_between_map_squares(false, true, true, false)
		}
		else if (global.player_position == "B8")
		{
			move_between_map_squares(true, false, true, true)
		}
		else if (global.player_position == "B9")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "B10")
		{
			if (global.direction_selection == "Back side")
			{
				move_between_map_squares(true, true, true, false)
			}
			else
			{
				move_between_map_squares(false, false, true, true)
			}
		}
		else if (global.player_position == "B11")
		{
			if (global.direction_selection == "Crash side")
			{
				move_between_map_squares(true, true, true, false)
			}
			else
			{
				move_between_map_squares(true, false, false, true)
			}
		}
		else if (global.player_position == "B12")
		{
			move_between_map_squares(true, true, false, true)
		}
		else if (global.player_position == "B13")
		{
			move_between_map_squares(true, true, false, true)
		}
		else if (global.player_position == "B14")
		{
			if (global.direction_selection == "Front side")
			{
				move_between_map_squares(true, true, false, false)
			}
			else
			{
				move_between_map_squares(false, false, true, true)
			}
		}
		else if (global.player_position == "B15")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "B16")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "B17")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "B18")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "B19")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "B20")
		{
			move_between_map_squares(true, true, true, false)
		}
		else if (global.player_position == "C6")
		{
			move_between_map_squares(true, false, true, false)
		}
		else if (global.player_position == "C8")
		{
			move_between_map_squares(true, false, true, true)
		}
		else if (global.player_position == "C9")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "C10")
		{
			if (global.direction_selection == "Back side")
			{
				move_between_map_squares(true, true, false, false)
			}
			else
			{
				move_between_map_squares(true, false, true, true)
			}
		}
		else if (global.player_position == "C11")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "C12")
		{
			move_between_map_squares(false, true, true, true)
		}
		else if (global.player_position == "C13")
		{
			move_between_map_squares(false, true, true, true)
		}
		else if (global.player_position == "C14")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "C15")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "C16")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "C17")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "C18")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "C19")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "C20")
		{
			move_between_map_squares(true, true, true, false)
		}
		else if (global.player_position == "D2")
		{
			move_between_map_squares(false, false, true, true)
		}
		else if (global.player_position == "D3")
		{
			move_between_map_squares(false, true, true, true)
		}
		else if (global.player_position == "D4")
		{
			move_between_map_squares(false, true, true, false)
		}
		else if (global.player_position == "D5")
		{
			move_between_map_squares(false, false, true, false)
		}
		else if (global.player_position == "D6")
		{
			move_between_map_squares(true, false, true, false)
		}
		else if (global.player_position == "D8")
		{
			move_between_map_squares(true, false, true, true)
		}
		else if (global.player_position == "D9")
		{
			move_between_map_squares(true, true, false, false)
		}
		else if (global.player_position == "D10")
		{
			move_between_map_squares(true, false, true, true)
		}
		else if (global.player_position == "D11")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "D12")
		{
			move_between_map_squares(true, true, false, true)
		}
		else if (global.player_position == "D13")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "D14")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "D15")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "D16")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "D17")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "D18")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "D19")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "D20")
		{
			move_between_map_squares(true, true, true, false)
		}
		else if (global.player_position == "E2")
		{
			move_between_map_squares(true, false, true, true)
		}
		else if (global.player_position == "E3")
		{
			move_between_map_squares(true, true, false, true)
		}
		else if (global.player_position == "E4")
		{
			move_between_map_squares(true, true, false, true)
		}
		else if (global.player_position == "E5")
		{
			move_between_map_squares(true, true, false, true)
		}
		else if (global.player_position == "E6")
		{
			move_between_map_squares(true, true, false, true)
		}
		else if (global.player_position == "E7")
		{
			move_between_map_squares(false, true, true, true)
		}
		else if (global.player_position == "E8")
		{
			move_between_map_squares(true, true, true, false)
		}
		else if (global.player_position == "E10")
		{
			move_between_map_squares(true, false, false, false)
		}
		else if (global.player_position == "E11")
		{
			move_between_map_squares(true, false, false, false)
		}
		else if (global.player_position == "E13")
		{
			move_between_map_squares(true, false, true, true)
		}
		else if (global.player_position == "E14")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "E15")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "E16")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "E17")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "E18")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "E19")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "E20")
		{
			move_between_map_squares(true, true, true, false)
		}
		else if (global.player_position == "F1")
		{
			move_between_map_squares(false, false, true, true)
		}
		else if (global.player_position == "F2")
		{
			move_between_map_squares(true, true, true, false)
		}
		else if (global.player_position == "F7")
		{
			move_between_map_squares(true, false, true, true)
		}
		else if (global.player_position == "F8")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "F9")
		{
			move_between_map_squares(false, true, true, false)
		}
		else if (global.player_position == "F12")
		{
			move_between_map_squares(false, false, true, true)
		}
		else if (global.player_position == "F13")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "F14")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "F15")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "F16")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "F17")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "F18")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "F19")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "F20")
		{
			move_between_map_squares(true, true, true, false)
		}
		else if (global.player_position == "G1")
		{
			move_between_map_squares(true, false, true, true)
		}
		else if (global.player_position == "G2")
		{
			move_between_map_squares(true, true, false, false)
		}
		else if (global.player_position == "G4")
		{
			move_between_map_squares(false, false, true, true)
		}
		else if (global.player_position == "G5")
		{
			move_between_map_squares(false, true, true, false)
		}
		else if (global.player_position == "G6")
		{
			move_between_map_squares(false, false, true, true)
		}
		else if (global.player_position == "G7")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "G8")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "G9")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "G10")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "G11")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "G12")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "G13")
		{
			if (global.direction_selection == "North side")
			{
				move_between_map_squares(true, true, false, false)
			}
			else
			{
				move_between_map_squares(false, false, true, true)
			}
		}
		else if (global.player_position == "G14")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "G15")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "G16")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "G17")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "G18")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "G19")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "G20")
		{
			move_between_map_squares(true, true, true, false)
		}
		else if (global.player_position == "H1")
		{
			move_between_map_squares(true, false, true, false)
		}
		else if (global.player_position == "H4")
		{
			move_between_map_squares(true, false, true, true)
		}
		else if (global.player_position == "H5")
		{
			move_between_map_squares(true, true, false, false)
		}
		else if (global.player_position == "H6")
		{
			move_between_map_squares(true, false, true, true)
		}
		else if (global.player_position == "H7")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "H8")
		{
			move_between_map_squares(true, true, true, false)
		}
		else if (global.player_position == "H9")
		{
			move_between_map_squares(true, false, true, true)
		}
		else if (global.player_position == "H10")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "H11")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "H12")
		{
			if (global.direction_selection == "North side")
			{
				move_between_map_squares(true, true, true, false)
			}
			else
			{
				move_between_map_squares(false, false, true, true)
			}
		}
		else if (global.player_position == "H13")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "H14")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "H15")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "H16")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "H17")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "H18")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "H19")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "H20")
		{
			move_between_map_squares(true, true, true, false)
		}
		else if (global.player_position == "I1")
		{
			move_between_map_squares(true, false, true, false)
		}
		else if (global.player_position == "I4")
		{
			move_between_map_squares(true, false, true, true)
		}
		else if (global.player_position == "I5")
		{
			move_between_map_squares(false, true, true, false)
		}
		else if (global.player_position == "I6")
		{
			move_between_map_squares(true, false, true, true)
		}
		else if (global.player_position == "I7")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "I8")
		{
			move_between_map_squares(true, true, true, false)
		}
		else if (global.player_position == "I9")
		{
			move_between_map_squares(true, false, true, true)
		}
		else if (global.player_position == "I10")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "I11")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "I12")
		{
			if (global.direction_selection == "North side")
			{
				move_between_map_squares(true, true, false, false)
			}
			else
			{
				move_between_map_squares(true, false, true, true)
			}
		}
		else if (global.player_position == "I13")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "I14")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "I15")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "I16")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "I17")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "I18")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "I19")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "I20")
		{
			move_between_map_squares(true, true, true, false)
		}
		else if (global.player_position == "J1")
		{
			move_between_map_squares(true, false, true, true)
		}
		else if (global.player_position == "J2")
		{
			move_between_map_squares(false, true, true, false)
		}
		else if (global.player_position == "J4")
		{
			move_between_map_squares(true, false, true, true)
		}
		else if (global.player_position == "J5")
		{
			move_between_map_squares(true, true, true, false)
		}
		else if (global.player_position == "J6")
		{
			move_between_map_squares(true, false, false, true)
		}
		else if (global.player_position == "J7")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "J8")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "J9")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "J10")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "J12")
		{
			move_between_map_squares(true, false, true, true)
		}
		else if (global.player_position == "J13")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "J14")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "J15")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "J16")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "J17")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "J18")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "J19")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "J20")
		{
			move_between_map_squares(true, true, true, false)
		}
		else if (global.player_position == "K1")
		{
			move_between_map_squares(true, false, true, true)
		}
		else if (global.player_position == "K2")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "K3")
		{
			move_between_map_squares(false, true, true, true)
		}
		else if (global.player_position == "K4")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "K5")
		{
			move_between_map_squares(true, true, true, false)
		}
		else if (global.player_position == "K7")
		{
			move_between_map_squares(true, false, true, true)
		}
		else if (global.player_position == "K8")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "K9")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "K10")
		{
			move_between_map_squares(false, true, true, false)
		}
		else if (global.player_position == "K12")
		{
			move_between_map_squares(true, false, true, true)
		}
		else if (global.player_position == "K13")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "K14")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "K15")
		{
			if (global.direction_selection == "North side")
			{
				move_between_map_squares(true, true, false, false)
			}
			else
			{
				move_between_map_squares(false, false, true, true)
			}
		}
		else if (global.player_position == "K16")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "K17")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "K18")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "K19")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "K20")
		{
			move_between_map_squares(true, true, true, false)
		}
		else if (global.player_position == "L1")
		{
			move_between_map_squares(true, false, true, true)
		}
		else if (global.player_position == "L2")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "L3")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "L4")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "L5")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "L6")
		{
			move_between_map_squares(false, true, true, false)
		}
		else if (global.player_position == "L7")
		{
			move_between_map_squares(true, false, true, true)
		}
		else if (global.player_position == "L8")
		{
			move_between_map_squares(true, true, true, false)
		}
		else if (global.player_position == "L10")
		{
			move_between_map_squares(true, false, true, false)
		}
		else if (global.player_position == "L12")
		{
			move_between_map_squares(true, false, false, true)
		}
		else if (global.player_position == "L13")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "L14")
		{
			move_between_map_squares(true, true, true, false)
		}
		else if (global.player_position == "L15")
		{
			move_between_map_squares(true, false, true, true)
		}
		else if (global.player_position == "L16")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "L17")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "L18")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "L19")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "L20")
		{
			move_between_map_squares(true, true, true, false)
		}
		else if (global.player_position == "M1")
		{
			move_between_map_squares(true, false, true, true)
		}
		else if (global.player_position == "M2")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "M3")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "M4")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "M5")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "M6")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "M7")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "M8")
		{
			move_between_map_squares(true, true, false, false)
		}
		else if (global.player_position == "M10")
		{
			move_between_map_squares(true, false, false, true)
		}
		else if (global.player_position == "M11")
		{
			move_between_map_squares(false, true, false, true)
		}
		else if (global.player_position == "M12")
		{
			move_between_map_squares(false, true, true, false)
		}
		else if (global.player_position == "M13")
		{
			move_between_map_squares(true, false, false, true)
		}
		else if (global.player_position == "M14")
		{
			move_between_map_squares(true, false, true, false)
		}
		else if (global.player_position == "M15")
		{
			move_between_map_squares(true, false, false, true)
		}
		else if (global.player_position == "M16")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "M17")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "M18")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "M19")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "M20")
		{
			move_between_map_squares(true, true, true, false)
		}
		else if (global.player_position == "N1")
		{
			move_between_map_squares(true, false, true, true)
		}
		else if (global.player_position == "N2")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "N7")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "N8")
		{
			move_between_map_squares(false, true, true, false)
		}
		else if (global.player_position == "N12")
		{
			move_between_map_squares(true, false, true, true)
		}
		else if (global.player_position == "N13")
		{
			move_between_map_squares(false, true, true, false)
		}
		else if (global.player_position == "N16")
		{
			move_between_map_squares(true, false, false, true)
		}
		else if (global.player_position == "N17")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "N18")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "N19")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "N20")
		{
			move_between_map_squares(true, true, true, false)
		}
		else if (global.player_position == "O1")
		{
			move_between_map_squares(true, false, true, true)
		}
		else if (global.player_position == "O2")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "O7")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "O8")
		{
			move_between_map_squares(true, true, true, false)
		}
		else if (global.player_position == "O12")
		{
			move_between_map_squares(true, false, false, true)
		}
		else if (global.player_position == "O13")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "O14")
		{
			move_between_map_squares(false, true, true, true)
		}
		else if (global.player_position == "O15")
		{
			move_between_map_squares(false, true, true, true)
		}
		else if (global.player_position == "O16")
		{
			move_between_map_squares(false, true, true, false)
		}
		else if (global.player_position == "O17")
		{
			move_between_map_squares(true, false, true, true)
		}
		else if (global.player_position == "O18")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "O19")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "O20")
		{
			move_between_map_squares(true, true, true, false)
		}
		else if (global.player_position == "P1")
		{
			move_between_map_squares(true, false, true, true)
		}
		else if (global.player_position == "P2")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "P7")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "P8")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "P9")
		{
			move_between_map_squares(false, true, true, false)
		}
		else if (global.player_position == "P13")
		{
			move_between_map_squares(true, false, true, true)
		}
		else if (global.player_position == "P14")
		{
			move_between_map_squares(false, true, true, true)
		}
		else if (global.player_position == "P15")
		{
			move_between_map_squares(false, true, true, true)
		}
		else if (global.player_position == "P16")
		{
			move_between_map_squares(false, true, true, false)
		}
		else if (global.player_position == "P17")
		{
			move_between_map_squares(true, false, true, true)
		}
		else if (global.player_position == "P18")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "P19")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "P20")
		{
			move_between_map_squares(true, true, true, false)
		}
		else if (global.player_position == "Q1")
		{
			move_between_map_squares(true, false, true, true)
		}
		else if (global.player_position == "Q2")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "Q7")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "Q8")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "Q9")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "Q10")
		{
			move_between_map_squares(false, true, true, true)
		}
		else if (global.player_position == "Q11")
		{
			move_between_map_squares(false, true, true, true)
		}
		else if (global.player_position == "Q12")
		{
			move_between_map_squares(false, true, true, true)
		}
		else if (global.player_position == "Q13")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "Q14")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "Q15")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "Q16")
		{
			move_between_map_squares(true, true, true, false)
		}
		else if (global.player_position == "Q17")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "Q18")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "Q19")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "Q20")
		{
			move_between_map_squares(true, true, true, false)
		}
		else if (global.player_position == "R1")
		{
			move_between_map_squares(true, false, true, true)
		}
		else if (global.player_position == "R2")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "R7")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "R8")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "R9")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "R10")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "R11")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "R12")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "R13")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "R14")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "R15")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "R16")
		{
			move_between_map_squares(true, true, true, false)
		}
		else if (global.player_position == "R17")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "S1")
		{
			move_between_map_squares(true, false, true, false)
		}
		else if (global.player_position == "S9")
		{
			move_between_map_squares(true, false, true, true)
		}
		else if (global.player_position == "S10")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "S11")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "S12")
		{
			move_between_map_squares(true, true, true, true)
		}
		else if (global.player_position == "S13")
		{
			move_between_map_squares(true, true, false, true)
		}
		else if (global.player_position == "S14")
		{
			move_between_map_squares(true, true, false, true)
		}
		else if (global.player_position == "S15")
		{
			move_between_map_squares(true, true, false, true)
		}
		else if (global.player_position == "S16")
		{
			move_between_map_squares(true, true, false, true)
		}
		else if (global.player_position == "S17")
		{
			move_between_map_squares(true, true, false, true)
		}
		else if (global.player_position == "T1")
		{
			move_between_map_squares(true, false, false, false)
		}
		else if (global.player_position == "T9")
		{
			move_between_map_squares(true, false, false, true)
		}
		else if (global.player_position == "T10")
		{
			move_between_map_squares(true, true, false, true)
		}
		else if (global.player_position == "T11")
		{
			move_between_map_squares(true, true, false, true)
		}
		else if (global.player_position == "T12")
		{
			move_between_map_squares(true, true, false, false)
		}
	}
	// Options on what to do at current location
	else
	{
		if (global.camp_row == global.player_row and global.camp_column == global.player_column)
		{
			create_button(1, "Go to camp")
			create_button(2, "Scavange for materials")
			create_button(3, "Leave area")
		}
		else
		{
			create_button(1, "Scavange for materials")
			create_button(2, "Leave area")
		}
	}
}
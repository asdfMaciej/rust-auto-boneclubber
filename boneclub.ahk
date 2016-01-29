DragHotbar()
{
	MouseClickDrag, left, 750, 850, 750, 950, 6
	MouseClickDrag, left, 840, 850, 840, 950, 6
	MouseClickDrag, left, 930, 850, 930, 950, 6
	MouseClickDrag, left, 1010, 850, 1010, 950, 6
	MouseClickDrag, left, 1100, 850, 1100, 950, 6
	MouseClickDrag, left, 1150, 850, 1150, 950, 6
}

BoneClub()
{
	Sleep 1000
	Click down
	Sleep 19000
	Click up
}

SelectSlot(x)
{
	Send {%x% down}
	Sleep 150
	Send {%x% up}
}

OpenInventory()
{
	Send {TAB down}
	Sleep 500
	Send {TAB up}
	Sleep 500
}

PurchaseBoneClubs()
{
	MouseClick, left, 1600, 190
	Sleep 300
	
	MouseClick, left, 1500, 280, 6, D
	Sleep 100
	MouseClick, left, 1500, 280, 6, U
	Sleep 100

	Loop, 11
	{
		MouseClick, left, 1055, 490
		Sleep 100
	}

	Sleep 500
	MouseClick, left, 1160, 490
	Sleep 500
}

^n::
	InputBox, loops, Loops, Please enter how much loops should be executed (12 bone clubs each loop)
	Loop, %loops%
	{
		OpenInventory()
		PurchaseBoneClubs()
		OpenInventory()
		Loop, 6
		{
			SelectSlot(a_index)
			Sleep 200
			BoneClub()
			Sleep 200
		}
		OpenInventory()
		DragHotbar()
		OpenInventory()
		Loop, 6
		{
			SelectSlot(a_index)
			Sleep 200
			BoneClub()
			Sleep 200
		}
		Sleep 300
	}
return
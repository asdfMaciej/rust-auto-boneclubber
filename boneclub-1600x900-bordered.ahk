DragHotbar()
{
	MouseClickDrag, left, 600, 730, 600, 850, 6
	MouseClickDrag, left, 680, 730, 680, 850, 6
	MouseClickDrag, left, 760, 730, 760, 850, 6
	MouseClickDrag, left, 840, 730, 840, 850, 6
	MouseClickDrag, left, 920, 730, 920, 850, 6
	MouseClickDrag, left, 1000, 730, 1000, 850, 6
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
	MouseClick, left, 1440, 100
	Sleep 300
	
	MouseClick, left, 1350, 185, 6, D
	Sleep 100
	MouseClick, left, 1350, 185, 6, U
	Sleep 100

	Loop, 11
	{
		MouseClick, left, 900, 390
		Sleep 100
	}

	Sleep 500
	MouseClick, left, 1000, 390
	Sleep 500
}

^n::
	InputBox, loops, Loops, Please enter how much loops should be executed (12 bone clubs each loop)
	Sleep 3000
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
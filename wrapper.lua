function dropItem(itemID, count)
	sendPacket(false, "action|drop\n|itemID|" .. itemID, 2);
	sendPacket(false, "action|dialog_return\ndialog_name|drop_item\nitemID|" .. itemID .. "|\ncount|" .. count, 2);
end

function joinWorld(world)
	sendPacket(false, "action|join_request\nname|" .. world .. "\ninvitedWorld|0", 3);
end

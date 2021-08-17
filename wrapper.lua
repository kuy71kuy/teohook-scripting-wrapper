function dropItem(itemID, count)
	sendPacket(false, "action|drop\n|itemID|" .. itemID, 2);
	sendPacket(false, "action|dialog_return\ndialog_name|drop_item\nitemID|" .. itemID .. "|\ncount|" .. count, 2);
end

function joinWorld(world)
	sendPacket(false, "action|join_request\nname|" .. world, 3);
end

function faceSide(side)
	if side == "left" then
		packet = {}
		packet.type = 0
		packet.pos_x = getLocal().pos.x
		packet.pos_y = getLocal().pos.y
		packet.flags = 48
		sendPacketRaw(false, packet)
		return
	end
	if side == "right" then
		packet = {}
		packet.type = 0
		packet.pos_x = getLocal().pos.x
		packet.pos_y = getLocal().pos.y
		packet.flags = 32
		sendPacketRaw(false, packet)
		return;
	end
	log("Invalid side chosen (" .. side .. ")")
end

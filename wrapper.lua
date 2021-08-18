-- Scripting Wrapper
-- Made by ManualMap#0001 (https://github.com/ManualMap/teohook-scripting-wrapper)
-- Created for teohook v1.2
-- Wrapper Version: v1.3

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

function hitTile(x, y)
    pkt = {}
    pkt.type = 3
    pkt.int_data = 18
    pkt.int_x = x
    pkt.int_y = y
    pkt.pos_x = getLocal().pos.x
    pkt.pos_y = getLocal().pos.y
    sendPacketRaw(false, pkt)
end

function placeTile(id, x, y)
    pkt = {}
    pkt.type = 3
    pkt.int_data = id
    pkt.int_x = x
    pkt.int_y = y
    pkt.pos_x = getLocal().pos.x
    pkt.pos_y = getLocal().pos.y
    sendPacketRaw(false, pkt)
end
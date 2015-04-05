function on_msg_receive (msg)
	if (msg.from.id == our_id) then
  	--Para ejecutar comandos en la terminal
	t={}
	str = msg.text
	str:gsub(".",function(c) table.insert(t,c) end)
	if (t[1] == '$') then
		str = string.sub(str, 2)
		foo = os.capture("cd ~; " .. str)
		send_msg (msg.to.print_name, foo, ok_cb, false)
	end
	--[[en caso de querer ejecutar un comando sin recibir
	la salida cambiar os.capture por os.execute
	]]
	if (msg.text == 'ip pubica' or msg.text == 'ip1') then
		foo = os.capture('bash /home/pi/t_notifications/ip_pubica.sh')
		send_msg (msg.to.print_name, foo, ok_cb, false)
	end

	if (msg.text == 'ip2') then
		foo = os.capture('bash /home/pi/t_notifications/ip_pubica2.sh')
		send_msg (msg.to.print_name, foo, ok_cb, false)
		end
	end
	return
end

function os.capture(cmd, raw)
	local f = assert(io.popen(cmd, 'r'))
	local s = assert(f:read('*a'))
	f:close()
	if raw then return s end
	s = string.gsub(s, '^%s+', '')
	s = string.gsub(s, '%s+$', '')
	return s
end

function on_our_id (id)
	our_id = id
end


function on_secret_chat_created (peer)
end

function on_user_update (user)
end

function on_chat_update (user)
end

function on_get_difference_end ()
end

function on_binlog_replay_end ()
end
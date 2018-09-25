ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

function getIdentity(source, callback)
	local identifier = GetPlayerIdentifiers(source)[1]
	
	MySQL.Async.fetchAll("SELECT * FROM `users` WHERE `identifier` = @identifier",
	{
		['@identifier'] = identifier
	}, function(result)
		if result[1].firstname ~= nil then
			local data = {
				identifier	= result[1].identifier,
				firstname	= result[1].firstname,
				lastname	= result[1].lastname,
				dateofbirth	= result[1].dateofbirth,
				sex			= result[1].sex,
				height		= result[1].height
			}
			callback(data)
		else
			local data = {
				identifier	= '',
				firstname	= '',
				lastname	= '',
				dateofbirth	= '',
				sex			= '',
				height		= ''
			}
			
			callback(data)
		end
	end)
end

function getCharacters(source, callback)
	local identifier = GetPlayerIdentifiers(source)[1]
	MySQL.Async.fetchAll("SELECT * FROM `characters` WHERE `identifier` = @identifier",
	{
		['@identifier'] = identifier
	}, function(result)
		if result[1] and result[2] and result[3] and result[4] and result[5] and result[6] then
	
      local data = {
        identifier    = result[1].identifier,
        firstname1    = result[1].firstname,
        lastname1     = result[1].lastname,
        dateofbirth1  = result[1].dateofbirth,
        sex1          = result[1].sex,
        height1       = result[1].height,
        firstname2    = result[2].firstname,
        lastname2     = result[2].lastname,
        dateofbirth2  = result[2].dateofbirth,
        sex2          = result[2].sex,
        height2       = result[2].height,
        firstname3    = result[3].firstname,
        lastname3     = result[3].lastname,
        dateofbirth3  = result[3].dateofbirth,
        sex3          = result[3].sex,
        height3       = result[3].height,
        firstname4    = result[4].firstname,
        lastname4     = result[4].lastname,
        dateofbirth4  = result[4].dateofbirth,
        sex4          = result[4].sex,
        height4       = result[4].height,
        firstname5    = result[5].firstname,
        lastname5     = result[5].lastname,
        dateofbirth5  = result[5].dateofbirth,
        sex5          = result[5].sex,
        height5       = result[5].height,
        firstname6    = result[6].firstname,
        lastname6     = result[6].lastname,
        dateofbirth6  = result[6].dateofbirth,
        sex6          = result[6].sex,
        height6       = result[6].height
      }
			
			callback(data)
		elseif result[1] and result[2] and result[3] and result[4] and result[5] and not result[6] then
	
      local data = {
        identifier    = result[1].identifier,
        firstname1    = result[1].firstname,
        lastname1     = result[1].lastname,
        dateofbirth1  = result[1].dateofbirth,
        sex1          = result[1].sex,
        height1       = result[1].height,
        firstname2    = result[2].firstname,
        lastname2     = result[2].lastname,
        dateofbirth2  = result[2].dateofbirth,
        sex2          = result[2].sex,
        height2       = result[2].height,
        firstname3    = result[3].firstname,
        lastname3     = result[3].lastname,
        dateofbirth3  = result[3].dateofbirth,
        sex3          = result[3].sex,
        height3       = result[3].height,
        firstname4    = result[4].firstname,
        lastname4     = result[4].lastname,
        dateofbirth4  = result[4].dateofbirth,
        sex4          = result[4].sex,
        height4       = result[4].height,
        firstname5    = result[5].firstname,
        lastname5     = result[5].lastname,
        dateofbirth5  = result[5].dateofbirth,
        sex5          = result[5].sex,
        height5       = result[5].height,
        firstname6    = '',
        lastname6     = '',
        dateofbirth6  = '',
        sex6          = '',
        height6       = ''
      }

			callback(data)
		elseif result[1] and result[2] and result[3] and result[4] and not result[5] and not result[6] then
	
      local data = {
        identifier    = result[1].identifier,
        firstname1    = result[1].firstname,
        lastname1     = result[1].lastname,
        dateofbirth1  = result[1].dateofbirth,
        sex1          = result[1].sex,
        height1       = result[1].height,
        firstname2    = result[2].firstname,
        lastname2     = result[2].lastname,
        dateofbirth2  = result[2].dateofbirth,
        sex2          = result[2].sex,
        height2       = result[2].height,
        firstname3    = result[3].firstname,
        lastname3     = result[3].lastname,
        dateofbirth3  = result[3].dateofbirth,
        sex3          = result[3].sex,
        height3       = result[3].height,
        firstname4    = result[4].firstname,
        lastname4     = result[4].lastname,
        dateofbirth4  = result[4].dateofbirth,
        sex4          = result[4].sex,
        height4       = result[4].height,
        firstname5    = '',
        lastname5     = '',
        dateofbirth5  = '',
        sex5          = '',
        height5       = '',
        firstname6    = '',
        lastname6     = '',
        dateofbirth6  = '',
        sex6          = '',
        height6       = ''
      }

			callback(data)
		elseif result[1] and result[2] and result[3] and not result[4] and not result[5] and not result[6] then
  
      local data = {
        identifier    = result[1].identifier,
        firstname1    = result[1].firstname,
        lastname1     = result[1].lastname,
        dateofbirth1  = result[1].dateofbirth,
        sex1          = result[1].sex,
        height1       = result[1].height,
        firstname2    = result[2].firstname,
        lastname2     = result[2].lastname,
        dateofbirth2  = result[2].dateofbirth,
        sex2          = result[2].sex,
        height2       = result[2].height,
        firstname3    = result[3].firstname,
        lastname3     = result[3].lastname,
        dateofbirth3  = result[3].dateofbirth,
        sex3          = result[3].sex,
        height3       = result[3].height,
        firstname4    = '',
        lastname4     = '',
        dateofbirth4  = '',
        sex4          = '',
        height4       = '',
        firstname5    = '',
        lastname5     = '',
        dateofbirth5  = '',
        sex5          = '',
        height5       = '',
        firstname6    = '',
        lastname6     = '',
        dateofbirth6  = '',
        sex6          = '',
        height6       = ''
      }

      callback(data)
    
    elseif result[1] and result[2] and not result[3] and not result[4] and not result[5] and not result[6] then
  
      local data = {
        identifier    = result[1].identifier,
        firstname1    = result[1].firstname,
        lastname1     = result[1].lastname,
        dateofbirth1  = result[1].dateofbirth,
        sex1          = result[1].sex,
        height1       = result[1].height,
        firstname2    = result[2].firstname,
        lastname2     = result[2].lastname,
        dateofbirth2  = result[2].dateofbirth,
        sex2          = result[2].sex,
        height2       = result[2].height,
        firstname3    = '',
        lastname3     = '',
        dateofbirth3  = '',
        sex3          = '',
        height3       = '',
        firstname4    = '',
        lastname4     = '',
        dateofbirth4  = '',
        sex4          = '',
        height4       = '',
        firstname5    = '',
        lastname5     = '',
        dateofbirth5  = '',
        sex5          = '',
        height5       = '',
        firstname6    = '',
        lastname6     = '',
        dateofbirth6  = '',
        sex6          = '',
        height6       = ''
      }

      callback(data)
    
    elseif result[1] and not result[2] and not result[3] and not result[4] and not result[5] and not result[6] then
  
      local data = {
        identifier    = result[1].identifier,
        firstname1    = result[1].firstname,
        lastname1     = result[1].lastname,
        dateofbirth1  = result[1].dateofbirth,
        sex1          = result[1].sex,
        height1       = result[1].height,
        firstname2    = '',
        lastname2     = '',
        dateofbirth2  = '',
        sex2          = '',
        height2       = '',
        firstname3    = '',
        lastname3     = '',
        dateofbirth3  = '',
        sex3          = '',
        height3       = '',
        firstname4    = '',
        lastname4     = '',
        dateofbirth4  = '',
        sex4          = '',
        height4       = '',
        firstname5    = '',
        lastname5     = '',
        dateofbirth5  = '',
        sex5          = '',
        height5       = '',
        firstname6    = '',
        lastname6     = '',
        dateofbirth6  = '',
        sex6          = '',
        height6       = ''
      }

      callback(data)
	  
    else
	
      local data = {
        identifier    = '',
        firstname1    = '',
        lastname1     = '',
        dateofbirth1  = '',
        sex1          = '',
        height1       = '',
        firstname2    = '',
        lastname2     = '',
        dateofbirth2  = '',
        sex2          = '',
        height2       = '',
        firstname3    = '',
        lastname3     = '',
        dateofbirth3  = '',
        sex3          = '',
        height3       = '',
        firstname4    = '',
        lastname4     = '',
        dateofbirth4  = '',
        sex4          = '',
        height4       = '',
        firstname5    = '',
        lastname5     = '',
        dateofbirth5  = '',
        sex5          = '',
        height5       = '',
        firstname6    = '',
        lastname6     = '',
        dateofbirth6  = '',
        sex6          = '',
        height6       = ''
      }

      callback(data)
		end
	end)
end

function setIdentity(identifier, data, callback)
	MySQL.Async.execute("UPDATE `users` SET `firstname` = @firstname, `lastname` = @lastname, `dateofbirth` = @dateofbirth, `sex` = @sex, `height` = @height WHERE identifier = @identifier",
	{
		['@identifier']		= identifier,
		['@firstname']		= data.firstname,
		['@lastname']		= data.lastname,
		['@dateofbirth']	= data.dateofbirth,
		['@sex']			= data.sex,
		['@height']			= data.height
	}, function(done)
		if callback then
			callback(true)
		end
	end)

	MySQL.Async.execute(
	'INSERT INTO characters (identifier, firstname, lastname, dateofbirth, sex, height) VALUES (@identifier, @firstname, @lastname, @dateofbirth, @sex, @height)',
	{
		['@identifier']		= identifier,
		['@firstname']		= data.firstname,
		['@lastname']		= data.lastname,
		['@dateofbirth']	= data.dateofbirth,
		['@sex']			= data.sex,
		['@height']			= data.height
	})
end

function updateIdentity(identifier, data, callback)
	MySQL.Async.execute("UPDATE `users` SET `firstname` = @firstname, `lastname` = @lastname, `dateofbirth` = @dateofbirth, `sex` = @sex, `height` = @height WHERE identifier = @identifier",
	{
		['@identifier']		= identifier,
		['@firstname']		= data.firstname,
		['@lastname']		= data.lastname,
		['@dateofbirth']	= data.dateofbirth,
		['@sex']			= data.sex,
		['@height']			= data.height
	}, function(done)
		if callback then
			callback(true)
		end
	end)
end

function deleteIdentity(identifier, data, callback)
	MySQL.Async.execute("DELETE FROM `characters` WHERE identifier = @identifier AND firstname = @firstname AND lastname = @lastname AND dateofbirth = @dateofbirth AND sex = @sex AND height = @height",
	{
		['@identifier']		= identifier,
		['@firstname']		= data.firstname,
		['@lastname']		= data.lastname,
		['@dateofbirth']	= data.dateofbirth,
		['@sex']			= data.sex,
		['@height']			= data.height
	}, function(done)
		if callback then
			callback(true)
		end
	end)
end

RegisterServerEvent('esx_identity:setIdentity')
AddEventHandler('esx_identity:setIdentity', function(data, myIdentifiers)
	setIdentity(myIdentifiers.steamid, data, function(callback)
		if callback then
			TriggerClientEvent('esx_identity:identityCheck', myIdentifiers.playerid, true)
		else
			TriggerClientEvent('chat:addMessage', source, { args = { '^[IDENTITY]', 'Failed to set character, try again later or contact the server admin!' } })
		end
	end)
end)

AddEventHandler('es:playerLoaded', function(source)
	local myID = {
		steamid = GetPlayerIdentifiers(source)[1],
		playerid = source
	}
	
	TriggerClientEvent('esx_identity:saveID', source, myID)
	getIdentity(source, function(data)
		if data.firstname == '' then
			TriggerClientEvent('esx_identity:identityCheck', source, false)
			TriggerClientEvent('esx_identity:showRegisterIdentity', source)
		else
			TriggerClientEvent('esx_identity:identityCheck', source, true)
		end
	end)
end)

AddEventHandler('onResourceStart', function(resource)
	if resource == GetCurrentResourceName() then
		Citizen.Wait(3000)
		
		-- Set all the client side variables for connected users one new time
		local xPlayers = ESX.GetPlayers()
		for i=1, #xPlayers, 1 do
		
			local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
			
			local myID = {
				steamid  = xPlayer.identifier,
				playerid = xPlayer.source
			}
			
			TriggerClientEvent('esx_identity:saveID', xPlayer.source, myID)
			
			getIdentity(xPlayer.source, function(data)
				if data.firstname == '' then
					TriggerClientEvent('esx_identity:identityCheck', xPlayer.source, false)
					TriggerClientEvent('esx_identity:showRegisterIdentity', xPlayer.source)
				else
					TriggerClientEvent('esx_identity:identityCheck', xPlayer.source, true)
				end
			end)
		end
	end
end)

TriggerEvent('es:addCommand', 'register', function(source, args, user)
	getCharacters(source, function(data)
		if data.firstname3 ~= '' then
			TriggerClientEvent('chat:addMessage', source, { args = { '^[IDENTITY]', 'You can only have 6 registered characters. Use the ^3/chardel^0  command in order to delete existing characters.' } })
		else
			TriggerClientEvent('esx_identity:showRegisterIdentity', source, {})
		end
	end)
end, {help = "Register a new character"})

TriggerEvent('es:addGroupCommand', 'char', 'user', function(source, args, user)
	getIdentity(source, function(data)
		if data.firstname == '' then
			TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITY]', 'You do not have an active character!' } })
		else
			TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITY]', 'Active character: ^2' .. data.firstname .. ' ' .. data.lastname } })
		end
	end)
end, function(source, args, user)
	TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Insufficient permissions!' } })
end, {help = "List your current character"})

TriggerEvent('es:addGroupCommand', 'charlist', 'user', function(source, args, user)
	getCharacters(source, function(data)
		if data.firstname1 ~= '' then
			TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITY] Character 1:', data.firstname1 .. ' ' .. data.lastname1 } })
			
			if data.firstname2 ~= '' then
				TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITY] Character 2:', data.firstname2 .. ' ' .. data.lastname2 } })
				
				if data.firstname3 ~= '' then
					TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITY] Character 3:', data.firstname3 .. ' ' .. data.lastname3 } })

					if data.firstname4 ~= '' then
            			TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITY] Character 4:', data.firstname2 .. ' ' .. data.lastname4 } })

            			if data.firstname5 ~= '' then
              				TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITY] Character 5:', data.firstname2 .. ' ' .. data.lastname5 } })

              				if data.firstname6 ~= '' then
                 				TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITY] Character 6:', data.firstname2 .. ' ' .. data.lastname6 } })
							end
						end
					end
				end
			end
		else
			TriggerClientEvent('chat:addMessage', source, { args = { '^[IDENTITY]', 'You have no registered characters. Use the ^3/register^0 command to register a character.' } })
		end
	end)
end, function(source, args, user)
	TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Insufficient permissions!' } })
end, {help = "List all your registered characters"})

TriggerEvent('es:addGroupCommand', 'charselect', 'user', function(source, args, user)
	local charNumber = tonumber(args[1])

	if charNumber == nil or charNumber > 6 or charNumber < 1 then
		TriggerClientEvent('chat:addMessage', source, { args = { '^[IDENTITY]', 'That\'s an invalid character!' } })
		return
	end
	
	getCharacters(source, function(data)
		if charNumber == 1 then
			local data = {
				identifier	= data.identifier,
				firstname	= data.firstname1,
				lastname	= data.lastname1,
				dateofbirth	= data.dateofbirth1,
				sex			= data.sex1,
				height		= data.height1
			}

			if data.firstname ~= '' then
				updateIdentity(GetPlayerIdentifiers(source)[1], data, function(callback)
					if callback then
						TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITY]', 'Updated your active character to ^2' .. data.firstname .. ' ' .. data.lastname } })
					else
						TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITY]', 'Failed to update your identity, try again later or contact the server admin!' } })
					end
				end)
			else
				TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITY]', 'You don\'t have a character in slot 1!' } })
			end
		elseif charNumber == 2 then
		
			local data = {
				identifier	= data.identifier,
				firstname	= data.firstname2,
				lastname	= data.lastname2,
				dateofbirth	= data.dateofbirth2,
				sex			= data.sex2,
				height		= data.height2
			}

			if data.firstname ~= '' then
				updateIdentity(GetPlayerIdentifiers(source)[1], data, function(callback)

					if callback then
						TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITY]', 'Updated your active character to ^2' .. data.firstname .. ' ' .. data.lastname } })
					else
						TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITY]', 'Failed to update your identity, try again later or contact the server admin!' } })
					end
				end)
			else
				TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITY]', 'You don\'t have a character in slot 2!' } })
			end
		elseif charNumber == 3 then
	
			local data = {
				identifier	= data.identifier,
				firstname	= data.firstname3,
				lastname	= data.lastname3,
				dateofbirth	= data.dateofbirth3,
				sex			= data.sex3,
				height		= data.height3
			}

			if data.firstname ~= '' then
				updateIdentity(GetPlayerIdentifiers(source)[1], data, function(callback)
					if callback then
						TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITY]', 'Updated your active character to ^2' .. data.firstname .. ' ' .. data.lastname } })
					else
						TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITY]', 'Failed to update your identity, try again later or contact the server admin!' } })
					end
				end)
			else
				TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITY]', 'You don\'t have a character in slot 3!' } })
			end

		elseif charNumber == 4 then
	
			local data = {
				identifier	= data.identifier,
				firstname	= data.firstname4,
				lastname	= data.lastname4,
				dateofbirth	= data.dateofbirth4,
				sex			= data.sex4,
				height		= data.height4
			}

			if data.firstname ~= '' then
				updateIdentity(GetPlayerIdentifiers(source)[1], data, function(callback)
					if callback then
						TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITY]', 'Updated your active character to ^2' .. data.firstname .. ' ' .. data.lastname } })
					else
						TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITY]', 'Failed to update your identity, try again later or contact the server admin!' } })
					end
				end)
			else
				TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITY]', 'You don\'t have a character in slot 4!' } })
			end
		elseif charNumber == 5 then
	
			local data = {
				identifier	= data.identifier,
				firstname	= data.firstname5,
				lastname	= data.lastname5,
				dateofbirth	= data.dateofbirth5,
				sex			= data.sex5,
				height		= data.height5
			}

			if data.firstname ~= '' then
				updateIdentity(GetPlayerIdentifiers(source)[1], data, function(callback)
					if callback then
						TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITY]', 'Updated your active character to ^2' .. data.firstname .. ' ' .. data.lastname } })
					else
						TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITY]', 'Failed to update your identity, try again later or contact the server admin!' } })
					end
				end)
			else
				TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITY]', 'You don\'t have a character in slot 5!' } })
			end
		elseif charNumber == 6 then
	
			local data = {
				identifier	= data.identifier,
				firstname	= data.firstname6,
				lastname	= data.lastname6,
				dateofbirth	= data.dateofbirth6,
				sex			= data.sex6,
				height		= data.height6
			}

			if data.firstname ~= '' then
				updateIdentity(GetPlayerIdentifiers(source)[1], data, function(callback)
					if callback then
						TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITY]', 'Updated your active character to ^2' .. data.firstname .. ' ' .. data.lastname } })
					else
						TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITY]', 'Failed to update your identity, try again later or contact the server admin!' } })
					end
				end)
			else
				TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITY]', 'You don\'t have a character in slot 6!' } })
			end

		
		else
			TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITY]', 'Failed to update your identity, try again later or contact the server admin!' } })
		end

	end)
end, function(source, args, user)
	TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Insufficient permissions!' } })
end, {help = "Switch between character", params = {{name = "char", help = "the character id, ranges from 1-6"}}})

TriggerEvent('es:addGroupCommand', 'chardel', 'user', function(source, args, user)
	local charNumber = tonumber(args[1])

	if charNumber == nil or charNumber > 6 or charNumber < 1 then
		TriggerClientEvent('chat:addMessage', source, { args = { '^[IDENTITY]', 'That\'s an invalid character!' } })
		return
	end

	getCharacters(source, function(data)
	
		if charNumber == 1 then
	
			local data = {
				identifier	= data.identifier,
				firstname	= data.firstname1,
				lastname	= data.lastname1,
				dateofbirth	= data.dateofbirth1,
				sex			= data.sex1,
				height		= data.height1
			}
			
			if data.firstname ~= '' then
				deleteIdentity(GetPlayerIdentifiers(source)[1], data, function(callback)
					if callback then
						TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITY]', 'You have deleted ^1' .. data.firstname .. ' ' .. data.lastname } })
					else
						TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITY]', 'Failed to delete the character, try again later or contact the server admin!' } })
					end
				end)
			else
				TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITY]', 'You don\'t have a character in slot 1!' } })
			end
			
		elseif charNumber == 2 then
	
			local data = {
				identifier	= data.identifier,
				firstname	= data.firstname2,
				lastname	= data.lastname2,
				dateofbirth	= data.dateofbirth2,
				sex 		= data.sex2,
				height		= data.height2
			}
			
			if data.firstname ~= '' then
				deleteIdentity(GetPlayerIdentifiers(source)[1], data, function(callback)
					if callback then
						TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITY]', 'You have deleted ^1' .. data.firstname .. ' ' .. data.lastname } })
					else
						TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITY]', 'Failed to delete the character, try again later or contact the server admin!' } })
					end
				end)
			else
				TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITY]', 'You don\'t have a character in slot 2!' } })
			end
			
		elseif charNumber == 3 then
	
			local data = {
				identifier	= data.identifier,
				firstname	= data.firstname3,
				lastname	= data.lastname3,
				dateofbirth	= data.dateofbirth3,
				sex			= data.sex3,
				height		= data.height3
			}
			
			if data.firstname ~= '' then
				deleteIdentity(GetPlayerIdentifiers(source)[1], data, function(callback)
					if callback then
						TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITY]', 'You have deleted ^1' .. data.firstname .. ' ' .. data.lastname } })
					else
						TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITY]', 'Failed to delete the character, try again later or contact the server admin!' } })
					end
				end)
			else
				TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITY]', 'You don\'t have a character in slot 3!' } })
			end
		elseif charNumber == 4 then
	
			local data = {
				identifier	= data.identifier,
				firstname	= data.firstname4,
				lastname	= data.lastname4,
				dateofbirth	= data.dateofbirth4,
				sex			= data.sex4,
				height		= data.height4
			}
			
			if data.firstname ~= '' then
				deleteIdentity(GetPlayerIdentifiers(source)[1], data, function(callback)
					if callback then
						TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITY]', 'You have deleted ^1' .. data.firstname .. ' ' .. data.lastname } })
					else
						TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITY]', 'Failed to delete the character, try again later or contact the server admin!' } })
					end
				end)
			else
				TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITY]', 'You don\'t have a character in slot 4!' } })
			end
		elseif charNumber == 5 then
	
			local data = {
				identifier	= data.identifier,
				firstname	= data.firstname5,
				lastname	= data.lastname5,
				dateofbirth	= data.dateofbirth5,
				sex			= data.sex5,
				height		= data.height5
			}
			
			if data.firstname ~= '' then
				deleteIdentity(GetPlayerIdentifiers(source)[1], data, function(callback)
					if callback then
						TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITY]', 'You have deleted ^1' .. data.firstname .. ' ' .. data.lastname } })
					else
						TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITY]', 'Failed to delete the character, try again later or contact the server admin!' } })
					end
				end)
			else
				TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITY]', 'You don\'t have a character in slot 5!' } })
			end
		elseif charNumber == 6 then
	
			local data = {
				identifier	= data.identifier,
				firstname	= data.firstname6,
				lastname	= data.lastname6,
				dateofbirth	= data.dateofbirth6,
				sex			= data.sex6,
				height		= data.height6
			}
			
			if data.firstname ~= '' then
				deleteIdentity(GetPlayerIdentifiers(source)[1], data, function(callback)
					if callback then
						TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITY]', 'You have deleted ^1' .. data.firstname .. ' ' .. data.lastname } })
					else
						TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITY]', 'Failed to delete the character, try again later or contact the server admin!' } })
					end
				end)
			else
				TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITY]', 'You don\'t have a character in slot 6!' } })
			end


		else
			TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITY]', 'Failed to delete the character, try again!' } })
		end
	end)
end, function(source, args, user)
	TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Insufficient permissions!' } })
end, {help = "Delete a registered character", params = {{name = "char", help = "the character id, ranges from 1-6"}}})
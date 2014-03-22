------------
-- Locals -- 
------------

local queue = {}
local queue_mt = { __index = queue }

-----------------
-- Constructor --
-----------------

function queue.new(  )
	local queue = {}

	return setmetatable( queue, queue_mt )
end

-------------
-- Methods -- 
-------------

function queue:print()
	local string = "["
	for i=1, #self do
		string = string .. self[i]
		if (i ~= #self) then
			string = string .. ", "
		end
	end
	string = string .. "]"
	print( string )
end

function queue:add( a )
	self[#self + 1] = a
	return a
end

function queue:remove()
	return table.remove( self, 1 )
end

function queue:length(  )
	return #self
end

function queue:clear( )
	for i=1, #self do
		self:pop()
	end
end

return queue
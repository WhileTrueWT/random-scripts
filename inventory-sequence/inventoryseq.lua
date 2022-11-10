-- Outputs the Inventory Sequence (A342585 in the OEIS)
-- Yes, I just watched the new Numberphile video.

-- Keep track of how many of each number we have.
-- counts[n] = current number of n in the sequence
local counts = {}
setmetatable(counts, {__index = function() return 0 end}) -- Makes any uninitialized keys in the table return a value of 0

local function takeInventory()
    local i = 0
    while true do
        local count = counts[i]
        io.write(count .. " ")
        
        counts[count] = counts[count] + 1
        
        if count == 0 then
            return
        end
        
        i = i + 1
    end
end

while true do
    takeInventory()
end

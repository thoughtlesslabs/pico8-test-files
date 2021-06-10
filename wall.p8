pico-8 cartridge // http://www.pico-8.com
version 32
__lua__
-- wall bounce tests

function _init()
	bx = 8
	by = 8
	bdx = 0
	bdy = 0
end

function _update60()

	
	if bx > 120 or bx < 5 then
		bdx = -bdx
		
	end
	if by < 5 or by > 120 then
		bdy = -bdy
	end
	if btnp(4) then
		bdx = 1
	elseif btnp(5) then
		bdy = 1
	end
	
	bdy = bdy*0.8
	
	bx += bdx
	by += bdy
end

function _draw()
	cls()
	circfill(bx,by,5,4)
	print(bdx)
	print(bdy)

end
__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000

pico-8 cartridge // http://www.pico-8.com
version 32
__lua__
-- wall bounce tests

function _init()
	bx = 50
	by = 50
	bdx = 0
	bdy = 1
	bdx_max = 2
end

function _update60()
	if bdx < bdx_max then
		if btn(0) then
			bdx += -0.5
		elseif btn(1) then
			bdx += 0.5
		end
	end
	if btnp(2) then
		bdy = -5
	end
	
	if by == 110 then
		bdx /=1.05
	end
	if abs(bdx) < 0.05 then 
		bdx=0
	end
	
	bdy += 0.3
	bx += bdx
	by += bdy + 0.5
	
	check_collision(bx,by)

	bx = mid(5,bx,120)
	by = mid(5,by,110)

end

function _draw()
	cls()
	circfill(bx,by,5,4)
	print(by)
	print(bdy)

end

function check_collision(x,y)
	if x > 120 or x < 5 then
		bdx = -bdx
	end
	if y < 5 or y >= 110 then
			bdy = -bdy
	end
end
__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000

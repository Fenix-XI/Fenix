cmdprops =
{
    permission = 0,
    parameters = ""
};
function onTrigger(player)
            spawn = math.random((1),(4))
			if (spawn==1) then
            player:setPos('-9', '-9', '10', '0', '71'); --NW
			elseif (spawn==2) then
			player:setPos('-9.887', '-9.915', '-9.285', '0', '71'); --SW
			elseif (spawn==3) then
			player:setPos('10', '-9', '10', '0', '71'); --NE
			else
            player:setPos('10.088', '-10.000', '-9.285', '0', '71'); --SE
			end
end			
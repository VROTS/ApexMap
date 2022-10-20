 --[[
Items change to other items over time
By Nolan Ritchie

NO NEED TO EDIT ANYTHING HERE
ONLY EDIT timetracker_definitions.lua

]]
if ProceduralDistributions ~= nil then
if isClient() then return end
end
--Modified by AiweLeliaThamm
require "NDRecipeActions.lua"

function GFloadItem(item)
    
    if(ItemTimeTrackerMod[item:getType()] ~= nil) then
        itemFound = true;
        item:getModData().Life = ItemTimeTrackerMod[item:getType()]["Life"];
        item:getModData().TurnInto = ItemTimeTrackerMod[item:getType()]["TurnInto"];
        item:getModData().StartYear = getGameTime():getYear();
        item:getModData().StartMonth = getGameTime():getMonth();
        item:getModData().StartDay = getGameTime():getDay();
	item:getModData().StartHour = getGameTime():getHour();
        
        --print("loadItem ",item:getType(),item:getModData().Life,item:getModData().TurnInto,item:getModData().StartTime)
        return true;
    else
        return false;
    end
end

function GFreplaceItem(container,item)
                        			--getPlayer():Say(tostring(item:getType()));
                        			--item:getModData().Life = item:getModData().Life - (getGameTime():getWorldAgeHours() - item:getModData().Life);
						if item:getModData().Life ~= nil and item:getModData().StartHour ~= nil then
							--local delta = (getGameTime():getWorldAgeHours() - item:getModData().StartTime);
local daysinMonth = { 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 };
local hoursElapsed = 0;
if getGameTime():getYear() - item:getModData().StartYear > 0 then
	hoursElapsed = hoursElapsed + (24 - item:getModData().StartHour);
	hoursElapsed = hoursElapsed + (daysinMonth[item:getModData().StartMonth - 1] - item:getModData().StartDay)*24;
	for i=item:getModData().StartMonth + 1, 12, 1 do
		hoursElapsed = hoursElapsed + daysinMonth[i-1]*24;
	end
	if getGameTime():getYear() - item:getModData().StartYear > 1 then
		hoursElapsed = hoursElapsed + (getGameTime():getYear() - item:getModData().StartYear - 1)*365*24;
	end
	for i=1, getGameTime():getMonth() - 1, 1 do
		hoursElapsed = hoursElapsed + daysinMonth[i-1]*24;
	end
	for i=1, getGameTime():getDay() - 1, 1 do
		hoursElapsed = hoursElapsed + 24;
	end
	hoursElapsed = hoursElapsed + (getGameTime():getHour() - 1);
else
	if item:getModData().StartMonth == nil and (ItemTimeTrackerMod[item:getType()] ~= nil) then
		item:getModData().StartMonth = getGameTime():getMonth();
	end
	if (getGameTime():getMonth() - item:getModData().StartMonth) > 0 then
		if item:getModData().StartDay == nil and (ItemTimeTrackerMod[item:getType()] ~= nil) then
			item:getModData().StartDay = getGameTime():getDay();
		end
		if item:getModData().StartYear == nil and (ItemTimeTrackerMod[item:getType()] ~= nil) then
			item:getModData().StartYear = getGameTime():getYear();
		end
		if item:getModData().StartHour == nil and (ItemTimeTrackerMod[item:getType()] ~= nil) then
			item:getModData().StartHour = getGameTime():getHour();
		end
		hoursElapsed = hoursElapsed + (daysinMonth[item:getModData().StartMonth - 1] - item:getModData().StartDay)*24;
		if getGameTime():getMonth() - item:getModData().StartMonth > 1 then
			for i=item:getModData().StartMonth + 1, getGameTime():getMonth() - 1, 1 do
				hoursElapsed = hoursElapsed + daysinMonth[i-1]*24;
			end
		end
		hoursElapsed = hoursElapsed + (getGameTime():getDay() - 1)*24;
		hoursElapsed = hoursElapsed + getGameTime():getHour();
	else
		if getGameTime():getDay() - item:getModData().StartDay > 0 then
			hoursElapsed = hoursElapsed + (24 - item:getModData().StartHour);
			if getGameTime():getDay() - item:getModData().StartDay > 1 then
				for i=item:getModData().StartDay, getGameTime():getDay() - 1, 1 do
					hoursElapsed = hoursElapsed + 24;
				end
			end
			hoursElapsed = hoursElapsed + (getGameTime():getHour() - 1);
		else
			hoursElapsed = hoursElapsed + getGameTime():getHour() - item:getModData().StartHour;
		end
	end
end
							if hoursElapsed<0 then
								--FIx server time error bug
        							item:getModData().StartYear = getGameTime():getYear();
        							item:getModData().StartMonth = getGameTime():getMonth();
        							item:getModData().StartDay = getGameTime():getDay();
								item:getModData().StartHour = getGameTime():getHour();
								--delta = (getGameTime():getWorldAgeHours() - item:getModData().StartTime)
							end
							
							if(item:getModData().Life < hoursElapsed) then
								
								if item:getModData().TurnInto~="" then
									local temp = container:AddItem(item:getModData().TurnInto);							
									if (temp) then GFloadItem(temp) 
									
										dataCheck(item,temp)
																		
										container:addItemOnServer(temp);  
										--print("item:getModData().TurnInto",item:getModData().TurnInto) 
									end      
								end
								
								container:DoRemoveItem(item);
								container:removeItemOnServer(item);
								--print("replaceItem",item:getType(),item:getModData().TurnInto,item:getModData().Life,getGameTime():getWorldAgeHours(),item:getModData().StartTime,delta)
							end
						end
end
function dataCheck(item,temp)
										--������B �����Q��� �E�Q���D��
										if (item:getCategory() == "Container") and (temp:getCategory() == "Container") then
											temp:getInventory():setItems(item:getInventory():getItems())
											--��F���D�G�E���� �E�Q���D��E											--��J�C�Z�E�������� �E����E�E�E����E�E��E"��E��E
											if string.find(item:getModData().TurnInto,"hungry") then
												temp:setName("hungry "..item:getName());
											else
												temp:setName(item:getName());
											end
										elseif (item:getCategory() == "Literature") and (temp:getCategory() == "Literature") then
											--������B ���������B�E���I�M��
											recipe_saveOldPages(item,temp,getPlayer())
										end
end

function GFContainerHandle(container)

    local items = container:getItems();
    if(items ~= nil) then
        for i=0,items:size()-1 do
            if(items:get(i) ~= nil) then

                if (items:get(i):getCategory() == "Container") then
                   GFContainerHandle(items:get(i):getItemContainer()) ;
					
					         GFreplaceItem(container,items:get(i))
                else
                    if(items:get(i):getModData().Life == nil) then
                        GFloadItem(items:get(i));
                    else
						            GFreplaceItem(container,items:get(i))
                    end
                end
            end
        end
    end
end

function GFWorldItemReplace(item,square)
 
            --local delta = (getGameTime():getWorldAgeHours() - item:getModData().StartTime)
            --print("WorldItemReplace",item:getType(),item:getModData().Life,getGameTime():getWorldAgeHours(),item:getModData().StartTime,delta)
local daysinMonth = { 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 };
local hoursElapsed = 0;
if getGameTime():getYear() - item:getModData().StartYear > 0 then
	hoursElapsed = hoursElapsed + (24 - item:getModData().StartHour);
	hoursElapsed = hoursElapsed + (daysinMonth[item:getModData().StartMonth - 1] - item:getModData().StartDay)*24;
	for i=item:getModData().StartMonth + 1, 12, 1 do
		hoursElapsed = hoursElapsed + daysinMonth[i-1]*24;
	end
	if getGameTime():getYear() - item:getModData().StartYear > 1 then
		hoursElapsed = hoursElapsed + (getGameTime():getYear() - item:getModData().StartYear - 1)*365*24;
	end
	for i=1, getGameTime():getMonth() - 1, 1 do
		hoursElapsed = hoursElapsed + daysinMonth[i-1]*24;
	end
	for i=1, getGameTime():getDay() - 1, 1 do
		hoursElapsed = hoursElapsed + 24;
	end
	hoursElapsed = hoursElapsed + (getGameTime():getHour() - 1);
else
	if getGameTime():getMonth() - item:getModData().StartMonth > 0 then
		hoursElapsed = hoursElapsed + (daysinMonth[item:getModData().StartMonth - 1] - item:getModData().StartDay)*24;
		if getGameTime():getMonth() - item:getModData().StartMonth > 1 then
			for i=item:getModData().StartMonth + 1, getGameTime():getMonth() - 1, 1 do
				hoursElapsed = hoursElapsed + daysinMonth[i-1]*24;
			end
		end
		hoursElapsed = hoursElapsed + (getGameTime():getDay() - 1)*24;
		hoursElapsed = hoursElapsed + getGameTime():getHour();
	else
		if getGameTime():getDay() - item:getModData().StartDay > 0 then
			hoursElapsed = hoursElapsed + (24 - item:getModData().StartHour);
			if getGameTime():getDay() - item:getModData().StartDay > 1 then
				for i=item:getModData().StartDay, getGameTime():getDay() - 1, 1 do
					hoursElapsed = hoursElapsed + 24;
				end
			end
			hoursElapsed = hoursElapsed + (getGameTime():getHour() - 1);
		else
			hoursElapsed = hoursElapsed + getGameTime():getHour() - item:getModData().StartHour;
		end
	end
end
			
							if hoursElapsed<0 then
								--FIx server time error bug
        							item:getModData().StartYear = getGameTime():getYear();
        							item:getModData().StartMonth = getGameTime():getMonth();
        							item:getModData().StartDay = getGameTime():getDay();
								item:getModData().StartHour = getGameTime():getHour();
							end
							
            if(item:getModData().Life < hoursElapsed) then
        
                local WI = item:getWorldItem();
                square:transmitRemoveItemFromSquare(WI);
                WI:removeFromSquare();
                if item:getModData().TurnInto~="" or item:getModData().TurnInto~="out" then
                  local temp = instanceItem(item:getModData().TurnInto);
					if (temp) then 
						GFloadItem(temp) 
						dataCheck(item,temp)
					end
                  temp = square:AddWorldInventoryItem(temp, 0.5, 0.5, 0, true);   
                  --print("item:getModData().TurnInto",item:getModData().TurnInto)         
                end
                
            end
end
function GFWorldItemHandle(item,square)

   -- if (item:getCategory() == "Container") then
   --        GFContainerHandle(item:getItemContainer()) ;
   --         
  --        GFreplaceItem(container,item)
   -- else

        if (item:getModData().Life == nil) then
            GFloadItem(item);
        else
        
            if (item:getCategory() == "Container") then
                   GFContainerHandle(item:getItemContainer()) ;
            end
            --getPlayer():Say(tostring(item:getType()));
            --item:getModData().Life = item:getModData().Life - (getGameTime():getWorldAgeHours() - item:getModData().Life);
           GFWorldItemReplace(item,square)
        end
   -- end

end

function GFItemCheck()
	if getPlayer() ~= nil then
		GFContainerHandle(getPlayer():getInventory());
	end
    local cell = getWorld():getCell();
if cell ~= nil then
    for x=(cell:getMinX()+10), (cell:getMaxX()-10) do
        for y=(cell:getMinY()+10), (cell:getMaxY()-10) do
            for z=(cell:getMinZ()), (cell:getMaxZ()) do
            
                local sq = cell:getGridSquare(x,y,z);
                if(sq ~= nil) then
                    local items = sq:getObjects();
                    for j=0, items:size()-1 do
                        if(items:get(j):getContainer() ~= nil) then
                           GFContainerHandle(items:get(j):getContainer());                             
                        end
                    end
                    local items = sq:getWorldObjects();
                    for j=0, items:size()-1 do
                        if(items:get(j) and items:get(j):getItem()) then
                            GFWorldItemHandle(items:get(j):getItem(),sq);
                        end
                    end
                end
                
            end
        end
    end
end
end

Events.OnGameStart.Add(GFItemCheck);
Events.EveryDays.Add(GFItemCheck);
--Events.EveryTenMinutes.Add(ItemCheck); 
--Events.OnTick.Add(ItemCheck);
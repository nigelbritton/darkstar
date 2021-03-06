-----------------------------------
-- Area: Windurst Woods
--  NPC: Wetata
-- Starts Trusts
-- @zone: 241
--  @pos 7.800 -3.5 -10.064
-----------------------------------
local ID = require("scripts/zones/Windurst_Woods/IDs")
require("scripts/globals/keyitems")
require("scripts/globals/zone")

function onTrigger(player,npc)

    local pNation = player:getNation();

    player:addKeyItem(WINDURST_TRUST_PERMIT);
    player:addKeyItem(GREEN_INSTITUTE_CARD);

    if (pNation == dsp.nation.WINDURST and player:hasKeyItem(WINDURST_TRUST_PERMIT) == false and player:getMainLvl()>=5) then
        player:addKeyItem(WINDURST_TRUST_PERMIT);
	    player:addKeyItem(GREEN_INSTITUTE_CARD);
	    player:messageSpecial(KEYITEM_OBTAINED, WINDURST_TRUST_PERMIT);
	    player:messageSpecial(KEYITEM_OBTAINED, GREEN_INSTITUTE_CARD);
    elseif (pNation == dsp.nation.WINDURST and player:hasKeyItem(GREEN_INSTITUTE_CARD) == false and player:getMainLvl()>=5) then
        player:addKeyItem(GREEN_INSTITUTE_CARD);
        player:messageSpecial(KEYITEM_OBTAINED, GREEN_INSTITUTE_CARD);
        player:PrintToPlayer("Wetata : If you find any of those Cipher thingies, trade them to me.", 0xD);
    elseif (pNation == dsp.nation.WINDURST and player:hasKeyItem(GREEN_INSTITUTE_CARD) == false and player:getMainLvl()>=5) then
        player:addKeyItem(GREEN_INSTITUTE_CARD);
        player:messageSpecial(KEYITEM_OBTAINED, GREEN_INSTITUTE_CARD);
        player:PrintToPlayer("Wetata : If you find any of those Cipher thingies, trade them to me.", 0xD);
    elseif (pNation == dsp.nation.WINDURST and player:hasKeyItem(WINDURST_TRUST_PERMIT) == true and player:hasKeyItem(GREEN_INSTITUTE_CARD) == true and player:getMainLvl()>=5) then
        player:PrintToPlayer("Wetata : If you find any of those Cipher thingies, trade them to me.", 0xD);
    else
        player:PrintToPlayer("Wetata : You seem to be from another Nation. Sadly I cantaru help you", 0xD);
    end
end

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
	-- printf("RESULT: %u",option);
end

function onEventFinish(player,csid,option)
	-- printf("CSID: %u",csid);
	-- printf("RESULT: %u",option);
end
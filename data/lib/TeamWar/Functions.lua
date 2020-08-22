function getPlayerMeleeSkill(cid)
    return {[0] = getPlayerSkillLevel(cid, SKILL_FIST), [1] = getPlayerSkillLevel(cid, SKILL_CLUB), [2] = getPlayerSkillLevel(cid, SKILL_SWORD), [3] = getPlayerSkillLevel(cid, SKILL_AXE)}
end

function doPlayerAddMeleeSkill(cid, amount)
local rate = getConfigInfo('rateSkill')
    for i = 0, 3 do
        doPlayerAddSkillTry(cid, i, math.ceil((getPlayerRequiredSkillTries(cid, i, getPlayerSkillLevel(cid, i) + 1) - getPlayerSkillTries(cid, i)) / rate))
    end
end
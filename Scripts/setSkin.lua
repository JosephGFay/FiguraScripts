-- Desc: This script sets the skin of the avatar to the skin texture provided in the parameter.

local root = models.model.root -- Gets the root model
avatar = { -- Table of all the parts of the avatar
    hat = root.Head.Hat,
    head = root.Head.Head,
    body = root.Body.Body,
    jacket = root.Body.Jacket,
    leftArm = root.LeftArm.LeftArm,
    leftSleeve = root.LeftArm["Left Sleeve"],
    rightArm = root.RightArm.RightArm,
    rightSleeve = root.RightArm["Right Sleeve"],
    leftLeg = root.LeftLeg.LeftLeg,
    leftPants = root.LeftLeg["Left Pants"],
    rightLeg = root.RightLeg.RightLeg,
    rightPants = root.RightLeg["Right Pants"]
}

function setSkin(skin) -- Function to set the skin
    for _, part in pairs(avatar) do -- Loops through all the parts of the avatar
        part:setPrimaryTexture(skin) -- Sets the texture of the part to the skin
    end
end

setSkin('SKIN') -- Call the function to set the skin to whatever string parameter supplied.
--[[-------------------------------------------------------------------------------------

End game credits

---------------------------------------------------------------------------------------]]
local C = {}

local creditFontSize = 48

local names =
{
    "By Romero Games and...",
    "",

    "Aindriu Naughton",
    "Aishling Heavey",
    "Benjamin Juric",
    "Cathal McGinty",
    "Conn Naughton",
    "Daire Naughton",
    "Daniel Egan",
    "Ellie Chapman",
    "Evie O Connell",
    "Fionn Campbell",
    "Gioia Aimi",
    "Glen Kelly",
    "Harry Duggan Webb",
    "Harry Tobin",
    "Holly Pettersson Gallen",
    "Jack Monaghan",
    "Liam McGinty",
    "Maeve Williams",
    "Maya Krstinic",
    "Nathan Slattery",
    "Nathan Ward",
    "Matthew Williams",
    "Rhys Aimi",
    "Robyn Conroy Broderick",
    "Rory Leyland",
    "Seosamh Hickey Nuevalos",
    "Lochlainn Lohan",
    "Conal O’ Donnell",
    "Barry Murhy",
    "Enda Murphy",
    "Jonas Klauer",
    "Thorben Klauer",
    "Sultan Qureshi",
    "Markuss Komarovs",
    "Michael Lockett",
    "Jack Gildea",
    "Jack Sinden",
    "Sean McDermott",
    "Kyle Kennedy",
    "Ariene Traynor",
}

function C.rollCredits()
    local creditString = ""
    for i=1,#names do
        creditString = creditString..names[i].."\n"
    end

    local credits = display.newText({ text = creditString, x = display.contentWidth / 2, y = display.contentHeight, fontSize = creditFontSize, font = "godofwar.ttf", align = "center" } )
    credits.anchorY = 0

    transition.moveTo(credits, {time = 30000, x = display.contentWidth / 2, y = -(#names * creditFontSize * 1.1)})
end

return C

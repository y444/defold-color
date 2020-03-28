color = {}

function color.is_valid(new_color)
	if string.match(new_color, '#%x%x%x%x%x%x%x%x') == new_color then return true
	else assert(nil, "Please pass the correct color format: '#00000000'")
	end
end

function color.is_valid_name(new_color_name)
	if color[new_color_name] == nil then return true
	else assert(nil, "Please provide a unique color name as yours is already taken")
	end
end

function color.set(new_color)
	if color.is_valid(new_color) then
		local r = tonumber('0x' .. string.sub(new_color, 2,3), 16) / 255
		local g = tonumber('0x' .. string.sub(new_color, 4,5), 16) / 255
		local b = tonumber('0x' .. string.sub(new_color, 6,7), 16) / 255
		local a = tonumber('0x' .. string.sub(new_color, 8,9), 16) / 255
		return vmath.vector4(r, g, b, a)
	end
end

function color.add(new_color_name, new_color)
	if color.is_valid(new_color) and color.is_valid_name(new_color_name) then
		color[new_color_name] = color.set(new_color)
	end
end

color.indianred = color.set('#CD5C5CFF')
color.lightcoral = color.set('#F08080FF')
color.salmon = color.set('#FA8072FF')
color.darksalmon = color.set('#E9967AFF')
color.lightsalmon = color.set('#FFA07AFF')
color.crimson = color.set('#DC143CFF')
color.red = color.set('#FF0000FF')
color.firebrick = color.set('#B22222FF')
color.darkred = color.set('#8B0000FF')
color.pink = color.set('#FFC0CBFF')
color.lightpink = color.set('#FFB6C1FF')
color.hotpink = color.set('#FF69B4FF')
color.deeppink = color.set('#FF1493FF')
color.mediumvioletred = color.set('#C71585FF')
color.palevioletred = color.set('#DB7093FF')
color.lightsalmon = color.set('#FFA07AFF')
color.coral = color.set('#FF7F50FF')
color.tomato = color.set('#FF6347FF')
color.orangered = color.set('#FF4500FF')
color.darkorange = color.set('#FF8C00FF')
color.orange = color.set('#FFA500FF')
color.gold = color.set('#FFD700FF')
color.yellow = color.set('#FFFF00FF')
color.lightyellow = color.set('#FFFFE0FF')
color.lemonchiffon = color.set('#FFFACDFF')
color.lightgoldenrodyellow = color.set('#FAFAD2FF')
color.papayawhip = color.set('#FFEFD5FF')
color.moccasin = color.set('#FFE4B5FF')
color.peachpuff = color.set('#FFDAB9FF')
color.palegoldenrod = color.set('#EEE8AAFF')
color.khaki = color.set('#F0E68CFF')
color.darkkhaki = color.set('#BDB76BFF')
color.lavender = color.set('#E6E6FAFF')
color.thistle = color.set('#D8BFD8FF')
color.plum = color.set('#DDA0DDFF')
color.violet = color.set('#EE82EEFF')
color.orchid = color.set('#DA70D6FF')
color.fuchsia = color.set('#FF00FFFF')
color.magenta = color.set('#FF00FFFF')
color.mediumorchid = color.set('#BA55D3FF')
color.mediumpurple = color.set('#9370DBFF')
color.rebeccapurple = color.set('#663399FF')
color.blueviolet = color.set('#8A2BE2FF')
color.darkviolet = color.set('#9400D3FF')
color.darkorchid = color.set('#9932CCFF')
color.darkmagenta = color.set('#8B008BFF')
color.purple = color.set('#800080FF')
color.indigo = color.set('#4B0082FF')
color.slateblue = color.set('#6A5ACDFF')
color.darkslateblue = color.set('#483D8BFF')
color.mediumslateblue = color.set('#7B68EEFF')
color.greenyellow = color.set('#ADFF2FFF')
color.chartreuse = color.set('#7FFF00FF')
color.lawngreen = color.set('#7CFC00FF')
color.lime = color.set('#00FF00FF')
color.limegreen = color.set('#32CD32FF')
color.palegreen = color.set('#98FB98FF')
color.lightgreen = color.set('#90EE90FF')
color.mediumspringgreen = color.set('#00FA9AFF')
color.springgreen = color.set('#00FF7FFF')
color.mediumseagreen = color.set('#3CB371FF')
color.seagreen = color.set('#2E8B57FF')
color.forestgreen = color.set('#228B22FF')
color.green = color.set('#008000FF')
color.darkgreen = color.set('#006400FF')
color.yellowgreen = color.set('#9ACD32FF')
color.olivedrab = color.set('#6B8E23FF')
color.olive = color.set('#808000FF')
color.darkolivegreen = color.set('#556B2FFF')
color.mediumaquamarine = color.set('#66CDAAFF')
color.darkseagreen = color.set('#8FBC8BFF')
color.lightseagreen = color.set('#20B2AAFF')
color.darkcyan = color.set('#008B8BFF')
color.teal = color.set('#008080FF')
color.aqua = color.set('#00FFFFFF')
color.cyan = color.set('#00FFFFFF')
color.lightcyan = color.set('#E0FFFFFF')
color.paleturquoise = color.set('#AFEEEEFF')
color.aquamarine = color.set('#7FFFD4FF')
color.turquoise = color.set('#40E0D0FF')
color.mediumturquoise = color.set('#48D1CCFF')
color.darkturquoise = color.set('#00CED1FF')
color.cadetblue = color.set('#5F9EA0FF')
color.steelblue = color.set('#4682B4FF')
color.lightsteelblue = color.set('#B0C4DEFF')
color.powderblue = color.set('#B0E0E6FF')
color.lightblue = color.set('#ADD8E6FF')
color.skyblue = color.set('#87CEEBFF')
color.lightskyblue = color.set('#87CEFAFF')
color.deepskyblue = color.set('#00BFFFFF')
color.dodgerblue = color.set('#1E90FFFF')
color.cornflowerblue = color.set('#6495EDFF')
color.mediumslateblue = color.set('#7B68EEFF')
color.royalblue = color.set('#4169E1FF')
color.blue = color.set('#0000FFFF')
color.mediumblue = color.set('#0000CDFF')
color.darkblue = color.set('#00008BFF')
color.navy = color.set('#000080FF')
color.midnightblue = color.set('#191970FF')
color.cornsilk = color.set('#FFF8DCFF')
color.blanchedalmond = color.set('#FFEBCDFF')
color.bisque = color.set('#FFE4C4FF')
color.navajowhite = color.set('#FFDEADFF')
color.wheat = color.set('#F5DEB3FF')
color.burlywood = color.set('#DEB887FF')
color.tan = color.set('#D2B48CFF')
color.rosybrown = color.set('#BC8F8FFF')
color.sandybrown = color.set('#F4A460FF')
color.goldenrod = color.set('#DAA520FF')
color.darkgoldenrod = color.set('#B8860BFF')
color.peru = color.set('#CD853FFF')
color.chocolate = color.set('#D2691EFF')
color.saddlebrown = color.set('#8B4513FF')
color.sienna = color.set('#A0522DFF')
color.brown = color.set('#A52A2AFF')
color.maroon = color.set('#800000FF')
color.white = color.set('#FFFFFFFF')
color.snow = color.set('#FFFAFAFF')
color.honeydew = color.set('#F0FFF0FF')
color.mintcream = color.set('#F5FFFAFF')
color.azure = color.set('#F0FFFFFF')
color.aliceblue = color.set('#F0F8FFFF')
color.ghostwhite = color.set('#F8F8FFFF')
color.whitesmoke = color.set('#F5F5F5FF')
color.seashell = color.set('#FFF5EEFF')
color.beige = color.set('#F5F5DCFF')
color.oldlace = color.set('#FDF5E6FF')
color.floralwhite = color.set('#FFFAF0FF')
color.ivory = color.set('#FFFFF0FF')
color.antiquewhite = color.set('#FAEBD7FF')
color.linen = color.set('#FAF0E6FF')
color.lavenderblush = color.set('#FFF0F5FF')
color.mistyrose = color.set('#FFE4E1FF')
color.gainsboro = color.set('#DCDCDCFF')
color.lightgray = color.set('#D3D3D3FF')
color.silver = color.set('#C0C0C0FF')
color.darkgray = color.set('#A9A9A9FF')
color.gray = color.set('#808080FF')
color.dimgray = color.set('#696969FF')
color.lightslategray = color.set('#778899FF')
color.slategray = color.set('#708090FF')
color.darkslategray = color.set('#2F4F4FFF')
color.black = color.set('#000000FF')

return color
Extension { #name : #Color }

{ #category : #'*MoreColors' }
Color class >> blueColorNames [
	"self blueColorNames"

	^ Color registeredColorNames
		select: [ :s | 
			(s asLowercase includesSubstring: 'blue')
				or: [ | col |
					col := Color named: s.
					col blue > (col green + 0.3)
						and: [ col blue > (col red + 0.3) and: [ (col green - col red) abs < 0.4 ] ] ] ]
]

{ #category : #'*MoreColors' }
Color class >> blueColors [
	"self blueColors asArray"

	^ self blueColorNames collect: [ :each | Color named: each ]
]

{ #category : #'*MoreColors' }
Color class >> blueGreenColorNames [
	^ Color registeredColorNames
		select: [ :s | 
			| col |
			col := Color named: s.
			col green > col red and: [ col red < 0.3 and: [ (col green - col blue) abs < 0.1 ] ] ]
]

{ #category : #'*MoreColors' }
Color class >> blueGreenColors [
	"self blueGreenColors asArray"

		^ self blueGreenColorNames  collect: [ :each | Color named: each ]
]

{ #category : #'*MoreColors' }
Color class >> brightColorNames [

	^  (Color registeredColorNames select: [ :s | (Color named: s) brightness > 0.6 ])
		
]

{ #category : #'*MoreColors' }
Color class >> brightColors [
	"self brightColors asArray"

		^ self brightColorNames collect: [ :each | Color named: each ]
]

{ #category : #'*MoreColors' }
Color class >> brownColorNames [
	"self brownColorNames asArray"

	^ Color registeredColorNames
		select: [ :s | 
			(s asLowercase includesSubstring: 'brown')
				or: [ | col |
					col := Color named: s.
					col red >= col green and: [ col green > col blue and: [ col red - col green < 0.5 and: [ col green - col blue < 0.3 ] ] ] ] ]
]

{ #category : #'*MoreColors' }
Color class >> brownColors [
	"self brownColors asArray inspect"

	^ self brownColorNames collect: [ :each | Color named: each ]
]

{ #category : #'*MoreColors' }
Color class >> colorNamesEmacs [

	^ #(#(#snow #(1.00 0.98 0.98)) #(#ghostWhite #(0.97 0.97 1.00)) #(#whiteSmoke #(0.96 0.96 0.96)) #(#gainsboro #(0.86 0.86 0.86)) #(#floralWhite #(1.00 0.98 0.94)) #(#oldLace #(0.99 0.96 0.90)) #(#linen #(0.98 0.94 0.90)) #(#antiqueWhite #(0.98 0.92 0.84)) #(#papayaWhip #(1.00 0.94 0.84)) #(#blanchedAlmond #(1.00 0.92 0.80)) #(#bisque #(1.00 0.89 0.77)) #(#peachPuff #(1.00 0.85 0.73)) #(#navajoWhite #(1.00 0.87 0.68)) #(#moccasin #(1.00 0.89 0.71)) #(#cornsilk #(1.00 0.97 0.86)) #(#ivory #(1.00 1.00 0.94)) #(#lemonChiffon #(1.00 0.98 0.80)) #(#seashell #(1.00 0.96 0.93)) #(#honeydew #(0.94 1.00 0.94)) #(#mintCream #(0.96 1.00 0.98)) #(#azure #(0.94 1.00 1.00)) #(#aliceBlue #(0.94 0.97 1.00)) #(#lavender #(0.90 0.90 0.98)) #(#lavenderBlush #(1.00 0.94 0.96)) #(#mistyRose #(1.00 0.89 0.88)) #(#white #(1.00 1.00 1.00)) #(#black #(0.00 0.00 0.00)) #(#darkSlateGray #(0.18 0.31 0.31)) #(#darkSlateGrey #(0.18 0.31 0.31)) #(#dimGray #(0.41 0.41 0.41)) #(#dimGrey #(0.41 0.41 0.41)) #(#slateGray #(0.44 0.50 0.56)) #(#slateGrey #(0.44 0.50 0.56)) #(#lightSlateGray #(0.47 0.53 0.60)) #(#lightSlateGrey #(0.47 0.53 0.60)) #(#gray #(0.75 0.75 0.75)) #(#grey #(0.75 0.75 0.75)) #(#lightGrey #(0.83 0.83 0.83)) #(#lightGray #(0.83 0.83 0.83)) #(#midnightBlue #(0.10 0.10 0.44)) #(#navy #(0.00 0.00 0.50)) #(#navyBlue #(0.00 0.00 0.50)) #(#cornflowerBlue #(0.39 0.58 0.93)) #(#darkSlateBlue #(0.28 0.24 0.55)) #(#slateBlue #(0.42 0.35 0.80)) #(#mediumSlateBlue #(0.48 0.41 0.93)) #(#lightSlateBlue #(0.52 0.44 1.00)) #(#mediumBlue #(0.00 0.00 0.80)) #(#royalBlue #(0.25 0.41 0.88)) #(#blue #(0.00 0.00 1.00)) #(#dodgerBlue #(0.12 0.56 1.00)) #(#deepSkyBlue #(0.00 0.75 1.00)) #(#skyBlue #(0.53 0.81 0.92)) #(#lightSkyBlue #(0.53 0.81 0.98)) #(#steelBlue #(0.27 0.51 0.71)) #(#lightSteelBlue #(0.69 0.77 0.87)) #(#lightBlue #(0.68 0.85 0.90)) #(#powderBlue #(0.69 0.88 0.90)) #(#paleTurquoise #(0.69 0.93 0.93)) #(#darkTurquoise #(0.00 0.81 0.82)) #(#mediumTurquoise #(0.28 0.82 0.80)) #(#turquoise #(0.25 0.88 0.82)) #(#cyan #(0.00 1.00 1.00)) #(#lightCyan #(0.88 1.00 1.00)) #(#cadetBlue #(0.37 0.62 0.63)) #(#mediumAquamarine #(0.40 0.80 0.67)) #(#aquamarine #(0.50 1.00 0.83)) #(#darkGreen #(0.00 0.39 0.00)) #(#darkOliveGreen #(0.33 0.42 0.18)) #(#darkSeaGreen #(0.56 0.74 0.56)) #(#seaGreen #(0.18 0.55 0.34)) #(#mediumSeaGreen #(0.24 0.70 0.44)) #(#lightSeaGreen #(0.13 0.70 0.67)) #(#paleGreen #(0.60 0.98 0.60)) #(#springGreen #(0.00 1.00 0.50)) #(#lawnGreen #(0.49 0.99 0.00)) #(#green #(0.00 1.00 0.00)) #(#chartreuse #(0.50 1.00 0.00)) #(#mediumSpringGreen #(0.00 0.98 0.60)) #(#greenYellow #(0.68 1.00 0.18)) #(#limeGreen #(0.20 0.80 0.20)) #(#yellowGreen #(0.60 0.80 0.20)) #(#forestGreen #(0.13 0.55 0.13)) #(#oliveDrab #(0.42 0.56 0.14)) #(#darkKhaki #(0.74 0.72 0.42)) #(#khaki #(0.94 0.90 0.55)) #(#paleGoldenrod #(0.93 0.91 0.67)) #(#lightGoldenrodYellow #(0.98 0.98 0.82)) #(#lightYellow #(1.00 1.00 0.88)) #(#yellow #(1.00 1.00 0.00)) #(#gold #(1.00 0.84 0.00)) #(#lightGoldenrod #(0.93 0.87 0.51)) #(#goldenrod #(0.85 0.65 0.13)) #(#darkGoldenrod #(0.72 0.53 0.04)) #(#rosyBrown #(0.74 0.56 0.56)) #(#indianRed #(0.80 0.36 0.36)) #(#saddleBrown #(0.55 0.27 0.07)) #(#sienna #(0.63 0.32 0.18)) #(#peru #(0.80 0.52 0.25)) #(#burlywood #(0.87 0.72 0.53)) #(#beige #(0.96 0.96 0.86)) #(#wheat #(0.96 0.87 0.70)) #(#sandyBrown #(0.96 0.64 0.38)) #(#tan #(0.82 0.71 0.55)) #(#chocolate #(0.82 0.41 0.12)) #(#firebrick #(0.70 0.13 0.13)) #(#brown #(0.65 0.16 0.16)) #(#darkSalmon #(0.91 0.59 0.48)) #(#salmon #(0.98 0.50 0.45)) #(#lightSalmon #(1.00 0.63 0.48)) #(#orange #(1.00 0.65 0.00)) #(#darkOrange #(1.00 0.55 0.00)) #(#coral #(1.00 0.50 0.31)) #(#lightCoral #(0.94 0.50 0.50)) #(#tomato #(1.00 0.39 0.28)) #(#orangeRed #(1.00 0.27 0.00)) #(#red #(1.00 0.00 0.00)) #(#hotPink #(1.00 0.41 0.71)) #(#deepPink #(1.00 0.08 0.58)) #(#pink #(1.00 0.75 0.80)) #(#lightPink #(1.00 0.71 0.76)) #(#paleVioletRed #(0.86 0.44 0.58)) #(#maroon #(0.69 0.19 0.38)) #(#mediumVioletRed #(0.78 0.08 0.52)) #(#violetRed #(0.82 0.13 0.56)) #(#magenta #(1.00 0.00 1.00)) #(#violet #(0.93 0.51 0.93)) #(#plum #(0.87 0.63 0.87)) #(#orchid #(0.85 0.44 0.84)) #(#mediumOrchid #(0.73 0.33 0.83)) #(#darkOrchid #(0.60 0.20 0.80)) #(#darkViolet #(0.58 0.00 0.83)) #(#blueViolet #(0.54 0.17 0.89)) #(#purple #(0.63 0.13 0.94)) #(#mediumPurple #(0.58 0.44 0.86)) #(#thistle #(0.85 0.75 0.85)) #(#snow1 #(1.00 0.98 0.98)) #(#snow2 #(0.93 0.91 0.91)) #(#snow3 #(0.80 0.79 0.79)) #(#snow4 #(0.55 0.54 0.54)) #(#seashell1 #(1.00 0.96 0.93)) #(#seashell2 #(0.93 0.90 0.87)) #(#seashell3 #(0.80 0.77 0.75)) #(#seashell4 #(0.55 0.53 0.51)) #(#antiqueWhite1 #(1.00 0.94 0.86)) #(#antiqueWhite2 #(0.93 0.87 0.80)) #(#antiqueWhite3 #(0.80 0.75 0.69)) #(#antiqueWhite4 #(0.55 0.51 0.47)) #(#bisque1 #(1.00 0.89 0.77)) #(#bisque2 #(0.93 0.84 0.72)) #(#bisque3 #(0.80 0.72 0.62)) #(#bisque4 #(0.55 0.49 0.42)) #(#peachPuff1 #(1.00 0.85 0.73)) #(#peachPuff2 #(0.93 0.80 0.68)) #(#peachPuff3 #(0.80 0.69 0.58)) #(#peachPuff4 #(0.55 0.47 0.40)) #(#navajoWhite1 #(1.00 0.87 0.68)) #(#navajoWhite2 #(0.93 0.81 0.63)) #(#navajoWhite3 #(0.80 0.70 0.55)) #(#navajoWhite4 #(0.55 0.47 0.37)) #(#lemonChiffon1 #(1.00 0.98 0.80)) #(#lemonChiffon2 #(0.93 0.91 0.75)) #(#lemonChiffon3 #(0.80 0.79 0.65)) #(#lemonChiffon4 #(0.55 0.54 0.44)) #(#cornsilk1 #(1.00 0.97 0.86)) #(#cornsilk2 #(0.93 0.91 0.80)) #(#cornsilk3 #(0.80 0.78 0.69)) #(#cornsilk4 #(0.55 0.53 0.47)) #(#ivory1 #(1.00 1.00 0.94)) #(#ivory2 #(0.93 0.93 0.88)) #(#ivory3 #(0.80 0.80 0.76)) #(#ivory4 #(0.55 0.55 0.51)) #(#honeydew1 #(0.94 1.00 0.94)) #(#honeydew2 #(0.88 0.93 0.88)) #(#honeydew3 #(0.76 0.80 0.76)) #(#honeydew4 #(0.51 0.55 0.51)) #(#lavenderBlush1 #(1.00 0.94 0.96)) #(#lavenderBlush2 #(0.93 0.88 0.90)) #(#lavenderBlush3 #(0.80 0.76 0.77)) #(#lavenderBlush4 #(0.55 0.51 0.53)) #(#mistyRose1 #(1.00 0.89 0.88)) #(#mistyRose2 #(0.93 0.84 0.82)) #(#mistyRose3 #(0.80 0.72 0.71)) #(#mistyRose4 #(0.55 0.49 0.48)) #(#azure1 #(0.94 1.00 1.00)) #(#azure2 #(0.88 0.93 0.93)) #(#azure3 #(0.76 0.80 0.80)) #(#azure4 #(0.51 0.55 0.55)) #(#slateBlue1 #(0.51 0.44 1.00)) #(#slateBlue2 #(0.48 0.40 0.93)) #(#slateBlue3 #(0.41 0.35 0.80)) #(#slateBlue4 #(0.28 0.24 0.55)) #(#royalBlue1 #(0.28 0.46 1.00)) #(#royalBlue2 #(0.26 0.43 0.93)) #(#royalBlue3 #(0.23 0.37 0.80)) #(#royalBlue4 #(0.15 0.25 0.55)) #(#blue1 #(0.00 0.00 1.00)) #(#blue2 #(0.00 0.00 0.93)) #(#blue3 #(0.00 0.00 0.80)) #(#blue4 #(0.00 0.00 0.55)) #(#dodgerBlue1 #(0.12 0.56 1.00)) #(#dodgerBlue2 #(0.11 0.53 0.93)) #(#dodgerBlue3 #(0.09 0.45 0.80)) #(#dodgerBlue4 #(0.06 0.31 0.55)) #(#steelBlue1 #(0.39 0.72 1.00)) #(#steelBlue2 #(0.36 0.67 0.93)) #(#steelBlue3 #(0.31 0.58 0.80)) #(#steelBlue4 #(0.21 0.39 0.55)) #(#deepSkyBlue1 #(0.00 0.75 1.00)) #(#deepSkyBlue2 #(0.00 0.70 0.93)) #(#deepSkyBlue3 #(0.00 0.60 0.80)) #(#deepSkyBlue4 #(0.00 0.41 0.55)) #(#skyBlue1 #(0.53 0.81 1.00)) #(#skyBlue2 #(0.49 0.75 0.93)) #(#skyBlue3 #(0.42 0.65 0.80)) #(#skyBlue4 #(0.29 0.44 0.55)) #(#lightSkyBlue1 #(0.69 0.89 1.00)) #(#lightSkyBlue2 #(0.64 0.83 0.93)) #(#lightSkyBlue3 #(0.55 0.71 0.80)) #(#lightSkyBlue4 #(0.38 0.48 0.55)) #(#slateGray1 #(0.78 0.89 1.00)) #(#slateGray2 #(0.73 0.83 0.93)) #(#slateGray3 #(0.62 0.71 0.80)) #(#slateGray4 #(0.42 0.48 0.55)) #(#lightSteelBlue1 #(0.79 0.88 1.00)) #(#lightSteelBlue2 #(0.74 0.82 0.93)) #(#lightSteelBlue3 #(0.64 0.71 0.80)) #(#lightSteelBlue4 #(0.43 0.48 0.55)) #(#lightBlue1 #(0.75 0.94 1.00)) #(#lightBlue2 #(0.70 0.87 0.93)) #(#lightBlue3 #(0.60 0.75 0.80)) #(#lightBlue4 #(0.41 0.51 0.55)) #(#lightCyan1 #(0.88 1.00 1.00)) #(#lightCyan2 #(0.82 0.93 0.93)) #(#lightCyan3 #(0.71 0.80 0.80)) #(#lightCyan4 #(0.48 0.55 0.55)) #(#paleTurquoise1 #(0.73 1.00 1.00)) #(#paleTurquoise2 #(0.68 0.93 0.93)) #(#paleTurquoise3 #(0.59 0.80 0.80)) #(#paleTurquoise4 #(0.40 0.55 0.55)) #(#cadetBlue1 #(0.60 0.96 1.00)) #(#cadetBlue2 #(0.56 0.90 0.93)) #(#cadetBlue3 #(0.48 0.77 0.80)) #(#cadetBlue4 #(0.33 0.53 0.55)) #(#turquoise1 #(0.00 0.96 1.00)) #(#turquoise2 #(0.00 0.90 0.93)) #(#turquoise3 #(0.00 0.77 0.80)) #(#turquoise4 #(0.00 0.53 0.55)) #(#cyan1 #(0.00 1.00 1.00)) #(#cyan2 #(0.00 0.93 0.93)) #(#cyan3 #(0.00 0.80 0.80)) #(#cyan4 #(0.00 0.55 0.55)) #(#darkSlateGray1 #(0.59 1.00 1.00)) #(#darkSlateGray2 #(0.55 0.93 0.93)) #(#darkSlateGray3 #(0.47 0.80 0.80)) #(#darkSlateGray4 #(0.32 0.55 0.55)) #(#aquamarine1 #(0.50 1.00 0.83)) #(#aquamarine2 #(0.46 0.93 0.78)) #(#aquamarine3 #(0.40 0.80 0.67)) #(#aquamarine4 #(0.27 0.55 0.45)) #(#darkSeaGreen1 #(0.76 1.00 0.76)) #(#darkSeaGreen2 #(0.71 0.93 0.71)) #(#darkSeaGreen3 #(0.61 0.80 0.61)) #(#darkSeaGreen4 #(0.41 0.55 0.41)) #(#seaGreen1 #(0.33 1.00 0.62)) #(#seaGreen2 #(0.31 0.93 0.58)) #(#seaGreen3 #(0.26 0.80 0.50)) #(#seaGreen4 #(0.18 0.55 0.34)) #(#paleGreen1 #(0.60 1.00 0.60)) #(#paleGreen2 #(0.56 0.93 0.56)) #(#paleGreen3 #(0.49 0.80 0.49)) #(#paleGreen4 #(0.33 0.55 0.33)) #(#springGreen1 #(0.00 1.00 0.50)) #(#springGreen2 #(0.00 0.93 0.46)) #(#springGreen3 #(0.00 0.80 0.40)) #(#springGreen4 #(0.00 0.55 0.27)) #(#green1 #(0.00 1.00 0.00)) #(#green2 #(0.00 0.93 0.00)) #(#green3 #(0.00 0.80 0.00)) #(#green4 #(0.00 0.55 0.00)) #(#chartreuse1 #(0.50 1.00 0.00)) #(#chartreuse2 #(0.46 0.93 0.00)) #(#chartreuse3 #(0.40 0.80 0.00)) #(#chartreuse4 #(0.27 0.55 0.00)) #(#oliveDrab1 #(0.75 1.00 0.24)) #(#oliveDrab2 #(0.70 0.93 0.23)) #(#oliveDrab3 #(0.60 0.80 0.20)) #(#oliveDrab4 #(0.41 0.55 0.13)) #(#darkOliveGreen1 #(0.79 1.00 0.44)) #(#darkOliveGreen2 #(0.74 0.93 0.41)) #(#darkOliveGreen3 #(0.64 0.80 0.35)) #(#darkOliveGreen4 #(0.43 0.55 0.24)) #(#khaki1 #(1.00 0.96 0.56)) #(#khaki2 #(0.93 0.90 0.52)) #(#khaki3 #(0.80 0.78 0.45)) #(#khaki4 #(0.55 0.53 0.31)) #(#lightGoldenrod1 #(1.00 0.93 0.55)) #(#lightGoldenrod2 #(0.93 0.86 0.51)) #(#lightGoldenrod3 #(0.80 0.75 0.44)) #(#lightGoldenrod4 #(0.55 0.51 0.30)) #(#lightYellow1 #(1.00 1.00 0.88)) #(#lightYellow2 #(0.93 0.93 0.82)) #(#lightYellow3 #(0.80 0.80 0.71)) #(#lightYellow4 #(0.55 0.55 0.48)) #(#yellow1 #(1.00 1.00 0.00)) #(#yellow2 #(0.93 0.93 0.00)) #(#yellow3 #(0.80 0.80 0.00)) #(#yellow4 #(0.55 0.55 0.00)) #(#gold1 #(1.00 0.84 0.00)) #(#gold2 #(0.93 0.79 0.00)) #(#gold3 #(0.80 0.68 0.00)) #(#gold4 #(0.55 0.46 0.00)) #(#goldenrod1 #(1.00 0.76 0.15)) #(#goldenrod2 #(0.93 0.71 0.13)) #(#goldenrod3 #(0.80 0.61 0.11)) #(#goldenrod4 #(0.55 0.41 0.08)) #(#darkGoldenrod1 #(1.00 0.73 0.06)) #(#darkGoldenrod2 #(0.93 0.68 0.05)) #(#darkGoldenrod3 #(0.80 0.58 0.05)) #(#darkGoldenrod4 #(0.55 0.40 0.03)) #(#rosyBrown1 #(1.00 0.76 0.76)) #(#rosyBrown2 #(0.93 0.71 0.71)) #(#rosyBrown3 #(0.80 0.61 0.61)) #(#rosyBrown4 #(0.55 0.41 0.41)) #(#indianRed1 #(1.00 0.42 0.42)) #(#indianRed2 #(0.93 0.39 0.39)) #(#indianRed3 #(0.80 0.33 0.33)) #(#indianRed4 #(0.55 0.23 0.23)) #(#sienna1 #(1.00 0.51 0.28)) #(#sienna2 #(0.93 0.47 0.26)) #(#sienna3 #(0.80 0.41 0.22)) #(#sienna4 #(0.55 0.28 0.15)) #(#burlywood1 #(1.00 0.83 0.61)) #(#burlywood2 #(0.93 0.77 0.57)) #(#burlywood3 #(0.80 0.67 0.49)) #(#burlywood4 #(0.55 0.45 0.33)) #(#wheat1 #(1.00 0.91 0.73)) #(#wheat2 #(0.93 0.85 0.68)) #(#wheat3 #(0.80 0.73 0.59)) #(#wheat4 #(0.55 0.49 0.40)) #(#tan1 #(1.00 0.65 0.31)) #(#tan2 #(0.93 0.60 0.29)) #(#tan3 #(0.80 0.52 0.25)) #(#tan4 #(0.55 0.35 0.17)) #(#chocolate1 #(1.00 0.50 0.14)) #(#chocolate2 #(0.93 0.46 0.13)) #(#chocolate3 #(0.80 0.40 0.11)) #(#chocolate4 #(0.55 0.27 0.07)) #(#firebrick1 #(1.00 0.19 0.19)) #(#firebrick2 #(0.93 0.17 0.17)) #(#firebrick3 #(0.80 0.15 0.15)) #(#firebrick4 #(0.55 0.10 0.10)) #(#brown1 #(1.00 0.25 0.25)) #(#brown2 #(0.93 0.23 0.23)) #(#brown3 #(0.80 0.20 0.20)) #(#brown4 #(0.55 0.14 0.14)) #(#salmon1 #(1.00 0.55 0.41)) #(#salmon2 #(0.93 0.51 0.38)) #(#salmon3 #(0.80 0.44 0.33)) #(#salmon4 #(0.55 0.30 0.22)) #(#lightSalmon1 #(1.00 0.63 0.48)) #(#lightSalmon2 #(0.93 0.58 0.45)) #(#lightSalmon3 #(0.80 0.51 0.38)) #(#lightSalmon4 #(0.55 0.34 0.26)) #(#orange1 #(1.00 0.65 0.00)) #(#orange2 #(0.93 0.60 0.00)) #(#orange3 #(0.80 0.52 0.00)) #(#orange4 #(0.55 0.35 0.00)) #(#darkOrange1 #(1.00 0.50 0.00)) #(#darkOrange2 #(0.93 0.46 0.00)) #(#darkOrange3 #(0.80 0.40 0.00)) #(#darkOrange4 #(0.55 0.27 0.00)) #(#coral1 #(1.00 0.45 0.34)) #(#coral2 #(0.93 0.42 0.31)) #(#coral3 #(0.80 0.36 0.27)) #(#coral4 #(0.55 0.24 0.18)) #(#tomato1 #(1.00 0.39 0.28)) #(#tomato2 #(0.93 0.36 0.26)) #(#tomato3 #(0.80 0.31 0.22)) #(#tomato4 #(0.55 0.21 0.15)) #(#orangeRed1 #(1.00 0.27 0.00)) #(#orangeRed2 #(0.93 0.25 0.00)) #(#orangeRed3 #(0.80 0.22 0.00)) #(#orangeRed4 #(0.55 0.15 0.00)) #(#red1 #(1.00 0.00 0.00)) #(#red2 #(0.93 0.00 0.00)) #(#red3 #(0.80 0.00 0.00)) #(#red4 #(0.55 0.00 0.00)) #(#deepPink1 #(1.00 0.08 0.58)) #(#deepPink2 #(0.93 0.07 0.54)) #(#deepPink3 #(0.80 0.06 0.46)) #(#deepPink4 #(0.55 0.04 0.31)) #(#hotPink1 #(1.00 0.43 0.71)) #(#hotPink2 #(0.93 0.42 0.65)) #(#hotPink3 #(0.80 0.38 0.56)) #(#hotPink4 #(0.55 0.23 0.38)) #(#pink1 #(1.00 0.71 0.77)) #(#pink2 #(0.93 0.66 0.72)) #(#pink3 #(0.80 0.57 0.62)) #(#pink4 #(0.55 0.39 0.42)) #(#lightPink1 #(1.00 0.68 0.73)) #(#lightPink2 #(0.93 0.64 0.68)) #(#lightPink3 #(0.80 0.55 0.58)) #(#lightPink4 #(0.55 0.37 0.40)) #(#paleVioletRed1 #(1.00 0.51 0.67)) #(#paleVioletRed2 #(0.93 0.47 0.62)) #(#paleVioletRed3 #(0.80 0.41 0.54)) #(#paleVioletRed4 #(0.55 0.28 0.36)) #(#maroon1 #(1.00 0.20 0.70)) #(#maroon2 #(0.93 0.19 0.65)) #(#maroon3 #(0.80 0.16 0.56)) #(#maroon4 #(0.55 0.11 0.38)) #(#violetRed1 #(1.00 0.24 0.59)) #(#violetRed2 #(0.93 0.23 0.55)) #(#violetRed3 #(0.80 0.20 0.47)) #(#violetRed4 #(0.55 0.13 0.32)) #(#magenta1 #(1.00 0.00 1.00)) #(#magenta2 #(0.93 0.00 0.93)) #(#magenta3 #(0.80 0.00 0.80)) #(#magenta4 #(0.55 0.00 0.55)) #(#orchid1 #(1.00 0.51 0.98)) #(#orchid2 #(0.93 0.48 0.91)) #(#orchid3 #(0.80 0.41 0.79)) #(#orchid4 #(0.55 0.28 0.54)) #(#plum1 #(1.00 0.73 1.00)) #(#plum2 #(0.93 0.68 0.93)) #(#plum3 #(0.80 0.59 0.80)) #(#plum4 #(0.55 0.40 0.55)) #(#mediumOrchid1 #(0.88 0.40 1.00)) #(#mediumOrchid2 #(0.82 0.37 0.93)) #(#mediumOrchid3 #(0.71 0.32 0.80)) #(#mediumOrchid4 #(0.48 0.22 0.55)) #(#darkOrchid1 #(0.75 0.24 1.00)) #(#darkOrchid2 #(0.70 0.23 0.93)) #(#darkOrchid3 #(0.60 0.20 0.80)) #(#darkOrchid4 #(0.41 0.13 0.55)) #(#purple1 #(0.61 0.19 1.00)) #(#purple2 #(0.57 0.17 0.93)) #(#purple3 #(0.49 0.15 0.80)) #(#purple4 #(0.33 0.10 0.55)) #(#mediumPurple1 #(0.67 0.51 1.00)) #(#mediumPurple2 #(0.62 0.47 0.93)) #(#mediumPurple3 #(0.54 0.41 0.80)) #(#mediumPurple4 #(0.36 0.28 0.55)) #(#thistle1 #(1.00 0.88 1.00)) #(#thistle2 #(0.93 0.82 0.93)) #(#thistle3 #(0.80 0.71 0.80)) #(#thistle4 #(0.55 0.48 0.55)) #(#gray0 #(0.00 0.00 0.00)) #(#grey0 #(0.00 0.00 0.00)) #(#gray1 #(0.01 0.01 0.01)) #(#grey1 #(0.01 0.01 0.01)) #(#gray2 #(0.02 0.02 0.02)) #(#grey2 #(0.02 0.02 0.02)) #(#gray3 #(0.03 0.03 0.03)) #(#grey3 #(0.03 0.03 0.03)) #(#gray4 #(0.04 0.04 0.04)) #(#grey4 #(0.04 0.04 0.04)) #(#gray5 #(0.05 0.05 0.05)) #(#grey5 #(0.05 0.05 0.05)) #(#gray6 #(0.06 0.06 0.06)) #(#grey6 #(0.06 0.06 0.06)) #(#gray7 #(0.07 0.07 0.07)) #(#grey7 #(0.07 0.07 0.07)) #(#gray8 #(0.08 0.08 0.08)) #(#grey8 #(0.08 0.08 0.08)) #(#gray9 #(0.09 0.09 0.09)) #(#grey9 #(0.09 0.09 0.09)) #(#gray10 #(0.10 0.10 0.10)) #(#grey10 #(0.10 0.10 0.10)) #(#gray11 #(0.11 0.11 0.11)) #(#grey11 #(0.11 0.11 0.11)) #(#gray12 #(0.12 0.12 0.12)) #(#grey12 #(0.12 0.12 0.12)) #(#gray13 #(0.13 0.13 0.13)) #(#grey13 #(0.13 0.13 0.13)) #(#gray14 #(0.14 0.14 0.14)) #(#grey14 #(0.14 0.14 0.14)) #(#gray15 #(0.15 0.15 0.15)) #(#grey15 #(0.15 0.15 0.15)) #(#gray16 #(0.16 0.16 0.16)) #(#grey16 #(0.16 0.16 0.16)) #(#gray17 #(0.17 0.17 0.17)) #(#grey17 #(0.17 0.17 0.17)) #(#gray18 #(0.18 0.18 0.18)) #(#grey18 #(0.18 0.18 0.18)) #(#gray19 #(0.19 0.19 0.19)) #(#grey19 #(0.19 0.19 0.19)) #(#gray20 #(0.20 0.20 0.20)) #(#grey20 #(0.20 0.20 0.20)) #(#gray21 #(0.21 0.21 0.21)) #(#grey21 #(0.21 0.21 0.21)) #(#gray22 #(0.22 0.22 0.22)) #(#grey22 #(0.22 0.22 0.22)) #(#gray23 #(0.23 0.23 0.23)) #(#grey23 #(0.23 0.23 0.23)) #(#gray24 #(0.24 0.24 0.24)) #(#grey24 #(0.24 0.24 0.24)) #(#gray25 #(0.25 0.25 0.25)) #(#grey25 #(0.25 0.25 0.25)) #(#gray26 #(0.26 0.26 0.26)) #(#grey26 #(0.26 0.26 0.26)) #(#gray27 #(0.27 0.27 0.27)) #(#grey27 #(0.27 0.27 0.27)) #(#gray28 #(0.28 0.28 0.28)) #(#grey28 #(0.28 0.28 0.28)) #(#gray29 #(0.29 0.29 0.29)) #(#grey29 #(0.29 0.29 0.29)) #(#gray30 #(0.30 0.30 0.30)) #(#grey30 #(0.30 0.30 0.30)) #(#gray31 #(0.31 0.31 0.31)) #(#grey31 #(0.31 0.31 0.31)) #(#gray32 #(0.32 0.32 0.32)) #(#grey32 #(0.32 0.32 0.32)) #(#gray33 #(0.33 0.33 0.33)) #(#grey33 #(0.33 0.33 0.33)) #(#gray34 #(0.34 0.34 0.34)) #(#grey34 #(0.34 0.34 0.34)) #(#gray35 #(0.35 0.35 0.35)) #(#grey35 #(0.35 0.35 0.35)) #(#gray36 #(0.36 0.36 0.36)) #(#grey36 #(0.36 0.36 0.36)) #(#gray37 #(0.37 0.37 0.37)) #(#grey37 #(0.37 0.37 0.37)) #(#gray38 #(0.38 0.38 0.38)) #(#grey38 #(0.38 0.38 0.38)) #(#gray39 #(0.39 0.39 0.39)) #(#grey39 #(0.39 0.39 0.39)) #(#gray40 #(0.40 0.40 0.40)) #(#grey40 #(0.40 0.40 0.40)) #(#gray41 #(0.41 0.41 0.41)) #(#grey41 #(0.41 0.41 0.41)) #(#gray42 #(0.42 0.42 0.42)) #(#grey42 #(0.42 0.42 0.42)) #(#gray43 #(0.43 0.43 0.43)) #(#grey43 #(0.43 0.43 0.43)) #(#gray44 #(0.44 0.44 0.44)) #(#grey44 #(0.44 0.44 0.44)) #(#gray45 #(0.45 0.45 0.45)) #(#grey45 #(0.45 0.45 0.45)) #(#gray46 #(0.46 0.46 0.46)) #(#grey46 #(0.46 0.46 0.46)) #(#gray47 #(0.47 0.47 0.47)) #(#grey47 #(0.47 0.47 0.47)) #(#gray48 #(0.48 0.48 0.48)) #(#grey48 #(0.48 0.48 0.48)) #(#gray49 #(0.49 0.49 0.49)) #(#grey49 #(0.49 0.49 0.49)) #(#gray50 #(0.50 0.50 0.50)) #(#grey50 #(0.50 0.50 0.50)) #(#gray51 #(0.51 0.51 0.51)) #(#grey51 #(0.51 0.51 0.51)) #(#gray52 #(0.52 0.52 0.52)) #(#grey52 #(0.52 0.52 0.52)) #(#gray53 #(0.53 0.53 0.53)) #(#grey53 #(0.53 0.53 0.53)) #(#gray54 #(0.54 0.54 0.54)) #(#grey54 #(0.54 0.54 0.54)) #(#gray55 #(0.55 0.55 0.55)) #(#grey55 #(0.55 0.55 0.55)) #(#gray56 #(0.56 0.56 0.56)) #(#grey56 #(0.56 0.56 0.56)) #(#gray57 #(0.57 0.57 0.57)) #(#grey57 #(0.57 0.57 0.57)) #(#gray58 #(0.58 0.58 0.58)) #(#grey58 #(0.58 0.58 0.58)) #(#gray59 #(0.59 0.59 0.59)) #(#grey59 #(0.59 0.59 0.59)) #(#gray60 #(0.60 0.60 0.60)) #(#grey60 #(0.60 0.60 0.60)) #(#gray61 #(0.61 0.61 0.61)) #(#grey61 #(0.61 0.61 0.61)) #(#gray62 #(0.62 0.62 0.62)) #(#grey62 #(0.62 0.62 0.62)) #(#gray63 #(0.63 0.63 0.63)) #(#grey63 #(0.63 0.63 0.63)) #(#gray64 #(0.64 0.64 0.64)) #(#grey64 #(0.64 0.64 0.64)) #(#gray65 #(0.65 0.65 0.65)) #(#grey65 #(0.65 0.65 0.65)) #(#gray66 #(0.66 0.66 0.66)) #(#grey66 #(0.66 0.66 0.66)) #(#gray67 #(0.67 0.67 0.67)) #(#grey67 #(0.67 0.67 0.67)) #(#gray68 #(0.68 0.68 0.68)) #(#grey68 #(0.68 0.68 0.68)) #(#gray69 #(0.69 0.69 0.69)) #(#grey69 #(0.69 0.69 0.69)) #(#gray70 #(0.70 0.70 0.70)) #(#grey70 #(0.70 0.70 0.70)) #(#gray71 #(0.71 0.71 0.71)) #(#grey71 #(0.71 0.71 0.71)) #(#gray72 #(0.72 0.72 0.72)) #(#grey72 #(0.72 0.72 0.72)) #(#gray73 #(0.73 0.73 0.73)) #(#grey73 #(0.73 0.73 0.73)) #(#gray74 #(0.74 0.74 0.74)) #(#grey74 #(0.74 0.74 0.74)) #(#gray75 #(0.75 0.75 0.75)) #(#grey75 #(0.75 0.75 0.75)) #(#gray76 #(0.76 0.76 0.76)) #(#grey76 #(0.76 0.76 0.76)) #(#gray77 #(0.77 0.77 0.77)) #(#grey77 #(0.77 0.77 0.77)) #(#gray78 #(0.78 0.78 0.78)) #(#grey78 #(0.78 0.78 0.78)) #(#gray79 #(0.79 0.79 0.79)) #(#grey79 #(0.79 0.79 0.79)) #(#gray80 #(0.80 0.80 0.80)) #(#grey80 #(0.80 0.80 0.80)) #(#gray81 #(0.81 0.81 0.81)) #(#grey81 #(0.81 0.81 0.81)) #(#gray82 #(0.82 0.82 0.82)) #(#grey82 #(0.82 0.82 0.82)) #(#gray83 #(0.83 0.83 0.83)) #(#grey83 #(0.83 0.83 0.83)) #(#gray84 #(0.84 0.84 0.84)) #(#grey84 #(0.84 0.84 0.84)) #(#gray85 #(0.85 0.85 0.85)) #(#grey85 #(0.85 0.85 0.85)) #(#gray86 #(0.86 0.86 0.86)) #(#grey86 #(0.86 0.86 0.86)) #(#gray87 #(0.87 0.87 0.87)) #(#grey87 #(0.87 0.87 0.87)) #(#gray88 #(0.88 0.88 0.88)) #(#grey88 #(0.88 0.88 0.88)) #(#gray89 #(0.89 0.89 0.89)) #(#grey89 #(0.89 0.89 0.89)) #(#gray90 #(0.90 0.90 0.90)) #(#grey90 #(0.90 0.90 0.90)) #(#gray91 #(0.91 0.91 0.91)) #(#grey91 #(0.91 0.91 0.91)) #(#gray92 #(0.92 0.92 0.92)) #(#grey92 #(0.92 0.92 0.92)) #(#gray93 #(0.93 0.93 0.93)) #(#grey93 #(0.93 0.93 0.93)) #(#gray94 #(0.94 0.94 0.94)) #(#grey94 #(0.94 0.94 0.94)) #(#gray95 #(0.95 0.95 0.95)) #(#grey95 #(0.95 0.95 0.95)) #(#gray96 #(0.96 0.96 0.96)) #(#grey96 #(0.96 0.96 0.96)) #(#gray97 #(0.97 0.97 0.97)) #(#grey97 #(0.97 0.97 0.97)) #(#gray98 #(0.98 0.98 0.98)) #(#grey98 #(0.98 0.98 0.98)) #(#gray99 #(0.99 0.99 0.99)) #(#grey99 #(0.99 0.99 0.99)) #(#gray100 #(1.00 1.00 1.00)) #(#grey100 #(1.00 1.00 1.00)) #(#darkGrey #(0.66 0.66 0.66)) #(#darkGray #(0.66 0.66 0.66)) #(#darkBlue #(0.00 0.00 0.55)) #(#darkCyan #(0.00 0.55 0.55)) #(#darkMagenta #(0.55 0.00 0.55)) #(#darkRed #(0.55 0.00 0.00)) #(#lightGreen #(0.56 0.93 0.56))) 

]

{ #category : #'*MoreColors' }
Color class >> colorNamesXKCD [
	"From http://blog.xkcd.com/2010/05/03/color-survey-results/"

	^ #(#(#cloudyBlue #(0.675 0.761 0.851)) #(#darkPastelGreen #(0.337 0.682 0.341)) #(#dust #(0.698 0.6 0.431)) #(#electricLime #(0.659 1.0 0.016)) #(#freshGreen #(0.412 0.847 0.31)) #(#lightEggplant #(0.537 0.271 0.522)) #(#nastyGreen #(0.439 0.698 0.247)) #(#reallyLightBlue #(0.831 1.0 1.0)) #(#tea #(0.396 0.671 0.486)) #(#warmPurple #(0.584 0.18 0.561)) #(#yellowishTan #(0.988 0.988 0.506)) #(#cement #(0.647 0.639 0.569)) #(#darkGrassGreen #(0.22 0.502 0.016)) #(#dustyTeal #(0.298 0.565 0.522)) #(#greyTeal #(0.369 0.608 0.541)) #(#macaroniAndCheese #(0.937 0.706 0.208)) #(#pinkishTan #(0.851 0.608 0.51)) #(#spruce #(0.039 0.373 0.22)) #(#strongBlue #(0.047 0.024 0.969)) #(#toxicGreen #(0.38 0.871 0.165)) #(#windowsBlue #(0.216 0.471 0.749)) #(#blueBlue #(0.133 0.259 0.78)) #(#blueWithAHintOfPurple #(0.325 0.235 0.776)) #(#booger #(0.608 0.71 0.235)) #(#brightSeaGreen #(0.02 1.0 0.651)) #(#darkGreenBlue #(0.122 0.388 0.341)) #(#deepTurquoise #(0.004 0.451 0.455)) #(#greenTeal #(0.047 0.71 0.467)) #(#strongPink #(1.0 0.027 0.537)) #(#bland #(0.686 0.659 0.545)) #(#deepAqua #(0.031 0.471 0.498)) #(#lavenderPink #(0.867 0.522 0.843)) #(#lightMossGreen #(0.651 0.784 0.459)) #(#lightSeafoamGreen #(0.655 1.0 0.71)) #(#oliveYellow #(0.761 0.718 0.035)) #(#pigPink #(0.906 0.557 0.647)) #(#deepLilac #(0.588 0.431 0.741)) #(#desert #(0.8 0.678 0.376)) #(#dustyLavender #(0.675 0.525 0.659)) #(#purpleyGrey #(0.58 0.494 0.58)) #(#purply #(0.596 0.247 0.698)) #(#candyPink #(1.0 0.388 0.914)) #(#lightPastelGreen #(0.698 0.984 0.647)) #(#boringGreen #(0.388 0.702 0.396)) #(#kiwiGreen #(0.557 0.898 0.247)) #(#lightGreyGreen #(0.718 0.882 0.631)) #(#orangePink #(1.0 0.435 0.322)) #(#teaGreen #(0.741 0.973 0.639)) #(#veryLightBrown #(0.827 0.714 0.514)) #(#eggShell #(1.0 0.988 0.769)) #(#eggplantPurple #(0.263 0.02 0.255)) #(#powderPink #(1.0 0.698 0.816)) #(#reddishGrey #(0.6 0.459 0.439)) #(#babyShitBrown #(0.678 0.565 0.051)) #(#liliac #(0.769 0.557 0.992)) #(#stormyBlue #(0.314 0.482 0.612)) #(#uglyBrown #(0.49 0.443 0.012)) #(#custard #(1.0 0.992 0.471)) #(#darkishPink #(0.855 0.275 0.49)) #(#deepBrown #(0.255 0.008 0.0)) #(#greenishBeige #(0.788 0.82 0.475)) #(#manilla #(1.0 0.98 0.525)) #(#offBlue #(0.337 0.518 0.682)) #(#battleshipGrey #(0.42 0.486 0.522)) #(#brownyGreen #(0.435 0.424 0.039)) #(#bruise #(0.494 0.251 0.443)) #(#kelleyGreen #(0.0 0.576 0.216)) #(#sicklyYellow #(0.816 0.894 0.161)) #(#sunnyYellow #(1.0 0.976 0.09)) #(#azul #(0.114 0.365 0.925)) #(#darkgreen #(0.02 0.286 0.027)) #(#greenyellow #(0.71 0.808 0.031)) #(#lichen #(0.561 0.714 0.482)) #(#lightLightGreen #(0.784 1.0 0.69)) #(#paleGold #(0.992 0.871 0.424)) #(#sunYellow #(1.0 0.875 0.133)) #(#tanGreen #(0.663 0.745 0.439)) #(#burple #(0.408 0.196 0.89)) #(#butterscotch #(0.992 0.694 0.278)) #(#toupe #(0.78 0.675 0.49)) #(#darkCream #(1.0 0.953 0.604)) #(#indianRed #(0.522 0.055 0.016)) #(#lightLavendar #(0.937 0.753 0.996)) #(#poisonGreen #(0.251 0.992 0.078)) #(#babyPukeGreen #(0.714 0.769 0.024)) #(#brightYellowGreen #(0.616 1.0 0.0)) #(#charcoalGrey #(0.235 0.255 0.259)) #(#squash #(0.949 0.671 0.082)) #(#cinnamon #(0.675 0.31 0.024)) #(#lightPeaGreen #(0.769 0.996 0.51)) #(#radioactiveGreen #(0.173 0.98 0.122)) #(#rawSienna #(0.604 0.384 0.0)) #(#babyPurple #(0.792 0.608 0.969)) #(#cocoa #(0.529 0.373 0.259)) #(#lightRoyalBlue #(0.227 0.18 0.996)) #(#orangeish #(0.992 0.553 0.286)) #(#rustBrown #(0.545 0.192 0.012)) #(#sandBrown #(0.796 0.647 0.376)) #(#swamp #(0.412 0.514 0.224)) #(#tealishGreen #(0.047 0.863 0.451)) #(#burntSiena #(0.718 0.322 0.012)) #(#camo #(0.498 0.561 0.306)) #(#duskBlue #(0.149 0.325 0.553)) #(#fern #(0.388 0.663 0.314)) #(#oldRose #(0.784 0.498 0.537)) #(#paleLightGreen #(0.694 0.988 0.6)) #(#peachyPink #(1.0 0.604 0.541)) #(#rosyPink #(0.965 0.408 0.557)) #(#lightBluishGreen #(0.463 0.992 0.659)) #(#lightBrightGreen #(0.325 0.996 0.361)) #(#lightNeonGreen #(0.306 0.992 0.329)) #(#lightSeafoam #(0.627 0.996 0.749)) #(#tiffanyBlue #(0.482 0.949 0.855)) #(#washedOutGreen #(0.737 0.961 0.651)) #(#brownyOrange #(0.792 0.42 0.008)) #(#niceBlue #(0.063 0.478 0.69)) #(#sapphire #(0.129 0.22 0.671)) #(#greyishTeal #(0.443 0.624 0.569)) #(#orangeyYellow #(0.992 0.725 0.082)) #(#parchment #(0.996 0.988 0.686)) #(#straw #(0.988 0.965 0.475)) #(#veryDarkBrown #(0.114 0.008 0.0)) #(#terracota #(0.796 0.408 0.263)) #(#uglyBlue #(0.192 0.4 0.541)) #(#clearBlue #(0.141 0.478 0.992)) #(#creme #(1.0 1.0 0.714)) #(#foamGreen #(0.565 0.992 0.663)) #(#greygreen #(0.525 0.631 0.49)) #(#lightGold #(0.992 0.863 0.361)) #(#seafoamBlue #(0.471 0.82 0.714)) #(#topaz #(0.075 0.733 0.686)) #(#violetPink #(0.984 0.373 0.988)) #(#wintergreen #(0.125 0.976 0.525)) #(#yellowTan #(1.0 0.89 0.431)) #(#darkFuchsia #(0.616 0.027 0.349)) #(#indigoBlue #(0.227 0.094 0.694)) #(#lightYellowishGreen #(0.761 1.0 0.537)) #(#paleMagenta #(0.843 0.404 0.678)) #(#richPurple #(0.447 0.0 0.345)) #(#sunflowerYellow #(1.0 0.855 0.012)) #(#green / blue #(0.004 0.753 0.553)) #(#leather #(0.675 0.455 0.204)) #(#racingGreen #(0.004 0.275 0.0)) #(#vividPurple #(0.6 0.0 0.98)) #(#darkRoyalBlue #(0.008 0.024 0.435)) #(#hazel #(0.557 0.463 0.094)) #(#mutedPink #(0.82 0.463 0.561)) #(#boogerGreen #(0.588 0.706 0.012)) #(#canary #(0.992 1.0 0.388)) #(#coolGrey #(0.584 0.639 0.651)) #(#darkTaupe #(0.498 0.408 0.306)) #(#darkishPurple #(0.459 0.098 0.451)) #(#trueGreen #(0.031 0.58 0.016)) #(#coralPink #(1.0 0.38 0.388)) #(#darkSage #(0.349 0.522 0.337)) #(#darkSlateBlue #(0.129 0.278 0.38)) #(#flatBlue #(0.235 0.451 0.659)) #(#mushroom #(0.729 0.62 0.533)) #(#richBlue #(0.008 0.106 0.976)) #(#dirtyPurple #(0.451 0.29 0.396)) #(#greenblue #(0.137 0.769 0.545)) #(#ickyGreen #(0.561 0.682 0.133)) #(#lightKhaki #(0.902 0.949 0.635)) #(#warmBlue #(0.294 0.341 0.859)) #(#darkHotPink #(0.851 0.004 0.4)) #(#deepSeaBlue #(0.004 0.329 0.51)) #(#carmine #(0.616 0.008 0.086)) #(#darkYellowGreen #(0.447 0.561 0.008)) #(#palePeach #(1.0 0.898 0.678)) #(#plumPurple #(0.306 0.02 0.314)) #(#goldenRod #(0.976 0.737 0.031)) #(#neonRed #(1.0 0.027 0.227)) #(#oldPink #(0.78 0.475 0.525)) #(#veryPaleBlue #(0.839 1.0 0.996)) #(#bloodOrange #(0.996 0.294 0.012)) #(#grapefruit #(0.992 0.349 0.337)) #(#sandYellow #(0.988 0.882 0.4)) #(#clayBrown #(0.698 0.443 0.239)) #(#darkBlueGrey #(0.122 0.231 0.302)) #(#flatGreen #(0.412 0.616 0.298)) #(#lightGreenBlue #(0.337 0.988 0.635)) #(#warmPink #(0.984 0.333 0.506)) #(#dodgerBlue #(0.243 0.51 0.988)) #(#grossGreen #(0.627 0.749 0.086)) #(#ice #(0.839 1.0 0.98)) #(#metallicBlue #(0.31 0.451 0.557)) #(#paleSalmon #(1.0 0.694 0.604)) #(#sapGreen #(0.361 0.545 0.082)) #(#algae #(0.329 0.675 0.408)) #(#blueyGrey #(0.537 0.627 0.69)) #(#greenyGrey #(0.494 0.627 0.478)) #(#highlighterGreen #(0.106 0.988 0.024)) #(#lightLightBlue #(0.792 1.0 0.984)) #(#lightMint #(0.714 1.0 0.733)) #(#rawUmber #(0.655 0.369 0.035)) #(#vividBlue #(0.082 0.18 1.0)) #(#deepLavender #(0.553 0.369 0.718)) #(#dullTeal #(0.373 0.62 0.561)) #(#lightGreenishBlue #(0.388 0.969 0.706)) #(#mudGreen #(0.376 0.4 0.008)) #(#pinky #(0.988 0.525 0.667)) #(#redWine #(0.549 0.0 0.204)) #(#shitGreen #(0.459 0.502 0.0)) #(#tanBrown #(0.671 0.494 0.298)) #(#darkblue #(0.012 0.027 0.392)) #(#rosa #(0.996 0.525 0.643)) #(#lipstick #(0.835 0.09 0.306)) #(#paleMauve #(0.996 0.816 0.988)) #(#claret #(0.408 0.0 0.094)) #(#dandelion #(0.996 0.875 0.031)) #(#orangered #(0.996 0.259 0.059)) #(#poopGreen #(0.435 0.486 0.0)) #(#ruby #(0.792 0.004 0.278)) #(#dark #(0.106 0.141 0.192)) #(#greenishTurquoise #(0.0 0.984 0.69)) #(#pastelRed #(0.859 0.345 0.337)) #(#pissYellow #(0.867 0.839 0.094)) #(#brightCyan #(0.255 0.992 0.996)) #(#darkCoral #(0.812 0.322 0.306)) #(#algaeGreen #(0.129 0.765 0.435)) #(#darkishRed #(0.663 0.012 0.031)) #(#reddyBrown #(0.431 0.063 0.02)) #(#blushPink #(0.996 0.51 0.549)) #(#camouflageGreen #(0.294 0.38 0.075)) #(#lawnGreen #(0.302 0.643 0.035)) #(#putty #(0.745 0.682 0.541)) #(#vibrantBlue #(0.012 0.224 0.973)) #(#darkSand #(0.659 0.561 0.349)) #(#purple / blue #(0.365 0.129 0.816)) #(#saffron #(0.996 0.698 0.035)) #(#twilight #(0.306 0.318 0.545)) #(#warmBrown #(0.588 0.306 0.008)) #(#bluegrey #(0.522 0.639 0.698)) #(#bubbleGumPink #(1.0 0.412 0.686)) #(#duckEggBlue #(0.765 0.984 0.957)) #(#greenishCyan #(0.165 0.996 0.718)) #(#petrol #(0.0 0.373 0.416)) #(#royal #(0.047 0.09 0.576)) #(#butter #(1.0 1.0 0.506)) #(#dustyOrange #(0.941 0.514 0.227)) #(#offYellow #(0.945 0.953 0.247)) #(#paleOliveGreen #(0.694 0.824 0.482)) #(#orangish #(0.988 0.51 0.29)) #(#leaf #(0.443 0.667 0.204)) #(#lightBlueGrey #(0.718 0.788 0.886)) #(#driedBlood #(0.294 0.004 0.004)) #(#lightishPurple #(0.647 0.322 0.902)) #(#rustyRed #(0.686 0.184 0.051)) #(#lavenderBlue #(0.545 0.533 0.973)) #(#lightGrassGreen #(0.604 0.969 0.392)) #(#lightMintGreen #(0.651 0.984 0.698)) #(#sunflower #(1.0 0.773 0.071)) #(#velvet #(0.459 0.031 0.318)) #(#brickOrange #(0.757 0.29 0.035)) #(#lightishRed #(0.996 0.184 0.29)) #(#pureBlue #(0.008 0.012 0.886)) #(#twilightBlue #(0.039 0.263 0.478)) #(#violetRed #(0.647 0.0 0.333)) #(#yellowyBrown #(0.682 0.545 0.047)) #(#carnation #(0.992 0.475 0.561)) #(#muddyYellow #(0.749 0.675 0.02)) #(#darkSeafoamGreen #(0.243 0.686 0.463)) #(#deepRose #(0.78 0.278 0.404)) #(#dustyRed #(0.725 0.282 0.306)) #(#grey / blue #(0.392 0.49 0.557)) #(#lemonLime #(0.749 0.996 0.157)) #(#purple / pink #(0.843 0.145 0.871)) #(#brownYellow #(0.698 0.592 0.02)) #(#purpleBrown #(0.404 0.227 0.247)) #(#wisteria #(0.659 0.49 0.761)) #(#bananaYellow #(0.98 0.996 0.294)) #(#lipstickRed #(0.753 0.008 0.184)) #(#waterBlue #(0.055 0.529 0.8)) #(#brownGrey #(0.553 0.518 0.408)) #(#vibrantPurple #(0.678 0.012 0.871)) #(#babyGreen #(0.549 1.0 0.62)) #(#barfGreen #(0.58 0.675 0.008)) #(#eggshellBlue #(0.769 1.0 0.969)) #(#sandyYellow #(0.992 0.933 0.451)) #(#coolGreen #(0.2 0.722 0.392)) #(#pale #(1.0 0.976 0.816)) #(#blue / grey #(0.459 0.553 0.639)) #(#hotMagenta #(0.961 0.016 0.788)) #(#greyblue #(0.467 0.631 0.71)) #(#purpley #(0.529 0.337 0.894)) #(#babyShitGreen #(0.533 0.592 0.09)) #(#brownishPink #(0.761 0.494 0.475)) #(#darkAquamarine #(0.004 0.451 0.443)) #(#diarrhea #(0.624 0.514 0.012)) #(#lightMustard #(0.969 0.835 0.376)) #(#paleSkyBlue #(0.741 0.965 0.996)) #(#turtleGreen #(0.459 0.722 0.31)) #(#brightOlive #(0.612 0.733 0.016)) #(#darkGreyBlue #(0.161 0.275 0.357)) #(#greenyBrown #(0.412 0.376 0.024)) #(#lemonGreen #(0.678 0.973 0.008)) #(#lightPeriwinkle #(0.757 0.776 0.988)) #(#seaweedGreen #(0.208 0.678 0.42)) #(#sunshineYellow #(1.0 0.992 0.216)) #(#uglyPurple #(0.643 0.259 0.627)) #(#mediumPink #(0.953 0.38 0.588)) #(#pukeBrown #(0.58 0.467 0.024)) #(#veryLightPink #(1.0 0.957 0.949)) #(#viridian #(0.118 0.569 0.404)) #(#bile #(0.71 0.765 0.024)) #(#fadedYellow #(0.996 1.0 0.498)) #(#veryPaleGreen #(0.812 0.992 0.737)) #(#vibrantGreen #(0.039 0.867 0.031)) #(#brightLime #(0.529 0.992 0.02)) #(#spearmint #(0.118 0.973 0.463)) #(#lightAquamarine #(0.482 0.992 0.78)) #(#lightSage #(0.737 0.925 0.675)) #(#yellowgreen #(0.733 0.976 0.059)) #(#babyPoo #(0.671 0.565 0.016)) #(#darkSeafoam #(0.122 0.71 0.478)) #(#deepTeal #(0.0 0.333 0.353)) #(#heather #(0.643 0.518 0.675)) #(#rustOrange #(0.769 0.333 0.031)) #(#dirtyBlue #(0.247 0.51 0.616)) #(#fernGreen #(0.329 0.553 0.267)) #(#brightLilac #(0.788 0.369 0.984)) #(#weirdGreen #(0.227 0.898 0.498)) #(#peacockBlue #(0.004 0.404 0.584)) #(#avocadoGreen #(0.529 0.663 0.133)) #(#fadedOrange #(0.941 0.58 0.302)) #(#grapePurple #(0.365 0.078 0.318)) #(#hotGreen #(0.145 1.0 0.161)) #(#limeYellow #(0.816 0.996 0.114)) #(#mango #(1.0 0.651 0.169)) #(#shamrock #(0.004 0.706 0.298)) #(#bubblegum #(1.0 0.424 0.71)) #(#purplishBrown #(0.42 0.259 0.278)) #(#vomitYellow #(0.78 0.757 0.047)) #(#paleCyan #(0.718 1.0 0.98)) #(#keyLime #(0.682 1.0 0.431)) #(#tomatoRed #(0.925 0.176 0.004)) #(#lightgreen #(0.463 1.0 0.482)) #(#merlot #(0.451 0.0 0.224)) #(#nightBlue #(0.016 0.012 0.282)) #(#purpleishPink #(0.875 0.306 0.784)) #(#apple #(0.431 0.796 0.235)) #(#babyPoopGreen #(0.561 0.596 0.02)) #(#greenApple #(0.369 0.863 0.122)) #(#heliotrope #(0.851 0.31 0.961)) #(#yellow / green #(0.784 0.992 0.239)) #(#almostBlack #(0.027 0.051 0.051)) #(#coolBlue #(0.286 0.518 0.722)) #(#leafyGreen #(0.318 0.718 0.231)) #(#mustardBrown #(0.675 0.494 0.016)) #(#dusk #(0.306 0.329 0.506)) #(#dullBrown #(0.529 0.431 0.294)) #(#frogGreen #(0.345 0.737 0.031)) #(#vividGreen #(0.184 0.937 0.063)) #(#brightLightGreen #(0.176 0.996 0.329)) #(#fluroGreen #(0.039 1.0 0.008)) #(#kiwi #(0.612 0.937 0.263)) #(#seaweed #(0.094 0.82 0.482)) #(#navyGreen #(0.208 0.325 0.039)) #(#ultramarineBlue #(0.094 0.02 0.859)) #(#iris #(0.384 0.345 0.769)) #(#pastelOrange #(1.0 0.588 0.31)) #(#yellowishOrange #(1.0 0.671 0.059)) #(#perrywinkle #(0.561 0.549 0.906)) #(#tealish #(0.141 0.737 0.659)) #(#darkPlum #(0.247 0.004 0.173)) #(#pear #(0.796 0.973 0.373)) #(#pinkishOrange #(1.0 0.447 0.298)) #(#midnightPurple #(0.157 0.004 0.216)) #(#lightUrple #(0.702 0.435 0.965)) #(#darkMint #(0.282 0.753 0.447)) #(#greenishTan #(0.737 0.796 0.478)) #(#lightBurgundy #(0.659 0.255 0.357)) #(#turquoiseBlue #(0.024 0.694 0.769)) #(#uglyPink #(0.804 0.459 0.518)) #(#sandy #(0.945 0.855 0.478)) #(#electricPink #(1.0 0.016 0.565)) #(#mutedPurple #(0.502 0.357 0.529)) #(#midGreen #(0.314 0.655 0.278)) #(#greyish #(0.659 0.643 0.584)) #(#neonYellow #(0.812 1.0 0.016)) #(#banana #(1.0 1.0 0.494)) #(#carnationPink #(1.0 0.498 0.655)) #(#tomato #(0.937 0.251 0.149)) #(#sea #(0.235 0.6 0.573)) #(#muddyBrown #(0.533 0.408 0.024)) #(#turquoiseGreen #(0.016 0.957 0.537)) #(#buff #(0.996 0.965 0.62)) #(#fawn #(0.812 0.686 0.482)) #(#mutedBlue #(0.231 0.443 0.624)) #(#paleRose #(0.992 0.757 0.773)) #(#darkMintGreen #(0.125 0.753 0.451)) #(#amethyst #(0.608 0.373 0.753)) #(#blue / green #(0.059 0.608 0.557)) #(#chestnut #(0.455 0.157 0.008)) #(#sickGreen #(0.616 0.725 0.173)) #(#pea #(0.643 0.749 0.125)) #(#rustyOrange #(0.804 0.349 0.035)) #(#stone #(0.678 0.647 0.529)) #(#roseRed #(0.745 0.004 0.235)) #(#paleAqua #(0.722 1.0 0.922)) #(#deepOrange #(0.863 0.302 0.004)) #(#earth #(0.635 0.396 0.243)) #(#mossyGreen #(0.388 0.545 0.153)) #(#grassyGreen #(0.255 0.612 0.012)) #(#paleLimeGreen #(0.694 1.0 0.396)) #(#lightGreyBlue #(0.616 0.737 0.831)) #(#paleGrey #(0.992 0.992 0.996)) #(#asparagus #(0.467 0.671 0.337)) #(#blueberry #(0.275 0.255 0.588)) #(#purpleRed #(0.6 0.004 0.278)) #(#paleLime #(0.745 0.992 0.451)) #(#greenishTeal #(0.196 0.749 0.518)) #(#caramel #(0.686 0.435 0.035)) #(#deepMagenta #(0.627 0.008 0.361)) #(#lightPeach #(1.0 0.847 0.694)) #(#milkChocolate #(0.498 0.306 0.118)) #(#ocher #(0.749 0.608 0.047)) #(#offGreen #(0.42 0.639 0.325)) #(#purplyPink #(0.941 0.459 0.902)) #(#lightblue #(0.482 0.784 0.965)) #(#duskyBlue #(0.278 0.373 0.58)) #(#golden #(0.961 0.749 0.012)) #(#lightBeige #(1.0 0.996 0.714)) #(#butterYellow #(1.0 0.992 0.455)) #(#duskyPurple #(0.537 0.357 0.482)) #(#frenchBlue #(0.263 0.42 0.678)) #(#uglyYellow #(0.816 0.757 0.004)) #(#greenyYellow #(0.776 0.973 0.031)) #(#orangishRed #(0.957 0.212 0.02)) #(#shamrockGreen #(0.008 0.757 0.302)) #(#orangishBrown #(0.698 0.373 0.012)) #(#treeGreen #(0.165 0.494 0.098)) #(#deepViolet #(0.286 0.024 0.282)) #(#gunmetal #(0.325 0.384 0.404)) #(#blue / purple #(0.353 0.024 0.937)) #(#cherry #(0.812 0.008 0.204)) #(#sandyBrown #(0.769 0.651 0.38)) #(#warmGrey #(0.592 0.541 0.518)) #(#darkIndigo #(0.122 0.035 0.329)) #(#midnight #(0.012 0.004 0.176)) #(#blueyGreen #(0.169 0.694 0.475)) #(#greyPink #(0.765 0.565 0.608)) #(#softPurple #(0.651 0.435 0.71)) #(#blood #(0.467 0.0 0.004)) #(#brownRed #(0.573 0.169 0.02)) #(#mediumGrey #(0.49 0.498 0.486)) #(#berry #(0.6 0.059 0.294)) #(#poo #(0.561 0.451 0.012)) #(#purpleyPink #(0.784 0.235 0.725)) #(#lightSalmon #(0.996 0.663 0.576)) #(#snot #(0.675 0.733 0.051)) #(#easterPurple #(0.753 0.443 0.996)) #(#lightYellowGreen #(0.8 0.992 0.498)) #(#darkNavyBlue #(0.0 0.008 0.18)) #(#drab #(0.51 0.514 0.267)) #(#lightRose #(1.0 0.773 0.796)) #(#rouge #(0.671 0.071 0.224)) #(#purplishRed #(0.69 0.02 0.294)) #(#slimeGreen #(0.6 0.8 0.016)) #(#babyPoop #(0.576 0.486 0.0)) #(#irishGreen #(0.004 0.584 0.161)) #(#pink / purple #(0.937 0.114 0.906)) #(#darkNavy #(0.0 0.016 0.208)) #(#greenyBlue #(0.259 0.702 0.584)) #(#lightPlum #(0.616 0.341 0.514)) #(#pinkishGrey #(0.784 0.675 0.663)) #(#dirtyOrange #(0.784 0.463 0.024)) #(#rustRed #(0.667 0.153 0.016)) #(#paleLilac #(0.894 0.796 1.0)) #(#orangeyRed #(0.98 0.259 0.141)) #(#primaryBlue #(0.031 0.016 0.976)) #(#kermitGreen #(0.361 0.698 0.0)) #(#brownishPurple #(0.463 0.259 0.306)) #(#murkyGreen #(0.424 0.478 0.055)) #(#wheat #(0.984 0.867 0.494)) #(#veryDarkPurple #(0.165 0.004 0.204)) #(#bottleGreen #(0.016 0.29 0.02)) #(#watermelon #(0.992 0.275 0.349)) #(#deepSkyBlue #(0.051 0.459 0.973)) #(#fireEngineRed #(0.996 0.0 0.008)) #(#yellowOchre #(0.796 0.616 0.024)) #(#pumpkinOrange #(0.984 0.49 0.027)) #(#paleOlive #(0.725 0.8 0.506)) #(#lightLilac #(0.929 0.784 1.0)) #(#lightishGreen #(0.38 0.882 0.376)) #(#carolinaBlue #(0.541 0.722 0.996)) #(#mulberry #(0.573 0.039 0.306)) #(#shockingPink #(0.996 0.008 0.635)) #(#auburn #(0.604 0.188 0.004)) #(#brightLimeGreen #(0.396 0.996 0.031)) #(#celadon #(0.745 0.992 0.718)) #(#pinkishBrown #(0.694 0.447 0.38)) #(#pooBrown #(0.533 0.373 0.004)) #(#brightSkyBlue #(0.008 0.8 0.996)) #(#celery #(0.757 0.992 0.584)) #(#dirtBrown #(0.514 0.396 0.224)) #(#strawberry #(0.984 0.161 0.263)) #(#darkLime #(0.518 0.718 0.004)) #(#copper #(0.714 0.388 0.145)) #(#mediumBrown #(0.498 0.318 0.071)) #(#mutedGreen #(0.373 0.627 0.322)) #(#robinsEgg #(0.427 0.929 0.992)) #(#brightAqua #(0.043 0.976 0.918)) #(#brightLavender #(0.78 0.376 1.0)) #(#ivory #(1.0 1.0 0.796)) #(#veryLightPurple #(0.965 0.808 0.988)) #(#lightNavy #(0.082 0.314 0.518)) #(#pinkRed #(0.961 0.02 0.31)) #(#oliveBrown #(0.392 0.329 0.012)) #(#poopBrown #(0.478 0.349 0.004)) #(#mustardGreen #(0.659 0.71 0.016)) #(#oceanGreen #(0.239 0.6 0.451)) #(#veryDarkBlue #(0.0 0.004 0.2)) #(#dustyGreen #(0.463 0.663 0.451)) #(#lightNavyBlue #(0.18 0.353 0.533)) #(#mintyGreen #(0.043 0.969 0.49)) #(#adobe #(0.741 0.424 0.282)) #(#barney #(0.675 0.114 0.722)) #(#jadeGreen #(0.169 0.686 0.416)) #(#brightLightBlue #(0.149 0.969 0.992)) #(#lightLime #(0.682 0.992 0.424)) #(#darkKhaki #(0.608 0.561 0.333)) #(#orangeYellow #(1.0 0.678 0.004)) #(#ocre #(0.776 0.612 0.016)) #(#maize #(0.957 0.816 0.329)) #(#fadedPink #(0.871 0.616 0.675)) #(#britishRacingGreen #(0.02 0.282 0.051)) #(#sandstone #(0.788 0.682 0.455)) #(#mudBrown #(0.376 0.275 0.059)) #(#lightSeaGreen #(0.596 0.965 0.69)) #(#robinEggBlue #(0.541 0.945 0.996)) #(#aquaMarine #(0.18 0.91 0.733)) #(#darkSeaGreen #(0.067 0.529 0.365)) #(#softPink #(0.992 0.69 0.753)) #(#orangeyBrown #(0.694 0.376 0.008)) #(#cherryRed #(0.969 0.008 0.165)) #(#burntYellow #(0.835 0.671 0.035)) #(#brownishGrey #(0.525 0.467 0.373)) #(#camel #(0.776 0.624 0.349)) #(#purplishGrey #(0.478 0.408 0.498)) #(#marine #(0.016 0.18 0.376)) #(#greyishPink #(0.784 0.553 0.58)) #(#paleTurquoise #(0.647 0.984 0.835)) #(#pastelYellow #(1.0 0.996 0.443)) #(#blueyPurple #(0.384 0.255 0.78)) #(#canaryYellow #(1.0 0.996 0.251)) #(#fadedRed #(0.827 0.286 0.306)) #(#sepia #(0.596 0.369 0.169)) #(#coffee #(0.651 0.506 0.298)) #(#brightMagenta #(1.0 0.031 0.91)) #(#mocha #(0.616 0.463 0.318)) #(#ecru #(0.996 1.0 0.792)) #(#purpleish #(0.596 0.337 0.553)) #(#cranberry #(0.62 0.0 0.227)) #(#darkishGreen #(0.157 0.486 0.216)) #(#brownOrange #(0.725 0.412 0.008)) #(#duskyRose #(0.729 0.408 0.451)) #(#melon #(1.0 0.471 0.333)) #(#sicklyGreen #(0.58 0.698 0.11)) #(#silver #(0.773 0.788 0.78)) #(#purplyBlue #(0.4 0.102 0.933)) #(#purpleishBlue #(0.38 0.251 0.937)) #(#hospitalGreen #(0.608 0.898 0.667)) #(#shitBrown #(0.482 0.345 0.016)) #(#midBlue #(0.153 0.416 0.702)) #(#amber #(0.996 0.702 0.031)) #(#easterGreen #(0.549 0.992 0.494)) #(#softBlue #(0.392 0.533 0.918)) #(#ceruleanBlue #(0.02 0.431 0.933)) #(#goldenBrown #(0.698 0.478 0.004)) #(#brightTurquoise #(0.059 0.996 0.976)) #(#redPink #(0.98 0.165 0.333)) #(#redPurple #(0.51 0.027 0.278)) #(#greyishBrown #(0.478 0.416 0.31)) #(#vermillion #(0.957 0.196 0.047)) #(#russet #(0.631 0.224 0.02)) #(#steelGrey #(0.435 0.51 0.541)) #(#lighterPurple #(0.647 0.353 0.957)) #(#brightViolet #(0.678 0.039 0.992)) #(#prussianBlue #(0.0 0.271 0.467)) #(#slateGreen #(0.396 0.553 0.427)) #(#dirtyPink #(0.792 0.482 0.502)) #(#darkBlueGreen #(0.0 0.322 0.286)) #(#pine #(0.169 0.365 0.204)) #(#yellowyGreen #(0.749 0.945 0.157)) #(#darkGold #(0.71 0.58 0.063)) #(#bluish #(0.161 0.463 0.733)) #(#darkishBlue #(0.004 0.255 0.51)) #(#dullRed #(0.733 0.247 0.247)) #(#pinkyRed #(0.988 0.149 0.278)) #(#bronze #(0.659 0.475 0.0)) #(#paleTeal #(0.51 0.796 0.698)) #(#militaryGreen #(0.4 0.486 0.243)) #(#barbiePink #(0.996 0.275 0.647)) #(#bubblegumPink #(0.996 0.514 0.8)) #(#peaSoupGreen #(0.58 0.651 0.09)) #(#darkMustard #(0.659 0.537 0.02)) #(#shit #(0.498 0.373 0.0)) #(#mediumPurple #(0.62 0.263 0.635)) #(#veryDarkGreen #(0.024 0.18 0.012)) #(#dirt #(0.541 0.431 0.271)) #(#duskyPink #(0.8 0.478 0.545)) #(#redViolet #(0.62 0.004 0.408)) #(#lemonYellow #(0.992 1.0 0.22)) #(#pistachio #(0.753 0.98 0.545)) #(#dullYellow #(0.933 0.863 0.357)) #(#darkLimeGreen #(0.494 0.741 0.004)) #(#denimBlue #(0.231 0.357 0.573)) #(#tealBlue #(0.004 0.533 0.624)) #(#lightishBlue #(0.239 0.478 0.992)) #(#purpleyBlue #(0.373 0.204 0.906)) #(#lightIndigo #(0.427 0.353 0.812)) #(#swampGreen #(0.455 0.522 0.0)) #(#brownGreen #(0.439 0.424 0.067)) #(#darkMaroon #(0.235 0.0 0.031)) #(#hotPurple #(0.796 0.0 0.961)) #(#darkForestGreen #(0.0 0.176 0.016)) #(#fadedBlue #(0.396 0.549 0.733)) #(#drabGreen #(0.455 0.584 0.318)) #(#lightLimeGreen #(0.725 1.0 0.4)) #(#snotGreen #(0.616 0.757 0.0)) #(#yellowish #(0.98 0.933 0.4)) #(#lightBlueGreen #(0.494 0.984 0.702)) #(#bordeaux #(0.482 0.0 0.173)) #(#lightMauve #(0.761 0.573 0.631)) #(#ocean #(0.004 0.482 0.573)) #(#marigold #(0.988 0.753 0.024)) #(#muddyGreen #(0.396 0.455 0.196)) #(#dullOrange #(0.847 0.525 0.231)) #(#steel #(0.451 0.522 0.584)) #(#electricPurple #(0.667 0.137 1.0)) #(#fluorescentGreen #(0.031 1.0 0.031)) #(#yellowishBrown #(0.608 0.478 0.004)) #(#blush #(0.949 0.62 0.557)) #(#softGreen #(0.435 0.761 0.463)) #(#brightOrange #(1.0 0.357 0.0)) #(#lemon #(0.992 1.0 0.322)) #(#purpleGrey #(0.525 0.435 0.522)) #(#acidGreen #(0.561 0.996 0.035)) #(#paleLavender #(0.933 0.812 0.996)) #(#violetBlue #(0.318 0.039 0.788)) #(#lightForestGreen #(0.31 0.569 0.325)) #(#burntRed #(0.624 0.137 0.02)) #(#khakiGreen #(0.447 0.525 0.224)) #(#cerise #(0.871 0.047 0.384)) #(#fadedPurple #(0.569 0.431 0.6)) #(#apricot #(1.0 0.694 0.427)) #(#darkOliveGreen #(0.235 0.302 0.012)) #(#greyBrown #(0.498 0.439 0.325)) #(#greenGrey #(0.467 0.573 0.435)) #(#trueBlue #(0.004 0.059 0.8)) #(#paleViolet #(0.808 0.682 0.98)) #(#periwinkleBlue #(0.561 0.6 0.984)) #(#lightSkyBlue #(0.776 0.988 1.0)) #(#blurple #(0.333 0.224 0.8)) #(#greenBrown #(0.329 0.306 0.012)) #(#bluegreen #(0.004 0.478 0.475)) #(#brightTeal #(0.004 0.976 0.776)) #(#brownishYellow #(0.788 0.69 0.012)) #(#peaSoup #(0.573 0.6 0.004)) #(#forest #(0.043 0.333 0.035)) #(#barneyPurple #(0.627 0.016 0.596)) #(#ultramarine #(0.125 0.0 0.694)) #(#purplish #(0.58 0.337 0.549)) #(#pukeYellow #(0.761 0.745 0.055)) #(#bluishGrey #(0.455 0.545 0.592)) #(#darkPeriwinkle #(0.4 0.373 0.82)) #(#darkLilac #(0.612 0.427 0.647)) #(#reddish #(0.769 0.259 0.251)) #(#lightMaroon #(0.635 0.282 0.341)) #(#dustyPurple #(0.51 0.373 0.529)) #(#terraCotta #(0.788 0.392 0.231)) #(#avocado #(0.565 0.694 0.204)) #(#marineBlue #(0.004 0.22 0.416)) #(#tealGreen #(0.145 0.639 0.435)) #(#slateGrey #(0.349 0.396 0.427)) #(#lighterGreen #(0.459 0.992 0.388)) #(#electricGreen #(0.129 0.988 0.051)) #(#dustyBlue #(0.353 0.525 0.678)) #(#goldenYellow #(0.996 0.776 0.082)) #(#brightYellow #(1.0 0.992 0.004)) #(#lightLavender #(0.875 0.773 0.996)) #(#umber #(0.698 0.392 0.0)) #(#poop #(0.498 0.369 0.0)) #(#darkPeach #(0.871 0.494 0.365)) #(#jungleGreen #(0.016 0.51 0.263)) #(#eggshell #(1.0 1.0 0.831)) #(#denim #(0.231 0.388 0.549)) #(#yellowBrown #(0.718 0.58 0.0)) #(#dullPurple #(0.518 0.349 0.494)) #(#chocolateBrown #(0.255 0.098 0.0)) #(#wineRed #(0.482 0.012 0.137)) #(#neonBlue #(0.016 0.851 1.0)) #(#dirtyGreen #(0.4 0.494 0.173)) #(#lightTan #(0.984 0.933 0.675)) #(#iceBlue #(0.843 1.0 0.996)) #(#cadetBlue #(0.306 0.455 0.588)) #(#darkMauve #(0.529 0.298 0.384)) #(#veryLightBlue #(0.835 1.0 1.0)) #(#greyPurple #(0.51 0.427 0.549)) #(#pastelPink #(1.0 0.729 0.804)) #(#veryLightGreen #(0.82 1.0 0.741)) #(#darkSkyBlue #(0.267 0.557 0.894)) #(#evergreen #(0.02 0.278 0.165)) #(#dullPink #(0.835 0.525 0.616)) #(#aubergine #(0.239 0.027 0.204)) #(#mahogany #(0.29 0.004 0.0)) #(#reddishOrange #(0.973 0.282 0.11)) #(#deepGreen #(0.008 0.349 0.059)) #(#vomitGreen #(0.537 0.635 0.012)) #(#purplePink #(0.878 0.247 0.847)) #(#dustyPink #(0.835 0.541 0.58)) #(#fadedGreen #(0.482 0.698 0.455)) #(#camoGreen #(0.322 0.396 0.145)) #(#pinkyPurple #(0.788 0.298 0.745)) #(#pinkPurple #(0.859 0.294 0.855)) #(#brownishRed #(0.62 0.212 0.137)) #(#darkRose #(0.71 0.282 0.365)) #(#mud #(0.451 0.361 0.071)) #(#brownish #(0.612 0.427 0.341)) #(#emeraldGreen #(0.008 0.561 0.118)) #(#paleBrown #(0.694 0.569 0.431)) #(#dullBlue #(0.286 0.459 0.612)) #(#burntUmber #(0.627 0.271 0.055)) #(#mediumGreen #(0.224 0.678 0.282)) #(#clay #(0.714 0.416 0.314)) #(#lightAqua #(0.549 1.0 0.859)) #(#lightOliveGreen #(0.643 0.745 0.361)) #(#brownishOrange #(0.796 0.467 0.137)) #(#darkAqua #(0.02 0.412 0.42)) #(#purplishPink #(0.808 0.365 0.682)) #(#darkSalmon #(0.784 0.353 0.325)) #(#greenishGrey #(0.588 0.682 0.553)) #(#jade #(0.122 0.655 0.455)) #(#uglyGreen #(0.478 0.592 0.012)) #(#darkBeige #(0.675 0.576 0.384)) #(#emerald #(0.004 0.627 0.286)) #(#paleRed #(0.851 0.329 0.302)) #(#lightMagenta #(0.98 0.373 0.969)) #(#sky #(0.51 0.792 0.988)) #(#lightCyan #(0.675 1.0 0.988)) #(#yellowOrange #(0.988 0.69 0.004)) #(#reddishPurple #(0.569 0.035 0.318)) #(#reddishPink #(0.996 0.173 0.329)) #(#orchid #(0.784 0.459 0.769)) #(#dirtyYellow #(0.804 0.773 0.039)) #(#orangeRed #(0.992 0.255 0.118)) #(#deepRed #(0.604 0.008 0.0)) #(#orangeBrown #(0.745 0.392 0.0)) #(#cobaltBlue #(0.012 0.039 0.655)) #(#neonPink #(0.996 0.004 0.604)) #(#rosePink #(0.969 0.529 0.604)) #(#greyishPurple #(0.533 0.443 0.569)) #(#raspberry #(0.69 0.004 0.286)) #(#aquaGreen #(0.071 0.882 0.576)) #(#salmonPink #(0.996 0.482 0.486)) #(#tangerine #(1.0 0.58 0.031)) #(#brownishGreen #(0.416 0.431 0.035)) #(#redBrown #(0.545 0.18 0.086)) #(#greenishBrown #(0.412 0.38 0.071)) #(#pumpkin #(0.882 0.467 0.004)) #(#pineGreen #(0.039 0.282 0.118)) #(#charcoal #(0.204 0.22 0.216)) #(#babyPink #(1.0 0.718 0.808)) #(#cornflower #(0.416 0.475 0.969)) #(#blueViolet #(0.365 0.024 0.914)) #(#chocolate #(0.239 0.11 0.008)) #(#greyishGreen #(0.51 0.651 0.49)) #(#scarlet #(0.745 0.004 0.098)) #(#greenYellow #(0.788 1.0 0.153)) #(#darkOlive #(0.216 0.243 0.008)) #(#sienna #(0.663 0.337 0.118)) #(#pastelPurple #(0.792 0.627 1.0)) #(#terracotta #(0.792 0.4 0.255)) #(#aquaBlue #(0.008 0.847 0.914)) #(#sageGreen #(0.533 0.702 0.471)) #(#bloodRed #(0.596 0.0 0.008)) #(#deepPink #(0.796 0.004 0.384)) #(#grass #(0.361 0.675 0.176)) #(#moss #(0.463 0.6 0.345)) #(#pastelBlue #(0.635 0.749 0.996)) #(#bluishGreen #(0.063 0.651 0.455)) #(#greenBlue #(0.024 0.706 0.545)) #(#darkTan #(0.686 0.533 0.29)) #(#greenishBlue #(0.043 0.545 0.529)) #(#paleOrange #(1.0 0.655 0.337)) #(#vomit #(0.635 0.643 0.082)) #(#forrestGreen #(0.082 0.267 0.024)) #(#darkLavender #(0.522 0.404 0.596)) #(#darkViolet #(0.204 0.004 0.247)) #(#purpleBlue #(0.388 0.176 0.914)) #(#darkCyan #(0.039 0.533 0.541)) #(#oliveDrab #(0.435 0.463 0.196)) #(#pinkish #(0.831 0.416 0.494)) #(#cobalt #(0.118 0.282 0.561)) #(#neonPurple #(0.737 0.075 0.996)) #(#lightTurquoise #(0.494 0.957 0.8)) #(#appleGreen #(0.463 0.804 0.149)) #(#dullGreen #(0.455 0.651 0.384)) #(#wine #(0.502 0.004 0.247)) #(#powderBlue #(0.694 0.82 0.988)) #(#offWhite #(1.0 1.0 0.894)) #(#electricBlue #(0.024 0.322 1.0)) #(#darkTurquoise #(0.016 0.361 0.353)) #(#bluePurple #(0.341 0.161 0.808)) #(#azure #(0.024 0.604 0.953)) #(#brightRed #(1.0 0.0 0.051)) #(#pinkishRed #(0.945 0.047 0.271)) #(#cornflowerBlue #(0.318 0.439 0.843)) #(#lightOlive #(0.675 0.749 0.412)) #(#grape #(0.424 0.204 0.38)) #(#greyishBlue #(0.369 0.506 0.616)) #(#purplishBlue #(0.376 0.118 0.976)) #(#yellowishGreen #(0.69 0.867 0.086)) #(#greenishYellow #(0.804 0.992 0.008)) #(#mediumBlue #(0.173 0.435 0.733)) #(#dustyRose #(0.753 0.451 0.478)) #(#lightViolet #(0.839 0.706 0.988)) #(#midnightBlue #(0.008 0.0 0.208)) #(#bluishPurple #(0.439 0.231 0.906)) #(#redOrange #(0.992 0.235 0.024)) #(#darkMagenta #(0.588 0.0 0.337)) #(#greenish #(0.251 0.639 0.408)) #(#oceanBlue #(0.012 0.443 0.612)) #(#coral #(0.988 0.353 0.314)) #(#cream #(1.0 1.0 0.761)) #(#reddishBrown #(0.498 0.169 0.039)) #(#burntSienna #(0.69 0.306 0.059)) #(#brick #(0.627 0.212 0.137)) #(#sage #(0.529 0.682 0.451)) #(#greyGreen #(0.471 0.608 0.451)) #(#white #(1.0 1.0 1.0)) #(#robinsEggBlue #(0.596 0.937 0.976)) #(#mossGreen #(0.396 0.545 0.22)) #(#steelBlue #(0.353 0.49 0.604)) #(#eggplant #(0.22 0.031 0.208)) #(#lightYellow #(1.0 0.996 0.478)) #(#leafGreen #(0.361 0.663 0.016)) #(#lightGrey #(0.847 0.863 0.839)) #(#puke #(0.647 0.647 0.008)) #(#pinkishPurple #(0.839 0.282 0.843)) #(#seaBlue #(0.016 0.455 0.584)) #(#palePurple #(0.718 0.565 0.831)) #(#slateBlue #(0.357 0.486 0.6)) #(#blueGrey #(0.376 0.486 0.557)) #(#hunterGreen #(0.043 0.251 0.031)) #(#fuchsia #(0.929 0.051 0.851)) #(#crimson #(0.549 0.0 0.059)) #(#paleYellow #(1.0 1.0 0.518)) #(#ochre #(0.749 0.565 0.02)) #(#mustardYellow #(0.824 0.741 0.039)) #(#lightRed #(1.0 0.278 0.298)) #(#cerulean #(0.016 0.522 0.82)) #(#palePink #(1.0 0.812 0.863)) #(#deepBlue #(0.016 0.008 0.451)) #(#rust #(0.659 0.235 0.035)) #(#lightTeal #(0.565 0.894 0.757)) #(#slate #(0.318 0.396 0.447)) #(#goldenrod #(0.98 0.761 0.02)) #(#darkYellow #(0.835 0.714 0.039)) #(#darkGrey #(0.212 0.216 0.216)) #(#armyGreen #(0.294 0.365 0.086)) #(#greyBlue #(0.42 0.545 0.643)) #(#seafoam #(0.502 0.976 0.678)) #(#puce #(0.647 0.494 0.322)) #(#springGreen #(0.663 0.976 0.443)) #(#darkOrange #(0.776 0.318 0.008)) #(#sand #(0.886 0.792 0.463)) #(#pastelGreen #(0.69 1.0 0.616)) #(#mint #(0.624 0.996 0.69)) #(#lightOrange #(0.992 0.667 0.282)) #(#brightPink #(0.996 0.004 0.694)) #(#chartreuse #(0.757 0.973 0.039)) #(#deepPurple #(0.212 0.004 0.247)) #(#darkBrown #(0.204 0.11 0.008)) #(#taupe #(0.725 0.635 0.506)) #(#peaGreen #(0.557 0.671 0.071)) #(#pukeGreen #(0.604 0.682 0.027)) #(#kellyGreen #(0.008 0.671 0.18)) #(#seafoamGreen #(0.478 0.976 0.671)) #(#blueGreen #(0.075 0.494 0.427)) #(#khaki #(0.667 0.651 0.384)) #(#burgundy #(0.38 0.0 0.137)) #(#darkTeal #(0.004 0.302 0.306)) #(#brickRed #(0.561 0.078 0.008)) #(#royalPurple #(0.294 0.0 0.431)) #(#plum #(0.345 0.059 0.255)) #(#mintGreen #(0.561 1.0 0.624)) #(#gold #(0.859 0.706 0.047)) #(#babyBlue #(0.635 0.812 0.996)) #(#yellowGreen #(0.753 0.984 0.176)) #(#brightPurple #(0.745 0.012 0.992)) #(#darkRed #(0.518 0.0 0.0)) #(#paleBlue #(0.816 0.996 0.996)) #(#grassGreen #(0.247 0.608 0.043)) #(#navy #(0.004 0.082 0.243)) #(#aquamarine #(0.016 0.847 0.698)) #(#burntOrange #(0.753 0.306 0.004)) #(#neonGreen #(0.047 1.0 0.047)) #(#brightBlue #(0.004 0.396 0.988)) #(#rose #(0.812 0.384 0.459)) #(#lightPink #(1.0 0.82 0.875)) #(#mustard #(0.808 0.702 0.004)) #(#indigo #(0.22 0.008 0.51)) #(#lime #(0.667 1.0 0.196)) #(#seaGreen #(0.325 0.988 0.631)) #(#periwinkle #(0.557 0.51 0.996)) #(#darkPink #(0.796 0.255 0.42)) #(#oliveGreen #(0.404 0.478 0.016)) #(#peach #(1.0 0.69 0.486)) #(#paleGreen #(0.78 0.992 0.71)) #(#lightBrown #(0.678 0.506 0.314)) #(#hotPink #(1.0 0.008 0.553)) #(#black #(0.0 0.0 0.0)) #(#lilac #(0.808 0.635 0.992)) #(#navyBlue #(0.0 0.067 0.275)) #(#royalBlue #(0.02 0.016 0.667)) #(#beige #(0.902 0.855 0.651)) #(#salmon #(1.0 0.475 0.424)) #(#olive #(0.431 0.459 0.055)) #(#maroon #(0.396 0.0 0.129)) #(#brightGreen #(0.004 1.0 0.027)) #(#darkPurple #(0.208 0.024 0.243)) #(#mauve #(0.682 0.443 0.506)) #(#forestGreen #(0.024 0.278 0.047)) #(#aqua #(0.075 0.918 0.788)) #(#cyan #(0.0 1.0 1.0)) #(#tan #(0.82 0.698 0.435)) #(#darkBlue #(0.0 0.012 0.357)) #(#lavender #(0.78 0.624 0.937)) #(#turquoise #(0.024 0.761 0.675)) #(#darkGreen #(0.012 0.208 0.0)) #(#violet #(0.604 0.055 0.918)) #(#lightPurple #(0.749 0.467 0.965)) #(#limeGreen #(0.537 0.996 0.02)) #(#grey #(0.573 0.584 0.569)) #(#skyBlue #(0.459 0.733 0.992)) #(#yellow #(1.0 1.0 0.078)) #(#magenta #(0.761 0.0 0.471)) #(#lightGreen #(0.588 0.976 0.482)) #(#orange #(0.976 0.451 0.024)) #(#teal #(0.008 0.576 0.525)) #(#lightBlue #(0.584 0.816 0.988)) #(#red #(0.898 0.0 0.0)) #(#brown #(0.396 0.216 0.0)) #(#pink #(1.0 0.506 0.753)) #(#blue #(0.012 0.263 0.875)) #(#green #(0.082 0.69 0.102)) #(#purple #(0.494 0.118 0.612)))
]

{ #category : #'*MoreColors' }
Color class >> darkColorNames [
	"self darkColorNames"
	^(Color registeredColorNames select: [:s |  (Color named:  s) brightness < 0.5])
		
]

{ #category : #'*MoreColors' }
Color class >> darkColors [
	"self darkColors asArray"

	^ self darkColorNames collect: [ :each | Color named: each ]
]

{ #category : #'*MoreColors' }
Color class >> displayBrightColors [
	"self displayBrightColors "

	self displayColors: self brightColors asArray sortBy: #brightness label: 'Bright colors'
]

{ #category : #'*MoreColors' }
Color class >> displayColors: anArray sortBy: aSymbol label: aString [
	"useful symbols are #luminance, #saturation, #hue, #brightness, #red, #blue, #green"

	| sortedArray |
	sortedArray := anArray sorted: [ :c1 :c2 |  (c1 perform: aSymbol) < (c2 perform: aSymbol)]. 
	sortedArray inspect.

]

{ #category : #'*MoreColors' }
Color class >> displayColorsNamed: anArray sortBy: aSymbol label: aString [
	"useful symbols are #luminance, #saturation, #hue, #brightness, #red, #blue, #green"

	"self displayColorsNamed: self pastelColorNames sortBy: #saturation label: 'Pastel colors'"
	"self displayColorsNamed: self pastelColorNames sortBy: #hue label: 'Orange colors'"
	| sortedArray |
	sortedArray := (anArray collect: [ :s | Color named: s ]) sorted: [ :c1 :c2 | (c1 perform: aSymbol) < (c2 perform: aSymbol) ].
	sortedArray inspect
]

{ #category : #'*MoreColors' }
Color class >> gradientFrom: startColor to: endColor steps: steps [
	"Calculate a gradient from a color to a color, in a quantity of steps. 
	 This is useful to make palettes, etc."
	| redStart redDist greenStart greenDist blueStart blueDist redGap greenGap blueGap |
	
	redStart := startColor red.
	redDist := endColor red - startColor red.

	greenStart := startColor green.
	greenDist := endColor green - startColor green.

	blueStart := startColor blue.
	blueDist := endColor blue - startColor blue.

	redGap := redDist / steps.
	greenGap := greenDist / steps.
	blueGap := blueDist / steps.

	^ Array streamContents: [ :stream |
		stream << startColor.
		1 to: (steps - 2) do: [ :index | 
			stream << (self
				r: redStart + (redGap * index) 
				g: greenStart + (greenGap * index) 
				b: blueStart + (blueGap * index)) ].
		stream << endColor ]
]

{ #category : #'*MoreColors' }
Color class >> greenColorNames [

	^ (Color registeredColorNames
			select: [ :s | 
					(s asLowercase includesSubstring: 'green')
						or: [ | col |
							col := Color named: s.
							col green > (col blue + 0.3) and: [ col blue > (col red + 0.3) ] ] ])
		
]

{ #category : #'*MoreColors' }
Color class >> greenColors [
	"self greenColors asArray"

	^ self greenColorNames 
		collect: [ :e | Color named: e ]
]

{ #category : #'*MoreColors' }
Color class >> greyColorNames [
	^ Color registeredColorNames
		select: [ :s | 
			(s asLowercase includesSubstring: 'grey')
				or: [ | col |
					col := Color named: s.
					(col red closeTo: col green) and: [ col blue closeTo: col green ] ] ]
]

{ #category : #'*MoreColors' }
Color class >> initializeNames [
	"Name some colors."

	"Color initializeNames"
	self flag: #todo. "make sure that we can add new colors without having to recompile this method. 
	It would be also nice that the initializeNames method is invoked automatically from initialize. but for now let us make sure that this package load in Pharo 60 and Pharo 70"
	
	self colorNamesEmacs , self colorNamesXKCD
		do: [ :spec | 
			| colorName |
			colorName := ('' join: spec allButLast) asSymbol.
			(ColorRegistry includes: colorName)
				ifFalse: [ ColorRegistry at: colorName put: (Color perform: #r:g:b: withArguments: spec last) ] ]
		displayingProgress: 'Initializing named colors...'
]

{ #category : #'*MoreColors' }
Color class >> lightColorNames [
	^ Color registeredColorNames select: [ :s | (Color named: s) brightness > 0.6 ]
]

{ #category : #'*MoreColors' }
Color class >> lightColors [
	^ self lightColorNames collect: [ :each | Color named: each ]
]

{ #category : #'*MoreColors' }
Color class >> orangeColorNames [

	^ (Color registeredColorNames
				select: [ :s | 
					(s asLowercase includesSubstring: 'orang')
						or: [ | col |
							col := Color named: s.
							col red > ((col green max: col blue) + 0.2) and: [ col green > (col blue + 0.2) ] ] ])
	
]

{ #category : #'*MoreColors' }
Color class >> orangeColors [
	^ self orangeColorNames collect: [ :each | Color named: each ]
]

{ #category : #'*MoreColors' }
Color class >> pastelColorNames [
	"self pastelColorNames"
	
	^ (Color registeredColorNames select: [:s |   (Color named: s asSymbol) saturation < 0.4])
		
]

{ #category : #'*MoreColors' }
Color class >> pastelColors [
	"self pastelColors"

	^ self pastelColorNames collect: [ :c | Color named: c ]
]

{ #category : #'*MoreColors' }
Color class >> pinkColorNames [
	^ Color registeredColorNames
		select: [ :s | 
			(s asLowercase includesSubstring: 'pink')
				or: [ | col |
					col := Color named: s.
					col red > ((col green max: col blue) + 0.3) and: [ col blue > (col green + 0.2) ] ] ]
]

{ #category : #'*MoreColors' }
Color class >> pinkColors [
	^ self pinkColorNames collect: [ :e | Color named: e ]
]

{ #category : #'*MoreColors' }
Color class >> purpleColorNames [
	^ (Color registeredColorNames select: [ :s | (s includesSubstring: 'urple') or: [ s includesSubstring: 'iolet' ] ])
		
]

{ #category : #'*MoreColors' }
Color class >> purpleColors [
	^self purpleColorNames collect: [ :s | Color named: s ]
]

{ #category : #'*MoreColors' }
Color class >> readMe [
	^ '
	
	Next steps: 
		- check if we have the same color with multiple names. 
	- think about palette
		What could be a good design
			- enumerated palette
			- palette by extension based on a block?
		Palette operations
		
		
		
	'
]

{ #category : #'*MoreColors' }
Color class >> redColorNames [

	^ (Color registeredColorNames
				select: [ :s | 
					(s asLowercase includesSubstring: 'red')
						or: [ | col |
							col := Color named: s.
							(col red > (col green + 0.4))
								and: [ (col red > (col blue + 0.6) ) 
											and: [ (col green - col blue) abs < 0.4 ] ] ] ])

]

{ #category : #'*MoreColors' }
Color class >> redColors [
	^ self redColorNames collect: [ :s | Color named: s ]
]

{ #category : #'*MoreColors' }
Color class >> saturatedColorNames [
	^  (Color registeredColorNames select: [ :s | (Color named: s) saturation > 0.6 ])
		
]

{ #category : #'*MoreColors' }
Color class >> saturatedColors [
	^ self saturatedColors collect: [ :e | Color named: e ]
]

{ #category : #'*MoreColors' }
Color class >> yellowColorNames [
	"self yellowColorNames"

	^ Color registeredColorNames
		select: [ :s | 
			(s asLowercase includesSubstring: 'yellow')
				or: [ | col |
					col := Color named: s.
					col blue < 0.05 and: [ (col red min: col green) > 0.5 and: [ (col red - col green) abs < 0.2 ] ] ] ]
]

{ #category : #'*MoreColors' }
Color class >> yellowColors [
	"self yellowColors"

	^ self yellowColorNames
		collect: [ :e | Color named: e ]
]

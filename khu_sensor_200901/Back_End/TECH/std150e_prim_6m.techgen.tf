/************************************************************************

 techgen V1.3.7 (R) Tech file generator for Apollo and Astro,
                    resistance tcad file generator for Star-RC, and
                    mapping file generator for Star-RCXT.
                    2004-8-14 by Eunjong Kim.

 Copyright (C), Samsung Electronics Co., Ltd., 2003-2004.   

 Tool : Astro
 Library : std150
 Top layer : 6

 Worst junction temperature: 125.0
 Worst voltage: 1.050
 Best junction temperature: 0.0
 Best voltage: 1.350

************************************************************************/

/* WHAT            : STD150E Apollo Technology File                */
/*                 : Cap : stray cap parameter rev004a             */
/*                 : Resistance : ET parameter rev006              */
/*                 : Design Rule: Rev006                           */
/*                 : This Technology is the same of that of STD150 */
/* Top             : 6LM                                           */
/* Creation        : 2004. 08. 01                                  */
/* By              : MINHO PARK (T.6509)                           */
/*                                                                 */
/* WHAT            : LVT HVT DGOX layer are added                  */
/* Creation        : 2005. 04. 07                                  */
/* By              : D.H. CHO (6506)                               */

Technology	{
		name				= "std150e"
		dielectric			= 3.96e-05
		unitTimeName			= "ns"
		timePrecision			= 1000
		unitLengthName			= "micron"
		lengthPrecision			= 1000
		gridResolution			= 10
		unitPowerName			= "mw"
		powerPrecision			= 1000
		unitResistanceName		= "kohm"
		resistancePrecision		= 1000000
		unitCapacitanceName		= "pf"
		capacitancePrecision		= 10000000
		unitInductanceName		= "nh"
		inductancePrecision		= 100
                unitVoltageName                 = "V"
                voltagePrecision                = 1000
                unitCurrentName                 = "mA"
                currentPrecision                = 100
}

Color		1 {
		name			= "creamm"
		rgbDefined			= 1
		redIntensity			= 255
		greenIntensity			= 221
		blueIntensity			= 166
}

Color		2 {
		name			= "violet"
		rgbDefined			= 1
		redIntensity			= 238
		greenIntensity			= 130
		blueIntensity			= 238
}

Color		4 {
		name			= "magentaa"
		rgbDefined			= 1
		redIntensity			= 255
		greenIntensity			= 0
		blueIntensity			= 255
}

Color		6 {
		name			= "greenn"
		rgbDefined			= 1
		redIntensity			= 113
		greenIntensity			= 247
		blueIntensity			= 117
}

Color		8 {
		name			= "cyann"
		rgbDefined			= 1
		redIntensity			= 0
		greenIntensity			= 255
		blueIntensity			= 230
}

Color		9 {
		name			= "skyy"
		rgbDefined			= 1
		redIntensity			= 77
		greenIntensity			= 203
		blueIntensity			= 253
}

Color		11 {
		name			= "redd"
		rgbDefined			= 1
		redIntensity			= 254
		greenIntensity			= 57
		blueIntensity			= 23
}

Color		13 {
		name			= "greyy"
		rgbDefined			= 1
		redIntensity			= 253
		greenIntensity			= 242
		blueIntensity			= 250
}

Color		14 {
		name			= "brownn"
		rgbDefined			= 1
		redIntensity			= 255
		greenIntensity			= 168
		blueIntensity			= 0
}

Color		16 {
		name			= "scarlet"
		rgbDefined			= 1
		redIntensity			= 255
		greenIntensity			= 141
		blueIntensity			= 10
}

Color		17 {
		name			= "yelloww"
		rgbDefined			= 1
		redIntensity			= 237
		greenIntensity			= 247
		blueIntensity			= 98
}

Color		28 {
		name			= "pink"
		rgbDefined			= 1
		redIntensity			= 255
		greenIntensity			= 117
		blueIntensity			= 245
}

Color		55 {
		name			= "bluee"
		rgbDefined			= 1
		redIntensity			= 0
		greenIntensity			= 25
		blueIntensity			= 200
}

Tile            "unit" {
                width                           = 0.44
                height                          = 3.60
}

Layer		"ACT" {
		layerNumber			= 3
		blink				= 0
		visible				= 1
		selectable			= 1
		color				= "greyy"
		lineStyle			= "solid"
		pattern				= "backSlash"
}

Layer		"NWELL" {
		layerNumber			= 6
                isDefaultLayer                  = 1
                defaultWidth                    = 0.62
                minWidth                        = 0.62
                minSpacing                      = 0.62
		blink				= 0
		visible				= 1
		selectable			= 1
		color				= "magentaa"
		lineStyle			= "solid"
		pattern				= "blank"
}

Layer           "DGOX" {
                layerNumber                     = 12
                defaultWidth                    = 0.40
                minWidth                        = 0.40
                minSpacing                      = 0.40
                blink                           = 0
                visible                         = 1
                selectable                      = 1
                color                           = "greenn"
                lineStyle                       = "solid"
                pattern                         = "blank"
}

Layer           "HVT" {
                layerNumber                     = 41
                defaultWidth                    = 0.44
                minWidth                        = 0.44
                minSpacing                      = 0.44
                blink                           = 0
                visible                         = 1
                selectable                      = 1
                color                           = "greenn"
                lineStyle                       = "solid"
                pattern                         = "backSlash"
}

Layer           "LVT" {
                layerNumber                     = 42
                defaultWidth                    = 0.44
                minWidth                        = 0.44
                minSpacing                      = 0.44
                blink                           = 0
                visible                         = 1
                selectable                      = 1
                color                           = "brownn"
                lineStyle                       = "solid"
                pattern                         = "backSlash"
}

Layer           "LDIO" {
                layerNumber                     = 106
                blink                           = 0
                visible                         = 1
                selectable                      = 1
                color                           = "creamm"
                lineStyle                       = "solid"
                pattern                         = "blank"
}

Layer           "CHBD" {
                layerNumber                     = 111
                blink                           = 0
                visible                         = 1
                selectable                      = 1
                color                           = "creamm"
                lineStyle                       = "solid"
                pattern                         = "blank"
}

Layer		"GPOLY" {
		layerNumber			= 13
		maskName			= "poly"
		isDefaultLayer			= 1
		defaultWidth			= 0.13
		minWidth			= 0.13
		minSpacing			= 0.18
		maxStackLevel			= 5
		unitMinResistance		= 6.048e-03
		unitNomResistance		= 6.000e-03
		unitMaxResistance		= 10.575e-03
		unitMinCapacitance		 = 83.6e-06
		unitNomCapacitance		 = 95.4e-06
		unitMaxCapacitance		 = 107.2e-06
		unitMinChannelCap		 = 83.6e-06
		unitNomChannelCap		 = 95.4e-06
		unitMaxChannelCap		 = 107.2e-06
		blink				= 0
		visible				= 1
		selectable			= 1
		color				= "redd"
		lineStyle			= "solid"
		pattern				= "horizontal"
		unitMinHeightFromSub		= 0.4
		unitNomHeightFromSub		= 0.4
		unitMaxHeightFromSub		= 0.4
		unitMinThickness		= 0.15
		unitNomThickness		= 0.15
		unitMaxThickness		= 0.15
}

Layer		"NPLUS" {
		layerNumber			= 16
		blink				= 0
		visible				= 1
		selectable			= 1
		color				= "greenn"
		lineStyle			= "solid"
		pattern				= "blank"
}

Layer		"PPLUS" {
		layerNumber			= 17
		blink				= 0
		visible				= 1
		selectable			= 1
		color				= "bluee"
		lineStyle			= "solid"
		pattern				= "blank"
}

Layer		"CNT" {
		layerNumber			= 25
		maskName			= "polyCont"
		isDefaultLayer			= 1
		defaultWidth			= 0.16
		minWidth			= 0.16
		minSpacing			= 0.18
		maxStackLevel			= 5
		blink				= 0
		visible				= 1
		selectable			= 1
		color				= "white"
		lineStyle			= "solid"
		pattern				= "rectangleX"
		unitMinHeightFromSub		= 0.55
		unitNomHeightFromSub		= 0.55
		unitMaxHeightFromSub		= 0.55
		unitMinThickness		= 0.35
		unitNomThickness		= 0.35
		unitMaxThickness		= 0.35
}

Layer		"MET1" {
		layerNumber			= 26
		maskName			= "metal1"
		isDefaultLayer			= 1
		defaultWidth			= 0.16
                fatContactThreshold             = 5
		minWidth			= 0.16
		minSpacing			= 0.16
		minArea 			= 0.10
		pitch				= 0.40
		maxStackLevel			= 5
                maxCurrDensity                  = 100
		unitMinResistance		= 66e-06
		unitNomResistance		= 65e-06
		unitMaxResistance		= 115e-06
		unitMinCapacitance		 = 61.0e-06
		unitNomCapacitance		 = 69.6e-06
		unitMaxCapacitance		 = 78.2e-06
		unitMinChannelCap		 = 37.1e-06
		unitNomChannelCap		 = 42.4e-06
		unitMaxChannelCap		 = 47.7e-06
		blink				= 0
		visible				= 1
		selectable			= 1
		color				= "7"
		lineStyle			= "solid"
		pattern				= "horizontal"
		unitMinHeightFromSub		= 0.9
		unitNomHeightFromSub		= 0.9
		unitMaxHeightFromSub		= 0.9
		unitMinThickness		= 0.4
		unitNomThickness		= 0.4
		unitMaxThickness		= 0.4
                fatTblDimension                 = 3
                fatTblThreshold                 = (0.00, 2.01, 5.01)
                fatTblSpacing                   = (0.16, 0.20, 0.50,
                                                   0.20, 0.20, 0.50,
                                                   0.50, 0.50, 0.50) 
}

Layer		"VIA1" {
		layerNumber			= 27
		maskName			= "via1"
		isDefaultLayer			= 1
		defaultWidth			= 0.18
		minWidth			= 0.18
		minSpacing			= 0.22
		pitch				= 0.44
		maxStackLevel			= 5
                maxCurrDensity                  = 2.47e6
		blink				= 0
		visible				= 1
		selectable			= 1
		color				= "greenn"
		lineStyle			= "solid"
		pattern				= "rectangleX"
		unitMinHeightFromSub		= 1.3
		unitNomHeightFromSub		= 1.3
		unitMaxHeightFromSub		= 1.3
		unitMinThickness		= 0.57
		unitNomThickness		= 0.57
		unitMaxThickness		= 0.57
}

Layer		"MET2" {
		layerNumber			= 28
		maskName			= "metal2"
		isDefaultLayer			= 1
		defaultWidth			= 0.20
                fatContactThreshold             = 5
		minWidth			= 0.20
		minSpacing			= 0.20
		minArea 			= 0.10
		pitch				= 0.44
		maxStackLevel			= 5
                maxCurrDensity                  = 100
		unitMinResistance		= 50e-06
		unitNomResistance		= 50e-06
		unitMaxResistance		= 88e-06
		unitMinCapacitance		 = 38.7e-06
		unitNomCapacitance		 = 44.2e-06
		unitMaxCapacitance		 = 49.7e-06
		unitMinChannelCap		 = 20.8e-06
		unitNomChannelCap		 = 23.7e-06
		unitMaxChannelCap		 = 26.6e-06
		blink				= 0
		visible				= 1
		selectable			= 1
		color				= "yellow"
		lineStyle			= "solid"
		pattern				= "horizontal"
		unitMinHeightFromSub		= 1.87
		unitNomHeightFromSub		= 1.87
		unitMaxHeightFromSub		= 1.87
		unitMinThickness		= 0.5
		unitNomThickness		= 0.5
		unitMaxThickness		= 0.5
                fatTblDimension                 = 3
                fatTblThreshold                 = (0.00, 2.01, 5.01)
                fatTblSpacing                   = (0.20, 0.40, 1.00,
                                                   0.40, 0.40, 1.00,
                                                   1.00, 1.00, 1.00)
}

Layer		"VIA2" {
		layerNumber			= 29
		maskName			= "via2"
		isDefaultLayer			= 1
		defaultWidth			= 0.18
		minWidth			= 0.18
		minSpacing			= 0.22
		pitch				= 0.40
		maxStackLevel			= 5
                maxCurrDensity                  = 2.47e6
		blink				= 0
		visible				= 1
		selectable			= 1
		color				= "27"
		lineStyle			= "solid"
		pattern				= "rectangleX"
		unitMinHeightFromSub		= 2.37
		unitNomHeightFromSub		= 2.37
		unitMaxHeightFromSub		= 2.37
		unitMinThickness		= 0.57
		unitNomThickness		= 0.57
		unitMaxThickness		= 0.57
}

Layer		"MET3" {
		layerNumber			= 30
		maskName			= "metal3"
		isDefaultLayer			= 1
		defaultWidth			= 0.20
                fatContactThreshold             = 5
		minWidth			= 0.20
		minSpacing			= 0.20
		minArea 			= 0.10
		pitch				= 0.40
		maxStackLevel			= 5
                maxCurrDensity                  = 100
		unitMinResistance		= 50e-06
		unitNomResistance		= 50e-06
		unitMaxResistance		= 88e-06
		unitMinCapacitance		 = 25.4e-06
		unitNomCapacitance		 = 29.0e-06
		unitMaxCapacitance		 = 32.6e-06
		unitMinChannelCap		 = 14.3e-06
		unitNomChannelCap		 = 16.3e-06
		unitMaxChannelCap		 = 18.3e-06
		blink				= 0
		visible				= 1
		selectable			= 1
		color				= "50"
		lineStyle			= "solid"
		pattern				= "horizontal"
		unitMinHeightFromSub		= 2.94
		unitNomHeightFromSub		= 2.94
		unitMaxHeightFromSub		= 2.94
		unitMinThickness		= 0.5
		unitNomThickness		= 0.5
		unitMaxThickness		= 0.5
                fatTblDimension                 = 3
                fatTblThreshold                 = (0.00, 2.01, 5.01)
                fatTblSpacing                   = (0.20, 0.40, 1.00,
                                                   0.40, 0.40, 1.00,
                                                   1.00, 1.00, 1.00)
}

Layer		"VIA3" {
		layerNumber			= 31
		maskName			= "via3"
		isDefaultLayer			= 1
		defaultWidth			= 0.18
		minWidth			= 0.18
		minSpacing			= 0.22
		pitch				= 0.44
		maxStackLevel			= 5
                maxCurrDensity                  = 2.47e6
		blink				= 0
		visible				= 1
		selectable			= 1
		color				= "yelloww"
		lineStyle			= "solid"
		pattern				= "rectangleX"
		unitMinHeightFromSub		= 3.44
		unitNomHeightFromSub		= 3.44
		unitMaxHeightFromSub		= 3.44
		unitMinThickness		= 0.57
		unitNomThickness		= 0.57
		unitMaxThickness		= 0.57
}

Layer		"MET4" {
		layerNumber			= 32
		maskName			= "metal4"
		isDefaultLayer			= 1
		defaultWidth			= 0.20
                fatContactThreshold             = 5
		minWidth			= 0.20
		minSpacing			= 0.20
		minArea 			= 0.10
		pitch				= 0.44
		maxStackLevel			= 5
                maxCurrDensity                  = 100
		unitMinResistance		= 50e-06
		unitNomResistance		= 50e-06
		unitMaxResistance		= 88e-06
		unitMinCapacitance		 = 28.3e-06
		unitNomCapacitance		 = 32.3e-06
		unitMaxCapacitance		 = 36.3e-06
		unitMinChannelCap		 = 10.9e-06
		unitNomChannelCap		 = 12.5e-06
		unitMaxChannelCap		 = 14.0e-06
		blink				= 0
		visible				= 1
		selectable			= 1
		color				= "31"
		lineStyle			= "solid"
		pattern				= "vertical"
		unitMinHeightFromSub		= 4.01
		unitNomHeightFromSub		= 4.01
		unitMaxHeightFromSub		= 4.01
		unitMinThickness		= 0.5
		unitNomThickness		= 0.5
		unitMaxThickness		= 0.5
                fatTblDimension                 = 3
                fatTblThreshold                 = (0.00, 2.01, 5.01)
                fatTblSpacing                   = (0.20, 0.40, 1.00,
                                                   0.40, 0.40, 1.00,
                                                   1.00, 1.00, 1.00)
}

Layer		"VIA4" {
		layerNumber			= 33
		maskName			= "via4"
		isDefaultLayer			= 1
		defaultWidth			= 0.18
		minWidth			= 0.18
		minSpacing			= 0.22
		pitch				= 0.40
		maxStackLevel			= 5
                maxCurrDensity                  = 2.47e6
		blink				= 0
		visible				= 1
		selectable			= 1
		color				= "redd"
		lineStyle			= "solid"
		pattern				= "rectangleX"
		unitMinHeightFromSub		= 4.51
		unitNomHeightFromSub		= 4.51
		unitMaxHeightFromSub		= 4.51
		unitMinThickness		= 0.57
		unitNomThickness		= 0.57
		unitMaxThickness		= 0.57
}

Layer		"MET5" {
		layerNumber			= 34
		maskName			= "metal5"
		isDefaultLayer			= 1
		defaultWidth			= 0.20
                fatContactThreshold             = 5
		minWidth			= 0.20
		minSpacing			= 0.20
		minArea 			= 0.10
		pitch				= 0.40
		maxStackLevel			= 5
                maxCurrDensity                  = 100
		unitMinResistance		= 50e-06
		unitNomResistance		= 50e-06
		unitMaxResistance		= 88e-06
		unitMinCapacitance		 = 27.6e-06
		unitNomCapacitance		 = 31.5e-06
		unitMaxCapacitance		 = 35.4e-06
		unitMinChannelCap		 = 8.8e-06
		unitNomChannelCap		 = 10.1e-06
		unitMaxChannelCap		 = 11.4e-06
		blink				= 0
		visible				= 1
		selectable			= 1
		color				= "45"
		lineStyle			= "solid"
		pattern				= "backSlash"
		unitMinHeightFromSub		= 5.08
		unitNomHeightFromSub		= 5.08
		unitMaxHeightFromSub		= 5.08
		unitMinThickness		= 0.5
		unitNomThickness		= 0.5
		unitMaxThickness		= 0.5
                fatTblDimension                 = 3
                fatTblThreshold                 = (0.00, 2.01, 5.01)
                fatTblSpacing                   = (0.20, 0.40, 1.00,
                                                   0.40, 0.40, 1.00,
                                                   1.00, 1.00, 1.00)
}

Layer           "VIA5" {
                layerNumber                     = 35
                maskName                        = "via5"
                isDefaultLayer                  = 1
                defaultWidth                    = 0.18
                minWidth                        = 0.18
                minSpacing                      = 0.22
                pitch                           = 0.88
                maxStackLevel                   = 5
                maxCurrDensity                  = 2.47e6
                blink                           = 0
                visible                         = 1
                selectable                      = 1
                color                           = "cyan"
                lineStyle                       = "solid"
                pattern                         = "rectangleX"
                unitMinHeightFromSub            = 5.58
                unitNomHeightFromSub            = 5.58
                unitMaxHeightFromSub            = 5.58
                unitMinThickness                = 0.57
                unitNomThickness                = 0.57
                unitMaxThickness                = 0.57
}

Layer           "MET6" {
                layerNumber                     = 36
                maskName                        = "metal6"
                isDefaultLayer                  = 1
                defaultWidth                    = 0.44
                fatContactThreshold             = 5
                minWidth                        = 0.44
                minSpacing                      = 0.44
		minArea 			= 0.32
                fatWireThreshold                = 5.01
                fatThinMinSpacing               = 1.0
                fatFatMinSpacing                = 1.0
                pitch                           = 0.88
                maxStackLevel                   = 5
                maxCurrDensity                  = 100
		unitMinResistance		= 45e-06
		unitNomResistance		= 45e-06
		unitMaxResistance		= 79e-06
		unitMinCapacitance		 = 27.8e-06
		unitNomCapacitance		 = 31.7e-06
		unitMaxCapacitance		 = 35.6e-06
		unitMinChannelCap		 = 7.4e-06
		unitNomChannelCap		 = 8.5e-06
		unitMaxChannelCap		 = 9.6e-06
                blink                           = 0
                visible                         = 1
                selectable                      = 1
                color                           = "red"
                lineStyle                       = "solid"
                pattern                         = "backSlash"
                unitMinHeightFromSub            = 6.15
                unitNomHeightFromSub            = 6.15
                unitMaxHeightFromSub            = 6.15
                unitMinThickness                = 0.5
                unitNomThickness                = 0.5
                unitMaxThickness                = 0.5
}

Layer		"PAD" {
		layerNumber			= 39
		blink				= 0
		visible				= 1
		selectable			= 1
		color				= "yelloww"
		lineStyle			= "solid"
		pattern				= "rectangleX"
}

Layer		"STEXT" {
		layerNumber			= 114
		blink				= 0
		visible				= 1
		selectable			= 1
		color				= "white"
		lineStyle			= "solid"
		pattern				= "solid"
}

Layer		"PTEXT" {
		layerNumber			= 123
		blink				= 0
		visible				= 1
		selectable			= 1
		color				= "white"
		lineStyle			= "solid"
		pattern				= "solid"
}

Layer		"M1TEXT" {
		layerNumber			= 117
		blink				= 0
		visible				= 1
		selectable			= 1
		color				= "yelloww"
		lineStyle			= "solid"
		pattern				= "solid"
}

Layer		"M2TEXT" {
		layerNumber			= 118
		blink				= 0
		visible				= 1
		selectable			= 1
		color				= "greenn"
		lineStyle			= "solid"
		pattern				= "solid"
}

Layer		"M3TEXT" {
		layerNumber			= 119
		blink				= 0
		visible				= 1
		selectable			= 1
		color				= "redd"
		lineStyle			= "solid"
		pattern				= "solid"
}

Layer		"M4TEXT" {
		layerNumber			= 120
		blink				= 0
		visible				= 1
		selectable			= 1
		color				= "creamm"
		lineStyle			= "solid"
		pattern				= "solid"
}

Layer		"M5TEXT" {
		layerNumber			= 121
		blink				= 0
		visible				= 1
		selectable			= 1
		color				= "57"
		lineStyle			= "solid"
		pattern				= "solid"
}

Layer           "M6TEXT" {
                layerNumber                     = 122
                blink                           = 0
                visible                         = 1
                selectable                      = 1
                color                           = "pink"
                lineStyle                       = "solid"
                pattern                         = "solid"
}

Layer		"BOUND" {
		layerNumber			= 45
		blink				= 0
		visible				= 1
		selectable			= 1
		color				= "white"
		lineStyle			= "solid"
		pattern				= "blank"
}

ContactCode	"VIA01" {
		contactCodeNumber		= 1
		cutLayer			= "CNT"
		lowerLayer			= "GPOLY"
		upperLayer			= "MET1"
		isDefaultContact		= 1
		upperLayerEncWidth		= 0.04
		upperLayerEncHeight		= 0.01
		lowerLayerEncWidth		= 0.07
		lowerLayerEncHeight		= 0.07
		cutWidth			= 0.16
		cutHeight			= 0.16
		minCutSpacing			= 0.18
		unitMinResistance		= 14.111e-03
		unitNomResistance		= 14.000e-03
		unitMaxResistance		= 24.676e-03
}

ContactCode	"VIA12" {
		contactCodeNumber		= 2
		cutLayer			= "VIA1"
		lowerLayer			= "MET1"
		upperLayer			= "MET2"
		isDefaultContact		= 1
		upperLayerEncWidth		= 0.01
		upperLayerEncHeight		= 0.04
		lowerLayerEncWidth		= 0.04
		lowerLayerEncHeight		= 0.01
		cutWidth			= 0.18
		cutHeight			= 0.18
		minCutSpacing			= 0.22
                maxNumRowsNonTurning            = 3
		unitMinResistance		= 1.008e-03
		unitNomResistance		= 1.000e-03
		unitMaxResistance		= 1.763e-03
}

ContactCode     "FVIA12" {
                contactCodeNumber               = 3
                cutLayer                        = "VIA1"
                lowerLayer                      = "MET1"
                upperLayer                      = "MET2"
                isFatContact                    = 1
                upperLayerEncWidth              = 0.01
                upperLayerEncHeight             = 0.04
                lowerLayerEncWidth              = 0.04
                lowerLayerEncHeight             = 0.01
                cutWidth                        = 0.18
                cutHeight                       = 0.18
                minCutSpacing                   = 0.30
                maxNumRowsNonTurning            = 3
		unitMinResistance		= 1.008e-03
		unitNomResistance		= 1.000e-03
		unitMaxResistance		= 1.763e-03
}

ContactCode	"VIA23" {
		contactCodeNumber		= 4
		cutLayer			= "VIA2"
		lowerLayer			= "MET2"
		upperLayer			= "MET3"
		isDefaultContact		= 1
		upperLayerEncWidth		= 0.04
		upperLayerEncHeight		= 0.01
		lowerLayerEncWidth		= 0.01
		lowerLayerEncHeight		= 0.04
		cutWidth			= 0.18
		cutHeight			= 0.18
		minCutSpacing			= 0.22
                maxNumRowsNonTurning            = 3
		unitMinResistance		= 1.008e-03
		unitNomResistance		= 1.000e-03
		unitMaxResistance		= 1.763e-03
}

ContactCode     "FVIA23" {
                contactCodeNumber               = 5
                cutLayer                        = "VIA2"
                lowerLayer                      = "MET2"
                upperLayer                      = "MET3"
                isFatContact                    = 1
                upperLayerEncWidth              = 0.04
                upperLayerEncHeight             = 0.01
                lowerLayerEncWidth              = 0.01
                lowerLayerEncHeight             = 0.04
                cutWidth                        = 0.18
                cutHeight                       = 0.18
                minCutSpacing                   = 0.30
                maxNumRowsNonTurning            = 3
		unitMinResistance		= 1.008e-03
		unitNomResistance		= 1.000e-03
		unitMaxResistance		= 1.763e-03
}


ContactCode	"VIA34" {
		contactCodeNumber		= 6
		cutLayer			= "VIA3"
		lowerLayer			= "MET3"
		upperLayer			= "MET4"
		isDefaultContact		= 1
		upperLayerEncWidth		= 0.01
		upperLayerEncHeight		= 0.04
		lowerLayerEncWidth		= 0.04
		lowerLayerEncHeight		= 0.01
		cutWidth			= 0.18
		cutHeight			= 0.18
		minCutSpacing			= 0.22
                maxNumRowsNonTurning            = 3
		unitMinResistance		= 1.008e-03
		unitNomResistance		= 1.000e-03
		unitMaxResistance		= 1.763e-03
}

ContactCode     "FVIA34" {
                contactCodeNumber               = 7
                cutLayer                        = "VIA3"
                lowerLayer                      = "MET3"
                upperLayer                      = "MET4"
                isFatContact                    = 1
                upperLayerEncWidth              = 0.01
                upperLayerEncHeight             = 0.04
                lowerLayerEncWidth              = 0.04
                lowerLayerEncHeight             = 0.01
                cutWidth                        = 0.18
                cutHeight                       = 0.18
                minCutSpacing                   = 0.30
                maxNumRowsNonTurning            = 3
		unitMinResistance		= 1.008e-03
		unitNomResistance		= 1.000e-03
		unitMaxResistance		= 1.763e-03
}

ContactCode	"VIA45" {
		contactCodeNumber		= 8
		cutLayer			= "VIA4"
		lowerLayer			= "MET4"
		upperLayer			= "MET5"
		isDefaultContact		= 1
		upperLayerEncWidth		= 0.04
		upperLayerEncHeight		= 0.01
		lowerLayerEncWidth		= 0.01
		lowerLayerEncHeight		= 0.04
		cutWidth			= 0.18
		cutHeight			= 0.18
		minCutSpacing			= 0.22
                maxNumRowsNonTurning            = 3
		unitMinResistance		= 1.008e-03
		unitNomResistance		= 1.000e-03
		unitMaxResistance		= 1.763e-03
}

ContactCode     "FVIA45" {
                contactCodeNumber               = 9
                cutLayer                        = "VIA4"
                lowerLayer                      = "MET4"
                upperLayer                      = "MET5"
                isFatContact                    = 1
                upperLayerEncWidth              = 0.04
                upperLayerEncHeight             = 0.01
                lowerLayerEncWidth              = 0.01
                lowerLayerEncHeight             = 0.04
                cutWidth                        = 0.18
                cutHeight                       = 0.18
                minCutSpacing                   = 0.30
                maxNumRowsNonTurning            = 3
		unitMinResistance		= 1.008e-03
		unitNomResistance		= 1.000e-03
		unitMaxResistance		= 1.763e-03
}


ContactCode	"VIA56" {
		contactCodeNumber		= 10
		cutLayer			= "VIA5"
		lowerLayer			= "MET5"
		upperLayer			= "MET6"
		isDefaultContact		= 1
		upperLayerEncWidth		= 0.13
		upperLayerEncHeight		= 0.13
		lowerLayerEncWidth		= 0.04
		lowerLayerEncHeight		= 0.01
		cutWidth			= 0.18
		cutHeight			= 0.18
		minCutSpacing			= 0.22
                maxNumRowsNonTurning            = 3
		unitMinResistance		= 1.008e-03
		unitNomResistance		= 1.000e-03
		unitMaxResistance		= 1.763e-03
}

ContactCode     "FVIA56" {
                contactCodeNumber               = 11
                cutLayer                        = "VIA5"
                lowerLayer                      = "MET5"
                upperLayer                      = "MET6"
                isFatContact                    = 1
                upperLayerEncWidth              = 0.13
                upperLayerEncHeight             = 0.13
                lowerLayerEncWidth              = 0.04
                lowerLayerEncHeight             = 0.01
                cutWidth                        = 0.18
                cutHeight                       = 0.18
                minCutSpacing                   = 0.30
                maxNumRowsNonTurning            = 3
		unitMinResistance		= 1.008e-03
		unitNomResistance		= 1.000e-03
		unitMaxResistance		= 1.763e-03
}

FringeCap	1 {
		number				= 1
		layer1				= "MET1"
		layer2				= "ACT"
		minFringeCap			 = 66.8e-06
		nomFringeCap			 = 76.3e-06
		maxFringeCap			 = 85.8e-06
}

FringeCap	2 {
		number				= 2
		layer1				= "MET1"
		layer2				= "GPOLY"
		minFringeCap			 = 95.5e-06
		nomFringeCap			 = 109.0e-06
		maxFringeCap			 = 122.5e-06
}

FringeCap	3 {
		number				= 3
		layer1				= "MET2"
		layer2				= "ACT"
		minFringeCap			 = 27.6e-06
		nomFringeCap			 = 31.5e-06
		maxFringeCap			 = 35.4e-06
}

FringeCap	4 {
		number				= 4
		layer1				= "MET2"
		layer2				= "GPOLY"
		minFringeCap			 = 31.5e-06
		nomFringeCap			 = 36.0e-06
		maxFringeCap			 = 40.5e-06
}

FringeCap	5 {
		number				= 5
		layer1				= "MET2"
		layer2				= "MET1"
		minFringeCap			 = 53.4e-06
		nomFringeCap			 = 61.0e-06
		maxFringeCap			 = 68.6e-06
}

FringeCap	6 {
		number				= 6
		layer1				= "MET3"
		layer2				= "ACT"
		minFringeCap			 = 17.3e-06
		nomFringeCap			 = 19.7e-06
		maxFringeCap			 = 22.1e-06
}

FringeCap	7 {
		number				= 7
		layer1				= "MET3"
		layer2				= "GPOLY"
		minFringeCap			 = 18.7e-06
		nomFringeCap			 = 21.4e-06
		maxFringeCap			 = 24.1e-06
}

FringeCap	8 {
		number				= 8
		layer1				= "MET3"
		layer2				= "MET1"
		minFringeCap			 = 24.8e-06
		nomFringeCap			 = 28.3e-06
		maxFringeCap			 = 31.8e-06
}

FringeCap	9 {
		number				= 9
		layer1				= "MET3"
		layer2				= "MET2"
		minFringeCap			 = 53.4e-06
		nomFringeCap			 = 61.0e-06
		maxFringeCap			 = 68.6e-06
}

FringeCap	10 {
		number				= 10
		layer1				= "MET4"
		layer2				= "ACT"
		minFringeCap			 = 12.5e-06
		nomFringeCap			 = 14.3e-06
		maxFringeCap			 = 16.1e-06
}

FringeCap	11 {
		number				= 11
		layer1				= "MET4"
		layer2				= "GPOLY"
		minFringeCap			 = 13.3e-06
		nomFringeCap			 = 15.2e-06
		maxFringeCap			 = 17.1e-06
}

FringeCap	12 {
		number				= 12
		layer1				= "MET4"
		layer2				= "MET1"
		minFringeCap			 = 16.1e-06
		nomFringeCap			 = 18.4e-06
		maxFringeCap			 = 20.7e-06
}

FringeCap	13 {
		number				= 13
		layer1				= "MET4"
		layer2				= "MET2"
		minFringeCap			 = 24.8e-06
		nomFringeCap			 = 28.3e-06
		maxFringeCap			 = 31.8e-06
}

FringeCap	14 {
		number				= 14
		layer1				= "MET4"
		layer2				= "MET3"
		minFringeCap			 = 53.4e-06
		nomFringeCap			 = 61.0e-06
		maxFringeCap			 = 68.6e-06
}

FringeCap	15 {
		number				= 15
		layer1				= "MET5"
		layer2				= "ACT"
		minFringeCap			 = 9.9e-06
		nomFringeCap			 = 11.3e-06
		maxFringeCap			 = 12.7e-06
}

FringeCap	16 {
		number				= 16
		layer1				= "MET5"
		layer2				= "GPOLY"
		minFringeCap			 = 10.3e-06
		nomFringeCap			 = 11.8e-06
		maxFringeCap			 = 13.3e-06
}

FringeCap	17 {
		number				= 17
		layer1				= "MET5"
		layer2				= "MET1"
		minFringeCap			 = 11.9e-06
		nomFringeCap			 = 13.6e-06
		maxFringeCap			 = 15.3e-06
}

FringeCap	18 {
		number				= 18
		layer1				= "MET5"
		layer2				= "MET2"
		minFringeCap			 = 16.1e-06
		nomFringeCap			 = 18.4e-06
		maxFringeCap			 = 20.7e-06
}

FringeCap	19 {
		number				= 19
		layer1				= "MET5"
		layer2				= "MET3"
		minFringeCap			 = 24.8e-06
		nomFringeCap			 = 28.3e-06
		maxFringeCap			 = 31.8e-06
}

FringeCap	20 {
		number				= 20
		layer1				= "MET5"
		layer2				= "MET4"
		minFringeCap			 = 53.4e-06
		nomFringeCap			 = 61.0e-06
		maxFringeCap			 = 68.6e-06
}
FringeCap       21 {
                number                          = 21
                layer1                          = "MET6"
                layer2                          = "ACT"
		minFringeCap			 = 8.1e-06
		nomFringeCap			 = 9.3e-06
		maxFringeCap			 = 10.5e-06
}

FringeCap       22 {
                number                          = 22
                layer1                          = "MET6"
                layer2                          = "GPOLY"
		minFringeCap			 = 8.4e-06
		nomFringeCap			 = 9.6e-06
		maxFringeCap			 = 10.8e-06
}

FringeCap       23 {
                number                          = 23
                layer1                          = "MET6"
                layer2                          = "MET1"
		minFringeCap			 = 9.5e-06
		nomFringeCap			 = 10.8e-06
		maxFringeCap			 = 12.1e-06
}

FringeCap       24 {
                number                          = 24
                layer1                          = "MET6"
                layer2                          = "MET2"
		minFringeCap			 = 11.9e-06
		nomFringeCap			 = 13.6e-06
		maxFringeCap			 = 15.3e-06
}

FringeCap       25 {
                number                          = 25
                layer1                          = "MET6"
                layer2                          = "MET3"
		minFringeCap			 = 16.1e-06
		nomFringeCap			 = 18.4e-06
		maxFringeCap			 = 20.7e-06
}

FringeCap       26 {
                number                          = 26
                layer1                          = "MET6"
                layer2                          = "MET4"
		minFringeCap			 = 24.8e-06
		nomFringeCap			 = 28.3e-06
		maxFringeCap			 = 31.8e-06
}
FringeCap       27 {
                number                          = 27
                layer1                          = "MET6"
                layer2                          = "MET5"
		minFringeCap			 = 53.4e-06
		nomFringeCap			 = 61.0e-06
		maxFringeCap			 = 68.6e-06
}

FringeCap	36 {
		number				= 36
		layer1				= "MET1"
		layer2				= "MET1"
		minFringeCap			 = 120.2e-06
		nomFringeCap			 = 137.2e-06
		maxFringeCap			 = 154.2e-06
}

FringeCap	37 {
		number				= 37
		layer1				= "MET2"
		layer2				= "MET2"
		minFringeCap			 = 115.5e-06
		nomFringeCap			 = 131.9e-06
		maxFringeCap			 = 148.3e-06
}

FringeCap	38 {
		number				= 38
		layer1				= "MET3"
		layer2				= "MET3"
		minFringeCap			 = 116.6e-06
		nomFringeCap			 = 133.1e-06
		maxFringeCap			 = 149.6e-06
}

FringeCap	39 {
		number				= 39
		layer1				= "MET4"
		layer2				= "MET4"
		minFringeCap			 = 117.4e-06
		nomFringeCap			 = 134.0e-06
		maxFringeCap			 = 150.6e-06
}

FringeCap	40 {
		number				= 40
		layer1				= "MET5"
		layer2				= "MET5"
		minFringeCap			 = 118.2e-06
		nomFringeCap			 = 134.9e-06
		maxFringeCap			 = 151.6e-06
}
FringeCap	41 {
		number				= 41
		layer1				= "MET6"
		layer2				= "MET6"
		minFringeCap			 = 75.8e-06
		nomFringeCap			 = 86.5e-06
		maxFringeCap			 = 97.2e-06
}

DesignRule	{
		layer1				= "VIA1"
		layer2				= "CNT"
		minSpacing			= 0
		stackable			= 1
}


DesignRule	{
		layer1				= "VIA2"
		layer2				= "VIA1"
		minSpacing			= 0
		stackable			= 1
}


DesignRule	{
		layer1				= "VIA3"
		layer2				= "VIA2"
		minSpacing			= 0
		stackable			= 1
}


DesignRule	{
		layer1				= "VIA4"
		layer2				= "VIA3"
		minSpacing			= 0
		stackable			= 1
}
DesignRule	{
		layer1				= "VIA5"
		layer2				= "VIA4"
		minSpacing			= 0
		stackable			= 1
}

PRRule		{
		rowSpacingTopTop		= 0
		rowSpacingBotBot		= 0
		abuttableTopTop			= 1
		abuttableBotBot			= 1
}

CapTable	"poly_C_BOTTOM_GPNOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			2.93022e-05, 4.04533e-05, 4.79114e-05, 5.24516e-05, 5.50604e-05, 5.65128e-05, 5.72998e-05, 5.77281e-05, 5.79583e-05, 5.80812e-05, 5.81474e-05, 5.81828e-05, 5.82002e-05, 5.82111e-05, 5.82175e-05, 5.82215e-05, 
			4.09647e-05, 5.27132e-05, 6.05399e-05, 6.52952e-05, 6.80304e-05, 6.9546e-05, 7.03754e-05, 7.08227e-05, 7.1064e-05, 7.11944e-05, 7.12627e-05, 7.13001e-05, 7.13192e-05, 7.1331e-05, 7.13381e-05, 7.1344e-05, 
			5.3076e-05, 6.50109e-05, 7.29373e-05, 7.77519e-05, 8.05128e-05, 8.20505e-05, 8.28897e-05, 8.33422e-05, 8.35872e-05, 8.37178e-05, 8.37861e-05, 8.38242e-05, 8.38454e-05, 8.38578e-05, 8.38673e-05, 8.38722e-05, 
			6.5335e-05, 7.72946e-05, 8.52277e-05, 9.00346e-05, 9.27975e-05, 9.43349e-05, 9.51721e-05, 9.56257e-05, 9.58694e-05, 9.59969e-05, 9.60679e-05, 9.61062e-05, 9.61277e-05, 9.61424e-05, 9.61504e-05, 9.61558e-05, 
			7.76864e-05, 8.96458e-05, 9.7572e-05, 0.000102375, 0.000105135, 0.000106666, 0.000107504, 0.000107954, 0.000108196, 0.000108325, 0.000108395, 0.000108434, 0.000108458, 0.000108471, 0.000108478, 0.000108486
		)
}

CapTable	"poly_C_TOP_GPNOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			3.32096e-05, 4.57157e-05, 5.40136e-05, 5.90374e-05, 6.19167e-05, 6.35133e-05, 6.43878e-05, 6.48591e-05, 6.511e-05, 6.52455e-05, 6.53176e-05, 6.53553e-05, 6.5376e-05, 6.53847e-05, 6.53888e-05, 6.53908e-05, 
			4.65885e-05, 5.97268e-05, 6.84131e-05, 7.36696e-05, 7.66761e-05, 7.83516e-05, 7.92643e-05, 7.9757e-05, 8.00216e-05, 8.01604e-05, 8.02354e-05, 8.02738e-05, 8.02949e-05, 8.03035e-05, 8.03076e-05, 8.03071e-05, 
			6.04454e-05, 7.37715e-05, 8.25547e-05, 8.78661e-05, 9.09141e-05, 9.26055e-05, 9.35278e-05, 9.40256e-05, 9.42896e-05, 9.44322e-05, 9.45103e-05, 9.45478e-05, 9.45655e-05, 9.45738e-05, 9.45747e-05, 9.45768e-05, 
			7.44488e-05, 8.77932e-05, 9.65819e-05, 0.000101892, 0.000104936, 0.000106621, 0.000107546, 0.00010804, 0.000108306, 0.000108452, 0.000108525, 0.000108561, 0.000108578, 0.000108582, 0.000108586, 0.000108588, 
			8.85536e-05, 0.000101897, 0.000110677, 0.000115979, 0.000119009, 0.000120695, 0.000121613, 0.000122109, 0.000122379, 0.00012252, 0.000122591, 0.000122625, 0.000122637, 0.000122645, 0.000122653, 0.000122651
		)
}

CapTable	"poly_C_LATERALNOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			0.000105524, 4.7719e-05, 2.4482e-05, 1.2921e-05, 6.8719e-06, 3.66294e-06, 1.95438e-06, 1.04275e-06, 5.56724e-07, 2.97268e-07, 1.59044e-07, 8.58892e-08, 4.77964e-08, 2.81756e-08, 1.76643e-08, 1.16899e-08, 
			0.000110345, 4.9953e-05, 2.5623e-05, 1.35212e-05, 7.19252e-06, 3.8344e-06, 2.04534e-06, 1.0913e-06, 5.824e-07, 3.1124e-07, 1.66892e-07, 9.10698e-08, 5.1872e-08, 3.15014e-08, 2.03196e-08, 1.38933e-08, 
			0.000111412, 5.04846e-05, 2.59e-05, 1.367e-05, 7.27112e-06, 3.87596e-06, 2.06754e-06, 1.10317e-06, 5.89148e-07, 3.14984e-07, 1.69565e-07, 9.39666e-08, 5.5068e-08, 3.4441e-08, 2.29648e-08, 1.60014e-08, 
			0.000111049, 5.03892e-05, 2.58544e-05, 1.36524e-05, 7.26152e-06, 3.87208e-06, 2.06486e-06, 1.10233e-06, 5.88636e-07, 3.15058e-07, 1.7113e-07, 9.67734e-08, 5.83036e-08, 3.76436e-08, 2.55914e-08, 1.81986e-08, 
			0.000110697, 5.02722e-05, 2.5795e-05, 1.36158e-05, 7.24402e-06, 3.86194e-06, 2.06036e-06, 1.09974e-06, 5.87382e-07, 3.1582e-07, 1.73786e-07, 1.00774e-07, 6.27634e-08, 4.1518e-08, 2.87178e-08, 2.1031e-08
		)
}

CapTable	"poly_C_BOTTOM_GP_12NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			3.32892e-05, 4.48979e-05, 5.36144e-05, 6.0076e-05, 6.48053e-05, 6.8242e-05, 7.07417e-05, 7.25611e-05, 7.38624e-05, 7.48569e-05, 7.55657e-05, 7.60866e-05, 7.64654e-05, 7.67458e-05, 7.69515e-05, 7.71025e-05, 
			4.41865e-05, 5.638e-05, 6.57143e-05, 7.2709e-05, 7.78767e-05, 8.16664e-05, 8.44433e-05, 8.64575e-05, 8.79623e-05, 8.90531e-05, 8.9853e-05, 9.04382e-05, 9.08701e-05, 9.11871e-05, 9.14214e-05, 9.15932e-05, 
			5.55838e-05, 6.80709e-05, 7.77223e-05, 8.50022e-05, 9.04117e-05, 9.43884e-05, 9.73595e-05, 9.95169e-05, 0.000101102, 0.000102268, 0.000103121, 0.000103751, 0.000104214, 0.000104555, 0.000104805, 0.000104991, 
			6.72826e-05, 7.98896e-05, 8.96993e-05, 9.71403e-05, 0.000102709, 0.000106871, 0.000109911, 0.00011215, 0.000113799, 0.000115009, 0.000115901, 0.000116558, 0.00011704, 0.000117397, 0.000117659, 0.000117853, 
			7.91236e-05, 9.18405e-05, 0.000101799, 0.00010942, 0.000115111, 0.000119308, 0.000122423, 0.000124718, 0.00012641, 0.000127656, 0.000128574, 0.000129249, 0.000129747, 0.000130113, 0.000130384, 0.000130584
		)
}

CapTable	"poly_C_TOP_GP_12NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			1.00774e-05, 1.36517e-05, 1.64226e-05, 1.85018e-05, 2.00452e-05, 2.11861e-05, 2.20201e-05, 2.26288e-05, 2.31003e-05, 2.3399e-05, 2.36378e-05, 2.3812e-05, 2.39435e-05, 2.40376e-05, 2.4107e-05, 2.4158e-05, 
			1.31019e-05, 1.68678e-05, 1.98441e-05, 2.2116e-05, 2.38233e-05, 2.50932e-05, 2.60272e-05, 2.6733e-05, 2.72188e-05, 2.75899e-05, 2.78617e-05, 2.80649e-05, 2.82119e-05, 2.83208e-05, 2.84e-05, 2.84585e-05, 
			1.62598e-05, 2.01261e-05, 2.32251e-05, 2.56182e-05, 2.74305e-05, 2.87983e-05, 2.97634e-05, 3.05009e-05, 3.10432e-05, 3.14423e-05, 3.17385e-05, 3.19543e-05, 3.21136e-05, 3.22312e-05, 3.23169e-05, 3.23801e-05, 
			1.94722e-05, 2.34388e-05, 2.66381e-05, 2.91127e-05, 3.09802e-05, 3.2338e-05, 3.33779e-05, 3.41455e-05, 3.47109e-05, 3.5131e-05, 3.54381e-05, 3.56648e-05, 3.58323e-05, 3.59546e-05, 3.60448e-05, 3.6111e-05, 
			2.28424e-05, 2.68541e-05, 3.00859e-05, 3.25509e-05, 3.4443e-05, 3.58929e-05, 3.69581e-05, 3.77492e-05, 3.83325e-05, 3.87625e-05, 3.908e-05, 3.93147e-05, 3.94864e-05, 3.96131e-05, 3.97062e-05, 3.97744e-05
		)
}

CapTable	"poly_C_LATERAL_12NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			0.000117993, 6.32584e-05, 4.023e-05, 2.71512e-05, 1.88715e-05, 1.33479e-05, 9.55024e-06, 6.88808e-06, 4.99534e-06, 3.63912e-06, 2.65854e-06, 1.94644e-06, 1.42712e-06, 1.0476e-06, 7.6953e-07, 5.6554e-07, 
			0.00012791, 6.95942e-05, 4.46186e-05, 3.0299e-05, 2.1164e-05, 1.50294e-05, 1.07875e-05, 7.79852e-06, 5.66788e-06, 4.13404e-06, 3.02328e-06, 2.21492e-06, 1.62497e-06, 1.19311e-06, 8.7664e-07, 6.44326e-07, 
			0.000132929, 7.3105e-05, 4.71546e-05, 3.21626e-05, 2.25438e-05, 1.60523e-05, 1.15471e-05, 8.36222e-06, 6.08456e-06, 4.44204e-06, 3.25056e-06, 2.38274e-06, 1.74857e-06, 1.2841e-06, 9.43592e-07, 6.93578e-07, 
			0.000135474, 7.51336e-05, 4.86826e-05, 3.3317e-05, 2.34102e-05, 1.67032e-05, 1.20322e-05, 8.7234e-06, 6.35294e-06, 4.64072e-06, 3.39762e-06, 2.4912e-06, 1.82839e-06, 1.343e-06, 9.8688e-07, 7.25444e-07, 
			0.000137235, 7.65504e-05, 4.97552e-05, 3.41248e-05, 2.40208e-05, 1.71601e-05, 1.23742e-05, 8.9784e-06, 6.54224e-06, 4.7813e-06, 3.50142e-06, 2.56766e-06, 1.8849e-06, 1.38452e-06, 1.01744e-06, 7.47998e-07
		)
}

CapTable	"poly_C_BOTTOM_GP_13NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			3.54863e-05, 4.75302e-05, 5.65356e-05, 6.32286e-05, 6.81978e-05, 7.19014e-05, 7.46826e-05, 7.67884e-05, 7.83985e-05, 7.96407e-05, 8.06099e-05, 8.13662e-05, 8.19642e-05, 8.24403e-05, 8.28201e-05, 8.31249e-05, 
			4.65759e-05, 5.90829e-05, 6.8638e-05, 7.58515e-05, 8.12831e-05, 8.5384e-05, 8.84971e-05, 9.08798e-05, 9.27181e-05, 9.41506e-05, 9.52688e-05, 9.61515e-05, 9.68524e-05, 9.74113e-05, 9.78604e-05, 9.82212e-05, 
			5.80468e-05, 7.07316e-05, 8.05591e-05, 8.80674e-05, 9.37793e-05, 9.81308e-05, 0.000101464, 0.000104034, 0.000106031, 0.000107594, 0.000108822, 0.000109797, 0.000110572, 0.000111194, 0.000111693, 0.000112096, 
			6.96885e-05, 8.24424e-05, 9.24266e-05, 0.000100121, 0.000106018, 0.000110546, 0.000114037, 0.000116746, 0.000118863, 0.00012052, 0.000121833, 0.000122876, 0.00012371, 0.000124379, 0.000124918, 0.000125352, 
			8.14821e-05, 9.42849e-05, 0.00010439, 0.000112224, 0.000118268, 0.000122934, 0.000126552, 0.000129372, 0.000131577, 0.000133317, 0.000134698, 0.000135798, 0.00013668, 0.000137388, 0.000137959, 0.000138421
		)
}

CapTable	"poly_C_TOP_GP_13NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			5.97327e-06, 8.02884e-06, 9.60999e-06, 1.08092e-05, 1.1712e-05, 1.23918e-05, 1.29052e-05, 1.32972e-05, 1.3598e-05, 1.38307e-05, 1.40096e-05, 1.41539e-05, 1.42671e-05, 1.43564e-05, 1.44281e-05, 1.44858e-05, 
			7.66351e-06, 9.79613e-06, 1.14814e-05, 1.27827e-05, 1.37779e-05, 1.45373e-05, 1.51197e-05, 1.5568e-05, 1.59153e-05, 1.61832e-05, 1.63983e-05, 1.65668e-05, 1.67004e-05, 1.68072e-05, 1.68931e-05, 1.69625e-05, 
			9.4016e-06, 1.1573e-05, 1.33157e-05, 1.4678e-05, 1.57309e-05, 1.65446e-05, 1.71726e-05, 1.766e-05, 1.80394e-05, 1.83362e-05, 1.85735e-05, 1.87604e-05, 1.89099e-05, 1.90296e-05, 1.91263e-05, 1.92031e-05, 
			1.11661e-05, 1.33608e-05, 1.514e-05, 1.65414e-05, 1.7638e-05, 1.84884e-05, 1.91497e-05, 1.96649e-05, 2.00662e-05, 2.03889e-05, 2.06416e-05, 2.08432e-05, 2.10049e-05, 2.11348e-05, 2.12387e-05, 2.13261e-05, 
			1.29517e-05, 1.51641e-05, 1.69695e-05, 1.84078e-05, 1.95354e-05, 2.04155e-05, 2.11019e-05, 2.16376e-05, 2.20656e-05, 2.2402e-05, 2.26691e-05, 2.28832e-05, 2.30547e-05, 2.3192e-05, 2.33063e-05, 2.33966e-05
		)
}

CapTable	"poly_C_LATERAL_13NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			0.000119414, 6.535e-05, 4.28224e-05, 3.00482e-05, 2.18952e-05, 1.63588e-05, 1.24482e-05, 9.60762e-06, 7.49934e-06, 5.90762e-06, 4.68884e-06, 3.74474e-06, 3.00618e-06, 2.42364e-06, 1.96097e-06, 1.59129e-06, 
			0.000130122, 7.2576e-05, 4.81496e-05, 3.41378e-05, 2.51e-05, 1.88997e-05, 1.44782e-05, 1.12382e-05, 8.81462e-06, 6.97218e-06, 5.5529e-06, 4.4477e-06, 3.57918e-06, 2.89152e-06, 2.34348e-06, 1.90433e-06, 
			0.000136024, 7.70144e-05, 5.16122e-05, 3.68946e-05, 2.73178e-05, 2.06936e-05, 1.59341e-05, 1.24226e-05, 9.78022e-06, 7.76034e-06, 6.1972e-06, 4.9749e-06, 4.01102e-06, 3.2455e-06, 2.63378e-06, 2.14262e-06, 
			0.000139498, 7.99748e-05, 5.40384e-05, 3.889e-05, 2.8955e-05, 2.20378e-05, 1.70379e-05, 1.33293e-05, 1.05248e-05, 8.37198e-06, 6.69974e-06, 5.38796e-06, 4.35052e-06, 3.52454e-06, 2.86322e-06, 2.331e-06, 
			0.000142204, 8.2307e-05, 5.59702e-05, 4.04846e-05, 3.02744e-05, 2.31282e-05, 1.79386e-05, 1.40722e-05, 1.11373e-05, 8.877e-06, 7.11578e-06, 5.73056e-06, 4.63264e-06, 3.75678e-06, 3.05414e-06, 2.48804e-06
		)
}

CapTable	"poly_C_BOTTOM_GP_14NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			3.66485e-05, 4.89804e-05, 5.81806e-05, 6.50117e-05, 7.00886e-05, 7.38828e-05, 7.67458e-05, 7.893e-05, 8.06149e-05, 8.19301e-05, 8.2968e-05, 8.37976e-05, 8.44613e-05, 8.50013e-05, 8.54465e-05, 8.58082e-05, 
			4.79211e-05, 6.06779e-05, 7.0403e-05, 7.77425e-05, 8.32762e-05, 8.74705e-05, 9.06753e-05, 9.31471e-05, 9.50759e-05, 9.65945e-05, 9.78051e-05, 9.8775e-05, 9.95607e-05, 0.000100206, 0.000100732, 0.000101169, 
			5.95394e-05, 7.24304e-05, 8.23994e-05, 9.00178e-05, 9.5827e-05, 0.000100276, 0.000103708, 0.000106381, 0.000108481, 0.000110149, 0.000111486, 0.000112563, 0.000113446, 0.000114164, 0.00011476, 0.000115255, 
			7.12873e-05, 8.42046e-05, 9.4306e-05, 0.000102095, 0.00010809, 0.00011272, 0.000116321, 0.000119139, 0.000121372, 0.000123159, 0.00012459, 0.000125759, 0.00012671, 0.000127496, 0.000128149, 0.000128688, 
			8.31467e-05, 9.60765e-05, 0.000106274, 0.000114198, 0.000120338, 0.000125115, 0.000128845, 0.00013179, 0.000134136, 0.000136011, 0.000137534, 0.000138772, 0.000139789, 0.000140634, 0.000141329, 0.000141912
		)
}

CapTable	"poly_C_TOP_GP_14NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			4.28208e-06, 5.74637e-06, 6.86717e-06, 7.71593e-06, 8.35457e-06, 8.83749e-06, 9.20406e-06, 9.48479e-06, 9.70286e-06, 9.87357e-06, 1.00087e-05, 1.01144e-05, 1.02035e-05, 1.02747e-05, 1.03293e-05, 1.03796e-05, 
			5.47912e-06, 6.98629e-06, 8.17461e-06, 9.09106e-06, 9.79402e-06, 1.03319e-05, 1.07462e-05, 1.10683e-05, 1.13207e-05, 1.15203e-05, 1.16784e-05, 1.18074e-05, 1.19122e-05, 1.19937e-05, 1.20666e-05, 1.21247e-05, 
			6.69739e-06, 8.2248e-06, 9.44955e-06, 1.04068e-05, 1.11484e-05, 1.17231e-05, 1.21707e-05, 1.25215e-05, 1.27987e-05, 1.3019e-05, 1.3195e-05, 1.3341e-05, 1.34541e-05, 1.35536e-05, 1.36335e-05, 1.36988e-05, 
			7.92653e-06, 9.46637e-06, 1.07122e-05, 1.16958e-05, 1.24655e-05, 1.30664e-05, 1.35349e-05, 1.39108e-05, 1.42071e-05, 1.44411e-05, 1.46368e-05, 1.47895e-05, 1.49197e-05, 1.50256e-05, 1.51104e-05, 1.51862e-05, 
			9.1667e-06, 1.07127e-05, 1.19758e-05, 1.29805e-05, 1.37722e-05, 1.43909e-05, 1.48863e-05, 1.52768e-05, 1.55851e-05, 1.58405e-05, 1.60423e-05, 1.62105e-05, 1.63479e-05, 1.64577e-05, 1.65562e-05, 1.66349e-05
		)
}

CapTable	"poly_C_LATERAL_14NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			0.000119814, 6.59472e-05, 4.35832e-05, 3.09314e-05, 2.28608e-05, 1.73717e-05, 1.34803e-05, 1.06366e-05, 8.50856e-06, 6.88458e-06, 5.62466e-06, 4.63328e-06, 3.84356e-06, 3.20772e-06, 2.69106e-06, 2.26762e-06, 
			0.000130746, 7.34378e-05, 4.92064e-05, 3.53384e-05, 2.63948e-05, 2.02456e-05, 1.58405e-05, 1.25896e-05, 1.01344e-05, 8.24524e-06, 6.76852e-06, 5.59864e-06, 4.66108e-06, 3.90222e-06, 3.2824e-06, 2.77232e-06, 
			0.000136909, 7.81688e-05, 5.2983e-05, 3.84214e-05, 2.89426e-05, 2.2367e-05, 1.76161e-05, 1.4082e-05, 1.13934e-05, 9.31068e-06, 7.6727e-06, 6.36788e-06, 5.31712e-06, 4.46264e-06, 3.76202e-06, 3.18344e-06, 
			0.000140676, 8.1445e-05, 5.57388e-05, 4.0751e-05, 3.09122e-05, 2.4036e-05, 1.90329e-05, 1.52868e-05, 1.24197e-05, 1.01864e-05, 8.42104e-06, 7.0085e-06, 5.86606e-06, 4.93362e-06, 4.16668e-06, 3.53126e-06, 
			0.000143701, 8.41128e-05, 5.80136e-05, 4.26882e-05, 3.25674e-05, 2.54508e-05, 2.0243e-05, 1.63225e-05, 1.3307e-05, 1.09471e-05, 9.07392e-06, 7.56922e-06, 6.34806e-06, 5.34844e-06, 4.52358e-06, 3.83876e-06
		)
}

CapTable	"poly_C_BOTTOM_GP_15NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			3.73604e-05, 4.98902e-05, 5.92267e-05, 6.61581e-05, 7.1306e-05, 7.51555e-05, 7.80634e-05, 8.02855e-05, 8.20046e-05, 8.33507e-05, 8.44173e-05, 8.52719e-05, 8.59636e-05, 8.6529e-05, 8.69952e-05, 8.73828e-05, 
			4.87705e-05, 6.17124e-05, 7.15632e-05, 7.89933e-05, 8.45972e-05, 8.88475e-05, 9.20984e-05, 9.46133e-05, 9.65795e-05, 9.8135e-05, 9.93782e-05, 0.000100383, 0.000101202, 0.000101876, 0.000102435, 0.000102902, 
			6.05157e-05, 7.35634e-05, 8.36474e-05, 9.13494e-05, 9.72248e-05, 0.000101728, 0.000105208, 0.000107925, 0.000110069, 0.000111776, 0.000113153, 0.000114271, 0.000115189, 0.000115948, 0.00011658, 0.000117112, 
			7.23609e-05, 8.54204e-05, 9.5621e-05, 0.000103486, 0.000109543, 0.000114225, 0.000117874, 0.000120742, 0.000123022, 0.00012485, 0.000126331, 0.000127542, 0.00012854, 0.00012937, 0.000130068, 0.000130651, 
			8.43052e-05, 9.7355e-05, 0.000107639, 0.000115632, 0.00012183, 0.000126655, 0.00013044, 0.000133434, 0.000135828, 0.000137758, 0.00013933, 0.000140624, 0.000141689, 0.000142585, 0.000143331, 0.000143966
		)
}

CapTable	"poly_C_TOP_GP_15NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			3.34982e-06, 4.491e-06, 5.3623e-06, 6.01867e-06, 6.51543e-06, 6.89029e-06, 7.17504e-06, 7.39386e-06, 7.56378e-06, 7.69736e-06, 7.80358e-06, 7.88889e-06, 7.95816e-06, 8.01476e-06, 8.06159e-06, 8.10038e-06, 
			4.28069e-06, 5.44704e-06, 6.37022e-06, 7.08134e-06, 7.62518e-06, 8.04233e-06, 8.36415e-06, 8.61454e-06, 8.81135e-06, 8.9677e-06, 9.09303e-06, 9.19472e-06, 9.27757e-06, 9.34604e-06, 9.40279e-06, 9.4504e-06, 
			5.21894e-06, 6.40562e-06, 7.35356e-06, 8.09336e-06, 8.66742e-06, 9.11265e-06, 9.45967e-06, 9.73237e-06, 9.94862e-06, 1.01217e-05, 1.02617e-05, 1.03756e-05, 1.04695e-05, 1.05473e-05, 1.06122e-05, 1.0666e-05, 
			6.17125e-06, 7.36075e-06, 8.32398e-06, 9.08393e-06, 9.67866e-06, 1.01438e-05, 1.05096e-05, 1.07993e-05, 1.10305e-05, 1.1217e-05, 1.13684e-05, 1.14927e-05, 1.15956e-05, 1.1681e-05, 1.17501e-05, 1.1812e-05, 
			7.12438e-06, 8.31899e-06, 9.29386e-06, 1.00691e-05, 1.06801e-05, 1.11617e-05, 1.15427e-05, 1.18465e-05, 1.20905e-05, 1.2288e-05, 1.24496e-05, 1.25789e-05, 1.26934e-05, 1.27813e-05, 1.2862e-05, 1.29266e-05
		)
}

CapTable	"poly_C_LATERAL_15NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			0.000119982, 6.61978e-05, 4.3905e-05, 3.13092e-05, 2.32796e-05, 1.78188e-05, 1.39449e-05, 1.11102e-05, 8.98428e-06, 7.35712e-06, 6.0899e-06, 5.08804e-06, 4.28544e-06, 3.63492e-06, 3.10212e-06, 2.6617e-06, 
			0.000131007, 7.38006e-05, 4.96556e-05, 3.58554e-05, 2.69616e-05, 2.08462e-05, 1.64615e-05, 1.32202e-05, 1.07662e-05, 8.87132e-06, 7.38374e-06, 6.19898e-06, 5.24352e-06, 4.46434e-06, 3.82264e-06, 3.28956e-06, 
			0.00013728, 7.8657e-05, 5.357e-05, 3.90852e-05, 2.96618e-05, 2.31234e-05, 1.83938e-05, 1.48685e-05, 1.21787e-05, 1.00869e-05, 8.43368e-06, 7.10902e-06, 6.0347e-06, 5.15414e-06, 4.42562e-06, 3.81784e-06, 
			0.000141173, 8.20718e-05, 5.6474e-05, 4.15696e-05, 3.179e-05, 2.4952e-05, 1.99697e-05, 1.62304e-05, 1.33587e-05, 1.11119e-05, 9.32634e-06, 7.8882e-06, 6.7163e-06, 5.75166e-06, 4.95044e-06, 4.27952e-06, 
			0.000144336, 8.489e-05, 5.89072e-05, 4.367e-05, 3.36104e-05, 2.65322e-05, 2.13434e-05, 1.74264e-05, 1.44019e-05, 1.20235e-05, 1.01243e-05, 8.58806e-06, 7.33098e-06, 6.29254e-06, 5.42686e-06, 4.69982e-06
		)
}

CapTable	"poly_C_BOTTOM_GP_16NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			3.78652e-05, 5.05424e-05, 5.99837e-05, 6.69849e-05, 7.21881e-05, 7.60794e-05, 7.9019e-05, 8.12664e-05, 8.30066e-05, 8.43709e-05, 8.54535e-05, 8.63224e-05, 8.70276e-05, 8.76055e-05, 8.80834e-05, 8.84821e-05, 
			4.93863e-05, 6.24591e-05, 7.24099e-05, 7.99141e-05, 8.55731e-05, 8.9864e-05, 9.31489e-05, 9.56906e-05, 9.76807e-05, 9.92566e-05, 0.000100518, 0.00010154, 0.000102375, 0.000103064, 0.000103638, 0.00010412, 
			6.12214e-05, 7.43976e-05, 8.45753e-05, 9.23463e-05, 9.82737e-05, 0.000102818, 0.000106331, 0.000109077, 0.000111245, 0.000112976, 0.000114373, 0.000115511, 0.000116448, 0.000117225, 0.000117875, 0.000118424, 
			7.31578e-05, 8.63297e-05, 9.66164e-05, 0.000104546, 0.000110652, 0.000115375, 0.000119056, 0.000121954, 0.00012426, 0.000126112, 0.000127617, 0.000128849, 0.00012987, 0.00013072, 0.000131435, 0.000132041, 
			8.51767e-05, 9.83289e-05, 0.000108693, 0.000116745, 0.000122989, 0.000127853, 0.00013167, 0.000134695, 0.000137115, 0.000139073, 0.000140669, 0.000141985, 0.000143078, 0.000143993, 0.000144765, 0.000145422
		)
}

CapTable	"poly_C_TOP_GP_16NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			2.7296e-06, 3.65782e-06, 4.36566e-06, 4.90307e-06, 5.3061e-06, 5.61036e-06, 5.84204e-06, 6.02009e-06, 6.15846e-06, 6.26729e-06, 6.35392e-06, 6.4238e-06, 6.48038e-06, 6.52684e-06, 6.56535e-06, 6.59754e-06, 
			3.4837e-06, 4.43769e-06, 5.18669e-06, 5.7635e-06, 6.20487e-06, 6.54338e-06, 6.80473e-06, 7.00816e-06, 7.16815e-06, 7.29539e-06, 7.39764e-06, 7.48071e-06, 7.54862e-06, 7.60479e-06, 7.65166e-06, 7.691e-06, 
			4.2514e-06, 5.21358e-06, 5.98247e-06, 6.58271e-06, 7.04774e-06, 7.40874e-06, 7.69023e-06, 7.91156e-06, 8.08725e-06, 8.22816e-06, 8.34236e-06, 8.43548e-06, 8.5123e-06, 8.57624e-06, 8.62982e-06, 8.67504e-06, 
			5.02061e-06, 5.98727e-06, 6.76783e-06, 7.38309e-06, 7.86443e-06, 8.24132e-06, 8.53777e-06, 8.7727e-06, 8.96067e-06, 9.1125e-06, 9.23597e-06, 9.33747e-06, 9.42171e-06, 9.49202e-06, 9.55131e-06, 9.60147e-06, 
			5.79332e-06, 6.76186e-06, 7.55098e-06, 8.17779e-06, 8.6722e-06, 9.062e-06, 9.37075e-06, 9.61711e-06, 9.8155e-06, 9.97629e-06, 1.0108e-05, 1.02169e-05, 1.03075e-05, 1.03836e-05, 1.04479e-05, 1.05027e-05
		)
}

CapTable	"poly_C_LATERAL_16NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			0.000120069, 6.63288e-05, 4.40736e-05, 3.1508e-05, 2.35018e-05, 1.80577e-05, 1.41955e-05, 1.13683e-05, 9.24664e-06, 7.6211e-06, 6.35346e-06, 5.34952e-06, 4.54356e-06, 3.8886e-06, 3.35056e-06, 2.90424e-06, 
			0.000131143, 7.39902e-05, 4.98914e-05, 3.61284e-05, 2.7263e-05, 2.11686e-05, 1.67983e-05, 1.35662e-05, 1.11172e-05, 9.22402e-06, 7.73546e-06, 6.54758e-06, 5.58728e-06, 4.80192e-06, 4.153e-06, 3.6118e-06, 
			0.000137474, 7.89128e-05, 5.38792e-05, 3.9437e-05, 3.00466e-05, 2.35318e-05, 1.88185e-05, 1.53034e-05, 1.26188e-05, 1.05282e-05, 8.87302e-06, 7.54384e-06, 6.463e-06, 5.5743e-06, 4.83634e-06, 4.21808e-06, 
			0.000141433, 8.2401e-05, 5.68628e-05, 4.20058e-05, 3.22622e-05, 2.54502e-05, 2.04854e-05, 1.67565e-05, 1.38897e-05, 1.16432e-05, 9.8544e-06, 8.41008e-06, 7.2297e-06, 6.25468e-06, 5.44154e-06, 4.75762e-06, 
			0.00014467, 8.53002e-05, 5.93822e-05, 4.41964e-05, 3.41756e-05, 2.71248e-05, 2.19542e-05, 1.80476e-05, 1.50272e-05, 1.26479e-05, 1.07438e-05, 9.19924e-06, 7.9315e-06, 6.88008e-06, 5.99994e-06, 5.25716e-06
		)
}

CapTable	"poly_C_BOTTOM_GP_17NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			4.0339e-05, 5.3799e-05, 6.3816e-05, 7.12448e-05, 7.6763e-05, 8.08885e-05, 8.40061e-05, 8.63906e-05, 8.82381e-05, 8.9688e-05, 9.08401e-05, 9.17665e-05, 9.25197e-05, 9.31386e-05, 9.36521e-05, 9.40822e-05, 
			5.24676e-05, 6.63126e-05, 7.68492e-05, 8.47914e-05, 9.07794e-05, 9.532e-05, 9.87963e-05, 0.000101489, 0.000103597, 0.000105269, 0.000106611, 0.000107699, 0.000108591, 0.000109328, 0.000109945, 0.000110464, 
			6.48936e-05, 7.88174e-05, 8.95714e-05, 9.77788e-05, 0.000104039, 0.000108838, 0.000112551, 0.000115453, 0.000117747, 0.000119582, 0.000121064, 0.000122275, 0.000123274, 0.000124106, 0.000124805, 0.000125396, 
			7.73924e-05, 9.12864e-05, 0.000102134, 0.000110494, 0.000116929, 0.000121907, 0.00012579, 0.000128848, 0.000131284, 0.000133245, 0.000134841, 0.000136151, 0.000137239, 0.00013815, 0.000138918, 0.000139572, 
			8.99488e-05, 0.000103796, 0.000114702, 0.000123174, 0.000129744, 0.000134862, 0.00013888, 0.000142068, 0.000144623, 0.00014669, 0.000148383, 0.00014978, 0.000150945, 0.000151925, 0.000152755, 0.000153465
		)
}

CapTable	"poly_C_LATERAL_17NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			0.000120264, 6.6621e-05, 4.4451e-05, 3.19552e-05, 2.4004e-05, 1.86024e-05, 1.47722e-05, 1.19689e-05, 9.86454e-06, 8.25132e-06, 6.992e-06, 5.9932e-06, 5.18984e-06, 4.53544e-06, 3.99628e-06, 3.54744e-06, 
			0.000131446, 7.44134e-05, 5.04198e-05, 3.67436e-05, 2.79476e-05, 2.1907e-05, 1.75777e-05, 1.43764e-05, 1.195e-05, 1.0073e-05, 8.59534e-06, 7.41426e-06, 6.45738e-06, 5.67274e-06, 5.02226e-06, 4.47764e-06, 
			0.000137906, 7.94846e-05, 5.45736e-05, 4.02332e-05, 3.09238e-05, 2.44726e-05, 1.9808e-05, 1.63295e-05, 1.36718e-05, 1.16004e-05, 9.95818e-06, 8.63694e-06, 7.55994e-06, 6.67176e-06, 5.93152e-06, 5.30866e-06, 
			0.000142013, 8.31396e-05, 5.77396e-05, 4.29974e-05, 3.33456e-05, 2.66056e-05, 2.1696e-05, 1.80087e-05, 1.51725e-05, 1.29477e-05, 1.11733e-05, 9.73766e-06, 8.56118e-06, 7.5861e-06, 6.76964e-06, 6.07968e-06, 
			0.000145417, 8.62234e-05, 6.0459e-05, 4.54004e-05, 3.54814e-05, 2.85102e-05, 2.34006e-05, 1.95401e-05, 1.65535e-05, 1.41978e-05, 1.23093e-05, 1.07738e-05, 9.50962e-06, 8.45728e-06, 7.5725e-06, 6.82188e-06
		)
}

CapTable	"metal1_C_BOTTOM_GP_21NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			1.56091e-05, 2.10817e-05, 2.60397e-05, 3.04114e-05, 3.41478e-05, 3.72608e-05, 3.9804e-05, 4.18493e-05, 4.34749e-05, 4.47523e-05, 4.57504e-05, 4.65272e-05, 4.71327e-05, 4.759e-05, 4.79478e-05, 4.8223e-05, 
			2.14648e-05, 2.71693e-05, 3.2391e-05, 3.69984e-05, 4.09376e-05, 4.4223e-05, 4.69083e-05, 4.90665e-05, 5.07817e-05, 5.21315e-05, 5.31933e-05, 5.40115e-05, 5.46436e-05, 5.51353e-05, 5.55136e-05, 5.58051e-05, 
			2.76649e-05, 3.35389e-05, 3.89062e-05, 4.36385e-05, 4.76806e-05, 5.10485e-05, 5.38002e-05, 5.60118e-05, 5.77719e-05, 5.91611e-05, 6.02401e-05, 6.10837e-05, 6.17372e-05, 6.22421e-05, 6.263e-05, 6.29301e-05, 
			3.41063e-05, 4.00725e-05, 4.55237e-05, 5.03225e-05, 5.44154e-05, 5.78228e-05, 6.06053e-05, 6.28493e-05, 6.46285e-05, 6.60274e-05, 6.71266e-05, 6.79801e-05, 6.86413e-05, 6.91532e-05, 6.95469e-05, 6.98508e-05, 
			4.06917e-05, 4.67017e-05, 5.21944e-05, 5.7021e-05, 6.11395e-05, 6.45617e-05, 6.73604e-05, 6.96074e-05, 7.13982e-05, 7.28093e-05, 7.3912e-05, 7.4769e-05, 7.54365e-05, 7.59494e-05, 7.63455e-05, 7.66517e-05
		)
}

CapTable	"metal1_C_TOP_GP_21NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			2.13649e-05, 2.90171e-05, 3.58077e-05, 4.16432e-05, 4.65306e-05, 5.05356e-05, 5.3768e-05, 5.63429e-05, 5.83741e-05, 5.99663e-05, 6.12039e-05, 6.21617e-05, 6.2899e-05, 6.34772e-05, 6.39182e-05, 6.42563e-05, 
			2.99812e-05, 3.79759e-05, 4.50668e-05, 5.11578e-05, 5.62562e-05, 6.04396e-05, 6.38165e-05, 6.6512e-05, 6.86393e-05, 7.03061e-05, 7.15975e-05, 7.2608e-05, 7.33912e-05, 7.39915e-05, 7.44555e-05, 7.48129e-05, 
			3.91231e-05, 4.72901e-05, 5.45142e-05, 6.07183e-05, 6.59142e-05, 7.01769e-05, 7.36218e-05, 7.63707e-05, 7.85401e-05, 8.02374e-05, 8.1569e-05, 8.25996e-05, 8.33954e-05, 8.40116e-05, 8.44887e-05, 8.48533e-05, 
			4.85437e-05, 5.67771e-05, 6.40635e-05, 7.03173e-05, 7.55578e-05, 7.98562e-05, 8.33319e-05, 8.60988e-05, 8.82919e-05, 9.00144e-05, 9.13535e-05, 9.23955e-05, 9.32024e-05, 9.38259e-05, 9.43072e-05, 9.46784e-05, 
			5.81003e-05, 6.63463e-05, 7.36536e-05, 7.99302e-05, 8.51799e-05, 8.94957e-05, 9.29742e-05, 9.57608e-05, 9.79617e-05, 9.96862e-05, 0.000101034, 0.000102084, 0.000102892, 0.00010352, 0.000104004, 0.000104377
		)
}

CapTable	"metal1_C_LATERAL_21NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			0.000232548, 0.000123489, 8.12766e-05, 5.75554e-05, 4.21276e-05, 3.13646e-05, 2.3574e-05, 1.78168e-05, 1.3513e-05, 1.02714e-05, 7.81966e-06, 5.9591e-06, 4.54426e-06, 3.46576e-06, 2.64302e-06, 2.0147e-06, 
			0.000241602, 0.000129376, 8.53332e-05, 6.04868e-05, 4.42992e-05, 3.29954e-05, 2.48092e-05, 1.87575e-05, 1.4231e-05, 1.08194e-05, 8.23822e-06, 6.27754e-06, 4.78524e-06, 3.64824e-06, 2.77988e-06, 2.11604e-06, 
			0.000245356, 0.000131949, 8.71576e-05, 6.18232e-05, 4.52922e-05, 3.37466e-05, 2.5381e-05, 1.91945e-05, 1.4564e-05, 1.10745e-05, 8.43092e-06, 6.4227e-06, 4.89438e-06, 3.72832e-06, 2.83734e-06, 2.15656e-06, 
			0.000246622, 0.000133024, 8.79578e-05, 6.24152e-05, 4.57438e-05, 3.4093e-05, 2.56448e-05, 1.93969e-05, 1.47186e-05, 1.11902e-05, 8.5179e-06, 6.48644e-06, 4.93926e-06, 3.75888e-06, 2.85694e-06, 2.16684e-06, 
			0.000246424, 0.000133257, 8.8188e-05, 6.26028e-05, 4.58916e-05, 3.42056e-05, 2.57424e-05, 1.94698e-05, 1.47721e-05, 1.12295e-05, 8.54404e-06, 6.50196e-06, 4.94752e-06, 3.76062e-06, 2.85348e-06, 2.15928e-06
		)
}

CapTable	"metal1_C_BOTTOM_GP_22NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			1.77729e-05, 2.33341e-05, 2.83076e-05, 3.27654e-05, 3.67397e-05, 4.02568e-05, 4.33489e-05, 4.60475e-05, 4.83884e-05, 5.04087e-05, 5.21441e-05, 5.36291e-05, 5.4897e-05, 5.59752e-05, 5.68912e-05, 5.767e-05, 
			2.33459e-05, 2.90184e-05, 3.42136e-05, 3.89216e-05, 4.31433e-05, 4.68924e-05, 5.01957e-05, 5.30828e-05, 5.55905e-05, 5.77585e-05, 5.96224e-05, 6.12191e-05, 6.25833e-05, 6.37445e-05, 6.47342e-05, 6.55721e-05, 
			2.92154e-05, 3.50093e-05, 4.03543e-05, 4.52178e-05, 4.95917e-05, 5.34794e-05, 5.69084e-05, 5.99082e-05, 6.25157e-05, 6.47714e-05, 6.67119e-05, 6.83757e-05, 6.98011e-05, 7.10131e-05, 7.20418e-05, 7.29172e-05, 
			3.53393e-05, 4.12206e-05, 4.66677e-05, 5.16338e-05, 5.61006e-05, 6.00765e-05, 6.35838e-05, 6.66556e-05, 6.93269e-05, 7.16373e-05, 7.36276e-05, 7.53367e-05, 7.67959e-05, 7.80381e-05, 7.90933e-05, 8.00089e-05, 
			4.16492e-05, 4.75872e-05, 5.30993e-05, 5.81285e-05, 6.26548e-05, 6.66865e-05, 7.02422e-05, 7.33585e-05, 7.60685e-05, 7.84176e-05, 8.04398e-05, 8.21704e-05, 8.36541e-05, 8.49205e-05, 8.59942e-05, 8.69091e-05
		)
}

CapTable	"metal1_C_TOP_GP_22NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			9.32808e-06, 1.22497e-05, 1.48804e-05, 1.72588e-05, 1.93981e-05, 2.1309e-05, 2.30005e-05, 2.44857e-05, 2.57828e-05, 2.69079e-05, 2.78784e-05, 2.87124e-05, 2.94266e-05, 3.00367e-05, 3.05566e-05, 3.09959e-05, 
			1.21181e-05, 1.50548e-05, 1.7781e-05, 2.02838e-05, 2.25553e-05, 2.45932e-05, 2.64029e-05, 2.79982e-05, 2.93935e-05, 3.06063e-05, 3.16536e-05, 3.25563e-05, 3.33295e-05, 3.39909e-05, 3.45528e-05, 3.50322e-05, 
			1.50126e-05, 1.79943e-05, 2.07949e-05, 2.3383e-05, 2.57383e-05, 2.78578e-05, 2.97442e-05, 3.14082e-05, 3.28647e-05, 3.41322e-05, 3.52291e-05, 3.61748e-05, 3.69828e-05, 3.76756e-05, 3.82705e-05, 3.87741e-05, 
			1.80167e-05, 2.10404e-05, 2.38973e-05, 2.65438e-05, 2.89592e-05, 3.11339e-05, 3.30714e-05, 3.478e-05, 3.62787e-05, 3.75823e-05, 3.87117e-05, 3.96825e-05, 4.05178e-05, 4.12344e-05, 4.18486e-05, 4.23509e-05, 
			2.11118e-05, 2.41644e-05, 2.70637e-05, 2.97547e-05, 3.22106e-05, 3.44219e-05, 3.63924e-05, 3.81331e-05, 3.96597e-05, 4.09854e-05, 4.21344e-05, 4.313e-05, 4.39816e-05, 4.47084e-05, 4.53325e-05, 4.58622e-05
		)
}

CapTable	"metal1_C_LATERAL_22NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			0.000239768, 0.000133112, 9.2625e-05, 6.99518e-05, 5.49712e-05, 4.41662e-05, 3.59656e-05, 2.95438e-05, 2.4412e-05, 2.02552e-05, 1.68577e-05, 1.40624e-05, 1.17507e-05, 9.83312e-06, 8.23738e-06, 6.90746e-06, 
			0.000252244, 0.000142104, 9.94374e-05, 7.53096e-05, 5.92744e-05, 4.76734e-05, 3.88534e-05, 3.1938e-05, 2.6407e-05, 2.19232e-05, 1.8256e-05, 1.52356e-05, 1.27372e-05, 1.06626e-05, 8.93596e-06, 7.49572e-06, 
			0.000258976, 0.00014722, 0.000103425, 7.84902e-05, 6.185e-05, 4.97868e-05, 4.06024e-05, 3.33946e-05, 2.76256e-05, 2.29454e-05, 1.9115e-05, 1.59585e-05, 1.33461e-05, 1.11763e-05, 9.36866e-06, 7.86072e-06, 
			0.00026265, 0.000150283, 0.000105879, 8.04704e-05, 6.34752e-05, 5.11306e-05, 4.17198e-05, 3.43294e-05, 2.84094e-05, 2.36054e-05, 1.96707e-05, 1.64278e-05, 1.37423e-05, 1.15105e-05, 9.65108e-06, 8.10024e-06, 
			0.000264328, 0.000152032, 0.000107355, 8.16918e-05, 6.44866e-05, 5.19746e-05, 4.24344e-05, 3.49294e-05, 2.89148e-05, 2.4032e-05, 2.00318e-05, 1.67326e-05, 1.40003e-05, 1.17291e-05, 9.83628e-06, 8.2557e-06
		)
}

CapTable	"metal1_C_BOTTOM_GP_23NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			1.91268e-05, 2.4925e-05, 3.00471e-05, 3.46044e-05, 3.86582e-05, 4.22532e-05, 4.54363e-05, 4.82414e-05, 5.07096e-05, 5.28768e-05, 5.47775e-05, 5.64413e-05, 5.7897e-05, 5.91696e-05, 6.02835e-05, 6.1256e-05, 
			2.48007e-05, 3.0622e-05, 3.59092e-05, 4.06786e-05, 4.49551e-05, 4.87694e-05, 5.2161e-05, 5.51619e-05, 5.781e-05, 6.01434e-05, 6.21933e-05, 6.39935e-05, 6.55724e-05, 6.69563e-05, 6.81698e-05, 6.92324e-05, 
			3.06916e-05, 3.65744e-05, 4.19667e-05, 4.68654e-05, 5.1277e-05, 5.52262e-05, 5.87462e-05, 6.18698e-05, 6.46344e-05, 6.70734e-05, 6.9222e-05, 7.11125e-05, 7.27732e-05, 7.4233e-05, 7.55118e-05, 7.6637e-05, 
			3.67823e-05, 4.27069e-05, 4.81684e-05, 5.315e-05, 5.76498e-05, 6.16879e-05, 6.52948e-05, 6.8503e-05, 7.13471e-05, 7.38607e-05, 7.6079e-05, 7.80348e-05, 7.97544e-05, 8.12664e-05, 8.25963e-05, 8.37632e-05, 
			4.30245e-05, 4.89662e-05, 5.44738e-05, 5.95063e-05, 6.40651e-05, 6.81644e-05, 7.18313e-05, 7.50985e-05, 7.7998e-05, 8.05658e-05, 8.28368e-05, 8.48359e-05, 8.66006e-05, 8.81541e-05, 8.95191e-05, 9.07204e-05
		)
}

CapTable	"metal1_C_TOP_GP_23NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			6.30624e-06, 8.20723e-06, 9.89791e-06, 1.1416e-05, 1.27804e-05, 1.40036e-05, 1.50945e-05, 1.60671e-05, 1.69296e-05, 1.76923e-05, 1.83644e-05, 1.89568e-05, 1.94777e-05, 1.99357e-05, 2.0337e-05, 2.06901e-05, 
			8.05229e-06, 9.92239e-06, 1.16444e-05, 1.32216e-05, 1.46567e-05, 1.5955e-05, 1.71196e-05, 1.81627e-05, 1.90926e-05, 1.99174e-05, 2.06479e-05, 2.12935e-05, 2.18629e-05, 2.23644e-05, 2.28049e-05, 2.31929e-05, 
			9.8234e-06, 1.1691e-05, 1.34389e-05, 1.50546e-05, 1.65374e-05, 1.7885e-05, 1.9101e-05, 2.01914e-05, 2.11664e-05, 2.20344e-05, 2.2805e-05, 2.34873e-05, 2.40909e-05, 2.46211e-05, 2.50929e-05, 2.55044e-05, 
			1.16307e-05, 1.35027e-05, 1.52736e-05, 1.692e-05, 1.84366e-05, 1.98195e-05, 2.10704e-05, 2.21964e-05, 2.32045e-05, 2.41041e-05, 2.49038e-05, 2.5612e-05, 2.62402e-05, 2.67953e-05, 2.72854e-05, 2.77174e-05, 
			1.34705e-05, 1.5348e-05, 1.71374e-05, 1.88095e-05, 2.03519e-05, 2.17614e-05, 2.30391e-05, 2.41909e-05, 2.52248e-05, 2.61478e-05, 2.6968e-05, 2.77001e-05, 2.83453e-05, 2.89169e-05, 2.94236e-05, 2.98688e-05
		)
}

CapTable	"metal1_C_LATERAL_23NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			0.000241092, 0.000134961, 9.4967e-05, 7.27336e-05, 5.81214e-05, 4.76052e-05, 3.96122e-05, 3.332e-05, 2.82474e-05, 2.40886e-05, 2.06366e-05, 1.77444e-05, 1.53036e-05, 1.32315e-05, 1.14637e-05, 9.94998e-06, 
			0.000254254, 0.000144693, 0.000102558, 7.88918e-05, 6.32322e-05, 5.19146e-05, 4.32864e-05, 3.64774e-05, 3.09764e-05, 2.64572e-05, 2.26988e-05, 1.9544e-05, 1.68767e-05, 1.46083e-05, 1.26703e-05, 1.10077e-05, 
			0.000261742, 0.000150589, 0.000107333, 8.2855e-05, 6.65736e-05, 5.47688e-05, 4.57458e-05, 3.86098e-05, 3.28332e-05, 2.80792e-05, 2.4119e-05, 2.07892e-05, 1.79699e-05, 1.55689e-05, 1.35143e-05, 1.17496e-05, 
			0.000266204, 0.000154437, 0.00011056, 8.5583e-05, 6.89156e-05, 5.67936e-05, 4.75058e-05, 4.01466e-05, 3.41794e-05, 2.92612e-05, 2.51582e-05, 2.17042e-05, 1.87754e-05, 1.62783e-05, 1.41393e-05, 1.23004e-05, 
			0.000268662, 0.00015695, 0.00011277, 8.75032e-05, 7.0586e-05, 5.82542e-05, 4.87946e-05, 4.12796e-05, 3.51772e-05, 3.01414e-05, 2.59352e-05, 2.239e-05, 1.93811e-05, 1.6813e-05, 1.46113e-05, 1.27168e-05
		)
}

CapTable	"metal1_C_BOTTOM_GP_24NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			1.99923e-05, 2.59786e-05, 3.12344e-05, 3.58915e-05, 4.00226e-05, 4.36806e-05, 4.69158e-05, 4.9772e-05, 5.22903e-05, 5.45094e-05, 5.64642e-05, 5.81866e-05, 5.97025e-05, 6.10412e-05, 6.22208e-05, 6.32636e-05, 
			2.57948e-05, 3.17587e-05, 3.71519e-05, 4.1999e-05, 4.63361e-05, 5.02015e-05, 5.36365e-05, 5.66827e-05, 5.93781e-05, 6.17625e-05, 6.38707e-05, 6.57347e-05, 6.738e-05, 6.88371e-05, 7.0125e-05, 7.1267e-05, 
			3.17701e-05, 3.77639e-05, 4.32374e-05, 4.81927e-05, 5.26497e-05, 5.66397e-05, 6.01969e-05, 6.33624e-05, 6.61732e-05, 6.86652e-05, 7.08764e-05, 7.28338e-05, 7.45699e-05, 7.61078e-05, 7.7473e-05, 7.86844e-05, 
			3.7918e-05, 4.39236e-05, 4.94452e-05, 5.44661e-05, 5.89972e-05, 6.30663e-05, 6.67052e-05, 6.99535e-05, 7.28451e-05, 7.54152e-05, 7.76993e-05, 7.97265e-05, 8.15279e-05, 8.31281e-05, 8.45501e-05, 8.58171e-05, 
			4.41867e-05, 5.01863e-05, 5.57329e-05, 6.07923e-05, 6.53726e-05, 6.9498e-05, 7.31925e-05, 7.64996e-05, 7.94486e-05, 8.20774e-05, 8.44156e-05, 8.64974e-05, 8.83488e-05, 8.99974e-05, 9.14638e-05, 9.27729e-05
		)
}

CapTable	"metal1_C_TOP_GP_24NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			4.81768e-06, 6.24262e-06, 7.50603e-06, 8.6355e-06, 9.64682e-06, 1.05528e-05, 1.13619e-05, 1.20827e-05, 1.27236e-05, 1.32925e-05, 1.37964e-05, 1.42422e-05, 1.46389e-05, 1.49882e-05, 1.52994e-05, 1.55745e-05, 
			6.10816e-06, 7.5019e-06, 8.77814e-06, 9.94361e-06, 1.10013e-05, 1.19565e-05, 1.28161e-05, 1.35869e-05, 1.42755e-05, 1.48901e-05, 1.54357e-05, 1.59215e-05, 1.63549e-05, 1.67392e-05, 1.70821e-05, 1.73866e-05, 
			7.41189e-06, 8.79046e-06, 1.00768e-05, 1.12645e-05, 1.23517e-05, 1.33395e-05, 1.42323e-05, 1.50356e-05, 1.57556e-05, 1.64022e-05, 1.69774e-05, 1.7493e-05, 1.79515e-05, 1.83617e-05, 1.87262e-05, 1.90524e-05, 
			8.727e-06, 1.01011e-05, 1.13954e-05, 1.25995e-05, 1.37078e-05, 1.47185e-05, 1.56358e-05, 1.64623e-05, 1.72063e-05, 1.7876e-05, 1.84745e-05, 1.90115e-05, 1.94911e-05, 1.99191e-05, 2.03026e-05, 2.06435e-05, 
			1.00583e-05, 1.14277e-05, 1.27301e-05, 1.39471e-05, 1.507e-05, 1.60968e-05, 1.70329e-05, 1.78778e-05, 1.86426e-05, 1.93286e-05, 1.99466e-05, 2.04988e-05, 2.09952e-05, 2.14383e-05, 2.18359e-05, 2.219e-05
		)
}

CapTable	"metal1_C_LATERAL_24NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			0.000241592, 0.00013566, 9.58596e-05, 7.3809e-05, 5.93636e-05, 4.89946e-05, 4.1127e-05, 3.49372e-05, 2.99446e-05, 2.5844e-05, 2.24304e-05, 1.95584e-05, 1.71214e-05, 1.5039e-05, 1.32491e-05, 1.17027e-05, 
			0.000255, 0.000145662, 0.000103746, 8.02834e-05, 6.48086e-05, 5.3652e-05, 4.51594e-05, 3.84594e-05, 3.30414e-05, 2.85804e-05, 2.48576e-05, 2.17178e-05, 1.90471e-05, 1.67597e-05, 1.47889e-05, 1.30824e-05, 
			0.000262766, 0.000151858, 0.000108838, 8.45778e-05, 6.84916e-05, 5.68548e-05, 4.79708e-05, 4.0944e-05, 3.52482e-05, 3.05476e-05, 2.66162e-05, 2.32932e-05, 2.04606e-05, 1.80295e-05, 1.59308e-05, 1.41102e-05, 
			0.000267534, 0.000156027, 0.000112397, 8.76474e-05, 7.118e-05, 5.92272e-05, 5.0077e-05, 4.28232e-05, 3.69306e-05, 3.20578e-05, 2.79742e-05, 2.4516e-05, 2.1563e-05, 1.90238e-05, 1.68283e-05, 1.49204e-05, 
			0.000270318, 0.000158876, 0.00011495, 8.99136e-05, 7.31964e-05, 6.10312e-05, 5.17036e-05, 4.42866e-05, 3.82498e-05, 3.3249e-05, 2.90508e-05, 2.54898e-05, 2.2444e-05, 1.98213e-05, 1.75503e-05, 1.55741e-05
		)
}

CapTable	"metal1_C_BOTTOM_GP_25NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			2.06096e-05, 2.67335e-05, 3.21014e-05, 3.68471e-05, 4.10496e-05, 4.4768e-05, 4.80537e-05, 5.09539e-05, 5.35117e-05, 5.57672e-05, 5.7756e-05, 5.95111e-05, 6.10607e-05, 6.24307e-05, 6.36443e-05, 6.47197e-05, 
			2.65108e-05, 3.25991e-05, 3.80902e-05, 4.30136e-05, 4.7414e-05, 5.13329e-05, 5.48123e-05, 5.78979e-05, 6.06309e-05, 6.30494e-05, 6.51916e-05, 6.70876e-05, 6.87685e-05, 7.02599e-05, 7.15841e-05, 7.27628e-05, 
			3.25812e-05, 3.86755e-05, 4.42303e-05, 4.92528e-05, 5.37636e-05, 5.77983e-05, 6.1396e-05, 6.45961e-05, 6.74404e-05, 6.99655e-05, 7.22082e-05, 7.42012e-05, 7.5972e-05, 7.75482e-05, 7.89511e-05, 8.02039e-05, 
			3.88021e-05, 4.48908e-05, 5.04805e-05, 5.55565e-05, 6.01338e-05, 6.4241e-05, 6.79145e-05, 7.11934e-05, 7.41151e-05, 7.67166e-05, 7.90333e-05, 8.10963e-05, 8.29362e-05, 8.45748e-05, 8.60397e-05, 8.73477e-05, 
			4.51237e-05, 5.11936e-05, 5.67965e-05, 6.19015e-05, 6.65191e-05, 7.0675e-05, 7.43999e-05, 7.77331e-05, 8.07125e-05, 8.33708e-05, 8.57443e-05, 8.78621e-05, 8.97539e-05, 9.14439e-05, 9.29558e-05, 9.43097e-05
		)
}

CapTable	"metal1_C_TOP_GP_25NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			3.89836e-06, 5.05168e-06, 6.06563e-06, 6.97033e-06, 7.77942e-06, 8.50284e-06, 9.14853e-06, 9.72364e-06, 1.02352e-05, 1.06896e-05, 1.1093e-05, 1.14511e-05, 1.1769e-05, 1.20516e-05, 1.23021e-05, 1.25258e-05, 
			4.93416e-06, 6.04835e-06, 7.06704e-06, 7.99785e-06, 8.84076e-06, 9.60131e-06, 1.02851e-05, 1.08981e-05, 1.14463e-05, 1.19358e-05, 1.23724e-05, 1.27614e-05, 1.31087e-05, 1.34181e-05, 1.36948e-05, 1.39408e-05, 
			5.96183e-06, 7.06355e-06, 8.08833e-06, 9.03285e-06, 9.89616e-06, 1.06799e-05, 1.13882e-05, 1.20261e-05, 1.25988e-05, 1.31125e-05, 1.35726e-05, 1.39832e-05, 1.43518e-05, 1.46802e-05, 1.49761e-05, 1.52397e-05, 
			6.99894e-06, 8.09181e-06, 9.11988e-06, 1.00743e-05, 1.09518e-05, 1.1752e-05, 1.24779e-05, 1.31338e-05, 1.37245e-05, 1.42562e-05, 1.47333e-05, 1.51619e-05, 1.55454e-05, 1.58916e-05, 1.62001e-05, 1.64791e-05, 
			8.0453e-06, 9.13041e-06, 1.01609e-05, 1.11225e-05, 1.20099e-05, 1.28218e-05, 1.35607e-05, 1.42307e-05, 1.48353e-05, 1.53814e-05, 1.58715e-05, 1.63141e-05, 1.67109e-05, 1.70683e-05, 1.73899e-05, 1.76791e-05
		)
}

CapTable	"metal1_C_LATERAL_25NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			0.000241834, 0.000135996, 9.6287e-05, 7.43236e-05, 5.996e-05, 4.96652e-05, 4.18636e-05, 3.57312e-05, 3.0787e-05, 2.67262e-05, 2.3344e-05, 2.04952e-05, 1.80745e-05, 1.60016e-05, 1.42153e-05, 1.26671e-05, 
			0.00025536, 0.000146128, 0.000104315, 8.09516e-05, 6.55692e-05, 5.44968e-05, 4.60786e-05, 3.9443e-05, 3.40788e-05, 2.96618e-05, 2.5973e-05, 2.2858e-05, 2.02038e-05, 1.7925e-05, 1.59561e-05, 1.42454e-05, 
			0.000263258, 0.000152466, 0.00010956, 8.54094e-05, 6.94242e-05, 5.78788e-05, 4.90748e-05, 4.21168e-05, 3.64778e-05, 3.1823e-05, 2.79262e-05, 2.46276e-05, 2.18102e-05, 1.93856e-05, 1.72858e-05, 1.54574e-05, 
			0.000268172, 0.000156792, 0.000113286, 8.86522e-05, 7.22924e-05, 6.0436e-05, 5.13696e-05, 4.41868e-05, 3.83524e-05, 3.35252e-05, 2.94754e-05, 2.60398e-05, 2.30994e-05, 2.05636e-05, 1.83632e-05, 1.64432e-05, 
			0.000271118, 0.000159809, 0.000116014, 9.11e-05, 7.4495e-05, 6.24292e-05, 5.31874e-05, 4.58422e-05, 3.98632e-05, 3.49068e-05, 3.07402e-05, 2.71988e-05, 2.41622e-05, 2.15388e-05, 1.92583e-05, 1.72652e-05
		)
}

CapTable	"metal1_C_BOTTOM_GP_26NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			2.3875e-05, 3.08736e-05, 3.69716e-05, 4.23412e-05, 4.70794e-05, 5.12606e-05, 5.4948e-05, 5.81984e-05, 6.10626e-05, 6.35872e-05, 6.58141e-05, 6.77804e-05, 6.95192e-05, 7.10595e-05, 7.24267e-05, 7.36428e-05, 
			3.0495e-05, 3.73758e-05, 4.35568e-05, 4.90842e-05, 5.4009e-05, 5.8383e-05, 6.22624e-05, 6.56972e-05, 6.87374e-05, 7.1429e-05, 7.38114e-05, 7.5924e-05, 7.7799e-05, 7.9467e-05, 8.09531e-05, 8.22797e-05, 
			3.7225e-05, 4.40572e-05, 5.02656e-05, 5.58634e-05, 6.0879e-05, 6.53548e-05, 6.93402e-05, 7.2882e-05, 7.60284e-05, 7.8823e-05, 8.13056e-05, 8.3515e-05, 8.54822e-05, 8.72372e-05, 8.88062e-05, 9.02114e-05, 
			4.4062e-05, 5.08414e-05, 5.7047e-05, 6.26692e-05, 6.7728e-05, 7.22592e-05, 7.63064e-05, 7.99152e-05, 8.31314e-05, 8.59952e-05, 8.85494e-05, 9.0827e-05, 9.28622e-05, 9.46828e-05, 9.6314e-05, 9.77796e-05, 
			5.0964e-05, 5.76752e-05, 6.3858e-05, 6.94796e-05, 7.45546e-05, 7.9114e-05, 8.31964e-05, 8.68482e-05, 9.01118e-05, 9.30262e-05, 9.56308e-05, 9.79604e-05, 0.000100047, 0.000101918, 0.0001036, 0.000105113
		)
}

CapTable	"metal1_C_LATERAL_26NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			0.000242346, 0.000136704, 9.71894e-05, 7.54138e-05, 6.12286e-05, 5.11004e-05, 4.34522e-05, 3.74586e-05, 3.26388e-05, 2.86882e-05, 2.5402e-05, 2.26366e-05, 2.02866e-05, 1.82733e-05, 1.6536e-05, 1.50275e-05, 
			0.000256116, 0.000147107, 0.000105516, 8.23688e-05, 6.7192e-05, 5.6312e-05, 4.80706e-05, 4.15958e-05, 3.63756e-05, 3.2086e-05, 2.85086e-05, 2.549e-05, 2.2918e-05, 2.0708e-05, 1.87958e-05, 1.71305e-05, 
			0.000264292, 0.000153749, 0.00011109, 8.71796e-05, 7.1423e-05, 6.00912e-05, 5.14838e-05, 4.4704e-05, 3.92246e-05, 3.4711e-05, 3.09374e-05, 2.7745e-05, 2.50178e-05, 2.26688e-05, 2.06308e-05, 1.88516e-05, 
			0.000269518, 0.00015841, 0.000115173, 9.08018e-05, 7.4691e-05, 6.30668e-05, 5.42136e-05, 4.72238e-05, 4.15616e-05, 3.68868e-05, 3.29696e-05, 2.9648e-05, 2.68038e-05, 2.43482e-05, 2.2213e-05, 2.03444e-05, 
			0.000272804, 0.00016179, 0.000118286, 9.36544e-05, 7.73164e-05, 6.5499e-05, 5.64846e-05, 4.93448e-05, 4.35492e-05, 3.87538e-05, 3.47272e-05, 3.13056e-05, 2.83698e-05, 2.58296e-05, 2.3616e-05, 2.16752e-05
		)
}

CapTable	"metal1_C_BOTTOM_GPNOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			3.45346e-05, 4.73308e-05, 5.7814e-05, 6.59696e-05, 7.2061e-05, 7.64707e-05, 7.95937e-05, 8.17698e-05, 8.32713e-05, 8.42971e-05, 8.49961e-05, 8.54698e-05, 8.57925e-05, 8.60103e-05, 8.61597e-05, 8.62637e-05, 
			5.11287e-05, 6.43312e-05, 7.50749e-05, 8.34067e-05, 8.9621e-05, 9.41199e-05, 9.73115e-05, 9.95336e-05, 0.000101067, 0.000102118, 0.000102833, 0.00010332, 0.000103651, 0.000103877, 0.000104032, 0.00010414, 
			6.82331e-05, 8.15413e-05, 9.2335e-05, 0.000100698, 0.000106941, 0.000111461, 0.000114665, 0.000116899, 0.000118443, 0.0001195, 0.00012022, 0.000120711, 0.000121047, 0.000121276, 0.000121435, 0.000121546, 
			8.55073e-05, 9.88004e-05, 0.000109588, 0.000117953, 0.000124185, 0.000128704, 0.000131907, 0.000134142, 0.000135686, 0.000136745, 0.000137468, 0.000137962, 0.000138299, 0.000138531, 0.000138693, 0.000138807, 
			0.00010282, 0.000116045, 0.000126807, 0.000135143, 0.000141364, 0.000145871, 0.000149061, 0.000151292, 0.000152835, 0.000153892, 0.000154616, 0.000155112, 0.000155451, 0.000155686, 0.00015585, 0.000155966
		)
}

CapTable	"metal1_C_TOP_GPNOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			2.00954e-05, 2.7887e-05, 3.4658e-05, 4.01404e-05, 4.43376e-05, 4.74261e-05, 4.96368e-05, 5.11867e-05, 5.22584e-05, 5.29933e-05, 5.34956e-05, 5.38376e-05, 5.40706e-05, 5.42312e-05, 5.43416e-05, 5.44192e-05, 
			2.91823e-05, 3.72962e-05, 4.42923e-05, 4.99329e-05, 5.42436e-05, 5.74156e-05, 5.96793e-05, 6.12742e-05, 6.2374e-05, 6.31313e-05, 6.36504e-05, 6.4004e-05, 6.42464e-05, 6.44139e-05, 6.45312e-05, 6.46147e-05, 
			3.86569e-05, 4.68935e-05, 5.39602e-05, 5.96455e-05, 6.3988e-05, 6.71781e-05, 6.94604e-05, 7.1064e-05, 7.21757e-05, 7.29404e-05, 7.34662e-05, 7.3826e-05, 7.40743e-05, 7.42475e-05, 7.43685e-05, 7.44563e-05, 
			4.82887e-05, 5.65506e-05, 6.36347e-05, 6.93198e-05, 7.3668e-05, 7.68555e-05, 7.91407e-05, 8.07482e-05, 8.18628e-05, 8.26313e-05, 8.316e-05, 8.35248e-05, 8.37783e-05, 8.39545e-05, 8.40807e-05, 8.4171e-05, 
			5.79699e-05, 6.6214e-05, 7.32839e-05, 7.89626e-05, 8.32966e-05, 8.64816e-05, 8.87587e-05, 9.03655e-05, 9.14814e-05, 9.22529e-05, 9.27858e-05, 9.31531e-05, 9.34107e-05, 9.35919e-05, 9.37203e-05, 9.38115e-05
		)
}

CapTable	"metal1_C_LATERALNOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			0.000221098, 0.000109438, 6.6185e-05, 4.2608e-05, 2.81364e-05, 1.88032e-05, 1.26505e-05, 8.55354e-06, 5.81232e-06, 3.97358e-06, 2.73728e-06, 1.90456e-06, 1.34187e-06, 9.59524e-07, 6.97724e-07, 5.16076e-07, 
			0.00022577, 0.000112056, 6.77808e-05, 4.36604e-05, 2.88554e-05, 1.93065e-05, 1.30112e-05, 8.81622e-06, 6.0085e-06, 4.12202e-06, 2.8517e-06, 1.9942e-06, 1.4126e-06, 1.01533e-06, 7.40996e-07, 5.48636e-07, 
			0.000226732, 0.00011266, 6.81908e-05, 4.39592e-05, 2.90738e-05, 1.94767e-05, 1.31469e-05, 8.92682e-06, 6.09868e-06, 4.19698e-06, 2.91402e-06, 2.04556e-06, 1.45403e-06, 1.0475e-06, 7.64714e-07, 5.64708e-07, 
			0.000226348, 0.000112619, 6.821e-05, 4.39956e-05, 2.91296e-05, 1.95376e-05, 1.32058e-05, 8.98202e-06, 6.14926e-06, 4.24188e-06, 2.95272e-06, 2.07708e-06, 1.47799e-06, 1.0642e-06, 7.74512e-07, 5.68936e-07, 
			0.000225202, 0.000112257, 6.8046e-05, 4.39188e-05, 2.90972e-05, 1.9532e-05, 1.32288e-05, 9.01002e-06, 6.17774e-06, 4.26776e-06, 2.97396e-06, 2.09268e-06, 1.48731e-06, 1.06754e-06, 7.73106e-07, 5.64018e-07
		)
}

CapTable	"metal1_C_BOTTOM_GP_12NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			3.7189e-05, 5.01829e-05, 6.07846e-05, 6.92281e-05, 7.58717e-05, 8.10701e-05, 8.51338e-05, 8.83117e-05, 9.08033e-05, 9.27639e-05, 9.43119e-05, 9.55382e-05, 9.65137e-05, 9.72921e-05, 9.7915e-05, 9.84125e-05, 
			5.35682e-05, 6.67747e-05, 7.75856e-05, 8.62472e-05, 9.31167e-05, 9.85359e-05, 0.000102802, 0.000106164, 0.000108817, 0.000110915, 0.00011258, 0.000113906, 0.000114963, 0.000115809, 0.00011649, 0.000117032, 
			7.03158e-05, 8.35568e-05, 9.44272e-05, 0.000103192, 0.000110185, 0.00011573, 0.00012012, 0.000123593, 0.000126346, 0.000128532, 0.000130273, 0.000131663, 0.000132771, 0.000133663, 0.00013438, 0.000134958, 
			8.72223e-05, 0.00010044, 0.00011134, 0.000120166, 0.000127234, 0.000132863, 0.000137334, 0.000140883, 0.000143705, 0.000145951, 0.000147743, 0.000149178, 0.000150323, 0.000151246, 0.00015199, 0.000152589, 
			0.000104213, 0.000117375, 0.000128282, 0.000137143, 0.000144261, 0.000149946, 0.000154465, 0.000158067, 0.000160935, 0.000163219, 0.000165048, 0.000166513, 0.000167688, 0.000168634, 0.000169396, 0.000170011
		)
}

CapTable	"metal1_C_TOP_GP_12NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			8.35995e-06, 1.13301e-05, 1.39752e-05, 1.62391e-05, 1.81179e-05, 1.96463e-05, 2.0876e-05, 2.18602e-05, 2.26453e-05, 2.32708e-05, 2.37707e-05, 2.41702e-05, 2.44905e-05, 2.47472e-05, 2.49536e-05, 2.51223e-05, 
			1.14168e-05, 1.44197e-05, 1.71364e-05, 1.94914e-05, 2.14643e-05, 2.30861e-05, 2.44031e-05, 2.54641e-05, 2.63162e-05, 2.70017e-05, 2.75511e-05, 2.79924e-05, 2.83476e-05, 2.86341e-05, 2.88638e-05, 2.90536e-05, 
			1.45242e-05, 1.75572e-05, 2.03228e-05, 2.2734e-05, 2.47692e-05, 2.64514e-05, 2.78232e-05, 2.89354e-05, 2.98332e-05, 3.05568e-05, 3.11398e-05, 3.16094e-05, 3.1992e-05, 3.22972e-05, 3.2544e-05, 3.27434e-05, 
			1.76787e-05, 2.07336e-05, 2.3537e-05, 2.59912e-05, 2.80687e-05, 2.97915e-05, 3.12042e-05, 3.23516e-05, 3.328e-05, 3.40314e-05, 3.46381e-05, 3.51256e-05, 3.55258e-05, 3.58451e-05, 3.61033e-05, 3.63122e-05, 
			2.08727e-05, 2.39466e-05, 2.67804e-05, 2.92641e-05, 3.13731e-05, 3.31258e-05, 3.45635e-05, 3.5736e-05, 3.66869e-05, 3.74615e-05, 3.80828e-05, 3.85858e-05, 3.89925e-05, 3.93215e-05, 3.95877e-05, 3.98031e-05
		)
}

CapTable	"metal1_C_LATERAL_12NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			0.000227644, 0.000118371, 7.67652e-05, 5.40018e-05, 3.95974e-05, 2.97706e-05, 2.27622e-05, 1.76171e-05, 1.37614e-05, 1.08273e-05, 8.5674e-06, 6.8096e-06, 5.4318e-06, 4.34472e-06, 3.4824e-06, 2.79516e-06, 
			0.00023583, 0.000124215, 8.1224e-05, 5.75454e-05, 4.2457e-05, 3.2095e-05, 2.46574e-05, 1.91638e-05, 1.50236e-05, 1.18566e-05, 9.40636e-06, 7.49284e-06, 5.98776e-06, 4.79666e-06, 3.84946e-06, 3.09298e-06, 
			0.00023988, 0.000127468, 8.3878e-05, 5.9732e-05, 4.4255e-05, 3.35794e-05, 2.5882e-05, 2.01724e-05, 1.58524e-05, 1.25367e-05, 9.96298e-06, 7.94796e-06, 6.35896e-06, 5.09924e-06, 4.09554e-06, 3.29286e-06, 
			0.000241992, 0.000129489, 8.5602e-05, 6.11742e-05, 4.54702e-05, 3.45922e-05, 2.67228e-05, 2.08684e-05, 1.6427e-05, 1.30096e-05, 1.03513e-05, 8.26626e-06, 6.6192e-06, 5.3114e-06, 4.26824e-06, 3.43316e-06, 
			0.000242778, 0.000130685, 8.67048e-05, 6.213e-05, 4.62796e-05, 3.52744e-05, 2.73046e-05, 2.13522e-05, 1.6828e-05, 1.33404e-05, 1.06239e-05, 8.48986e-06, 6.80242e-06, 5.46102e-06, 4.39012e-06, 3.5322e-06
		)
}

CapTable	"metal1_C_BOTTOM_GP_13NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			3.87311e-05, 5.20642e-05, 6.28966e-05, 7.15023e-05, 7.82812e-05, 8.3612e-05, 8.78171e-05, 9.11525e-05, 9.38166e-05, 9.59577e-05, 9.76961e-05, 9.91102e-05, 0.000100275, 0.000101239, 0.00010204, 0.000102711, 
			5.53315e-05, 6.87691e-05, 7.97307e-05, 8.85078e-05, 9.54867e-05, 0.000101033, 0.000105452, 0.000108995, 0.000111845, 0.000114158, 0.00011605, 0.000117601, 0.000118886, 0.000119956, 0.000120849, 0.000121602, 
			7.21831e-05, 8.55677e-05, 9.65293e-05, 0.000105373, 0.000112464, 0.00011814, 0.000122697, 0.000126376, 0.000129355, 0.00013179, 0.000133791, 0.000135443, 0.000136818, 0.000137962, 0.000138925, 0.000139738, 
			8.90963e-05, 0.000102395, 0.000113343, 0.000122226, 0.000129393, 0.000135158, 0.000139817, 0.000143598, 0.000146676, 0.000149203, 0.000151287, 0.000153015, 0.000154459, 0.000155664, 0.000156681, 0.000157539, 
			0.000106031, 0.000119223, 0.000130154, 0.00013906, 0.00014628, 0.000152115, 0.000156845, 0.000160704, 0.000163861, 0.000166462, 0.000168609, 0.000170397, 0.000171896, 0.000173148, 0.000174207, 0.000175104
		)
}

CapTable	"metal1_C_TOP_GP_13NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			5.46687e-06, 7.36525e-06, 9.0438e-06, 1.04767e-05, 1.16666e-05, 1.26412e-05, 1.34337e-05, 1.40767e-05, 1.46001e-05, 1.50278e-05, 1.53763e-05, 1.56676e-05, 1.59072e-05, 1.61061e-05, 1.62726e-05, 1.64106e-05, 
			7.37251e-06, 9.2625e-06, 1.09645e-05, 1.24394e-05, 1.36813e-05, 1.47116e-05, 1.55592e-05, 1.62524e-05, 1.68276e-05, 1.72996e-05, 1.76876e-05, 1.80145e-05, 1.82841e-05, 1.85104e-05, 1.87015e-05, 1.88594e-05, 
			9.27489e-06, 1.11591e-05, 1.28769e-05, 1.43784e-05, 1.56548e-05, 1.67225e-05, 1.76092e-05, 1.83398e-05, 1.89506e-05, 1.94546e-05, 1.9873e-05, 2.02233e-05, 2.05143e-05, 2.0764e-05, 2.09726e-05, 2.11462e-05, 
			1.11787e-05, 1.30605e-05, 1.47908e-05, 1.63138e-05, 1.76131e-05, 1.87134e-05, 1.96289e-05, 2.03882e-05, 2.10257e-05, 2.15533e-05, 2.19949e-05, 2.23661e-05, 2.26746e-05, 2.29406e-05, 2.31631e-05, 2.33517e-05, 
			1.30875e-05, 1.49692e-05, 1.67114e-05, 1.82527e-05, 1.95726e-05, 2.06956e-05, 2.16335e-05, 2.24157e-05, 2.30715e-05, 2.36162e-05, 2.40795e-05, 2.44662e-05, 2.47886e-05, 2.50677e-05, 2.5302e-05, 2.55004e-05
		)
}

CapTable	"metal1_C_LATERAL_13NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			0.000228698, 0.000119906, 7.87496e-05, 5.6363e-05, 4.22402e-05, 3.25968e-05, 2.56822e-05, 2.05548e-05, 1.66563e-05, 1.36335e-05, 1.12516e-05, 9.34924e-06, 7.81264e-06, 6.55914e-06, 5.52824e-06, 4.674e-06, 
			0.000237548, 0.000126478, 8.39818e-05, 6.07018e-05, 4.5898e-05, 3.57064e-05, 2.83376e-05, 2.28282e-05, 1.86055e-05, 1.53066e-05, 1.26889e-05, 1.05848e-05, 8.87564e-06, 7.474e-06, 6.31588e-06, 5.35252e-06, 
			0.000242342, 0.000130512, 8.74298e-05, 6.3678e-05, 4.84666e-05, 3.79318e-05, 3.02658e-05, 2.4498e-05, 2.00512e-05, 1.65576e-05, 1.3771e-05, 1.15208e-05, 9.6847e-06, 8.17356e-06, 6.92048e-06, 5.87526e-06, 
			0.000245246, 0.00013333, 8.99418e-05, 6.58858e-05, 5.04138e-05, 3.96368e-05, 3.1755e-05, 2.57966e-05, 2.11818e-05, 1.75409e-05, 1.46252e-05, 1.22623e-05, 1.03281e-05, 8.7315e-06, 7.40422e-06, 6.29428e-06, 
			0.000246826, 0.00013531, 9.1803e-05, 6.7565e-05, 5.19054e-05, 4.0956e-05, 3.29266e-05, 2.68234e-05, 2.208e-05, 1.83248e-05, 1.53088e-05, 1.28574e-05, 1.08462e-05, 9.18184e-06, 7.79566e-06, 6.63448e-06
		)
}

CapTable	"metal1_C_BOTTOM_GP_14NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			3.9651e-05, 5.32502e-05, 6.42897e-05, 7.30578e-05, 7.99624e-05, 8.53975e-05, 8.9692e-05, 9.31075e-05, 9.58451e-05, 9.80583e-05, 9.98643e-05, 0.000101349, 0.000102579, 0.000103609, 0.000104474, 0.000105209, 
			5.64456e-05, 7.01004e-05, 8.12323e-05, 9.01452e-05, 9.72343e-05, 0.000102875, 0.00010738, 0.000111001, 0.000113933, 0.000116325, 0.000118295, 0.000119927, 0.000121293, 0.000122439, 0.000123413, 0.000124239, 
			7.34331e-05, 8.69927e-05, 9.8095e-05, 0.000107051, 0.000114237, 0.00012, 0.00012464, 0.0001284, 0.000131467, 0.000133988, 0.000136078, 0.000137819, 0.000139285, 0.000140522, 0.000141577, 0.000142477, 
			9.04358e-05, 0.000103871, 0.000114933, 0.00012391, 0.000131156, 0.000137006, 0.000141746, 0.000145612, 0.000148782, 0.000151407, 0.000153587, 0.00015542, 0.000156963, 0.000158277, 0.000159395, 0.000160356, 
			0.000107418, 0.000120718, 0.000131735, 0.000140719, 0.000148009, 0.000153925, 0.000158739, 0.000162687, 0.00016594, 0.000168643, 0.000170901, 0.000172804, 0.000174415, 0.000175787, 0.000176962, 0.000177973
		)
}

CapTable	"metal1_C_TOP_GP_14NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			4.12498e-06, 5.54638e-06, 6.80208e-06, 7.87139e-06, 8.75882e-06, 9.48547e-06, 1.00772e-05, 1.05589e-05, 1.09524e-05, 1.12752e-05, 1.15418e-05, 1.17636e-05, 1.1949e-05, 1.21037e-05, 1.22372e-05, 1.23477e-05, 
			5.53538e-06, 6.94316e-06, 8.21051e-06, 9.30704e-06, 1.02297e-05, 1.09954e-05, 1.16268e-05, 1.21472e-05, 1.25768e-05, 1.29344e-05, 1.32308e-05, 1.34809e-05, 1.36885e-05, 1.38689e-05, 1.40181e-05, 1.41489e-05, 
			6.9349e-06, 8.33291e-06, 9.60504e-06, 1.07168e-05, 1.16624e-05, 1.24546e-05, 1.3114e-05, 1.36622e-05, 1.41189e-05, 1.45008e-05, 1.482e-05, 1.50918e-05, 1.53194e-05, 1.55167e-05, 1.5682e-05, 1.58259e-05, 
			8.32524e-06, 9.71672e-06, 1.09938e-05, 1.21182e-05, 1.3081e-05, 1.38933e-05, 1.45753e-05, 1.51437e-05, 1.56222e-05, 1.60204e-05, 1.63622e-05, 1.66464e-05, 1.68928e-05, 1.71002e-05, 1.72808e-05, 1.74358e-05, 
			9.71187e-06, 1.10977e-05, 1.23806e-05, 1.35156e-05, 1.44928e-05, 1.53212e-05, 1.60187e-05, 1.6605e-05, 1.71007e-05, 1.75165e-05, 1.78721e-05, 1.81713e-05, 1.84287e-05, 1.86487e-05, 1.88393e-05, 1.90035e-05
		)
}

CapTable	"metal1_C_LATERAL_14NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			0.000229028, 0.000120376, 7.93572e-05, 5.70928e-05, 4.30708e-05, 3.3504e-05, 2.66428e-05, 2.15476e-05, 1.76635e-05, 1.46395e-05, 1.22439e-05, 1.03179e-05, 8.74962e-06, 7.45834e-06, 6.38474e-06, 5.48466e-06, 
			0.000238098, 0.000127199, 8.48642e-05, 6.17258e-05, 4.7036e-05, 3.69296e-05, 2.96178e-05, 2.41404e-05, 1.99282e-05, 1.66215e-05, 1.39814e-05, 1.18431e-05, 1.00902e-05, 8.63782e-06, 7.42374e-06, 6.40058e-06, 
			0.000243152, 0.000131515, 8.8613e-05, 6.50154e-05, 4.99256e-05, 3.94786e-05, 3.18686e-05, 2.61284e-05, 2.16848e-05, 1.8174e-05, 1.5354e-05, 1.30571e-05, 1.11644e-05, 9.58882e-06, 8.26596e-06, 7.14678e-06, 
			0.000246348, 0.000134642, 9.1446e-05, 6.75518e-05, 5.22044e-05, 4.15138e-05, 3.36832e-05, 2.77446e-05, 2.31232e-05, 1.94536e-05, 1.64919e-05, 1.40691e-05, 1.20643e-05, 1.03892e-05, 8.9778e-06, 7.77988e-06, 
			0.000248244, 0.00013695, 9.36434e-05, 6.95702e-05, 5.40338e-05, 4.3166e-05, 3.51798e-05, 2.90864e-05, 2.43244e-05, 2.0528e-05, 1.74522e-05, 1.4927e-05, 1.28305e-05, 1.10734e-05, 9.58862e-06, 8.3254e-06
		)
}

CapTable	"metal1_C_BOTTOM_GP_15NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			4.02123e-05, 5.39393e-05, 6.50706e-05, 7.39e-05, 8.08458e-05, 8.63103e-05, 9.06268e-05, 9.40608e-05, 9.68148e-05, 9.90436e-05, 0.000100864, 0.000102365, 0.000103614, 0.000104661, 0.000105545, 0.000106297, 
			5.71463e-05, 7.0907e-05, 8.21123e-05, 9.10718e-05, 9.8193e-05, 0.000103854, 0.000108375, 0.000112009, 0.000114956, 0.000117364, 0.000119349, 0.000121, 0.000122384, 0.000123551, 0.000124545, 0.000125395, 
			7.42493e-05, 8.78927e-05, 9.90491e-05, 0.00010804, 0.000115247, 0.000121023, 0.000125674, 0.000129444, 0.000132524, 0.00013506, 0.000137166, 0.000138928, 0.000140415, 0.000141677, 0.000142759, 0.000143684, 
			9.13472e-05, 0.000104846, 0.000115946, 0.000124944, 0.000132201, 0.000138058, 0.000142806, 0.000146679, 0.000149862, 0.000152499, 0.000154701, 0.000156552, 0.000158122, 0.00015946, 0.00016061, 0.000161606, 
			0.000108401, 0.000121748, 0.000132791, 0.000141785, 0.000149078, 0.000154996, 0.000159812, 0.000163767, 0.000167033, 0.000169752, 0.000172032, 0.000173961, 0.000175597, 0.000177003, 0.00017821, 0.000179258
		)
}

CapTable	"metal1_C_TOP_GP_15NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			3.29573e-06, 4.42631e-06, 5.41956e-06, 6.26501e-06, 6.96597e-06, 7.53892e-06, 8.00478e-06, 8.38441e-06, 8.69455e-06, 8.94945e-06, 9.1604e-06, 9.33602e-06, 9.48328e-06, 9.60757e-06, 9.71314e-06, 9.80342e-06, 
			4.41674e-06, 5.52924e-06, 6.52912e-06, 7.39238e-06, 8.11837e-06, 8.72044e-06, 9.21697e-06, 9.62629e-06, 9.96463e-06, 1.02451e-05, 1.04798e-05, 1.06771e-05, 1.08442e-05, 1.09861e-05, 1.11077e-05, 1.1212e-05, 
			5.52372e-06, 6.62591e-06, 7.6259e-06, 8.49801e-06, 9.23926e-06, 9.86031e-06, 1.03774e-05, 1.08075e-05, 1.11661e-05, 1.14664e-05, 1.1719e-05, 1.19329e-05, 1.2115e-05, 1.22708e-05, 1.24024e-05, 1.25208e-05, 
			6.61775e-06, 7.71059e-06, 8.71234e-06, 9.59306e-06, 1.03466e-05, 1.0982e-05, 1.15142e-05, 1.19603e-05, 1.23349e-05, 1.26507e-05, 1.29175e-05, 1.31451e-05, 1.33393e-05, 1.35067e-05, 1.3651e-05, 1.37736e-05, 
			7.70801e-06, 8.79249e-06, 9.79605e-06, 1.06831e-05, 1.1446e-05, 1.20927e-05, 1.26375e-05, 1.30964e-05, 1.34838e-05, 1.38118e-05, 1.40906e-05, 1.43262e-05, 1.45339e-05, 1.47088e-05, 1.48643e-05, 1.49955e-05
		)
}

CapTable	"metal1_C_LATERAL_15NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			0.000229242, 0.000120703, 7.97968e-05, 5.7636e-05, 4.37042e-05, 3.42128e-05, 2.74124e-05, 2.23648e-05, 1.85167e-05, 1.55189e-05, 1.31414e-05, 1.12265e-05, 9.66352e-06, 8.37286e-06, 7.29608e-06, 6.38954e-06, 
			0.000238424, 0.000127653, 8.54446e-05, 6.24228e-05, 4.78346e-05, 3.7813e-05, 3.05696e-05, 2.51452e-05, 2.0973e-05, 1.76951e-05, 1.50741e-05, 1.29469e-05, 1.11982e-05, 9.74466e-06, 8.52464e-06, 7.49172e-06, 
			0.000243606, 0.00013211, 8.9347e-05, 6.58764e-05, 5.0897e-05, 4.05414e-05, 3.30046e-05, 2.73212e-05, 2.29196e-05, 1.94382e-05, 1.66368e-05, 1.43497e-05, 1.2459e-05, 1.08793e-05, 9.54698e-06, 8.414e-06, 
			0.000246944, 0.000135391, 9.23444e-05, 6.85854e-05, 5.33546e-05, 4.27602e-05, 3.50058e-05, 2.91254e-05, 2.45464e-05, 2.09056e-05, 1.79608e-05, 1.55451e-05, 1.35391e-05, 1.1856e-05, 1.04308e-05, 9.2147e-06, 
			0.000248996, 0.000137864, 9.47142e-05, 7.07824e-05, 5.53668e-05, 4.45978e-05, 3.6689e-05, 3.06538e-05, 2.59332e-05, 2.21632e-05, 1.91015e-05, 1.65798e-05, 1.4478e-05, 1.27084e-05, 1.1205e-05, 9.91822e-06
		)
}

CapTable	"metal1_C_BOTTOM_GP_16NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			4.2982e-05, 5.75206e-05, 6.93142e-05, 7.86742e-05, 8.60386e-05, 9.18288e-05, 9.64036e-05, 0.000100043, 0.000102963, 0.00010533, 0.000107265, 0.000108865, 0.000110199, 0.000111321, 0.000112273, 0.000113087, 
			6.0749e-05, 7.52534e-05, 8.70814e-05, 9.65458e-05, 0.000104067, 0.000110047, 0.000114822, 0.000118663, 0.000121777, 0.000124327, 0.000126432, 0.000128188, 0.000129665, 0.000130915, 0.000131985, 0.000132906, 
			7.8618e-05, 9.29502e-05, 0.000104687, 0.000114151, 0.000121737, 0.000127818, 0.000132715, 0.000136687, 0.000139935, 0.000142613, 0.000144843, 0.000146714, 0.000148297, 0.000149649, 0.000150811, 0.000151817, 
			9.6421e-05, 0.00011056, 0.000122201, 0.000131643, 0.00013926, 0.000145406, 0.000150391, 0.000154459, 0.000157808, 0.000160587, 0.000162913, 0.000164878, 0.000166549, 0.000167983, 0.00016922, 0.000170297, 
			0.000114131, 0.000128069, 0.000139619, 0.00014903, 0.000156663, 0.000162857, 0.000167899, 0.000172044, 0.000175473, 0.000178333, 0.000180739, 0.000182781, 0.000184526, 0.000186029, 0.000187332, 0.000188469
		)
}

CapTable	"metal1_C_LATERAL_16NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			0.000229664, 0.000121348, 8.06618e-05, 5.87048e-05, 4.49524e-05, 3.56142e-05, 2.89414e-05, 2.3999e-05, 2.02358e-05, 1.73063e-05, 1.49825e-05, 1.31093e-05, 1.15778e-05, 1.03098e-05, 9.2482e-06, 8.3504e-06, 
			0.000239062, 0.000128544, 8.65836e-05, 6.37922e-05, 4.94082e-05, 3.95618e-05, 3.24656e-05, 2.71628e-05, 2.30896e-05, 1.9891e-05, 1.73327e-05, 1.52539e-05, 1.35415e-05, 1.21137e-05, 1.09105e-05, 9.88674e-06, 
			0.000244494, 0.000133277, 9.0787e-05, 6.75702e-05, 5.28162e-05, 4.26544e-05, 3.52806e-05, 2.97318e-05, 2.544e-05, 2.20466e-05, 1.93143e-05, 1.70801e-05, 1.52287e-05, 1.36763e-05, 1.23611e-05, 1.12364e-05, 
			0.00024812, 0.000136863, 9.41122e-05, 7.06276e-05, 5.564e-05, 4.52548e-05, 3.76764e-05, 3.19412e-05, 2.74802e-05, 2.39334e-05, 2.10624e-05, 1.87025e-05, 1.67371e-05, 1.50815e-05, 1.36726e-05, 1.24628e-05, 
			0.000250472, 0.000139663, 9.68304e-05, 7.31916e-05, 5.80352e-05, 4.74882e-05, 3.97656e-05, 3.3884e-05, 2.92874e-05, 2.5616e-05, 2.26306e-05, 2.0166e-05, 1.8105e-05, 1.63618e-05, 1.48729e-05, 1.35898e-05
		)
}

CapTable	"metal2_C_BOTTOM_GP_31NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			9.6762e-06, 1.29151e-05, 1.59077e-05, 1.85942e-05, 2.09312e-05, 2.29359e-05, 2.46078e-05, 2.60086e-05, 2.7157e-05, 2.81043e-05, 2.88788e-05, 2.95102e-05, 3.00262e-05, 3.03927e-05, 3.07472e-05, 3.10407e-05, 
			1.29634e-05, 1.62372e-05, 1.93188e-05, 2.20956e-05, 2.45312e-05, 2.66345e-05, 2.84105e-05, 2.98878e-05, 3.11158e-05, 3.2127e-05, 3.29575e-05, 3.35619e-05, 3.41323e-05, 3.46063e-05, 3.50411e-05, 3.53462e-05, 
			1.63333e-05, 1.96362e-05, 2.27603e-05, 2.55901e-05, 2.80971e-05, 3.02514e-05, 3.20792e-05, 3.3611e-05, 3.48846e-05, 3.59373e-05, 3.67172e-05, 3.74482e-05, 3.80578e-05, 3.85961e-05, 3.89883e-05, 3.93096e-05, 
			1.97536e-05, 2.30664e-05, 2.62172e-05, 2.90929e-05, 3.16294e-05, 3.38227e-05, 3.56862e-05, 3.72494e-05, 3.84482e-05, 3.95459e-05, 4.04619e-05, 4.12775e-05, 4.18801e-05, 4.23748e-05, 4.27807e-05, 4.31149e-05, 
			2.31931e-05, 2.65234e-05, 2.96843e-05, 3.25782e-05, 3.51406e-05, 3.73578e-05, 3.9244e-05, 4.07224e-05, 4.20686e-05, 4.31976e-05, 4.41809e-05, 4.49288e-05, 4.55444e-05, 4.60503e-05, 4.64679e-05, 4.68095e-05
		)
}

CapTable	"metal2_C_TOP_GP_31NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.64528e-05, 3.61123e-05, 4.43701e-05, 5.12698e-05, 5.69606e-05, 6.16105e-05, 6.5398e-05, 6.8462e-05, 7.09414e-05, 7.29377e-05, 7.45504e-05, 7.58515e-05, 7.69022e-05, 7.78122e-05, 7.84879e-05, 7.90328e-05, 
			3.74516e-05, 4.73664e-05, 5.58426e-05, 6.2944e-05, 6.88146e-05, 7.36259e-05, 7.75491e-05, 8.0739e-05, 8.33235e-05, 8.54172e-05, 8.7111e-05, 8.8567e-05, 8.96628e-05, 9.0544e-05, 9.1207e-05, 9.18036e-05, 
			4.89157e-05, 5.89136e-05, 6.74687e-05, 7.46489e-05, 8.05933e-05, 8.54808e-05, 8.9474e-05, 9.27278e-05, 9.53714e-05, 9.75162e-05, 9.93532e-05, 0.000100744, 0.000101862, 0.000102727, 0.000103486, 0.000104106, 
			6.05714e-05, 7.0588e-05, 7.91718e-05, 8.63781e-05, 9.23598e-05, 9.72819e-05, 0.000101314, 0.000104604, 0.000107395, 0.000109552, 0.000111293, 0.000112639, 0.000113809, 0.000114761, 0.000115539, 0.000116174, 
			7.23169e-05, 8.23018e-05, 9.08893e-05, 9.8105e-05, 0.000104098, 0.000109034, 0.000113076, 0.000116503, 0.000119173, 0.000121332, 0.000123031, 0.000124484, 0.000125668, 0.000126634, 0.000127423, 0.000128071
		)
}

CapTable	"metal2_C_LATERAL_31NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.00024286, 0.000129889, 8.64202e-05, 6.2308e-05, 4.67672e-05, 3.59306e-05, 2.80362e-05, 2.21094e-05, 1.75826e-05, 1.4075e-05, 1.13308e-05, 9.16726e-06, 7.45064e-06, 6.07612e-06, 4.97994e-06, 4.09746e-06, 
			0.000251264, 0.00013587, 9.09246e-05, 6.58694e-05, 4.96562e-05, 3.83126e-05, 3.00174e-05, 2.37792e-05, 1.89947e-05, 1.52778e-05, 1.23615e-05, 1.00481e-05, 8.21494e-06, 6.7487e-06, 5.57494e-06, 4.62316e-06, 
			0.000255106, 0.000139009, 9.3478e-05, 6.7989e-05, 5.14266e-05, 3.98208e-05, 3.13088e-05, 2.48902e-05, 1.9958e-05, 1.61175e-05, 1.30886e-05, 1.06968e-05, 8.79122e-06, 7.26692e-06, 6.03472e-06, 5.0384e-06, 
			0.000256886, 0.000140857, 9.5101e-05, 6.9385e-05, 5.26488e-05, 4.08874e-05, 3.22458e-05, 2.57176e-05, 2.06828e-05, 1.67641e-05, 1.36781e-05, 1.12345e-05, 9.2759e-06, 7.70318e-06, 6.43428e-06, 5.40606e-06, 
			0.000257372, 0.000141912, 9.61494e-05, 7.03498e-05, 5.35184e-05, 4.16762e-05, 3.2971e-05, 2.63646e-05, 2.12824e-05, 1.73154e-05, 1.41901e-05, 1.16992e-05, 9.70656e-06, 8.10372e-06, 6.8081e-06, 5.75554e-06
		)
}

CapTable	"metal2_C_BOTTOM_GP_32NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.09815e-05, 1.43557e-05, 1.73865e-05, 2.01436e-05, 2.26604e-05, 2.49505e-05, 2.70292e-05, 2.89052e-05, 3.05922e-05, 3.20972e-05, 3.3439e-05, 3.46259e-05, 3.5676e-05, 3.6598e-05, 3.74096e-05, 3.81209e-05, 
			1.40526e-05, 1.73978e-05, 2.05041e-05, 2.33842e-05, 2.60395e-05, 2.84712e-05, 3.06892e-05, 3.26936e-05, 3.45018e-05, 3.6118e-05, 3.75614e-05, 3.88396e-05, 3.9972e-05, 4.09713e-05, 4.18472e-05, 4.26169e-05, 
			1.72601e-05, 2.06254e-05, 2.37979e-05, 2.67642e-05, 2.95155e-05, 3.20469e-05, 3.43545e-05, 3.64509e-05, 3.83379e-05, 4.00318e-05, 4.15398e-05, 4.28823e-05, 4.40722e-05, 4.51179e-05, 4.60406e-05, 4.68494e-05, 
			2.06046e-05, 2.40032e-05, 2.72312e-05, 3.02678e-05, 3.30877e-05, 3.56912e-05, 3.80656e-05, 4.02266e-05, 4.21703e-05, 4.39179e-05, 4.54795e-05, 4.68645e-05, 4.80931e-05, 4.91792e-05, 5.01314e-05, 5.09663e-05, 
			2.40758e-05, 2.7503e-05, 3.07839e-05, 3.38719e-05, 3.67503e-05, 3.94036e-05, 4.18324e-05, 4.40359e-05, 4.60279e-05, 4.78166e-05, 4.94106e-05, 5.08317e-05, 5.20906e-05, 5.31989e-05, 5.41483e-05, 5.50351e-05
		)
}

CapTable	"metal2_C_TOP_GP_32NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.19225e-05, 1.55193e-05, 1.87387e-05, 2.16638e-05, 2.43306e-05, 2.67597e-05, 2.89613e-05, 3.09473e-05, 3.27283e-05, 3.43209e-05, 3.5734e-05, 3.69854e-05, 3.80884e-05, 3.90589e-05, 3.99077e-05, 4.06481e-05, 
			1.52904e-05, 1.8877e-05, 2.21973e-05, 2.5266e-05, 2.80911e-05, 3.06782e-05, 3.30288e-05, 3.51574e-05, 3.70662e-05, 3.87754e-05, 4.02932e-05, 4.16408e-05, 4.28279e-05, 4.38699e-05, 4.47854e-05, 4.55837e-05, 
			1.87789e-05, 2.2407e-05, 2.58121e-05, 2.89864e-05, 3.19199e-05, 3.46103e-05, 3.70631e-05, 3.92801e-05, 4.12743e-05, 4.30582e-05, 4.46466e-05, 4.60525e-05, 4.72908e-05, 4.83831e-05, 4.93381e-05, 5.01735e-05, 
			2.23974e-05, 2.60734e-05, 2.95512e-05, 3.2801e-05, 3.58151e-05, 3.85782e-05, 4.10996e-05, 4.33788e-05, 4.54331e-05, 4.72675e-05, 4.88987e-05, 5.03465e-05, 5.16221e-05, 5.27427e-05, 5.37289e-05, 5.45896e-05, 
			2.61352e-05, 2.985e-05, 3.33817e-05, 3.66921e-05, 3.97585e-05, 4.2576e-05, 4.51434e-05, 4.74693e-05, 4.95597e-05, 5.1427e-05, 5.30926e-05, 5.45657e-05, 5.58658e-05, 5.70109e-05, 5.8045e-05, 5.8887e-05
		)
}

CapTable	"metal2_C_LATERAL_32NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000252238, 0.000141979, 0.000100207, 7.69506e-05, 6.1615e-05, 5.05158e-05, 4.20184e-05, 3.52772e-05, 2.98006e-05, 2.52808e-05, 2.15082e-05, 1.83361e-05, 1.56514e-05, 1.3372e-05, 1.14293e-05, 9.77088e-06, 
			0.000264484, 0.000151143, 0.000107329, 8.26668e-05, 6.62914e-05, 5.43916e-05, 4.5261e-05, 3.8006e-05, 3.2107e-05, 2.72356e-05, 2.31664e-05, 1.97426e-05, 1.68439e-05, 1.43809e-05, 1.22821e-05, 1.04893e-05, 
			0.00027125, 0.000156556, 0.000111661, 8.61904e-05, 6.91876e-05, 5.67968e-05, 4.72714e-05, 3.9694e-05, 3.35288e-05, 2.8432e-05, 2.41746e-05, 2.05892e-05, 1.7554e-05, 1.4974e-05, 1.27743e-05, 1.08951e-05, 
			0.000275074, 0.000159924, 0.000114428, 8.84542e-05, 7.10602e-05, 5.83516e-05, 4.85668e-05, 4.07746e-05, 3.44296e-05, 2.91826e-05, 2.47968e-05, 2.1103e-05, 1.79748e-05, 1.53151e-05, 1.30467e-05, 1.11091e-05, 
			0.000276876, 0.00016193, 0.000116145, 8.9882e-05, 7.22372e-05, 5.93254e-05, 4.93752e-05, 4.14398e-05, 3.49734e-05, 2.96244e-05, 2.51518e-05, 2.13836e-05, 1.81916e-05, 1.54772e-05, 1.31597e-05, 1.11849e-05
		)
}

CapTable	"metal2_C_BOTTOM_GP_33NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.19218e-05, 1.54361e-05, 1.85155e-05, 2.12785e-05, 2.37898e-05, 2.60856e-05, 2.81898e-05, 3.01195e-05, 3.18865e-05, 3.35028e-05, 3.49781e-05, 3.63241e-05, 3.75447e-05, 3.86509e-05, 3.96561e-05, 4.05646e-05, 
			1.49252e-05, 1.83112e-05, 2.1404e-05, 2.42475e-05, 2.68699e-05, 2.9292e-05, 3.15269e-05, 3.35851e-05, 3.54805e-05, 3.72178e-05, 3.88061e-05, 4.02585e-05, 4.15781e-05, 4.27804e-05, 4.38675e-05, 4.48549e-05, 
			1.80088e-05, 2.13462e-05, 2.44592e-05, 2.73627e-05, 3.00657e-05, 3.25761e-05, 3.49028e-05, 3.7053e-05, 3.90376e-05, 4.08584e-05, 4.25259e-05, 4.40545e-05, 4.54479e-05, 4.6712e-05, 4.78629e-05, 4.89012e-05, 
			2.11989e-05, 2.45188e-05, 2.76595e-05, 3.06128e-05, 3.33762e-05, 3.59568e-05, 3.83539e-05, 4.05718e-05, 4.26223e-05, 4.4506e-05, 4.62376e-05, 4.78178e-05, 4.92635e-05, 5.05802e-05, 5.17716e-05, 5.28543e-05, 
			2.44994e-05, 2.78218e-05, 3.09912e-05, 3.39863e-05, 3.6802e-05, 3.94371e-05, 4.18853e-05, 4.41553e-05, 4.62575e-05, 4.81932e-05, 4.99663e-05, 5.15938e-05, 5.30735e-05, 5.44262e-05, 5.56548e-05, 5.67683e-05
		)
}

CapTable	"metal2_C_TOP_GP_33NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			8.33524e-06, 1.06419e-05, 1.26781e-05, 1.45199e-05, 1.62034e-05, 1.77519e-05, 1.91781e-05, 2.04912e-05, 2.16989e-05, 2.28063e-05, 2.38193e-05, 2.4742e-05, 2.55843e-05, 2.63502e-05, 2.70412e-05, 2.76661e-05, 
			1.03978e-05, 1.26289e-05, 1.46838e-05, 1.65883e-05, 1.83573e-05, 1.99998e-05, 2.15235e-05, 2.29337e-05, 2.42325e-05, 2.54273e-05, 2.65241e-05, 2.75246e-05, 2.84396e-05, 2.92686e-05, 3.00229e-05, 3.07034e-05, 
			1.24632e-05, 1.46772e-05, 1.67586e-05, 1.87137e-05, 2.05463e-05, 2.22587e-05, 2.38528e-05, 2.53308e-05, 2.66948e-05, 2.79538e-05, 2.91101e-05, 3.01651e-05, 3.11275e-05, 3.20057e-05, 3.28001e-05, 3.35236e-05, 
			1.45621e-05, 1.67808e-05, 1.88925e-05, 2.08932e-05, 2.27784e-05, 2.45426e-05, 2.61893e-05, 2.77208e-05, 2.91349e-05, 3.04416e-05, 3.16386e-05, 3.27368e-05, 3.37371e-05, 3.4647e-05, 3.54773e-05, 3.62255e-05, 
			1.67066e-05, 1.89352e-05, 2.10788e-05, 2.31187e-05, 2.50448e-05, 2.68509e-05, 2.85411e-05, 3.01137e-05, 3.15663e-05, 3.29054e-05, 3.41387e-05, 3.5265e-05, 3.62979e-05, 3.72338e-05, 3.80844e-05, 3.88558e-05
		)
}

CapTable	"metal2_C_LATERAL_33NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.00025434, 0.000144825, 0.000103725, 8.10506e-05, 6.61928e-05, 5.54628e-05, 4.72296e-05, 4.06534e-05, 3.52542e-05, 3.07342e-05, 2.68968e-05, 2.36046e-05, 2.0759e-05, 1.82849e-05, 1.61236e-05, 1.42296e-05, 
			0.00026756, 0.000155002, 0.000111877, 8.77952e-05, 7.18818e-05, 6.03262e-05, 5.14266e-05, 4.43002e-05, 3.84386e-05, 3.35254e-05, 2.93498e-05, 2.57644e-05, 2.2663e-05, 1.99643e-05, 1.76067e-05, 1.55385e-05, 
			0.000275336, 0.000161421, 0.000117194, 9.22706e-05, 7.5689e-05, 6.35982e-05, 5.42584e-05, 4.67642e-05, 4.05906e-05, 3.54098e-05, 3.1003e-05, 2.72164e-05, 2.39386e-05, 2.1086e-05, 1.85913e-05, 1.64033e-05, 
			0.000280154, 0.000165747, 0.000120874, 9.5396e-05, 7.83714e-05, 6.59106e-05, 5.62608e-05, 4.85044e-05, 4.21068e-05, 3.67334e-05, 3.21588e-05, 2.82274e-05, 2.48214e-05, 2.18558e-05, 1.92621e-05, 1.69862e-05, 
			0.00028291, 0.000168632, 0.000123412, 9.7587e-05, 8.02552e-05, 6.7537e-05, 5.76736e-05, 4.9728e-05, 4.31672e-05, 3.76524e-05, 3.2956e-05, 2.89162e-05, 2.54166e-05, 2.2368e-05, 1.97008e-05, 1.73599e-05
		)
}

CapTable	"metal2_C_BOTTOM_GP_34NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.26632e-05, 1.63284e-05, 1.95026e-05, 2.23257e-05, 2.48765e-05, 2.72032e-05, 2.93361e-05, 3.1296e-05, 3.31006e-05, 3.47605e-05, 3.62878e-05, 3.76918e-05, 3.89811e-05, 4.0166e-05, 4.12501e-05, 4.22445e-05, 
			1.57123e-05, 1.92047e-05, 2.23633e-05, 2.52467e-05, 2.7896e-05, 3.03407e-05, 3.25991e-05, 3.4687e-05, 3.66166e-05, 3.83995e-05, 4.0046e-05, 4.15628e-05, 4.29586e-05, 4.42445e-05, 4.54227e-05, 4.6506e-05, 
			1.88122e-05, 2.22212e-05, 2.53784e-05, 2.83073e-05, 3.10269e-05, 3.35552e-05, 3.59019e-05, 3.80814e-05, 4.01014e-05, 4.19733e-05, 4.37062e-05, 4.53047e-05, 4.67807e-05, 4.81371e-05, 4.9387e-05, 5.05324e-05, 
			2.19872e-05, 2.53573e-05, 2.85273e-05, 3.14953e-05, 3.4272e-05, 3.68638e-05, 3.92799e-05, 4.15315e-05, 4.36229e-05, 4.55625e-05, 4.73618e-05, 4.90222e-05, 5.05582e-05, 5.19709e-05, 5.32748e-05, 5.44739e-05, 
			2.52623e-05, 2.8615e-05, 3.1803e-05, 3.48071e-05, 3.76295e-05, 4.02745e-05, 4.27462e-05, 4.50553e-05, 4.7201e-05, 4.91976e-05, 5.1046e-05, 5.27597e-05, 5.43392e-05, 5.58007e-05, 5.71419e-05, 5.83791e-05
		)
}

CapTable	"metal2_C_TOP_GP_34NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			6.62682e-06, 8.35508e-06, 9.87504e-06, 1.12455e-05, 1.24973e-05, 1.36482e-05, 1.47105e-05, 1.56927e-05, 1.65999e-05, 1.74392e-05, 1.82138e-05, 1.8928e-05, 1.95858e-05, 2.01891e-05, 2.07451e-05, 2.12538e-05, 
			8.19971e-06, 9.85124e-06, 1.13679e-05, 1.27727e-05, 1.40782e-05, 1.52917e-05, 1.64217e-05, 1.74731e-05, 1.84499e-05, 1.93558e-05, 2.01937e-05, 2.0969e-05, 2.16852e-05, 2.23432e-05, 2.29511e-05, 2.35077e-05, 
			9.74982e-06, 1.13746e-05, 1.28986e-05, 1.43315e-05, 1.56777e-05, 1.69382e-05, 1.81187e-05, 1.92208e-05, 2.02476e-05, 2.12023e-05, 2.2086e-05, 2.2907e-05, 2.36636e-05, 2.43643e-05, 2.50074e-05, 2.56012e-05, 
			1.13098e-05, 1.29283e-05, 1.44649e-05, 1.59251e-05, 1.73048e-05, 1.8604e-05, 1.98241e-05, 2.09645e-05, 2.20303e-05, 2.30233e-05, 2.39438e-05, 2.48002e-05, 2.559e-05, 2.63221e-05, 2.69936e-05, 2.76109e-05, 
			1.28887e-05, 1.45086e-05, 1.60634e-05, 1.75489e-05, 1.89587e-05, 2.02895e-05, 2.15414e-05, 2.27131e-05, 2.38116e-05, 2.48332e-05, 2.57862e-05, 2.66679e-05, 2.74866e-05, 2.82395e-05, 2.89381e-05, 2.95775e-05
		)
}

CapTable	"metal2_C_LATERAL_34NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.00025512, 0.000145899, 0.000105072, 8.26498e-05, 6.80192e-05, 5.74888e-05, 4.94248e-05, 4.29872e-05, 3.76954e-05, 3.32528e-05, 2.94644e-05, 2.61958e-05, 2.33502e-05, 2.0855e-05, 1.86555e-05, 1.67076e-05, 
			0.00026867, 0.000156424, 0.000113592, 8.97776e-05, 7.41028e-05, 6.27536e-05, 5.40262e-05, 4.70372e-05, 4.12792e-05, 3.64362e-05, 3.23002e-05, 2.87272e-05, 2.5613e-05, 2.28796e-05, 2.04678e-05, 1.83301e-05, 
			0.0002768, 0.000163209, 0.000119284, 9.46332e-05, 7.82914e-05, 6.64046e-05, 5.72314e-05, 4.98658e-05, 4.3785e-05, 3.86624e-05, 3.42818e-05, 3.0493e-05, 2.71874e-05, 2.4284e-05, 2.172e-05, 1.94463e-05, 
			0.00028199, 0.000167909, 0.000123338, 9.81296e-05, 8.13382e-05, 6.90722e-05, 5.9577e-05, 5.1936e-05, 4.56168e-05, 4.02862e-05, 3.57224e-05, 3.17716e-05, 2.83218e-05, 2.529e-05, 2.26106e-05, 2.02332e-05, 
			0.000285122, 0.000171166, 0.000126241, 0.000100675, 8.35638e-05, 7.1026e-05, 6.13014e-05, 5.34546e-05, 4.69554e-05, 4.14662e-05, 3.67628e-05, 3.26874e-05, 2.91272e-05, 2.59958e-05, 2.3228e-05, 2.07704e-05
		)
}

CapTable	"metal2_C_BOTTOM_GP_35NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.7209e-05, 2.18524e-05, 2.5791e-05, 2.92356e-05, 3.23044e-05, 3.5071e-05, 3.75847e-05, 3.98811e-05, 4.19867e-05, 4.39227e-05, 4.57062e-05, 4.73521e-05, 4.88723e-05, 5.02783e-05, 5.15793e-05, 5.27843e-05, 
			2.087e-05, 2.51917e-05, 2.90256e-05, 3.24676e-05, 3.5587e-05, 3.84312e-05, 4.10358e-05, 4.34304e-05, 4.56365e-05, 4.76728e-05, 4.95551e-05, 5.12972e-05, 5.29108e-05, 5.44067e-05, 5.57945e-05, 5.70824e-05, 
			2.4416e-05, 2.8546e-05, 3.22958e-05, 3.5718e-05, 3.88524e-05, 4.17326e-05, 4.4386e-05, 4.68364e-05, 4.9103e-05, 5.12009e-05, 5.3146e-05, 5.49504e-05, 5.66256e-05, 5.81818e-05, 5.96288e-05, 6.09745e-05, 
			2.7894e-05, 3.1886e-05, 3.55688e-05, 3.89646e-05, 4.2097e-05, 4.49922e-05, 4.76726e-05, 5.0156e-05, 5.24594e-05, 5.45978e-05, 5.65842e-05, 5.84312e-05, 6.01501e-05, 6.17497e-05, 6.32397e-05, 6.46279e-05, 
			3.1321e-05, 3.51986e-05, 3.88226e-05, 4.21862e-05, 4.53082e-05, 4.8205e-05, 5.08946e-05, 5.33948e-05, 5.57208e-05, 5.78846e-05, 5.9899e-05, 6.17754e-05, 6.35252e-05, 6.51558e-05, 6.66776e-05, 6.80982e-05
		)
}

CapTable	"metal2_C_LATERAL_35NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000256784, 0.000148099, 0.000107787, 8.58604e-05, 7.17056e-05, 6.16268e-05, 5.39866e-05, 4.79414e-05, 4.30086e-05, 3.88898e-05, 3.53898e-05, 3.23738e-05, 2.97464e-05, 2.74362e-05, 2.53902e-05, 2.35664e-05, 
			0.000271058, 0.000159385, 0.000117118, 9.38584e-05, 7.872e-05, 6.78828e-05, 5.96372e-05, 5.30956e-05, 4.77472e-05, 4.32746e-05, 3.94688e-05, 3.61856e-05, 3.33222e-05, 3.0802e-05, 2.85672e-05, 2.65732e-05, 
			0.00028, 0.000167027, 0.000123719, 9.9678e-05, 8.39276e-05, 7.26054e-05, 6.3963e-05, 5.70896e-05, 5.1459e-05, 4.67424e-05, 4.27232e-05, 3.92516e-05, 3.62198e-05, 3.35484e-05, 3.11764e-05, 2.90572e-05, 
			0.0002861, 0.000172689, 0.000128788, 0.000104242, 8.8093e-05, 7.64378e-05, 6.75154e-05, 6.0404e-05, 5.45676e-05, 4.96712e-05, 4.54928e-05, 4.18788e-05, 3.87186e-05, 3.59306e-05, 3.3452e-05, 3.12348e-05, 
			0.000290252, 0.000177021, 0.00013282, 0.000107968, 9.15448e-05, 7.9659e-05, 7.05434e-05, 6.32572e-05, 5.72672e-05, 5.22344e-05, 4.7934e-05, 4.42096e-05, 4.09488e-05, 3.80682e-05, 3.55044e-05, 3.32078e-05
		)
}

CapTable	"metal2_C_BOTTOM_GP_21NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.24564e-05, 1.7009e-05, 2.11773e-05, 2.48605e-05, 2.80088e-05, 3.06322e-05, 3.27815e-05, 3.45084e-05, 3.58861e-05, 3.69714e-05, 3.78269e-05, 3.84896e-05, 3.90066e-05, 3.94163e-05, 3.97273e-05, 3.99695e-05, 
			1.71577e-05, 2.18685e-05, 2.62077e-05, 3.00563e-05, 3.33472e-05, 3.60975e-05, 3.83463e-05, 4.01615e-05, 4.16076e-05, 4.27489e-05, 4.36465e-05, 4.4358e-05, 4.49067e-05, 4.53306e-05, 4.56615e-05, 4.5916e-05, 
			2.21197e-05, 2.69342e-05, 3.1369e-05, 3.5301e-05, 3.86687e-05, 4.14818e-05, 4.37825e-05, 4.56446e-05, 4.71182e-05, 4.82939e-05, 4.92263e-05, 4.99479e-05, 5.05105e-05, 5.09475e-05, 5.12865e-05, 5.15479e-05, 
			2.72445e-05, 3.21163e-05, 3.66102e-05, 4.0589e-05, 4.3997e-05, 4.68408e-05, 4.9163e-05, 5.10464e-05, 5.25615e-05, 5.37516e-05, 5.46871e-05, 5.54192e-05, 5.59886e-05, 5.64325e-05, 5.6773e-05, 5.7037e-05, 
			3.24667e-05, 3.7369e-05, 4.18965e-05, 4.58986e-05, 4.93302e-05, 5.21784e-05, 5.4526e-05, 5.64316e-05, 5.79437e-05, 5.91406e-05, 6.00826e-05, 6.08185e-05, 6.13917e-05, 6.18352e-05, 6.21778e-05, 6.24425e-05
		)
}

CapTable	"metal2_C_TOP_GP_21NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.59306e-05, 3.53338e-05, 4.34689e-05, 5.03167e-05, 5.59626e-05, 6.05468e-05, 6.42211e-05, 6.71403e-05, 6.94409e-05, 7.12429e-05, 7.26466e-05, 7.37453e-05, 7.4597e-05, 7.52468e-05, 7.57574e-05, 7.61527e-05, 
			3.70053e-05, 4.67306e-05, 5.51271e-05, 6.21961e-05, 6.8034e-05, 7.27809e-05, 7.65923e-05, 7.96242e-05, 8.20172e-05, 8.38997e-05, 8.53682e-05, 8.65e-05, 8.73892e-05, 8.8081e-05, 8.86137e-05, 8.90283e-05, 
			4.85953e-05, 5.84418e-05, 6.69394e-05, 7.40984e-05, 8.00189e-05, 8.48358e-05, 8.87105e-05, 9.17912e-05, 9.42395e-05, 9.61518e-05, 9.76367e-05, 9.88046e-05, 9.97128e-05, 0.000100418, 0.000100965, 0.00010139, 
			6.04115e-05, 7.02923e-05, 7.88262e-05, 8.60234e-05, 9.19776e-05, 9.68272e-05, 0.000100741, 0.000103849, 0.000106291, 0.000108225, 0.000109738, 0.000110918, 0.000111837, 0.00011255, 0.000113108, 0.000113538, 
			7.23333e-05, 8.21932e-05, 9.07315e-05, 9.79396e-05, 0.000103902, 0.000108779, 0.000112685, 0.00011579, 0.00011826, 0.000120202, 0.000121722, 0.000122908, 0.000123832, 0.000124552, 0.000125116, 0.000125553
		)
}

CapTable	"metal2_C_LATERAL_21NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000241138, 0.000127537, 8.35098e-05, 5.89648e-05, 4.31396e-05, 3.2174e-05, 2.42694e-05, 1.84443e-05, 1.409e-05, 1.08077e-05, 8.3185e-06, 6.42206e-06, 4.97336e-06, 3.86592e-06, 3.01526e-06, 2.36182e-06, 
			0.000248564, 0.00013251, 8.70232e-05, 6.15646e-05, 4.51128e-05, 3.36916e-05, 2.54514e-05, 1.93683e-05, 1.48162e-05, 1.13794e-05, 8.77032e-06, 6.78302e-06, 5.26212e-06, 4.0964e-06, 3.20282e-06, 2.51568e-06, 
			0.0002514, 0.000134664, 8.86436e-05, 6.28136e-05, 4.60794e-05, 3.44534e-05, 2.6054e-05, 1.98492e-05, 1.52003e-05, 1.16893e-05, 9.02296e-06, 6.98752e-06, 5.4307e-06, 4.23752e-06, 3.3215e-06, 2.6171e-06, 
			0.000252182, 0.000135588, 8.94126e-05, 6.34276e-05, 4.65814e-05, 3.4861e-05, 2.6385e-05, 2.01196e-05, 1.54265e-05, 1.18764e-05, 9.17788e-06, 7.11878e-06, 5.54336e-06, 4.33546e-06, 3.40702e-06, 2.69298e-06, 
			0.000251736, 0.000135805, 8.9691e-05, 6.36878e-05, 4.68058e-05, 3.50546e-05, 2.6562e-05, 2.02734e-05, 1.55563e-05, 1.19894e-05, 9.27742e-06, 7.20752e-06, 5.62326e-06, 4.40778e-06, 3.47216e-06, 2.75048e-06
		)
}

CapTable	"metal2_C_BOTTOM_GP_22NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.40361e-05, 1.85264e-05, 2.25902e-05, 2.62778e-05, 2.96015e-05, 3.2574e-05, 3.52105e-05, 3.75289e-05, 3.95539e-05, 4.1314e-05, 4.28309e-05, 4.41367e-05, 4.52516e-05, 4.62048e-05, 4.70139e-05, 4.77021e-05, 
			1.83936e-05, 2.29651e-05, 2.71978e-05, 3.10791e-05, 3.45934e-05, 3.77464e-05, 4.05489e-05, 4.30147e-05, 4.51709e-05, 4.70447e-05, 4.86611e-05, 5.00526e-05, 5.12439e-05, 5.2259e-05, 5.3123e-05, 5.38561e-05, 
			2.302e-05, 2.76813e-05, 3.20309e-05, 3.6035e-05, 3.96692e-05, 4.29319e-05, 4.5832e-05, 4.83857e-05, 5.06202e-05, 5.25595e-05, 5.42351e-05, 5.56765e-05, 5.69107e-05, 5.79634e-05, 5.88563e-05, 5.96204e-05, 
			2.78624e-05, 3.2593e-05, 3.70264e-05, 4.11132e-05, 4.48248e-05, 4.81567e-05, 5.11194e-05, 5.37266e-05, 5.60094e-05, 5.79923e-05, 5.97038e-05, 6.11759e-05, 6.24357e-05, 6.34885e-05, 6.4427e-05, 6.52008e-05, 
			3.28674e-05, 3.76474e-05, 4.21386e-05, 4.62799e-05, 5.00422e-05, 5.34198e-05, 5.64187e-05, 5.90629e-05, 6.13751e-05, 6.33834e-05, 6.51183e-05, 6.66057e-05, 6.78873e-05, 6.89742e-05, 6.98977e-05, 7.06799e-05
		)
}

CapTable	"metal2_C_TOP_GP_22NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.11189e-05, 1.45632e-05, 1.76758e-05, 2.05088e-05, 2.30763e-05, 2.53856e-05, 2.74421e-05, 2.92598e-05, 3.08533e-05, 3.22384e-05, 3.34386e-05, 3.44702e-05, 3.53572e-05, 3.61132e-05, 3.67586e-05, 3.73055e-05, 
			1.44864e-05, 1.79593e-05, 2.11856e-05, 2.41609e-05, 2.68758e-05, 2.93236e-05, 3.15071e-05, 3.34405e-05, 3.51357e-05, 3.66115e-05, 3.78923e-05, 3.89931e-05, 3.99376e-05, 4.07467e-05, 4.14351e-05, 4.20215e-05, 
			1.8001e-05, 2.15301e-05, 2.48411e-05, 2.79078e-05, 3.07118e-05, 3.32429e-05, 3.55026e-05, 3.75025e-05, 3.9256e-05, 4.07865e-05, 4.21113e-05, 4.3253e-05, 4.42319e-05, 4.50697e-05, 4.57873e-05, 4.63903e-05, 
			2.16546e-05, 2.52326e-05, 2.86026e-05, 3.1729e-05, 3.45896e-05, 3.71713e-05, 3.94764e-05, 4.15184e-05, 4.33082e-05, 4.48671e-05, 4.622e-05, 4.73848e-05, 4.83859e-05, 4.92665e-05, 4.99699e-05, 5.05936e-05, 
			2.54196e-05, 2.90272e-05, 3.24374e-05, 3.56027e-05, 3.84968e-05, 4.1108e-05, 4.34415e-05, 4.55055e-05, 4.73163e-05, 4.88936e-05, 5.02609e-05, 5.14437e-05, 5.24507e-05, 5.33194e-05, 5.40614e-05, 5.46941e-05
		)
}

CapTable	"metal2_C_LATERAL_22NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000250504, 0.000139689, 9.7453e-05, 7.38484e-05, 5.82882e-05, 4.70814e-05, 3.85824e-05, 3.1927e-05, 2.66074e-05, 2.2297e-05, 1.8773e-05, 1.58721e-05, 1.34738e-05, 1.14841e-05, 9.8296e-06, 8.45104e-06, 
			0.00026192, 0.000148026, 0.000103782, 7.8824e-05, 6.22858e-05, 5.0345e-05, 4.1277e-05, 3.41718e-05, 2.84914e-05, 2.38868e-05, 2.01206e-05, 1.70203e-05, 1.44565e-05, 1.23293e-05, 1.05599e-05, 9.08544e-06, 
			0.000267886, 0.000152682, 0.000107429, 8.17422e-05, 6.4652e-05, 5.22942e-05, 4.29004e-05, 3.55368e-05, 2.96468e-05, 2.4872e-05, 2.09656e-05, 1.77495e-05, 1.50894e-05, 1.28819e-05, 1.10454e-05, 9.5153e-06, 
			0.000270964, 0.000155399, 0.000109634, 8.35268e-05, 6.61266e-05, 5.3523e-05, 4.39342e-05, 3.6414e-05, 3.03974e-05, 2.55196e-05, 2.15282e-05, 1.82413e-05, 1.55224e-05, 1.3264e-05, 1.13891e-05, 9.82456e-06, 
			0.000272138, 0.000156877, 0.000110915, 8.46014e-05, 6.7025e-05, 5.42832e-05, 4.45898e-05, 3.69776e-05, 3.08866e-05, 2.5947e-05, 2.19048e-05, 1.85756e-05, 1.5822e-05, 1.35364e-05, 1.16349e-05, 1.005e-05
		)
}

CapTable	"metal2_C_BOTTOM_GP_23NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.53552e-05, 2.00872e-05, 2.43161e-05, 2.81352e-05, 3.15853e-05, 3.46985e-05, 3.74983e-05, 4.00075e-05, 4.22498e-05, 4.42484e-05, 4.60216e-05, 4.75921e-05, 4.89821e-05, 5.02066e-05, 5.12878e-05, 5.22359e-05, 
			1.9758e-05, 2.44795e-05, 2.88239e-05, 3.28046e-05, 3.64337e-05, 3.97259e-05, 4.26991e-05, 4.53743e-05, 4.77693e-05, 4.99087e-05, 5.18115e-05, 5.34991e-05, 5.49967e-05, 5.6317e-05, 5.74844e-05, 5.85102e-05, 
			2.4351e-05, 2.91082e-05, 3.3536e-05, 3.76221e-05, 4.13654e-05, 4.47742e-05, 4.7862e-05, 5.06433e-05, 5.31389e-05, 5.53709e-05, 5.7359e-05, 5.91283e-05, 6.06937e-05, 6.20815e-05, 6.33036e-05, 6.4384e-05, 
			2.9113e-05, 3.39059e-05, 3.8395e-05, 4.25578e-05, 4.63833e-05, 4.98725e-05, 5.30391e-05, 5.58959e-05, 5.84609e-05, 6.07601e-05, 6.28089e-05, 6.46329e-05, 6.62492e-05, 6.76824e-05, 6.89481e-05, 7.00651e-05, 
			3.40127e-05, 3.88271e-05, 4.33657e-05, 4.75849e-05, 5.14684e-05, 5.50153e-05, 5.82372e-05, 6.11485e-05, 6.37682e-05, 6.61118e-05, 6.82065e-05, 7.00685e-05, 7.17238e-05, 7.31889e-05, 7.44836e-05, 7.56274e-05
		)
}

CapTable	"metal2_C_TOP_GP_23NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			7.6888e-06, 9.99191e-06, 1.20481e-05, 1.39146e-05, 1.56159e-05, 1.71637e-05, 1.85685e-05, 1.98374e-05, 2.09779e-05, 2.19976e-05, 2.29089e-05, 2.37195e-05, 2.44368e-05, 2.5073e-05, 2.56321e-05, 2.61278e-05, 
			9.78605e-06, 1.20546e-05, 1.41535e-05, 1.60968e-05, 1.78875e-05, 1.95307e-05, 2.10285e-05, 2.23857e-05, 2.36103e-05, 2.47085e-05, 2.56923e-05, 2.65691e-05, 2.7346e-05, 2.80364e-05, 2.86448e-05, 2.91839e-05, 
			1.1927e-05, 1.41996e-05, 1.63368e-05, 1.83363e-05, 2.01922e-05, 2.18996e-05, 2.34594e-05, 2.48781e-05, 2.61603e-05, 2.73121e-05, 2.83448e-05, 2.92643e-05, 3.00844e-05, 3.08105e-05, 3.14542e-05, 3.20216e-05, 
			1.4125e-05, 1.64109e-05, 1.85846e-05, 2.06294e-05, 2.25311e-05, 2.42867e-05, 2.58933e-05, 2.73567e-05, 2.86809e-05, 2.98705e-05, 3.09395e-05, 3.18917e-05, 3.2742e-05, 3.34941e-05, 3.41609e-05, 3.47495e-05, 
			1.63783e-05, 1.86807e-05, 2.08853e-05, 2.29635e-05, 2.49032e-05, 2.66955e-05, 2.8337e-05, 2.98333e-05, 3.1186e-05, 3.24066e-05, 3.35001e-05, 3.44783e-05, 3.53484e-05, 3.61206e-05, 3.6806e-05, 3.74107e-05
		)
}

CapTable	"metal2_C_LATERAL_23NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000252154, 0.000141907, 0.000100176, 7.69892e-05, 6.17438e-05, 5.07448e-05, 4.23492e-05, 3.5704e-05, 3.03136e-05, 2.58658e-05, 2.2151e-05, 1.90203e-05, 1.63638e-05, 1.40985e-05, 1.21588e-05, 1.04927e-05, 
			0.000264422, 0.000151128, 0.000107395, 8.28386e-05, 6.65828e-05, 5.48054e-05, 4.57904e-05, 3.864e-05, 3.28304e-05, 2.80298e-05, 2.40152e-05, 2.06278e-05, 1.77503e-05, 1.52941e-05, 1.31885e-05, 1.13785e-05, 
			0.000271282, 0.000156662, 0.000111885, 8.65506e-05, 6.96854e-05, 5.74292e-05, 4.80256e-05, 4.05536e-05, 3.44738e-05, 2.9444e-05, 2.52332e-05, 2.16764e-05, 1.86529e-05, 1.6069e-05, 1.38532e-05, 1.19464e-05, 
			0.000275242, 0.000160212, 0.000114861, 8.90398e-05, 7.17956e-05, 5.92248e-05, 4.95596e-05, 4.18684e-05, 3.56032e-05, 3.04144e-05, 2.60666e-05, 2.23914e-05, 1.92648e-05, 1.65915e-05, 1.4297e-05, 1.23224e-05, 
			0.000277254, 0.000162446, 0.000116825, 9.07236e-05, 7.32304e-05, 6.04532e-05, 5.06188e-05, 4.27762e-05, 3.63808e-05, 3.10806e-05, 2.66354e-05, 2.28762e-05, 1.96758e-05, 1.69385e-05, 1.45884e-05, 1.25649e-05
		)
}

CapTable	"metal2_C_BOTTOM_GP_24NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.63825e-05, 2.12522e-05, 2.55809e-05, 2.94679e-05, 3.29692e-05, 3.61219e-05, 3.89586e-05, 4.15092e-05, 4.37966e-05, 4.58462e-05, 4.76805e-05, 4.93228e-05, 5.0788e-05, 5.20961e-05, 5.32662e-05, 5.43082e-05, 
			2.09295e-05, 2.57461e-05, 3.01546e-05, 3.41776e-05, 3.78366e-05, 4.11542e-05, 4.41522e-05, 4.68601e-05, 4.92963e-05, 5.14863e-05, 5.34527e-05, 5.52173e-05, 5.67958e-05, 5.82079e-05, 5.94749e-05, 6.06043e-05, 
			2.56252e-05, 3.04416e-05, 3.49032e-05, 3.90073e-05, 4.27634e-05, 4.61826e-05, 4.92859e-05, 5.20933e-05, 5.46312e-05, 5.69143e-05, 5.89688e-05, 6.08167e-05, 6.24727e-05, 6.3961e-05, 6.52913e-05, 6.64874e-05, 
			3.04552e-05, 3.5277e-05, 3.97774e-05, 4.39359e-05, 4.77575e-05, 5.12466e-05, 5.44219e-05, 5.7301e-05, 5.99093e-05, 6.22599e-05, 6.4377e-05, 6.6287e-05, 6.79998e-05, 6.95426e-05, 7.0927e-05, 7.21635e-05, 
			3.53917e-05, 4.02139e-05, 4.47395e-05, 4.89385e-05, 5.28052e-05, 5.63468e-05, 5.95728e-05, 6.2504e-05, 6.51635e-05, 6.75641e-05, 6.97353e-05, 7.16861e-05, 7.34476e-05, 7.50246e-05, 7.64471e-05, 7.77237e-05
		)
}

CapTable	"metal2_C_TOP_GP_24NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			5.67852e-06, 7.40843e-06, 8.92407e-06, 1.02863e-05, 1.15202e-05, 1.26421e-05, 1.36613e-05, 1.45835e-05, 1.54186e-05, 1.6172e-05, 1.68506e-05, 1.74585e-05, 1.80063e-05, 1.84979e-05, 1.89361e-05, 1.93306e-05, 
			7.11946e-06, 8.78683e-06, 1.03104e-05, 1.1709e-05, 1.29946e-05, 1.41738e-05, 1.52536e-05, 1.62353e-05, 1.71283e-05, 1.79371e-05, 1.86683e-05, 1.9326e-05, 1.99204e-05, 2.04557e-05, 2.09329e-05, 2.13648e-05, 
			8.5608e-06, 1.0202e-05, 1.17338e-05, 1.31605e-05, 1.44806e-05, 1.57004e-05, 1.68203e-05, 1.78447e-05, 1.87758e-05, 1.96243e-05, 2.03936e-05, 2.10863e-05, 2.17143e-05, 2.22768e-05, 2.27859e-05, 2.324e-05, 
			1.00148e-05, 1.16438e-05, 1.31846e-05, 1.46331e-05, 1.59801e-05, 1.72292e-05, 1.83795e-05, 1.9435e-05, 2.03967e-05, 2.12751e-05, 2.20736e-05, 2.27924e-05, 2.3446e-05, 2.40312e-05, 2.45586e-05, 2.50381e-05, 
			1.14873e-05, 1.31067e-05, 1.46591e-05, 1.61235e-05, 1.74928e-05, 1.87618e-05, 1.99362e-05, 2.10164e-05, 2.20013e-05, 2.29033e-05, 2.37189e-05, 2.44623e-05, 2.51306e-05, 2.57402e-05, 2.6284e-05, 2.67738e-05
		)
}

CapTable	"metal2_C_LATERAL_24NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000252942, 0.000142993, 0.000101549, 7.86308e-05, 6.36286e-05, 5.2842e-05, 4.46252e-05, 3.8123e-05, 3.28408e-05, 2.84682e-05, 2.47976e-05, 2.16834e-05, 1.90195e-05, 1.67256e-05, 1.47396e-05, 1.30128e-05, 
			0.000265592, 0.000152631, 0.000109216, 8.49554e-05, 6.89638e-05, 5.7414e-05, 4.85872e-05, 4.15846e-05, 3.58834e-05, 3.11546e-05, 2.71774e-05, 2.3797e-05, 2.09002e-05, 1.84018e-05, 1.62353e-05, 1.43488e-05, 
			0.000272878, 0.000158618, 0.000114181, 8.91572e-05, 7.2566e-05, 6.0542e-05, 5.13268e-05, 4.3999e-05, 3.8021e-05, 3.30534e-05, 2.88686e-05, 2.5306e-05, 2.2249e-05, 1.96082e-05, 1.73158e-05, 1.53166e-05, 
			0.0002773, 0.000162647, 0.000117648, 9.2144e-05, 7.51754e-05, 6.28342e-05, 5.33516e-05, 4.5796e-05, 3.9621e-05, 3.4482e-05, 3.01464e-05, 2.64506e-05, 2.32752e-05, 2.05292e-05, 1.81424e-05, 1.60594e-05, 
			0.0002798, 0.000165376, 0.00012011, 9.4326e-05, 7.7104e-05, 6.45484e-05, 5.4886e-05, 4.71666e-05, 4.08482e-05, 3.55826e-05, 3.11348e-05, 2.73396e-05, 2.40748e-05, 2.12492e-05, 1.87909e-05, 1.66435e-05
		)
}

CapTable	"metal2_C_BOTTOM_GP_25NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.0311e-05, 2.60323e-05, 3.10124e-05, 3.54138e-05, 3.93256e-05, 4.2811e-05, 4.59194e-05, 4.8694e-05, 5.11732e-05, 5.33905e-05, 5.53766e-05, 5.71587e-05, 5.87607e-05, 6.02042e-05, 6.15076e-05, 6.26876e-05, 
			2.5563e-05, 3.1124e-05, 3.61262e-05, 4.0626e-05, 4.46688e-05, 4.8297e-05, 5.15516e-05, 5.44718e-05, 5.70915e-05, 5.94443e-05, 6.15597e-05, 6.3465e-05, 6.51839e-05, 6.67381e-05, 6.81462e-05, 6.94249e-05, 
			3.0868e-05, 3.63448e-05, 4.134e-05, 4.58764e-05, 4.99802e-05, 5.36822e-05, 5.70178e-05, 6.00214e-05, 6.2726e-05, 6.51632e-05, 6.73634e-05, 6.93502e-05, 7.11494e-05, 7.27796e-05, 7.42624e-05, 7.56122e-05, 
			3.6228e-05, 4.16336e-05, 4.66088e-05, 5.11556e-05, 5.52872e-05, 5.90292e-05, 6.24136e-05, 6.54714e-05, 6.82336e-05, 7.07308e-05, 7.29918e-05, 7.50388e-05, 7.68982e-05, 7.85884e-05, 8.01282e-05, 8.15342e-05, 
			4.1614e-05, 4.6952e-05, 5.19032e-05, 5.6444e-05, 6.0587e-05, 6.43516e-05, 6.7766e-05, 7.08616e-05, 7.36658e-05, 7.62086e-05, 7.85154e-05, 8.0611e-05, 8.25184e-05, 8.42564e-05, 8.58442e-05, 8.72966e-05
		)
}

CapTable	"metal2_C_LATERAL_25NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000254374, 0.00014505, 0.000104192, 8.18312e-05, 6.73574e-05, 5.70658e-05, 4.93056e-05, 4.32184e-05, 3.83066e-05, 3.42592e-05, 3.08688e-05, 2.79908e-05, 2.55212e-05, 2.33818e-05, 2.15138e-05, 1.98708e-05, 
			0.000267578, 0.000155258, 0.000112464, 8.8801e-05, 7.33792e-05, 6.2364e-05, 5.40304e-05, 4.74752e-05, 4.21728e-05, 3.77928e-05, 3.41152e-05, 3.0986e-05, 2.82944e-05, 2.59574e-05, 2.3912e-05, 2.21092e-05, 
			0.000275472, 0.000161878, 0.000118096, 9.37066e-05, 7.77198e-05, 6.62618e-05, 5.75672e-05, 5.07096e-05, 4.5149e-05, 4.05448e-05, 3.66696e-05, 3.33648e-05, 3.05156e-05, 2.80364e-05, 2.58616e-05, 2.39406e-05, 
			0.000280552, 0.000166594, 0.000122282, 9.74434e-05, 8.11068e-05, 6.93548e-05, 6.04114e-05, 5.33406e-05, 4.75934e-05, 4.28242e-05, 3.88012e-05, 3.53632e-05, 3.23928e-05, 2.98026e-05, 2.75258e-05, 2.55108e-05, 
			0.000283764, 0.00017006, 0.000125508, 0.000100413, 8.3843e-05, 7.18924e-05, 6.278e-05, 5.55524e-05, 4.96652e-05, 4.47694e-05, 4.06316e-05, 3.7088e-05, 3.40206e-05, 3.13406e-05, 2.89808e-05, 2.68884e-05
		)
}

CapTable	"metal2_C_BOTTOM_GPNOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.48853e-05, 3.46765e-05, 4.31909e-05, 5.01669e-05, 5.56084e-05, 5.97006e-05, 6.26953e-05, 6.48454e-05, 6.63643e-05, 6.74284e-05, 6.81671e-05, 6.86783e-05, 6.903e-05, 6.92709e-05, 6.94363e-05, 6.95497e-05, 
			3.63024e-05, 4.64709e-05, 5.52304e-05, 6.23668e-05, 6.79197e-05, 7.20935e-05, 7.51417e-05, 7.73292e-05, 7.88757e-05, 7.99573e-05, 8.07084e-05, 8.12261e-05, 8.15823e-05, 8.18256e-05, 8.19929e-05, 8.21069e-05, 
			4.82237e-05, 5.85088e-05, 6.73264e-05, 7.44978e-05, 8.00761e-05, 8.42585e-05, 8.73168e-05, 8.95086e-05, 9.10582e-05, 9.214e-05, 9.28904e-05, 9.3407e-05, 9.37623e-05, 9.40047e-05, 9.41704e-05, 9.4283e-05, 
			6.03105e-05, 7.06071e-05, 7.9431e-05, 8.65951e-05, 9.21658e-05, 9.63419e-05, 9.9393e-05, 0.000101579, 0.000103121, 0.000104199, 0.000104945, 0.00010546, 0.000105813, 0.000106053, 0.000106217, 0.000106327, 
			7.24332e-05, 8.26974e-05, 9.14981e-05, 9.86468e-05, 0.000104196, 0.000108356, 0.000111388, 0.000113564, 0.000115097, 0.000116169, 0.000116911, 0.000117421, 0.000117769, 0.000118005, 0.000118166, 0.000118276
		)
}

CapTable	"metal2_C_TOP_GPNOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.46567e-05, 3.41655e-05, 4.23503e-05, 4.90037e-05, 5.41658e-05, 5.80362e-05, 6.08627e-05, 6.28843e-05, 6.43165e-05, 6.53147e-05, 6.60101e-05, 6.6489e-05, 6.6819e-05, 6.70445e-05, 6.71974e-05, 6.72994e-05, 
			3.61516e-05, 4.60377e-05, 5.44586e-05, 6.12724e-05, 6.65465e-05, 7.04913e-05, 7.33762e-05, 7.54337e-05, 7.68909e-05, 7.79096e-05, 7.86146e-05, 7.91017e-05, 7.94353e-05, 7.96633e-05, 7.98134e-05, 7.99126e-05, 
			4.81303e-05, 5.81328e-05, 6.66206e-05, 7.34722e-05, 7.87691e-05, 8.27349e-05, 8.56218e-05, 8.7691e-05, 8.91493e-05, 9.01693e-05, 9.08755e-05, 9.13609e-05, 9.16914e-05, 9.19137e-05, 9.20605e-05, 9.21549e-05, 
			6.02685e-05, 7.02917e-05, 7.8785e-05, 8.56453e-05, 9.09338e-05, 9.48933e-05, 9.77802e-05, 9.98428e-05, 0.000101299, 0.000102314, 0.000103018, 0.000103495, 0.000103819, 0.000104036, 0.000104177, 0.000104267, 
			7.24558e-05, 8.24464e-05, 9.09359e-05, 9.77686e-05, 0.000103053, 0.000106996, 0.000109868, 0.000111923, 0.000113371, 0.000114378, 0.000115071, 0.000115543, 0.000115861, 0.000116072, 0.000116208, 0.000116292
		)
}

CapTable	"metal2_C_LATERALNOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.00023349, 0.00011759, 7.22308e-05, 4.72374e-05, 3.16708e-05, 2.14552e-05, 1.4594e-05, 9.93732e-06, 6.76118e-06, 4.59194e-06, 3.10882e-06, 2.09574e-06, 1.40397e-06, 9.32564e-07, 6.12268e-07, 3.95872e-07, 
			0.000237616, 0.000119881, 7.3583e-05, 4.80908e-05, 3.22238e-05, 2.18172e-05, 1.48291e-05, 1.00891e-05, 6.85744e-06, 4.65112e-06, 3.145e-06, 2.11724e-06, 1.41738e-06, 9.42146e-07, 6.21738e-07, 4.07504e-07, 
			0.000238008, 0.000120177, 7.3761e-05, 4.8201e-05, 3.22828e-05, 2.18476e-05, 1.48434e-05, 1.00924e-05, 6.85654e-06, 4.64868e-06, 3.14312e-06, 2.11806e-06, 1.42232e-06, 9.526e-07, 6.38128e-07, 4.3014e-07, 
			0.000237146, 0.000119868, 7.3587e-05, 4.80746e-05, 3.21984e-05, 2.17878e-05, 1.47998e-05, 1.00628e-05, 6.83746e-06, 4.6395e-06, 3.1427e-06, 2.12698e-06, 1.44007e-06, 9.78824e-07, 6.72112e-07, 4.70954e-07, 
			0.000235622, 0.000119287, 7.3253e-05, 4.78616e-05, 3.20486e-05, 2.16878e-05, 1.47459e-05, 1.00315e-05, 6.82466e-06, 4.64218e-06, 3.1593e-06, 2.15522e-06, 1.47878e-06, 1.02653e-06, 7.27574e-07, 5.32806e-07
		)
}

CapTable	"metal2_C_BOTTOM_GP_12NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.68981e-05, 3.66947e-05, 4.52122e-05, 5.24118e-05, 5.83814e-05, 6.32668e-05, 6.72238e-05, 7.04093e-05, 7.29606e-05, 7.49989e-05, 7.66219e-05, 7.79158e-05, 7.89439e-05, 7.97604e-05, 8.04104e-05, 8.09283e-05, 
			3.79477e-05, 4.80101e-05, 5.67646e-05, 6.41888e-05, 7.03683e-05, 7.54434e-05, 7.95714e-05, 8.29047e-05, 8.55836e-05, 8.77321e-05, 8.94456e-05, 9.08107e-05, 9.19028e-05, 9.27662e-05, 9.34571e-05, 9.4007e-05, 
			4.94904e-05, 5.96446e-05, 6.84941e-05, 7.60187e-05, 8.23011e-05, 8.74752e-05, 9.16931e-05, 9.51067e-05, 9.78564e-05, 0.00010006, 0.000101822, 0.000103232, 0.000104356, 0.000105252, 0.000105967, 0.000106536, 
			6.12603e-05, 7.14443e-05, 8.03341e-05, 8.79122e-05, 9.42504e-05, 9.94772e-05, 0.000103751, 0.00010721, 0.000109998, 0.00011224, 0.000114031, 0.000115465, 0.00011661, 0.000117524, 0.000118252, 0.000118833, 
			7.31554e-05, 8.33248e-05, 9.22341e-05, 9.98351e-05, 0.000106204, 0.000111462, 0.000115756, 0.000119239, 0.000122055, 0.000124316, 0.000126128, 0.000127577, 0.000128734, 0.000129658, 0.000130394, 0.000130982
		)
}

CapTable	"metal2_C_TOP_GP_12NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.02639e-05, 1.38627e-05, 1.71254e-05, 2.00102e-05, 2.24922e-05, 2.45802e-05, 2.6311e-05, 2.77283e-05, 2.88795e-05, 2.98099e-05, 3.05581e-05, 3.11572e-05, 3.16385e-05, 3.20241e-05, 3.23318e-05, 3.2577e-05, 
			1.39793e-05, 1.76545e-05, 2.10376e-05, 2.40476e-05, 2.66507e-05, 2.88536e-05, 3.06864e-05, 3.21945e-05, 3.34239e-05, 3.4417e-05, 3.52212e-05, 3.58697e-05, 3.63857e-05, 3.68053e-05, 3.71377e-05, 3.74035e-05, 
			1.78246e-05, 2.15656e-05, 2.50211e-05, 2.81087e-05, 3.07861e-05, 3.3056e-05, 3.49509e-05, 3.65123e-05, 3.7787e-05, 3.88238e-05, 3.96634e-05, 4.03367e-05, 4.08781e-05, 4.13124e-05, 4.16602e-05, 4.19386e-05, 
			2.17687e-05, 2.55519e-05, 2.90611e-05, 3.21994e-05, 3.49254e-05, 3.72392e-05, 3.91687e-05, 4.07649e-05, 4.20724e-05, 4.31319e-05, 4.39929e-05, 4.46845e-05, 4.52405e-05, 4.56866e-05, 4.60442e-05, 4.63305e-05, 
			2.57856e-05, 2.95984e-05, 3.31431e-05, 3.63169e-05, 3.90729e-05, 4.14124e-05, 4.33695e-05, 4.49899e-05, 4.63109e-05, 4.73871e-05, 4.82581e-05, 4.89605e-05, 4.95255e-05, 4.9979e-05, 5.03427e-05, 5.06339e-05
		)
}

CapTable	"metal2_C_LATERAL_12NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000242128, 0.000128929, 8.52344e-05, 6.0924e-05, 4.52304e-05, 3.4304e-05, 2.63662e-05, 2.04484e-05, 1.59619e-05, 1.25202e-05, 9.85904e-06, 7.78802e-06, 6.16864e-06, 4.8975e-06, 3.89678e-06, 3.10672e-06, 
			0.000250314, 0.000134688, 8.95018e-05, 6.42186e-05, 4.7825e-05, 3.637e-05, 2.80212e-05, 2.17778e-05, 1.70315e-05, 1.33819e-05, 1.05532e-05, 8.34758e-06, 6.62048e-06, 5.26254e-06, 4.19224e-06, 3.3465e-06, 
			0.00025392, 0.000137573, 9.17758e-05, 6.60356e-05, 4.92818e-05, 3.75478e-05, 2.8975e-05, 2.2552e-05, 1.76596e-05, 1.38918e-05, 1.09672e-05, 8.68448e-06, 6.8945e-06, 5.48628e-06, 4.37534e-06, 3.49692e-06, 
			0.000255416, 0.000139113, 9.30728e-05, 6.70944e-05, 5.01542e-05, 3.82636e-05, 2.95614e-05, 2.3032e-05, 1.80524e-05, 1.42138e-05, 1.12312e-05, 8.901e-06, 7.0727e-06, 5.63346e-06, 4.49744e-06, 3.5988e-06, 
			0.000255584, 0.000139828, 9.37598e-05, 6.769e-05, 5.06526e-05, 3.86806e-05, 2.99176e-05, 2.3327e-05, 1.82976e-05, 1.44169e-05, 1.14e-05, 9.04162e-06, 7.19028e-06, 5.73226e-06, 4.58098e-06, 3.66994e-06
		)
}

CapTable	"metal2_C_BOTTOM_GP_13NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.82902e-05, 3.83167e-05, 4.69605e-05, 5.4244e-05, 6.02992e-05, 6.5295e-05, 6.94028e-05, 7.27764e-05, 7.55489e-05, 7.78275e-05, 7.97094e-05, 8.12659e-05, 8.25571e-05, 8.36302e-05, 8.45277e-05, 8.52773e-05, 
			3.94137e-05, 4.95803e-05, 5.83787e-05, 6.58346e-05, 7.20744e-05, 7.72583e-05, 8.1548e-05, 8.50958e-05, 8.80279e-05, 9.04565e-05, 9.24707e-05, 9.41432e-05, 9.55382e-05, 9.67029e-05, 9.76801e-05, 9.84988e-05, 
			5.09127e-05, 6.10838e-05, 6.99153e-05, 7.74403e-05, 8.37726e-05, 8.90615e-05, 9.34604e-05, 9.71157e-05, 0.000100151, 0.000102675, 0.000104777, 0.000106532, 0.000107997, 0.000109224, 0.000110256, 0.000111124, 
			6.25602e-05, 7.26953e-05, 8.15292e-05, 8.90881e-05, 9.54758e-05, 0.000100833, 0.000105308, 0.000109038, 0.000112147, 0.00011474, 0.000116905, 0.000118718, 0.000120235, 0.000121511, 0.000122579, 0.00012349, 
			7.42864e-05, 8.43647e-05, 9.3195e-05, 0.000100769, 0.000107193, 0.000112598, 0.000117121, 0.000120905, 0.000124069, 0.000126711, 0.000128923, 0.000130777, 0.000132334, 0.000133647, 0.000134749, 0.000135685
		)
}

CapTable	"metal2_C_TOP_GP_13NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			6.82175e-06, 9.12913e-06, 1.12057e-05, 1.30392e-05, 1.46254e-05, 1.59772e-05, 1.71174e-05, 1.80738e-05, 1.88735e-05, 1.95427e-05, 2.00996e-05, 2.05639e-05, 2.09516e-05, 2.12773e-05, 2.15476e-05, 2.17768e-05, 
			9.10829e-06, 1.14161e-05, 1.35343e-05, 1.54288e-05, 1.70832e-05, 1.85077e-05, 1.97206e-05, 2.07448e-05, 2.16075e-05, 2.23312e-05, 2.2938e-05, 2.34486e-05, 2.38762e-05, 2.42364e-05, 2.45378e-05, 2.47942e-05, 
			1.14193e-05, 1.37322e-05, 1.58775e-05, 1.78099e-05, 1.95116e-05, 2.09833e-05, 2.2245e-05, 2.33155e-05, 2.42198e-05, 2.49827e-05, 2.56262e-05, 2.61658e-05, 2.66227e-05, 2.70089e-05, 2.73339e-05, 2.76094e-05, 
			1.37508e-05, 1.60699e-05, 1.82376e-05, 2.02023e-05, 2.19372e-05, 2.34451e-05, 2.47397e-05, 2.58424e-05, 2.67797e-05, 2.75711e-05, 2.82412e-05, 2.88045e-05, 2.92839e-05, 2.96878e-05, 3.00346e-05, 3.03193e-05, 
			1.61006e-05, 1.84273e-05, 2.06134e-05, 2.26031e-05, 2.4365e-05, 2.58979e-05, 2.72172e-05, 2.83465e-05, 2.93041e-05, 3.0119e-05, 3.08099e-05, 3.13936e-05, 3.18888e-05, 3.23046e-05, 3.2664e-05, 3.29649e-05
		)
}

CapTable	"metal2_C_LATERAL_13NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000243726, 0.000131208, 8.81338e-05, 6.43328e-05, 4.90104e-05, 3.83138e-05, 3.04758e-05, 2.45478e-05, 1.99636e-05, 1.63598e-05, 1.349e-05, 1.11812e-05, 9.30726e-06, 7.77554e-06, 6.51568e-06, 5.47386e-06, 
			0.000252858, 0.00013798, 9.3443e-05, 6.86696e-05, 5.26254e-05, 4.1362e-05, 3.30634e-05, 2.67534e-05, 2.18486e-05, 1.79733e-05, 1.48733e-05, 1.23682e-05, 1.03266e-05, 8.6517e-06, 7.26908e-06, 6.12196e-06, 
			0.000257486, 0.000141898, 9.67362e-05, 7.14718e-05, 5.50198e-05, 4.34212e-05, 3.48386e-05, 2.82858e-05, 2.31728e-05, 1.91178e-05, 1.58627e-05, 1.32233e-05, 1.10662e-05, 9.29092e-06, 7.82184e-06, 6.59978e-06, 
			0.000260018, 0.000144445, 9.89972e-05, 7.34406e-05, 5.6742e-05, 4.49232e-05, 3.61468e-05, 2.94254e-05, 2.41644e-05, 1.99805e-05, 1.66129e-05, 1.38753e-05, 1.16323e-05, 9.7827e-06, 8.24812e-06, 6.96984e-06, 
			0.000261156, 0.000146094, 0.000100563, 7.48538e-05, 5.79936e-05, 4.60296e-05, 3.71296e-05, 3.02876e-05, 2.492e-05, 2.0642e-05, 1.71906e-05, 1.43798e-05, 1.20724e-05, 1.01661e-05, 8.58182e-06, 7.25932e-06
		)
}

CapTable	"metal2_C_BOTTOM_GP_14NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.92761e-05, 3.95365e-05, 4.8353e-05, 5.57636e-05, 6.19161e-05, 6.69938e-05, 7.11758e-05, 7.46232e-05, 7.7472e-05, 7.98314e-05, 8.17968e-05, 8.34388e-05, 8.48149e-05, 8.59786e-05, 8.6961e-05, 8.77971e-05, 
			4.05833e-05, 5.09383e-05, 5.98741e-05, 6.74321e-05, 7.37515e-05, 7.90064e-05, 8.33687e-05, 8.69922e-05, 9.0008e-05, 9.25222e-05, 9.46293e-05, 9.64007e-05, 9.78923e-05, 9.91626e-05, 0.000100238, 0.000101161, 
			5.22102e-05, 6.25299e-05, 7.14685e-05, 7.9073e-05, 8.54724e-05, 9.08273e-05, 9.52972e-05, 9.90315e-05, 0.000102156, 0.000104773, 0.00010698, 0.000108841, 0.000110419, 0.000111764, 0.000112908, 0.000113894, 
			6.39352e-05, 7.41864e-05, 8.31035e-05, 9.07273e-05, 9.71752e-05, 0.000102595, 0.00010714, 0.000110954, 0.000114158, 0.000116853, 0.000119136, 0.000121065, 0.00012271, 0.000124109, 0.000125312, 0.000126343, 
			7.5697e-05, 8.58658e-05, 9.47596e-05, 0.000102389, 0.000108868, 0.000114334, 0.00011893, 0.000122804, 0.000126069, 0.000128826, 0.000131165, 0.000133148, 0.000134845, 0.000136292, 0.000137539, 0.000138608
		)
}

CapTable	"metal2_C_TOP_GP_14NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			5.17189e-06, 6.89808e-06, 8.44258e-06, 9.8024e-06, 1.09773e-05, 1.1979e-05, 1.28262e-05, 1.35396e-05, 1.41394e-05, 1.46444e-05, 1.50689e-05, 1.54272e-05, 1.57334e-05, 1.59897e-05, 1.62113e-05, 1.63993e-05, 
			6.86366e-06, 8.57328e-06, 1.01371e-05, 1.15319e-05, 1.27509e-05, 1.38012e-05, 1.46983e-05, 1.54596e-05, 1.61048e-05, 1.6654e-05, 1.71184e-05, 1.75133e-05, 1.78526e-05, 1.81371e-05, 1.83856e-05, 1.85948e-05, 
			8.55675e-06, 1.02567e-05, 1.18302e-05, 1.32464e-05, 1.44936e-05, 1.55759e-05, 1.65066e-05, 1.73017e-05, 1.79795e-05, 1.85608e-05, 1.90528e-05, 1.94758e-05, 1.98369e-05, 2.01445e-05, 2.04125e-05, 2.06388e-05, 
			1.02498e-05, 1.1944e-05, 1.35257e-05, 1.49583e-05, 1.62262e-05, 1.73312e-05, 1.8288e-05, 1.91089e-05, 1.98122e-05, 2.04174e-05, 2.09296e-05, 2.13745e-05, 2.17515e-05, 2.20809e-05, 2.23605e-05, 2.26037e-05, 
			1.1946e-05, 1.36362e-05, 1.52256e-05, 1.66717e-05, 1.79562e-05, 1.908e-05, 2.00573e-05, 2.08969e-05, 2.16204e-05, 2.22423e-05, 2.27731e-05, 2.32343e-05, 2.36261e-05, 2.3969e-05, 2.42611e-05, 2.45181e-05
		)
}

CapTable	"metal2_C_LATERAL_14NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000244252, 0.000131969, 8.91244e-05, 6.5532e-05, 5.03876e-05, 3.98322e-05, 3.2098e-05, 2.62382e-05, 2.16906e-05, 1.80962e-05, 1.52133e-05, 1.2873e-05, 1.09537e-05, 9.36568e-06, 8.04174e-06, 6.9306e-06, 
			0.000253684, 0.000139071, 9.47898e-05, 7.0245e-05, 5.43916e-05, 4.32764e-05, 3.5083e-05, 2.88382e-05, 2.39632e-05, 2.00878e-05, 1.69623e-05, 1.4412e-05, 1.23101e-05, 1.05633e-05, 9.10072e-06, 7.86814e-06, 
			0.000258654, 0.000143354, 9.84632e-05, 7.34366e-05, 5.7179e-05, 4.57268e-05, 3.72442e-05, 3.07478e-05, 2.5653e-05, 2.15848e-05, 1.82898e-05, 1.55903e-05, 1.33572e-05, 1.14943e-05, 9.92946e-06, 8.60656e-06, 
			0.000261562, 0.000146289, 0.000101119, 7.58014e-05, 5.92936e-05, 4.76142e-05, 3.89272e-05, 3.22494e-05, 2.69928e-05, 2.27804e-05, 1.93574e-05, 1.65439e-05, 1.42092e-05, 1.22562e-05, 1.0611e-05, 9.2168e-06, 
			0.000263096, 0.000148339, 0.000103085, 7.76104e-05, 6.09322e-05, 4.90954e-05, 4.0271e-05, 3.34578e-05, 2.80788e-05, 2.37562e-05, 2.02336e-05, 1.73306e-05, 1.49157e-05, 1.28906e-05, 1.11812e-05, 9.72896e-06
		)
}

CapTable	"metal2_C_BOTTOM_GP_15NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			3.3345e-05, 4.47546e-05, 5.45184e-05, 6.27026e-05, 6.94834e-05, 7.50738e-05, 7.96792e-05, 8.34816e-05, 8.66338e-05, 8.92594e-05, 9.14579e-05, 9.33115e-05, 9.48836e-05, 9.62248e-05, 9.7377e-05, 9.83708e-05, 
			4.5695e-05, 5.70882e-05, 6.68968e-05, 7.5178e-05, 8.2093e-05, 8.7843e-05, 9.26198e-05, 9.65968e-05, 9.9921e-05, 0.000102712, 0.000105068, 0.000107068, 0.000108777, 0.000110244, 0.000111512, 0.000112612, 
			5.8241e-05, 6.95022e-05, 7.92424e-05, 8.75184e-05, 9.44798e-05, 0.000100305, 0.000105179, 0.000109265, 0.0001127, 0.000115603, 0.000118069, 0.000120175, 0.000121983, 0.000123544, 0.0001249, 0.000126082, 
			7.0766e-05, 8.18742e-05, 9.15302e-05, 9.97814e-05, 0.000106756, 0.000112627, 0.000117566, 0.000121727, 0.000125246, 0.000128234, 0.000130784, 0.000132972, 0.000134859, 0.000136497, 0.000137924, 0.000139174, 
			8.3222e-05, 9.4173e-05, 0.000103751, 0.000111967, 0.000118946, 0.000124845, 0.000129826, 0.000134045, 0.000137628, 0.000140683, 0.000143302, 0.000145556, 0.000147509, 0.00014921, 0.000150697, 0.000152004
		)
}

CapTable	"metal2_C_LATERAL_15NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000245128, 0.000133243, 9.07936e-05, 6.75764e-05, 5.27706e-05, 4.25092e-05, 3.50208e-05, 2.93604e-05, 2.49692e-05, 2.14926e-05, 1.86941e-05, 1.64095e-05, 1.45214e-05, 1.29442e-05, 1.1614e-05, 1.04822e-05, 
			0.000255036, 0.000140874, 9.70392e-05, 7.2915e-05, 5.7439e-05, 4.6649e-05, 3.87262e-05, 3.26992e-05, 2.7993e-05, 2.4243e-05, 2.1205e-05, 1.87092e-05, 1.66342e-05, 1.48909e-05, 1.34124e-05, 1.2148e-05, 
			0.000260556, 0.000145754, 0.000101351, 7.67786e-05, 6.09252e-05, 4.9819e-05, 4.16216e-05, 3.53524e-05, 3.04314e-05, 2.64892e-05, 2.3279e-05, 2.06284e-05, 1.84141e-05, 1.65449e-05, 1.49524e-05, 1.35847e-05, 
			0.000264086, 0.000149346, 0.000104695, 7.98566e-05, 6.37716e-05, 5.24504e-05, 4.40564e-05, 3.76088e-05, 3.25252e-05, 2.84354e-05, 2.50904e-05, 2.23172e-05, 1.99908e-05, 1.80193e-05, 1.63335e-05, 1.48802e-05, 
			0.000266302, 0.000152108, 0.000107395, 8.24158e-05, 6.61712e-05, 5.46988e-05, 4.61686e-05, 3.95838e-05, 3.4373e-05, 3.01652e-05, 2.67112e-05, 2.38376e-05, 2.14186e-05, 1.93618e-05, 1.75974e-05, 1.60717e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_41NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			6.4105e-06, 8.6142e-06, 1.05967e-05, 1.23495e-05, 1.38781e-05, 1.51682e-05, 1.62536e-05, 1.71882e-05, 1.79726e-05, 1.86216e-05, 1.91742e-05, 1.96374e-05, 2.00276e-05, 2.03546e-05, 2.06309e-05, 2.08632e-05, 
			8.4623e-06, 1.06407e-05, 1.26415e-05, 1.44246e-05, 1.59989e-05, 1.73366e-05, 1.84953e-05, 1.94775e-05, 2.03002e-05, 2.09994e-05, 2.15905e-05, 2.20902e-05, 2.25096e-05, 2.2864e-05, 2.31672e-05, 2.34111e-05, 
			1.05162e-05, 1.26765e-05, 1.46722e-05, 1.64656e-05, 1.80648e-05, 1.94498e-05, 2.06294e-05, 2.1641e-05, 2.24995e-05, 2.32286e-05, 2.38446e-05, 2.43663e-05, 2.4808e-05, 2.51674e-05, 2.54817e-05, 2.57526e-05, 
			1.25557e-05, 1.46927e-05, 1.66783e-05, 1.84987e-05, 2.01078e-05, 2.15009e-05, 2.27066e-05, 2.37386e-05, 2.46202e-05, 2.53658e-05, 2.59986e-05, 2.65414e-05, 2.69689e-05, 2.73597e-05, 2.7698e-05, 2.79914e-05, 
			1.45692e-05, 1.66812e-05, 1.86766e-05, 2.04875e-05, 2.2102e-05, 2.3512e-05, 2.47308e-05, 2.57748e-05, 2.66686e-05, 2.74282e-05, 2.80408e-05, 2.85908e-05, 2.90668e-05, 2.9479e-05, 2.98381e-05, 3.01846e-05
		)
}

CapTable	"metal3_C_TOP_GP_41NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.77835e-05, 3.754e-05, 4.58593e-05, 5.28117e-05, 5.85591e-05, 6.33036e-05, 6.72108e-05, 7.04368e-05, 7.30962e-05, 7.5298e-05, 7.71235e-05, 7.86407e-05, 7.99045e-05, 8.0963e-05, 8.18515e-05, 8.26004e-05, 
			3.88367e-05, 4.87698e-05, 5.72603e-05, 6.43772e-05, 7.02957e-05, 7.52008e-05, 7.92629e-05, 8.26239e-05, 8.54158e-05, 8.77342e-05, 8.96641e-05, 9.12735e-05, 9.26239e-05, 9.37603e-05, 9.47126e-05, 9.55326e-05, 
			5.02768e-05, 6.02447e-05, 6.87815e-05, 7.59616e-05, 8.19578e-05, 8.69398e-05, 9.10828e-05, 9.45254e-05, 9.73897e-05, 9.97754e-05, 0.000101771, 0.000103443, 0.000104848, 0.000106051, 0.000107054, 0.0001079, 
			6.18623e-05, 7.18247e-05, 8.03749e-05, 8.75825e-05, 9.3609e-05, 9.86373e-05, 0.000102825, 0.000106313, 0.00010922, 0.000111654, 0.000113695, 0.000115402, 0.000116879, 0.000118092, 0.000119116, 0.00011998, 
			7.35198e-05, 8.34488e-05, 9.19906e-05, 9.92055e-05, 0.000105248, 0.000110292, 0.000114493, 0.000118008, 0.000120946, 0.000123408, 0.000125513, 0.000127253, 0.000128713, 0.000129939, 0.000130975, 0.000131813
		)
}

CapTable	"metal3_C_LATERAL_41NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000244356, 0.000131973, 8.9047e-05, 6.53918e-05, 5.01928e-05, 3.96032e-05, 3.18506e-05, 2.5955e-05, 2.13862e-05, 1.77884e-05, 1.49063e-05, 1.25779e-05, 1.06799e-05, 9.12044e-06, 7.83062e-06, 6.7574e-06, 
			0.000253558, 0.000138777, 9.43862e-05, 6.97892e-05, 5.38994e-05, 4.27856e-05, 3.45868e-05, 2.83506e-05, 2.35e-05, 1.96534e-05, 1.65664e-05, 1.40623e-05, 1.20125e-05, 1.03217e-05, 8.91818e-06, 7.74432e-06, 
			0.000258228, 0.000142734, 9.77422e-05, 7.26898e-05, 5.64244e-05, 4.49934e-05, 3.65528e-05, 3.01046e-05, 2.50678e-05, 2.1066e-05, 1.78434e-05, 1.52207e-05, 1.3067e-05, 1.12826e-05, 9.79826e-06, 8.55542e-06, 
			0.000260828, 0.000145364, 0.000100117, 7.47848e-05, 5.83112e-05, 4.66978e-05, 3.80884e-05, 3.14994e-05, 2.63388e-05, 2.22272e-05, 1.89074e-05, 1.61986e-05, 1.39641e-05, 1.21153e-05, 1.0571e-05, 9.27462e-06, 
			0.000262092, 0.000147156, 0.000101842, 7.6395e-05, 5.9792e-05, 4.8059e-05, 3.93552e-05, 3.26692e-05, 2.74214e-05, 2.32308e-05, 1.98362e-05, 1.70612e-05, 1.47732e-05, 1.2873e-05, 1.12819e-05, 9.9454e-06
		)
}

CapTable	"metal3_C_BOTTOM_GP_42NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			7.2965e-06, 9.6514e-06, 1.16839e-05, 1.34909e-05, 1.51217e-05, 1.66067e-05, 1.79624e-05, 1.9199e-05, 2.03249e-05, 2.13539e-05, 2.22831e-05, 2.31285e-05, 2.38862e-05, 2.45742e-05, 2.51943e-05, 2.57448e-05, 
			9.1102e-06, 1.13684e-05, 1.34082e-05, 1.52658e-05, 1.69655e-05, 1.85265e-05, 1.99614e-05, 2.12737e-05, 2.24713e-05, 2.35668e-05, 2.45576e-05, 2.54605e-05, 2.62782e-05, 2.70097e-05, 2.7674e-05, 2.82707e-05, 
			1.09772e-05, 1.31854e-05, 1.52291e-05, 1.71184e-05, 1.88636e-05, 2.04729e-05, 2.19588e-05, 2.33186e-05, 2.45677e-05, 2.57024e-05, 2.67393e-05, 2.76815e-05, 2.85281e-05, 2.92987e-05, 2.99919e-05, 3.06154e-05, 
			1.2896e-05, 1.50729e-05, 1.71197e-05, 1.90314e-05, 2.08061e-05, 2.24484e-05, 2.39683e-05, 2.53598e-05, 2.66402e-05, 2.78117e-05, 2.88724e-05, 2.98411e-05, 3.0718e-05, 3.15111e-05, 3.22245e-05, 3.28686e-05, 
			1.48636e-05, 1.70164e-05, 1.90634e-05, 2.09895e-05, 2.27821e-05, 2.44491e-05, 2.59848e-05, 2.74051e-05, 2.87077e-05, 2.98944e-05, 3.09803e-05, 3.1967e-05, 3.28608e-05, 3.36703e-05, 3.44009e-05, 3.50608e-05
		)
}

CapTable	"metal3_C_TOP_GP_42NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.32905e-05, 1.69158e-05, 2.01497e-05, 2.30843e-05, 2.57665e-05, 2.82242e-05, 3.04747e-05, 3.2534e-05, 3.44137e-05, 3.61201e-05, 3.76719e-05, 3.90742e-05, 4.03446e-05, 4.14875e-05, 4.25129e-05, 4.34401e-05, 
			1.67308e-05, 2.02849e-05, 2.35732e-05, 2.6622e-05, 2.94447e-05, 3.20511e-05, 3.44494e-05, 3.66503e-05, 3.86634e-05, 4.04968e-05, 4.21657e-05, 4.36766e-05, 4.50411e-05, 4.62773e-05, 4.73877e-05, 4.83862e-05, 
			2.02208e-05, 2.37834e-05, 2.71323e-05, 3.02676e-05, 3.31896e-05, 3.58987e-05, 3.83952e-05, 4.06926e-05, 4.27939e-05, 4.47158e-05, 4.64607e-05, 4.80417e-05, 4.94781e-05, 5.07717e-05, 5.19392e-05, 5.29913e-05, 
			2.38e-05, 2.73939e-05, 3.08003e-05, 3.40056e-05, 3.70007e-05, 3.97822e-05, 4.23519e-05, 4.47184e-05, 4.68858e-05, 4.88625e-05, 5.06662e-05, 5.23011e-05, 5.37822e-05, 5.51205e-05, 5.63313e-05, 5.74193e-05, 
			2.74734e-05, 3.10994e-05, 3.45574e-05, 3.78161e-05, 4.08669e-05, 4.37013e-05, 4.63266e-05, 4.87399e-05, 5.09515e-05, 5.29768e-05, 5.48181e-05, 5.64916e-05, 5.80098e-05, 5.93821e-05, 6.06207e-05, 6.17375e-05
		)
}

CapTable	"metal3_C_LATERAL_42NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.00025407, 0.00014444, 0.00010324, 8.04858e-05, 6.55708e-05, 5.48062e-05, 4.6561e-05, 3.99932e-05, 3.46206e-05, 3.01412e-05, 2.63574e-05, 2.31264e-05, 2.03496e-05, 1.79453e-05, 1.5857e-05, 1.40365e-05, 
			0.000267136, 0.000154445, 0.000111213, 8.70532e-05, 7.10938e-05, 5.95214e-05, 5.06312e-05, 4.3539e-05, 3.77318e-05, 3.28856e-05, 2.87904e-05, 2.5291e-05, 2.22804e-05, 1.96764e-05, 1.74101e-05, 1.54329e-05, 
			0.00027475, 0.000160701, 0.000116376, 9.1392e-05, 7.47868e-05, 6.27064e-05, 5.3405e-05, 4.59738e-05, 3.98804e-05, 3.47948e-05, 3.0491e-05, 2.68138e-05, 2.36488e-05, 2.09066e-05, 1.85209e-05, 1.64373e-05, 
			0.000279422, 0.000164897, 0.000119948, 9.4437e-05, 7.74202e-05, 6.50024e-05, 5.54208e-05, 4.77568e-05, 4.1466e-05, 3.62108e-05, 3.17634e-05, 2.79588e-05, 2.46818e-05, 2.18424e-05, 1.93702e-05, 1.72101e-05, 
			0.00028209, 0.000167711, 0.000122446, 9.66214e-05, 7.9332e-05, 6.66876e-05, 5.69246e-05, 4.9097e-05, 4.26688e-05, 3.72948e-05, 3.27416e-05, 2.88464e-05, 2.54884e-05, 2.25776e-05, 2.00414e-05, 1.78237e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_43NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			7.99287e-06, 1.06765e-05, 1.28878e-05, 1.47891e-05, 1.64766e-05, 1.80085e-05, 1.94149e-05, 2.07166e-05, 2.19257e-05, 2.30478e-05, 2.40893e-05, 2.50549e-05, 2.59506e-05, 2.67763e-05, 2.75401e-05, 2.82406e-05, 
			9.68e-06, 1.21816e-05, 1.43666e-05, 1.63033e-05, 1.80574e-05, 1.9667e-05, 2.11566e-05, 2.25404e-05, 2.38278e-05, 2.50268e-05, 2.61402e-05, 2.71731e-05, 2.81317e-05, 2.90158e-05, 2.98341e-05, 3.0588e-05, 
			1.13859e-05, 1.37605e-05, 1.59112e-05, 1.78624e-05, 1.9653e-05, 2.13134e-05, 2.28575e-05, 2.42953e-05, 2.56369e-05, 2.68883e-05, 2.80506e-05, 2.91325e-05, 3.01329e-05, 3.10611e-05, 3.19184e-05, 3.27078e-05, 
			1.31261e-05, 1.54077e-05, 1.75258e-05, 1.94827e-05, 2.12976e-05, 2.2989e-05, 2.45694e-05, 2.6046e-05, 2.74248e-05, 2.87128e-05, 2.99103e-05, 3.10261e-05, 3.20611e-05, 3.30187e-05, 3.3906e-05, 3.4725e-05, 
			1.49198e-05, 1.71185e-05, 1.92055e-05, 2.11572e-05, 2.29826e-05, 2.4692e-05, 2.62939e-05, 2.77943e-05, 2.92e-05, 3.05113e-05, 3.17358e-05, 3.28746e-05, 3.39327e-05, 3.49154e-05, 3.58253e-05, 3.66655e-05
		)
}

CapTable	"metal3_C_TOP_GP_43NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			9.71413e-06, 1.18821e-05, 1.38374e-05, 1.56313e-05, 1.72898e-05, 1.88312e-05, 2.02696e-05, 2.16132e-05, 2.28686e-05, 2.40434e-05, 2.51413e-05, 2.61663e-05, 2.71201e-05, 2.80097e-05, 2.8835e-05, 2.96033e-05, 
			1.1904e-05, 1.39431e-05, 1.5863e-05, 1.76815e-05, 1.93982e-05, 2.10172e-05, 2.25416e-05, 2.39754e-05, 2.53237e-05, 2.65882e-05, 2.77738e-05, 2.8883e-05, 2.99179e-05, 3.08843e-05, 3.17826e-05, 3.26178e-05, 
			1.40281e-05, 1.60399e-05, 1.7966e-05, 1.98184e-05, 2.15866e-05, 2.32644e-05, 2.48541e-05, 2.63559e-05, 2.77717e-05, 2.91014e-05, 3.03512e-05, 3.15201e-05, 3.2615e-05, 3.36356e-05, 3.4586e-05, 3.54709e-05, 
			1.61479e-05, 1.81707e-05, 2.01258e-05, 2.20163e-05, 2.383e-05, 2.556e-05, 2.72028e-05, 2.87578e-05, 3.02262e-05, 3.16078e-05, 3.29067e-05, 3.41235e-05, 3.52616e-05, 3.63244e-05, 3.7315e-05, 3.82374e-05, 
			1.82842e-05, 2.03419e-05, 2.23361e-05, 2.42684e-05, 2.61266e-05, 2.79024e-05, 2.95897e-05, 3.11897e-05, 3.26998e-05, 3.41243e-05, 3.54618e-05, 3.67162e-05, 3.78893e-05, 3.89852e-05, 4.00069e-05, 4.09589e-05
		)
}

CapTable	"metal3_C_LATERAL_43NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000256364, 0.00014745, 0.000106897, 8.47006e-05, 7.02476e-05, 5.98472e-05, 5.1871e-05, 4.54844e-05, 4.02134e-05, 3.57672e-05, 3.19558e-05, 2.8649e-05, 2.57536e-05, 2.32008e-05, 2.0937e-05, 1.89218e-05, 
			0.000270408, 0.000158455, 0.000115869, 9.22542e-05, 7.67314e-05, 6.54908e-05, 5.68348e-05, 4.9886e-05, 4.41418e-05, 3.92914e-05, 3.51316e-05, 3.15218e-05, 2.836e-05, 2.55724e-05, 2.30996e-05, 2.08972e-05, 
			0.000279016, 0.000165693, 0.000121984, 9.75042e-05, 8.12914e-05, 6.94962e-05, 6.03824e-05, 5.30498e-05, 4.69794e-05, 4.1849e-05, 3.7446e-05, 3.36226e-05, 3.02736e-05, 2.73182e-05, 2.4697e-05, 2.2362e-05, 
			0.000284654, 0.000170814, 0.000126431, 0.000101372, 8.46934e-05, 7.2508e-05, 6.30658e-05, 5.54552e-05, 4.9147e-05, 4.38104e-05, 3.9228e-05, 3.52464e-05, 3.17566e-05, 2.86778e-05, 2.5944e-05, 2.35072e-05, 
			0.000288202, 0.000174465, 0.00012971, 0.00010428, 8.72738e-05, 7.48126e-05, 6.51414e-05, 5.7327e-05, 5.08422e-05, 4.53524e-05, 4.06344e-05, 3.65332e-05, 3.2938e-05, 2.97624e-05, 2.69428e-05, 2.44286e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_44NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.4612e-05, 1.8182e-05, 2.11252e-05, 2.3654e-05, 2.58886e-05, 2.79028e-05, 2.97459e-05, 3.14495e-05, 3.30362e-05, 3.45214e-05, 3.59173e-05, 3.72323e-05, 3.84737e-05, 3.96469e-05, 4.07566e-05, 4.18072e-05, 
			1.7276e-05, 2.04894e-05, 2.32868e-05, 2.57744e-05, 2.80262e-05, 3.00912e-05, 3.20025e-05, 3.37851e-05, 3.5456e-05, 3.7028e-05, 3.85107e-05, 3.9912e-05, 4.12379e-05, 4.24937e-05, 4.36837e-05, 4.48121e-05, 
			1.9772e-05, 2.27734e-05, 2.54692e-05, 2.79244e-05, 3.01828e-05, 3.22768e-05, 3.42332e-05, 3.60691e-05, 3.7798e-05, 3.94304e-05, 4.09744e-05, 4.24371e-05, 4.38235e-05, 4.51389e-05, 4.63873e-05, 4.75722e-05, 
			2.2176e-05, 2.50376e-05, 2.76668e-05, 3.00982e-05, 3.23606e-05, 3.4477e-05, 3.64654e-05, 3.83398e-05, 4.01116e-05, 4.17894e-05, 4.33797e-05, 4.48887e-05, 4.63215e-05, 4.76825e-05, 4.89755e-05, 5.02044e-05, 
			2.4533e-05, 2.72948e-05, 2.98788e-05, 3.22938e-05, 3.45598e-05, 3.6692e-05, 3.87044e-05, 4.0608e-05, 4.24124e-05, 4.41252e-05, 4.57507e-05, 4.72959e-05, 4.87647e-05, 5.01616e-05, 5.149e-05, 5.27537e-05
		)
}

CapTable	"metal3_C_LATERAL_44NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000258866, 0.000150881, 0.000111162, 8.973e-05, 7.59794e-05, 6.62214e-05, 5.88274e-05, 5.29632e-05, 4.81548e-05, 4.41126e-05, 4.0648e-05, 3.76338e-05, 3.49792e-05, 3.26188e-05, 3.05032e-05, 2.85942e-05, 
			0.00027383, 0.000162824, 0.000121114, 9.83086e-05, 8.35298e-05, 7.29678e-05, 6.49236e-05, 5.85204e-05, 5.32566e-05, 4.88234e-05, 4.50194e-05, 4.17068e-05, 3.87882e-05, 3.6192e-05, 3.38644e-05, 3.17638e-05, 
			0.00028343, 0.000171065, 0.000128254, 0.000104606, 8.91552e-05, 7.80522e-05, 6.95598e-05, 6.27784e-05, 5.71904e-05, 5.2476e-05, 4.84256e-05, 4.4895e-05, 4.17822e-05, 3.90116e-05, 3.65264e-05, 3.4283e-05, 
			0.00029012, 0.000177239, 0.00013376, 0.000109537, 9.36224e-05, 8.2128e-05, 7.33036e-05, 6.62382e-05, 6.04044e-05, 5.54748e-05, 5.12344e-05, 4.7535e-05, 4.42708e-05, 4.13636e-05, 3.87548e-05, 3.63984e-05, 
			0.000294764, 0.000181977, 0.000138116, 0.000113512, 9.72592e-05, 8.5477e-05, 7.64096e-05, 6.9126e-05, 6.31016e-05, 5.80038e-05, 5.36138e-05, 4.97804e-05, 4.63956e-05, 4.3379e-05, 4.06706e-05, 3.8223e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_31NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			7.5888e-06, 1.021e-05, 1.25847e-05, 1.46924e-05, 1.65154e-05, 1.80899e-05, 1.93984e-05, 2.05143e-05, 2.14458e-05, 2.22129e-05, 2.28576e-05, 2.33917e-05, 2.38357e-05, 2.42046e-05, 2.45121e-05, 2.47166e-05, 
			1.00928e-05, 1.27165e-05, 1.51348e-05, 1.72987e-05, 1.92046e-05, 2.08312e-05, 2.22276e-05, 2.33968e-05, 2.43849e-05, 2.52117e-05, 2.59007e-05, 2.64749e-05, 2.69557e-05, 2.72906e-05, 2.76286e-05, 2.7917e-05, 
			1.26392e-05, 1.5249e-05, 1.76982e-05, 1.98906e-05, 2.18382e-05, 2.3521e-05, 2.49478e-05, 2.61644e-05, 2.71871e-05, 2.80456e-05, 2.8765e-05, 2.93674e-05, 2.97936e-05, 3.02232e-05, 3.05937e-05, 3.09589e-05, 
			1.5203e-05, 1.78223e-05, 2.02615e-05, 2.24921e-05, 2.44524e-05, 2.6159e-05, 2.76208e-05, 2.88608e-05, 2.99084e-05, 3.07907e-05, 3.14385e-05, 3.20669e-05, 3.26032e-05, 3.30623e-05, 3.34986e-05, 3.38089e-05, 
			1.77671e-05, 2.03739e-05, 2.28346e-05, 2.50646e-05, 2.70474e-05, 2.87678e-05, 3.02452e-05, 3.1502e-05, 3.25674e-05, 3.33634e-05, 3.41339e-05, 3.47897e-05, 3.54129e-05, 3.58643e-05, 3.62462e-05, 3.65689e-05
		)
}

CapTable	"metal3_C_TOP_GP_31NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.73662e-05, 3.70546e-05, 4.53455e-05, 5.2291e-05, 5.80456e-05, 6.27849e-05, 6.66854e-05, 6.98825e-05, 7.25008e-05, 7.46532e-05, 7.64164e-05, 7.78664e-05, 7.90599e-05, 8.00441e-05, 8.08572e-05, 8.15878e-05, 
			3.84342e-05, 4.83344e-05, 5.68216e-05, 6.39553e-05, 6.98724e-05, 7.4805e-05, 7.88568e-05, 8.21964e-05, 8.49439e-05, 8.72049e-05, 8.90684e-05, 9.06054e-05, 9.18743e-05, 9.29955e-05, 9.38627e-05, 9.45757e-05, 
			4.99268e-05, 5.98916e-05, 6.84394e-05, 7.56522e-05, 8.1671e-05, 8.66638e-05, 9.08024e-05, 9.42172e-05, 9.70373e-05, 9.93652e-05, 0.000101288, 0.000102878, 0.000104279, 0.000105363, 0.00010625, 0.000106925, 
			6.1594e-05, 7.15455e-05, 8.01413e-05, 8.73823e-05, 9.34442e-05, 9.84846e-05, 0.000102665, 0.000106127, 0.00010899, 0.000111358, 0.000113419, 0.000115036, 0.000116368, 0.000117459, 0.000118314, 0.000119088, 
			7.33529e-05, 8.32925e-05, 9.1865e-05, 9.9123e-05, 0.000105199, 0.000110261, 0.000114461, 0.000117948, 0.000120837, 0.000123341, 0.000125309, 0.000126932, 0.000128197, 0.000129332, 0.000130276, 0.000131062
		)
}

CapTable	"metal3_C_LATERAL_31NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.00024376, 0.000131146, 8.79968e-05, 6.41416e-05, 4.8789e-05, 3.80602e-05, 3.02162e-05, 2.42762e-05, 1.96944e-05, 1.61069e-05, 1.3259e-05, 1.09799e-05, 9.14238e-06, 7.65128e-06, 6.43466e-06, 5.43258e-06, 
			0.000252628, 0.000137592, 9.29616e-05, 6.8152e-05, 5.2111e-05, 4.08498e-05, 3.25736e-05, 2.63038e-05, 2.14432e-05, 1.76214e-05, 1.45809e-05, 1.21397e-05, 1.0165e-05, 8.55188e-06, 7.23668e-06, 6.15526e-06, 
			0.00025693, 0.00014118, 9.59354e-05, 7.06682e-05, 5.42408e-05, 4.26952e-05, 3.41838e-05, 2.77094e-05, 2.26816e-05, 1.87172e-05, 1.5555e-05, 1.30096e-05, 1.09384e-05, 9.25378e-06, 7.87334e-06, 6.7411e-06, 
			0.000259142, 0.000143432, 9.79302e-05, 7.24006e-05, 5.57784e-05, 4.40554e-05, 3.53902e-05, 2.87872e-05, 2.36486e-05, 1.95883e-05, 1.63345e-05, 1.37171e-05, 1.15898e-05, 9.8537e-06, 8.42942e-06, 7.24908e-06, 
			0.000260012, 0.000144831, 9.92944e-05, 7.36594e-05, 5.69166e-05, 4.50932e-05, 3.63458e-05, 2.9659e-05, 2.44466e-05, 2.03116e-05, 1.70091e-05, 1.43403e-05, 1.21761e-05, 1.03967e-05, 8.93184e-06, 7.72008e-06
		)
}

CapTable	"metal3_C_BOTTOM_GP_32NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			8.6892e-06, 1.13833e-05, 1.37542e-05, 1.58875e-05, 1.78273e-05, 1.9596e-05, 2.12087e-05, 2.26759e-05, 2.40072e-05, 2.52099e-05, 2.62997e-05, 2.72728e-05, 2.81524e-05, 2.89371e-05, 2.96331e-05, 3.02569e-05, 
			1.08976e-05, 1.35126e-05, 1.59091e-05, 1.81106e-05, 2.01372e-05, 2.19993e-05, 2.37056e-05, 2.52661e-05, 2.66822e-05, 2.79687e-05, 2.91269e-05, 3.01728e-05, 3.11079e-05, 3.19482e-05, 3.26991e-05, 3.33682e-05, 
			1.31512e-05, 1.57389e-05, 1.81555e-05, 2.04041e-05, 2.24869e-05, 2.44096e-05, 2.61745e-05, 2.77942e-05, 2.92628e-05, 3.06016e-05, 3.18108e-05, 3.28956e-05, 3.38744e-05, 3.47517e-05, 3.55335e-05, 3.62325e-05, 
			1.54546e-05, 1.80317e-05, 2.0465e-05, 2.27464e-05, 2.48705e-05, 2.68339e-05, 2.86421e-05, 3.02954e-05, 3.18044e-05, 3.31728e-05, 3.44129e-05, 3.55306e-05, 3.65362e-05, 3.74365e-05, 3.82419e-05, 3.89626e-05, 
			1.78017e-05, 2.03697e-05, 2.28183e-05, 2.5119e-05, 2.72684e-05, 2.92546e-05, 3.109e-05, 3.27708e-05, 3.43e-05, 3.56936e-05, 3.69551e-05, 3.80909e-05, 3.91141e-05, 4.00328e-05, 4.0855e-05, 4.159e-05
		)
}

CapTable	"metal3_C_TOP_GP_32NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.25928e-05, 1.62509e-05, 1.94976e-05, 2.24317e-05, 2.51043e-05, 2.75442e-05, 2.97706e-05, 3.1797e-05, 3.36353e-05, 3.5299e-05, 3.67938e-05, 3.81422e-05, 3.93445e-05, 4.04208e-05, 4.13827e-05, 4.22356e-05, 
			1.59704e-05, 1.95785e-05, 2.28975e-05, 2.59596e-05, 2.87792e-05, 3.13733e-05, 3.3747e-05, 3.59129e-05, 3.78818e-05, 3.96637e-05, 4.12731e-05, 4.2718e-05, 4.40159e-05, 4.51745e-05, 4.62078e-05, 4.71269e-05, 
			1.94348e-05, 2.30593e-05, 2.64481e-05, 2.96039e-05, 3.25289e-05, 3.52248e-05, 3.77007e-05, 3.99586e-05, 4.20176e-05, 4.38776e-05, 4.55568e-05, 4.7072e-05, 4.84258e-05, 4.96377e-05, 5.07216e-05, 5.16854e-05, 
			2.30104e-05, 2.66687e-05, 3.0122e-05, 3.33504e-05, 3.63493e-05, 3.91189e-05, 4.16629e-05, 4.39896e-05, 4.6106e-05, 4.80244e-05, 4.97549e-05, 5.13116e-05, 5.27078e-05, 5.39587e-05, 5.50751e-05, 5.60679e-05, 
			2.66923e-05, 3.03845e-05, 3.38883e-05, 3.71742e-05, 4.0227e-05, 4.30528e-05, 4.56434e-05, 4.80134e-05, 5.01744e-05, 5.21274e-05, 5.38917e-05, 5.54821e-05, 5.69069e-05, 5.81822e-05, 5.93206e-05, 6.03358e-05
		)
}

CapTable	"metal3_C_LATERAL_32NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000253414, 0.000143544, 0.000102143, 7.92188e-05, 6.41624e-05, 5.32848e-05, 4.4952e-05, 3.83212e-05, 3.29078e-05, 2.84086e-05, 2.46204e-05, 2.1403e-05, 1.86494e-05, 1.62815e-05, 1.42385e-05, 1.24681e-05, 
			0.00026621, 0.000153287, 0.000109858, 8.55338e-05, 6.94376e-05, 5.77564e-05, 4.87854e-05, 4.1635e-05, 3.5793e-05, 3.09336e-05, 2.68424e-05, 2.33644e-05, 2.0389e-05, 1.78281e-05, 1.56163e-05, 1.37007e-05, 
			0.000273578, 0.000159308, 0.000114793, 8.9651e-05, 7.29162e-05, 6.07346e-05, 5.13598e-05, 4.38782e-05, 3.77606e-05, 3.26688e-05, 2.83794e-05, 2.47324e-05, 2.16098e-05, 1.89226e-05, 1.66009e-05, 1.45881e-05, 
			0.000278034, 0.000163296, 0.000118164, 9.25032e-05, 7.53642e-05, 6.28532e-05, 5.3207e-05, 4.5503e-05, 3.91966e-05, 3.39478e-05, 2.95222e-05, 2.57578e-05, 2.2534e-05, 1.97588e-05, 1.7359e-05, 1.52785e-05, 
			0.000280486, 0.000165919, 0.000120483, 9.45188e-05, 7.71176e-05, 6.43926e-05, 5.45746e-05, 4.67188e-05, 4.02856e-05, 3.4927e-05, 3.04082e-05, 2.6563e-05, 2.3268e-05, 2.043e-05, 1.79754e-05, 1.58452e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_33NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			9.40247e-06, 1.23415e-05, 1.48296e-05, 1.7013e-05, 1.89772e-05, 2.07677e-05, 2.2416e-05, 2.39391e-05, 2.53476e-05, 2.66502e-05, 2.7855e-05, 2.89651e-05, 2.99861e-05, 3.0927e-05, 3.17862e-05, 3.25759e-05, 
			1.15193e-05, 1.42744e-05, 1.67357e-05, 1.896e-05, 2.0997e-05, 2.28775e-05, 2.46215e-05, 2.62404e-05, 2.77427e-05, 2.91358e-05, 3.04269e-05, 3.16173e-05, 3.27169e-05, 3.37256e-05, 3.46548e-05, 3.5504e-05, 
			1.36739e-05, 1.63193e-05, 1.87541e-05, 2.09999e-05, 2.30848e-05, 2.50243e-05, 2.68312e-05, 2.85162e-05, 3.00838e-05, 3.15374e-05, 3.28883e-05, 3.41342e-05, 3.52872e-05, 3.63491e-05, 3.73234e-05, 3.82198e-05, 
			1.58885e-05, 1.84609e-05, 2.08789e-05, 2.31406e-05, 2.52563e-05, 2.72361e-05, 2.90883e-05, 3.08196e-05, 3.24306e-05, 3.39315e-05, 3.5321e-05, 3.66116e-05, 3.78002e-05, 3.88997e-05, 3.99114e-05, 4.08387e-05, 
			1.81807e-05, 2.06985e-05, 2.31021e-05, 2.53705e-05, 2.75068e-05, 2.95138e-05, 3.13936e-05, 3.31564e-05, 3.47981e-05, 3.63292e-05, 3.77521e-05, 3.90688e-05, 4.02895e-05, 4.1416e-05, 4.24509e-05, 4.34054e-05
		)
}

CapTable	"metal3_C_TOP_GP_33NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			9.14353e-06, 1.13661e-05, 1.33534e-05, 1.51652e-05, 1.68334e-05, 1.83791e-05, 1.98151e-05, 2.11502e-05, 2.2392e-05, 2.35458e-05, 2.46146e-05, 2.56048e-05, 2.65209e-05, 2.73633e-05, 2.81426e-05, 2.88564e-05, 
			1.12847e-05, 1.34081e-05, 1.53855e-05, 1.72418e-05, 1.89828e-05, 2.06143e-05, 2.21419e-05, 2.3571e-05, 2.49052e-05, 2.61477e-05, 2.73011e-05, 2.83728e-05, 2.93631e-05, 3.02802e-05, 3.11236e-05, 3.19011e-05, 
			1.33891e-05, 1.54921e-05, 1.74888e-05, 1.93887e-05, 2.11866e-05, 2.28827e-05, 2.4479e-05, 2.59748e-05, 2.73746e-05, 2.86817e-05, 2.98954e-05, 3.10258e-05, 3.20703e-05, 3.30359e-05, 3.39277e-05, 3.47481e-05, 
			1.55045e-05, 1.76187e-05, 1.96459e-05, 2.15868e-05, 2.34341e-05, 2.51833e-05, 2.68317e-05, 2.83794e-05, 2.98308e-05, 3.11843e-05, 3.24482e-05, 3.36194e-05, 3.47062e-05, 3.57097e-05, 3.66362e-05, 3.74919e-05, 
			1.76473e-05, 1.97849e-05, 2.18479e-05, 2.38299e-05, 2.57196e-05, 2.75112e-05, 2.92038e-05, 3.0793e-05, 3.22861e-05, 3.36788e-05, 3.49757e-05, 3.61822e-05, 3.72997e-05, 3.83334e-05, 3.92895e-05, 4.01694e-05
		)
}

CapTable	"metal3_C_LATERAL_33NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000255694, 0.000146576, 0.000105833, 8.34658e-05, 6.88634e-05, 5.83374e-05, 5.02588e-05, 4.37928e-05, 3.84638e-05, 3.39788e-05, 3.0146e-05, 2.68336e-05, 2.3946e-05, 2.1412e-05, 1.91774e-05, 1.71981e-05, 
			0.000269464, 0.000157305, 0.000114531, 9.07472e-05, 7.50792e-05, 6.37182e-05, 5.49656e-05, 4.79432e-05, 4.21468e-05, 3.7264e-05, 3.30888e-05, 2.94788e-05, 2.63304e-05, 2.35672e-05, 2.11286e-05, 1.89695e-05, 
			0.000277784, 0.000164259, 0.000120368, 9.57284e-05, 7.93796e-05, 6.7473e-05, 5.82718e-05, 5.0874e-05, 4.47596e-05, 3.96044e-05, 3.5193e-05, 3.13766e-05, 2.80466e-05, 2.51224e-05, 2.2542e-05, 2.0254e-05, 
			0.00028313, 0.000169095, 0.000124542, 9.93346e-05, 8.25316e-05, 7.02456e-05, 6.0727e-05, 5.3061e-05, 4.67176e-05, 4.13642e-05, 3.67808e-05, 3.2813e-05, 2.93506e-05, 2.63076e-05, 2.36204e-05, 2.12378e-05, 
			0.000286388, 0.000172468, 0.000127555, 0.00010199, 8.48706e-05, 7.2321e-05, 6.25836e-05, 5.47236e-05, 4.82128e-05, 4.2714e-05, 3.80032e-05, 3.3924e-05, 3.03608e-05, 2.72286e-05, 2.44616e-05, 2.20062e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_34NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.5502e-05, 1.94456e-05, 2.27346e-05, 2.55826e-05, 2.811e-05, 3.03922e-05, 3.24786e-05, 3.4402e-05, 3.61857e-05, 3.78465e-05, 3.93975e-05, 4.08492e-05, 4.22101e-05, 4.34873e-05, 4.46871e-05, 4.58149e-05, 
			1.8494e-05, 2.20821e-05, 2.52334e-05, 2.80498e-05, 3.06036e-05, 3.29444e-05, 3.51062e-05, 3.71138e-05, 3.8986e-05, 4.07371e-05, 4.23786e-05, 4.39196e-05, 4.53684e-05, 4.67318e-05, 4.80159e-05, 4.92261e-05, 
			2.1343e-05, 2.47202e-05, 2.77728e-05, 3.05588e-05, 3.31214e-05, 3.54926e-05, 3.76998e-05, 3.97598e-05, 4.16905e-05, 4.35024e-05, 4.52057e-05, 4.68093e-05, 4.83206e-05, 4.97462e-05, 5.10918e-05, 5.2363e-05, 
			2.4118e-05, 2.7353e-05, 3.03356e-05, 3.30958e-05, 3.56596e-05, 3.80504e-05, 4.0286e-05, 4.23832e-05, 4.43552e-05, 4.62106e-05, 4.79599e-05, 4.96108e-05, 5.11698e-05, 5.26437e-05, 5.40378e-05, 5.53575e-05, 
			2.6857e-05, 2.99858e-05, 3.29166e-05, 3.56544e-05, 3.82158e-05, 4.06172e-05, 4.2872e-05, 4.49948e-05, 4.6997e-05, 4.88856e-05, 5.067e-05, 5.23577e-05, 5.39549e-05, 5.54676e-05, 5.69012e-05, 5.82608e-05
		)
}

CapTable	"metal3_C_LATERAL_34NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.00025815, 0.000149906, 0.000109967, 8.83484e-05, 7.444e-05, 6.45514e-05, 5.7052e-05, 5.11044e-05, 4.62322e-05, 4.2143e-05, 3.86464e-05, 3.56122e-05, 3.29482e-05, 3.05868e-05, 2.8477e-05, 2.65796e-05, 
			0.000272878, 0.000161625, 0.000119706, 9.67242e-05, 8.18014e-05, 7.11236e-05, 6.29894e-05, 5.6518e-05, 5.12048e-05, 4.6738e-05, 4.29136e-05, 3.95916e-05, 3.66722e-05, 3.4082e-05, 3.17656e-05, 2.96802e-05, 
			0.000282238, 0.000169645, 0.000126643, 0.000102839, 8.72646e-05, 7.60654e-05, 6.75012e-05, 6.06682e-05, 5.50456e-05, 5.03104e-05, 4.62504e-05, 4.27192e-05, 3.96122e-05, 3.68524e-05, 3.43816e-05, 3.21546e-05, 
			0.000288698, 0.000175615, 0.00013197, 0.000107615, 9.15994e-05, 8.00296e-05, 7.1152e-05, 6.40508e-05, 5.81958e-05, 5.32568e-05, 4.90156e-05, 4.53218e-05, 4.2068e-05, 3.91742e-05, 3.65804e-05, 3.42396e-05, 
			0.000293132, 0.000180172, 0.000136174, 0.000111465, 9.51332e-05, 8.32958e-05, 7.4192e-05, 6.68872e-05, 6.0853e-05, 5.57544e-05, 5.137e-05, 4.75466e-05, 4.41742e-05, 4.11714e-05, 3.84766e-05, 3.60418e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_21NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.0227e-05, 1.38894e-05, 1.72337e-05, 2.0208e-05, 2.27748e-05, 2.49437e-05, 2.67598e-05, 2.82519e-05, 2.94652e-05, 3.04501e-05, 3.12436e-05, 3.1883e-05, 3.2395e-05, 3.28015e-05, 3.31397e-05, 3.34027e-05, 
			1.39058e-05, 1.76558e-05, 2.11237e-05, 2.42337e-05, 2.69229e-05, 2.92136e-05, 3.1123e-05, 3.26999e-05, 3.39886e-05, 3.50344e-05, 3.58816e-05, 3.65557e-05, 3.71038e-05, 3.75552e-05, 3.79088e-05, 3.81919e-05, 
			1.77615e-05, 2.15791e-05, 2.51216e-05, 2.83071e-05, 3.1075e-05, 3.34256e-05, 3.53929e-05, 3.70175e-05, 3.83494e-05, 3.94253e-05, 4.02986e-05, 4.10214e-05, 4.159e-05, 4.2048e-05, 4.24157e-05, 4.27124e-05, 
			2.17336e-05, 2.55965e-05, 2.91987e-05, 3.24257e-05, 3.52374e-05, 3.76275e-05, 3.96296e-05, 4.12868e-05, 4.26322e-05, 4.37393e-05, 4.46507e-05, 4.53739e-05, 4.59569e-05, 4.64276e-05, 4.68054e-05, 4.71097e-05, 
			2.57871e-05, 2.96824e-05, 3.33154e-05, 3.65759e-05, 3.94114e-05, 4.18276e-05, 4.38366e-05, 4.55112e-05, 4.69047e-05, 4.8025e-05, 4.89323e-05, 4.96668e-05, 5.02592e-05, 5.07383e-05, 5.11231e-05, 5.14348e-05
		)
}

CapTable	"metal3_C_TOP_GP_21NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.6621e-05, 3.61327e-05, 4.43405e-05, 5.12592e-05, 5.70032e-05, 6.17215e-05, 6.55592e-05, 6.86663e-05, 7.11695e-05, 7.31751e-05, 7.47843e-05, 7.60687e-05, 7.70994e-05, 7.79256e-05, 7.85706e-05, 7.90974e-05, 
			3.77292e-05, 4.75272e-05, 5.59837e-05, 6.31271e-05, 6.90801e-05, 7.39828e-05, 7.79872e-05, 8.12363e-05, 8.38601e-05, 8.5973e-05, 8.76666e-05, 8.90361e-05, 9.01238e-05, 9.09829e-05, 9.16825e-05, 9.22431e-05, 
			4.93325e-05, 5.92377e-05, 6.77972e-05, 7.50443e-05, 8.10988e-05, 8.60968e-05, 9.01875e-05, 9.35169e-05, 9.62079e-05, 9.83885e-05, 0.00010014, 0.000101523, 0.00010265, 0.000103553, 0.000104278, 0.000104859, 
			6.11624e-05, 7.11039e-05, 7.97085e-05, 8.70127e-05, 9.31218e-05, 9.81743e-05, 0.000102319, 0.000105692, 0.000108442, 0.00011065, 0.000112412, 0.000113844, 0.000114994, 0.000115916, 0.000116657, 0.000117252, 
			7.31159e-05, 8.30464e-05, 9.16702e-05, 9.90011e-05, 0.000105145, 0.000110229, 0.000114417, 0.000117826, 0.000120564, 0.000122799, 0.000124601, 0.000126051, 0.000127216, 0.000128151, 0.000128903, 0.000129506
		)
}

CapTable	"metal3_C_LATERAL_21NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000242296, 0.000129139, 8.54768e-05, 6.11828e-05, 4.5489e-05, 3.45458e-05, 2.657e-05, 2.06078e-05, 1.60763e-05, 1.25898e-05, 9.88514e-06, 7.7743e-06, 6.11764e-06, 4.81294e-06, 3.7837e-06, 2.96588e-06, 
			0.000250328, 0.000134702, 8.95376e-05, 6.42732e-05, 4.7894e-05, 3.64326e-05, 2.80678e-05, 2.17968e-05, 1.70173e-05, 1.33326e-05, 1.04688e-05, 8.22716e-06, 6.46738e-06, 5.07992e-06, 3.97974e-06, 3.10604e-06, 
			0.000253722, 0.00013737, 9.16062e-05, 6.59026e-05, 4.91762e-05, 3.74566e-05, 2.88806e-05, 2.24416e-05, 1.75257e-05, 1.37282e-05, 1.07714e-05, 8.45962e-06, 6.63702e-06, 5.19696e-06, 4.05534e-06, 3.14758e-06, 
			0.000255006, 0.000138712, 9.27178e-05, 6.67986e-05, 4.99028e-05, 3.80362e-05, 2.93404e-05, 2.28022e-05, 1.78018e-05, 1.39367e-05, 1.09263e-05, 8.56306e-06, 6.7011e-06, 5.22836e-06, 4.05962e-06, 3.12928e-06, 
			0.000254958, 0.00013924, 9.32454e-05, 6.7249e-05, 5.02676e-05, 3.83284e-05, 2.95744e-05, 2.29758e-05, 1.79323e-05, 1.4024e-05, 1.09747e-05, 8.58118e-06, 6.69382e-06, 5.1997e-06, 4.01288e-06, 3.06722e-06
		)
}

CapTable	"metal3_C_BOTTOM_GP_22NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.17205e-05, 1.53562e-05, 1.86386e-05, 2.16333e-05, 2.43656e-05, 2.68469e-05, 2.90875e-05, 3.10962e-05, 3.28905e-05, 3.44784e-05, 3.58792e-05, 3.71133e-05, 3.81895e-05, 3.91318e-05, 3.99513e-05, 4.06607e-05, 
			1.50506e-05, 1.86877e-05, 2.20742e-05, 2.52127e-05, 2.80967e-05, 3.07281e-05, 3.31089e-05, 3.52483e-05, 3.71618e-05, 3.88574e-05, 4.03574e-05, 4.16732e-05, 4.28294e-05, 4.38386e-05, 4.47152e-05, 4.54785e-05, 
			1.85433e-05, 2.22213e-05, 2.56872e-05, 2.89212e-05, 3.19035e-05, 3.46314e-05, 3.71009e-05, 3.9322e-05, 4.13098e-05, 4.30715e-05, 4.46316e-05, 4.60035e-05, 4.72054e-05, 4.82562e-05, 4.91716e-05, 4.99674e-05, 
			2.21819e-05, 2.59035e-05, 2.94312e-05, 3.27315e-05, 3.578e-05, 3.85714e-05, 4.10989e-05, 4.33764e-05, 4.54092e-05, 4.72179e-05, 4.88177e-05, 5.02231e-05, 5.14577e-05, 5.25376e-05, 5.34742e-05, 5.42826e-05, 
			2.59403e-05, 2.96918e-05, 3.32674e-05, 3.66127e-05, 3.97054e-05, 4.25389e-05, 4.51043e-05, 4.74163e-05, 4.94836e-05, 5.13201e-05, 5.29451e-05, 5.43753e-05, 5.56308e-05, 5.67127e-05, 5.76889e-05, 5.85202e-05
		)
}

CapTable	"metal3_C_TOP_GP_22NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.16855e-05, 1.52786e-05, 1.85022e-05, 2.14343e-05, 2.41054e-05, 2.65331e-05, 2.87253e-05, 3.0695e-05, 3.24497e-05, 3.40089e-05, 3.53838e-05, 3.65891e-05, 3.76464e-05, 3.85653e-05, 3.93636e-05, 4.00567e-05, 
			1.50504e-05, 1.865e-05, 2.1984e-05, 2.50635e-05, 2.78951e-05, 3.04787e-05, 3.28187e-05, 3.49233e-05, 3.67996e-05, 3.84672e-05, 3.9938e-05, 4.12329e-05, 4.23638e-05, 4.33495e-05, 4.42079e-05, 4.49506e-05, 
			1.85557e-05, 2.22041e-05, 2.5629e-05, 2.88152e-05, 3.17545e-05, 3.4438e-05, 3.68725e-05, 3.90618e-05, 4.10148e-05, 4.27523e-05, 4.42846e-05, 4.56309e-05, 4.68099e-05, 4.78375e-05, 4.87317e-05, 4.95068e-05, 
			2.22011e-05, 2.59019e-05, 2.93986e-05, 3.26625e-05, 3.56758e-05, 3.84276e-05, 4.09239e-05, 4.3168e-05, 4.51758e-05, 4.69551e-05, 4.85263e-05, 4.99093e-05, 5.11185e-05, 5.2173e-05, 5.30952e-05, 5.39022e-05, 
			2.59697e-05, 2.97108e-05, 3.32608e-05, 3.65791e-05, 3.96428e-05, 4.24407e-05, 4.49793e-05, 4.72615e-05, 4.92992e-05, 5.11091e-05, 5.27067e-05, 5.41121e-05, 5.53422e-05, 5.6434e-05, 5.73452e-05, 5.8157e-05
		)
}

CapTable	"metal3_C_LATERAL_22NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000251826, 0.000141395, 9.94632e-05, 7.60694e-05, 6.0626e-05, 4.945e-05, 4.0908e-05, 3.41506e-05, 2.86832e-05, 2.4193e-05, 2.04674e-05, 1.73516e-05, 1.47338e-05, 1.25246e-05, 1.06558e-05, 9.07172e-06, 
			0.000263878, 0.000150345, 0.000106364, 8.15688e-05, 6.50972e-05, 5.31392e-05, 4.39844e-05, 3.67364e-05, 3.08696e-05, 2.60504e-05, 2.20486e-05, 1.87029e-05, 1.58898e-05, 1.35159e-05, 1.15069e-05, 9.80286e-06, 
			0.000270432, 0.000155548, 0.000110496, 8.49106e-05, 6.7835e-05, 5.54116e-05, 4.58886e-05, 3.83442e-05, 3.22344e-05, 2.72132e-05, 2.30428e-05, 1.95546e-05, 1.66217e-05, 1.41453e-05, 1.20487e-05, 1.02698e-05, 
			0.000274054, 0.000158731, 0.000113101, 8.704e-05, 6.96032e-05, 5.6891e-05, 4.71362e-05, 3.94016e-05, 3.3136e-05, 2.7985e-05, 2.3706e-05, 2.01256e-05, 1.71138e-05, 1.45704e-05, 1.24156e-05, 1.05862e-05, 
			0.000275688, 0.000160595, 0.00011471, 8.83922e-05, 7.07368e-05, 5.78504e-05, 4.79584e-05, 4.01042e-05, 3.37392e-05, 2.85048e-05, 2.41552e-05, 2.05146e-05, 1.7451e-05, 1.48613e-05, 1.26709e-05, 1.08088e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_23NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.27441e-05, 1.65125e-05, 1.98424e-05, 2.28445e-05, 2.55751e-05, 2.80677e-05, 3.03437e-05, 3.24188e-05, 3.43072e-05, 3.60224e-05, 3.75761e-05, 3.89801e-05, 4.02488e-05, 4.13887e-05, 4.24158e-05, 4.33351e-05, 
			1.60276e-05, 1.9704e-05, 2.30777e-05, 2.61843e-05, 2.90429e-05, 3.16738e-05, 3.40879e-05, 3.62978e-05, 3.83153e-05, 4.01527e-05, 4.18192e-05, 4.33301e-05, 4.46937e-05, 4.59256e-05, 4.70326e-05, 4.80299e-05, 
			1.94039e-05, 2.30579e-05, 2.64713e-05, 2.96494e-05, 3.25967e-05, 3.53183e-05, 3.78249e-05, 4.01241e-05, 4.22267e-05, 4.41451e-05, 4.58877e-05, 4.74701e-05, 4.88999e-05, 5.01928e-05, 5.13595e-05, 5.24049e-05, 
			2.28821e-05, 2.6536e-05, 2.99861e-05, 3.32169e-05, 3.62255e-05, 3.90122e-05, 4.15858e-05, 4.39477e-05, 4.61136e-05, 4.80886e-05, 4.98885e-05, 5.15197e-05, 5.29994e-05, 5.43335e-05, 5.55411e-05, 5.6629e-05, 
			2.64591e-05, 3.01175e-05, 3.35955e-05, 3.68663e-05, 3.99195e-05, 4.27522e-05, 4.53716e-05, 4.77793e-05, 4.99897e-05, 5.20061e-05, 5.38461e-05, 5.55176e-05, 5.70302e-05, 5.84009e-05, 5.96391e-05, 6.0753e-05
		)
}

CapTable	"metal3_C_TOP_GP_23NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			8.08191e-06, 1.03997e-05, 1.24448e-05, 1.42935e-05, 1.59823e-05, 1.75319e-05, 1.89535e-05, 2.02569e-05, 2.14481e-05, 2.25333e-05, 2.35195e-05, 2.44136e-05, 2.52197e-05, 2.59487e-05, 2.66025e-05, 2.71913e-05, 
			1.01264e-05, 1.23785e-05, 1.44485e-05, 1.63643e-05, 1.81407e-05, 1.97838e-05, 2.13011e-05, 2.26966e-05, 2.39755e-05, 2.51434e-05, 2.62079e-05, 2.71727e-05, 2.80476e-05, 2.88357e-05, 2.9547e-05, 3.01852e-05, 
			1.21911e-05, 1.44289e-05, 1.65291e-05, 1.84964e-05, 2.03347e-05, 2.20447e-05, 2.36279e-05, 2.50883e-05, 2.64297e-05, 2.76551e-05, 2.87741e-05, 2.97891e-05, 3.07099e-05, 3.1541e-05, 3.22893e-05, 3.29661e-05, 
			1.42989e-05, 1.65426e-05, 1.86727e-05, 2.06847e-05, 2.25711e-05, 2.43302e-05, 2.59622e-05, 2.74705e-05, 2.88556e-05, 3.01256e-05, 3.12823e-05, 3.23357e-05, 3.32896e-05, 3.41537e-05, 3.49318e-05, 3.56314e-05, 
			1.64559e-05, 1.87089e-05, 2.08691e-05, 2.29155e-05, 2.48405e-05, 2.66392e-05, 2.83078e-05, 2.98527e-05, 3.12721e-05, 3.25735e-05, 3.37605e-05, 3.48392e-05, 3.58214e-05, 3.67063e-05, 3.75052e-05, 3.82272e-05
		)
}

CapTable	"metal3_C_LATERAL_23NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.00025387, 0.000144181, 0.000102921, 8.0107e-05, 6.51376e-05, 5.43252e-05, 4.60382e-05, 3.94346e-05, 3.40312e-05, 2.95262e-05, 2.57192e-05, 2.24698e-05, 1.96752e-05, 1.72584e-05, 1.51584e-05, 1.33283e-05, 
			0.000266888, 0.000154137, 0.000110845, 8.66264e-05, 7.06114e-05, 5.89884e-05, 5.0053e-05, 4.29186e-05, 3.70724e-05, 3.21924e-05, 2.8065e-05, 2.4539e-05, 2.15044e-05, 1.88775e-05, 1.65941e-05, 1.4601e-05, 
			0.000274456, 0.000160348, 0.000115963, 9.09192e-05, 7.42566e-05, 6.2121e-05, 5.27682e-05, 4.52876e-05, 3.91496e-05, 3.40208e-05, 2.96792e-05, 2.59668e-05, 2.27702e-05, 2.00002e-05, 1.75902e-05, 1.5486e-05, 
			0.000279086, 0.0001645, 0.000119489, 9.39164e-05, 7.68374e-05, 6.43576e-05, 5.4718e-05, 4.69968e-05, 4.06538e-05, 3.53498e-05, 3.08552e-05, 2.70106e-05, 2.3696e-05, 2.08238e-05, 1.83221e-05, 1.61366e-05, 
			0.000281692, 0.000167263, 0.000121934, 9.60442e-05, 7.8686e-05, 6.59746e-05, 5.61446e-05, 4.8254e-05, 4.17652e-05, 3.63354e-05, 3.17304e-05, 2.77882e-05, 2.43884e-05, 2.14398e-05, 1.88707e-05, 1.66248e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_24NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.8046e-05, 2.297e-05, 2.71894e-05, 3.09018e-05, 3.42172e-05, 3.72056e-05, 3.99146e-05, 4.23795e-05, 4.46279e-05, 4.6683e-05, 4.85642e-05, 5.02883e-05, 5.18708e-05, 5.33244e-05, 5.46613e-05, 5.58921e-05, 
			2.2095e-05, 2.67374e-05, 3.08848e-05, 3.46236e-05, 3.8014e-05, 4.11006e-05, 4.39198e-05, 4.64989e-05, 4.88624e-05, 5.1031e-05, 5.30233e-05, 5.48551e-05, 5.65411e-05, 5.80945e-05, 5.95272e-05, 6.08494e-05, 
			2.6075e-05, 3.05534e-05, 3.46421e-05, 3.83794e-05, 4.18018e-05, 4.49396e-05, 4.78204e-05, 5.04672e-05, 5.29014e-05, 5.51419e-05, 5.72064e-05, 5.911e-05, 6.08667e-05, 6.2489e-05, 6.39888e-05, 6.53763e-05, 
			3.0019e-05, 3.43834e-05, 3.84222e-05, 4.21478e-05, 4.55816e-05, 4.8745e-05, 5.16612e-05, 5.43506e-05, 5.68314e-05, 5.91218e-05, 6.12372e-05, 6.31922e-05, 6.50002e-05, 6.66744e-05, 6.82251e-05, 6.96626e-05, 
			3.3939e-05, 3.82076e-05, 4.22e-05, 4.59068e-05, 4.93388e-05, 5.25148e-05, 5.54498e-05, 5.81662e-05, 6.06788e-05, 6.30036e-05, 6.5155e-05, 6.7149e-05, 6.89964e-05, 7.07102e-05, 7.2301e-05, 7.37782e-05
		)
}

CapTable	"metal3_C_LATERAL_24NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.00025612, 0.000147253, 0.000106774, 8.47002e-05, 7.04228e-05, 6.0246e-05, 5.25312e-05, 4.64324e-05, 4.14646e-05, 3.73266e-05, 3.38206e-05, 3.08098e-05, 2.81956e-05, 2.5906e-05, 2.38854e-05, 2.20908e-05, 
			0.000270114, 0.00015825, 0.000115811, 9.24044e-05, 7.7146e-05, 6.62144e-05, 5.78982e-05, 5.13072e-05, 4.59274e-05, 4.14386e-05, 3.76292e-05, 3.4353e-05, 3.15046e-05, 2.9006e-05, 2.67976e-05, 2.48336e-05, 
			0.000278764, 0.000165601, 0.000122126, 9.79446e-05, 8.20812e-05, 7.06714e-05, 6.19646e-05, 5.50468e-05, 4.93886e-05, 4.4659e-05, 4.06386e-05, 3.71752e-05, 3.41594e-05, 3.151e-05, 2.91648e-05, 2.70758e-05, 
			0.000284574, 0.000170979, 0.00012692, 0.000102243, 8.59894e-05, 7.4254e-05, 6.52728e-05, 5.81214e-05, 5.22606e-05, 4.73532e-05, 4.31748e-05, 3.95698e-05, 3.64258e-05, 3.36596e-05, 3.12072e-05, 2.90196e-05, 
			0.000288442, 0.000175036, 0.000130688, 0.000105714, 8.91942e-05, 7.72342e-05, 6.80642e-05, 6.07408e-05, 5.47282e-05, 4.96854e-05, 4.5385e-05, 4.1669e-05, 3.84236e-05, 3.55638e-05, 3.3025e-05, 3.07568e-05
		)
}

CapTable	"metal3_C_BOTTOM_GPNOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.48853e-05, 3.46765e-05, 4.31909e-05, 5.01669e-05, 5.56084e-05, 5.97006e-05, 6.26953e-05, 6.48454e-05, 6.63643e-05, 6.74284e-05, 6.81671e-05, 6.86783e-05, 6.903e-05, 6.92709e-05, 6.94363e-05, 6.95497e-05, 
			3.63024e-05, 4.64709e-05, 5.52304e-05, 6.23668e-05, 6.79197e-05, 7.20935e-05, 7.51417e-05, 7.73292e-05, 7.88757e-05, 7.99573e-05, 8.07084e-05, 8.12261e-05, 8.15823e-05, 8.18256e-05, 8.19929e-05, 8.21069e-05, 
			4.82237e-05, 5.85088e-05, 6.73264e-05, 7.44978e-05, 8.00761e-05, 8.42585e-05, 8.73168e-05, 8.95086e-05, 9.10582e-05, 9.214e-05, 9.28904e-05, 9.3407e-05, 9.37623e-05, 9.40047e-05, 9.41704e-05, 9.4283e-05, 
			6.03105e-05, 7.06071e-05, 7.9431e-05, 8.65951e-05, 9.21658e-05, 9.63419e-05, 9.9393e-05, 0.000101579, 0.000103121, 0.000104199, 0.000104945, 0.00010546, 0.000105813, 0.000106053, 0.000106217, 0.000106327, 
			7.24332e-05, 8.26974e-05, 9.14981e-05, 9.86468e-05, 0.000104196, 0.000108356, 0.000111388, 0.000113564, 0.000115097, 0.000116169, 0.000116911, 0.000117421, 0.000117769, 0.000118005, 0.000118166, 0.000118276
		)
}

CapTable	"metal3_C_TOP_GPNOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.46567e-05, 3.41655e-05, 4.23503e-05, 4.90037e-05, 5.41658e-05, 5.80362e-05, 6.08627e-05, 6.28843e-05, 6.43165e-05, 6.53147e-05, 6.60101e-05, 6.6489e-05, 6.6819e-05, 6.70445e-05, 6.71974e-05, 6.72994e-05, 
			3.61516e-05, 4.60377e-05, 5.44586e-05, 6.12724e-05, 6.65465e-05, 7.04913e-05, 7.33762e-05, 7.54337e-05, 7.68909e-05, 7.79096e-05, 7.86146e-05, 7.91017e-05, 7.94353e-05, 7.96633e-05, 7.98134e-05, 7.99126e-05, 
			4.81303e-05, 5.81328e-05, 6.66206e-05, 7.34722e-05, 7.87691e-05, 8.27349e-05, 8.56218e-05, 8.7691e-05, 8.91493e-05, 9.01693e-05, 9.08755e-05, 9.13609e-05, 9.16914e-05, 9.19137e-05, 9.20605e-05, 9.21549e-05, 
			6.02685e-05, 7.02917e-05, 7.8785e-05, 8.56453e-05, 9.09338e-05, 9.48933e-05, 9.77802e-05, 9.98428e-05, 0.000101299, 0.000102314, 0.000103018, 0.000103495, 0.000103819, 0.000104036, 0.000104177, 0.000104267, 
			7.24558e-05, 8.24464e-05, 9.09359e-05, 9.77686e-05, 0.000103053, 0.000106996, 0.000109868, 0.000111923, 0.000113371, 0.000114378, 0.000115071, 0.000115543, 0.000115861, 0.000116072, 0.000116208, 0.000116292
		)
}

CapTable	"metal3_C_LATERALNOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.00023349, 0.00011759, 7.22308e-05, 4.72374e-05, 3.16708e-05, 2.14552e-05, 1.4594e-05, 9.93732e-06, 6.76118e-06, 4.59194e-06, 3.10882e-06, 2.09574e-06, 1.40397e-06, 9.32564e-07, 6.12268e-07, 3.95872e-07, 
			0.000237616, 0.000119881, 7.3583e-05, 4.80908e-05, 3.22238e-05, 2.18172e-05, 1.48291e-05, 1.00891e-05, 6.85744e-06, 4.65112e-06, 3.145e-06, 2.11724e-06, 1.41738e-06, 9.42146e-07, 6.21738e-07, 4.07504e-07, 
			0.000238008, 0.000120177, 7.3761e-05, 4.8201e-05, 3.22828e-05, 2.18476e-05, 1.48434e-05, 1.00924e-05, 6.85654e-06, 4.64868e-06, 3.14312e-06, 2.11806e-06, 1.42232e-06, 9.526e-07, 6.38128e-07, 4.3014e-07, 
			0.000237146, 0.000119868, 7.3587e-05, 4.80746e-05, 3.21984e-05, 2.17878e-05, 1.47998e-05, 1.00628e-05, 6.83746e-06, 4.6395e-06, 3.1427e-06, 2.12698e-06, 1.44007e-06, 9.78824e-07, 6.72112e-07, 4.70954e-07, 
			0.000235622, 0.000119287, 7.3253e-05, 4.78616e-05, 3.20486e-05, 2.16878e-05, 1.47459e-05, 1.00315e-05, 6.82466e-06, 4.64218e-06, 3.1593e-06, 2.15522e-06, 1.47878e-06, 1.02653e-06, 7.27574e-07, 5.32806e-07
		)
}

CapTable	"metal3_C_BOTTOM_GP_12NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.68981e-05, 3.66947e-05, 4.52122e-05, 5.24118e-05, 5.83814e-05, 6.32668e-05, 6.72238e-05, 7.04093e-05, 7.29606e-05, 7.49989e-05, 7.66219e-05, 7.79158e-05, 7.89439e-05, 7.97604e-05, 8.04104e-05, 8.09283e-05, 
			3.79477e-05, 4.80101e-05, 5.67646e-05, 6.41888e-05, 7.03683e-05, 7.54434e-05, 7.95714e-05, 8.29047e-05, 8.55836e-05, 8.77321e-05, 8.94456e-05, 9.08107e-05, 9.19028e-05, 9.27662e-05, 9.34571e-05, 9.4007e-05, 
			4.94904e-05, 5.96446e-05, 6.84941e-05, 7.60187e-05, 8.23011e-05, 8.74752e-05, 9.16931e-05, 9.51067e-05, 9.78564e-05, 0.00010006, 0.000101822, 0.000103232, 0.000104356, 0.000105252, 0.000105967, 0.000106536, 
			6.12603e-05, 7.14443e-05, 8.03341e-05, 8.79122e-05, 9.42504e-05, 9.94772e-05, 0.000103751, 0.00010721, 0.000109998, 0.00011224, 0.000114031, 0.000115465, 0.00011661, 0.000117524, 0.000118252, 0.000118833, 
			7.31554e-05, 8.33248e-05, 9.22341e-05, 9.98351e-05, 0.000106204, 0.000111462, 0.000115756, 0.000119239, 0.000122055, 0.000124316, 0.000126128, 0.000127577, 0.000128734, 0.000129658, 0.000130394, 0.000130982
		)
}

CapTable	"metal3_C_TOP_GP_12NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.02639e-05, 1.38627e-05, 1.71254e-05, 2.00102e-05, 2.24922e-05, 2.45802e-05, 2.6311e-05, 2.77283e-05, 2.88795e-05, 2.98099e-05, 3.05581e-05, 3.11572e-05, 3.16385e-05, 3.20241e-05, 3.23318e-05, 3.2577e-05, 
			1.39793e-05, 1.76545e-05, 2.10376e-05, 2.40476e-05, 2.66507e-05, 2.88536e-05, 3.06864e-05, 3.21945e-05, 3.34239e-05, 3.4417e-05, 3.52212e-05, 3.58697e-05, 3.63857e-05, 3.68053e-05, 3.71377e-05, 3.74035e-05, 
			1.78246e-05, 2.15656e-05, 2.50211e-05, 2.81087e-05, 3.07861e-05, 3.3056e-05, 3.49509e-05, 3.65123e-05, 3.7787e-05, 3.88238e-05, 3.96634e-05, 4.03367e-05, 4.08781e-05, 4.13124e-05, 4.16602e-05, 4.19386e-05, 
			2.17687e-05, 2.55519e-05, 2.90611e-05, 3.21994e-05, 3.49254e-05, 3.72392e-05, 3.91687e-05, 4.07649e-05, 4.20724e-05, 4.31319e-05, 4.39929e-05, 4.46845e-05, 4.52405e-05, 4.56866e-05, 4.60442e-05, 4.63305e-05, 
			2.57856e-05, 2.95984e-05, 3.31431e-05, 3.63169e-05, 3.90729e-05, 4.14124e-05, 4.33695e-05, 4.49899e-05, 4.63109e-05, 4.73871e-05, 4.82581e-05, 4.89605e-05, 4.95255e-05, 4.9979e-05, 5.03427e-05, 5.06339e-05
		)
}

CapTable	"metal3_C_LATERAL_12NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000242128, 0.000128929, 8.52344e-05, 6.0924e-05, 4.52304e-05, 3.4304e-05, 2.63662e-05, 2.04484e-05, 1.59619e-05, 1.25202e-05, 9.85904e-06, 7.78802e-06, 6.16864e-06, 4.8975e-06, 3.89678e-06, 3.10672e-06, 
			0.000250314, 0.000134688, 8.95018e-05, 6.42186e-05, 4.7825e-05, 3.637e-05, 2.80212e-05, 2.17778e-05, 1.70315e-05, 1.33819e-05, 1.05532e-05, 8.34758e-06, 6.62048e-06, 5.26254e-06, 4.19224e-06, 3.3465e-06, 
			0.00025392, 0.000137573, 9.17758e-05, 6.60356e-05, 4.92818e-05, 3.75478e-05, 2.8975e-05, 2.2552e-05, 1.76596e-05, 1.38918e-05, 1.09672e-05, 8.68448e-06, 6.8945e-06, 5.48628e-06, 4.37534e-06, 3.49692e-06, 
			0.000255416, 0.000139113, 9.30728e-05, 6.70944e-05, 5.01542e-05, 3.82636e-05, 2.95614e-05, 2.3032e-05, 1.80524e-05, 1.42138e-05, 1.12312e-05, 8.901e-06, 7.0727e-06, 5.63346e-06, 4.49744e-06, 3.5988e-06, 
			0.000255584, 0.000139828, 9.37598e-05, 6.769e-05, 5.06526e-05, 3.86806e-05, 2.99176e-05, 2.3327e-05, 1.82976e-05, 1.44169e-05, 1.14e-05, 9.04162e-06, 7.19028e-06, 5.73226e-06, 4.58098e-06, 3.66994e-06
		)
}

CapTable	"metal3_C_BOTTOM_GP_13NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.82902e-05, 3.83167e-05, 4.69605e-05, 5.4244e-05, 6.02992e-05, 6.5295e-05, 6.94028e-05, 7.27764e-05, 7.55489e-05, 7.78275e-05, 7.97094e-05, 8.12659e-05, 8.25571e-05, 8.36302e-05, 8.45277e-05, 8.52773e-05, 
			3.94137e-05, 4.95803e-05, 5.83787e-05, 6.58346e-05, 7.20744e-05, 7.72583e-05, 8.1548e-05, 8.50958e-05, 8.80279e-05, 9.04565e-05, 9.24707e-05, 9.41432e-05, 9.55382e-05, 9.67029e-05, 9.76801e-05, 9.84988e-05, 
			5.09127e-05, 6.10838e-05, 6.99153e-05, 7.74403e-05, 8.37726e-05, 8.90615e-05, 9.34604e-05, 9.71157e-05, 0.000100151, 0.000102675, 0.000104777, 0.000106532, 0.000107997, 0.000109224, 0.000110256, 0.000111124, 
			6.25602e-05, 7.26953e-05, 8.15292e-05, 8.90881e-05, 9.54758e-05, 0.000100833, 0.000105308, 0.000109038, 0.000112147, 0.00011474, 0.000116905, 0.000118718, 0.000120235, 0.000121511, 0.000122579, 0.00012349, 
			7.42864e-05, 8.43647e-05, 9.3195e-05, 0.000100769, 0.000107193, 0.000112598, 0.000117121, 0.000120905, 0.000124069, 0.000126711, 0.000128923, 0.000130777, 0.000132334, 0.000133647, 0.000134749, 0.000135685
		)
}

CapTable	"metal3_C_TOP_GP_13NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			6.82175e-06, 9.12913e-06, 1.12057e-05, 1.30392e-05, 1.46254e-05, 1.59772e-05, 1.71174e-05, 1.80738e-05, 1.88735e-05, 1.95427e-05, 2.00996e-05, 2.05639e-05, 2.09516e-05, 2.12773e-05, 2.15476e-05, 2.17768e-05, 
			9.10829e-06, 1.14161e-05, 1.35343e-05, 1.54288e-05, 1.70832e-05, 1.85077e-05, 1.97206e-05, 2.07448e-05, 2.16075e-05, 2.23312e-05, 2.2938e-05, 2.34486e-05, 2.38762e-05, 2.42364e-05, 2.45378e-05, 2.47942e-05, 
			1.14193e-05, 1.37322e-05, 1.58775e-05, 1.78099e-05, 1.95116e-05, 2.09833e-05, 2.2245e-05, 2.33155e-05, 2.42198e-05, 2.49827e-05, 2.56262e-05, 2.61658e-05, 2.66227e-05, 2.70089e-05, 2.73339e-05, 2.76094e-05, 
			1.37508e-05, 1.60699e-05, 1.82376e-05, 2.02023e-05, 2.19372e-05, 2.34451e-05, 2.47397e-05, 2.58424e-05, 2.67797e-05, 2.75711e-05, 2.82412e-05, 2.88045e-05, 2.92839e-05, 2.96878e-05, 3.00346e-05, 3.03193e-05, 
			1.61006e-05, 1.84273e-05, 2.06134e-05, 2.26031e-05, 2.4365e-05, 2.58979e-05, 2.72172e-05, 2.83465e-05, 2.93041e-05, 3.0119e-05, 3.08099e-05, 3.13936e-05, 3.18888e-05, 3.23046e-05, 3.2664e-05, 3.29649e-05
		)
}

CapTable	"metal3_C_LATERAL_13NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000243726, 0.000131208, 8.81338e-05, 6.43328e-05, 4.90104e-05, 3.83138e-05, 3.04758e-05, 2.45478e-05, 1.99636e-05, 1.63598e-05, 1.349e-05, 1.11812e-05, 9.30726e-06, 7.77554e-06, 6.51568e-06, 5.47386e-06, 
			0.000252858, 0.00013798, 9.3443e-05, 6.86696e-05, 5.26254e-05, 4.1362e-05, 3.30634e-05, 2.67534e-05, 2.18486e-05, 1.79733e-05, 1.48733e-05, 1.23682e-05, 1.03266e-05, 8.6517e-06, 7.26908e-06, 6.12196e-06, 
			0.000257486, 0.000141898, 9.67362e-05, 7.14718e-05, 5.50198e-05, 4.34212e-05, 3.48386e-05, 2.82858e-05, 2.31728e-05, 1.91178e-05, 1.58627e-05, 1.32233e-05, 1.10662e-05, 9.29092e-06, 7.82184e-06, 6.59978e-06, 
			0.000260018, 0.000144445, 9.89972e-05, 7.34406e-05, 5.6742e-05, 4.49232e-05, 3.61468e-05, 2.94254e-05, 2.41644e-05, 1.99805e-05, 1.66129e-05, 1.38753e-05, 1.16323e-05, 9.7827e-06, 8.24812e-06, 6.96984e-06, 
			0.000261156, 0.000146094, 0.000100563, 7.48538e-05, 5.79936e-05, 4.60296e-05, 3.71296e-05, 3.02876e-05, 2.492e-05, 2.0642e-05, 1.71906e-05, 1.43798e-05, 1.20724e-05, 1.01661e-05, 8.58182e-06, 7.25932e-06
		)
}

CapTable	"metal3_C_BOTTOM_GP_14NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			3.3347e-05, 4.4763e-05, 5.45336e-05, 6.27246e-05, 6.95118e-05, 7.5107e-05, 7.97156e-05, 8.35198e-05, 8.66708e-05, 8.92944e-05, 9.14915e-05, 9.33425e-05, 9.49109e-05, 9.62494e-05, 9.73972e-05, 9.83877e-05, 
			4.5688e-05, 5.70851e-05, 6.6898e-05, 7.51836e-05, 8.21024e-05, 8.78538e-05, 9.26316e-05, 9.6609e-05, 9.99306e-05, 0.000102719, 0.000105072, 0.000107069, 0.000108774, 0.000110239, 0.000111503, 0.000112601, 
			5.8223e-05, 6.94858e-05, 7.92274e-05, 8.75048e-05, 9.44662e-05, 0.000100292, 0.000105165, 0.000109247, 0.00011268, 0.00011558, 0.000118042, 0.000120145, 0.000121951, 0.000123509, 0.000124862, 0.000126043, 
			7.074e-05, 8.18434e-05, 9.14974e-05, 9.9745e-05, 0.000106719, 0.000112586, 0.000117522, 0.00012168, 0.000125195, 0.000128179, 0.000130726, 0.000132912, 0.000134797, 0.000136432, 0.000137857, 0.000139108, 
			8.318e-05, 9.41256e-05, 0.000103697, 0.000111908, 0.000118881, 0.000124776, 0.000129753, 0.000133966, 0.000137545, 0.000140597, 0.000143212, 0.000145465, 0.000147417, 0.000149116, 0.000150603, 0.000151911
		)
}

CapTable	"metal3_C_LATERAL_14NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000245126, 0.000133237, 9.07824e-05, 6.75614e-05, 5.27532e-05, 4.2491e-05, 3.50034e-05, 2.93452e-05, 2.49572e-05, 2.14846e-05, 1.86905e-05, 1.64105e-05, 1.45271e-05, 1.29546e-05, 1.16288e-05, 1.05013e-05, 
			0.00025504, 0.000140876, 9.7039e-05, 7.29134e-05, 5.74376e-05, 4.66492e-05, 3.87294e-05, 3.2706e-05, 2.80044e-05, 2.4259e-05, 2.12258e-05, 1.87348e-05, 1.66645e-05, 1.49254e-05, 1.34508e-05, 1.21897e-05, 
			0.00026057, 0.000145766, 0.000101364, 7.67932e-05, 6.09428e-05, 4.98404e-05, 4.16474e-05, 3.53832e-05, 3.04672e-05, 2.65302e-05, 2.33248e-05, 2.06788e-05, 1.84684e-05, 1.66026e-05, 1.50131e-05, 1.36477e-05, 
			0.000264106, 0.000149371, 0.000104724, 7.989e-05, 6.38102e-05, 5.24946e-05, 4.41064e-05, 3.76644e-05, 3.25864e-05, 2.85014e-05, 2.51608e-05, 2.23914e-05, 2.0068e-05, 1.80989e-05, 1.64146e-05, 1.49624e-05, 
			0.000266336, 0.000152147, 0.000107442, 8.24698e-05, 6.62326e-05, 5.4767e-05, 4.62434e-05, 3.96646e-05, 3.4459e-05, 3.02554e-05, 2.68052e-05, 2.3934e-05, 2.15168e-05, 1.94609e-05, 1.76965e-05, 1.61702e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_51NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			4.6557e-06, 6.4071e-06, 7.9416e-06, 9.2634e-06, 1.03875e-05, 1.13321e-05, 1.21438e-05, 1.28025e-05, 1.33807e-05, 1.38667e-05, 1.42777e-05, 1.46168e-05, 1.49119e-05, 1.51635e-05, 1.53768e-05, 1.556e-05, 
			6.2072e-06, 7.9306e-06, 9.4702e-06, 1.08081e-05, 1.19756e-05, 1.2946e-05, 1.37946e-05, 1.45143e-05, 1.51227e-05, 1.56297e-05, 1.60683e-05, 1.64406e-05, 1.67587e-05, 1.70289e-05, 1.72594e-05, 1.74601e-05, 
			7.7919e-06, 9.4877e-06, 1.1018e-05, 1.23822e-05, 1.35416e-05, 1.45593e-05, 1.54282e-05, 1.61688e-05, 1.6789e-05, 1.7326e-05, 1.77821e-05, 1.81715e-05, 1.85039e-05, 1.87884e-05, 1.90332e-05, 1.92437e-05, 
			9.3651e-06, 1.10469e-05, 1.2561e-05, 1.39308e-05, 1.51237e-05, 1.6153e-05, 1.7027e-05, 1.77822e-05, 1.8427e-05, 1.89772e-05, 1.94462e-05, 1.98478e-05, 2.01952e-05, 2.04891e-05, 2.07442e-05, 2.10791e-05, 
			1.09592e-05, 1.25953e-05, 1.41283e-05, 1.54944e-05, 1.66928e-05, 1.772e-05, 1.86124e-05, 1.93772e-05, 2.00314e-05, 2.05924e-05, 2.10726e-05, 2.14853e-05, 2.18396e-05, 2.22728e-05, 2.25105e-05, 2.27149e-05
		)
}

CapTable	"metal4_C_TOP_GP_51NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.91063e-05, 3.89279e-05, 4.73316e-05, 5.43912e-05, 6.02711e-05, 6.51427e-05, 6.91922e-05, 7.25397e-05, 7.53427e-05, 7.76829e-05, 7.964e-05, 8.12844e-05, 8.2674e-05, 8.38509e-05, 8.48519e-05, 8.5706e-05, 
			4.03598e-05, 5.02881e-05, 5.8812e-05, 6.60045e-05, 7.20444e-05, 7.70734e-05, 8.12974e-05, 8.48257e-05, 8.77829e-05, 9.02643e-05, 9.23581e-05, 9.4128e-05, 9.56294e-05, 9.69085e-05, 9.80009e-05, 9.8934e-05, 
			5.18961e-05, 6.18069e-05, 7.0331e-05, 7.75786e-05, 8.36756e-05, 8.88149e-05, 9.31342e-05, 9.67612e-05, 9.9816e-05, 0.000102397, 0.000104582, 0.000106438, 0.00010802, 0.00010937, 0.000110528, 0.000111524, 
			6.35119e-05, 7.33617e-05, 8.18602e-05, 8.91264e-05, 9.52789e-05, 0.000100472, 0.000104851, 0.000108551, 0.00011168, 0.000114332, 0.000116587, 0.000118507, 0.000120145, 0.000121553, 0.000122766, 0.000123684, 
			7.51508e-05, 8.49135e-05, 9.34063e-05, 0.000100675, 0.000106847, 0.000112075, 0.000116499, 0.00012025, 0.000123434, 0.00012614, 0.000128444, 0.000130412, 0.000132101, 0.000133414, 0.000134694, 0.000135804
		)
}

CapTable	"metal4_C_LATERAL_51NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.00024472, 0.0001326, 8.99038e-05, 6.64394e-05, 5.13924e-05, 4.09142e-05, 3.3205e-05, 2.73838e-05, 2.28166e-05, 1.91934e-05, 1.62793e-05, 1.39148e-05, 1.19601e-05, 1.03386e-05, 8.98328e-06, 7.84302e-06, 
			0.000254146, 0.000139664, 9.55318e-05, 7.11454e-05, 5.5401e-05, 4.44066e-05, 3.6255e-05, 3.0031e-05, 2.51604e-05, 2.1289e-05, 1.81466e-05, 1.55754e-05, 1.34509e-05, 1.16806e-05, 1.01947e-05, 8.93986e-06, 
			0.0002591, 0.000143907, 9.9194e-05, 7.43262e-05, 5.82368e-05, 4.68828e-05, 3.84666e-05, 3.2015e-05, 2.6954e-05, 2.2893e-05, 1.95959e-05, 1.68875e-05, 1.46411e-05, 1.27626e-05, 1.11808e-05, 9.84032e-06, 
			0.00026197, 0.000146841, 0.00010189, 7.67488e-05, 6.03944e-05, 4.8837e-05, 4.0251e-05, 3.36328e-05, 2.8414e-05, 2.42228e-05, 2.08088e-05, 1.79952e-05, 1.56548e-05, 1.36919e-05, 1.20328e-05, 1.06349e-05, 
			0.0002635, 0.000148942, 0.000103891, 7.86166e-05, 6.21182e-05, 5.0434e-05, 4.17156e-05, 3.49778e-05, 2.96496e-05, 2.53586e-05, 2.18534e-05, 1.89577e-05, 1.65424e-05, 1.45222e-05, 1.28015e-05, 1.13351e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_52NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			5.5905e-06, 7.4089e-06, 8.956e-06, 1.03175e-05, 1.15397e-05, 1.26501e-05, 1.36651e-05, 1.45932e-05, 1.54458e-05, 1.62236e-05, 1.69369e-05, 1.75853e-05, 1.81804e-05, 1.87156e-05, 1.9209e-05, 1.96566e-05, 
			6.9331e-06, 8.6613e-06, 1.02038e-05, 1.15968e-05, 1.28684e-05, 1.40351e-05, 1.51064e-05, 1.609e-05, 1.69958e-05, 1.78237e-05, 1.85875e-05, 1.92843e-05, 1.99163e-05, 2.04976e-05, 2.10268e-05, 2.15046e-05, 
			8.3087e-06, 9.9891e-06, 1.15299e-05, 1.2944e-05, 1.42458e-05, 1.54501e-05, 1.65587e-05, 1.75826e-05, 1.85233e-05, 1.93903e-05, 2.01802e-05, 2.09096e-05, 2.15767e-05, 2.21811e-05, 2.2737e-05, 2.32426e-05, 
			9.7197e-06, 1.13704e-05, 1.29111e-05, 1.43391e-05, 1.56631e-05, 1.68919e-05, 1.80264e-05, 1.90795e-05, 2.00479e-05, 2.09354e-05, 2.17566e-05, 2.25074e-05, 2.31927e-05, 2.38223e-05, 2.43973e-05, 2.4922e-05, 
			1.11639e-05, 1.27906e-05, 1.43313e-05, 1.57698e-05, 1.71117e-05, 1.83563e-05, 1.95124e-05, 2.05782e-05, 2.15675e-05, 2.24781e-05, 2.33128e-05, 2.40823e-05, 2.4788e-05, 2.54325e-05, 2.60229e-05, 2.65609e-05
		)
}

CapTable	"metal4_C_TOP_GP_52NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.42645e-05, 1.80529e-05, 2.14046e-05, 2.44307e-05, 2.71899e-05, 2.97157e-05, 3.20326e-05, 3.41583e-05, 3.61052e-05, 3.78885e-05, 3.95175e-05, 4.10047e-05, 4.2359e-05, 4.35959e-05, 4.47175e-05, 4.57381e-05, 
			1.78269e-05, 2.15054e-05, 2.48858e-05, 2.801e-05, 3.08988e-05, 3.35681e-05, 3.60324e-05, 3.83032e-05, 4.03906e-05, 4.23075e-05, 4.40605e-05, 4.56663e-05, 4.71333e-05, 4.84711e-05, 4.96897e-05, 5.08003e-05, 
			2.14043e-05, 2.50615e-05, 2.84795e-05, 3.1677e-05, 3.46572e-05, 3.74247e-05, 3.99891e-05, 4.23578e-05, 4.45411e-05, 4.65487e-05, 4.8393e-05, 5.00806e-05, 5.16248e-05, 5.30365e-05, 5.43246e-05, 5.55003e-05, 
			2.50483e-05, 2.87094e-05, 3.21689e-05, 3.54257e-05, 3.84747e-05, 4.13151e-05, 4.39534e-05, 4.63933e-05, 4.86479e-05, 5.07258e-05, 5.26336e-05, 5.43838e-05, 5.59885e-05, 5.74549e-05, 5.87969e-05, 6.0018e-05, 
			2.87651e-05, 3.24408e-05, 3.59391e-05, 3.92436e-05, 4.23441e-05, 4.52397e-05, 4.7933e-05, 5.04318e-05, 5.27405e-05, 5.48693e-05, 5.68288e-05, 5.86283e-05, 6.028e-05, 6.17903e-05, 6.31717e-05, 6.44343e-05
		)
}

CapTable	"metal4_C_LATERAL_52NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000254662, 0.000145295, 0.000104335, 8.17958e-05, 6.70684e-05, 5.6465e-05, 4.83514e-05, 4.1888e-05, 3.65912e-05, 3.21642e-05, 2.8407e-05, 2.51854e-05, 2.23952e-05, 1.99668e-05, 1.7836e-05, 1.59606e-05, 
			0.000267988, 0.000155569, 0.000112587, 8.86502e-05, 7.28818e-05, 6.14698e-05, 5.27092e-05, 4.57148e-05, 3.99738e-05, 3.51706e-05, 3.10896e-05, 2.75842e-05, 2.4551e-05, 2.19018e-05, 1.95791e-05, 1.75362e-05, 
			0.00027591, 0.000162111, 0.000118038, 9.3276e-05, 7.6856e-05, 6.49272e-05, 5.57452e-05, 4.83986e-05, 4.23626e-05, 3.7302e-05, 3.30028e-05, 2.93028e-05, 2.60948e-05, 2.3298e-05, 2.08388e-05, 1.86705e-05, 
			0.000280854, 0.000166599, 0.000121894, 9.65952e-05, 7.97542e-05, 6.7474e-05, 5.79992e-05, 5.04042e-05, 4.41532e-05, 3.89108e-05, 3.44458e-05, 3.06038e-05, 2.72718e-05, 2.43578e-05, 2.17968e-05, 1.9538e-05, 
			0.000283818, 0.000169699, 0.000124664, 9.90376e-05, 8.19072e-05, 6.9388e-05, 5.97106e-05, 5.1939e-05, 4.5531e-05, 4.01486e-05, 3.55664e-05, 3.16154e-05, 2.8183e-05, 2.51822e-05, 2.25434e-05, 2.02138e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_53NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.3011e-05, 1.60138e-05, 1.84356e-05, 2.04782e-05, 2.2258e-05, 2.38458e-05, 2.52886e-05, 2.66174e-05, 2.7854e-05, 2.90138e-05, 3.01077e-05, 3.11441e-05, 3.21294e-05, 3.30684e-05, 3.39655e-05, 3.48232e-05, 
			1.514e-05, 1.77767e-05, 2.00268e-05, 2.19994e-05, 2.3764e-05, 2.53698e-05, 2.68493e-05, 2.8227e-05, 2.95195e-05, 3.07393e-05, 3.18956e-05, 3.29956e-05, 3.4045e-05, 3.50479e-05, 3.60077e-05, 3.69277e-05, 
			1.7081e-05, 1.94892e-05, 2.16174e-05, 2.35334e-05, 2.52812e-05, 2.6893e-05, 2.83948e-05, 2.98047e-05, 3.11359e-05, 3.23982e-05, 3.35996e-05, 3.47461e-05, 3.58426e-05, 3.68927e-05, 3.78998e-05, 3.88664e-05, 
			1.8908e-05, 2.11596e-05, 2.32032e-05, 2.50776e-05, 2.68108e-05, 2.8427e-05, 2.99454e-05, 3.13788e-05, 3.27398e-05, 3.40351e-05, 3.52719e-05, 3.6455e-05, 3.75888e-05, 3.86765e-05, 3.97213e-05, 4.07253e-05, 
			2.0666e-05, 2.28062e-05, 2.47898e-05, 2.6634e-05, 2.8357e-05, 2.99766e-05, 3.15072e-05, 3.29606e-05, 3.43454e-05, 3.5667e-05, 3.69323e-05, 3.81453e-05, 3.93095e-05, 4.04282e-05, 4.15038e-05, 4.25386e-05
		)
}

CapTable	"metal4_C_LATERAL_53NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000260168, 0.000152568, 0.000113186, 9.20558e-05, 7.8575e-05, 6.9059e-05, 6.18816e-05, 5.621e-05, 5.15718e-05, 4.7678e-05, 4.4342e-05, 4.1437e-05, 3.8874e-05, 3.65882e-05, 3.45312e-05, 3.26666e-05, 
			0.00027553, 0.0001649, 0.000123531, 0.000101032, 8.6528e-05, 7.62122e-05, 6.83876e-05, 6.21784e-05, 5.70846e-05, 5.27988e-05, 4.91208e-05, 4.59142e-05, 4.30824e-05, 4.05556e-05, 3.82812e-05, 3.62188e-05, 
			0.000285546, 0.00017353, 0.000131057, 0.000107715, 9.25348e-05, 8.1675e-05, 7.33982e-05, 6.68058e-05, 6.1382e-05, 5.68086e-05, 5.2877e-05, 4.9445e-05, 4.64112e-05, 4.37022e-05, 4.12622e-05, 3.90488e-05, 
			0.000292602, 0.000180086, 0.000136938, 0.000113011, 9.73622e-05, 8.6103e-05, 7.74856e-05, 7.06002e-05, 6.49212e-05, 6.0123e-05, 5.59916e-05, 5.23808e-05, 4.9186e-05, 4.6331e-05, 4.37578e-05, 4.14226e-05, 
			0.000297628, 0.000185194, 0.000141652, 0.000117335, 0.000101336, 8.97774e-05, 8.09048e-05, 7.37894e-05, 6.79076e-05, 6.29294e-05, 5.8637e-05, 5.4881e-05, 5.15548e-05, 4.858e-05, 4.58974e-05, 4.34616e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_41NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			5.2355e-06, 7.1157e-06, 8.7872e-06, 1.02434e-05, 1.15075e-05, 1.2573e-05, 1.34846e-05, 1.42389e-05, 1.48884e-05, 1.54353e-05, 1.58909e-05, 1.62798e-05, 1.66091e-05, 1.68884e-05, 1.71265e-05, 1.73273e-05, 
			6.9505e-06, 8.8056e-06, 1.049e-05, 1.19769e-05, 1.32803e-05, 1.4384e-05, 1.53408e-05, 1.61529e-05, 1.68399e-05, 1.74176e-05, 1.79117e-05, 1.83298e-05, 1.86856e-05, 1.89909e-05, 1.92319e-05, 1.94567e-05, 
			8.6836e-06, 1.05226e-05, 1.22039e-05, 1.37151e-05, 1.50244e-05, 1.61706e-05, 1.71519e-05, 1.79843e-05, 1.8698e-05, 1.9303e-05, 1.98192e-05, 2.02599e-05, 2.06326e-05, 2.09383e-05, 2.12163e-05, 2.16669e-05, 
			1.04207e-05, 1.22389e-05, 1.3912e-05, 1.54317e-05, 1.67681e-05, 1.79276e-05, 1.89232e-05, 1.97788e-05, 2.05088e-05, 2.1133e-05, 2.16666e-05, 2.21013e-05, 2.24945e-05, 2.30788e-05, 2.33265e-05, 2.35375e-05, 
			1.21606e-05, 1.39463e-05, 1.56299e-05, 1.71492e-05, 1.84886e-05, 1.9658e-05, 2.06676e-05, 2.15356e-05, 2.2281e-05, 2.29168e-05, 2.34438e-05, 2.39146e-05, 2.45555e-05, 2.4863e-05, 2.51247e-05, 2.53504e-05
		)
}

CapTable	"metal4_C_TOP_GP_41NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.87245e-05, 3.85603e-05, 4.69674e-05, 5.40202e-05, 5.98825e-05, 6.47392e-05, 6.87722e-05, 7.21073e-05, 7.48906e-05, 7.72124e-05, 7.91499e-05, 8.07804e-05, 8.21544e-05, 8.3317e-05, 8.43039e-05, 8.51475e-05, 
			3.99455e-05, 4.99137e-05, 5.84596e-05, 6.56603e-05, 7.16979e-05, 7.6724e-05, 8.0932e-05, 8.44425e-05, 8.73815e-05, 8.9845e-05, 9.192e-05, 9.36724e-05, 9.51572e-05, 9.64187e-05, 9.75154e-05, 9.84347e-05, 
			5.14944e-05, 6.14628e-05, 7.00305e-05, 7.73009e-05, 8.34102e-05, 8.85454e-05, 9.28547e-05, 9.64659e-05, 9.9507e-05, 0.000102071, 0.000104238, 0.000106076, 0.000107643, 0.000108994, 0.000110135, 0.000110887, 
			6.31513e-05, 7.30833e-05, 8.16474e-05, 8.89479e-05, 9.51165e-05, 0.000100315, 0.00010469, 0.00010838, 0.000111496, 0.000114133, 0.00011637, 0.000118297, 0.000119918, 0.000121038, 0.00012228, 0.000123353, 
			7.48654e-05, 8.47323e-05, 9.32999e-05, 0.000100617, 0.000106814, 0.000112057, 0.000116483, 0.000120229, 0.000123401, 0.000126097, 0.000128408, 0.00013036, 0.000131778, 0.000133257, 0.000134537, 0.000135649
		)
}

CapTable	"metal4_C_LATERAL_41NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000244552, 0.000132336, 8.95474e-05, 6.60044e-05, 5.0881e-05, 4.03398e-05, 3.25842e-05, 2.67148e-05, 2.2123e-05, 1.84823e-05, 1.55632e-05, 1.31798e-05, 1.12215e-05, 9.59862e-06, 8.24356e-06, 7.10424e-06, 
			0.000253878, 0.000139284, 9.50444e-05, 7.05598e-05, 5.47368e-05, 4.3664e-05, 3.54642e-05, 2.92036e-05, 2.43056e-05, 2.04094e-05, 1.72543e-05, 1.46748e-05, 1.25452e-05, 1.07724e-05, 9.28366e-06, 8.02862e-06, 
			0.000258706, 0.000143393, 9.85566e-05, 7.3586e-05, 5.73994e-05, 4.5979e-05, 3.75104e-05, 3.10258e-05, 2.5923e-05, 2.1841e-05, 1.85288e-05, 1.58101e-05, 1.35564e-05, 1.16717e-05, 1.00867e-05, 8.7611e-06, 
			0.00026144, 0.000146173, 0.00010108, 7.58314e-05, 5.93884e-05, 4.77594e-05, 3.91118e-05, 3.24512e-05, 2.72002e-05, 2.2985e-05, 1.95534e-05, 1.67247e-05, 1.43745e-05, 1.24262e-05, 1.07585e-05, 9.34148e-06, 
			0.000262818, 0.000148098, 0.000102913, 7.75238e-05, 6.09374e-05, 4.9166e-05, 4.03884e-05, 3.36044e-05, 2.8241e-05, 2.39222e-05, 2.03942e-05, 1.74824e-05, 1.50735e-05, 1.303e-05, 1.12983e-05, 9.8216e-06
		)
}

CapTable	"metal4_C_BOTTOM_GP_42NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			6.3357e-06, 8.3761e-06, 1.01226e-05, 1.16679e-05, 1.30598e-05, 1.43273e-05, 1.54853e-05, 1.6544e-05, 1.75151e-05, 1.83981e-05, 1.92033e-05, 1.99402e-05, 2.06035e-05, 2.12116e-05, 2.17614e-05, 2.22594e-05, 
			7.8736e-06, 9.8181e-06, 1.15647e-05, 1.31505e-05, 1.46001e-05, 1.59312e-05, 1.71539e-05, 1.82748e-05, 1.93072e-05, 2.02491e-05, 2.11116e-05, 2.18932e-05, 2.26097e-05, 2.32596e-05, 2.38453e-05, 2.4379e-05, 
			9.4388e-06, 1.13362e-05, 1.30839e-05, 1.46937e-05, 1.61787e-05, 1.75525e-05, 1.88165e-05, 1.99801e-05, 2.10525e-05, 2.20294e-05, 2.29297e-05, 2.37497e-05, 2.44981e-05, 2.5172e-05, 2.57887e-05, 2.63477e-05, 
			1.1038e-05, 1.29069e-05, 1.46566e-05, 1.62831e-05, 1.77918e-05, 1.91934e-05, 2.04867e-05, 2.16813e-05, 2.27764e-05, 2.37864e-05, 2.47092e-05, 2.55501e-05, 2.63186e-05, 2.70201e-05, 2.76547e-05, 2.82307e-05, 
			1.26696e-05, 1.45144e-05, 1.62655e-05, 1.79006e-05, 1.94262e-05, 2.08455e-05, 2.2154e-05, 2.33698e-05, 2.44881e-05, 2.55165e-05, 2.6453e-05, 2.73131e-05, 2.80986e-05, 2.88128e-05, 2.94611e-05, 3.00513e-05
		)
}

CapTable	"metal4_C_TOP_GP_42NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.37573e-05, 1.74887e-05, 2.07944e-05, 2.37819e-05, 2.6506e-05, 2.90007e-05, 3.12869e-05, 3.33829e-05, 3.52987e-05, 3.70514e-05, 3.86481e-05, 4.00993e-05, 4.14208e-05, 4.26171e-05, 4.37003e-05, 4.46801e-05, 
			1.72344e-05, 2.08708e-05, 2.42183e-05, 2.73107e-05, 3.01697e-05, 3.28088e-05, 3.52425e-05, 3.7483e-05, 3.95349e-05, 4.1414e-05, 4.31312e-05, 4.46973e-05, 4.612e-05, 4.74132e-05, 4.8587e-05, 4.96495e-05, 
			2.07482e-05, 2.43762e-05, 2.7772e-05, 3.09449e-05, 3.38995e-05, 3.66383e-05, 3.91733e-05, 4.15087e-05, 4.36543e-05, 4.56244e-05, 4.74225e-05, 4.90637e-05, 5.05571e-05, 5.19197e-05, 5.31545e-05, 5.42747e-05, 
			2.4345e-05, 2.79889e-05, 3.14328e-05, 3.46707e-05, 3.7698e-05, 4.05102e-05, 4.31155e-05, 4.55221e-05, 4.7738e-05, 4.97686e-05, 5.16276e-05, 5.33267e-05, 5.48754e-05, 5.62821e-05, 5.75647e-05, 5.87276e-05, 
			2.80304e-05, 3.16958e-05, 3.51841e-05, 3.84742e-05, 4.15538e-05, 4.44217e-05, 4.7084e-05, 4.95412e-05, 5.18047e-05, 5.38811e-05, 5.57888e-05, 5.75297e-05, 5.91184e-05, 6.05638e-05, 6.18805e-05, 6.30758e-05
		)
}

CapTable	"metal4_C_LATERAL_42NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000254458, 0.000144976, 0.000103914, 8.12832e-05, 6.64762e-05, 5.58024e-05, 4.76306e-05, 4.11188e-05, 3.57846e-05, 3.133e-05, 2.75566e-05, 2.4323e-05, 2.15336e-05, 1.91061e-05, 1.69865e-05, 1.51274e-05, 
			0.000267698, 0.000155162, 0.000112071, 8.80378e-05, 7.21862e-05, 6.0704e-05, 5.18856e-05, 4.48452e-05, 3.9071e-05, 3.42454e-05, 3.01512e-05, 2.66454e-05, 2.36134e-05, 2.09766e-05, 1.86749e-05, 1.66523e-05, 
			0.000275518, 0.000161609, 0.000117422, 9.25624e-05, 7.60608e-05, 6.40642e-05, 5.48282e-05, 4.74432e-05, 4.13772e-05, 3.63032e-05, 3.19948e-05, 2.82996e-05, 2.51048e-05, 2.23264e-05, 1.98942e-05, 1.77579e-05, 
			0.000280378, 0.000165997, 0.000121181, 9.57862e-05, 7.88662e-05, 6.65234e-05, 5.70008e-05, 4.93716e-05, 4.31026e-05, 3.7849e-05, 3.33872e-05, 2.95602e-05, 2.6246e-05, 2.33608e-05, 2.08346e-05, 1.86157e-05, 
			0.00028324, 0.000169001, 0.000123858, 9.81412e-05, 8.094e-05, 6.83628e-05, 5.8648e-05, 5.0848e-05, 4.44292e-05, 3.90484e-05, 3.44762e-05, 3.05472e-05, 2.7145e-05, 2.41814e-05, 2.15854e-05, 1.93019e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_43NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.3607e-05, 1.68304e-05, 1.94488e-05, 2.16714e-05, 2.36184e-05, 2.53619e-05, 2.69516e-05, 2.84185e-05, 2.9785e-05, 3.10665e-05, 3.22746e-05, 3.34173e-05, 3.45014e-05, 3.55319e-05, 3.65129e-05, 3.74481e-05, 
			1.5918e-05, 1.87745e-05, 2.12274e-05, 2.33886e-05, 2.533e-05, 2.71016e-05, 2.87389e-05, 3.02649e-05, 3.16972e-05, 3.30483e-05, 3.43273e-05, 3.5542e-05, 3.66978e-05, 3.77993e-05, 3.88499e-05, 3.98533e-05, 
			1.8042e-05, 2.06724e-05, 2.3009e-05, 2.51204e-05, 2.7052e-05, 2.88388e-05, 3.05052e-05, 3.20708e-05, 3.35486e-05, 3.49486e-05, 3.62789e-05, 3.75455e-05, 3.87536e-05, 3.99071e-05, 4.10094e-05, 4.20633e-05, 
			2.0055e-05, 2.25318e-05, 2.47886e-05, 2.68642e-05, 2.87878e-05, 3.05836e-05, 3.22728e-05, 3.38676e-05, 3.53796e-05, 3.68171e-05, 3.81869e-05, 3.94938e-05, 4.07426e-05, 4.19369e-05, 4.30796e-05, 4.41737e-05, 
			2.2004e-05, 2.43698e-05, 2.65712e-05, 2.86202e-05, 3.05372e-05, 3.23416e-05, 3.40472e-05, 3.56648e-05, 3.72044e-05, 3.86711e-05, 4.00719e-05, 4.1411e-05, 4.26925e-05, 4.39195e-05, 4.50951e-05, 4.62216e-05
		)
}

CapTable	"metal4_C_LATERAL_43NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000259678, 0.000151936, 0.000112431, 9.11926e-05, 7.76146e-05, 6.80108e-05, 6.07534e-05, 5.50094e-05, 5.03058e-05, 4.63538e-05, 4.2966e-05, 4.00158e-05, 3.74136e-05, 3.50946e-05, 3.30102e-05, 3.11232e-05, 
			0.00027491, 0.000164145, 0.000122656, 0.000100047, 8.5445e-05, 7.50394e-05, 6.7133e-05, 6.085e-05, 5.56898e-05, 5.1345e-05, 4.76152e-05, 4.43634e-05, 4.14932e-05, 3.8934e-05, 3.66332e-05, 3.45498e-05, 
			0.000284796, 0.000172659, 0.000130066, 0.000106615, 9.1337e-05, 8.03872e-05, 7.20288e-05, 6.5363e-05, 5.98738e-05, 5.52426e-05, 5.12606e-05, 4.77852e-05, 4.47148e-05, 4.19754e-05, 3.9511e-05, 3.7279e-05, 
			0.000291748, 0.000179102, 0.000135836, 0.000111803, 9.60562e-05, 8.47084e-05, 7.60112e-05, 6.90544e-05, 6.33122e-05, 5.84586e-05, 5.42794e-05, 5.0628e-05, 4.73994e-05, 4.45166e-05, 4.1922e-05, 3.95706e-05, 
			0.000296662, 0.000184102, 0.000140446, 0.000116024, 9.99298e-05, 8.82854e-05, 7.93358e-05, 7.21522e-05, 6.62106e-05, 6.11802e-05, 5.68434e-05, 5.30502e-05, 4.96934e-05, 4.66942e-05, 4.3993e-05, 4.1544e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_31NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			6.6791e-06, 8.9772e-06, 1.10477e-05, 1.28851e-05, 1.4466e-05, 1.58351e-05, 1.69746e-05, 1.79519e-05, 1.87704e-05, 1.9449e-05, 2.00232e-05, 2.05056e-05, 2.09081e-05, 2.12437e-05, 2.15281e-05, 2.1768e-05, 
			8.8304e-06, 1.11068e-05, 1.3201e-05, 1.50718e-05, 1.6723e-05, 1.81284e-05, 1.93435e-05, 2.03714e-05, 2.12317e-05, 2.1962e-05, 2.25784e-05, 2.30931e-05, 2.35288e-05, 2.38976e-05, 2.42106e-05, 2.44643e-05, 
			1.09933e-05, 1.32382e-05, 1.53461e-05, 1.72312e-05, 1.891e-05, 2.0365e-05, 2.16034e-05, 2.26638e-05, 2.35642e-05, 2.43234e-05, 2.49634e-05, 2.55061e-05, 2.59655e-05, 2.63431e-05, 2.66684e-05, 2.69493e-05, 
			1.31429e-05, 1.53847e-05, 1.74722e-05, 1.93844e-05, 2.10763e-05, 2.25415e-05, 2.3809e-05, 2.48928e-05, 2.58086e-05, 2.65908e-05, 2.72534e-05, 2.7801e-05, 2.82708e-05, 2.86769e-05, 2.9028e-05, 2.93304e-05, 
			1.52768e-05, 1.74934e-05, 1.9591e-05, 2.14969e-05, 2.31966e-05, 2.46818e-05, 2.59608e-05, 2.70544e-05, 2.79918e-05, 2.879e-05, 2.94402e-05, 3.0015e-05, 3.05107e-05, 3.09403e-05, 3.13341e-05, 3.16445e-05
		)
}

CapTable	"metal4_C_TOP_GP_31NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.76929e-05, 3.74376e-05, 4.57557e-05, 5.27051e-05, 5.84628e-05, 6.32089e-05, 6.7118e-05, 7.03405e-05, 7.29938e-05, 7.51874e-05, 7.70021e-05, 7.85052e-05, 7.97573e-05, 8.08037e-05, 8.1677e-05, 8.24092e-05, 
			3.87546e-05, 4.86879e-05, 5.71844e-05, 6.43092e-05, 7.02354e-05, 7.51474e-05, 7.92111e-05, 8.25702e-05, 8.53569e-05, 8.76666e-05, 8.95833e-05, 9.11854e-05, 9.25195e-05, 9.36372e-05, 9.45732e-05, 9.53736e-05, 
			5.02097e-05, 6.0192e-05, 6.87387e-05, 7.59328e-05, 8.19396e-05, 8.6929e-05, 9.10756e-05, 9.4517e-05, 9.73736e-05, 9.97532e-05, 0.000101739, 0.000103396, 0.000104784, 0.000105964, 0.000106948, 0.000107774, 
			6.18291e-05, 7.18041e-05, 8.03712e-05, 8.75942e-05, 9.36341e-05, 9.86717e-05, 0.000102863, 0.000106348, 0.000109258, 0.00011168, 0.000113706, 0.000115418, 0.00011685, 0.000118043, 0.000119046, 0.00011989, 
			7.35222e-05, 8.34674e-05, 9.20278e-05, 9.92611e-05, 0.000105319, 0.000110371, 0.000114581, 0.000118098, 0.00012103, 0.00012348, 0.000125562, 0.000127285, 0.000128726, 0.000129931, 0.000130918, 0.000131787
		)
}

CapTable	"metal4_C_LATERAL_31NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000244216, 0.000131777, 8.87966e-05, 6.50938e-05, 4.98652e-05, 3.9228e-05, 3.14484e-05, 2.55386e-05, 2.09628e-05, 1.73626e-05, 1.44847e-05, 1.21642e-05, 1.02766e-05, 8.72964e-06, 7.45392e-06, 6.39576e-06, 
			0.00025334, 0.000138496, 9.40456e-05, 6.9395e-05, 5.34616e-05, 4.23112e-05, 3.40894e-05, 2.78394e-05, 2.29814e-05, 1.91354e-05, 1.60543e-05, 1.35595e-05, 1.15227e-05, 9.8472e-06, 8.46016e-06, 7.3041e-06, 
			0.000257924, 0.000142373, 9.73082e-05, 7.2199e-05, 5.58904e-05, 4.4427e-05, 3.5963e-05, 2.95022e-05, 2.44612e-05, 2.04614e-05, 1.72466e-05, 1.46359e-05, 1.24975e-05, 1.07309e-05, 9.26558e-06, 8.04268e-06, 
			0.000260428, 0.000144897, 9.95866e-05, 7.42024e-05, 5.76866e-05, 4.60408e-05, 3.7411e-05, 3.08112e-05, 2.56474e-05, 2.15402e-05, 1.82306e-05, 1.5534e-05, 1.33192e-05, 1.14901e-05, 9.96696e-06, 8.69262e-06, 
			0.000261592, 0.000146593, 0.00010122, 7.5721e-05, 5.90774e-05, 4.73152e-05, 3.85922e-05, 3.18966e-05, 2.66482e-05, 2.2464e-05, 1.90818e-05, 1.6323e-05, 1.40543e-05, 1.21757e-05, 1.06109e-05, 9.29454e-06
		)
}

CapTable	"metal4_C_BOTTOM_GP_32NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			7.6349e-06, 1.00706e-05, 1.21852e-05, 1.40712e-05, 1.57771e-05, 1.73326e-05, 1.87527e-05, 2.00473e-05, 2.1227e-05, 2.2302e-05, 2.32721e-05, 2.41534e-05, 2.49419e-05, 2.56575e-05, 2.62939e-05, 2.68699e-05, 
			9.5504e-06, 1.18923e-05, 1.40179e-05, 1.5958e-05, 1.774e-05, 1.93766e-05, 2.08809e-05, 2.22556e-05, 2.35101e-05, 2.46567e-05, 2.56913e-05, 2.66342e-05, 2.74848e-05, 2.82463e-05, 2.89344e-05, 2.9552e-05, 
			1.1527e-05, 1.3822e-05, 1.59548e-05, 1.79319e-05, 1.97606e-05, 2.14505e-05, 2.30088e-05, 2.44352e-05, 2.5743e-05, 2.69303e-05, 2.80151e-05, 2.89923e-05, 2.98804e-05, 3.06805e-05, 3.14003e-05, 3.20448e-05, 
			1.35577e-05, 1.58293e-05, 1.79683e-05, 1.99714e-05, 2.18333e-05, 2.35572e-05, 2.5152e-05, 2.66123e-05, 2.79555e-05, 2.91796e-05, 3.029e-05, 3.12994e-05, 3.22133e-05, 3.30367e-05, 3.37779e-05, 3.44446e-05, 
			1.56485e-05, 1.78973e-05, 2.00412e-05, 2.20607e-05, 2.39418e-05, 2.56934e-05, 2.73053e-05, 2.87958e-05, 3.01558e-05, 3.14037e-05, 3.2539e-05, 3.35686e-05, 3.44985e-05, 3.53401e-05, 3.60991e-05, 3.67819e-05
		)
}

CapTable	"metal4_C_TOP_GP_32NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.31431e-05, 1.67644e-05, 1.99946e-05, 2.2928e-05, 2.56085e-05, 2.80639e-05, 3.03113e-05, 3.23668e-05, 3.42385e-05, 3.59377e-05, 3.74796e-05, 3.88702e-05, 4.01281e-05, 4.12555e-05, 4.2271e-05, 4.31776e-05, 
			1.65756e-05, 2.01327e-05, 2.34231e-05, 2.64754e-05, 2.92982e-05, 3.19046e-05, 3.43003e-05, 3.64968e-05, 3.85039e-05, 4.03277e-05, 4.19869e-05, 4.34836e-05, 4.48343e-05, 4.60541e-05, 4.71485e-05, 4.81294e-05, 
			2.0065e-05, 2.36344e-05, 2.69894e-05, 3.01295e-05, 3.30554e-05, 3.57639e-05, 3.82592e-05, 4.05524e-05, 4.26468e-05, 4.45595e-05, 4.62909e-05, 4.78641e-05, 4.92794e-05, 5.05563e-05, 5.17053e-05, 5.27388e-05, 
			2.36493e-05, 2.72515e-05, 3.06665e-05, 3.38784e-05, 3.68771e-05, 3.96606e-05, 4.22278e-05, 4.45907e-05, 4.67487e-05, 4.87164e-05, 5.05062e-05, 5.21272e-05, 5.35913e-05, 5.49109e-05, 5.6102e-05, 5.71692e-05, 
			2.73275e-05, 3.09661e-05, 3.44328e-05, 3.76981e-05, 4.07544e-05, 4.35904e-05, 4.62139e-05, 4.8621e-05, 5.08298e-05, 5.28389e-05, 5.4667e-05, 5.63242e-05, 5.78245e-05, 5.91769e-05, 6.03943e-05, 6.14892e-05
		)
}

CapTable	"metal4_C_LATERAL_32NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000253918, 0.000144236, 0.000102987, 8.01868e-05, 6.52314e-05, 5.44324e-05, 4.6159e-05, 3.9569e-05, 3.41806e-05, 2.96904e-05, 2.5901e-05, 2.26688e-05, 1.98943e-05, 1.74962e-05, 1.54177e-05, 1.36063e-05, 
			0.000266916, 0.00015417, 0.000110886, 8.66796e-05, 7.06788e-05, 5.90718e-05, 5.01538e-05, 4.30406e-05, 3.72182e-05, 3.2363e-05, 2.82634e-05, 2.4765e-05, 2.17592e-05, 1.91627e-05, 1.69072e-05, 1.4943e-05, 
			0.000274456, 0.000160353, 0.000115975, 9.09446e-05, 7.4299e-05, 6.21856e-05, 5.2858e-05, 4.54074e-05, 3.93012e-05, 3.42082e-05, 2.9903e-05, 2.62296e-05, 2.30702e-05, 2.03382e-05, 1.79654e-05, 1.58974e-05, 
			0.000279054, 0.000164474, 0.000119474, 9.39182e-05, 7.68636e-05, 6.44142e-05, 5.48092e-05, 4.7128e-05, 4.08268e-05, 3.5567e-05, 3.11198e-05, 2.73204e-05, 2.40524e-05, 2.12254e-05, 1.87681e-05, 1.66252e-05, 
			0.000281648, 0.000167216, 0.000121902, 9.60352e-05, 7.87098e-05, 6.60372e-05, 5.62528e-05, 4.84112e-05, 4.19754e-05, 3.65984e-05, 3.2048e-05, 2.81602e-05, 2.4814e-05, 2.1917e-05, 1.93976e-05, 1.71989e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_33NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.4846e-05, 1.84978e-05, 2.1522e-05, 2.41308e-05, 2.64418e-05, 2.85294e-05, 3.04402e-05, 3.22057e-05, 3.38477e-05, 3.53815e-05, 3.68191e-05, 3.81697e-05, 3.94405e-05, 4.06375e-05, 4.17662e-05, 4.28311e-05, 
			1.7595e-05, 2.08994e-05, 2.37862e-05, 2.63626e-05, 2.86994e-05, 3.08448e-05, 3.28295e-05, 3.46787e-05, 3.64085e-05, 3.80318e-05, 3.95585e-05, 4.09968e-05, 4.23534e-05, 4.36338e-05, 4.48431e-05, 4.5986e-05, 
			2.0188e-05, 2.3289e-05, 2.60828e-05, 2.86322e-05, 3.09806e-05, 3.31596e-05, 3.51916e-05, 3.70959e-05, 3.88849e-05, 4.05692e-05, 4.21578e-05, 4.36575e-05, 4.50744e-05, 4.64141e-05, 4.76814e-05, 4.88805e-05, 
			2.2701e-05, 2.56678e-05, 2.84002e-05, 3.09314e-05, 3.32866e-05, 3.5488e-05, 3.75536e-05, 3.94964e-05, 4.13286e-05, 4.30577e-05, 4.46919e-05, 4.62372e-05, 4.76998e-05, 4.90844e-05, 5.03957e-05, 5.16379e-05, 
			2.5177e-05, 2.80476e-05, 3.07372e-05, 3.32534e-05, 3.56136e-05, 3.78304e-05, 3.99202e-05, 4.18912e-05, 4.37548e-05, 4.55174e-05, 4.71864e-05, 4.87669e-05, 5.02645e-05, 5.16842e-05, 5.30303e-05, 5.43068e-05
		)
}

CapTable	"metal4_C_LATERAL_33NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000258698, 0.000150648, 0.000110865, 8.93732e-05, 7.55682e-05, 6.57632e-05, 5.83306e-05, 5.24358e-05, 4.76048e-05, 4.35472e-05, 4.0074e-05, 3.70566e-05, 3.4404e-05, 3.20498e-05, 2.99436e-05, 2.8047e-05, 
			0.000273596, 0.000162513, 0.000120731, 9.78594e-05, 8.30236e-05, 7.24142e-05, 6.43328e-05, 5.79016e-05, 5.26186e-05, 4.81742e-05, 4.43658e-05, 4.10548e-05, 3.81426e-05, 3.5557e-05, 3.32434e-05, 3.11594e-05, 
			0.000283112, 0.000170663, 0.000127776, 0.000104062, 8.85564e-05, 7.74094e-05, 6.88844e-05, 6.208e-05, 5.64784e-05, 5.17584e-05, 4.77088e-05, 4.4185e-05, 4.10836e-05, 3.83282e-05, 3.58612e-05, 3.36382e-05, 
			0.000289706, 0.00017674, 0.000133187, 0.000108901, 9.29364e-05, 8.1404e-05, 7.25534e-05, 6.54716e-05, 5.96304e-05, 5.47012e-05, 5.04674e-05, 4.678e-05, 4.35318e-05, 4.06442e-05, 3.80574e-05, 3.57252e-05, 
			0.000294262, 0.000181385, 0.000137453, 0.000112793, 9.64964e-05, 8.46836e-05, 7.55968e-05, 6.83038e-05, 6.22782e-05, 5.71866e-05, 5.28086e-05, 4.8992e-05, 4.56276e-05, 4.26344e-05, 3.99512e-05, 3.75306e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_21NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.0227e-05, 1.38894e-05, 1.72337e-05, 2.0208e-05, 2.27748e-05, 2.49437e-05, 2.67598e-05, 2.82519e-05, 2.94652e-05, 3.04501e-05, 3.12436e-05, 3.1883e-05, 3.2395e-05, 3.28015e-05, 3.31397e-05, 3.34027e-05, 
			1.39058e-05, 1.76558e-05, 2.11237e-05, 2.42337e-05, 2.69229e-05, 2.92136e-05, 3.1123e-05, 3.26999e-05, 3.39886e-05, 3.50344e-05, 3.58816e-05, 3.65557e-05, 3.71038e-05, 3.75552e-05, 3.79088e-05, 3.81919e-05, 
			1.77615e-05, 2.15791e-05, 2.51216e-05, 2.83071e-05, 3.1075e-05, 3.34256e-05, 3.53929e-05, 3.70175e-05, 3.83494e-05, 3.94253e-05, 4.02986e-05, 4.10214e-05, 4.159e-05, 4.2048e-05, 4.24157e-05, 4.27124e-05, 
			2.17336e-05, 2.55965e-05, 2.91987e-05, 3.24257e-05, 3.52374e-05, 3.76275e-05, 3.96296e-05, 4.12868e-05, 4.26322e-05, 4.37393e-05, 4.46507e-05, 4.53739e-05, 4.59569e-05, 4.64276e-05, 4.68054e-05, 4.71097e-05, 
			2.57871e-05, 2.96824e-05, 3.33154e-05, 3.65759e-05, 3.94114e-05, 4.18276e-05, 4.38366e-05, 4.55112e-05, 4.69047e-05, 4.8025e-05, 4.89323e-05, 4.96668e-05, 5.02592e-05, 5.07383e-05, 5.11231e-05, 5.14348e-05
		)
}

CapTable	"metal4_C_TOP_GP_21NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.6621e-05, 3.61327e-05, 4.43405e-05, 5.12592e-05, 5.70032e-05, 6.17215e-05, 6.55592e-05, 6.86663e-05, 7.11695e-05, 7.31751e-05, 7.47843e-05, 7.60687e-05, 7.70994e-05, 7.79256e-05, 7.85706e-05, 7.90974e-05, 
			3.77292e-05, 4.75272e-05, 5.59837e-05, 6.31271e-05, 6.90801e-05, 7.39828e-05, 7.79872e-05, 8.12363e-05, 8.38601e-05, 8.5973e-05, 8.76666e-05, 8.90361e-05, 9.01238e-05, 9.09829e-05, 9.16825e-05, 9.22431e-05, 
			4.93325e-05, 5.92377e-05, 6.77972e-05, 7.50443e-05, 8.10988e-05, 8.60968e-05, 9.01875e-05, 9.35169e-05, 9.62079e-05, 9.83885e-05, 0.00010014, 0.000101523, 0.00010265, 0.000103553, 0.000104278, 0.000104859, 
			6.11624e-05, 7.11039e-05, 7.97085e-05, 8.70127e-05, 9.31218e-05, 9.81743e-05, 0.000102319, 0.000105692, 0.000108442, 0.00011065, 0.000112412, 0.000113844, 0.000114994, 0.000115916, 0.000116657, 0.000117252, 
			7.31159e-05, 8.30464e-05, 9.16702e-05, 9.90011e-05, 0.000105145, 0.000110229, 0.000114417, 0.000117826, 0.000120564, 0.000122799, 0.000124601, 0.000126051, 0.000127216, 0.000128151, 0.000128903, 0.000129506
		)
}

CapTable	"metal4_C_LATERAL_21NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000242296, 0.000129139, 8.54768e-05, 6.11828e-05, 4.5489e-05, 3.45458e-05, 2.657e-05, 2.06078e-05, 1.60763e-05, 1.25898e-05, 9.88514e-06, 7.7743e-06, 6.11764e-06, 4.81294e-06, 3.7837e-06, 2.96588e-06, 
			0.000250328, 0.000134702, 8.95376e-05, 6.42732e-05, 4.7894e-05, 3.64326e-05, 2.80678e-05, 2.17968e-05, 1.70173e-05, 1.33326e-05, 1.04688e-05, 8.22716e-06, 6.46738e-06, 5.07992e-06, 3.97974e-06, 3.10604e-06, 
			0.000253722, 0.00013737, 9.16062e-05, 6.59026e-05, 4.91762e-05, 3.74566e-05, 2.88806e-05, 2.24416e-05, 1.75257e-05, 1.37282e-05, 1.07714e-05, 8.45962e-06, 6.63702e-06, 5.19696e-06, 4.05534e-06, 3.14758e-06, 
			0.000255006, 0.000138712, 9.27178e-05, 6.67986e-05, 4.99028e-05, 3.80362e-05, 2.93404e-05, 2.28022e-05, 1.78018e-05, 1.39367e-05, 1.09263e-05, 8.56306e-06, 6.7011e-06, 5.22836e-06, 4.05962e-06, 3.12928e-06, 
			0.000254958, 0.00013924, 9.32454e-05, 6.7249e-05, 5.02676e-05, 3.83284e-05, 2.95744e-05, 2.29758e-05, 1.79323e-05, 1.4024e-05, 1.09747e-05, 8.58118e-06, 6.69382e-06, 5.1997e-06, 4.01288e-06, 3.06722e-06
		)
}

CapTable	"metal4_C_BOTTOM_GP_22NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.17205e-05, 1.53562e-05, 1.86386e-05, 2.16333e-05, 2.43656e-05, 2.68469e-05, 2.90875e-05, 3.10962e-05, 3.28905e-05, 3.44784e-05, 3.58792e-05, 3.71133e-05, 3.81895e-05, 3.91318e-05, 3.99513e-05, 4.06607e-05, 
			1.50506e-05, 1.86877e-05, 2.20742e-05, 2.52127e-05, 2.80967e-05, 3.07281e-05, 3.31089e-05, 3.52483e-05, 3.71618e-05, 3.88574e-05, 4.03574e-05, 4.16732e-05, 4.28294e-05, 4.38386e-05, 4.47152e-05, 4.54785e-05, 
			1.85433e-05, 2.22213e-05, 2.56872e-05, 2.89212e-05, 3.19035e-05, 3.46314e-05, 3.71009e-05, 3.9322e-05, 4.13098e-05, 4.30715e-05, 4.46316e-05, 4.60035e-05, 4.72054e-05, 4.82562e-05, 4.91716e-05, 4.99674e-05, 
			2.21819e-05, 2.59035e-05, 2.94312e-05, 3.27315e-05, 3.578e-05, 3.85714e-05, 4.10989e-05, 4.33764e-05, 4.54092e-05, 4.72179e-05, 4.88177e-05, 5.02231e-05, 5.14577e-05, 5.25376e-05, 5.34742e-05, 5.42826e-05, 
			2.59403e-05, 2.96918e-05, 3.32674e-05, 3.66127e-05, 3.97054e-05, 4.25389e-05, 4.51043e-05, 4.74163e-05, 4.94836e-05, 5.13201e-05, 5.29451e-05, 5.43753e-05, 5.56308e-05, 5.67127e-05, 5.76889e-05, 5.85202e-05
		)
}

CapTable	"metal4_C_TOP_GP_22NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.16855e-05, 1.52786e-05, 1.85022e-05, 2.14343e-05, 2.41054e-05, 2.65331e-05, 2.87253e-05, 3.0695e-05, 3.24497e-05, 3.40089e-05, 3.53838e-05, 3.65891e-05, 3.76464e-05, 3.85653e-05, 3.93636e-05, 4.00567e-05, 
			1.50504e-05, 1.865e-05, 2.1984e-05, 2.50635e-05, 2.78951e-05, 3.04787e-05, 3.28187e-05, 3.49233e-05, 3.67996e-05, 3.84672e-05, 3.9938e-05, 4.12329e-05, 4.23638e-05, 4.33495e-05, 4.42079e-05, 4.49506e-05, 
			1.85557e-05, 2.22041e-05, 2.5629e-05, 2.88152e-05, 3.17545e-05, 3.4438e-05, 3.68725e-05, 3.90618e-05, 4.10148e-05, 4.27523e-05, 4.42846e-05, 4.56309e-05, 4.68099e-05, 4.78375e-05, 4.87317e-05, 4.95068e-05, 
			2.22011e-05, 2.59019e-05, 2.93986e-05, 3.26625e-05, 3.56758e-05, 3.84276e-05, 4.09239e-05, 4.3168e-05, 4.51758e-05, 4.69551e-05, 4.85263e-05, 4.99093e-05, 5.11185e-05, 5.2173e-05, 5.30952e-05, 5.39022e-05, 
			2.59697e-05, 2.97108e-05, 3.32608e-05, 3.65791e-05, 3.96428e-05, 4.24407e-05, 4.49793e-05, 4.72615e-05, 4.92992e-05, 5.11091e-05, 5.27067e-05, 5.41121e-05, 5.53422e-05, 5.6434e-05, 5.73452e-05, 5.8157e-05
		)
}

CapTable	"metal4_C_LATERAL_22NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000251826, 0.000141395, 9.94632e-05, 7.60694e-05, 6.0626e-05, 4.945e-05, 4.0908e-05, 3.41506e-05, 2.86832e-05, 2.4193e-05, 2.04674e-05, 1.73516e-05, 1.47338e-05, 1.25246e-05, 1.06558e-05, 9.07172e-06, 
			0.000263878, 0.000150345, 0.000106364, 8.15688e-05, 6.50972e-05, 5.31392e-05, 4.39844e-05, 3.67364e-05, 3.08696e-05, 2.60504e-05, 2.20486e-05, 1.87029e-05, 1.58898e-05, 1.35159e-05, 1.15069e-05, 9.80286e-06, 
			0.000270432, 0.000155548, 0.000110496, 8.49106e-05, 6.7835e-05, 5.54116e-05, 4.58886e-05, 3.83442e-05, 3.22344e-05, 2.72132e-05, 2.30428e-05, 1.95546e-05, 1.66217e-05, 1.41453e-05, 1.20487e-05, 1.02698e-05, 
			0.000274054, 0.000158731, 0.000113101, 8.704e-05, 6.96032e-05, 5.6891e-05, 4.71362e-05, 3.94016e-05, 3.3136e-05, 2.7985e-05, 2.3706e-05, 2.01256e-05, 1.71138e-05, 1.45704e-05, 1.24156e-05, 1.05862e-05, 
			0.000275688, 0.000160595, 0.00011471, 8.83922e-05, 7.07368e-05, 5.78504e-05, 4.79584e-05, 4.01042e-05, 3.37392e-05, 2.85048e-05, 2.41552e-05, 2.05146e-05, 1.7451e-05, 1.48613e-05, 1.26709e-05, 1.08088e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_23NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.8041e-05, 2.29702e-05, 2.71906e-05, 3.09034e-05, 3.42166e-05, 3.7201e-05, 3.99041e-05, 4.23612e-05, 4.46007e-05, 4.66457e-05, 4.8516e-05, 5.02292e-05, 5.18002e-05, 5.32426e-05, 5.45685e-05, 5.57885e-05, 
			2.2091e-05, 2.67346e-05, 3.08814e-05, 3.46172e-05, 3.80026e-05, 4.10824e-05, 4.38928e-05, 4.64622e-05, 4.88144e-05, 5.09713e-05, 5.29509e-05, 5.47703e-05, 5.6444e-05, 5.79852e-05, 5.9406e-05, 6.07174e-05, 
			2.607e-05, 3.05478e-05, 3.46322e-05, 3.83636e-05, 4.17786e-05, 4.49072e-05, 4.77764e-05, 5.04114e-05, 5.28332e-05, 5.50604e-05, 5.71114e-05, 5.90016e-05, 6.07451e-05, 6.2355e-05, 6.38431e-05, 6.52199e-05, 
			3.0011e-05, 3.43724e-05, 3.84032e-05, 4.21212e-05, 4.55446e-05, 4.8697e-05, 5.16012e-05, 5.42762e-05, 5.67442e-05, 5.90198e-05, 6.11204e-05, 6.30618e-05, 6.48576e-05, 6.6519e-05, 6.80583e-05, 6.94856e-05, 
			3.3928e-05, 3.819e-05, 4.2173e-05, 4.58688e-05, 4.92898e-05, 5.2452e-05, 5.53736e-05, 5.80756e-05, 6.05726e-05, 6.28832e-05, 6.50208e-05, 6.70012e-05, 6.88356e-05, 7.0538e-05, 7.21178e-05, 7.35856e-05
		)
}

CapTable	"metal4_C_LATERAL_23NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000256124, 0.000147254, 0.000106775, 8.47066e-05, 7.04364e-05, 6.0269e-05, 5.2565e-05, 4.64782e-05, 4.15228e-05, 3.73976e-05, 3.39044e-05, 3.09058e-05, 2.83038e-05, 2.60254e-05, 2.40154e-05, 2.22308e-05, 
			0.000270118, 0.000158254, 0.000115822, 9.24238e-05, 7.71764e-05, 6.62576e-05, 5.79552e-05, 5.13782e-05, 4.60128e-05, 4.1538e-05, 3.77426e-05, 3.44794e-05, 3.16432e-05, 2.9156e-05, 2.69582e-05, 2.50034e-05, 
			0.00027877, 0.000165613, 0.000122149, 9.79804e-05, 8.21314e-05, 7.07368e-05, 6.20456e-05, 5.51436e-05, 4.95008e-05, 4.4786e-05, 4.07796e-05, 3.73294e-05, 3.43258e-05, 3.16872e-05, 2.93516e-05, 2.72708e-05, 
			0.00028459, 0.000171005, 0.00012696, 0.000102299, 8.60614e-05, 7.4343e-05, 6.53788e-05, 5.82438e-05, 5.23988e-05, 4.75062e-05, 4.33416e-05, 3.97492e-05, 3.66164e-05, 3.386e-05, 3.14162e-05, 2.92356e-05, 
			0.000288468, 0.000175079, 0.000130747, 0.00010579, 8.92882e-05, 7.7346e-05, 6.81934e-05, 6.08864e-05, 5.48894e-05, 4.98608e-05, 4.55732e-05, 4.18688e-05, 3.86334e-05, 3.5782e-05, 3.32502e-05, 3.09874e-05
		)
}

CapTable	"metal4_C_BOTTOM_GPNOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.48853e-05, 3.46765e-05, 4.31909e-05, 5.01669e-05, 5.56084e-05, 5.97006e-05, 6.26953e-05, 6.48454e-05, 6.63643e-05, 6.74284e-05, 6.81671e-05, 6.86783e-05, 6.903e-05, 6.92709e-05, 6.94363e-05, 6.95497e-05, 
			3.63024e-05, 4.64709e-05, 5.52304e-05, 6.23668e-05, 6.79197e-05, 7.20935e-05, 7.51417e-05, 7.73292e-05, 7.88757e-05, 7.99573e-05, 8.07084e-05, 8.12261e-05, 8.15823e-05, 8.18256e-05, 8.19929e-05, 8.21069e-05, 
			4.82237e-05, 5.85088e-05, 6.73264e-05, 7.44978e-05, 8.00761e-05, 8.42585e-05, 8.73168e-05, 8.95086e-05, 9.10582e-05, 9.214e-05, 9.28904e-05, 9.3407e-05, 9.37623e-05, 9.40047e-05, 9.41704e-05, 9.4283e-05, 
			6.03105e-05, 7.06071e-05, 7.9431e-05, 8.65951e-05, 9.21658e-05, 9.63419e-05, 9.9393e-05, 0.000101579, 0.000103121, 0.000104199, 0.000104945, 0.00010546, 0.000105813, 0.000106053, 0.000106217, 0.000106327, 
			7.24332e-05, 8.26974e-05, 9.14981e-05, 9.86468e-05, 0.000104196, 0.000108356, 0.000111388, 0.000113564, 0.000115097, 0.000116169, 0.000116911, 0.000117421, 0.000117769, 0.000118005, 0.000118166, 0.000118276
		)
}

CapTable	"metal4_C_TOP_GPNOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.46567e-05, 3.41655e-05, 4.23503e-05, 4.90037e-05, 5.41658e-05, 5.80362e-05, 6.08627e-05, 6.28843e-05, 6.43165e-05, 6.53147e-05, 6.60101e-05, 6.6489e-05, 6.6819e-05, 6.70445e-05, 6.71974e-05, 6.72994e-05, 
			3.61516e-05, 4.60377e-05, 5.44586e-05, 6.12724e-05, 6.65465e-05, 7.04913e-05, 7.33762e-05, 7.54337e-05, 7.68909e-05, 7.79096e-05, 7.86146e-05, 7.91017e-05, 7.94353e-05, 7.96633e-05, 7.98134e-05, 7.99126e-05, 
			4.81303e-05, 5.81328e-05, 6.66206e-05, 7.34722e-05, 7.87691e-05, 8.27349e-05, 8.56218e-05, 8.7691e-05, 8.91493e-05, 9.01693e-05, 9.08755e-05, 9.13609e-05, 9.16914e-05, 9.19137e-05, 9.20605e-05, 9.21549e-05, 
			6.02685e-05, 7.02917e-05, 7.8785e-05, 8.56453e-05, 9.09338e-05, 9.48933e-05, 9.77802e-05, 9.98428e-05, 0.000101299, 0.000102314, 0.000103018, 0.000103495, 0.000103819, 0.000104036, 0.000104177, 0.000104267, 
			7.24558e-05, 8.24464e-05, 9.09359e-05, 9.77686e-05, 0.000103053, 0.000106996, 0.000109868, 0.000111923, 0.000113371, 0.000114378, 0.000115071, 0.000115543, 0.000115861, 0.000116072, 0.000116208, 0.000116292
		)
}

CapTable	"metal4_C_LATERALNOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.00023349, 0.00011759, 7.22308e-05, 4.72374e-05, 3.16708e-05, 2.14552e-05, 1.4594e-05, 9.93732e-06, 6.76118e-06, 4.59194e-06, 3.10882e-06, 2.09574e-06, 1.40397e-06, 9.32564e-07, 6.12268e-07, 3.95872e-07, 
			0.000237616, 0.000119881, 7.3583e-05, 4.80908e-05, 3.22238e-05, 2.18172e-05, 1.48291e-05, 1.00891e-05, 6.85744e-06, 4.65112e-06, 3.145e-06, 2.11724e-06, 1.41738e-06, 9.42146e-07, 6.21738e-07, 4.07504e-07, 
			0.000238008, 0.000120177, 7.3761e-05, 4.8201e-05, 3.22828e-05, 2.18476e-05, 1.48434e-05, 1.00924e-05, 6.85654e-06, 4.64868e-06, 3.14312e-06, 2.11806e-06, 1.42232e-06, 9.526e-07, 6.38128e-07, 4.3014e-07, 
			0.000237146, 0.000119868, 7.3587e-05, 4.80746e-05, 3.21984e-05, 2.17878e-05, 1.47998e-05, 1.00628e-05, 6.83746e-06, 4.6395e-06, 3.1427e-06, 2.12698e-06, 1.44007e-06, 9.78824e-07, 6.72112e-07, 4.70954e-07, 
			0.000235622, 0.000119287, 7.3253e-05, 4.78616e-05, 3.20486e-05, 2.16878e-05, 1.47459e-05, 1.00315e-05, 6.82466e-06, 4.64218e-06, 3.1593e-06, 2.15522e-06, 1.47878e-06, 1.02653e-06, 7.27574e-07, 5.32806e-07
		)
}

CapTable	"metal4_C_BOTTOM_GP_12NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.68981e-05, 3.66947e-05, 4.52122e-05, 5.24118e-05, 5.83814e-05, 6.32668e-05, 6.72238e-05, 7.04093e-05, 7.29606e-05, 7.49989e-05, 7.66219e-05, 7.79158e-05, 7.89439e-05, 7.97604e-05, 8.04104e-05, 8.09283e-05, 
			3.79477e-05, 4.80101e-05, 5.67646e-05, 6.41888e-05, 7.03683e-05, 7.54434e-05, 7.95714e-05, 8.29047e-05, 8.55836e-05, 8.77321e-05, 8.94456e-05, 9.08107e-05, 9.19028e-05, 9.27662e-05, 9.34571e-05, 9.4007e-05, 
			4.94904e-05, 5.96446e-05, 6.84941e-05, 7.60187e-05, 8.23011e-05, 8.74752e-05, 9.16931e-05, 9.51067e-05, 9.78564e-05, 0.00010006, 0.000101822, 0.000103232, 0.000104356, 0.000105252, 0.000105967, 0.000106536, 
			6.12603e-05, 7.14443e-05, 8.03341e-05, 8.79122e-05, 9.42504e-05, 9.94772e-05, 0.000103751, 0.00010721, 0.000109998, 0.00011224, 0.000114031, 0.000115465, 0.00011661, 0.000117524, 0.000118252, 0.000118833, 
			7.31554e-05, 8.33248e-05, 9.22341e-05, 9.98351e-05, 0.000106204, 0.000111462, 0.000115756, 0.000119239, 0.000122055, 0.000124316, 0.000126128, 0.000127577, 0.000128734, 0.000129658, 0.000130394, 0.000130982
		)
}

CapTable	"metal4_C_TOP_GP_12NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.02639e-05, 1.38627e-05, 1.71254e-05, 2.00102e-05, 2.24922e-05, 2.45802e-05, 2.6311e-05, 2.77283e-05, 2.88795e-05, 2.98099e-05, 3.05581e-05, 3.11572e-05, 3.16385e-05, 3.20241e-05, 3.23318e-05, 3.2577e-05, 
			1.39793e-05, 1.76545e-05, 2.10376e-05, 2.40476e-05, 2.66507e-05, 2.88536e-05, 3.06864e-05, 3.21945e-05, 3.34239e-05, 3.4417e-05, 3.52212e-05, 3.58697e-05, 3.63857e-05, 3.68053e-05, 3.71377e-05, 3.74035e-05, 
			1.78246e-05, 2.15656e-05, 2.50211e-05, 2.81087e-05, 3.07861e-05, 3.3056e-05, 3.49509e-05, 3.65123e-05, 3.7787e-05, 3.88238e-05, 3.96634e-05, 4.03367e-05, 4.08781e-05, 4.13124e-05, 4.16602e-05, 4.19386e-05, 
			2.17687e-05, 2.55519e-05, 2.90611e-05, 3.21994e-05, 3.49254e-05, 3.72392e-05, 3.91687e-05, 4.07649e-05, 4.20724e-05, 4.31319e-05, 4.39929e-05, 4.46845e-05, 4.52405e-05, 4.56866e-05, 4.60442e-05, 4.63305e-05, 
			2.57856e-05, 2.95984e-05, 3.31431e-05, 3.63169e-05, 3.90729e-05, 4.14124e-05, 4.33695e-05, 4.49899e-05, 4.63109e-05, 4.73871e-05, 4.82581e-05, 4.89605e-05, 4.95255e-05, 4.9979e-05, 5.03427e-05, 5.06339e-05
		)
}

CapTable	"metal4_C_LATERAL_12NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000242128, 0.000128929, 8.52344e-05, 6.0924e-05, 4.52304e-05, 3.4304e-05, 2.63662e-05, 2.04484e-05, 1.59619e-05, 1.25202e-05, 9.85904e-06, 7.78802e-06, 6.16864e-06, 4.8975e-06, 3.89678e-06, 3.10672e-06, 
			0.000250314, 0.000134688, 8.95018e-05, 6.42186e-05, 4.7825e-05, 3.637e-05, 2.80212e-05, 2.17778e-05, 1.70315e-05, 1.33819e-05, 1.05532e-05, 8.34758e-06, 6.62048e-06, 5.26254e-06, 4.19224e-06, 3.3465e-06, 
			0.00025392, 0.000137573, 9.17758e-05, 6.60356e-05, 4.92818e-05, 3.75478e-05, 2.8975e-05, 2.2552e-05, 1.76596e-05, 1.38918e-05, 1.09672e-05, 8.68448e-06, 6.8945e-06, 5.48628e-06, 4.37534e-06, 3.49692e-06, 
			0.000255416, 0.000139113, 9.30728e-05, 6.70944e-05, 5.01542e-05, 3.82636e-05, 2.95614e-05, 2.3032e-05, 1.80524e-05, 1.42138e-05, 1.12312e-05, 8.901e-06, 7.0727e-06, 5.63346e-06, 4.49744e-06, 3.5988e-06, 
			0.000255584, 0.000139828, 9.37598e-05, 6.769e-05, 5.06526e-05, 3.86806e-05, 2.99176e-05, 2.3327e-05, 1.82976e-05, 1.44169e-05, 1.14e-05, 9.04162e-06, 7.19028e-06, 5.73226e-06, 4.58098e-06, 3.66994e-06
		)
}

CapTable	"metal4_C_BOTTOM_GP_13NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			3.3238e-05, 4.4575e-05, 5.42636e-05, 6.23766e-05, 6.90918e-05, 7.46216e-05, 7.91736e-05, 8.29294e-05, 8.60418e-05, 8.86322e-05, 9.08031e-05, 9.26333e-05, 9.41857e-05, 9.55108e-05, 9.66494e-05, 9.76345e-05, 
			4.5575e-05, 5.68956e-05, 6.66274e-05, 7.48324e-05, 8.16746e-05, 8.73566e-05, 9.20742e-05, 9.59988e-05, 9.9277e-05, 0.000102029, 0.000104352, 0.000106325, 0.000108011, 0.000109461, 0.000110715, 0.000111806, 
			5.8118e-05, 6.9304e-05, 7.89626e-05, 8.7157e-05, 9.40394e-05, 9.97922e-05, 0.000104601, 0.000108628, 0.000112014, 0.000114875, 0.000117305, 0.000119382, 0.000121167, 0.000122711, 0.000124053, 0.000125226, 
			7.0647e-05, 8.16766e-05, 9.12458e-05, 9.94094e-05, 0.000106301, 0.000112094, 0.000116963, 0.000121064, 0.00012453, 0.000127474, 0.000129987, 0.000132147, 0.000134011, 0.00013563, 0.000137045, 0.000138287, 
			8.3108e-05, 9.39792e-05, 0.000103467, 0.000111591, 0.000118484, 0.000124302, 0.000129211, 0.000133368, 0.000136897, 0.000139908, 0.000142489, 0.000144715, 0.000146646, 0.00014833, 0.000149806, 0.000151108
		)
}

CapTable	"metal4_C_LATERAL_13NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000245208, 0.000133364, 9.09544e-05, 6.77764e-05, 5.30082e-05, 4.27814e-05, 3.53244e-05, 2.96916e-05, 2.53242e-05, 2.18678e-05, 1.90859e-05, 1.68147e-05, 1.49373e-05, 1.33682e-05, 1.20436e-05, 1.09155e-05, 
			0.000255112, 0.000140989, 9.71976e-05, 7.31176e-05, 5.76854e-05, 4.69364e-05, 3.90508e-05, 3.30562e-05, 2.8378e-05, 2.46514e-05, 2.16326e-05, 1.9152e-05, 1.70887e-05, 1.53538e-05, 1.38807e-05, 1.26191e-05, 
			0.000260622, 0.000145861, 0.000101506, 7.6985e-05, 6.11816e-05, 5.01218e-05, 4.1966e-05, 3.57332e-05, 3.0843e-05, 2.69264e-05, 2.37366e-05, 2.11018e-05, 1.88989e-05, 1.70373e-05, 1.54492e-05, 1.40826e-05, 
			0.00026414, 0.000149447, 0.000104851, 8.00696e-05, 6.40392e-05, 5.27684e-05, 4.44192e-05, 3.80102e-05, 3.29588e-05, 2.8895e-05, 2.55706e-05, 2.28124e-05, 2.04964e-05, 1.85309e-05, 1.68473e-05, 1.5393e-05, 
			0.000266348, 0.000152207, 0.000107554, 8.2635e-05, 6.64484e-05, 5.50288e-05, 4.65448e-05, 3.99994e-05, 3.48208e-05, 3.06384e-05, 2.72038e-05, 2.43436e-05, 2.19328e-05, 1.98798e-05, 1.81149e-05, 1.65852e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_61NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			4.0592e-06, 5.428e-06, 6.6532e-06, 7.7297e-06, 8.6569e-06, 9.4425e-06, 1.01255e-05, 1.06751e-05, 1.11681e-05, 1.15859e-05, 1.19407e-05, 1.22322e-05, 1.2492e-05, 1.2714e-05, 1.29054e-05, 1.30705e-05, 
			5.3566e-06, 6.7037e-06, 7.9331e-06, 9.0403e-06, 9.9912e-06, 1.08273e-05, 1.15154e-05, 1.21307e-05, 1.26548e-05, 1.31022e-05, 1.34739e-05, 1.38029e-05, 1.40862e-05, 1.43295e-05, 1.45393e-05, 1.47226e-05, 
			6.659e-06, 7.9945e-06, 9.2207e-06, 1.0339e-05, 1.12941e-05, 1.21518e-05, 1.28916e-05, 1.35282e-05, 1.4062e-05, 1.45318e-05, 1.49344e-05, 1.52818e-05, 1.558e-05, 1.58397e-05, 1.6064e-05, 1.62602e-05, 
			7.9649e-06, 9.2846e-06, 1.0527e-05, 1.16245e-05, 1.26218e-05, 1.34922e-05, 1.42472e-05, 1.48884e-05, 1.54498e-05, 1.59346e-05, 1.63522e-05, 1.67124e-05, 1.70256e-05, 1.72973e-05, 1.75323e-05, 1.77389e-05, 
			9.2659e-06, 1.05639e-05, 1.18095e-05, 1.29392e-05, 1.3944e-05, 1.4812e-05, 1.5579e-05, 1.62438e-05, 1.68172e-05, 1.73136e-05, 1.77426e-05, 1.81146e-05, 1.84375e-05, 1.87176e-05, 1.89631e-05, 1.91772e-05
		)
}

CapTable	"metal5_C_TOP_GP_61NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.94658e-05, 3.9514e-05, 4.80592e-05, 5.52107e-05, 6.11545e-05, 6.60693e-05, 7.01597e-05, 7.35241e-05, 7.63677e-05, 7.8748e-05, 8.07448e-05, 8.24225e-05, 8.38533e-05, 8.50708e-05, 8.61118e-05, 8.70054e-05, 
			4.08224e-05, 5.09345e-05, 5.95747e-05, 6.68491e-05, 7.2929e-05, 7.80169e-05, 8.2242e-05, 8.58107e-05, 8.8808e-05, 9.13322e-05, 9.34598e-05, 9.52738e-05, 9.68196e-05, 9.81435e-05, 9.92798e-05, 0.000100259, 
			5.2446e-05, 6.24987e-05, 7.11039e-05, 7.8409e-05, 8.45281e-05, 8.97084e-05, 9.40676e-05, 9.77348e-05, 0.000100824, 0.00010345, 0.000105682, 0.000107587, 0.000109218, 0.000110617, 0.000111825, 0.000112871, 
			6.41281e-05, 7.40652e-05, 8.26398e-05, 8.99157e-05, 9.6107e-05, 0.000101339, 0.00010576, 0.000109494, 0.00011267, 0.000115371, 0.000117678, 0.000119652, 0.000121347, 0.000122809, 0.000124078, 0.000125175, 
			7.57811e-05, 8.55891e-05, 9.41233e-05, 0.000101425, 0.000107632, 0.000112891, 0.000117359, 0.000121158, 0.000124395, 0.000127156, 0.000129519, 0.000131548, 0.000133298, 0.000134813, 0.000136127, 0.000137272
		)
}

CapTable	"metal5_C_LATERAL_61NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000244908, 0.000132904, 9.03186e-05, 6.69506e-05, 5.19826e-05, 4.15692e-05, 3.39038e-05, 2.81338e-05, 2.35782e-05, 1.99561e-05, 1.70345e-05, 1.46643e-05, 1.26877e-05, 1.10402e-05, 9.65578e-06, 8.48406e-06, 
			0.000254452, 0.000140106, 9.60962e-05, 7.17916e-05, 5.61548e-05, 4.51808e-05, 3.71316e-05, 3.09276e-05, 2.60632e-05, 2.21756e-05, 1.90383e-05, 1.64433e-05, 1.42892e-05, 1.2485e-05, 1.09619e-05, 9.66736e-06, 
			0.000259552, 0.000144504, 9.99264e-05, 7.5165e-05, 5.91798e-05, 4.78788e-05, 3.94938e-05, 3.3056e-05, 2.8004e-05, 2.39282e-05, 2.06066e-05, 1.78662e-05, 1.5582e-05, 1.36613e-05, 1.2034e-05, 1.06458e-05, 
			0.000262562, 0.000147611, 0.000102757, 7.77798e-05, 6.14982e-05, 4.99868e-05, 4.14138e-05, 3.48216e-05, 2.95912e-05, 2.53764e-05, 2.19288e-05, 1.90746e-05, 1.66874e-05, 1.46737e-05, 1.29607e-05, 1.14981e-05, 
			0.000264286, 0.000149907, 0.000104987, 7.98108e-05, 6.3378e-05, 5.1742e-05, 4.3036e-05, 3.62922e-05, 3.09428e-05, 2.66184e-05, 2.30704e-05, 2.01244e-05, 1.76535e-05, 1.55634e-05, 1.37829e-05, 1.22558e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_62NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.1938e-05, 1.46034e-05, 1.67112e-05, 1.84552e-05, 1.99484e-05, 2.12632e-05, 2.24442e-05, 2.35234e-05, 2.4522e-05, 2.54556e-05, 2.63352e-05, 2.71693e-05, 2.79641e-05, 2.87244e-05, 2.94538e-05, 3.01556e-05, 
			1.3744e-05, 1.60344e-05, 1.7954e-05, 1.96062e-05, 2.10622e-05, 2.23712e-05, 2.35673e-05, 2.46733e-05, 2.57069e-05, 2.66806e-05, 2.76039e-05, 2.84837e-05, 2.93255e-05, 3.01334e-05, 3.09108e-05, 3.16606e-05, 
			1.5339e-05, 1.73912e-05, 1.91726e-05, 2.07514e-05, 2.21732e-05, 2.34718e-05, 2.4673e-05, 2.5795e-05, 2.68519e-05, 2.78537e-05, 2.88083e-05, 2.97218e-05, 3.05987e-05, 3.14428e-05, 3.22568e-05, 3.30432e-05, 
			1.6798e-05, 1.8683e-05, 2.03656e-05, 2.1888e-05, 2.32818e-05, 2.45718e-05, 2.57764e-05, 2.69106e-05, 2.79849e-05, 2.9009e-05, 2.99886e-05, 3.09291e-05, 3.18344e-05, 3.27074e-05, 3.35512e-05, 3.43675e-05, 
			1.8169e-05, 1.99304e-05, 2.15426e-05, 2.30228e-05, 2.43956e-05, 2.56776e-05, 2.6885e-05, 2.80286e-05, 2.9118e-05, 3.01607e-05, 3.11609e-05, 3.21239e-05, 3.30527e-05, 3.39503e-05, 3.48189e-05, 3.56605e-05
		)
}

CapTable	"metal5_C_LATERAL_62NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.00026107, 0.000153736, 0.000114603, 9.37068e-05, 8.04446e-05, 7.11298e-05, 6.41362e-05, 5.86308e-05, 5.41422e-05, 5.03824e-05, 4.71656e-05, 4.43658e-05, 4.1895e-05, 3.96892e-05, 3.77012e-05, 3.58948e-05, 
			0.000276728, 0.000166385, 0.000125286, 0.000103039, 8.87668e-05, 7.86618e-05, 7.1027e-05, 6.49882e-05, 6.00462e-05, 5.58952e-05, 5.23358e-05, 4.92332e-05, 4.6492e-05, 4.4043e-05, 4.18346e-05, 3.98272e-05, 
			0.000287076, 0.000175361, 0.000133169, 0.000110087, 9.51418e-05, 8.44932e-05, 7.6405e-05, 6.99802e-05, 6.4705e-05, 6.02624e-05, 5.64452e-05, 5.31124e-05, 5.01642e-05, 4.75276e-05, 4.51484e-05, 4.29848e-05, 
			0.00029449, 0.000182282, 0.000139417, 0.000115749, 0.000100331, 8.92782e-05, 8.08436e-05, 7.41194e-05, 6.85824e-05, 6.3908e-05, 5.98844e-05, 5.6366e-05, 5.325e-05, 5.0461e-05, 4.79422e-05, 4.56506e-05, 
			0.00029989, 0.00018776, 0.000144497, 0.00012043, 0.000104654, 9.32934e-05, 8.4595e-05, 7.76324e-05, 7.1884e-05, 6.70212e-05, 6.28284e-05, 5.9157e-05, 5.5902e-05, 5.29858e-05, 5.03506e-05, 4.79514e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_51NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			4.1595e-06, 5.7034e-06, 7.0571e-06, 8.2249e-06, 9.2174e-06, 1.00505e-05, 1.07696e-05, 1.13493e-05, 1.18635e-05, 1.22969e-05, 1.26649e-05, 1.29678e-05, 1.32338e-05, 1.34619e-05, 1.36567e-05, 1.38242e-05, 
			5.5353e-06, 7.0485e-06, 8.4041e-06, 9.5997e-06, 1.06143e-05, 1.1495e-05, 1.22201e-05, 1.28581e-05, 1.34012e-05, 1.38615e-05, 1.42442e-05, 1.45796e-05, 1.48672e-05, 1.51132e-05, 1.53246e-05, 1.55077e-05, 
			6.9292e-06, 8.4207e-06, 9.7678e-06, 1.09701e-05, 1.19889e-05, 1.28892e-05, 1.36604e-05, 1.43183e-05, 1.48688e-05, 1.5348e-05, 1.57578e-05, 1.61096e-05, 1.64108e-05, 1.66707e-05, 1.68936e-05, 1.70878e-05, 
			8.3279e-06, 9.7933e-06, 1.11491e-05, 1.233e-05, 1.3384e-05, 1.42954e-05, 1.50786e-05, 1.57386e-05, 1.63146e-05, 1.68068e-05, 1.72286e-05, 1.75927e-05, 1.79055e-05, 1.81751e-05, 1.84121e-05, 1.8612e-05, 
			9.7201e-06, 1.11545e-05, 1.25057e-05, 1.37108e-05, 1.4769e-05, 1.56762e-05, 1.64666e-05, 1.71476e-05, 1.7733e-05, 1.82358e-05, 1.8668e-05, 1.90389e-05, 1.93618e-05, 1.96402e-05, 2.00508e-05, 2.023e-05
		)
}

CapTable	"metal5_C_TOP_GP_51NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.94205e-05, 3.93436e-05, 4.78183e-05, 5.49291e-05, 6.0848e-05, 6.57481e-05, 6.9826e-05, 7.31901e-05, 7.60219e-05, 7.83905e-05, 8.03758e-05, 8.20455e-05, 8.34644e-05, 8.46701e-05, 8.56992e-05, 8.65813e-05, 
			4.07367e-05, 5.07465e-05, 5.93269e-05, 6.65675e-05, 7.26295e-05, 7.77036e-05, 8.19277e-05, 8.54847e-05, 8.8471e-05, 9.09841e-05, 9.31038e-05, 9.49061e-05, 9.64399e-05, 9.77514e-05, 9.88756e-05, 9.98431e-05, 
			5.23218e-05, 6.22943e-05, 7.08568e-05, 7.81365e-05, 8.42499e-05, 8.94166e-05, 9.37632e-05, 9.74189e-05, 0.0001005, 0.000103114, 0.000105334, 0.000107225, 0.000108843, 0.000110229, 0.000111425, 0.000112457, 
			6.39741e-05, 7.38581e-05, 8.24019e-05, 8.9669e-05, 9.58462e-05, 0.000101064, 0.000105472, 0.000109198, 0.000112359, 0.000115046, 0.000117339, 0.000119297, 0.000120977, 0.000122425, 0.000123676, 0.000124761, 
			7.56179e-05, 8.54013e-05, 9.39159e-05, 0.000101205, 0.000107399, 0.000112647, 0.000117101, 0.000120884, 0.000124103, 0.000126847, 0.000129192, 0.000131206, 0.000132938, 0.000134434, 0.000135549, 0.000136714
		)
}

CapTable	"metal5_C_LATERAL_51NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000244866, 0.000132821, 9.01966e-05, 6.6797e-05, 5.18046e-05, 4.13724e-05, 3.36954e-05, 2.79076e-05, 2.33506e-05, 1.97306e-05, 1.68133e-05, 1.44447e-05, 1.24768e-05, 1.0839e-05, 9.46508e-06, 8.30446e-06, 
			0.000254378, 0.000139984, 9.5932e-05, 7.15948e-05, 5.59322e-05, 4.49424e-05, 3.68732e-05, 3.06672e-05, 2.58048e-05, 2.19224e-05, 1.8788e-05, 1.62033e-05, 1.40609e-05, 1.22694e-05, 1.07598e-05, 9.47918e-06, 
			0.000259436, 0.000144336, 9.97114e-05, 7.49164e-05, 5.88972e-05, 4.75842e-05, 3.91954e-05, 3.27588e-05, 2.77072e-05, 2.3641e-05, 2.03312e-05, 1.76044e-05, 1.53352e-05, 1.34303e-05, 1.18194e-05, 1.04482e-05, 
			0.0002624, 0.00014739, 0.000102489, 7.7468e-05, 6.11678e-05, 4.96486e-05, 4.10754e-05, 3.44834e-05, 2.92634e-05, 2.50622e-05, 2.16304e-05, 1.87933e-05, 1.64245e-05, 1.44299e-05, 1.27369e-05, 1.1294e-05, 
			0.000264068, 0.000149619, 0.000104654, 7.94482e-05, 6.3001e-05, 5.13558e-05, 4.26554e-05, 3.59224e-05, 3.0588e-05, 2.62812e-05, 2.2753e-05, 1.98281e-05, 1.73792e-05, 1.53118e-05, 1.35672e-05, 1.2059e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_52NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.2366e-05, 1.51634e-05, 1.73902e-05, 1.92442e-05, 2.08398e-05, 2.22506e-05, 2.35227e-05, 2.46881e-05, 2.5769e-05, 2.6781e-05, 2.77355e-05, 2.86406e-05, 2.95029e-05, 3.03271e-05, 3.11173e-05, 3.18764e-05, 
			1.4299e-05, 1.67196e-05, 1.87594e-05, 2.0526e-05, 2.20902e-05, 2.35018e-05, 2.47957e-05, 2.59953e-05, 2.71184e-05, 2.81775e-05, 2.91823e-05, 3.01399e-05, 3.10556e-05, 3.19341e-05, 3.27782e-05, 3.35908e-05, 
			1.6022e-05, 1.8204e-05, 2.01094e-05, 2.18052e-05, 2.33396e-05, 2.47468e-05, 2.6051e-05, 2.72726e-05, 2.84246e-05, 2.95174e-05, 3.0559e-05, 3.15554e-05, 3.25111e-05, 3.34301e-05, 3.43152e-05, 3.51688e-05, 
			1.7614e-05, 1.96282e-05, 2.14376e-05, 2.30816e-05, 2.45924e-05, 2.59946e-05, 2.73066e-05, 2.85446e-05, 2.97195e-05, 3.08389e-05, 3.19098e-05, 3.29372e-05, 3.39252e-05, 3.48771e-05, 3.57953e-05, 3.66821e-05, 
			1.912e-05, 2.10134e-05, 2.2754e-05, 2.436e-05, 2.58536e-05, 2.72522e-05, 2.85718e-05, 2.9823e-05, 3.10162e-05, 3.21576e-05, 3.32526e-05, 3.43058e-05, 3.53205e-05, 3.62998e-05, 3.72456e-05, 3.81602e-05
		)
}

CapTable	"metal5_C_LATERAL_52NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000260722, 0.000153295, 0.000114082, 9.31138e-05, 7.97862e-05, 7.04118e-05, 6.33628e-05, 5.78064e-05, 5.32706e-05, 4.94672e-05, 4.62102e-05, 4.33738e-05, 4.08696e-05, 3.86338e-05, 3.66186e-05, 3.4788e-05, 
			0.000276282, 0.000165849, 0.000124671, 0.00010235, 8.80108e-05, 7.78432e-05, 7.01508e-05, 6.40584e-05, 5.9067e-05, 5.48704e-05, 5.12694e-05, 4.81286e-05, 4.53528e-05, 4.28724e-05, 4.0636e-05, 3.8604e-05, 
			0.000286534, 0.000174731, 0.00013246, 0.000109303, 9.42894e-05, 8.35772e-05, 7.543e-05, 6.89506e-05, 6.3625e-05, 5.9136e-05, 5.52764e-05, 5.1905e-05, 4.8922e-05, 4.62542e-05, 4.38472e-05, 4.16592e-05, 
			0.000293854, 0.000181558, 0.000138613, 0.00011487, 9.93836e-05, 8.82664e-05, 7.97724e-05, 7.29934e-05, 6.74058e-05, 6.26852e-05, 5.86192e-05, 5.50628e-05, 5.19124e-05, 4.90926e-05, 4.65468e-05, 4.42314e-05, 
			0.00029915, 0.000186938, 0.000143597, 0.000119456, 0.000103611, 9.21868e-05, 8.34292e-05, 7.6412e-05, 7.06138e-05, 6.57054e-05, 6.14712e-05, 5.77626e-05, 5.44742e-05, 5.15284e-05, 4.88672e-05, 4.64456e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_41NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			4.7833e-06, 6.593e-06, 8.1776e-06, 9.5424e-06, 1.07028e-05, 1.16773e-05, 1.25146e-05, 1.31949e-05, 1.37903e-05, 1.42911e-05, 1.47048e-05, 1.50621e-05, 1.5365e-05, 1.56216e-05, 1.58404e-05, 1.60257e-05, 
			6.3827e-06, 8.165e-06, 9.7552e-06, 1.1138e-05, 1.23429e-05, 1.33458e-05, 1.42221e-05, 1.49633e-05, 1.55905e-05, 1.61118e-05, 1.65628e-05, 1.69449e-05, 1.72692e-05, 1.75449e-05, 1.77841e-05, 1.79844e-05, 
			8.0191e-06, 9.774e-06, 1.13557e-05, 1.27643e-05, 1.3964e-05, 1.50145e-05, 1.59104e-05, 1.66636e-05, 1.73134e-05, 1.78636e-05, 1.83337e-05, 1.87319e-05, 1.90716e-05, 1.9363e-05, 1.96129e-05, 1.98267e-05, 
			9.6471e-06, 1.13848e-05, 1.29536e-05, 1.43678e-05, 1.56005e-05, 1.66626e-05, 1.75646e-05, 1.83436e-05, 1.90066e-05, 1.9572e-05, 2.00538e-05, 2.04684e-05, 2.0818e-05, 2.11204e-05, 2.15128e-05, 2.17093e-05, 
			1.12957e-05, 1.299e-05, 1.45743e-05, 1.5987e-05, 1.7214e-05, 1.8285e-05, 1.92054e-05, 1.9993e-05, 2.06672e-05, 2.12422e-05, 2.17366e-05, 2.21584e-05, 2.25211e-05, 2.29499e-05, 2.31937e-05, 2.34036e-05
		)
}

CapTable	"metal5_C_TOP_GP_41NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.90467e-05, 3.88424e-05, 4.72304e-05, 5.42808e-05, 6.0155e-05, 6.50239e-05, 6.90696e-05, 7.24167e-05, 7.52143e-05, 7.75489e-05, 7.94978e-05, 8.11383e-05, 8.25208e-05, 8.36904e-05, 8.46838e-05, 8.55312e-05, 
			4.02933e-05, 5.02025e-05, 5.87146e-05, 6.5903e-05, 7.19395e-05, 7.69704e-05, 8.11911e-05, 8.47157e-05, 8.76685e-05, 9.01458e-05, 9.2233e-05, 9.39961e-05, 9.54899e-05, 9.67619e-05, 9.78429e-05, 9.87716e-05, 
			5.18269e-05, 6.17242e-05, 7.02423e-05, 7.74867e-05, 8.3586e-05, 8.87239e-05, 9.30412e-05, 9.66636e-05, 9.9717e-05, 0.000102293, 0.000104471, 0.00010632, 0.000107895, 0.000109235, 0.000110384, 0.000111371, 
			6.34459e-05, 7.32868e-05, 8.17846e-05, 8.90494e-05, 9.52017e-05, 0.000100395, 0.000104774, 0.000108471, 0.000111596, 0.000114242, 0.000116491, 0.0001184, 0.000120034, 0.000121431, 0.000122488, 0.000123552, 
			7.50903e-05, 8.48508e-05, 9.33415e-05, 0.00010061, 0.000106783, 0.000112014, 0.000116437, 0.000120186, 0.000123365, 0.000126066, 0.000128362, 0.000130323, 0.000132001, 0.000133316, 0.000134583, 0.000135681
		)
}

CapTable	"metal5_C_LATERAL_41NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000244666, 0.000132524, 8.9805e-05, 6.63198e-05, 5.12552e-05, 4.07618e-05, 3.30418e-05, 2.72094e-05, 2.26384e-05, 1.9014e-05, 1.61114e-05, 1.37376e-05, 1.17872e-05, 1.0171e-05, 8.82176e-06, 7.68814e-06, 
			0.000254062, 0.000139553, 9.53962e-05, 7.0986e-05, 5.52226e-05, 4.42088e-05, 3.60468e-05, 2.9816e-05, 2.4942e-05, 2.10684e-05, 1.79282e-05, 1.5361e-05, 1.32419e-05, 1.14782e-05, 1e-05, 8.75304e-06, 
			0.00025898, 0.000143759, 9.9018e-05, 7.4127e-05, 5.8014e-05, 4.66456e-05, 3.82194e-05, 3.17728e-05, 2.66966e-05, 2.26364e-05, 1.93423e-05, 1.66391e-05, 1.43994e-05, 1.2529e-05, 1.09561e-05, 9.62528e-06, 
			0.00026181, 0.000146652, 0.00010167, 7.65058e-05, 6.01328e-05, 4.85614e-05, 3.99644e-05, 3.33414e-05, 2.81214e-05, 2.3932e-05, 2.05222e-05, 1.77156e-05, 1.5383e-05, 1.34296e-05, 1.17932e-05, 1.03937e-05, 
			0.0002633, 0.000148709, 0.000103632, 7.8335e-05, 6.1829e-05, 5.012e-05, 4.13936e-05, 3.4652e-05, 2.93238e-05, 2.50358e-05, 2.15364e-05, 1.86486e-05, 1.62429e-05, 1.42331e-05, 1.25243e-05, 1.10704e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_42NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.3103e-05, 1.6131e-05, 1.8576e-05, 2.06412e-05, 2.244e-05, 2.4047e-05, 2.5508e-05, 2.68547e-05, 2.81088e-05, 2.92858e-05, 3.03968e-05, 3.14504e-05, 3.24528e-05, 3.34089e-05, 3.43227e-05, 3.51971e-05, 
			1.5271e-05, 1.79331e-05, 2.02078e-05, 2.22012e-05, 2.39864e-05, 2.56114e-05, 2.71092e-05, 2.8505e-05, 2.98154e-05, 3.10532e-05, 3.22275e-05, 3.33455e-05, 3.44127e-05, 3.54334e-05, 3.64112e-05, 3.73486e-05, 
			1.7247e-05, 1.96822e-05, 2.18348e-05, 2.37712e-05, 2.5539e-05, 2.71704e-05, 2.86912e-05, 3.01197e-05, 3.14694e-05, 3.27505e-05, 3.39707e-05, 3.51361e-05, 3.62513e-05, 3.73203e-05, 3.8346e-05, 3.93311e-05, 
			1.9108e-05, 2.1387e-05, 2.34534e-05, 2.5349e-05, 2.7102e-05, 2.87384e-05, 3.02758e-05, 3.1729e-05, 3.3109e-05, 3.44237e-05, 3.56801e-05, 3.68829e-05, 3.80362e-05, 3.91436e-05, 4.02077e-05, 4.12309e-05, 
			2.0899e-05, 2.30638e-05, 2.50704e-05, 2.69348e-05, 2.86788e-05, 3.03192e-05, 3.18706e-05, 3.33438e-05, 3.4748e-05, 3.60905e-05, 3.73761e-05, 3.86095e-05, 3.9794e-05, 4.09329e-05, 4.20285e-05, 4.30833e-05
		)
}

CapTable	"metal5_C_LATERAL_42NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000260092, 0.000152467, 0.000113062, 9.19108e-05, 7.8412e-05, 6.88802e-05, 6.1688e-05, 5.60022e-05, 5.13502e-05, 4.7443e-05, 4.40938e-05, 4.11756e-05, 3.85994e-05, 3.63006e-05, 3.4231e-05, 3.2354e-05, 
			0.000275422, 0.000164769, 0.000123379, 0.000100863, 8.63446e-05, 7.60156e-05, 6.81784e-05, 6.19566e-05, 5.68502e-05, 5.25514e-05, 4.88602e-05, 4.56402e-05, 4.27952e-05, 4.02552e-05, 3.79674e-05, 3.58922e-05, 
			0.000285416, 0.000173378, 0.000130888, 0.000107533, 9.2341e-05, 8.14696e-05, 7.31808e-05, 6.65762e-05, 6.11398e-05, 5.6553e-05, 5.26078e-05, 4.91618e-05, 4.61142e-05, 4.3391e-05, 4.09372e-05, 3.87102e-05, 
			0.000292458, 0.000179925, 0.000136764, 0.000112826, 9.7166e-05, 8.58956e-05, 7.72662e-05, 7.0368e-05, 6.46754e-05, 5.98632e-05, 5.57174e-05, 5.20918e-05, 4.88824e-05, 4.60124e-05, 4.34248e-05, 4.10752e-05, 
			0.000297482, 0.000185033, 0.000141482, 0.000117153, 0.000101143, 8.95728e-05, 8.06874e-05, 7.35582e-05, 6.7662e-05, 6.26686e-05, 5.83608e-05, 5.45892e-05, 5.12474e-05, 4.8257e-05, 4.55592e-05, 4.31082e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_31NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			6.6791e-06, 8.9772e-06, 1.10477e-05, 1.28851e-05, 1.4466e-05, 1.58351e-05, 1.69746e-05, 1.79519e-05, 1.87704e-05, 1.9449e-05, 2.00232e-05, 2.05056e-05, 2.09081e-05, 2.12437e-05, 2.15281e-05, 2.1768e-05, 
			8.8304e-06, 1.11068e-05, 1.3201e-05, 1.50718e-05, 1.6723e-05, 1.81284e-05, 1.93435e-05, 2.03714e-05, 2.12317e-05, 2.1962e-05, 2.25784e-05, 2.30931e-05, 2.35288e-05, 2.38976e-05, 2.42106e-05, 2.44643e-05, 
			1.09933e-05, 1.32382e-05, 1.53461e-05, 1.72312e-05, 1.891e-05, 2.0365e-05, 2.16034e-05, 2.26638e-05, 2.35642e-05, 2.43234e-05, 2.49634e-05, 2.55061e-05, 2.59655e-05, 2.63431e-05, 2.66684e-05, 2.69493e-05, 
			1.31429e-05, 1.53847e-05, 1.74722e-05, 1.93844e-05, 2.10763e-05, 2.25415e-05, 2.3809e-05, 2.48928e-05, 2.58086e-05, 2.65908e-05, 2.72534e-05, 2.7801e-05, 2.82708e-05, 2.86769e-05, 2.9028e-05, 2.93304e-05, 
			1.52768e-05, 1.74934e-05, 1.9591e-05, 2.14969e-05, 2.31966e-05, 2.46818e-05, 2.59608e-05, 2.70544e-05, 2.79918e-05, 2.879e-05, 2.94402e-05, 3.0015e-05, 3.05107e-05, 3.09403e-05, 3.13341e-05, 3.16445e-05
		)
}

CapTable	"metal5_C_TOP_GP_31NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.76929e-05, 3.74376e-05, 4.57557e-05, 5.27051e-05, 5.84628e-05, 6.32089e-05, 6.7118e-05, 7.03405e-05, 7.29938e-05, 7.51874e-05, 7.70021e-05, 7.85052e-05, 7.97573e-05, 8.08037e-05, 8.1677e-05, 8.24092e-05, 
			3.87546e-05, 4.86879e-05, 5.71844e-05, 6.43092e-05, 7.02354e-05, 7.51474e-05, 7.92111e-05, 8.25702e-05, 8.53569e-05, 8.76666e-05, 8.95833e-05, 9.11854e-05, 9.25195e-05, 9.36372e-05, 9.45732e-05, 9.53736e-05, 
			5.02097e-05, 6.0192e-05, 6.87387e-05, 7.59328e-05, 8.19396e-05, 8.6929e-05, 9.10756e-05, 9.4517e-05, 9.73736e-05, 9.97532e-05, 0.000101739, 0.000103396, 0.000104784, 0.000105964, 0.000106948, 0.000107774, 
			6.18291e-05, 7.18041e-05, 8.03712e-05, 8.75942e-05, 9.36341e-05, 9.86717e-05, 0.000102863, 0.000106348, 0.000109258, 0.00011168, 0.000113706, 0.000115418, 0.00011685, 0.000118043, 0.000119046, 0.00011989, 
			7.35222e-05, 8.34674e-05, 9.20278e-05, 9.92611e-05, 0.000105319, 0.000110371, 0.000114581, 0.000118098, 0.00012103, 0.00012348, 0.000125562, 0.000127285, 0.000128726, 0.000129931, 0.000130918, 0.000131787
		)
}

CapTable	"metal5_C_LATERAL_31NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000244216, 0.000131777, 8.87966e-05, 6.50938e-05, 4.98652e-05, 3.9228e-05, 3.14484e-05, 2.55386e-05, 2.09628e-05, 1.73626e-05, 1.44847e-05, 1.21642e-05, 1.02766e-05, 8.72964e-06, 7.45392e-06, 6.39576e-06, 
			0.00025334, 0.000138496, 9.40456e-05, 6.9395e-05, 5.34616e-05, 4.23112e-05, 3.40894e-05, 2.78394e-05, 2.29814e-05, 1.91354e-05, 1.60543e-05, 1.35595e-05, 1.15227e-05, 9.8472e-06, 8.46016e-06, 7.3041e-06, 
			0.000257924, 0.000142373, 9.73082e-05, 7.2199e-05, 5.58904e-05, 4.4427e-05, 3.5963e-05, 2.95022e-05, 2.44612e-05, 2.04614e-05, 1.72466e-05, 1.46359e-05, 1.24975e-05, 1.07309e-05, 9.26558e-06, 8.04268e-06, 
			0.000260428, 0.000144897, 9.95866e-05, 7.42024e-05, 5.76866e-05, 4.60408e-05, 3.7411e-05, 3.08112e-05, 2.56474e-05, 2.15402e-05, 1.82306e-05, 1.5534e-05, 1.33192e-05, 1.14901e-05, 9.96696e-06, 8.69262e-06, 
			0.000261592, 0.000146593, 0.00010122, 7.5721e-05, 5.90774e-05, 4.73152e-05, 3.85922e-05, 3.18966e-05, 2.66482e-05, 2.2464e-05, 1.90818e-05, 1.6323e-05, 1.40543e-05, 1.21757e-05, 1.06109e-05, 9.29454e-06
		)
}

CapTable	"metal5_C_BOTTOM_GP_32NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.4817e-05, 1.84246e-05, 2.1409e-05, 2.39788e-05, 2.62526e-05, 2.83035e-05, 3.01798e-05, 3.19135e-05, 3.35263e-05, 3.50342e-05, 3.64491e-05, 3.77801e-05, 3.90342e-05, 4.02178e-05, 4.13353e-05, 4.23917e-05, 
			1.7575e-05, 2.08353e-05, 2.368e-05, 2.62168e-05, 2.85158e-05, 3.06238e-05, 3.25746e-05, 3.43925e-05, 3.60939e-05, 3.76918e-05, 3.91965e-05, 4.06157e-05, 4.1956e-05, 4.3223e-05, 4.44216e-05, 4.55561e-05, 
			2.0177e-05, 2.32316e-05, 2.59824e-05, 2.84922e-05, 3.08032e-05, 3.29464e-05, 3.49456e-05, 3.68199e-05, 3.85815e-05, 4.02419e-05, 4.18091e-05, 4.32905e-05, 4.46921e-05, 4.6019e-05, 4.72758e-05, 4.8467e-05, 
			2.2697e-05, 2.562e-05, 2.83102e-05, 3.08024e-05, 3.31212e-05, 3.52898e-05, 3.73242e-05, 3.92386e-05, 4.10452e-05, 4.2751e-05, 4.4365e-05, 4.58932e-05, 4.7341e-05, 4.87135e-05, 5.00149e-05, 5.12497e-05, 
			2.5183e-05, 2.8014e-05, 3.0665e-05, 3.31452e-05, 3.54702e-05, 3.7657e-05, 3.97166e-05, 4.16616e-05, 4.35012e-05, 4.5242e-05, 4.68918e-05, 4.84559e-05, 4.99397e-05, 5.13477e-05, 5.26846e-05, 5.39539e-05
		)
}

CapTable	"metal5_C_LATERAL_32NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.00025872, 0.000150719, 0.000110983, 8.95342e-05, 7.57674e-05, 6.59946e-05, 5.85876e-05, 5.2712e-05, 4.78946e-05, 4.38456e-05, 4.03768e-05, 3.73602e-05, 3.47056e-05, 3.23466e-05, 3.0234e-05, 2.83292e-05, 
			0.000273632, 0.000162607, 0.000120878, 9.80522e-05, 8.32542e-05, 7.26742e-05, 6.46148e-05, 5.81988e-05, 5.29254e-05, 4.84858e-05, 4.4678e-05, 4.13646e-05, 3.84474e-05, 3.58546e-05, 3.3532e-05, 3.14378e-05, 
			0.000283174, 0.000170789, 0.000127957, 0.000104286, 8.88138e-05, 7.76916e-05, 6.91834e-05, 6.23894e-05, 5.6793e-05, 5.20734e-05, 4.80212e-05, 4.44918e-05, 4.13824e-05, 3.86174e-05, 3.61396e-05, 3.39044e-05, 
			0.000289806, 0.000176902, 0.000133398, 0.00010915, 9.32128e-05, 8.16992e-05, 7.28598e-05, 6.57834e-05, 5.99428e-05, 5.50106e-05, 5.07708e-05, 4.70748e-05, 4.38164e-05, 4.09172e-05, 3.83178e-05, 3.59718e-05, 
			0.000294384, 0.000181569, 0.000137682, 0.000113053, 9.67778e-05, 8.4978e-05, 7.58974e-05, 6.86054e-05, 6.25768e-05, 5.7479e-05, 5.30922e-05, 4.9265e-05, 4.58884e-05, 4.28822e-05, 4.0185e-05, 3.77498e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_21NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.0227e-05, 1.38894e-05, 1.72337e-05, 2.0208e-05, 2.27748e-05, 2.49437e-05, 2.67598e-05, 2.82519e-05, 2.94652e-05, 3.04501e-05, 3.12436e-05, 3.1883e-05, 3.2395e-05, 3.28015e-05, 3.31397e-05, 3.34027e-05, 
			1.39058e-05, 1.76558e-05, 2.11237e-05, 2.42337e-05, 2.69229e-05, 2.92136e-05, 3.1123e-05, 3.26999e-05, 3.39886e-05, 3.50344e-05, 3.58816e-05, 3.65557e-05, 3.71038e-05, 3.75552e-05, 3.79088e-05, 3.81919e-05, 
			1.77615e-05, 2.15791e-05, 2.51216e-05, 2.83071e-05, 3.1075e-05, 3.34256e-05, 3.53929e-05, 3.70175e-05, 3.83494e-05, 3.94253e-05, 4.02986e-05, 4.10214e-05, 4.159e-05, 4.2048e-05, 4.24157e-05, 4.27124e-05, 
			2.17336e-05, 2.55965e-05, 2.91987e-05, 3.24257e-05, 3.52374e-05, 3.76275e-05, 3.96296e-05, 4.12868e-05, 4.26322e-05, 4.37393e-05, 4.46507e-05, 4.53739e-05, 4.59569e-05, 4.64276e-05, 4.68054e-05, 4.71097e-05, 
			2.57871e-05, 2.96824e-05, 3.33154e-05, 3.65759e-05, 3.94114e-05, 4.18276e-05, 4.38366e-05, 4.55112e-05, 4.69047e-05, 4.8025e-05, 4.89323e-05, 4.96668e-05, 5.02592e-05, 5.07383e-05, 5.11231e-05, 5.14348e-05
		)
}

CapTable	"metal5_C_TOP_GP_21NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.6621e-05, 3.61327e-05, 4.43405e-05, 5.12592e-05, 5.70032e-05, 6.17215e-05, 6.55592e-05, 6.86663e-05, 7.11695e-05, 7.31751e-05, 7.47843e-05, 7.60687e-05, 7.70994e-05, 7.79256e-05, 7.85706e-05, 7.90974e-05, 
			3.77292e-05, 4.75272e-05, 5.59837e-05, 6.31271e-05, 6.90801e-05, 7.39828e-05, 7.79872e-05, 8.12363e-05, 8.38601e-05, 8.5973e-05, 8.76666e-05, 8.90361e-05, 9.01238e-05, 9.09829e-05, 9.16825e-05, 9.22431e-05, 
			4.93325e-05, 5.92377e-05, 6.77972e-05, 7.50443e-05, 8.10988e-05, 8.60968e-05, 9.01875e-05, 9.35169e-05, 9.62079e-05, 9.83885e-05, 0.00010014, 0.000101523, 0.00010265, 0.000103553, 0.000104278, 0.000104859, 
			6.11624e-05, 7.11039e-05, 7.97085e-05, 8.70127e-05, 9.31218e-05, 9.81743e-05, 0.000102319, 0.000105692, 0.000108442, 0.00011065, 0.000112412, 0.000113844, 0.000114994, 0.000115916, 0.000116657, 0.000117252, 
			7.31159e-05, 8.30464e-05, 9.16702e-05, 9.90011e-05, 0.000105145, 0.000110229, 0.000114417, 0.000117826, 0.000120564, 0.000122799, 0.000124601, 0.000126051, 0.000127216, 0.000128151, 0.000128903, 0.000129506
		)
}

CapTable	"metal5_C_LATERAL_21NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000242296, 0.000129139, 8.54768e-05, 6.11828e-05, 4.5489e-05, 3.45458e-05, 2.657e-05, 2.06078e-05, 1.60763e-05, 1.25898e-05, 9.88514e-06, 7.7743e-06, 6.11764e-06, 4.81294e-06, 3.7837e-06, 2.96588e-06, 
			0.000250328, 0.000134702, 8.95376e-05, 6.42732e-05, 4.7894e-05, 3.64326e-05, 2.80678e-05, 2.17968e-05, 1.70173e-05, 1.33326e-05, 1.04688e-05, 8.22716e-06, 6.46738e-06, 5.07992e-06, 3.97974e-06, 3.10604e-06, 
			0.000253722, 0.00013737, 9.16062e-05, 6.59026e-05, 4.91762e-05, 3.74566e-05, 2.88806e-05, 2.24416e-05, 1.75257e-05, 1.37282e-05, 1.07714e-05, 8.45962e-06, 6.63702e-06, 5.19696e-06, 4.05534e-06, 3.14758e-06, 
			0.000255006, 0.000138712, 9.27178e-05, 6.67986e-05, 4.99028e-05, 3.80362e-05, 2.93404e-05, 2.28022e-05, 1.78018e-05, 1.39367e-05, 1.09263e-05, 8.56306e-06, 6.7011e-06, 5.22836e-06, 4.05962e-06, 3.12928e-06, 
			0.000254958, 0.00013924, 9.32454e-05, 6.7249e-05, 5.02676e-05, 3.83284e-05, 2.95744e-05, 2.29758e-05, 1.79323e-05, 1.4024e-05, 1.09747e-05, 8.58118e-06, 6.69382e-06, 5.1997e-06, 4.01288e-06, 3.06722e-06
		)
}

CapTable	"metal5_C_BOTTOM_GP_22NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.807e-05, 2.29676e-05, 2.71578e-05, 3.08374e-05, 3.41158e-05, 3.70657e-05, 3.97366e-05, 4.21655e-05, 4.43811e-05, 4.64073e-05, 4.82635e-05, 4.99671e-05, 5.15327e-05, 5.29733e-05, 5.43004e-05, 5.55246e-05, 
			2.2169e-05, 2.67791e-05, 3.08916e-05, 3.45922e-05, 3.79426e-05, 4.09894e-05, 4.377e-05, 4.63133e-05, 4.86444e-05, 5.07846e-05, 5.27522e-05, 5.45637e-05, 5.62334e-05, 5.77743e-05, 5.91978e-05, 6.0514e-05, 
			2.6201e-05, 3.0645e-05, 3.46938e-05, 3.83926e-05, 4.17748e-05, 4.48734e-05, 4.77164e-05, 5.03284e-05, 5.27318e-05, 5.49449e-05, 5.6986e-05, 5.88701e-05, 6.06112e-05, 6.22217e-05, 6.37131e-05, 6.50958e-05, 
			3.0208e-05, 3.45362e-05, 3.8536e-05, 4.22232e-05, 4.56186e-05, 4.87448e-05, 5.16254e-05, 5.4282e-05, 5.67332e-05, 5.89968e-05, 6.10902e-05, 6.3027e-05, 6.4821e-05, 6.64838e-05, 6.80267e-05, 6.94603e-05, 
			3.4209e-05, 3.84414e-05, 4.23988e-05, 4.6069e-05, 4.94662e-05, 5.26064e-05, 5.55092e-05, 5.81942e-05, 6.06786e-05, 6.29786e-05, 6.51092e-05, 6.70856e-05, 6.89194e-05, 7.0624e-05, 7.22074e-05, 7.3682e-05
		)
}

CapTable	"metal5_C_LATERAL_22NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000256048, 0.000147227, 0.000106803, 8.47876e-05, 7.05652e-05, 6.04374e-05, 5.27636e-05, 4.66976e-05, 4.17548e-05, 3.76348e-05, 3.41408e-05, 3.11366e-05, 2.85252e-05, 2.62346e-05, 2.42104e-05, 2.24098e-05, 
			0.00027002, 0.000158228, 0.000115863, 9.25248e-05, 7.73254e-05, 6.64426e-05, 5.8165e-05, 5.16032e-05, 4.62442e-05, 4.17692e-05, 3.7968e-05, 3.4695e-05, 3.18458e-05, 2.9343e-05, 2.7128e-05, 2.51552e-05, 
			0.000278676, 0.000165602, 0.000122209, 9.80974e-05, 8.22902e-05, 7.09246e-05, 6.22506e-05, 5.53566e-05, 4.97142e-05, 4.49938e-05, 4.09772e-05, 3.75134e-05, 3.44936e-05, 3.18372e-05, 2.94826e-05, 2.7382e-05, 
			0.000284508, 0.000171008, 0.000127029, 0.000102417, 8.62124e-05, 7.45142e-05, 6.55596e-05, 5.8426e-05, 5.25758e-05, 4.76732e-05, 4.34948e-05, 3.9886e-05, 3.6735e-05, 3.39592e-05, 3.14952e-05, 2.92938e-05, 
			0.00028839, 0.00017508, 0.000130804, 0.000105886, 8.94078e-05, 7.74776e-05, 6.83278e-05, 6.10168e-05, 5.50104e-05, 4.99684e-05, 4.56648e-05, 4.19424e-05, 3.86876e-05, 3.5816e-05, 3.32636e-05, 3.098e-05
		)
}

CapTable	"metal5_C_BOTTOM_GPNOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.48853e-05, 3.46765e-05, 4.31909e-05, 5.01669e-05, 5.56084e-05, 5.97006e-05, 6.26953e-05, 6.48454e-05, 6.63643e-05, 6.74284e-05, 6.81671e-05, 6.86783e-05, 6.903e-05, 6.92709e-05, 6.94363e-05, 6.95497e-05, 
			3.63024e-05, 4.64709e-05, 5.52304e-05, 6.23668e-05, 6.79197e-05, 7.20935e-05, 7.51417e-05, 7.73292e-05, 7.88757e-05, 7.99573e-05, 8.07084e-05, 8.12261e-05, 8.15823e-05, 8.18256e-05, 8.19929e-05, 8.21069e-05, 
			4.82237e-05, 5.85088e-05, 6.73264e-05, 7.44978e-05, 8.00761e-05, 8.42585e-05, 8.73168e-05, 8.95086e-05, 9.10582e-05, 9.214e-05, 9.28904e-05, 9.3407e-05, 9.37623e-05, 9.40047e-05, 9.41704e-05, 9.4283e-05, 
			6.03105e-05, 7.06071e-05, 7.9431e-05, 8.65951e-05, 9.21658e-05, 9.63419e-05, 9.9393e-05, 0.000101579, 0.000103121, 0.000104199, 0.000104945, 0.00010546, 0.000105813, 0.000106053, 0.000106217, 0.000106327, 
			7.24332e-05, 8.26974e-05, 9.14981e-05, 9.86468e-05, 0.000104196, 0.000108356, 0.000111388, 0.000113564, 0.000115097, 0.000116169, 0.000116911, 0.000117421, 0.000117769, 0.000118005, 0.000118166, 0.000118276
		)
}

CapTable	"metal5_C_TOP_GPNOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.46567e-05, 3.41655e-05, 4.23503e-05, 4.90037e-05, 5.41658e-05, 5.80362e-05, 6.08627e-05, 6.28843e-05, 6.43165e-05, 6.53147e-05, 6.60101e-05, 6.6489e-05, 6.6819e-05, 6.70445e-05, 6.71974e-05, 6.72994e-05, 
			3.61516e-05, 4.60377e-05, 5.44586e-05, 6.12724e-05, 6.65465e-05, 7.04913e-05, 7.33762e-05, 7.54337e-05, 7.68909e-05, 7.79096e-05, 7.86146e-05, 7.91017e-05, 7.94353e-05, 7.96633e-05, 7.98134e-05, 7.99126e-05, 
			4.81303e-05, 5.81328e-05, 6.66206e-05, 7.34722e-05, 7.87691e-05, 8.27349e-05, 8.56218e-05, 8.7691e-05, 8.91493e-05, 9.01693e-05, 9.08755e-05, 9.13609e-05, 9.16914e-05, 9.19137e-05, 9.20605e-05, 9.21549e-05, 
			6.02685e-05, 7.02917e-05, 7.8785e-05, 8.56453e-05, 9.09338e-05, 9.48933e-05, 9.77802e-05, 9.98428e-05, 0.000101299, 0.000102314, 0.000103018, 0.000103495, 0.000103819, 0.000104036, 0.000104177, 0.000104267, 
			7.24558e-05, 8.24464e-05, 9.09359e-05, 9.77686e-05, 0.000103053, 0.000106996, 0.000109868, 0.000111923, 0.000113371, 0.000114378, 0.000115071, 0.000115543, 0.000115861, 0.000116072, 0.000116208, 0.000116292
		)
}

CapTable	"metal5_C_LATERALNOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.00023349, 0.00011759, 7.22308e-05, 4.72374e-05, 3.16708e-05, 2.14552e-05, 1.4594e-05, 9.93732e-06, 6.76118e-06, 4.59194e-06, 3.10882e-06, 2.09574e-06, 1.40397e-06, 9.32564e-07, 6.12268e-07, 3.95872e-07, 
			0.000237616, 0.000119881, 7.3583e-05, 4.80908e-05, 3.22238e-05, 2.18172e-05, 1.48291e-05, 1.00891e-05, 6.85744e-06, 4.65112e-06, 3.145e-06, 2.11724e-06, 1.41738e-06, 9.42146e-07, 6.21738e-07, 4.07504e-07, 
			0.000238008, 0.000120177, 7.3761e-05, 4.8201e-05, 3.22828e-05, 2.18476e-05, 1.48434e-05, 1.00924e-05, 6.85654e-06, 4.64868e-06, 3.14312e-06, 2.11806e-06, 1.42232e-06, 9.526e-07, 6.38128e-07, 4.3014e-07, 
			0.000237146, 0.000119868, 7.3587e-05, 4.80746e-05, 3.21984e-05, 2.17878e-05, 1.47998e-05, 1.00628e-05, 6.83746e-06, 4.6395e-06, 3.1427e-06, 2.12698e-06, 1.44007e-06, 9.78824e-07, 6.72112e-07, 4.70954e-07, 
			0.000235622, 0.000119287, 7.3253e-05, 4.78616e-05, 3.20486e-05, 2.16878e-05, 1.47459e-05, 1.00315e-05, 6.82466e-06, 4.64218e-06, 3.1593e-06, 2.15522e-06, 1.47878e-06, 1.02653e-06, 7.27574e-07, 5.32806e-07
		)
}

CapTable	"metal5_C_BOTTOM_GP_12NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			3.3378e-05, 4.47442e-05, 5.44432e-05, 6.2546e-05, 6.9233e-05, 7.47234e-05, 7.9232e-05, 8.29426e-05, 8.60118e-05, 8.8565e-05, 9.07039e-05, 9.25088e-05, 9.40411e-05, 9.53523e-05, 9.64824e-05, 9.74628e-05, 
			4.5769e-05, 5.71199e-05, 6.68612e-05, 7.50536e-05, 8.18678e-05, 8.75118e-05, 9.21854e-05, 9.60648e-05, 9.93018e-05, 0.000102017, 0.000104308, 0.000106256, 0.000107924, 0.00010936, 0.000110606, 0.000111692, 
			5.8346e-05, 6.95618e-05, 7.9229e-05, 8.74112e-05, 9.42662e-05, 9.99812e-05, 0.000104747, 0.000108733, 0.000112079, 0.000114905, 0.000117305, 0.000119358, 0.000121125, 0.000122656, 0.000123989, 0.000125159, 
			7.0892e-05, 8.19482e-05, 9.15268e-05, 9.96796e-05, 0.000106546, 0.000112305, 0.000117135, 0.000121196, 0.000124625, 0.000127536, 0.000130022, 0.000132159, 0.000134006, 0.000135613, 0.000137019, 0.000138258, 
			8.335e-05, 9.42476e-05, 0.000103745, 0.000111863, 0.000118735, 0.000124523, 0.000129397, 0.000133518, 0.000137012, 0.000139992, 0.000142549, 0.000144754, 0.000146669, 0.000148341, 0.00014981, 0.000151108
		)
}

CapTable	"metal5_C_LATERAL_12NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.00024518, 0.000133366, 9.09938e-05, 6.7862e-05, 5.3145e-05, 4.29706e-05, 3.5563e-05, 2.99744e-05, 2.56442e-05, 2.2218e-05, 1.94591e-05, 1.72042e-05, 1.53369e-05, 1.37727e-05, 1.24486e-05, 1.13172e-05, 
			0.000255126, 0.00014104, 9.72918e-05, 7.32614e-05, 5.78812e-05, 4.71832e-05, 3.93446e-05, 3.33912e-05, 2.87472e-05, 2.50474e-05, 2.20486e-05, 1.95815e-05, 1.75258e-05, 1.57936e-05, 1.43191e-05, 1.30525e-05, 
			0.000260696, 0.000145977, 0.000101669, 7.71968e-05, 6.14428e-05, 5.04298e-05, 4.23166e-05, 3.61202e-05, 3.12598e-05, 2.73662e-05, 2.4193e-05, 2.15688e-05, 1.93711e-05, 1.75102e-05, 1.59189e-05, 1.45461e-05, 
			0.00026429, 0.000149643, 0.000105091, 8.03544e-05, 6.43678e-05, 5.31382e-05, 4.48256e-05, 3.84478e-05, 3.34218e-05, 2.9377e-05, 2.60658e-05, 2.33154e-05, 2.10024e-05, 1.90358e-05, 1.73477e-05, 1.5886e-05, 
			0.000266584, 0.000152488, 0.000107874, 8.29938e-05, 6.68444e-05, 5.54592e-05, 4.70058e-05, 4.04864e-05, 3.53286e-05, 3.11616e-05, 2.77372e-05, 2.48824e-05, 2.24728e-05, 2.04172e-05, 1.86468e-05, 1.7109e-05
		)
}

CapTable	"metal6_C_BOTTOM_GP_71NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.44, 0.88, 1.32, 1.76, 2.2, 2.64, 3.08, 3.52, 3.96, 4.4, 4.84, 5.28, 5.72, 6.16, 6.6, 7.04)
		capValue			= (
			1.47656e-05, 1.77814e-05, 2.0224e-05, 2.23407e-05, 2.42384e-05, 2.59734e-05, 2.75785e-05, 2.9075e-05, 3.04776e-05, 3.1797e-05, 3.3041e-05, 3.42158e-05, 3.53265e-05, 3.63773e-05, 3.73717e-05, 3.83132e-05, 
			1.67728e-05, 1.96174e-05, 2.20726e-05, 2.42632e-05, 2.62603e-05, 2.81053e-05, 2.9825e-05, 3.14372e-05, 3.29552e-05, 3.43879e-05, 3.57425e-05, 3.7025e-05, 3.82398e-05, 3.93911e-05, 4.04826e-05, 4.15171e-05, 
			1.8916e-05, 2.16458e-05, 2.40806e-05, 2.62974e-05, 2.83448e-05, 3.02533e-05, 3.20437e-05, 3.37305e-05, 3.53243e-05, 3.68333e-05, 3.82632e-05, 3.96194e-05, 4.09064e-05, 4.21276e-05, 4.32867e-05, 4.43867e-05, 
			2.112e-05, 2.37656e-05, 2.6178e-05, 2.8407e-05, 3.04844e-05, 3.24358e-05, 3.4276e-05, 3.60164e-05, 3.76659e-05, 3.92309e-05, 4.07168e-05, 4.21285e-05, 4.34696e-05, 4.47436e-05, 4.59541e-05, 4.71039e-05, 
			2.3347e-05, 2.5931e-05, 2.83252e-05, 3.05614e-05, 3.26626e-05, 3.46462e-05, 3.65244e-05, 3.83061e-05, 3.99989e-05, 4.16081e-05, 4.31383e-05, 4.45938e-05, 4.59779e-05, 4.72943e-05, 4.8546e-05, 4.97357e-05
		)
}

CapTable	"metal6_C_LATERAL_71NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.44, 0.88, 1.32, 1.76, 2.2, 2.64, 3.08, 3.52, 3.96, 4.4, 4.84, 5.28, 5.72, 6.16, 6.6, 7.04)
		capValue			= (
			0.000175657, 0.000111405, 8.5502e-05, 7.05886e-05, 6.05566e-05, 5.31878e-05, 4.74598e-05, 4.28282e-05, 3.89736e-05, 3.56952e-05, 3.28596e-05, 3.03744e-05, 2.8173e-05, 2.62062e-05, 2.44366e-05, 2.2835e-05, 
			0.000192879, 0.000124455, 9.60374e-05, 7.94628e-05, 6.82416e-05, 5.99708e-05, 5.3529e-05, 4.83146e-05, 4.39724e-05, 4.02786e-05, 3.70838e-05, 3.4284e-05, 3.18046e-05, 2.959e-05, 2.75978e-05, 2.57954e-05, 
			0.00020269, 0.000132648, 0.000102972, 8.54766e-05, 7.35542e-05, 6.47276e-05, 5.78316e-05, 5.22372e-05, 4.75714e-05, 4.35976e-05, 4.0158e-05, 3.7142e-05, 3.44698e-05, 3.20824e-05, 2.99342e-05, 2.79902e-05, 
			0.00020866, 0.00013825, 0.00010794, 8.9901e-05, 7.75366e-05, 6.83382e-05, 6.11286e-05, 5.52658e-05, 5.03674e-05, 4.619e-05, 4.25704e-05, 3.93938e-05, 3.65778e-05, 3.40606e-05, 3.17946e-05, 2.97432e-05, 
			0.000213268, 0.000142684, 0.00011194, 9.35046e-05, 8.07994e-05, 7.13168e-05, 6.38636e-05, 5.779e-05, 5.27074e-05, 4.83676e-05, 4.46036e-05, 4.1298e-05, 3.83658e-05, 3.57432e-05, 3.33814e-05, 3.12424e-05
		)
}

CapTable	"metal6_C_BOTTOM_GP_61NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.44, 0.88, 1.32, 1.76, 2.2, 2.64, 3.08, 3.52, 3.96, 4.4, 4.84, 5.28, 5.72, 6.16, 6.6, 7.04)
		capValue			= (
			1.53142e-05, 1.85176e-05, 2.113e-05, 2.34056e-05, 2.54536e-05, 2.733e-05, 2.90671e-05, 3.06861e-05, 3.22016e-05, 3.36238e-05, 3.49608e-05, 3.62192e-05, 3.74042e-05, 3.85208e-05, 3.9573e-05, 4.05644e-05, 
			1.749e-05, 2.05336e-05, 2.31742e-05, 2.55406e-05, 2.7703e-05, 2.97037e-05, 3.15688e-05, 3.33157e-05, 3.49569e-05, 3.65021e-05, 3.79584e-05, 3.9332e-05, 4.06283e-05, 4.18514e-05, 4.3006e-05, 4.40955e-05, 
			1.9824e-05, 2.27606e-05, 2.53926e-05, 2.77964e-05, 3.00192e-05, 3.20927e-05, 3.40362e-05, 3.58646e-05, 3.7588e-05, 3.92147e-05, 4.0751e-05, 4.22027e-05, 4.35745e-05, 4.48712e-05, 4.60964e-05, 4.72541e-05, 
			2.2234e-05, 2.50952e-05, 2.77121e-05, 3.01348e-05, 3.23948e-05, 3.45156e-05, 3.65139e-05, 3.83996e-05, 4.01818e-05, 4.18675e-05, 4.34624e-05, 4.49717e-05, 4.63999e-05, 4.7751e-05, 4.90293e-05, 5.02382e-05, 
			2.4682e-05, 2.74878e-05, 3.00918e-05, 3.2526e-05, 3.4814e-05, 3.69722e-05, 3.90114e-05, 4.09411e-05, 4.2769e-05, 4.4501e-05, 4.6142e-05, 4.7697e-05, 4.917e-05, 5.05648e-05, 5.18858e-05, 5.31361e-05
		)
}

CapTable	"metal6_C_LATERAL_61NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.44, 0.88, 1.32, 1.76, 2.2, 2.64, 3.08, 3.52, 3.96, 4.4, 4.84, 5.28, 5.72, 6.16, 6.6, 7.04)
		capValue			= (
			0.000175226, 0.000110843, 8.4831e-05, 6.98198e-05, 5.97002e-05, 5.22536e-05, 4.64576e-05, 4.17674e-05, 3.78632e-05, 3.45438e-05, 3.16754e-05, 2.91646e-05, 2.69444e-05, 2.49648e-05, 2.31876e-05, 2.15834e-05, 
			0.000192318, 0.000123762, 9.52308e-05, 7.85544e-05, 6.7243e-05, 5.88932e-05, 5.2383e-05, 4.71104e-05, 4.27202e-05, 3.89872e-05, 3.57616e-05, 3.29388e-05, 3.0443e-05, 2.82184e-05, 2.62214e-05, 2.4419e-05, 
			0.000201994, 0.000131821, 0.000102031, 8.44346e-05, 7.24238e-05, 6.35208e-05, 5.65598e-05, 5.09108e-05, 4.62006e-05, 4.21916e-05, 3.8725e-05, 3.56896e-05, 3.3005e-05, 3.06106e-05, 2.8461e-05, 2.652e-05, 
			0.000207828, 0.00013729, 0.000106869, 8.87332e-05, 7.62852e-05, 6.70154e-05, 5.97458e-05, 5.38338e-05, 4.88962e-05, 4.46884e-05, 4.10464e-05, 3.78548e-05, 3.503e-05, 3.25096e-05, 3.02454e-05, 2.82e-05, 
			0.000212298, 0.000141592, 0.000110743, 9.2217e-05, 7.9434e-05, 6.98858e-05, 6.23786e-05, 5.62612e-05, 5.11446e-05, 4.67792e-05, 4.29972e-05, 3.96804e-05, 3.67428e-05, 3.41204e-05, 3.17632e-05, 2.96328e-05
		)
}

CapTable	"metal6_C_BOTTOM_GP_51NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.44, 0.88, 1.32, 1.76, 2.2, 2.64, 3.08, 3.52, 3.96, 4.4, 4.84, 5.28, 5.72, 6.16, 6.6, 7.04)
		capValue			= (
			1.61972e-05, 1.97128e-05, 2.26108e-05, 2.5152e-05, 2.74474e-05, 2.95523e-05, 3.14982e-05, 3.33057e-05, 3.49891e-05, 3.65595e-05, 3.80254e-05, 3.93944e-05, 4.06731e-05, 4.18674e-05, 4.2983e-05, 4.4025e-05, 
			1.86848e-05, 2.20672e-05, 2.50242e-05, 2.76856e-05, 3.0123e-05, 3.23762e-05, 3.44702e-05, 3.64233e-05, 3.82479e-05, 3.99543e-05, 4.15508e-05, 4.30448e-05, 4.4443e-05, 4.57513e-05, 4.69757e-05, 4.81208e-05, 
			2.1374e-05, 2.467e-05, 2.76384e-05, 3.0356e-05, 3.28682e-05, 3.52071e-05, 3.73907e-05, 3.94343e-05, 4.13486e-05, 4.31429e-05, 4.48249e-05, 4.64018e-05, 4.78799e-05, 4.92649e-05, 5.05629e-05, 5.1779e-05, 
			2.417e-05, 2.74046e-05, 3.03706e-05, 3.31164e-05, 3.56754e-05, 3.8068e-05, 4.03115e-05, 4.24167e-05, 4.43934e-05, 4.62495e-05, 4.79924e-05, 4.96289e-05, 5.1165e-05, 5.26063e-05, 5.39587e-05, 5.52274e-05, 
			2.7025e-05, 3.02126e-05, 3.31732e-05, 3.59376e-05, 3.85282e-05, 4.09608e-05, 4.32482e-05, 4.54e-05, 4.74242e-05, 4.93282e-05, 5.11188e-05, 5.28022e-05, 5.4384e-05, 5.58703e-05, 5.72663e-05, 5.85771e-05
		)
}

CapTable	"metal6_C_LATERAL_51NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.44, 0.88, 1.32, 1.76, 2.2, 2.64, 3.08, 3.52, 3.96, 4.4, 4.84, 5.28, 5.72, 6.16, 6.6, 7.04)
		capValue			= (
			0.000174329, 0.00010979, 8.36292e-05, 6.84818e-05, 5.8241e-05, 5.069e-05, 4.4807e-05, 4.00468e-05, 3.60892e-05, 3.27316e-05, 2.98388e-05, 2.73162e-05, 2.50952e-05, 2.31244e-05, 2.13644e-05, 1.97842e-05, 
			0.000191119, 0.00012242, 9.37428e-05, 7.69324e-05, 6.55036e-05, 5.70544e-05, 5.0464e-05, 4.5129e-05, 4.06934e-05, 3.69306e-05, 3.36892e-05, 3.0863e-05, 2.83746e-05, 2.61666e-05, 2.41942e-05, 2.24232e-05, 
			0.000200502, 0.0001302, 0.000100275, 8.2554e-05, 7.04368e-05, 6.1446e-05, 5.44162e-05, 4.87164e-05, 4.3972e-05, 3.99438e-05, 3.64714e-05, 3.34416e-05, 3.07726e-05, 2.8403e-05, 2.62852e-05, 2.4382e-05, 
			0.00020605, 0.0001354, 0.00010486, 8.66166e-05, 7.40776e-05, 6.4735e-05, 5.7411e-05, 5.14614e-05, 4.65016e-05, 4.22858e-05, 3.8648e-05, 3.54712e-05, 3.26704e-05, 3.01818e-05, 2.7956e-05, 2.59544e-05, 
			0.000210272, 0.000139471, 0.000108519, 8.99004e-05, 7.70418e-05, 6.74352e-05, 5.98868e-05, 5.3744e-05, 4.86162e-05, 4.42526e-05, 4.04834e-05, 3.71892e-05, 3.42828e-05, 3.16982e-05, 2.9385e-05, 2.73034e-05
		)
}

CapTable	"metal6_C_BOTTOM_GP_41NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.44, 0.88, 1.32, 1.76, 2.2, 2.64, 3.08, 3.52, 3.96, 4.4, 4.84, 5.28, 5.72, 6.16, 6.6, 7.04)
		capValue			= (
			1.80218e-05, 2.2184e-05, 2.56846e-05, 2.87864e-05, 3.15951e-05, 3.41621e-05, 3.6517e-05, 3.86804e-05, 4.06685e-05, 4.24951e-05, 4.41731e-05, 4.57138e-05, 4.71283e-05, 4.84268e-05, 4.96187e-05, 5.0713e-05, 
			2.12292e-05, 2.53296e-05, 2.89616e-05, 3.22464e-05, 3.52503e-05, 3.801e-05, 4.05504e-05, 4.28903e-05, 4.50456e-05, 4.70305e-05, 4.88574e-05, 5.05387e-05, 5.20854e-05, 5.35083e-05, 5.48176e-05, 5.60221e-05, 
			2.47396e-05, 2.88048e-05, 3.24908e-05, 3.58664e-05, 3.89728e-05, 4.184e-05, 4.44873e-05, 4.69321e-05, 4.9189e-05, 5.12714e-05, 5.31924e-05, 5.49633e-05, 5.65959e-05, 5.81005e-05, 5.94874e-05, 6.07659e-05, 
			2.8427e-05, 3.24618e-05, 3.61694e-05, 3.9591e-05, 4.2756e-05, 4.5688e-05, 4.84016e-05, 5.09141e-05, 5.32383e-05, 5.53868e-05, 5.73721e-05, 5.92059e-05, 6.08992e-05, 6.24627e-05, 6.39062e-05, 6.52388e-05, 
			3.2213e-05, 3.62174e-05, 3.99312e-05, 4.33786e-05, 4.658e-05, 4.95544e-05, 5.2315e-05, 5.48754e-05, 5.72486e-05, 5.94469e-05, 6.14816e-05, 6.33639e-05, 6.51047e-05, 6.67146e-05, 6.8203e-05, 6.95794e-05
		)
}

CapTable	"metal6_C_LATERAL_41NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.44, 0.88, 1.32, 1.76, 2.2, 2.64, 3.08, 3.52, 3.96, 4.4, 4.84, 5.28, 5.72, 6.16, 6.6, 7.04)
		capValue			= (
			0.000172934, 0.000107977, 8.14484e-05, 6.59888e-05, 5.5491e-05, 4.77358e-05, 4.16974e-05, 3.68262e-05, 3.27968e-05, 2.94014e-05, 2.64996e-05, 2.39924e-05, 2.18068e-05, 1.98876e-05, 1.81923e-05, 1.66869e-05, 
			0.00018922, 0.000120079, 9.10254e-05, 7.39046e-05, 6.2228e-05, 5.3589e-05, 4.68602e-05, 4.14328e-05, 3.6944e-05, 3.31616e-05, 2.9929e-05, 2.7135e-05, 2.46982e-05, 2.25572e-05, 2.0664e-05, 1.89815e-05, 
			0.000198062, 0.000127329, 9.70462e-05, 7.90396e-05, 6.67012e-05, 5.75476e-05, 5.04058e-05, 4.4638e-05, 3.9863e-05, 3.5836e-05, 3.23908e-05, 2.94104e-05, 2.68082e-05, 2.45194e-05, 2.24934e-05, 2.06906e-05, 
			0.000203074, 0.000132026, 0.000101164, 8.2669e-05, 6.9943e-05, 6.0469e-05, 5.30614e-05, 4.70694e-05, 4.21016e-05, 3.79068e-05, 3.43138e-05, 3.12016e-05, 2.84812e-05, 2.60852e-05, 2.3962e-05, 2.20704e-05, 
			0.000206798, 0.000135642, 0.000104409, 8.55784e-05, 7.2568e-05, 6.28616e-05, 5.5257e-05, 4.90956e-05, 4.39804e-05, 3.96556e-05, 3.59466e-05, 3.27302e-05, 2.99156e-05, 2.74338e-05, 2.5232e-05, 2.3268e-05
		)
}

CapTable	"metal6_C_BOTTOM_GP_31NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.44, 0.88, 1.32, 1.76, 2.2, 2.64, 3.08, 3.52, 3.96, 4.4, 4.84, 5.28, 5.72, 6.16, 6.6, 7.04)
		capValue			= (
			2.12764e-05, 2.67076e-05, 3.13594e-05, 3.54807e-05, 3.91691e-05, 4.24778e-05, 4.5444e-05, 4.81004e-05, 5.04765e-05, 5.26003e-05, 5.44976e-05, 5.61925e-05, 5.77072e-05, 5.90613e-05, 6.02732e-05, 6.13585e-05, 
			2.59804e-05, 3.1483e-05, 3.6377e-05, 4.07662e-05, 4.4716e-05, 4.82707e-05, 5.14662e-05, 5.43353e-05, 5.69093e-05, 5.92169e-05, 6.12854e-05, 6.31394e-05, 6.48018e-05, 6.62933e-05, 6.76326e-05, 6.88365e-05, 
			3.1148e-05, 3.66824e-05, 4.1677e-05, 4.61894e-05, 5.02682e-05, 5.395e-05, 5.72696e-05, 6.02593e-05, 6.29495e-05, 6.53685e-05, 6.7543e-05, 6.94982e-05, 7.12566e-05, 7.2839e-05, 7.42641e-05, 7.55487e-05, 
			3.65659e-05, 4.2093e-05, 4.71222e-05, 5.16904e-05, 5.5833e-05, 5.95864e-05, 6.29804e-05, 6.60464e-05, 6.8812e-05, 7.13058e-05, 7.35542e-05, 7.55814e-05, 7.7409e-05, 7.90587e-05, 8.05478e-05, 8.18935e-05, 
			4.2102e-05, 4.76028e-05, 5.26366e-05, 5.72302e-05, 6.14126e-05, 6.52116e-05, 6.86576e-05, 7.17796e-05, 7.4603e-05, 7.71548e-05, 7.9462e-05, 8.15458e-05, 8.343e-05, 8.51342e-05, 8.66759e-05, 8.80719e-05
		)
}

CapTable	"metal6_C_LATERAL_31NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.44, 0.88, 1.32, 1.76, 2.2, 2.64, 3.08, 3.52, 3.96, 4.4, 4.84, 5.28, 5.72, 6.16, 6.6, 7.04)
		capValue			= (
			0.000170351, 0.000104619, 7.74956e-05, 6.15928e-05, 5.0781e-05, 4.28204e-05, 3.66666e-05, 3.1753e-05, 2.77394e-05, 2.44054e-05, 2.16e-05, 1.9215e-05, 1.71702e-05, 1.54048e-05, 1.38712e-05, 1.2532e-05, 
			0.000185587, 0.000115727, 8.6141e-05, 6.86418e-05, 5.6713e-05, 4.79248e-05, 4.11298e-05, 3.57028e-05, 3.12668e-05, 2.7578e-05, 2.44692e-05, 2.18216e-05, 1.95471e-05, 1.75788e-05, 1.58649e-05, 1.43644e-05, 
			0.000193456, 0.00012211, 9.139e-05, 7.30886e-05, 6.05688e-05, 5.1325e-05, 4.41654e-05, 3.84376e-05, 3.37474e-05, 2.98398e-05, 2.65402e-05, 2.37238e-05, 2.12988e-05, 1.91954e-05, 1.73596e-05, 1.57486e-05, 
			0.000197634, 0.000126091, 9.48908e-05, 7.61826e-05, 6.3341e-05, 5.38286e-05, 4.64446e-05, 4.05246e-05, 3.5667e-05, 3.16112e-05, 2.81788e-05, 2.52426e-05, 2.2709e-05, 2.05064e-05, 1.85797e-05, 1.68853e-05, 
			0.00020068, 0.000129138, 9.76554e-05, 7.86798e-05, 6.56064e-05, 5.59024e-05, 4.83524e-05, 4.22864e-05, 3.7299e-05, 3.31262e-05, 2.9588e-05, 2.65552e-05, 2.3933e-05, 2.16488e-05, 1.96471e-05, 1.78831e-05
		)
}

CapTable	"metal6_C_BOTTOM_GP_21NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.44, 0.88, 1.32, 1.76, 2.2, 2.64, 3.08, 3.52, 3.96, 4.4, 4.84, 5.28, 5.72, 6.16, 6.6, 7.04)
		capValue			= (
			2.77642e-05, 3.57688e-05, 4.25464e-05, 4.83528e-05, 5.33404e-05, 5.76244e-05, 6.1303e-05, 6.44621e-05, 6.71766e-05, 6.95116e-05, 7.1523e-05, 7.32585e-05, 7.47589e-05, 7.60587e-05, 7.71869e-05, 7.81685e-05, 
			3.56554e-05, 4.38362e-05, 5.09186e-05, 5.70486e-05, 6.23528e-05, 6.69384e-05, 7.09026e-05, 7.43288e-05, 7.72918e-05, 7.98574e-05, 8.20808e-05, 8.40106e-05, 8.5689e-05, 8.71513e-05, 8.84279e-05, 8.95443e-05, 
			4.4104e-05, 5.23004e-05, 5.94754e-05, 6.57346e-05, 7.11864e-05, 7.59294e-05, 8.00532e-05, 8.36376e-05, 8.67538e-05, 8.94664e-05, 9.18291e-05, 9.38904e-05, 9.56911e-05, 9.72676e-05, 9.86498e-05, 9.9864e-05, 
			5.27622e-05, 6.09056e-05, 6.80908e-05, 7.44024e-05, 7.99296e-05, 8.47652e-05, 8.89902e-05, 9.2681e-05, 9.59042e-05, 9.87208e-05, 0.000101186, 0.000103345, 0.00010524, 0.000106905, 0.00010837, 0.000109662, 
			6.14974e-05, 6.95824e-05, 7.6765e-05, 8.3112e-05, 8.87012e-05, 9.3612e-05, 9.79214e-05, 0.0001017, 0.000105013, 0.000107919, 0.00011047, 0.000112713, 0.000114688, 0.000116428, 0.000117963, 0.000119321
		)
}

CapTable	"metal6_C_LATERAL_21NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.44, 0.88, 1.32, 1.76, 2.2, 2.64, 3.08, 3.52, 3.96, 4.4, 4.84, 5.28, 5.72, 6.16, 6.6, 7.04)
		capValue			= (
			0.000165901, 9.89472e-05, 7.10956e-05, 5.48132e-05, 4.38574e-05, 3.59098e-05, 2.98728e-05, 2.51436e-05, 2.13568e-05, 1.82745e-05, 1.57333e-05, 1.36167e-05, 1.18387e-05, 1.03344e-05, 9.0539e-06, 7.95788e-06, 
			0.000179692, 0.00010893, 7.88644e-05, 6.11584e-05, 4.91982e-05, 4.04936e-05, 3.38584e-05, 2.86402e-05, 2.44442e-05, 2.10136e-05, 1.81722e-05, 1.57944e-05, 1.37876e-05, 1.20818e-05, 1.06229e-05, 9.36858e-06, 
			0.000186559, 0.000114616, 8.36176e-05, 6.52334e-05, 5.27556e-05, 4.36356e-05, 3.66548e-05, 3.11424e-05, 2.66912e-05, 2.30366e-05, 1.99969e-05, 1.74426e-05, 1.52779e-05, 1.34304e-05, 1.18442e-05, 1.0475e-05, 
			0.000190146, 0.000118226, 8.68802e-05, 6.81646e-05, 5.54044e-05, 4.60328e-05, 3.88308e-05, 3.3121e-05, 2.84928e-05, 2.46782e-05, 2.14936e-05, 1.88075e-05, 1.65227e-05, 1.45658e-05, 1.28796e-05, 1.14193e-05, 
			0.000192856, 0.000121076, 8.9521e-05, 7.0573e-05, 5.75928e-05, 4.8028e-05, 4.06506e-05, 3.47814e-05, 3.0008e-05, 2.60612e-05, 2.27556e-05, 1.99591e-05, 1.75735e-05, 1.55243e-05, 1.37539e-05, 1.22165e-05
		)
}

CapTable	"metal6_C_BOTTOM_GPNOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.44, 0.88, 1.32, 1.76, 2.2, 2.64, 3.08, 3.52, 3.96, 4.4, 4.84, 5.28, 5.72, 6.16, 6.6, 7.04)
		capValue			= (
			6.18622e-05, 8.05648e-05, 9.36328e-05, 0.00010289, 0.000109608, 0.000114596, 0.000118368, 0.000121272, 0.000123538, 0.000125328, 0.000126759, 0.000127911, 0.000128848, 0.000129615, 0.000130245, 0.000130766, 
			8.83388e-05, 0.000107172, 0.000120713, 0.000130556, 0.000137858, 0.000143375, 0.000147611, 0.00015091, 0.000153506, 0.000155574, 0.000157233, 0.000158576, 0.00015967, 0.000160566, 0.000161304, 0.000161915, 
			0.000115192, 0.000134014, 0.000147779, 0.000157943, 0.000165582, 0.000171419, 0.000175942, 0.00017949, 0.000182299, 0.000184547, 0.000186359, 0.00018783, 0.000189031, 0.000190017, 0.00019083, 0.000191504, 
			0.000142182, 0.000160935, 0.000174806, 0.000185157, 0.000192997, 0.000199039, 0.00020375, 0.000207464, 0.00021042, 0.000212793, 0.000214712, 0.000216273, 0.000217553, 0.000218606, 0.000219477, 0.000220201, 
			0.000169358, 0.000188066, 0.000202012, 0.000212503, 0.00022051, 0.000226711, 0.000231571, 0.000235421, 0.000238497, 0.000240976, 0.000242988, 0.000244631, 0.000245981, 0.000247096, 0.000248021, 0.000248791
		)
}

CapTable	"metal6_C_LATERALNOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.44, 0.88, 1.32, 1.76, 2.2, 2.64, 3.08, 3.52, 3.96, 4.4, 4.84, 5.28, 5.72, 6.16, 6.6, 7.04)
		capValue			= (
			0.000146897, 7.84852e-05, 5.11062e-05, 3.6085e-05, 2.66526e-05, 2.02592e-05, 1.57056e-05, 1.23473e-05, 9.80526e-06, 7.84204e-06, 6.30138e-06, 5.07654e-06, 4.09234e-06, 3.2945e-06, 2.64296e-06, 2.10758e-06, 
			0.000157122, 8.6268e-05, 5.71892e-05, 4.09082e-05, 3.05032e-05, 2.33458e-05, 1.81867e-05, 1.43455e-05, 1.14168e-05, 9.14252e-06, 7.35066e-06, 5.92218e-06, 4.77232e-06, 3.8392e-06, 3.0768e-06, 2.45032e-06, 
			0.000162353, 9.08106e-05, 6.09338e-05, 4.39768e-05, 3.3019e-05, 2.54102e-05, 1.98832e-05, 1.57425e-05, 1.25695e-05, 1.00956e-05, 8.14012e-06, 6.57712e-06, 5.31624e-06, 4.29114e-06, 3.45224e-06, 2.76184e-06, 
			0.000164988, 9.3637e-05, 6.34272e-05, 4.61074e-05, 3.48376e-05, 2.69532e-05, 2.1195e-05, 1.68616e-05, 1.35279e-05, 1.09199e-05, 8.85208e-06, 7.19458e-06, 5.8538e-06, 4.76082e-06, 3.86388e-06, 3.12358e-06, 
			0.000167048, 9.58628e-05, 6.5434e-05, 4.78564e-05, 3.63396e-05, 2.82502e-05, 2.2314e-05, 1.78274e-05, 1.43625e-05, 1.1642e-05, 9.47792e-06, 7.73768e-06, 6.3256e-06, 5.17092e-06, 4.22042e-06, 3.4334e-06
		)
}

CapTable	"poly_C_BOTTOM_GPMAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			4.47311e-05, 6.18008e-05, 7.25854e-05, 7.86913e-05, 8.19378e-05, 8.36095e-05, 8.44579e-05, 8.48833e-05, 8.50951e-05, 8.51999e-05, 8.52551e-05, 8.52825e-05, 8.52974e-05, 8.53041e-05, 8.5311e-05, 8.53143e-05, 
			6.32218e-05, 8.10034e-05, 9.21904e-05, 9.85121e-05, 0.000101877, 0.000103612, 0.000104491, 0.000104932, 0.000105152, 0.000105263, 0.000105316, 0.000105347, 0.000105363, 0.00010537, 0.000105379, 0.000105382, 
			8.22233e-05, 0.000100179, 0.000111443, 0.000117804, 0.000121192, 0.000122938, 0.000123823, 0.000124262, 0.000124487, 0.000124598, 0.000124651, 0.000124686, 0.000124702, 0.000124712, 0.00012472, 0.00012472, 
			0.000101338, 0.000119281, 0.00013052, 0.000136859, 0.000140237, 0.000141974, 0.000142853, 0.000143296, 0.000143518, 0.00014363, 0.000143683, 0.000143716, 0.000143735, 0.000143746, 0.000143751, 0.000143756, 
			0.000120576, 0.000138493, 0.000149712, 0.00015604, 0.000159404, 0.000161134, 0.000162012, 0.000162453, 0.000162673, 0.000162785, 0.000162844, 0.000162876, 0.000162896, 0.000162904, 0.000162912, 0.000162918
		)
}

CapTable	"poly_C_TOP_GPMAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			5.56114e-05, 7.62521e-05, 8.90645e-05, 9.62472e-05, 0.000100049, 0.000102003, 0.000102993, 0.00010349, 0.000103738, 0.000103865, 0.000103922, 0.000103948, 0.00010396, 0.000103968, 0.000103967, 0.000103968, 
			7.90913e-05, 0.000100475, 0.000113713, 0.000121126, 0.000125049, 0.000127071, 0.000128094, 0.000128607, 0.000128863, 0.00012899, 0.000129054, 0.000129076, 0.000129087, 0.000129096, 0.000129094, 0.000129096, 
			0.000103119, 0.000124657, 0.000137955, 0.000145408, 0.00014936, 0.000151392, 0.000152419, 0.000152942, 0.000153192, 0.000153318, 0.000153381, 0.000153399, 0.000153411, 0.000153416, 0.000153418, 0.000153425, 
			0.000127239, 0.000148743, 0.000162001, 0.000169424, 0.000173362, 0.000175386, 0.000176417, 0.000176924, 0.000177178, 0.0001773, 0.000177362, 0.000177384, 0.000177388, 0.000177393, 0.000177402, 0.000177404, 
			0.000151507, 0.000172967, 0.000186208, 0.000193613, 0.000197536, 0.00019956, 0.000200571, 0.000201082, 0.000201334, 0.000201452, 0.000201502, 0.000201524, 0.000201534, 0.000201547, 0.00020155, 0.000201551
		)
}

CapTable	"poly_C_LATERALMAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			0.000149401, 6.36045e-05, 3.05827e-05, 1.50821e-05, 7.48622e-06, 3.72392e-06, 1.85273e-06, 9.22026e-07, 4.59074e-07, 2.28876e-07, 1.15864e-07, 6.16045e-08, 3.54164e-08, 2.17967e-08, 1.44183e-08, 9.96111e-09, 
			0.000154371, 6.57717e-05, 3.16243e-05, 1.5598e-05, 7.74598e-06, 3.85188e-06, 1.91645e-06, 9.53792e-07, 4.75026e-07, 2.37734e-07, 1.22016e-07, 6.72378e-08, 4.01198e-08, 2.54946e-08, 1.73827e-08, 1.23176e-08, 
			0.000154998, 6.60884e-05, 3.17918e-05, 1.56863e-05, 7.78705e-06, 3.87234e-06, 1.92669e-06, 9.58387e-07, 4.78058e-07, 2.40885e-07, 1.26525e-07, 7.2261e-08, 4.45948e-08, 2.93762e-08, 2.03843e-08, 1.45438e-08, 
			0.000154095, 6.57782e-05, 3.16434e-05, 1.56247e-05, 7.75676e-06, 3.85728e-06, 1.91829e-06, 9.55606e-07, 4.77509e-07, 2.43573e-07, 1.3175e-07, 7.76619e-08, 4.96838e-08, 3.36244e-08, 2.3603e-08, 1.73778e-08, 
			0.000153458, 6.55623e-05, 3.15372e-05, 1.55617e-05, 7.72587e-06, 3.84048e-06, 1.91206e-06, 9.52882e-07, 4.78506e-07, 2.48849e-07, 1.39699e-07, 8.54314e-08, 5.6114e-08, 3.86389e-08, 2.80171e-08, 2.10686e-08
		)
}

CapTable	"poly_C_BOTTOM_GP_12MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			5.02344e-05, 6.81183e-05, 8.13484e-05, 9.0942e-05, 9.77987e-05, 0.000102724, 0.000106222, 0.000108717, 0.000110503, 0.000111783, 0.000112706, 0.000113362, 0.000113839, 0.000114184, 0.000114432, 0.000114611, 
			6.74768e-05, 8.61732e-05, 0.000100237, 0.000110556, 0.000118026, 0.000123396, 0.000127259, 0.000130028, 0.000132017, 0.00013345, 0.000134475, 0.000135219, 0.000135754, 0.000136141, 0.000136421, 0.000136624, 
			8.54223e-05, 0.000104478, 0.000118972, 0.000129555, 0.000137493, 0.00014313, 0.000147199, 0.000150129, 0.000152243, 0.000153758, 0.000154857, 0.000155649, 0.00015622, 0.000156633, 0.000156933, 0.00015715, 
			0.000103721, 0.000122969, 0.000137718, 0.000148607, 0.000156751, 0.000162432, 0.000166629, 0.00016966, 0.000171843, 0.000173422, 0.000174562, 0.000175385, 0.000175981, 0.00017641, 0.000176722, 0.000176947, 
			0.000122347, 0.000141697, 0.000156785, 0.000167681, 0.000175839, 0.000181758, 0.000186047, 0.000189143, 0.000191383, 0.000193001, 0.00019417, 0.000195016, 0.000195628, 0.000196069, 0.000196389, 0.000196619
		)
}

CapTable	"poly_C_TOP_GP_12MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			1.46693e-05, 2.00322e-05, 2.41545e-05, 2.72202e-05, 2.94736e-05, 3.10661e-05, 3.2223e-05, 3.30544e-05, 3.36505e-05, 3.40796e-05, 3.4386e-05, 3.46136e-05, 3.47732e-05, 3.48887e-05, 3.49719e-05, 3.50318e-05, 
			1.92224e-05, 2.48493e-05, 2.92681e-05, 3.25994e-05, 3.50552e-05, 3.68465e-05, 3.81347e-05, 3.90688e-05, 3.97422e-05, 4.02254e-05, 4.05818e-05, 4.08339e-05, 4.10164e-05, 4.1148e-05, 4.12426e-05, 4.13108e-05, 
			2.39625e-05, 2.97548e-05, 3.4333e-05, 3.79498e-05, 4.03964e-05, 4.22943e-05, 4.36701e-05, 4.46655e-05, 4.53846e-05, 4.59112e-05, 4.62865e-05, 4.65583e-05, 4.67544e-05, 4.68958e-05, 4.69976e-05, 4.70707e-05, 
			2.88261e-05, 3.47095e-05, 3.93701e-05, 4.29926e-05, 4.55091e-05, 4.76006e-05, 4.90266e-05, 5.0062e-05, 5.08171e-05, 5.13589e-05, 5.17514e-05, 5.20349e-05, 5.22396e-05, 5.23872e-05, 5.24931e-05, 5.25692e-05, 
			3.37833e-05, 3.97709e-05, 4.43236e-05, 4.81762e-05, 5.08795e-05, 5.28809e-05, 5.43431e-05, 5.54112e-05, 5.6181e-05, 5.67392e-05, 5.71431e-05, 5.74349e-05, 5.76454e-05, 5.7797e-05, 5.79058e-05, 5.79834e-05
		)
}

CapTable	"poly_C_LATERAL_12MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			0.000171399, 8.98414e-05, 5.60319e-05, 3.71216e-05, 2.53389e-05, 1.76044e-05, 1.23728e-05, 8.7645e-06, 6.2428e-06, 4.46348e-06, 3.19976e-06, 2.29722e-06, 1.65084e-06, 1.1865e-06, 8.52398e-07, 6.11769e-07, 
			0.000184388, 9.80689e-05, 6.1675e-05, 4.11214e-05, 2.8212e-05, 1.96797e-05, 1.38736e-05, 9.8502e-06, 7.02766e-06, 5.03068e-06, 3.60842e-06, 2.59172e-06, 1.86234e-06, 1.33802e-06, 9.6059e-07, 6.88727e-07, 
			0.000190761, 0.00010252, 6.48712e-05, 4.34406e-05, 2.99085e-05, 2.09177e-05, 1.4776e-05, 1.05066e-05, 7.50378e-06, 5.3744e-06, 3.85655e-06, 2.76989e-06, 1.98982e-06, 1.42883e-06, 1.02495e-06, 7.34098e-07, 
			0.000193838, 0.00010502, 6.67442e-05, 4.48504e-05, 3.0956e-05, 2.16845e-05, 1.5338e-05, 1.09162e-05, 7.8008e-06, 5.58939e-06, 4.01094e-06, 2.88025e-06, 2.06823e-06, 1.48417e-06, 1.06375e-06, 7.61121e-07, 
			0.000195975, 0.000106756, 6.80596e-05, 4.58181e-05, 3.16674e-05, 2.22146e-05, 1.57268e-05, 1.11992e-05, 8.00601e-06, 5.73686e-06, 4.11634e-06, 2.95501e-06, 2.12086e-06, 1.52092e-06, 1.0892e-06, 7.7866e-07
		)
}

CapTable	"poly_C_BOTTOM_GP_13MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			5.34558e-05, 7.19782e-05, 8.56222e-05, 9.55774e-05, 0.00010284, 0.000108166, 0.000112111, 0.000115061, 0.000117288, 0.000118991, 0.000120305, 0.000121325, 0.000122129, 0.000122759, 0.000123256, 0.000123654, 
			7.09708e-05, 9.01062e-05, 0.000104492, 0.000115161, 0.000123061, 0.000128933, 0.000133332, 0.000136658, 0.000139192, 0.000141148, 0.000142664, 0.000143853, 0.000144789, 0.000145526, 0.000146115, 0.000146587, 
			8.90012e-05, 0.000108346, 0.00012309, 0.000134161, 0.000142446, 0.000148666, 0.000153367, 0.000156946, 0.000159699, 0.000161832, 0.000163495, 0.000164804, 0.000165836, 0.000166656, 0.000167313, 0.000167832, 
			0.000107237, 0.000126648, 0.000141597, 0.000152918, 0.000161463, 0.000167929, 0.000172845, 0.000176613, 0.000179525, 0.00018179, 0.000183567, 0.000184967, 0.000186075, 0.00018696, 0.000187663, 0.00018823, 
			0.000125685, 0.000145152, 0.000160262, 0.000171784, 0.000180534, 0.000187191, 0.000192277, 0.000196197, 0.00019924, 0.000201614, 0.000203479, 0.000204954, 0.000206128, 0.000207059, 0.000207809, 0.000208412
		)
}

CapTable	"poly_C_TOP_GP_13MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			8.49681e-06, 1.15086e-05, 1.38126e-05, 1.55372e-05, 1.68171e-05, 1.77666e-05, 1.84736e-05, 1.90079e-05, 1.94158e-05, 1.97285e-05, 1.99678e-05, 2.01551e-05, 2.02997e-05, 2.04155e-05, 2.05103e-05, 2.05841e-05, 
			1.09768e-05, 1.40893e-05, 1.65333e-05, 1.83978e-05, 1.98016e-05, 2.08611e-05, 2.16628e-05, 2.22739e-05, 2.27459e-05, 2.31066e-05, 2.33891e-05, 2.36083e-05, 2.37807e-05, 2.39221e-05, 2.40325e-05, 2.41192e-05, 
			1.35163e-05, 1.66793e-05, 1.92013e-05, 2.11478e-05, 2.26345e-05, 2.3766e-05, 2.46302e-05, 2.52979e-05, 2.58096e-05, 2.62087e-05, 2.65203e-05, 2.67649e-05, 2.69611e-05, 2.71158e-05, 2.72384e-05, 2.73423e-05, 
			1.60871e-05, 1.92819e-05, 2.18546e-05, 2.38584e-05, 2.54003e-05, 2.65832e-05, 2.74945e-05, 2.81991e-05, 2.87452e-05, 2.91712e-05, 2.9506e-05, 2.97709e-05, 2.99818e-05, 3.0148e-05, 3.02875e-05, 3.03954e-05, 
			1.86864e-05, 2.19079e-05, 2.452e-05, 2.65693e-05, 2.81551e-05, 2.93793e-05, 3.03289e-05, 3.10636e-05, 3.16357e-05, 3.20846e-05, 3.24387e-05, 3.27197e-05, 3.29419e-05, 3.31254e-05, 3.32682e-05, 3.3384e-05
		)
}

CapTable	"poly_C_LATERAL_13MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			0.000173594, 9.30868e-05, 6.00435e-05, 4.15722e-05, 2.99401e-05, 2.21371e-05, 1.66866e-05, 1.27669e-05, 9.88434e-06, 7.7264e-06, 6.08728e-06, 4.82681e-06, 3.8479e-06, 3.08118e-06, 2.47608e-06, 1.9959e-06, 
			0.00018782, 0.000102694, 6.71238e-05, 4.69963e-05, 3.41748e-05, 2.54786e-05, 1.93413e-05, 1.48866e-05, 1.15836e-05, 9.09328e-06, 7.18953e-06, 5.71785e-06, 4.56966e-06, 3.66646e-06, 2.95156e-06, 2.3826e-06, 
			0.000195562, 0.000108569, 7.17265e-05, 5.06579e-05, 3.71109e-05, 2.78425e-05, 2.12496e-05, 1.643e-05, 1.28342e-05, 1.01076e-05, 8.01329e-06, 6.38772e-06, 5.11456e-06, 4.1104e-06, 3.31335e-06, 2.67726e-06, 
			0.00020007, 0.000112486, 7.49465e-05, 5.33095e-05, 3.92795e-05, 2.96148e-05, 2.26969e-05, 1.76117e-05, 1.37987e-05, 1.08948e-05, 8.65609e-06, 6.91244e-06, 5.54308e-06, 4.46037e-06, 3.59884e-06, 2.91043e-06, 
			0.000203644, 0.000115598, 7.75303e-05, 5.54347e-05, 4.10306e-05, 3.10548e-05, 2.38794e-05, 1.85814e-05, 1.45929e-05, 1.15454e-05, 9.18848e-06, 7.34807e-06, 5.89952e-06, 4.7514e-06, 3.83692e-06, 3.10475e-06
		)
}

CapTable	"poly_C_BOTTOM_GP_14MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			5.51459e-05, 7.40974e-05, 8.80344e-05, 9.81945e-05, 0.000105612, 0.000111072, 0.000115137, 0.000118204, 0.000120543, 0.000122356, 0.000123775, 0.000124903, 0.0001258, 0.000126526, 0.000127122, 0.000127605, 
			7.29434e-05, 9.24455e-05, 0.000107081, 0.000117931, 0.00012598, 0.000131991, 0.000136528, 0.000139987, 0.00014266, 0.00014475, 0.000146405, 0.00014772, 0.000148782, 0.000149646, 0.000150353, 0.000150935, 
			9.11884e-05, 0.000110836, 0.000125784, 0.000137015, 0.000145445, 0.000151812, 0.000156661, 0.000160397, 0.000163307, 0.0001656, 0.000167425, 0.000168892, 0.000170079, 0.000171049, 0.000171846, 0.000172509, 
			0.000109577, 0.000129224, 0.000144344, 0.000155806, 0.000164496, 0.000171115, 0.000176193, 0.000180138, 0.000183232, 0.000185685, 0.000187649, 0.000189232, 0.000190522, 0.000191579, 0.000192454, 0.000193175, 
			0.000128117, 0.000147767, 0.000163012, 0.000174667, 0.000183562, 0.000190378, 0.00019565, 0.000199769, 0.000203015, 0.000205604, 0.000207682, 0.000209367, 0.000210743, 0.000211882, 0.000212814, 0.000213595
		)
}

CapTable	"poly_C_TOP_GP_14MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			6.02468e-06, 8.14652e-06, 9.75593e-06, 1.0961e-05, 1.18576e-05, 1.25246e-05, 1.3025e-05, 1.34031e-05, 1.36976e-05, 1.39245e-05, 1.41029e-05, 1.42415e-05, 1.4358e-05, 1.445e-05, 1.45216e-05, 1.45856e-05, 
			7.75268e-06, 9.92979e-06, 1.16317e-05, 1.29317e-05, 1.39127e-05, 1.46551e-05, 1.52181e-05, 1.56548e-05, 1.59943e-05, 1.62597e-05, 1.64667e-05, 1.66387e-05, 1.67741e-05, 1.68847e-05, 1.69751e-05, 1.70502e-05, 
			9.51321e-06, 1.1712e-05, 1.34646e-05, 1.4817e-05, 1.5853e-05, 1.66422e-05, 1.72532e-05, 1.77302e-05, 1.81016e-05, 1.83956e-05, 1.86305e-05, 1.88184e-05, 1.8972e-05, 1.90971e-05, 1.92007e-05, 1.92829e-05, 
			1.12834e-05, 1.34979e-05, 1.52779e-05, 1.66673e-05, 1.77381e-05, 1.85654e-05, 1.92133e-05, 1.97169e-05, 2.01142e-05, 2.04309e-05, 2.06835e-05, 2.08891e-05, 2.10564e-05, 2.11945e-05, 2.13042e-05, 2.14026e-05, 
			1.30659e-05, 1.52893e-05, 1.70936e-05, 1.85098e-05, 1.96106e-05, 2.04735e-05, 2.1145e-05, 2.16731e-05, 2.20913e-05, 2.24263e-05, 2.26968e-05, 2.29166e-05, 2.30966e-05, 2.32408e-05, 2.33681e-05, 2.34703e-05
		)
}

CapTable	"poly_C_LATERAL_14MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			0.000174187, 9.3977e-05, 6.11797e-05, 4.28887e-05, 3.1374e-05, 2.36347e-05, 1.82049e-05, 1.42733e-05, 1.13543e-05, 9.14214e-06, 7.4363e-06, 6.10114e-06, 5.04255e-06, 4.19384e-06, 3.50669e-06, 2.94554e-06, 
			0.000188749, 0.000103982, 6.87036e-05, 4.87864e-05, 3.60973e-05, 2.74674e-05, 2.13441e-05, 1.68631e-05, 1.35039e-05, 1.09357e-05, 8.93948e-06, 7.3659e-06, 6.1105e-06, 5.0983e-06, 4.27456e-06, 3.59901e-06, 
			0.000196885, 0.000110297, 7.37772e-05, 5.29343e-05, 3.95231e-05, 3.03148e-05, 2.37216e-05, 1.8856e-05, 1.51801e-05, 1.23499e-05, 1.01359e-05, 8.38082e-06, 6.97326e-06, 5.83307e-06, 4.90154e-06, 4.13473e-06, 
			0.000201832, 0.000114689, 7.74906e-05, 5.60843e-05, 4.21845e-05, 3.25657e-05, 2.56276e-05, 2.04722e-05, 1.65528e-05, 1.35174e-05, 1.11307e-05, 9.2295e-06, 7.69821e-06, 6.45319e-06, 5.43253e-06, 4.58976e-06, 
			0.000205885, 0.000118303, 8.05865e-05, 5.87188e-05, 4.44324e-05, 3.44826e-05, 2.72628e-05, 2.18674e-05, 1.7744e-05, 1.45356e-05, 1.20017e-05, 9.97506e-06, 8.33711e-06, 7.00106e-06, 5.90254e-06, 4.99332e-06
		)
}

CapTable	"poly_C_BOTTOM_GP_15MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			5.61014e-05, 7.53236e-05, 8.94438e-05, 9.97286e-05, 0.000107241, 0.000112773, 0.000116896, 0.000120012, 0.000122398, 0.000124253, 0.000125713, 0.000126875, 0.000127811, 0.000128574, 0.000129201, 0.000129723, 
			7.40873e-05, 9.38302e-05, 0.000108631, 0.000119601, 0.000127739, 0.00013382, 0.000138417, 0.000141933, 0.000144659, 0.0001468, 0.000148499, 0.000149864, 0.000150973, 0.000151883, 0.000152636, 0.000153261, 
			9.24913e-05, 0.000112347, 0.000127444, 0.000138781, 0.000147294, 0.000153727, 0.000158642, 0.000162439, 0.000165409, 0.000167761, 0.000169642, 0.000171164, 0.000172407, 0.000173431, 0.000174285, 0.000174996, 
			0.000111011, 0.000130838, 0.000146082, 0.000157639, 0.000166404, 0.00017309, 0.000178238, 0.000182249, 0.000185408, 0.000187926, 0.000189952, 0.000191603, 0.000192958, 0.000194078, 0.000195016, 0.000195801, 
			0.000129651, 0.00014945, 0.000164805, 0.00017654, 0.000185504, 0.000192394, 0.000197736, 0.000201923, 0.000205243, 0.000207903, 0.000210056, 0.000211817, 0.000213268, 0.000214476, 0.000215487, 0.000216339
		)
}

CapTable	"poly_C_TOP_GP_15MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			4.75502e-06, 6.42207e-06, 7.68295e-06, 8.6298e-06, 9.33167e-06, 9.85404e-06, 1.0247e-05, 1.05461e-05, 1.07764e-05, 1.09559e-05, 1.10975e-05, 1.12106e-05, 1.13021e-05, 1.13767e-05, 1.14379e-05, 1.14859e-05, 
			6.10756e-06, 7.814e-06, 9.14827e-06, 1.01632e-05, 1.09308e-05, 1.15122e-05, 1.19559e-05, 1.22979e-05, 1.25642e-05, 1.27743e-05, 1.29416e-05, 1.30764e-05, 1.31864e-05, 1.32764e-05, 1.335e-05, 1.34138e-05, 
			7.48387e-06, 9.20403e-06, 1.05718e-05, 1.16284e-05, 1.24375e-05, 1.30577e-05, 1.3536e-05, 1.39083e-05, 1.4201e-05, 1.44339e-05, 1.46209e-05, 1.47728e-05, 1.4897e-05, 1.49995e-05, 1.5085e-05, 1.51557e-05, 
			8.86176e-06, 1.05909e-05, 1.19796e-05, 1.3063e-05, 1.39009e-05, 1.45488e-05, 1.50528e-05, 1.54483e-05, 1.57616e-05, 1.60125e-05, 1.62158e-05, 1.63811e-05, 1.65173e-05, 1.66305e-05, 1.67241e-05, 1.68039e-05, 
			1.02471e-05, 1.19805e-05, 1.33856e-05, 1.44906e-05, 1.53513e-05, 1.60217e-05, 1.65472e-05, 1.69623e-05, 1.72931e-05, 1.75598e-05, 1.77764e-05, 1.7954e-05, 1.81006e-05, 1.8222e-05, 1.8325e-05, 1.84117e-05
		)
}

CapTable	"poly_C_LATERAL_15MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			0.000174425, 9.43379e-05, 6.16445e-05, 4.34339e-05, 3.19771e-05, 2.4276e-05, 1.88688e-05, 1.4947e-05, 1.20282e-05, 9.80862e-06, 8.08962e-06, 6.73697e-06, 5.65765e-06, 4.78576e-06, 4.07372e-06, 3.48667e-06, 
			0.000189125, 0.000104506, 6.93535e-05, 4.95334e-05, 3.69135e-05, 2.8329e-05, 2.22312e-05, 1.776e-05, 1.43983e-05, 1.1818e-05, 9.80263e-06, 8.20442e-06, 6.92017e-06, 5.87614e-06, 5.01872e-06, 4.308e-06, 
			0.000197421, 0.000111005, 7.46278e-05, 5.38944e-05, 4.056e-05, 3.14003e-05, 2.48328e-05, 1.99746e-05, 1.62918e-05, 1.34436e-05, 1.12033e-05, 9.41539e-06, 7.97034e-06, 6.78941e-06, 5.81487e-06, 5.00368e-06, 
			0.000202552, 0.000115598, 7.85568e-05, 5.72684e-05, 4.34496e-05, 3.38803e-05, 2.69661e-05, 2.1814e-05, 1.78816e-05, 1.48212e-05, 1.23998e-05, 1.0457e-05, 8.87908e-06, 7.58372e-06, 6.5105e-06, 5.61375e-06, 
			0.000206808, 0.000119433, 8.18832e-05, 6.01392e-05, 4.5936e-05, 3.60346e-05, 2.88344e-05, 2.34367e-05, 1.92934e-05, 1.60513e-05, 1.34735e-05, 1.13959e-05, 9.70124e-06, 8.30497e-06, 7.14384e-06, 6.17072e-06
		)
}

CapTable	"poly_C_BOTTOM_GP_16MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			5.68438e-05, 7.62917e-05, 9.05626e-05, 0.000100961, 0.000108553, 0.000114145, 0.000118315, 0.000121468, 0.000123885, 0.000125766, 0.000127249, 0.000128432, 0.000129388, 0.000130168, 0.000130813, 0.000131348, 
			7.49937e-05, 9.49437e-05, 0.000109895, 0.000120973, 0.000129191, 0.000135336, 0.000139981, 0.000143538, 0.000146297, 0.000148467, 0.000150195, 0.000151585, 0.000152718, 0.000153649, 0.000154421, 0.000155068, 
			9.35477e-05, 0.000113594, 0.000128831, 0.00014027, 0.000148861, 0.000155357, 0.00016032, 0.000164158, 0.000167166, 0.00016955, 0.000171461, 0.000173013, 0.000174283, 0.000175335, 0.000176211, 0.00017695, 
			0.0001122, 0.000132201, 0.000147574, 0.000159226, 0.000168066, 0.000174811, 0.000180009, 0.000184062, 0.00018726, 0.000189813, 0.000191876, 0.000193557, 0.000194944, 0.000196095, 0.000197061, 0.000197876, 
			0.000130958, 0.000150914, 0.000166384, 0.000178209, 0.000187246, 0.000194191, 0.000199584, 0.000203815, 0.000207176, 0.000209874, 0.000212065, 0.000213861, 0.000215349, 0.000216591, 0.000217634, 0.00021852
		)
}

CapTable	"poly_C_TOP_GP_16MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			3.84812e-06, 5.19189e-06, 6.21599e-06, 6.97887e-06, 7.54536e-06, 7.96715e-06, 8.28369e-06, 8.52498e-06, 8.71094e-06, 8.85612e-06, 8.97088e-06, 9.06273e-06, 9.13732e-06, 9.19806e-06, 9.24823e-06, 9.29008e-06, 
			4.94012e-06, 6.31891e-06, 7.39385e-06, 8.21296e-06, 8.83183e-06, 9.29977e-06, 9.65674e-06, 9.93244e-06, 1.01475e-05, 1.03172e-05, 1.04527e-05, 1.05623e-05, 1.06519e-05, 1.07254e-05, 1.07867e-05, 1.0838e-05, 
			6.04793e-06, 7.43554e-06, 8.53825e-06, 9.39036e-06, 1.00412e-05, 1.05395e-05, 1.09245e-05, 1.12246e-05, 1.14608e-05, 1.16489e-05, 1.18005e-05, 1.19241e-05, 1.20253e-05, 1.21092e-05, 1.21795e-05, 1.22385e-05, 
			7.15716e-06, 8.55007e-06, 9.66889e-06, 1.0541e-05, 1.1214e-05, 1.17344e-05, 1.21401e-05, 1.24586e-05, 1.27116e-05, 1.29145e-05, 1.30792e-05, 1.32137e-05, 1.33249e-05, 1.34176e-05, 1.34953e-05, 1.35621e-05, 
			8.27016e-06, 9.66612e-06, 1.07963e-05, 1.16842e-05, 1.23748e-05, 1.29136e-05, 1.33361e-05, 1.36705e-05, 1.39377e-05, 1.41536e-05, 1.43291e-05, 1.44736e-05, 1.45936e-05, 1.4694e-05, 1.47797e-05, 1.48513e-05
		)
}

CapTable	"poly_C_LATERAL_16MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			0.000174551, 9.45272e-05, 6.1889e-05, 4.37226e-05, 3.22986e-05, 2.46208e-05, 1.92294e-05, 1.53174e-05, 1.24036e-05, 1.01854e-05, 8.46488e-06, 7.10836e-06, 6.02344e-06, 5.14455e-06, 4.42442e-06, 3.82836e-06, 
			0.000189321, 0.000104781, 6.96962e-05, 4.99299e-05, 3.73506e-05, 2.87949e-05, 2.27164e-05, 1.82568e-05, 1.49009e-05, 1.23218e-05, 1.03036e-05, 8.6998e-06, 7.4076e-06, 6.35384e-06, 5.4852e-06, 4.76216e-06, 
			0.000197702, 0.000111377, 7.50781e-05, 5.44062e-05, 4.1118e-05, 3.19911e-05, 2.54453e-05, 2.05999e-05, 1.69228e-05, 1.40746e-05, 1.18299e-05, 1.00341e-05, 8.57844e-06, 7.38469e-06, 6.39554e-06, 5.56844e-06, 
			0.00020293, 0.000116078, 7.91238e-05, 5.79037e-05, 4.41356e-05, 3.46018e-05, 2.77106e-05, 2.25714e-05, 1.86439e-05, 1.55819e-05, 1.3154e-05, 1.12006e-05, 9.60887e-06, 8.2973e-06, 7.2058e-06, 6.2893e-06, 
			0.000207295, 0.000120032, 8.25768e-05, 6.09067e-05, 4.67575e-05, 3.68936e-05, 2.97172e-05, 2.43319e-05, 2.01919e-05, 1.69463e-05, 1.43592e-05, 1.22679e-05, 1.0556e-05, 9.13956e-06, 7.95623e-06, 6.95923e-06
		)
}

CapTable	"poly_C_BOTTOM_GP_17MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			6.03422e-05, 8.09318e-05, 9.60422e-05, 0.000107051, 0.00011509, 0.000121009, 0.000125425, 0.000128766, 0.000131329, 0.000133326, 0.000134902, 0.000136163, 0.000137183, 0.000138018, 0.000138708, 0.000139286, 
			7.93803e-05, 0.000100456, 0.000116254, 0.00012796, 0.000136645, 0.000143137, 0.000148049, 0.00015181, 0.000154732, 0.000157032, 0.000158866, 0.000160348, 0.000161556, 0.000162551, 0.000163381, 0.000164079, 
			9.87963e-05, 0.000119932, 0.000136002, 0.000148068, 0.000157129, 0.000163982, 0.000169219, 0.000173275, 0.000176455, 0.000178977, 0.000181007, 0.000182657, 0.00018401, 0.000185137, 0.000186078, 0.000186875, 
			0.000118271, 0.000139321, 0.000155508, 0.000167776, 0.000177082, 0.000184185, 0.000189664, 0.000193939, 0.000197316, 0.000200017, 0.000202202, 0.00020399, 0.000205467, 0.0002067, 0.000207738, 0.00020862, 
			0.000137813, 0.000158778, 0.000175039, 0.000187467, 0.000196963, 0.000204266, 0.000209938, 0.000214395, 0.000217939, 0.000220791, 0.000223111, 0.000225021, 0.000226605, 0.000227935, 0.00022906, 0.000230019
		)
}

CapTable	"poly_C_LATERAL_17MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			0.000174815, 9.49292e-05, 6.24098e-05, 4.43394e-05, 3.29899e-05, 2.5369e-05, 2.00196e-05, 1.61382e-05, 1.32464e-05, 1.10435e-05, 9.33285e-06, 7.98216e-06, 6.89973e-06, 6.02067e-06, 5.29824e-06, 4.69804e-06, 
			0.000189738, 0.000105365, 7.04264e-05, 5.07794e-05, 3.82936e-05, 2.98096e-05, 2.3785e-05, 1.93652e-05, 1.6038e-05, 1.34787e-05, 1.14737e-05, 9.87748e-06, 8.58858e-06, 7.53455e-06, 6.66271e-06, 5.9341e-06, 
			0.000198297, 0.000112167, 7.60388e-05, 5.55064e-05, 4.23282e-05, 3.32856e-05, 2.68037e-05, 2.20055e-05, 1.83625e-05, 1.55382e-05, 1.3309e-05, 1.15221e-05, 1.00699e-05, 8.87533e-06, 7.88178e-06, 7.04721e-06, 
			0.000203731, 0.0001171, 8.03382e-05, 5.92752e-05, 4.56316e-05, 3.61936e-05, 2.93748e-05, 2.42892e-05, 2.04005e-05, 1.73653e-05, 1.49547e-05, 1.30108e-05, 1.14224e-05, 1.0109e-05, 9.01135e-06, 8.0852e-06, 
			0.000208327, 0.000121311, 8.40692e-05, 6.25733e-05, 4.85621e-05, 3.88044e-05, 3.17083e-05, 2.63823e-05, 2.22851e-05, 1.90687e-05, 1.65003e-05, 1.44185e-05, 1.27093e-05, 1.12895e-05, 1.00979e-05, 9.08855e-06
		)
}

CapTable	"metal1_C_BOTTOM_GP_21MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			2.36475e-05, 3.21296e-05, 3.98461e-05, 4.66341e-05, 5.23902e-05, 5.71333e-05, 6.09543e-05, 6.39842e-05, 6.63426e-05, 6.81705e-05, 6.95757e-05, 7.06559e-05, 7.14598e-05, 7.20794e-05, 7.25477e-05, 7.29011e-05, 
			3.28891e-05, 4.17626e-05, 4.98711e-05, 5.69908e-05, 6.302e-05, 6.79918e-05, 7.19877e-05, 7.51535e-05, 7.76341e-05, 7.95624e-05, 8.10278e-05, 8.2145e-05, 8.30032e-05, 8.36534e-05, 8.41456e-05, 8.45183e-05, 
			4.26807e-05, 5.18004e-05, 6.01118e-05, 6.73918e-05, 7.35566e-05, 7.86194e-05, 8.27005e-05, 8.59365e-05, 8.84723e-05, 9.04175e-05, 9.19236e-05, 9.30735e-05, 9.39502e-05, 9.46147e-05, 9.51189e-05, 9.55028e-05, 
			5.28147e-05, 6.20593e-05, 7.04799e-05, 7.78324e-05, 8.40491e-05, 8.91673e-05, 9.32977e-05, 9.65524e-05, 9.90949e-05, 0.000101073, 0.000102592, 0.000103754, 0.000104639, 0.000105311, 0.000105824, 0.000106212, 
			6.31253e-05, 7.24689e-05, 8.09262e-05, 8.83232e-05, 9.45745e-05, 9.97192e-05, 0.000103842, 0.00010712, 0.000109682, 0.000111668, 0.000113194, 0.000114361, 0.000115251, 0.000115929, 0.000116445, 0.000116837
		)
}

CapTable	"metal1_C_TOP_GP_21MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			3.21929e-05, 4.40271e-05, 5.44811e-05, 6.33933e-05, 7.07706e-05, 7.67353e-05, 8.14758e-05, 8.51878e-05, 8.80744e-05, 9.02934e-05, 9.19836e-05, 9.32641e-05, 9.42553e-05, 9.49948e-05, 9.5555e-05, 9.59776e-05, 
			4.58637e-05, 5.82064e-05, 6.90729e-05, 7.83136e-05, 8.59593e-05, 9.21402e-05, 9.70648e-05, 0.000100928, 0.000103915, 0.000106206, 0.000107975, 0.000109326, 0.000110344, 0.000111116, 0.000111699, 0.000112139, 
			6.03019e-05, 7.2864e-05, 8.38961e-05, 9.32789e-05, 0.00010103, 0.000107317, 0.000112311, 0.000116224, 0.000119255, 0.000121609, 0.000123399, 0.000124766, 0.000125803, 0.000126588, 0.000127181, 0.000127626, 
			7.50949e-05, 8.77359e-05, 9.88344e-05, 0.000108281, 0.000116095, 0.000122399, 0.000127412, 0.000131359, 0.00013443, 0.000136786, 0.000138593, 0.000139969, 0.000141014, 0.000141803, 0.000142397, 0.000142842, 
			9.00375e-05, 0.000102745, 0.00011389, 0.000123357, 0.000131179, 0.000137501, 0.000142551, 0.000146502, 0.000149572, 0.000151938, 0.000153749, 0.000155128, 0.000156174, 0.000156962, 0.000157553, 0.000157991
		)
}

CapTable	"metal1_C_LATERAL_21MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			0.00034503, 0.000180355, 0.000117027, 8.1669e-05, 5.8856e-05, 4.31012e-05, 3.18265e-05, 2.36048e-05, 1.75421e-05, 1.30432e-05, 9.69296e-06, 7.19079e-06, 5.31737e-06, 3.91476e-06, 2.86244e-06, 2.07256e-06, 
			0.000356331, 0.000187578, 0.000121862, 8.50822e-05, 6.13273e-05, 4.4912e-05, 3.31621e-05, 2.45878e-05, 1.82648e-05, 1.35705e-05, 1.00705e-05, 7.45478e-06, 5.49783e-06, 4.03057e-06, 2.92989e-06, 2.1036e-06, 
			0.000360494, 0.000190427, 0.00012383, 8.64671e-05, 6.23339e-05, 4.56422e-05, 3.36916e-05, 2.49687e-05, 1.85321e-05, 1.37505e-05, 1.01866e-05, 7.52167e-06, 5.52636e-06, 4.03068e-06, 2.90864e-06, 2.06668e-06, 
			0.000361547, 0.000191405, 0.000124539, 8.69733e-05, 6.26777e-05, 4.58976e-05, 3.38649e-05, 2.50786e-05, 1.85923e-05, 1.37755e-05, 1.0182e-05, 7.4954e-06, 5.48363e-06, 3.97575e-06, 2.84522e-06, 1.9983e-06, 
			0.000361698, 0.000191607, 0.000124713, 8.70923e-05, 6.27511e-05, 4.59203e-05, 3.38531e-05, 2.50468e-05, 1.85436e-05, 1.37113e-05, 1.0107e-05, 7.41213e-06, 5.39454e-06, 3.88329e-06, 2.7522e-06, 1.90777e-06
		)
}

CapTable	"metal1_C_BOTTOM_GP_22MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			2.66589e-05, 3.52358e-05, 4.29408e-05, 4.98462e-05, 5.59714e-05, 6.13574e-05, 6.60519e-05, 7.01134e-05, 7.36043e-05, 7.65904e-05, 7.91343e-05, 8.12918e-05, 8.31184e-05, 8.46583e-05, 8.59569e-05, 8.70524e-05, 
			3.54656e-05, 4.42604e-05, 5.23081e-05, 5.95703e-05, 6.60407e-05, 7.17454e-05, 7.67248e-05, 8.10438e-05, 8.47584e-05, 8.79416e-05, 9.06557e-05, 9.296e-05, 9.49144e-05, 9.65672e-05, 9.79587e-05, 9.9129e-05, 
			4.47691e-05, 5.37475e-05, 6.20061e-05, 6.94814e-05, 7.61533e-05, 8.20401e-05, 8.71872e-05, 9.16535e-05, 9.55014e-05, 9.88007e-05, 0.000101615, 0.000104007, 0.00010604, 0.000107752, 0.000109199, 0.000110422, 
			5.44435e-05, 6.3545e-05, 7.19398e-05, 7.95442e-05, 8.63404e-05, 9.23369e-05, 9.75856e-05, 0.000102144, 0.000106072, 0.000109443, 0.000112324, 0.000114771, 0.000116846, 0.000118597, 0.000120091, 0.000121334, 
			6.43642e-05, 7.35794e-05, 8.206e-05, 8.97452e-05, 9.66186e-05, 0.00010269, 0.000108006, 0.00011262, 0.000116601, 0.000120021, 0.000122936, 0.000125419, 0.000127529, 0.00012931, 0.000130816, 0.000132086
		)
}

CapTable	"metal1_C_TOP_GP_22MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			1.31836e-05, 1.73925e-05, 2.12162e-05, 2.46893e-05, 2.78155e-05, 3.05977e-05, 3.30491e-05, 3.51893e-05, 3.70455e-05, 3.86448e-05, 4.00127e-05, 4.11804e-05, 4.21723e-05, 4.30137e-05, 4.37251e-05, 4.43223e-05, 
			1.72766e-05, 2.15211e-05, 2.54827e-05, 2.91253e-05, 3.24281e-05, 3.53807e-05, 3.79935e-05, 4.02794e-05, 4.2267e-05, 4.39821e-05, 4.54524e-05, 4.67103e-05, 4.778e-05, 4.86847e-05, 4.94542e-05, 5.01046e-05, 
			2.15279e-05, 2.58352e-05, 2.98966e-05, 3.36546e-05, 3.70698e-05, 4.01323e-05, 4.28453e-05, 4.52225e-05, 4.72907e-05, 4.90774e-05, 5.06131e-05, 5.19263e-05, 5.30412e-05, 5.39939e-05, 5.47991e-05, 5.54736e-05, 
			2.59235e-05, 3.029e-05, 3.44266e-05, 3.82652e-05, 4.17588e-05, 4.48931e-05, 4.76717e-05, 5.01087e-05, 5.22315e-05, 5.4066e-05, 5.56395e-05, 5.6989e-05, 5.81413e-05, 5.91234e-05, 5.99393e-05, 6.06453e-05, 
			3.04242e-05, 3.48534e-05, 3.90501e-05, 4.29465e-05, 4.64955e-05, 4.96797e-05, 5.25036e-05, 5.49829e-05, 5.71417e-05, 5.9005e-05, 6.06136e-05, 6.19885e-05, 6.31561e-05, 6.41533e-05, 6.49961e-05, 6.571e-05
		)
}

CapTable	"metal1_C_LATERAL_22MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			0.000356586, 0.000195661, 0.000134945, 0.000101104, 7.88553e-05, 6.29017e-05, 5.08698e-05, 4.15097e-05, 3.40808e-05, 2.81053e-05, 2.3254e-05, 1.92903e-05, 1.6035e-05, 1.33527e-05, 1.11356e-05, 9.30012e-06, 
			0.000373274, 0.000207666, 0.000143956, 0.000108153, 8.44931e-05, 6.74806e-05, 5.46272e-05, 4.46146e-05, 3.66598e-05, 3.02551e-05, 2.50501e-05, 2.07935e-05, 1.72948e-05, 1.44096e-05, 1.20234e-05, 1.00459e-05, 
			0.000381984, 0.000214333, 0.000149136, 0.000112258, 8.78212e-05, 7.02058e-05, 5.68786e-05, 4.64862e-05, 3.82222e-05, 3.15627e-05, 2.61478e-05, 2.17153e-05, 1.80711e-05, 1.5063e-05, 1.2574e-05, 1.05109e-05, 
			0.000386624, 0.000218239, 0.000152268, 0.000114792, 8.98836e-05, 7.19216e-05, 5.83055e-05, 4.76787e-05, 3.92224e-05, 3.24038e-05, 2.68563e-05, 2.23135e-05, 1.85756e-05, 1.54895e-05, 1.29358e-05, 1.08164e-05, 
			0.000389497, 0.00022066, 0.000154272, 0.00011644, 9.12472e-05, 7.30498e-05, 5.92472e-05, 4.84719e-05, 3.98916e-05, 3.29708e-05, 2.73367e-05, 2.27209e-05, 1.89227e-05, 1.57847e-05, 1.31869e-05, 1.10309e-05
		)
}

CapTable	"metal1_C_BOTTOM_GP_23MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			2.85473e-05, 3.74398e-05, 4.53326e-05, 5.23561e-05, 5.85736e-05, 6.4052e-05, 6.88604e-05, 7.30682e-05, 7.67385e-05, 7.99348e-05, 8.27158e-05, 8.51322e-05, 8.72313e-05, 8.90547e-05, 9.06389e-05, 9.2017e-05, 
			3.75098e-05, 4.64902e-05, 5.46428e-05, 6.19681e-05, 6.84953e-05, 7.42769e-05, 7.93698e-05, 8.38419e-05, 8.7759e-05, 9.11793e-05, 9.41636e-05, 9.67623e-05, 9.90293e-05, 0.000101001, 0.00010272, 0.000104215, 
			4.68469e-05, 5.5923e-05, 6.4225e-05, 7.17238e-05, 7.84294e-05, 8.43882e-05, 8.96563e-05, 9.42945e-05, 9.83637e-05, 0.000101929, 0.000105045, 0.000107767, 0.000110144, 0.000112216, 0.000114024, 0.000115601, 
			5.64738e-05, 6.56082e-05, 7.40008e-05, 8.16014e-05, 8.84225e-05, 9.44965e-05, 9.98789e-05, 0.000104628, 0.000108804, 0.000112468, 0.000115678, 0.000118487, 0.000120941, 0.000123086, 0.00012496, 0.000126596, 
			6.62816e-05, 7.54838e-05, 8.39331e-05, 9.16037e-05, 9.85029e-05, 0.000104658, 0.000110123, 0.00011495, 0.000119203, 0.000122943, 0.000126222, 0.000129092, 0.000131606, 0.000133805, 0.000135729, 0.00013741
		)
}

CapTable	"metal1_C_TOP_GP_23MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			8.82573e-06, 1.15362e-05, 1.39692e-05, 1.61669e-05, 1.8143e-05, 1.99108e-05, 2.14833e-05, 2.28749e-05, 2.41027e-05, 2.51817e-05, 2.61275e-05, 2.69557e-05, 2.76801e-05, 2.83125e-05, 2.88649e-05, 2.9345e-05, 
			1.13502e-05, 1.40262e-05, 1.65032e-05, 1.87772e-05, 2.08466e-05, 2.27118e-05, 2.43828e-05, 2.58699e-05, 2.71866e-05, 2.83496e-05, 2.93735e-05, 3.02739e-05, 3.10619e-05, 3.1753e-05, 3.23562e-05, 3.28866e-05, 
			1.39173e-05, 1.65861e-05, 1.90954e-05, 2.14224e-05, 2.35533e-05, 2.54846e-05, 2.72196e-05, 2.87697e-05, 3.01482e-05, 3.13683e-05, 3.24451e-05, 3.33938e-05, 3.42259e-05, 3.49573e-05, 3.55996e-05, 3.61623e-05, 
			1.65264e-05, 1.91993e-05, 2.17371e-05, 2.41045e-05, 2.62801e-05, 2.82566e-05, 3.00394e-05, 3.16359e-05, 3.3059e-05, 3.43207e-05, 3.5436e-05, 3.64189e-05, 3.72872e-05, 3.80485e-05, 3.87176e-05, 3.93047e-05, 
			1.91674e-05, 2.18618e-05, 2.44247e-05, 2.68215e-05, 2.90315e-05, 3.10457e-05, 3.28649e-05, 3.44968e-05, 3.5953e-05, 3.72453e-05, 3.83902e-05, 3.9403e-05, 4.02954e-05, 4.10805e-05, 4.17712e-05, 4.23784e-05
		)
}

CapTable	"metal1_C_LATERAL_23MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			0.000358546, 0.000198411, 0.000138438, 0.000105259, 8.35624e-05, 6.8038e-05, 5.63105e-05, 4.71355e-05, 3.97846e-05, 3.37949e-05, 2.88529e-05, 2.47365e-05, 2.12815e-05, 1.83645e-05, 1.58887e-05, 1.37795e-05, 
			0.000376253, 0.000211512, 0.000148596, 0.00011348, 9.03762e-05, 7.37792e-05, 6.12024e-05, 5.13372e-05, 4.3414e-05, 3.69435e-05, 3.15927e-05, 2.71263e-05, 2.33698e-05, 2.01922e-05, 1.74902e-05, 1.51837e-05, 
			0.000386084, 0.000219327, 0.00015493, 0.000118726, 9.48153e-05, 7.75746e-05, 6.44759e-05, 5.41772e-05, 4.58889e-05, 3.91062e-05, 3.34874e-05, 2.87882e-05, 2.48303e-05, 2.14759e-05, 1.86197e-05, 1.61777e-05, 
			0.000391882, 0.000224382, 0.000159186, 0.000122343, 9.79126e-05, 8.02693e-05, 6.68223e-05, 5.62293e-05, 4.7689e-05, 4.06885e-05, 3.48807e-05, 3.00163e-05, 2.59129e-05, 2.24309e-05, 1.94625e-05, 1.69221e-05, 
			0.000395914, 0.000227921, 0.000162259, 0.000125004, 0.000100229, 8.22872e-05, 6.85916e-05, 5.77881e-05, 4.90644e-05, 4.19048e-05, 3.59562e-05, 3.09683e-05, 2.67555e-05, 2.31778e-05, 2.01242e-05, 1.75083e-05
		)
}

CapTable	"metal1_C_BOTTOM_GP_24MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			2.97167e-05, 3.88756e-05, 4.69648e-05, 5.414e-05, 6.04754e-05, 6.6053e-05, 7.09496e-05, 7.52401e-05, 7.89939e-05, 8.2277e-05, 8.51474e-05, 8.76606e-05, 8.98731e-05, 9.17864e-05, 9.34975e-05, 9.49627e-05, 
			3.88433e-05, 4.80277e-05, 5.63324e-05, 6.37738e-05, 7.03954e-05, 7.62567e-05, 8.1426e-05, 8.5975e-05, 8.99735e-05, 9.34818e-05, 9.65618e-05, 9.92884e-05, 0.000101677, 0.000103748, 0.00010557, 0.000107202, 
			4.8284e-05, 5.75162e-05, 6.5932e-05, 7.35185e-05, 8.02966e-05, 8.63205e-05, 9.16549e-05, 9.63634e-05, 0.000100517, 0.000104189, 0.000107392, 0.000110251, 0.000112724, 0.000114962, 0.00011687, 0.000118633, 
			5.79685e-05, 6.72168e-05, 7.56923e-05, 8.33567e-05, 9.02306e-05, 9.63582e-05, 0.000101799, 0.000106618, 0.000110902, 0.000114679, 0.000117978, 0.000120891, 0.000123492, 0.000125764, 0.00012782, 0.000129577, 
			6.77943e-05, 7.70763e-05, 8.55816e-05, 9.32961e-05, 0.000100233, 0.000106436, 0.000111974, 0.000116857, 0.000121223, 0.000125041, 0.000128478, 0.000131445, 0.000134155, 0.000136459, 0.000138542, 0.000140417
		)
}

CapTable	"metal1_C_TOP_GP_24MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			6.80236e-06, 8.85874e-06, 1.0699e-05, 1.2352e-05, 1.38366e-05, 1.51633e-05, 1.63437e-05, 1.73907e-05, 1.83168e-05, 1.91342e-05, 1.98556e-05, 2.04891e-05, 2.10344e-05, 2.15421e-05, 2.19565e-05, 2.23618e-05, 
			8.69095e-06, 1.07066e-05, 1.25651e-05, 1.42664e-05, 1.58108e-05, 1.72042e-05, 1.84531e-05, 1.95679e-05, 2.05579e-05, 2.14389e-05, 2.22176e-05, 2.28843e-05, 2.34811e-05, 2.40412e-05, 2.45371e-05, 2.49484e-05, 
			1.05972e-05, 1.25924e-05, 1.44627e-05, 1.61941e-05, 1.77776e-05, 1.9214e-05, 2.05078e-05, 2.16681e-05, 2.27018e-05, 2.36085e-05, 2.4445e-05, 2.51499e-05, 2.58217e-05, 2.63584e-05, 2.69058e-05, 2.73098e-05, 
			1.25187e-05, 1.45029e-05, 1.63841e-05, 1.81366e-05, 1.97487e-05, 2.12146e-05, 2.25422e-05, 2.3735e-05, 2.47794e-05, 2.5718e-05, 2.65924e-05, 2.737e-05, 2.80314e-05, 2.86469e-05, 2.91462e-05, 2.96563e-05, 
			1.44473e-05, 1.64378e-05, 1.83292e-05, 2.00985e-05, 2.17322e-05, 2.32215e-05, 2.45575e-05, 2.57937e-05, 2.68636e-05, 2.78708e-05, 2.87062e-05, 2.95302e-05, 3.01735e-05, 3.08484e-05, 3.14052e-05, 3.18718e-05
		)
}

CapTable	"metal1_C_LATERAL_24MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			0.000359229, 0.00019936, 0.000139647, 0.000106712, 8.52362e-05, 6.9904e-05, 5.8336e-05, 4.92873e-05, 4.20297e-05, 3.61021e-05, 3.11937e-05, 2.70854e-05, 2.36169e-05, 2.06661e-05, 1.81416e-05, 1.59687e-05, 
			0.000377289, 0.00021285, 0.000150228, 0.000115384, 9.25249e-05, 7.61365e-05, 6.37305e-05, 5.39969e-05, 4.61678e-05, 3.97555e-05, 3.4431e-05, 2.99625e-05, 2.61789e-05, 2.29516e-05, 2.01825e-05, 1.77948e-05, 
			0.00038752, 0.000221092, 0.000157013, 0.000121099, 9.74456e-05, 8.04205e-05, 6.74937e-05, 5.73241e-05, 4.91229e-05, 4.23892e-05, 3.67833e-05, 3.20676e-05, 2.80641e-05, 2.46442e-05, 2.17015e-05, 1.91607e-05, 
			0.000393756, 0.000226607, 0.000161741, 0.000125199, 0.000101029, 8.36002e-05, 7.032e-05, 5.98472e-05, 5.13828e-05, 4.4417e-05, 3.86056e-05, 3.37056e-05, 2.954e-05, 2.59718e-05, 2.28998e-05, 2.02381e-05, 
			0.00039825, 0.000230621, 0.000165295, 0.000128343, 0.000103825, 8.60908e-05, 7.25519e-05, 6.18542e-05, 5.3191e-05, 4.60468e-05, 4.00784e-05, 3.50347e-05, 3.07418e-05, 2.70563e-05, 2.38781e-05, 2.11238e-05
		)
}

CapTable	"metal1_C_BOTTOM_GP_25MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			3.06445e-05, 4.00228e-05, 4.82906e-05, 5.56062e-05, 6.20591e-05, 6.77338e-05, 7.27126e-05, 7.70741e-05, 8.0892e-05, 8.42337e-05, 8.71605e-05, 8.97259e-05, 9.1978e-05, 9.39572e-05, 9.57012e-05, 9.72388e-05, 
			3.99326e-05, 4.9307e-05, 5.77695e-05, 6.53363e-05, 7.20607e-05, 7.80076e-05, 8.32516e-05, 8.78667e-05, 9.19234e-05, 9.54888e-05, 9.86247e-05, 0.000101385, 0.000103817, 0.000105961, 0.000107861, 0.000109538, 
			4.95184e-05, 5.89112e-05, 6.74601e-05, 7.51544e-05, 8.20205e-05, 8.81202e-05, 9.35194e-05, 9.82883e-05, 0.000102496, 0.000106208, 0.000109483, 0.000112376, 0.000114931, 0.000117195, 0.000119199, 0.000120982, 
			5.93167e-05, 6.87019e-05, 7.72883e-05, 8.50443e-05, 9.1994e-05, 9.81856e-05, 0.000103686, 0.000108558, 0.000112871, 0.000116688, 0.000120065, 0.000123057, 0.000125704, 0.000128058, 0.000130146, 0.000132005, 
			6.92325e-05, 7.86285e-05, 8.72271e-05, 9.50173e-05, 0.000102019, 0.000108276, 0.000113848, 0.000118799, 0.000123191, 0.000127087, 0.000130544, 0.000133608, 0.000136336, 0.000138756, 0.000140916, 0.000142839
		)
}

CapTable	"metal1_C_TOP_GP_25MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			5.4405e-06, 7.07739e-06, 8.53255e-06, 9.8399e-06, 1.10106e-05, 1.20549e-05, 1.29841e-05, 1.38078e-05, 1.45366e-05, 1.51809e-05, 1.57499e-05, 1.62523e-05, 1.66957e-05, 1.70885e-05, 1.74352e-05, 1.77439e-05, 
			6.93805e-06, 8.5304e-06, 9.99215e-06, 1.1331e-05, 1.2545e-05, 1.36383e-05, 1.4618e-05, 1.54923e-05, 1.62705e-05, 1.69623e-05, 1.75764e-05, 1.81216e-05, 1.86042e-05, 1.90344e-05, 1.94138e-05, 1.9756e-05, 
			8.43034e-06, 1.00007e-05, 1.14693e-05, 1.28267e-05, 1.40671e-05, 1.51911e-05, 1.62036e-05, 1.71115e-05, 1.79232e-05, 1.86472e-05, 1.92931e-05, 1.98675e-05, 2.03805e-05, 2.08358e-05, 2.1245e-05, 2.16058e-05, 
			9.9301e-06, 1.14875e-05, 1.29599e-05, 1.43297e-05, 1.55882e-05, 1.67331e-05, 1.77694e-05, 1.87019e-05, 1.9539e-05, 2.0287e-05, 2.09574e-05, 2.1553e-05, 2.20902e-05, 2.25656e-05, 2.29946e-05, 2.33771e-05, 
			1.14298e-05, 1.29861e-05, 1.44621e-05, 1.58414e-05, 1.71137e-05, 1.82757e-05, 1.93297e-05, 2.02818e-05, 2.11375e-05, 2.19068e-05, 2.25949e-05, 2.32142e-05, 2.3764e-05, 2.42624e-05, 2.47034e-05, 2.51035e-05
		)
}

CapTable	"metal1_C_LATERAL_25MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			0.000359579, 0.00019985, 0.000140274, 0.000107472, 8.61202e-05, 7.09002e-05, 5.94314e-05, 5.04678e-05, 4.3281e-05, 3.74108e-05, 3.25464e-05, 2.84698e-05, 2.50216e-05, 2.20819e-05, 1.95588e-05, 1.73803e-05, 
			0.000377812, 0.000213534, 0.000151067, 0.000116373, 9.36536e-05, 7.73914e-05, 6.50961e-05, 5.54571e-05, 4.77058e-05, 4.13557e-05, 3.60783e-05, 3.1642e-05, 2.78782e-05, 2.466e-05, 2.18898e-05, 1.94912e-05, 
			0.000388242, 0.00022199, 0.000158082, 0.000122333, 9.88302e-05, 8.19409e-05, 6.91326e-05, 5.90626e-05, 5.09432e-05, 4.42728e-05, 3.87142e-05, 3.40292e-05, 3.0044e-05, 2.66277e-05, 2.36795e-05, 2.1121e-05, 
			0.000394699, 0.000227738, 0.000163057, 0.00012669, 0.00010268, 8.53933e-05, 7.22361e-05, 6.18657e-05, 5.34831e-05, 4.658e-05, 4.08139e-05, 3.59428e-05, 3.17895e-05, 2.82212e-05, 2.51355e-05, 2.24518e-05, 
			0.000399431, 0.000232004, 0.000166873, 0.000130104, 0.000105752, 8.81639e-05, 7.47491e-05, 6.41547e-05, 5.55722e-05, 4.8489e-05, 4.256e-05, 3.7541e-05, 3.32536e-05, 2.95627e-05, 2.63651e-05, 2.35789e-05
		)
}

CapTable	"metal1_C_BOTTOM_GP_26MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			3.51708e-05, 4.57632e-05, 5.50533e-05, 6.32428e-05, 7.04458e-05, 7.67626e-05, 8.22965e-05, 8.71357e-05, 9.137e-05, 9.50747e-05, 9.83199e-05, 0.000101167, 0.000103669, 0.000105873, 0.00010782, 0.000109543, 
			4.54972e-05, 5.59835e-05, 6.54114e-05, 7.38192e-05, 8.12725e-05, 8.78508e-05, 9.36404e-05, 9.87314e-05, 0.000103203, 0.000107133, 0.000110592, 0.000113638, 0.000116328, 0.000118706, 0.000120814, 0.000122689, 
			5.60476e-05, 6.64695e-05, 7.59304e-05, 8.44234e-05, 9.19901e-05, 9.86966e-05, 0.000104626, 0.000109859, 0.000114472, 0.000118543, 0.000122137, 0.000125315, 0.000128131, 0.000130629, 0.000132852, 0.000134834, 
			6.6745e-05, 7.70879e-05, 8.6532e-05, 9.5046e-05, 0.000102661, 0.000109433, 0.000115442, 0.000120761, 0.000125468, 0.000129634, 0.000133324, 0.000136598, 0.000139506, 0.000142094, 0.000144404, 0.000146471, 
			7.749e-05, 8.7785e-05, 9.71883e-05, 0.000105692, 0.000113323, 0.000120131, 0.000126188, 0.000131566, 0.000136338, 0.000140573, 0.000144336, 0.00014768, 0.000150661, 0.000153322, 0.000155702, 0.000157835
		)
}

CapTable	"metal1_C_LATERAL_26MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			0.000360321, 0.000200892, 0.000141613, 0.0001091, 8.8023e-05, 7.30598e-05, 6.18265e-05, 5.30757e-05, 4.6079e-05, 4.0376e-05, 3.56574e-05, 3.17064e-05, 2.83648e-05, 2.55143e-05, 2.30646e-05, 2.09454e-05, 
			0.000378907, 0.000214963, 0.000152834, 0.000118468, 9.60613e-05, 8.00918e-05, 6.80652e-05, 5.86692e-05, 5.11356e-05, 4.4977e-05, 3.98664e-05, 3.5574e-05, 3.19323e-05, 2.88162e-05, 2.61299e-05, 2.37987e-05, 
			0.000389735, 0.000223854, 0.000160318, 0.000124931, 0.000101774, 8.52074e-05, 7.2695e-05, 6.2893e-05, 5.50124e-05, 4.85528e-05, 4.31777e-05, 3.86504e-05, 3.47987e-05, 3.14938e-05, 2.86364e-05, 2.61502e-05, 
			0.000396637, 0.000230079, 0.000165802, 0.000129829, 0.000106193, 8.92548e-05, 7.6417e-05, 6.63351e-05, 5.82095e-05, 5.15326e-05, 4.59628e-05, 4.12597e-05, 3.72487e-05, 3.37982e-05, 3.08078e-05, 2.81994e-05, 
			0.000401859, 0.000234867, 0.000170171, 0.000133824, 0.000109872, 9.26559e-05, 7.95816e-05, 6.92938e-05, 6.09837e-05, 5.41397e-05, 4.84179e-05, 4.35758e-05, 3.94366e-05, 3.5868e-05, 3.27687e-05, 3.00591e-05
		)
}

CapTable	"metal1_C_BOTTOM_GPMAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			5.79335e-05, 7.90054e-05, 9.56304e-05, 0.000108138, 0.000117189, 0.000123545, 0.00012791, 0.000130866, 0.000132844, 0.000134157, 0.000135025, 0.000135597, 0.000135976, 0.000136223, 0.000136389, 0.0001365, 
			8.69744e-05, 0.000108491, 0.000125383, 0.000138064, 0.000147232, 0.000153675, 0.000158101, 0.000161099, 0.000163104, 0.000164437, 0.000165318, 0.000165896, 0.000166277, 0.000166526, 0.000166694, 0.000166804, 
			0.000116618, 0.000138192, 0.00015511, 0.000167818, 0.000177009, 0.00018346, 0.000187895, 0.000190897, 0.000192906, 0.000194237, 0.000195114, 0.000195691, 0.000196069, 0.000196318, 0.000196482, 0.000196591, 
			0.000146412, 0.00016793, 0.000184827, 0.000197512, 0.000206702, 0.000213135, 0.000217563, 0.000220556, 0.000222557, 0.00022388, 0.000224749, 0.00022532, 0.000225694, 0.000225936, 0.000226096, 0.000226204, 
			0.000176243, 0.00019776, 0.000214617, 0.000227277, 0.000236442, 0.000242866, 0.000247279, 0.000250254, 0.000252239, 0.000253551, 0.000254414, 0.000254976, 0.000255342, 0.000255583, 0.000255738, 0.000255844
		)
}

CapTable	"metal1_C_TOP_GPMAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			3.06347e-05, 4.26614e-05, 5.30124e-05, 6.12613e-05, 6.74372e-05, 7.18661e-05, 7.49503e-05, 7.705e-05, 7.84651e-05, 7.9409e-05, 8.00358e-05, 8.04507e-05, 8.07258e-05, 8.09103e-05, 8.1033e-05, 8.11157e-05, 
			4.49406e-05, 5.74056e-05, 6.80436e-05, 7.6477e-05, 8.27833e-05, 8.73039e-05, 9.04505e-05, 9.25918e-05, 9.40372e-05, 9.50022e-05, 9.56438e-05, 9.60698e-05, 9.63553e-05, 9.65451e-05, 9.66711e-05, 9.67572e-05, 
			5.97666e-05, 7.23696e-05, 8.30826e-05, 9.15663e-05, 9.78947e-05, 0.000102434, 0.000105591, 0.000107747, 0.0001092, 0.000110172, 0.000110821, 0.000111252, 0.000111541, 0.000111732, 0.000111862, 0.000111949, 
			7.47657e-05, 8.73888e-05, 9.81149e-05, 0.000106599, 0.000112922, 0.000117452, 0.000120609, 0.000122766, 0.00012422, 0.000125197, 0.000125848, 0.00012628, 0.000126571, 0.000126766, 0.000126896, 0.000126983, 
			8.97837e-05, 0.000102427, 0.000113139, 0.000121603, 0.000127925, 0.000132451, 0.000135605, 0.000137761, 0.000139215, 0.00014019, 0.00014084, 0.000141275, 0.000141568, 0.000141763, 0.000141893, 0.000141977
		)
}

CapTable	"metal1_C_LATERALMAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			0.000325021, 0.0001568, 9.25856e-05, 5.81613e-05, 3.74304e-05, 2.43474e-05, 1.59222e-05, 1.04478e-05, 6.8756e-06, 4.54048e-06, 3.01143e-06, 2.00894e-06, 1.35003e-06, 9.1488e-07, 6.25716e-07, 4.31544e-07, 
			0.0003297, 0.000159411, 9.41035e-05, 5.91273e-05, 3.80629e-05, 2.47664e-05, 1.62022e-05, 1.06359e-05, 7.00238e-06, 4.62636e-06, 3.07059e-06, 2.05017e-06, 1.37878e-06, 9.35211e-07, 6.40119e-07, 4.41893e-07, 
			0.000330106, 0.000159772, 9.43463e-05, 5.92729e-05, 3.81676e-05, 2.48364e-05, 1.62487e-05, 1.06655e-05, 7.02198e-06, 4.63974e-06, 3.07972e-06, 2.05689e-06, 1.38408e-06, 9.39733e-07, 6.44342e-07, 4.46922e-07, 
			0.000329157, 0.000159456, 9.41791e-05, 5.91724e-05, 3.80817e-05, 2.47948e-05, 1.62175e-05, 1.06428e-05, 7.00568e-06, 4.62795e-06, 3.0723e-06, 2.05288e-06, 1.38271e-06, 9.40982e-07, 6.48883e-07, 4.55e-07, 
			0.000328283, 0.000158995, 9.39263e-05, 5.90198e-05, 3.79795e-05, 2.47103e-05, 1.61543e-05, 1.0601e-05, 6.97939e-06, 4.61297e-06, 3.06527e-06, 2.05106e-06, 1.38563e-06, 9.48318e-07, 6.60517e-07, 4.70453e-07
		)
}

CapTable	"metal1_C_BOTTOM_GP_12MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			6.16703e-05, 8.29437e-05, 9.96825e-05, 0.000112633, 0.000122586, 0.000130228, 0.000136109, 0.00014065, 0.000144172, 0.000146915, 0.000149061, 0.000150745, 0.000152074, 0.000153126, 0.000153959, 0.000154624, 
			9.032e-05, 0.000111759, 0.000128703, 0.000141903, 0.000152137, 0.000160065, 0.000166216, 0.000171004, 0.00017474, 0.000177668, 0.00017997, 0.000181784, 0.000183222, 0.000184362, 0.000185266, 0.000185991, 
			0.000119388, 0.000140785, 0.000157773, 0.0001711, 0.000181495, 0.000189595, 0.000195916, 0.000200855, 0.000204728, 0.000207774, 0.000210176, 0.000212078, 0.000213587, 0.000214782, 0.000215739, 0.000216506, 
			0.00014859, 0.000169915, 0.000186929, 0.000200332, 0.00021084, 0.000219047, 0.000225481, 0.000230525, 0.000234492, 0.000237618, 0.000240089, 0.000242046, 0.000243604, 0.000244846, 0.000245837, 0.000246631, 
			0.000177897, 0.000199235, 0.000216266, 0.000229722, 0.000240306, 0.000248601, 0.000255114, 0.000260228, 0.000264256, 0.000267441, 0.000269956, 0.000271957, 0.00027355, 0.000274821, 0.000275836, 0.000276651
		)
}

CapTable	"metal1_C_TOP_GP_12MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			1.20145e-05, 1.63373e-05, 2.01944e-05, 2.34868e-05, 2.62025e-05, 2.83927e-05, 3.01393e-05, 3.15244e-05, 3.262e-05, 3.34855e-05, 3.4172e-05, 3.47169e-05, 3.51497e-05, 3.54941e-05, 3.57697e-05, 3.59888e-05, 
			1.64944e-05, 2.08547e-05, 2.48114e-05, 2.82275e-05, 3.10745e-05, 3.33956e-05, 3.52643e-05, 3.67557e-05, 3.79464e-05, 3.88921e-05, 3.96469e-05, 4.02494e-05, 4.07295e-05, 4.11137e-05, 4.14238e-05, 4.16692e-05, 
			2.1028e-05, 2.54274e-05, 2.94529e-05, 3.29542e-05, 3.58891e-05, 3.82953e-05, 4.02417e-05, 4.18064e-05, 4.30587e-05, 4.40597e-05, 4.48598e-05, 4.55e-05, 4.60106e-05, 4.64244e-05, 4.67523e-05, 4.70151e-05, 
			2.56245e-05, 3.00583e-05, 3.41382e-05, 3.77023e-05, 4.0698e-05, 4.31623e-05, 4.51636e-05, 4.67765e-05, 4.80736e-05, 4.91114e-05, 4.99449e-05, 5.06136e-05, 5.11468e-05, 5.15742e-05, 5.1917e-05, 5.2193e-05, 
			3.02623e-05, 3.47451e-05, 3.88682e-05, 4.24766e-05, 4.55204e-05, 4.8029e-05, 5.00709e-05, 5.17195e-05, 5.30463e-05, 5.4109e-05, 5.49675e-05, 5.56518e-05, 5.62006e-05, 5.66409e-05, 5.69953e-05, 5.72792e-05
		)
}

CapTable	"metal1_C_LATERAL_12MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			0.0003356, 0.000171093, 0.000109331, 7.59839e-05, 5.51337e-05, 4.10682e-05, 3.11363e-05, 2.39095e-05, 1.85381e-05, 1.44816e-05, 1.13802e-05, 8.98548e-06, 7.12166e-06, 5.66196e-06, 4.51268e-06, 3.60391e-06, 
			0.000345794, 0.000178647, 0.000115157, 8.06495e-05, 5.89117e-05, 4.41392e-05, 3.3635e-05, 2.59424e-05, 2.01904e-05, 1.58231e-05, 1.24687e-05, 9.86782e-06, 7.83678e-06, 6.24117e-06, 4.98145e-06, 3.98314e-06, 
			0.000350888, 0.000182953, 0.000118707, 8.35601e-05, 6.13189e-05, 4.61208e-05, 3.52629e-05, 2.72768e-05, 2.1282e-05, 1.67145e-05, 1.31951e-05, 1.04596e-05, 8.31824e-06, 6.63228e-06, 5.29908e-06, 4.24074e-06, 
			0.000353632, 0.000185661, 0.000121029, 8.5512e-05, 6.29297e-05, 4.74754e-05, 3.63818e-05, 2.81985e-05, 2.20391e-05, 1.73354e-05, 1.37032e-05, 1.08746e-05, 8.65668e-06, 6.90819e-06, 5.52359e-06, 4.42302e-06, 
			0.00035555, 0.000187466, 0.000122623, 8.68706e-05, 6.4069e-05, 4.84114e-05, 3.71549e-05, 2.88392e-05, 2.25686e-05, 1.77715e-05, 1.40613e-05, 1.11681e-05, 8.89672e-06, 7.10405e-06, 5.68285e-06, 4.55246e-06
		)
}

CapTable	"metal1_C_BOTTOM_GP_13MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			6.39233e-05, 8.57245e-05, 0.00010283, 0.000116042, 0.000126215, 0.000134073, 0.000140186, 0.000144981, 0.000148777, 0.000151806, 0.000154246, 0.00015623, 0.000157851, 0.000159188, 0.000160297, 0.00016122, 
			9.28841e-05, 0.000114682, 0.000131873, 0.000145265, 0.000155687, 0.000163831, 0.000170237, 0.000175314, 0.000179374, 0.000182641, 0.000185297, 0.00018747, 0.000189259, 0.00019074, 0.000191978, 0.000193011, 
			0.000122069, 0.000143699, 0.000160849, 0.000174322, 0.00018489, 0.000193218, 0.000199818, 0.00020509, 0.000209335, 0.000212772, 0.000215585, 0.000217897, 0.00021981, 0.000221403, 0.000222734, 0.00022385, 
			0.000151259, 0.000172718, 0.000189834, 0.000203353, 0.000214032, 0.000222487, 0.000229233, 0.000234653, 0.000239037, 0.000242609, 0.00024554, 0.00024796, 0.000249969, 0.000251647, 0.000253053, 0.000254237, 
			0.000180459, 0.00020187, 0.000218968, 0.000232526, 0.000243293, 0.000251863, 0.000258726, 0.00026426, 0.000268754, 0.000272427, 0.000275454, 0.00027796, 0.000280045, 0.000281791, 0.000283258, 0.000284491
		)
}

CapTable	"metal1_C_TOP_GP_13MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			7.82389e-06, 1.05785e-05, 1.30192e-05, 1.50994e-05, 1.68164e-05, 1.82119e-05, 1.93381e-05, 2.02467e-05, 2.09786e-05, 2.15762e-05, 2.20636e-05, 2.24626e-05, 2.27942e-05, 2.30665e-05, 2.3295e-05, 2.34863e-05, 
			1.05954e-05, 1.33295e-05, 1.58028e-05, 1.79392e-05, 1.97299e-05, 2.12044e-05, 2.24098e-05, 2.33951e-05, 2.41968e-05, 2.48583e-05, 2.5402e-05, 2.58513e-05, 2.62244e-05, 2.65381e-05, 2.67984e-05, 2.70189e-05, 
			1.33499e-05, 1.6074e-05, 1.85676e-05, 2.07453e-05, 2.25861e-05, 2.41142e-05, 2.53784e-05, 2.6417e-05, 2.72712e-05, 2.79793e-05, 2.85627e-05, 2.90497e-05, 2.94566e-05, 2.97972e-05, 3.00839e-05, 3.03269e-05, 
			1.60962e-05, 1.88215e-05, 2.13347e-05, 2.35449e-05, 2.54271e-05, 2.69966e-05, 2.83045e-05, 2.93852e-05, 3.02775e-05, 3.10198e-05, 3.1638e-05, 3.21535e-05, 3.2587e-05, 3.29496e-05, 3.32567e-05, 3.35161e-05, 
			1.88447e-05, 2.15838e-05, 2.41154e-05, 2.63563e-05, 2.82709e-05, 2.98774e-05, 3.12197e-05, 3.23312e-05, 3.32566e-05, 3.40276e-05, 3.46696e-05, 3.52099e-05, 3.56642e-05, 3.60468e-05, 3.63688e-05, 3.66464e-05
		)
}

CapTable	"metal1_C_LATERAL_13MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			0.000337123, 0.000173306, 0.000112188, 7.93747e-05, 5.89131e-05, 4.50859e-05, 3.52579e-05, 2.8023e-05, 2.25553e-05, 1.83366e-05, 1.50268e-05, 1.23929e-05, 1.02724e-05, 8.54832e-06, 7.1339e-06, 5.96551e-06, 
			0.000348326, 0.000181965, 0.000119177, 8.52247e-05, 6.38683e-05, 4.93052e-05, 3.88584e-05, 3.10988e-05, 2.51839e-05, 2.05838e-05, 1.69481e-05, 1.40358e-05, 1.16775e-05, 9.74924e-06, 8.16049e-06, 6.84244e-06, 
			0.000354547, 0.000187442, 0.000123908, 8.93018e-05, 6.74052e-05, 5.23639e-05, 4.15008e-05, 3.33785e-05, 2.71488e-05, 2.22758e-05, 1.84043e-05, 1.52877e-05, 1.27531e-05, 1.06727e-05, 8.95283e-06, 7.52153e-06, 
			0.000358476, 0.000191334, 0.000127394, 9.23762e-05, 7.00823e-05, 5.47187e-05, 4.35492e-05, 3.51568e-05, 2.86896e-05, 2.3609e-05, 1.95558e-05, 1.6282e-05, 1.361e-05, 1.14111e-05, 9.58807e-06, 8.0677e-06, 
			0.000361575, 0.000194289, 0.000130091, 9.47783e-05, 7.21972e-05, 5.65575e-05, 4.515e-05, 3.65518e-05, 2.99012e-05, 2.46589e-05, 2.04634e-05, 1.70649e-05, 1.42841e-05, 1.19901e-05, 1.00846e-05, 8.4922e-06
		)
}

CapTable	"metal1_C_BOTTOM_GP_14MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			6.51917e-05, 8.72843e-05, 0.000104601, 0.000117957, 0.000128231, 0.000136169, 0.000142351, 0.00014721, 0.00015107, 0.000154169, 0.000156684, 0.000158743, 0.000160443, 0.000161862, 0.000163048, 0.000164055, 
			9.44203e-05, 0.000116445, 0.000133789, 0.000147286, 0.000157781, 0.000165987, 0.000172452, 0.000177594, 0.000181721, 0.00018507, 0.00018781, 0.000190072, 0.000191957, 0.000193539, 0.00019487, 0.000196007, 
			0.000123802, 0.000145596, 0.000162852, 0.00017639, 0.000187006, 0.000195381, 0.000202037, 0.000207375, 0.000211695, 0.000215225, 0.000218137, 0.000220549, 0.000222578, 0.000224283, 0.000225735, 0.000226968, 
			0.000153118, 0.000174689, 0.000191867, 0.000205423, 0.000216136, 0.000224626, 0.000231427, 0.000236918, 0.000241385, 0.000245056, 0.000248101, 0.000250641, 0.00025278, 0.000254589, 0.000256133, 0.000257449, 
			0.000182379, 0.000203857, 0.000220977, 0.00023455, 0.000245333, 0.000253935, 0.000260852, 0.000266465, 0.000271048, 0.000274842, 0.000277991, 0.000280636, 0.000282866, 0.000284763, 0.000286378, 0.000287773
		)
}

CapTable	"metal1_C_TOP_GP_14MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			5.82194e-06, 7.85861e-06, 9.64869e-06, 1.11725e-05, 1.24275e-05, 1.34473e-05, 1.4272e-05, 1.49381e-05, 1.54791e-05, 1.59204e-05, 1.62837e-05, 1.65838e-05, 1.68347e-05, 1.70418e-05, 1.72224e-05, 1.73698e-05, 
			7.85525e-06, 9.85706e-06, 1.16615e-05, 1.3217e-05, 1.45187e-05, 1.55917e-05, 1.64704e-05, 1.719e-05, 1.7782e-05, 1.82707e-05, 1.86753e-05, 1.90148e-05, 1.93e-05, 1.95378e-05, 1.97456e-05, 1.9917e-05, 
			9.85585e-06, 1.18367e-05, 1.36458e-05, 1.52249e-05, 1.65585e-05, 1.76687e-05, 1.85865e-05, 1.93456e-05, 1.99734e-05, 2.04971e-05, 2.09301e-05, 2.13024e-05, 2.16091e-05, 2.18757e-05, 2.20984e-05, 2.22933e-05, 
			1.18389e-05, 1.38087e-05, 1.56241e-05, 1.72192e-05, 1.85774e-05, 1.97158e-05, 2.06644e-05, 2.14521e-05, 2.2111e-05, 2.26615e-05, 2.31223e-05, 2.35171e-05, 2.38456e-05, 2.4131e-05, 2.43716e-05, 2.45836e-05, 
			1.38077e-05, 1.57798e-05, 1.76029e-05, 1.9213e-05, 2.05929e-05, 2.17535e-05, 2.2727e-05, 2.35354e-05, 2.4222e-05, 2.47898e-05, 2.5277e-05, 2.56841e-05, 2.60359e-05, 2.63347e-05, 2.65964e-05, 2.68153e-05
		)
}

CapTable	"metal1_C_LATERAL_14MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			0.000337702, 0.000174177, 0.000113342, 8.07834e-05, 6.05343e-05, 4.68734e-05, 3.71675e-05, 3.00149e-05, 2.45956e-05, 2.03979e-05, 1.70857e-05, 1.44318e-05, 1.22766e-05, 1.05064e-05, 9.03767e-06, 7.80875e-06, 
			0.00034925, 0.000183222, 0.000120758, 8.70923e-05, 6.59722e-05, 5.15911e-05, 4.12748e-05, 3.35997e-05, 2.77304e-05, 2.31433e-05, 1.94943e-05, 1.65477e-05, 1.41383e-05, 1.21466e-05, 1.04846e-05, 9.08678e-06, 
			0.000355869, 0.000189132, 0.000125951, 9.1653e-05, 7.00062e-05, 5.51536e-05, 4.44212e-05, 3.63787e-05, 3.01851e-05, 2.53127e-05, 2.14123e-05, 1.82445e-05, 1.56404e-05, 1.34773e-05, 1.16645e-05, 1.01336e-05, 
			0.000360234, 0.000193491, 0.000129924, 9.52283e-05, 7.31898e-05, 5.80135e-05, 4.69683e-05, 3.8645e-05, 3.22003e-05, 2.71039e-05, 2.30042e-05, 1.96594e-05, 1.68984e-05, 1.45961e-05, 1.26598e-05, 1.10191e-05, 
			0.000363815, 0.000196948, 0.000133136, 9.8152e-05, 7.5826e-05, 6.03677e-05, 4.90742e-05, 4.05308e-05, 3.38862e-05, 2.86096e-05, 2.43478e-05, 2.08582e-05, 1.79677e-05, 1.55495e-05, 1.35098e-05, 1.17775e-05
		)
}

CapTable	"metal1_C_BOTTOM_GP_15MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			6.60512e-05, 8.84027e-05, 0.000105915, 0.000119422, 0.000129809, 0.000137834, 0.000144088, 0.000149008, 0.000152921, 0.000156066, 0.000158624, 0.000160723, 0.000162463, 0.000163918, 0.000165144, 0.000166184, 
			9.55049e-05, 0.000117737, 0.000135251, 0.000148875, 0.000159471, 0.000167756, 0.000174286, 0.000179486, 0.000183666, 0.000187064, 0.00018985, 0.000192158, 0.000194089, 0.000195714, 0.000197093, 0.000198275, 
			0.000125054, 0.000147021, 0.000164417, 0.000178069, 0.000188772, 0.000197217, 0.000203935, 0.000209328, 0.0002137, 0.00021728, 0.00022024, 0.000222709, 0.000224784, 0.000226544, 0.000228043, 0.000229331, 
			0.0001545, 0.000176218, 0.000193514, 0.000207162, 0.000217946, 0.0002265, 0.000233358, 0.0002389, 0.000243424, 0.00024715, 0.000250249, 0.000252846, 0.000255045, 0.000256908, 0.000258513, 0.000259889, 
			0.000183856, 0.000205454, 0.000222676, 0.000236324, 0.000247171, 0.000255826, 0.000262798, 0.00026846, 0.000273105, 0.000276949, 0.000280161, 0.000282866, 0.000285162, 0.000287126, 0.00028881, 0.00029027
		)
}

CapTable	"metal1_C_TOP_GP_15MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			4.64883e-06, 6.25888e-06, 7.67906e-06, 8.88528e-06, 9.87958e-06, 1.06869e-05, 1.13378e-05, 1.18647e-05, 1.22921e-05, 1.26422e-05, 1.29305e-05, 1.31699e-05, 1.33703e-05, 1.35391e-05, 1.36821e-05, 1.38044e-05, 
			6.25122e-06, 7.83954e-06, 9.26489e-06, 1.04929e-05, 1.15206e-05, 1.23671e-05, 1.30607e-05, 1.36292e-05, 1.40969e-05, 1.44837e-05, 1.48054e-05, 1.50752e-05, 1.5303e-05, 1.54962e-05, 1.56614e-05, 1.57996e-05, 
			7.83272e-06, 9.39982e-06, 1.08272e-05, 1.20684e-05, 1.31185e-05, 1.39916e-05, 1.47144e-05, 1.53125e-05, 1.58091e-05, 1.62233e-05, 1.6571e-05, 1.6864e-05, 1.71133e-05, 1.73256e-05, 1.75085e-05, 1.76656e-05, 
			9.39371e-06, 1.09453e-05, 1.23734e-05, 1.36275e-05, 1.46954e-05, 1.55897e-05, 1.63358e-05, 1.69567e-05, 1.74759e-05, 1.7912e-05, 1.82798e-05, 1.85921e-05, 1.88542e-05, 1.9087e-05, 1.92815e-05, 1.94555e-05, 
			1.09399e-05, 1.24887e-05, 1.39179e-05, 1.51813e-05, 1.62637e-05, 1.71758e-05, 1.79403e-05, 1.85807e-05, 1.91185e-05, 1.9573e-05, 1.99573e-05, 2.02859e-05, 2.05666e-05, 2.08048e-05, 2.10181e-05, 2.1197e-05
		)
}

CapTable	"metal1_C_LATERAL_15MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			0.000337946, 0.000174534, 0.000113814, 8.1361e-05, 6.1203e-05, 4.76165e-05, 3.7968e-05, 3.0858e-05, 2.54684e-05, 2.1289e-05, 1.79861e-05, 1.53336e-05, 1.31737e-05, 1.13936e-05, 9.91088e-06, 8.66449e-06, 
			0.000349644, 0.000183756, 0.000121425, 8.78836e-05, 6.68688e-05, 5.25722e-05, 4.23214e-05, 3.46937e-05, 2.88565e-05, 2.42886e-05, 2.06475e-05, 1.76998e-05, 1.52817e-05, 1.32752e-05, 1.15935e-05, 1.01718e-05, 
			0.000356446, 0.000189865, 0.000126837, 9.26764e-05, 7.11449e-05, 5.63844e-05, 4.5722e-05, 3.77292e-05, 3.1568e-05, 2.6713e-05, 2.28175e-05, 1.96445e-05, 1.70265e-05, 1.48425e-05, 1.30032e-05, 1.14412e-05, 
			0.000361018, 0.000194449, 0.000131049, 9.65e-05, 7.45844e-05, 5.95048e-05, 4.85316e-05, 4.02578e-05, 3.38439e-05, 2.87613e-05, 2.46623e-05, 2.13067e-05, 1.85255e-05, 1.61952e-05, 1.42251e-05, 1.25457e-05, 
			0.000364832, 0.000198149, 0.000134515, 9.96856e-05, 7.74872e-05, 6.21281e-05, 5.09065e-05, 4.24105e-05, 3.5793e-05, 3.05259e-05, 2.62588e-05, 2.27517e-05, 1.98335e-05, 1.738e-05, 1.52985e-05, 1.35189e-05
		)
}

CapTable	"metal1_C_BOTTOM_GP_16MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			7.0154e-05, 9.38442e-05, 0.000112495, 0.000126941, 0.000138083, 0.00014671, 0.000153446, 0.000158756, 0.000162987, 0.0001664, 0.00016918, 0.000171472, 0.00017338, 0.000174982, 0.000176341, 0.000177502, 
			0.000100814, 0.000124294, 0.000142888, 0.000157415, 0.000168746, 0.000177629, 0.000184646, 0.000190245, 0.00019476, 0.000198436, 0.000201466, 0.000203984, 0.000206098, 0.00020789, 0.000209419, 0.000210735, 
			0.000131468, 0.000154596, 0.000173013, 0.000187526, 0.000198941, 0.000207971, 0.00021517, 0.000220965, 0.000225676, 0.000229547, 0.000232758, 0.000235448, 0.000237723, 0.00023966, 0.000241326, 0.000242766, 
			0.000161916, 0.000184716, 0.000202978, 0.000217448, 0.000228918, 0.000238041, 0.000245372, 0.000251315, 0.000256179, 0.0002602, 0.000263558, 0.000266386, 0.000268792, 0.000270851, 0.000272628, 0.00027417, 
			0.000192191, 0.000214813, 0.000232945, 0.00024738, 0.000258888, 0.000268096, 0.000275534, 0.00028159, 0.000286577, 0.000290723, 0.0002942, 0.000297144, 0.000299659, 0.000301822, 0.000303696, 0.000305332
		)
}

CapTable	"metal1_C_LATERAL_16MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			0.000338374, 0.000175146, 0.000114612, 8.23298e-05, 6.23204e-05, 4.88575e-05, 3.93078e-05, 3.22748e-05, 2.6943e-05, 2.28052e-05, 1.95303e-05, 1.68942e-05, 1.47412e-05, 1.29597e-05, 1.14689e-05, 1.02084e-05, 
			0.000350367, 0.000184703, 0.000122597, 8.92598e-05, 6.84228e-05, 5.42741e-05, 4.4142e-05, 3.66072e-05, 3.08398e-05, 2.63224e-05, 2.27154e-05, 1.97879e-05, 1.73781e-05, 1.53699e-05, 1.36781e-05, 1.22389e-05, 
			0.000357515, 0.000191201, 0.00012843, 9.45042e-05, 7.31758e-05, 5.85836e-05, 4.80564e-05, 4.01694e-05, 3.40878e-05, 2.929e-05, 2.54328e-05, 2.2282e-05, 1.96725e-05, 1.74854e-05, 1.5633e-05, 1.40496e-05, 
			0.000362491, 0.000196221, 0.000133109, 9.88229e-05, 7.71327e-05, 6.22398e-05, 5.14164e-05, 4.32592e-05, 3.69326e-05, 3.19124e-05, 2.78544e-05, 2.45218e-05, 2.17482e-05, 1.94125e-05, 1.74257e-05, 1.57202e-05, 
			0.000366744, 0.000200393, 0.000137075, 0.000102532, 8.05778e-05, 6.54203e-05, 5.43598e-05, 4.59886e-05, 3.94638e-05, 3.42614e-05, 3.00362e-05, 2.65509e-05, 2.36376e-05, 2.11746e-05, 1.90712e-05, 1.72593e-05
		)
}

CapTable	"metal2_C_BOTTOM_GP_31MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.39317e-05, 1.89578e-05, 2.35684e-05, 2.7671e-05, 3.12124e-05, 3.42044e-05, 3.67115e-05, 3.87674e-05, 4.04508e-05, 4.18146e-05, 4.29178e-05, 4.38026e-05, 4.44927e-05, 4.50617e-05, 4.55267e-05, 4.59193e-05, 
			1.89259e-05, 2.40391e-05, 2.87755e-05, 3.30183e-05, 3.67249e-05, 3.98755e-05, 4.25008e-05, 4.46734e-05, 4.64538e-05, 4.79024e-05, 4.90745e-05, 4.99891e-05, 5.0758e-05, 5.14125e-05, 5.1906e-05, 5.23019e-05, 
			2.41049e-05, 2.92685e-05, 3.40866e-05, 3.84338e-05, 4.22188e-05, 4.54479e-05, 4.8153e-05, 5.03941e-05, 5.22297e-05, 5.36878e-05, 5.491e-05, 5.59062e-05, 5.6742e-05, 5.73857e-05, 5.79054e-05, 5.83206e-05, 
			2.93643e-05, 3.45831e-05, 3.94712e-05, 4.38675e-05, 4.77123e-05, 5.09891e-05, 5.37421e-05, 5.60246e-05, 5.78529e-05, 5.93964e-05, 6.0698e-05, 6.17114e-05, 6.25309e-05, 6.31925e-05, 6.37274e-05, 6.41558e-05, 
			3.47271e-05, 3.99874e-05, 4.49142e-05, 4.93545e-05, 5.32398e-05, 5.65499e-05, 5.92771e-05, 6.15961e-05, 6.35145e-05, 6.51234e-05, 6.63937e-05, 6.74241e-05, 6.82578e-05, 6.89339e-05, 6.94779e-05, 6.99166e-05
		)
}

CapTable	"metal2_C_TOP_GP_31MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			4.06711e-05, 5.54043e-05, 6.79722e-05, 7.84498e-05, 8.70593e-05, 9.40647e-05, 9.97227e-05, 0.000104273, 0.000107919, 0.000110828, 0.000113147, 0.000114997, 0.000116492, 0.00011766, 0.000118577, 0.000119281, 
			5.82547e-05, 7.33667e-05, 8.62614e-05, 9.70269e-05, 0.000105889, 0.000113122, 0.000118987, 0.000123714, 0.000127509, 0.000130547, 0.000132976, 0.00013495, 0.000136481, 0.000137658, 0.000138629, 0.0001394, 
			7.65075e-05, 9.17505e-05, 0.000104764, 0.000115648, 0.000124633, 0.00013198, 0.000137945, 0.000142761, 0.000146637, 0.000149789, 0.00015227, 0.000154237, 0.000155765, 0.000157011, 0.000158, 0.000158781, 
			9.50649e-05, 0.000110337, 0.000123397, 0.000134341, 0.000143387, 0.000150786, 0.000156804, 0.000161671, 0.00016564, 0.000168767, 0.00017122, 0.000173215, 0.000174804, 0.000176064, 0.000177059, 0.000177848, 
			0.000113779, 0.000129118, 0.000142213, 0.000153191, 0.000162271, 0.000169711, 0.000175823, 0.000180706, 0.000184619, 0.000187713, 0.000190224, 0.000192226, 0.000193815, 0.00019507, 0.000196066, 0.000196846
		)
}

CapTable	"metal2_C_LATERAL_31MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000359108, 0.000189357, 0.000124548, 8.87816e-05, 6.58311e-05, 4.99215e-05, 3.83768e-05, 2.97828e-05, 2.32618e-05, 1.82599e-05, 1.43889e-05, 1.13747e-05, 9.01457e-06, 7.165e-06, 5.71208e-06, 4.56954e-06, 
			0.00036967, 0.000196861, 0.000130085, 9.30686e-05, 6.92087e-05, 5.26117e-05, 4.05521e-05, 3.15414e-05, 2.46928e-05, 1.94264e-05, 1.5343e-05, 1.21538e-05, 9.66151e-06, 7.70776e-06, 6.16644e-06, 4.95188e-06, 
			0.000374108, 0.000200535, 0.000133004, 9.53868e-05, 7.10954e-05, 5.41503e-05, 4.18071e-05, 3.25727e-05, 2.55431e-05, 2.01258e-05, 1.5923e-05, 1.26447e-05, 1.00799e-05, 8.06294e-06, 6.475e-06, 5.2253e-06, 
			0.00037588, 0.000202475, 0.000134651, 9.67585e-05, 7.22187e-05, 5.50973e-05, 4.25961e-05, 3.32324e-05, 2.60925e-05, 2.05954e-05, 1.633e-05, 1.29982e-05, 1.03853e-05, 8.33356e-06, 6.7205e-06, 5.45079e-06, 
			0.000376485, 0.000203419, 0.000135551, 9.75307e-05, 7.28708e-05, 5.56335e-05, 4.30377e-05, 3.36053e-05, 2.64187e-05, 2.08842e-05, 1.65843e-05, 1.32257e-05, 1.05958e-05, 8.53224e-06, 6.91029e-06, 5.63721e-06
		)
}

CapTable	"metal2_C_BOTTOM_GP_32MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.60602e-05, 2.09377e-05, 2.53716e-05, 2.94419e-05, 3.31712e-05, 3.65733e-05, 3.9655e-05, 4.24329e-05, 4.4917e-05, 4.71386e-05, 4.90997e-05, 5.08399e-05, 5.23608e-05, 5.37026e-05, 5.48757e-05, 5.58939e-05, 
			2.05295e-05, 2.53789e-05, 2.99167e-05, 3.4145e-05, 3.80507e-05, 4.16293e-05, 4.48841e-05, 4.78201e-05, 5.04629e-05, 5.28121e-05, 5.49059e-05, 5.67484e-05, 5.83779e-05, 5.98095e-05, 6.10571e-05, 6.2151e-05, 
			2.51475e-05, 3.00189e-05, 3.46387e-05, 3.89687e-05, 4.29863e-05, 4.66719e-05, 5.00375e-05, 5.30718e-05, 5.58064e-05, 5.82373e-05, 6.04073e-05, 6.23273e-05, 6.40135e-05, 6.55005e-05, 6.68031e-05, 6.79414e-05, 
			2.98987e-05, 3.48009e-05, 3.94799e-05, 4.3881e-05, 4.79668e-05, 5.17311e-05, 5.51554e-05, 5.82614e-05, 6.10428e-05, 6.35375e-05, 6.57558e-05, 6.77138e-05, 6.94464e-05, 7.09691e-05, 7.23057e-05, 7.33775e-05, 
			3.4741e-05, 3.96955e-05, 4.44188e-05, 4.88772e-05, 5.30141e-05, 5.68299e-05, 6.0299e-05, 6.34476e-05, 6.62781e-05, 6.88037e-05, 7.10545e-05, 7.30495e-05, 7.48094e-05, 7.63556e-05, 7.76287e-05, 7.8913e-05
		)
}

CapTable	"metal2_C_TOP_GP_32MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.64422e-05, 2.1727e-05, 2.6441e-05, 3.07178e-05, 3.46076e-05, 3.81368e-05, 4.13252e-05, 4.41868e-05, 4.67464e-05, 4.90116e-05, 5.10188e-05, 5.27768e-05, 5.43245e-05, 5.56683e-05, 5.68364e-05, 5.7854e-05, 
			2.12171e-05, 2.64834e-05, 3.13459e-05, 3.58191e-05, 3.99228e-05, 4.36621e-05, 4.70446e-05, 5.00898e-05, 5.28025e-05, 5.52181e-05, 5.73472e-05, 5.92273e-05, 6.08665e-05, 6.22964e-05, 6.35452e-05, 6.46241e-05, 
			2.61737e-05, 3.14895e-05, 3.64662e-05, 4.1083e-05, 4.53249e-05, 4.92009e-05, 5.27031e-05, 5.58592e-05, 5.86702e-05, 6.11765e-05, 6.3384e-05, 6.53233e-05, 6.70264e-05, 6.85087e-05, 6.97973e-05, 7.09162e-05, 
			3.13037e-05, 3.66792e-05, 4.17484e-05, 4.6461e-05, 5.08038e-05, 5.47565e-05, 5.83449e-05, 6.15635e-05, 6.44482e-05, 6.69991e-05, 6.92524e-05, 7.12401e-05, 7.29757e-05, 7.44909e-05, 7.58085e-05, 7.70554e-05, 
			3.66212e-05, 4.20822e-05, 4.72342e-05, 5.20208e-05, 5.64362e-05, 6.04545e-05, 6.41036e-05, 6.73749e-05, 7.0293e-05, 7.28886e-05, 7.51766e-05, 7.71868e-05, 7.89475e-05, 8.0487e-05, 8.1916e-05, 8.29713e-05
		)
}

CapTable	"metal2_C_LATERAL_32MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000374553, 0.000208999, 0.000146762, 0.00011227, 8.96064e-05, 7.32628e-05, 6.07978e-05, 5.09477e-05, 4.29789e-05, 3.64291e-05, 3.0989e-05, 2.64324e-05, 2.25973e-05, 1.9354e-05, 1.66043e-05, 1.42682e-05, 
			0.000391448, 0.000221754, 0.00015667, 0.000120245, 9.6164e-05, 7.8741e-05, 6.54298e-05, 5.49002e-05, 4.63778e-05, 3.9373e-05, 3.35499e-05, 2.86737e-05, 2.45664e-05, 2.10931e-05, 1.81474e-05, 1.56426e-05, 
			0.000400758, 0.000229319, 0.00016277, 0.00012524, 0.000100336, 8.22688e-05, 6.84457e-05, 5.75053e-05, 4.86458e-05, 4.13608e-05, 3.53032e-05, 3.02288e-05, 2.59547e-05, 2.23385e-05, 1.927e-05, 1.666e-05, 
			0.000406118, 0.000234121, 0.000166774, 0.000128593, 0.000103171, 8.47146e-05, 7.05704e-05, 5.93667e-05, 5.02916e-05, 4.28268e-05, 3.66192e-05, 3.14177e-05, 2.70339e-05, 2.3324e-05, 2.01743e-05, 1.74859e-05, 
			0.000409354, 0.000237188, 0.000169434, 0.000130865, 0.000105125, 8.64002e-05, 7.20426e-05, 6.06668e-05, 5.14489e-05, 4.38651e-05, 3.75567e-05, 3.22692e-05, 2.78118e-05, 2.40388e-05, 2.08271e-05, 1.81082e-05
		)
}

CapTable	"metal2_C_BOTTOM_GP_33MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.70569e-05, 2.2164e-05, 2.6675e-05, 3.07493e-05, 3.44609e-05, 3.78596e-05, 4.09886e-05, 4.38696e-05, 4.64313e-05, 4.88095e-05, 5.0975e-05, 5.29469e-05, 5.47254e-05, 5.63434e-05, 5.77917e-05, 5.91111e-05, 
			2.13882e-05, 2.63318e-05, 3.08715e-05, 3.50564e-05, 3.89217e-05, 4.249e-05, 4.57771e-05, 4.88013e-05, 5.1575e-05, 5.41177e-05, 5.64316e-05, 5.85416e-05, 6.04528e-05, 6.21873e-05, 6.37538e-05, 6.51673e-05, 
			2.5796e-05, 3.06729e-05, 3.52416e-05, 3.95196e-05, 4.35222e-05, 4.71577e-05, 5.05631e-05, 5.37051e-05, 5.65977e-05, 5.92404e-05, 6.16652e-05, 6.38611e-05, 6.58736e-05, 6.76795e-05, 6.93279e-05, 7.08078e-05, 
			3.02898e-05, 3.51448e-05, 3.97446e-05, 4.40675e-05, 4.81113e-05, 5.18734e-05, 5.53683e-05, 5.85924e-05, 6.15639e-05, 6.42853e-05, 6.67776e-05, 6.905e-05, 7.11182e-05, 7.29921e-05, 7.46945e-05, 7.62378e-05, 
			3.48915e-05, 3.98058e-05, 4.44004e-05, 4.87789e-05, 5.2886e-05, 5.67227e-05, 6.02769e-05, 6.35751e-05, 6.65987e-05, 6.93945e-05, 7.19326e-05, 7.4263e-05, 7.63774e-05, 7.83059e-05, 8.00587e-05, 8.16299e-05
		)
}

CapTable	"metal2_C_TOP_GP_33MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.17341e-05, 1.50954e-05, 1.80706e-05, 2.0771e-05, 2.3246e-05, 2.55237e-05, 2.7606e-05, 2.95064e-05, 3.13246e-05, 3.29465e-05, 3.44254e-05, 3.57657e-05, 3.69914e-05, 3.80897e-05, 3.90949e-05, 3.99841e-05, 
			1.46996e-05, 1.79568e-05, 2.09626e-05, 2.37534e-05, 2.6348e-05, 2.87585e-05, 3.09933e-05, 3.30572e-05, 3.49559e-05, 3.66936e-05, 3.82872e-05, 3.97355e-05, 4.10551e-05, 4.22481e-05, 4.33268e-05, 4.43008e-05, 
			1.76824e-05, 2.09138e-05, 2.39599e-05, 2.68101e-05, 2.94609e-05, 3.20153e-05, 3.43458e-05, 3.65016e-05, 3.84836e-05, 4.03141e-05, 4.19768e-05, 4.35088e-05, 4.4882e-05, 4.615e-05, 4.72825e-05, 4.83127e-05, 
			2.07192e-05, 2.39576e-05, 2.70494e-05, 2.99788e-05, 3.27359e-05, 3.53144e-05, 3.77121e-05, 3.99402e-05, 4.19916e-05, 4.38809e-05, 4.56079e-05, 4.71842e-05, 4.86196e-05, 4.99237e-05, 5.10997e-05, 5.21564e-05, 
			2.38063e-05, 2.70518e-05, 3.02372e-05, 3.32224e-05, 3.60375e-05, 3.86708e-05, 4.11355e-05, 4.34087e-05, 4.55234e-05, 4.74464e-05, 4.92321e-05, 5.08463e-05, 5.23237e-05, 5.3655e-05, 5.48542e-05, 5.59525e-05
		)
}

CapTable	"metal2_C_LATERAL_33MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000377504, 0.000213044, 0.000151781, 0.000118118, 9.61209e-05, 8.02777e-05, 6.81523e-05, 5.84923e-05, 5.05806e-05, 4.39762e-05, 3.83852e-05, 3.36031e-05, 2.94804e-05, 2.59074e-05, 2.27948e-05, 2.00767e-05, 
			0.000395766, 0.000227199, 0.000163092, 0.000127469, 0.000104007, 8.70229e-05, 7.39802e-05, 6.35664e-05, 5.50259e-05, 4.78873e-05, 4.18384e-05, 3.66601e-05, 3.21941e-05, 2.83192e-05, 2.49435e-05, 2.19906e-05, 
			0.00040647, 0.000236128, 0.000170499, 0.000133701, 0.000109333, 9.16171e-05, 7.79769e-05, 6.70664e-05, 5.81067e-05, 5.06094e-05, 4.42526e-05, 3.88055e-05, 3.41065e-05, 3.00247e-05, 2.64669e-05, 2.33533e-05, 
			0.000413171, 0.000242192, 0.000175676, 0.000138128, 0.000113145, 9.49452e-05, 8.08906e-05, 6.96312e-05, 6.03747e-05, 5.26238e-05, 4.60454e-05, 4.04076e-05, 3.55376e-05, 3.13082e-05, 2.76178e-05, 2.43877e-05, 
			0.000417662, 0.000246411, 0.000179379, 0.000141341, 0.000115938, 9.73753e-05, 8.30194e-05, 7.15078e-05, 6.20337e-05, 5.40963e-05, 4.73533e-05, 4.15719e-05, 3.65758e-05, 3.22353e-05, 2.84474e-05, 2.51283e-05
		)
}

CapTable	"metal2_C_BOTTOM_GP_34MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.82809e-05, 2.35801e-05, 2.82153e-05, 3.2369e-05, 3.6135e-05, 3.95724e-05, 4.27224e-05, 4.56134e-05, 4.82678e-05, 5.07041e-05, 5.29402e-05, 5.49884e-05, 5.68644e-05, 5.85812e-05, 6.01481e-05, 6.15779e-05, 
			2.2682e-05, 2.77432e-05, 3.2352e-05, 3.65749e-05, 4.04611e-05, 4.40436e-05, 4.73508e-05, 5.04013e-05, 5.32136e-05, 5.58041e-05, 5.81876e-05, 6.03795e-05, 6.23889e-05, 6.42327e-05, 6.59184e-05, 6.74628e-05, 
			2.70932e-05, 3.20285e-05, 3.66219e-05, 4.08883e-05, 4.48493e-05, 4.85272e-05, 5.19351e-05, 5.50913e-05, 5.80105e-05, 6.07067e-05, 6.31931e-05, 6.54811e-05, 6.75836e-05, 6.95156e-05, 7.12858e-05, 7.29107e-05, 
			3.15344e-05, 3.63999e-05, 4.09871e-05, 4.52852e-05, 4.92993e-05, 5.3038e-05, 5.65187e-05, 5.97492e-05, 6.27465e-05, 6.55161e-05, 6.80768e-05, 7.04357e-05, 7.26092e-05, 7.46057e-05, 7.64422e-05, 7.81243e-05, 
			3.60301e-05, 4.08852e-05, 4.54808e-05, 4.98091e-05, 5.38686e-05, 5.76645e-05, 6.12039e-05, 6.44983e-05, 6.75546e-05, 7.03861e-05, 7.30057e-05, 7.54232e-05, 7.76541e-05, 7.97076e-05, 8.1592e-05, 8.33251e-05
		)
}

CapTable	"metal2_C_TOP_GP_34MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			8.87765e-06, 1.13997e-05, 1.35976e-05, 1.55707e-05, 1.73671e-05, 1.90154e-05, 2.05334e-05, 2.1933e-05, 2.32233e-05, 2.44125e-05, 2.55055e-05, 2.65103e-05, 2.74313e-05, 2.8274e-05, 2.90466e-05, 2.97529e-05, 
			1.09796e-05, 1.33795e-05, 1.55683e-05, 1.75827e-05, 1.94477e-05, 2.11771e-05, 2.27808e-05, 2.42697e-05, 2.56476e-05, 2.69213e-05, 2.80962e-05, 2.91764e-05, 3.01714e-05, 3.10831e-05, 3.19206e-05, 3.26847e-05, 
			1.3049e-05, 1.5394e-05, 1.75841e-05, 1.96326e-05, 2.15466e-05, 2.33342e-05, 2.50016e-05, 2.65525e-05, 2.79929e-05, 2.93268e-05, 3.05579e-05, 3.16963e-05, 3.27443e-05, 3.37057e-05, 3.45895e-05, 3.53963e-05, 
			1.51206e-05, 1.74399e-05, 1.96413e-05, 2.17176e-05, 2.36723e-05, 2.55051e-05, 2.72198e-05, 2.88187e-05, 3.03045e-05, 3.16851e-05, 3.29615e-05, 3.41424e-05, 3.52286e-05, 3.62298e-05, 3.71456e-05, 3.79891e-05, 
			1.72119e-05, 1.95399e-05, 2.17603e-05, 2.38682e-05, 2.58594e-05, 2.77319e-05, 2.94872e-05, 3.11248e-05, 3.26532e-05, 3.40726e-05, 3.5386e-05, 3.66015e-05, 3.77191e-05, 3.87478e-05, 3.96962e-05, 4.05632e-05
		)
}

CapTable	"metal2_C_LATERAL_34MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000378818, 0.000214796, 0.000153958, 0.000120693, 9.90615e-05, 8.3543e-05, 7.16968e-05, 6.22689e-05, 5.45437e-05, 4.80788e-05, 4.25835e-05, 3.78577e-05, 3.37562e-05, 3.01717e-05, 2.70211e-05, 2.42397e-05, 
			0.00039767, 0.000229589, 0.000165943, 0.000130754, 0.000107685, 9.10459e-05, 7.82964e-05, 6.8122e-05, 5.97688e-05, 5.27671e-05, 4.68079e-05, 4.16766e-05, 3.72187e-05, 3.3318e-05, 2.98866e-05, 2.68538e-05, 
			0.000409027, 0.000239203, 0.000174063, 0.000137718, 0.000113755, 9.63906e-05, 8.30441e-05, 7.23688e-05, 6.3588e-05, 5.62176e-05, 4.99366e-05, 4.45222e-05, 3.98135e-05, 3.56896e-05, 3.20583e-05, 2.88456e-05, 
			0.000416427, 0.000245986, 0.000179976, 0.000142888, 0.000118312, 0.000100458, 8.66891e-05, 7.56549e-05, 6.65644e-05, 5.8924e-05, 5.24059e-05, 4.67816e-05, 4.18852e-05, 3.75939e-05, 3.38111e-05, 3.04623e-05, 
			0.000421638, 0.000250935, 0.000184412, 0.000146828, 0.000121823, 0.000103594, 8.95084e-05, 7.82037e-05, 6.88772e-05, 6.10296e-05, 5.43276e-05, 4.854e-05, 4.34974e-05, 3.9074e-05, 3.5173e-05, 3.17162e-05
		)
}

CapTable	"metal2_C_BOTTOM_GP_35MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.45882e-05, 3.12876e-05, 3.70219e-05, 4.20725e-05, 4.65853e-05, 5.06577e-05, 5.43578e-05, 5.77346e-05, 6.08261e-05, 6.36635e-05, 6.62717e-05, 6.86732e-05, 7.08865e-05, 7.29281e-05, 7.48131e-05, 7.65544e-05, 
			3.00412e-05, 3.62988e-05, 4.18911e-05, 4.69353e-05, 5.1515e-05, 5.56926e-05, 5.95168e-05, 6.30267e-05, 6.62547e-05, 6.9228e-05, 7.19704e-05, 7.4502e-05, 7.68417e-05, 7.90051e-05, 8.10075e-05, 8.28618e-05, 
			3.53668e-05, 4.13574e-05, 4.68348e-05, 5.18498e-05, 5.64463e-05, 6.06707e-05, 6.45576e-05, 6.81408e-05, 7.14468e-05, 7.45021e-05, 7.73277e-05, 7.99427e-05, 8.23642e-05, 8.46087e-05, 8.66902e-05, 8.86221e-05, 
			4.06196e-05, 4.64237e-05, 5.18053e-05, 5.67795e-05, 6.1371e-05, 6.5609e-05, 6.95271e-05, 7.31511e-05, 7.65047e-05, 7.96116e-05, 8.249e-05, 8.51609e-05, 8.764e-05, 8.99405e-05, 9.208e-05, 9.40687e-05, 
			4.5808e-05, 5.14998e-05, 5.68053e-05, 6.1738e-05, 6.63155e-05, 7.05592e-05, 7.44954e-05, 7.81466e-05, 8.15343e-05, 8.46796e-05, 8.76005e-05, 9.03157e-05, 9.2841e-05, 9.51899e-05, 9.73776e-05, 9.94134e-05
		)
}

CapTable	"metal2_C_LATERAL_35MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000380923, 0.0002177, 0.000157611, 0.000125064, 0.000104116, 8.92452e-05, 7.80027e-05, 6.91298e-05, 6.19074e-05, 5.58914e-05, 5.07914e-05, 4.64072e-05, 4.25964e-05, 3.9254e-05, 3.63003e-05, 3.36736e-05, 
			0.000400579, 0.000233337, 0.000170507, 0.000136108, 0.000113797, 9.78762e-05, 8.57976e-05, 7.62409e-05, 6.84468e-05, 6.19452e-05, 5.64262e-05, 5.16768e-05, 4.75437e-05, 4.39149e-05, 4.07042e-05, 3.78454e-05, 
			0.000412801, 0.000243863, 0.000179602, 0.000144109, 0.000120967, 0.00010438, 9.17566e-05, 8.1746e-05, 7.35666e-05, 6.67327e-05, 6.09235e-05, 5.59177e-05, 5.15567e-05, 4.77224e-05, 4.43257e-05, 4.12972e-05, 
			0.000421131, 0.000251632, 0.000186557, 0.000150381, 0.000126678, 0.000109649, 9.66445e-05, 8.63103e-05, 7.78523e-05, 7.0775e-05, 6.47508e-05, 5.95529e-05, 5.50186e-05, 5.10269e-05, 4.74863e-05, 4.43254e-05, 
			0.000427372, 0.000257674, 0.000192146, 0.000155526, 0.00013144, 0.000114073, 0.000100785, 9.02062e-05, 8.15335e-05, 7.42652e-05, 6.80697e-05, 6.27169e-05, 5.80412e-05, 5.39199e-05, 5.02594e-05, 4.69874e-05
		)
}

CapTable	"metal2_C_BOTTOM_GP_21MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.8229e-05, 2.49959e-05, 3.12029e-05, 3.66999e-05, 4.13879e-05, 4.52848e-05, 4.84452e-05, 5.09723e-05, 5.29679e-05, 5.45272e-05, 5.5743e-05, 5.66794e-05, 5.74116e-05, 5.79681e-05, 5.83971e-05, 5.87222e-05, 
			2.52781e-05, 3.2282e-05, 3.87404e-05, 4.44591e-05, 4.9348e-05, 5.34043e-05, 5.67052e-05, 5.9344e-05, 6.14361e-05, 6.30612e-05, 6.43366e-05, 6.53331e-05, 6.60946e-05, 6.66795e-05, 6.71279e-05, 6.74715e-05, 
			3.27104e-05, 3.98518e-05, 4.64499e-05, 5.22866e-05, 5.72719e-05, 6.1413e-05, 6.47783e-05, 6.74671e-05, 6.95988e-05, 7.12859e-05, 7.25893e-05, 7.35993e-05, 7.43792e-05, 7.49767e-05, 7.54363e-05, 7.57852e-05, 
			4.03672e-05, 4.7594e-05, 5.4263e-05, 6.01658e-05, 6.52016e-05, 6.93865e-05, 7.27726e-05, 7.55005e-05, 7.76709e-05, 7.93631e-05, 8.06812e-05, 8.17008e-05, 8.24879e-05, 8.3092e-05, 8.35554e-05, 8.3907e-05, 
			4.81415e-05, 5.54347e-05, 6.21481e-05, 6.80784e-05, 7.3127e-05, 7.7331e-05, 8.07652e-05, 8.35041e-05, 8.56701e-05, 8.73694e-05, 8.86906e-05, 8.97144e-05, 9.05048e-05, 9.11081e-05, 9.1568e-05, 9.19208e-05
		)
}

CapTable	"metal2_C_TOP_GP_21MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			3.92788e-05, 5.36676e-05, 6.59971e-05, 7.62706e-05, 8.46588e-05, 9.14005e-05, 9.67555e-05, 0.000100966, 0.000104255, 0.000106806, 0.000108778, 0.000110302, 0.000111461, 0.00011236, 0.00011305, 0.000113582, 
			5.66919e-05, 7.15117e-05, 8.41737e-05, 9.47275e-05, 0.000103349, 0.000110294, 0.000115817, 0.000120169, 0.000123564, 0.00012622, 0.000128264, 0.000129831, 0.000131048, 0.000131983, 0.000132705, 0.000133255, 
			7.48012e-05, 8.97579e-05, 0.000102529, 0.000113186, 0.000121903, 0.00012893, 0.000134527, 0.000138949, 0.000142401, 0.000145069, 0.000147151, 0.00014876, 0.000149997, 0.000150955, 0.000151686, 0.000152256, 
			9.319e-05, 0.000108165, 0.000120971, 0.000131662, 0.000140421, 0.00014747, 0.000153118, 0.000157553, 0.000161013, 0.000163722, 0.00016582, 0.000167447, 0.000168697, 0.000169662, 0.000170404, 0.000170983, 
			0.000111685, 0.000126694, 0.000139504, 0.000150203, 0.000158987, 0.000166057, 0.000171672, 0.000176123, 0.00017961, 0.000182326, 0.000184437, 0.000186067, 0.00018732, 0.0001883, 0.000189059, 0.00018965
		)
}

CapTable	"metal2_C_LATERAL_21MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000356919, 0.000186368, 0.000120891, 8.46451e-05, 6.14272e-05, 4.54434e-05, 3.40105e-05, 2.56448e-05, 1.94404e-05, 1.48009e-05, 1.13104e-05, 8.67426e-06, 6.67934e-06, 5.16359e-06, 4.01106e-06, 3.13281e-06, 
			0.000366299, 0.00019271, 0.00012533, 8.79186e-05, 6.3901e-05, 4.73477e-05, 3.54875e-05, 2.67984e-05, 2.03473e-05, 1.55149e-05, 1.18773e-05, 9.1292e-06, 7.04463e-06, 5.46148e-06, 4.25634e-06, 3.33889e-06, 
			0.000369586, 0.000195341, 0.00012732, 8.94384e-05, 6.50916e-05, 4.82866e-05, 3.62337e-05, 2.73955e-05, 2.08286e-05, 1.59103e-05, 1.22017e-05, 9.397e-06, 7.27026e-06, 5.65342e-06, 4.42383e-06, 3.48421e-06, 
			0.000370328, 0.000196396, 0.000128226, 9.01771e-05, 6.56844e-05, 4.87875e-05, 3.66458e-05, 2.77397e-05, 2.11201e-05, 1.61547e-05, 1.24119e-05, 9.57916e-06, 7.4314e-06, 5.79824e-06, 4.55367e-06, 3.59999e-06, 
			0.000370126, 0.000196676, 0.000128589, 9.05234e-05, 6.59966e-05, 4.90526e-05, 3.68852e-05, 2.79555e-05, 2.13137e-05, 1.63328e-05, 1.25756e-05, 9.73325e-06, 7.57632e-06, 5.93149e-06, 4.67362e-06, 3.70482e-06
		)
}

CapTable	"metal2_C_BOTTOM_GP_22MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.03955e-05, 2.70817e-05, 3.31754e-05, 3.87313e-05, 4.37497e-05, 4.8236e-05, 5.22075e-05, 5.56941e-05, 5.87282e-05, 6.13515e-05, 6.36097e-05, 6.55396e-05, 6.71853e-05, 6.85836e-05, 6.97661e-05, 7.07655e-05, 
			2.69384e-05, 3.37607e-05, 4.01113e-05, 4.59441e-05, 5.12327e-05, 5.59707e-05, 6.01685e-05, 6.38596e-05, 6.70727e-05, 6.98529e-05, 7.22445e-05, 7.42925e-05, 7.60385e-05, 7.75225e-05, 7.87751e-05, 7.98336e-05, 
			3.38906e-05, 4.08551e-05, 4.7374e-05, 5.33817e-05, 5.88342e-05, 6.3722e-05, 6.80557e-05, 7.18634e-05, 7.51796e-05, 7.80514e-05, 8.05224e-05, 8.26378e-05, 8.44407e-05, 8.59694e-05, 8.7264e-05, 8.83627e-05, 
			4.11599e-05, 4.82306e-05, 5.48675e-05, 6.09871e-05, 6.65445e-05, 7.1525e-05, 7.59423e-05, 7.98218e-05, 8.32026e-05, 8.61297e-05, 8.86491e-05, 9.08036e-05, 9.26416e-05, 9.42018e-05, 9.55224e-05, 9.66379e-05, 
			4.86328e-05, 5.57998e-05, 6.25135e-05, 6.87035e-05, 7.43259e-05, 7.93617e-05, 8.38278e-05, 8.77507e-05, 9.1168e-05, 9.41268e-05, 9.6668e-05, 9.88435e-05, 0.000100708, 0.000102283, 0.000103619, 0.000104745
		)
}

CapTable	"metal2_C_TOP_GP_22MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.60479e-05, 2.11371e-05, 2.57727e-05, 3.00171e-05, 3.38738e-05, 3.7346e-05, 4.04355e-05, 4.31616e-05, 4.55455e-05, 4.76137e-05, 4.93965e-05, 5.09267e-05, 5.22333e-05, 5.33435e-05, 5.42864e-05, 5.50829e-05, 
			2.10606e-05, 2.62175e-05, 3.10314e-05, 3.54894e-05, 3.95609e-05, 4.32349e-05, 4.65112e-05, 4.94029e-05, 5.19326e-05, 5.41309e-05, 5.60284e-05, 5.76555e-05, 5.9046e-05, 6.02274e-05, 6.12335e-05, 6.20854e-05, 
			2.63108e-05, 3.15602e-05, 3.65103e-05, 4.11062e-05, 4.53127e-05, 4.91096e-05, 5.24966e-05, 5.54868e-05, 5.81043e-05, 6.03786e-05, 6.23409e-05, 6.40254e-05, 6.54646e-05, 6.66924e-05, 6.7737e-05, 6.86133e-05, 
			3.17703e-05, 3.71017e-05, 4.21471e-05, 4.6839e-05, 5.1133e-05, 5.5005e-05, 5.84616e-05, 6.15138e-05, 6.41847e-05, 6.65031e-05, 6.8504e-05, 7.02246e-05, 7.16946e-05, 7.29467e-05, 7.40114e-05, 7.49136e-05, 
			3.73762e-05, 4.27879e-05, 4.78989e-05, 5.26516e-05, 5.69989e-05, 6.09214e-05, 6.44196e-05, 6.75062e-05, 7.02069e-05, 7.2553e-05, 7.45822e-05, 7.63276e-05, 7.78078e-05, 7.9077e-05, 8.01557e-05, 8.10704e-05
		)
}

CapTable	"metal2_C_LATERAL_22MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000371535, 0.000205038, 0.000141998, 0.000106879, 8.37768e-05, 6.71762e-05, 5.4616e-05, 4.48053e-05, 3.69863e-05, 3.06712e-05, 2.55231e-05, 2.1302e-05, 1.78241e-05, 1.49507e-05, 1.25708e-05, 1.0596e-05, 
			0.000386929, 0.000216294, 0.000150452, 0.000113466, 8.9021e-05, 7.14151e-05, 5.80793e-05, 4.76563e-05, 3.93473e-05, 3.26329e-05, 2.71593e-05, 2.26694e-05, 1.89701e-05, 1.59127e-05, 1.33796e-05, 1.12774e-05, 
			0.000394722, 0.000222418, 0.000155204, 0.000117209, 9.20282e-05, 7.38584e-05, 6.00841e-05, 4.9313e-05, 4.07235e-05, 3.37812e-05, 2.81201e-05, 2.3476e-05, 1.96487e-05, 1.64849e-05, 1.38628e-05, 1.16876e-05, 
			0.000398633, 0.00022588, 0.000157977, 0.000119428, 9.38148e-05, 7.53304e-05, 6.12951e-05, 5.03174e-05, 4.15596e-05, 3.44814e-05, 2.87081e-05, 2.39707e-05, 2.00662e-05, 1.68381e-05, 1.4163e-05, 1.19423e-05, 
			0.00040059, 0.000227798, 0.000159604, 0.000120771, 9.4925e-05, 7.62437e-05, 6.20578e-05, 5.09617e-05, 4.21081e-05, 3.49496e-05, 2.91108e-05, 2.43177e-05, 2.03686e-05, 1.71021e-05, 1.43951e-05, 1.21477e-05
		)
}

CapTable	"metal2_C_BOTTOM_GP_23MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.22072e-05, 2.91904e-05, 3.5469e-05, 4.11538e-05, 4.62959e-05, 5.09314e-05, 5.50889e-05, 5.88063e-05, 6.21181e-05, 6.50572e-05, 6.76598e-05, 6.99549e-05, 7.19761e-05, 7.37558e-05, 7.53152e-05, 7.66849e-05, 
			2.87974e-05, 3.57902e-05, 4.22442e-05, 4.81622e-05, 5.35553e-05, 5.84394e-05, 6.28403e-05, 6.67856e-05, 7.03087e-05, 7.34418e-05, 7.62222e-05, 7.86782e-05, 8.08486e-05, 8.2756e-05, 8.44369e-05, 8.59096e-05, 
			3.56891e-05, 4.27403e-05, 4.93167e-05, 5.5385e-05, 6.09361e-05, 6.59806e-05, 7.05365e-05, 7.46305e-05, 7.82893e-05, 8.15499e-05, 8.4447e-05, 8.70108e-05, 8.92777e-05, 9.12726e-05, 9.30318e-05, 9.4577e-05, 
			4.28281e-05, 4.99339e-05, 5.66007e-05, 6.2775e-05, 6.84383e-05, 7.35917e-05, 7.8254e-05, 8.24505e-05, 8.62061e-05, 8.9559e-05, 9.25362e-05, 9.51775e-05, 9.75101e-05, 9.95716e-05, 0.000101385, 0.000102979, 
			5.01403e-05, 5.73192e-05, 6.40548e-05, 7.03055e-05, 7.60507e-05, 8.1286e-05, 8.60252e-05, 9.02955e-05, 9.41205e-05, 9.75387e-05, 0.000100576, 0.000103272, 0.000105657, 0.000107762, 0.000109617, 0.000111246
		)
}

CapTable	"metal2_C_TOP_GP_23MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.09154e-05, 1.42129e-05, 1.71802e-05, 1.98929e-05, 2.23716e-05, 2.46294e-05, 2.66784e-05, 2.85278e-05, 3.01862e-05, 3.1668e-05, 3.29855e-05, 3.41558e-05, 3.51904e-05, 3.6101e-05, 3.69039e-05, 3.76079e-05, 
			1.39669e-05, 1.72239e-05, 2.02555e-05, 2.30742e-05, 2.56788e-05, 2.80694e-05, 3.02471e-05, 3.22188e-05, 3.39941e-05, 3.55849e-05, 3.70023e-05, 3.82635e-05, 3.93779e-05, 4.03656e-05, 4.12335e-05, 4.19992e-05, 
			1.70881e-05, 2.03512e-05, 2.34394e-05, 2.63381e-05, 2.90329e-05, 3.15126e-05, 3.37786e-05, 3.58334e-05, 3.76884e-05, 3.93533e-05, 4.0837e-05, 4.21602e-05, 4.33315e-05, 4.43696e-05, 4.52834e-05, 4.60888e-05, 
			2.02867e-05, 2.3575e-05, 2.67158e-05, 2.96776e-05, 3.2437e-05, 3.49833e-05, 3.73143e-05, 3.9431e-05, 4.13428e-05, 4.30574e-05, 4.45938e-05, 4.59591e-05, 4.71736e-05, 4.8245e-05, 4.91932e-05, 5.00279e-05, 
			2.35543e-05, 2.68869e-05, 3.00726e-05, 3.30845e-05, 3.58959e-05, 3.84944e-05, 4.08752e-05, 4.3036e-05, 4.49911e-05, 4.67461e-05, 4.83182e-05, 4.97169e-05, 5.09599e-05, 5.20598e-05, 5.30314e-05, 5.38892e-05
		)
}

CapTable	"metal2_C_LATERAL_23MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000374144, 0.000208601, 0.000146413, 0.000112011, 8.94653e-05, 7.32522e-05, 6.09151e-05, 5.11798e-05, 4.3307e-05, 3.68318e-05, 3.14395e-05, 2.69095e-05, 2.30783e-05, 1.98204e-05, 1.70402e-05, 1.46586e-05, 
			0.000390869, 0.000221234, 0.00015625, 0.000119956, 9.60179e-05, 7.87346e-05, 6.5548e-05, 5.51216e-05, 4.6676e-05, 3.97191e-05, 3.39184e-05, 2.90391e-05, 2.49073e-05, 2.13906e-05, 1.83854e-05, 1.58096e-05, 
			0.000400053, 0.000228724, 0.000162315, 0.000124939, 0.000100182, 8.22458e-05, 6.85303e-05, 5.76663e-05, 4.88541e-05, 4.15864e-05, 3.552e-05, 3.04122e-05, 2.60821e-05, 2.2394e-05, 1.92394e-05, 1.65332e-05, 
			0.000405328, 0.000233475, 0.000166289, 0.000128262, 0.000102974, 8.4625e-05, 7.05561e-05, 5.93961e-05, 5.03336e-05, 4.28512e-05, 3.66002e-05, 3.13323e-05, 2.68639e-05, 2.30548e-05, 1.97949e-05, 1.69975e-05, 
			0.000408551, 0.000236554, 0.000168966, 0.000130543, 0.000104915, 8.62688e-05, 7.19555e-05, 6.05909e-05, 5.13528e-05, 4.37184e-05, 3.73363e-05, 3.19539e-05, 2.73853e-05, 2.34896e-05, 2.01541e-05, 1.72903e-05
		)
}

CapTable	"metal2_C_BOTTOM_GP_24MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.34814e-05, 3.06636e-05, 3.7072e-05, 4.28428e-05, 4.80432e-05, 5.27223e-05, 5.69227e-05, 6.0688e-05, 6.40588e-05, 6.70698e-05, 6.97565e-05, 7.21521e-05, 7.42878e-05, 7.61883e-05, 7.78813e-05, 7.93871e-05, 
			3.0203e-05, 3.73274e-05, 4.38591e-05, 4.98215e-05, 5.52406e-05, 6.0145e-05, 6.45702e-05, 6.85525e-05, 7.21298e-05, 7.53361e-05, 7.82053e-05, 8.07696e-05, 8.30617e-05, 8.51077e-05, 8.69338e-05, 8.85623e-05, 
			3.71682e-05, 4.4291e-05, 5.08988e-05, 5.69764e-05, 6.2526e-05, 6.75725e-05, 7.214e-05, 7.62635e-05, 7.99746e-05, 8.33113e-05, 8.6304e-05, 8.89862e-05, 9.13856e-05, 9.35299e-05, 9.54512e-05, 9.71684e-05, 
			4.43223e-05, 5.14536e-05, 5.81125e-05, 6.4265e-05, 6.99054e-05, 7.50474e-05, 7.97136e-05, 8.3935e-05, 8.7745e-05, 9.1175e-05, 9.42561e-05, 9.70248e-05, 9.95047e-05, 0.000101727, 0.000103714, 0.000105495, 
			5.15974e-05, 5.87611e-05, 6.54597e-05, 7.16632e-05, 7.73672e-05, 8.25777e-05, 8.73188e-05, 9.16145e-05, 9.54969e-05, 9.89982e-05, 0.000102147, 0.000104982, 0.000107525, 0.000109803, 0.000111849, 0.000113681
		)
}

CapTable	"metal2_C_TOP_GP_24MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			8.23001e-06, 1.06946e-05, 1.2884e-05, 1.487e-05, 1.66779e-05, 1.8324e-05, 1.98202e-05, 2.11754e-05, 2.23971e-05, 2.34984e-05, 2.4488e-05, 2.5375e-05, 2.61685e-05, 2.68796e-05, 2.75139e-05, 2.80816e-05, 
			1.04039e-05, 1.27934e-05, 1.50003e-05, 1.70408e-05, 1.89232e-05, 2.06521e-05, 2.22334e-05, 2.36725e-05, 2.49761e-05, 2.61555e-05, 2.72198e-05, 2.81775e-05, 2.90363e-05, 2.98082e-05, 3.04979e-05, 3.11164e-05, 
			1.2585e-05, 1.49472e-05, 1.71703e-05, 1.9252e-05, 2.11865e-05, 2.29708e-05, 2.46103e-05, 2.61073e-05, 2.7469e-05, 2.87029e-05, 2.98196e-05, 3.08258e-05, 3.17321e-05, 3.25482e-05, 3.32759e-05, 3.39304e-05, 
			1.47899e-05, 1.7143e-05, 1.93851e-05, 2.14987e-05, 2.34721e-05, 2.52976e-05, 2.69801e-05, 2.85216e-05, 2.9927e-05, 3.12024e-05, 3.23596e-05, 3.34026e-05, 3.4344e-05, 3.51903e-05, 3.59534e-05, 3.66358e-05, 
			1.70208e-05, 1.93875e-05, 2.16483e-05, 2.37896e-05, 2.5794e-05, 2.76557e-05, 2.93728e-05, 3.09491e-05, 3.23877e-05, 3.36977e-05, 3.48865e-05, 3.5958e-05, 3.69265e-05, 3.7802e-05, 3.85867e-05, 3.92906e-05
		)
}

CapTable	"metal2_C_LATERAL_24MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000375278, 0.000210169, 0.000148401, 0.000114392, 9.22006e-05, 7.62966e-05, 6.42174e-05, 5.46865e-05, 4.69661e-05, 4.05922e-05, 3.52562e-05, 3.07412e-05, 2.68883e-05, 2.35788e-05, 2.07206e-05, 1.8241e-05, 
			0.000392557, 0.000223404, 0.000158885, 0.000123018, 9.94627e-05, 8.25073e-05, 6.9589e-05, 5.93698e-05, 5.10728e-05, 4.42092e-05, 3.84516e-05, 3.357e-05, 2.93972e-05, 2.58065e-05, 2.26999e-05, 2.00007e-05, 
			0.000402357, 0.000231546, 0.000165628, 0.000128701, 0.000104337, 8.67317e-05, 7.3281e-05, 6.26164e-05, 5.394e-05, 4.67485e-05, 4.07058e-05, 3.5574e-05, 3.11805e-05, 2.73941e-05, 2.41137e-05, 2.1259e-05, 
			0.000408299, 0.000236985, 0.000170306, 0.000132731, 0.000107836, 8.981e-05, 7.59937e-05, 6.50171e-05, 5.60708e-05, 4.86438e-05, 4.23937e-05, 3.70784e-05, 3.25217e-05, 2.85897e-05, 2.51794e-05, 2.22081e-05, 
			0.000412219, 0.000240772, 0.00017369, 0.000135715, 0.000110469, 9.21309e-05, 7.80511e-05, 6.6848e-05, 5.77021e-05, 5.00993e-05, 4.36929e-05, 3.82376e-05, 3.35555e-05, 2.95114e-05, 2.59997e-05, 2.2938e-05
		)
}

CapTable	"metal2_C_BOTTOM_GP_25MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.92096e-05, 3.75936e-05, 4.4935e-05, 5.14497e-05, 5.72424e-05, 6.23983e-05, 6.69893e-05, 7.1077e-05, 7.47205e-05, 7.79715e-05, 8.08766e-05, 8.34771e-05, 8.58105e-05, 8.79085e-05, 8.97995e-05, 9.15086e-05, 
			3.7044e-05, 4.52266e-05, 5.261e-05, 5.92609e-05, 6.52338e-05, 7.05855e-05, 7.53777e-05, 7.96659e-05, 8.35036e-05, 8.69428e-05, 9.00277e-05, 9.28e-05, 9.5296e-05, 9.75484e-05, 9.95856e-05, 0.000101433, 
			4.49848e-05, 5.30522e-05, 6.04274e-05, 6.71264e-05, 7.31797e-05, 7.86307e-05, 8.35316e-05, 8.7934e-05, 9.1889e-05, 9.54458e-05, 9.86479e-05, 0.000101534, 0.000104143, 0.000106503, 0.000108645, 0.000110591, 
			5.29998e-05, 6.09734e-05, 6.83211e-05, 7.50299e-05, 8.11185e-05, 8.66219e-05, 9.1588e-05, 9.60655e-05, 0.000100101, 0.000103741, 0.000107028, 0.00011, 0.000112692, 0.000115136, 0.000117359, 0.000119386, 
			6.10022e-05, 6.89083e-05, 7.62048e-05, 8.28909e-05, 8.89812e-05, 9.45053e-05, 9.95047e-05, 0.000104025, 0.000108109, 0.000111807, 0.000115153, 0.000118187, 0.000120942, 0.000123451, 0.000125736, 0.000127826
		)
}

CapTable	"metal2_C_LATERAL_25MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000377328, 0.000213118, 0.000152205, 0.000119016, 9.7606e-05, 8.24345e-05, 7.10304e-05, 6.2111e-05, 5.49335e-05, 4.90336e-05, 4.41025e-05, 3.9926e-05, 3.63485e-05, 3.3255e-05, 3.05584e-05, 2.81901e-05, 
			0.000395405, 0.000227177, 0.000163563, 0.000128579, 0.000105864, 8.96977e-05, 7.75051e-05, 6.79417e-05, 6.0226e-05, 5.38678e-05, 4.85402e-05, 4.40166e-05, 4.01324e-05, 3.67657e-05, 3.38234e-05, 3.12337e-05, 
			0.000406081, 0.000236237, 0.00017128, 0.000135286, 0.000111812, 9.50393e-05, 8.23516e-05, 7.2373e-05, 6.4302e-05, 5.76344e-05, 5.20341e-05, 4.72674e-05, 4.31651e-05, 3.9601e-05, 3.64792e-05, 3.37254e-05, 
			0.00041298, 0.000242677, 0.000177003, 0.000140407, 0.000116441, 9.92785e-05, 8.62498e-05, 7.59777e-05, 6.76497e-05, 6.07538e-05, 5.49492e-05, 4.99974e-05, 4.57265e-05, 4.20084e-05, 3.87447e-05, 3.58604e-05, 
			0.000417956, 0.000247575, 0.000181549, 0.000144595, 0.000120312, 0.000102864, 8.95919e-05, 7.91064e-05, 7.05866e-05, 6.35169e-05, 5.75529e-05, 5.24549e-05, 4.80488e-05, 4.4205e-05, 4.08248e-05, 3.78314e-05
		)
}

CapTable	"metal2_C_BOTTOM_GPMAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			3.80605e-05, 5.31194e-05, 6.60748e-05, 7.65652e-05, 8.4635e-05, 9.06104e-05, 9.49151e-05, 9.79462e-05, 0.000100056, 0.000101506, 0.000102497, 0.00010317, 0.000103623, 0.000103928, 0.000104134, 0.000104272, 
			5.60979e-05, 7.16666e-05, 8.49283e-05, 9.56073e-05, 0.0001038, 0.000109864, 0.000114217, 0.000117291, 0.000119422, 0.000120885, 0.00012188, 0.000122553, 0.000123005, 0.000123308, 0.000123509, 0.000123644, 
			7.48531e-05, 9.05505e-05, 0.000103873, 0.000114586, 0.000122785, 0.000128854, 0.000133208, 0.000136272, 0.000138397, 0.000139851, 0.000140836, 0.000141501, 0.000141945, 0.00014224, 0.000142435, 0.000142565, 
			9.38399e-05, 0.000109536, 0.000122853, 0.00013354, 0.000141735, 0.00014777, 0.000152104, 0.000155151, 0.000157256, 0.000158696, 0.000159667, 0.000160321, 0.000160755, 0.000161041, 0.00016123, 0.00016135, 
			0.000112847, 0.000128537, 0.000141824, 0.000152481, 0.000160636, 0.000166645, 0.000170954, 0.000173972, 0.000176058, 0.000177479, 0.000178437, 0.000179078, 0.000179502, 0.00017978, 0.00017996, 0.000180081
		)
}

CapTable	"metal2_C_TOP_GPMAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			3.75871e-05, 5.21447e-05, 6.45329e-05, 7.44828e-05, 8.20999e-05, 8.77233e-05, 9.17601e-05, 9.46114e-05, 9.65887e-05, 9.79531e-05, 9.88865e-05, 9.95203e-05, 9.99517e-05, 0.000100244, 0.00010044, 0.000100571, 
			5.56025e-05, 7.06426e-05, 8.33139e-05, 9.34448e-05, 0.000101183, 0.000106884, 0.000110989, 0.00011387, 0.000115877, 0.000117256, 0.000118201, 0.000118843, 0.000119278, 0.000119571, 0.000119766, 0.000119893, 
			7.42301e-05, 8.93854e-05, 0.000102119, 0.000112277, 0.000120042, 0.000125747, 0.000129851, 0.000132742, 0.000134747, 0.000136128, 0.000137072, 0.000137712, 0.000138144, 0.000138433, 0.000138622, 0.000138744, 
			9.30363e-05, 0.000108189, 0.000120911, 0.000131075, 0.000138813, 0.000144512, 0.000148604, 0.000151487, 0.000153489, 0.000154864, 0.000155802, 0.000156436, 0.000156862, 0.000157144, 0.000157328, 0.000157447, 
			0.000111876, 0.000127051, 0.000139751, 0.000149885, 0.000157616, 0.000163302, 0.000167383, 0.000170253, 0.000172243, 0.00017361, 0.000174539, 0.000175167, 0.000175587, 0.000175867, 0.000176043, 0.000176151
		)
}

CapTable	"metal2_C_LATERALMAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000344747, 0.00017081, 0.000103505, 6.6792e-05, 4.41694e-05, 2.95047e-05, 1.97856e-05, 1.32801e-05, 8.90848e-06, 5.96546e-06, 3.98401e-06, 2.65079e-06, 1.75386e-06, 1.15121e-06, 7.46925e-07, 4.76806e-07, 
			0.000349115, 0.0001732, 0.000104821, 6.75707e-05, 4.46337e-05, 2.97732e-05, 1.99268e-05, 1.33425e-05, 8.9203e-06, 5.94807e-06, 3.95007e-06, 2.60876e-06, 1.7099e-06, 1.10915e-06, 7.09654e-07, 4.46418e-07, 
			0.000348852, 0.000173159, 0.000104754, 6.74694e-05, 4.45211e-05, 2.96562e-05, 1.9812e-05, 1.32318e-05, 8.81882e-06, 5.85592e-06, 3.86884e-06, 2.53882e-06, 1.65141e-06, 1.06235e-06, 6.74663e-07, 4.22794e-07, 
			0.000347214, 0.000172444, 0.000104289, 6.7114e-05, 4.42299e-05, 2.94353e-05, 1.96295e-05, 1.30801e-05, 8.69173e-06, 5.75117e-06, 3.7837e-06, 2.47145e-06, 1.60034e-06, 1.02634e-06, 6.5263e-07, 4.12756e-07, 
			0.000345464, 0.000171541, 0.000103719, 6.67125e-05, 4.39267e-05, 2.91852e-05, 1.94282e-05, 1.29233e-05, 8.56993e-06, 5.65732e-06, 3.71302e-06, 2.42018e-06, 1.56555e-06, 1.0057e-06, 6.44932e-07, 4.15632e-07
		)
}

CapTable	"metal2_C_BOTTOM_GP_12MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			4.07637e-05, 5.57819e-05, 6.87225e-05, 7.9564e-05, 8.84696e-05, 9.56939e-05, 0.000101501, 0.000106139, 0.00010983, 0.000112757, 0.000115081, 0.000116916, 0.000118365, 0.000119515, 0.00012042, 0.000121139, 
			5.81189e-05, 7.34926e-05, 8.67336e-05, 9.78578e-05, 0.000107032, 0.000114503, 0.000120531, 0.000125365, 0.000129222, 0.000132294, 0.000134729, 0.00013666, 0.000138191, 0.000139404, 0.000140365, 0.000141128, 
			7.61482e-05, 9.16156e-05, 0.000104964, 0.000116209, 0.000125511, 0.000133108, 0.000139252, 0.000144194, 0.000148142, 0.000151285, 0.000153793, 0.000155774, 0.00015735, 0.0001586, 0.000159594, 0.000160383, 
			9.44518e-05, 0.000109938, 0.000123328, 0.000134633, 0.000144005, 0.000151666, 0.000157879, 0.000162876, 0.000166874, 0.000170068, 0.00017261, 0.00017463, 0.000176236, 0.000177512, 0.000178522, 0.000179326, 
			0.000112863, 0.00012838, 0.000141788, 0.000153119, 0.000162533, 0.000170234, 0.000176481, 0.000181513, 0.000185541, 0.000188761, 0.000191325, 0.000193368, 0.000194991, 0.000196279, 0.000197303, 0.00019812
		)
}

CapTable	"metal2_C_TOP_GP_12MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.47799e-05, 2.00222e-05, 2.47927e-05, 2.90231e-05, 3.26634e-05, 3.5719e-05, 3.82432e-05, 4.03017e-05, 4.19665e-05, 4.33063e-05, 4.43747e-05, 4.52304e-05, 4.59154e-05, 4.64549e-05, 4.68923e-05, 4.7235e-05, 
			2.02237e-05, 2.55706e-05, 3.05122e-05, 3.4916e-05, 3.87254e-05, 4.19418e-05, 4.46085e-05, 4.67943e-05, 4.85681e-05, 4.99967e-05, 5.1147e-05, 5.20691e-05, 5.28035e-05, 5.33882e-05, 5.38537e-05, 5.42238e-05, 
			2.58404e-05, 3.12787e-05, 3.63238e-05, 4.08401e-05, 4.47534e-05, 4.80649e-05, 5.08197e-05, 5.30761e-05, 5.49156e-05, 5.6405e-05, 5.75956e-05, 5.85598e-05, 5.93246e-05, 5.99347e-05, 6.04197e-05, 6.08063e-05, 
			3.15944e-05, 3.70958e-05, 4.22188e-05, 4.68075e-05, 5.07914e-05, 5.41632e-05, 5.69691e-05, 5.92792e-05, 6.11621e-05, 6.26823e-05, 6.39057e-05, 6.48865e-05, 6.56708e-05, 6.62955e-05, 6.67941e-05, 6.7191e-05, 
			3.74396e-05, 4.30086e-05, 4.81865e-05, 5.28283e-05, 5.68523e-05, 6.02672e-05, 6.31138e-05, 6.54506e-05, 6.73616e-05, 6.89035e-05, 7.0145e-05, 7.11397e-05, 7.19365e-05, 7.25724e-05, 7.30803e-05, 7.34822e-05
		)
}

CapTable	"metal2_C_LATERAL_12MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.00035852, 0.000188619, 0.000123661, 8.77671e-05, 6.4731e-05, 4.87852e-05, 3.72646e-05, 2.87216e-05, 2.22783e-05, 1.73614e-05, 1.35776e-05, 1.06478e-05, 8.36749e-06, 6.58672e-06, 5.19047e-06, 4.09366e-06, 
			0.00036916, 0.000196235, 0.0001293, 9.21264e-05, 6.81643e-05, 5.15158e-05, 3.94478e-05, 3.04693e-05, 2.36796e-05, 1.8485e-05, 1.44789e-05, 1.13706e-05, 8.94793e-06, 7.0527e-06, 5.56559e-06, 4.39583e-06, 
			0.00037371, 0.000200012, 0.000132301, 9.45146e-05, 7.0089e-05, 5.30698e-05, 4.07039e-05, 3.14868e-05, 2.45029e-05, 1.91513e-05, 1.50188e-05, 1.18075e-05, 9.30216e-06, 7.34031e-06, 5.79981e-06, 4.58685e-06, 
			0.000375561, 0.000202019, 0.000134003, 9.59137e-05, 7.12258e-05, 5.40148e-05, 4.1477e-05, 3.21194e-05, 2.50201e-05, 1.95747e-05, 1.5365e-05, 1.20917e-05, 9.53554e-06, 7.53262e-06, 5.95829e-06, 4.71803e-06, 
			0.00037627, 0.000203041, 0.000134967, 9.67453e-05, 7.19272e-05, 5.45871e-05, 4.19496e-05, 3.2513e-05, 2.53466e-05, 1.98453e-05, 1.55891e-05, 1.22779e-05, 9.68985e-06, 7.66032e-06, 6.06396e-06, 4.80592e-06
		)
}

CapTable	"metal2_C_BOTTOM_GP_13MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			4.2733e-05, 5.80612e-05, 7.11579e-05, 8.20964e-05, 9.11078e-05, 9.84841e-05, 0.000104508, 0.000109424, 0.000113443, 0.00011674, 0.000119443, 0.000121676, 0.000123525, 0.000125053, 0.000126327, 0.000127394, 
			6.01656e-05, 7.56619e-05, 8.89407e-05, 0.000100085, 0.00010933, 0.000116954, 0.00012322, 0.000128371, 0.00013261, 0.000136104, 0.000138993, 0.000141385, 0.000143378, 0.000145033, 0.000146416, 0.000147575, 
			7.80899e-05, 9.35514e-05, 0.000106849, 0.000118071, 0.000127431, 0.000135191, 0.00014161, 0.000146906, 0.00015129, 0.000154921, 0.000157927, 0.000160429, 0.00016252, 0.000164263, 0.000165726, 0.00016695, 
			9.61701e-05, 0.000111557, 0.000124845, 0.000136104, 0.000145536, 0.000153384, 0.000159901, 0.000165308, 0.000169789, 0.000173517, 0.000176616, 0.000179199, 0.000181359, 0.00018317, 0.000184695, 0.000185973, 
			0.00011428, 0.000129642, 0.000142915, 0.000154202, 0.000163681, 0.000171601, 0.0001782, 0.000183674, 0.000188231, 0.000192031, 0.000195198, 0.000197845, 0.000200057, 0.000201926, 0.000203493, 0.000204817
		)
}

CapTable	"metal2_C_TOP_GP_13MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			9.7082e-06, 1.30221e-05, 1.6017e-05, 1.86705e-05, 2.09692e-05, 2.29261e-05, 2.45732e-05, 2.59543e-05, 2.71054e-05, 2.80605e-05, 2.88614e-05, 2.95247e-05, 3.00754e-05, 3.05424e-05, 3.09298e-05, 3.12519e-05, 
			1.30068e-05, 1.63139e-05, 1.93624e-05, 2.20979e-05, 2.44888e-05, 2.6545e-05, 2.8295e-05, 2.9772e-05, 3.10114e-05, 3.20495e-05, 3.29179e-05, 3.36469e-05, 3.42531e-05, 3.47659e-05, 3.51989e-05, 3.55603e-05, 
			1.63275e-05, 1.96381e-05, 2.27245e-05, 2.55133e-05, 2.79724e-05, 3.00983e-05, 3.19109e-05, 3.3455e-05, 3.47533e-05, 3.58432e-05, 3.67676e-05, 3.7542e-05, 3.81884e-05, 3.87376e-05, 3.9199e-05, 3.95942e-05, 
			1.96715e-05, 2.29891e-05, 2.61058e-05, 2.89408e-05, 3.14499e-05, 3.36256e-05, 3.54917e-05, 3.70786e-05, 3.84243e-05, 3.95549e-05, 4.05129e-05, 4.13232e-05, 4.20029e-05, 4.25776e-05, 4.30594e-05, 4.34735e-05, 
			2.30334e-05, 2.63806e-05, 2.95301e-05, 3.23952e-05, 3.49464e-05, 3.71601e-05, 3.90603e-05, 4.069e-05, 4.20704e-05, 4.32334e-05, 4.42221e-05, 4.50554e-05, 4.57649e-05, 4.6354e-05, 4.68598e-05, 4.72853e-05
		)
}

CapTable	"metal2_C_LATERAL_13MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000360937, 0.000192074, 0.000128058, 9.29356e-05, 7.04578e-05, 5.48512e-05, 4.347e-05, 3.48984e-05, 2.8294e-05, 2.31188e-05, 1.90093e-05, 1.57119e-05, 1.30417e-05, 1.08636e-05, 9.07595e-06, 7.60029e-06, 
			0.000373016, 0.000201218, 0.000135262, 9.8852e-05, 7.54082e-05, 5.90358e-05, 4.70274e-05, 3.79327e-05, 3.08879e-05, 2.53396e-05, 2.09124e-05, 1.73439e-05, 1.44424e-05, 1.20668e-05, 1.01092e-05, 8.48859e-06, 
			0.000379112, 0.000206549, 0.000139786, 0.000102706, 7.87217e-05, 6.18898e-05, 4.94903e-05, 4.00599e-05, 3.27267e-05, 2.69282e-05, 2.22856e-05, 1.85305e-05, 1.54682e-05, 1.29529e-05, 1.08753e-05, 9.14987e-06, 
			0.000382508, 0.000210055, 0.000142919, 0.00010545, 8.11098e-05, 6.39881e-05, 5.13198e-05, 4.16539e-05, 3.41141e-05, 2.81355e-05, 2.33359e-05, 1.94429e-05, 1.62607e-05, 1.36411e-05, 1.14723e-05, 9.66756e-06, 
			0.000384703, 0.000212482, 0.000145193, 0.000107492, 8.29192e-05, 6.55701e-05, 5.27061e-05, 4.28705e-05, 3.51789e-05, 2.90665e-05, 2.41473e-05, 2.01501e-05, 1.68749e-05, 1.41746e-05, 1.19342e-05, 1.00668e-05
		)
}

CapTable	"metal2_C_BOTTOM_GP_14MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			4.41003e-05, 5.97509e-05, 7.30751e-05, 8.41723e-05, 9.33016e-05, 0.000100774, 0.000106887, 0.000111895, 0.000116013, 0.00011941, 0.000122226, 0.000124575, 0.000126535, 0.000128185, 0.000129586, 0.000130767, 
			6.18027e-05, 7.75482e-05, 9.10017e-05, 0.000102268, 0.000111604, 0.000119308, 0.000125661, 0.000130906, 0.000135252, 0.000138859, 0.000141865, 0.000144397, 0.000146516, 0.000148313, 0.000149839, 0.000151137, 
			7.99046e-05, 9.55584e-05, 0.000108988, 0.000120305, 0.00012974, 0.000137578, 0.000144075, 0.00014947, 0.000153966, 0.000157714, 0.000160859, 0.000163514, 0.000165752, 0.000167657, 0.000169275, 0.000170671, 
			9.80897e-05, 0.000113622, 0.000127007, 0.000138341, 0.000147839, 0.00015576, 0.000162361, 0.000167861, 0.000172474, 0.00017633, 0.000179579, 0.00018233, 0.000184657, 0.000186647, 0.000188338, 0.000189797, 
			0.000116245, 0.000131718, 0.000145069, 0.000156405, 0.000165941, 0.000173933, 0.000180607, 0.000186193, 0.000190889, 0.000194831, 0.000198169, 0.00020099, 0.000203403, 0.00020545, 0.000207204, 0.000208709
		)
}

CapTable	"metal2_C_TOP_GP_14MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			7.35812e-06, 9.82542e-06, 1.20454e-05, 1.4006e-05, 1.57021e-05, 1.71465e-05, 1.83646e-05, 1.93889e-05, 2.02458e-05, 2.09691e-05, 2.15786e-05, 2.20874e-05, 2.25256e-05, 2.28953e-05, 2.32039e-05, 2.34731e-05, 
			9.79047e-06, 1.22321e-05, 1.44743e-05, 1.64802e-05, 1.82354e-05, 1.97464e-05, 2.10329e-05, 2.21248e-05, 2.30464e-05, 2.38312e-05, 2.45007e-05, 2.50565e-05, 2.55423e-05, 2.59512e-05, 2.62982e-05, 2.66e-05, 
			1.22182e-05, 1.46434e-05, 1.68973e-05, 1.89309e-05, 2.07241e-05, 2.22755e-05, 2.36124e-05, 2.47552e-05, 2.57225e-05, 2.65549e-05, 2.72622e-05, 2.78575e-05, 2.83739e-05, 2.88096e-05, 2.91901e-05, 2.95033e-05, 
			1.46425e-05, 1.70589e-05, 1.93236e-05, 2.13798e-05, 2.32028e-05, 2.47873e-05, 2.61603e-05, 2.73435e-05, 2.83419e-05, 2.92093e-05, 2.99452e-05, 3.05715e-05, 3.1114e-05, 3.15725e-05, 3.1975e-05, 3.23154e-05, 
			1.70618e-05, 1.94827e-05, 2.17546e-05, 2.38332e-05, 2.56837e-05, 2.72958e-05, 2.87022e-05, 2.99113e-05, 3.09396e-05, 3.18304e-05, 3.25864e-05, 3.32434e-05, 3.37915e-05, 3.42796e-05, 3.46979e-05, 3.50636e-05
		)
}

CapTable	"metal2_C_LATERAL_14MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000361718, 0.000193213, 0.000129547, 9.47472e-05, 7.25455e-05, 5.71598e-05, 4.59418e-05, 3.74791e-05, 3.09358e-05, 2.578e-05, 2.16562e-05, 1.83166e-05, 1.55837e-05, 1.33269e-05, 1.14488e-05, 9.87518e-06, 
			0.000374231, 0.000202836, 0.000137269, 0.000101209, 7.80592e-05, 6.19167e-05, 5.00735e-05, 4.10833e-05, 3.40897e-05, 2.85468e-05, 2.40885e-05, 2.04589e-05, 1.74738e-05, 1.49979e-05, 1.29283e-05, 1.11875e-05, 
			0.000380828, 0.000208697, 0.000142344, 0.000105626, 8.19398e-05, 6.53352e-05, 5.30925e-05, 4.37539e-05, 3.64554e-05, 3.06446e-05, 2.59505e-05, 2.21138e-05, 1.89463e-05, 1.63094e-05, 1.40983e-05, 1.22327e-05, 
			0.000384773, 0.000212766, 0.000146047, 0.000108941, 8.48938e-05, 6.79882e-05, 5.5461e-05, 4.5869e-05, 3.83446e-05, 3.23324e-05, 2.746e-05, 2.3464e-05, 2.01552e-05, 1.73928e-05, 1.50699e-05, 1.31051e-05, 
			0.000387542, 0.000215776, 0.000148904, 0.00011156, 8.72679e-05, 7.0119e-05, 5.73782e-05, 4.75961e-05, 3.98989e-05, 3.3731e-05, 2.87176e-05, 2.45953e-05, 2.11739e-05, 1.83099e-05, 1.58963e-05, 1.38497e-05
		)
}

CapTable	"metal2_C_BOTTOM_GP_15MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			4.98946e-05, 6.71993e-05, 8.18972e-05, 9.4124e-05, 0.000104175, 0.000112404, 0.000119139, 0.000124673, 0.000129242, 0.000133033, 0.0001362, 0.000138863, 0.000141117, 0.000143038, 0.000144686, 0.000146105, 
			6.90872e-05, 8.63226e-05, 0.000101036, 0.000113353, 0.000123561, 0.000131988, 0.000138952, 0.000144722, 0.000149523, 0.000153542, 0.000156927, 0.000159795, 0.000162239, 0.000164336, 0.000166145, 0.000167716, 
			8.85052e-05, 0.000105503, 0.000120087, 0.000132374, 0.000142626, 0.000151151, 0.000158243, 0.00016416, 0.000169116, 0.000173292, 0.00017683, 0.000179844, 0.00018243, 0.000184659, 0.000186593, 0.000188279, 
			0.000107841, 0.000124595, 0.000139038, 0.000151274, 0.00016154, 0.000170117, 0.000177296, 0.000183316, 0.000188388, 0.000192683, 0.000196339, 0.000199471, 0.000202167, 0.000204504, 0.000206538, 0.00020832, 
			0.000126991, 0.000143581, 0.000157903, 0.000170078, 0.00018034, 0.000188955, 0.000196193, 0.00020229, 0.000207449, 0.000211835, 0.000215585, 0.000218809, 0.000221599, 0.000224022, 0.000226143, 0.000228004
		)
}

CapTable	"metal2_C_LATERAL_15MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000362964, 0.00019502, 0.000131914, 9.76438e-05, 7.59192e-05, 6.09442e-05, 5.00674e-05, 4.18776e-05, 3.55454e-05, 3.0546e-05, 2.65306e-05, 2.32585e-05, 2.05586e-05, 1.8306e-05, 1.6408e-05, 1.47945e-05, 
			0.000376172, 0.000205415, 0.00014048, 0.000105016, 8.23976e-05, 6.67094e-05, 5.52404e-05, 4.65475e-05, 3.97807e-05, 3.44022e-05, 3.00535e-05, 2.64874e-05, 2.35266e-05, 2.10417e-05, 1.89361e-05, 1.71367e-05, 
			0.000383564, 0.000212139, 0.000146478, 0.000110403, 8.72861e-05, 7.11642e-05, 5.93158e-05, 5.02869e-05, 4.32202e-05, 3.75729e-05, 3.29832e-05, 2.91998e-05, 2.60429e-05, 2.33808e-05, 2.11151e-05, 1.91702e-05, 
			0.000388405, 0.000217154, 0.000151171, 0.000114743, 9.12909e-05, 7.48854e-05, 6.27626e-05, 5.34839e-05, 4.61896e-05, 4.03346e-05, 3.55555e-05, 3.15991e-05, 2.82845e-05, 2.54785e-05, 2.30808e-05, 2.10154e-05, 
			0.00039214, 0.000221175, 0.000155072, 0.000118436, 9.47593e-05, 7.81228e-05, 6.57916e-05, 5.6322e-05, 4.88494e-05, 4.28288e-05, 3.78963e-05, 3.37982e-05, 3.03526e-05, 2.74256e-05, 2.49164e-05, 2.2748e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_41MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			8.771e-06, 1.21274e-05, 1.50927e-05, 1.76816e-05, 1.98863e-05, 2.1777e-05, 2.33321e-05, 2.46652e-05, 2.5776e-05, 2.6692e-05, 2.74693e-05, 2.81198e-05, 2.86531e-05, 2.91074e-05, 2.9489e-05, 2.98574e-05, 
			1.18038e-05, 1.51084e-05, 1.81303e-05, 2.07666e-05, 2.3031e-05, 2.49943e-05, 2.66543e-05, 2.8037e-05, 2.92114e-05, 3.02015e-05, 3.10306e-05, 3.17149e-05, 3.23005e-05, 3.27914e-05, 3.3238e-05, 3.35674e-05, 
			1.48876e-05, 1.81663e-05, 2.11985e-05, 2.38554e-05, 2.61933e-05, 2.81966e-05, 2.98865e-05, 3.13314e-05, 3.25492e-05, 3.35635e-05, 3.44277e-05, 3.51576e-05, 3.581e-05, 3.63047e-05, 3.67291e-05, 3.7095e-05, 
			1.79953e-05, 2.12432e-05, 2.42789e-05, 2.69874e-05, 2.93348e-05, 3.13659e-05, 3.3105e-05, 3.45789e-05, 3.58134e-05, 3.68684e-05, 3.77602e-05, 3.85302e-05, 3.91509e-05, 3.96857e-05, 4.01433e-05, 4.05401e-05, 
			2.11231e-05, 2.44077e-05, 2.74495e-05, 3.01636e-05, 3.25542e-05, 3.46161e-05, 3.6367e-05, 3.78678e-05, 3.91432e-05, 4.0231e-05, 4.11291e-05, 4.18958e-05, 4.2555e-05, 4.31208e-05, 4.36068e-05, 4.40406e-05
		)
}

CapTable	"metal3_C_TOP_GP_41MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			4.27966e-05, 5.75602e-05, 7.01239e-05, 8.06051e-05, 8.92644e-05, 9.63987e-05, 0.000102269, 0.000107111, 0.000111103, 0.000114409, 0.000117147, 0.000119426, 0.000121339, 0.000122933, 0.000124273, 0.000125353, 
			6.03872e-05, 7.53745e-05, 8.81266e-05, 9.88247e-05, 0.000107721, 0.000115111, 0.000121233, 0.000126309, 0.000130526, 0.000134031, 0.000136957, 0.000139419, 0.000141474, 0.000143206, 0.000144633, 0.000145893, 
			7.84518e-05, 9.34375e-05, 0.000106241, 0.000117033, 0.000126067, 0.000133596, 0.000139874, 0.000145102, 0.000149464, 0.000153126, 0.000156185, 0.000158754, 0.00016088, 0.000162739, 0.0001643, 0.000165616, 
			9.66689e-05, 0.000111615, 0.000124444, 0.000135295, 0.000144416, 0.000152047, 0.000158428, 0.000163771, 0.000168262, 0.000172018, 0.000175178, 0.000177825, 0.000180095, 0.000181997, 0.00018361, 0.000184972, 
			0.000114951, 0.00012993, 0.000142772, 0.000153672, 0.000162856, 0.000170568, 0.000177054, 0.000182482, 0.000187041, 0.000190872, 0.000194125, 0.000196867, 0.000199172, 0.000201116, 0.000202763, 0.000204142
		)
}

CapTable	"metal3_C_LATERAL_41MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000361483, 0.000192777, 0.000128932, 9.39641e-05, 7.16187e-05, 5.60697e-05, 4.47345e-05, 3.61309e-05, 2.94728e-05, 2.42348e-05, 2.00416e-05, 1.66547e-05, 1.38936e-05, 1.16266e-05, 9.75265e-06, 8.19798e-06, 
			0.000373394, 0.000201725, 0.000135937, 9.97214e-05, 7.64526e-05, 6.01594e-05, 4.81855e-05, 3.90978e-05, 3.20121e-05, 2.64015e-05, 2.18974e-05, 1.82414e-05, 1.52491e-05, 1.27814e-05, 1.0736e-05, 9.02488e-06, 
			0.000379291, 0.000206878, 0.000140308, 0.000103457, 7.96284e-05, 6.29037e-05, 5.05649e-05, 4.11382e-05, 3.37716e-05, 2.79133e-05, 2.31935e-05, 1.935e-05, 1.61958e-05, 1.35802e-05, 1.14057e-05, 9.58804e-06, 
			0.00038253, 0.000210262, 0.000143333, 0.000106081, 8.1926e-05, 6.49163e-05, 5.23034e-05, 4.26437e-05, 3.50686e-05, 2.90282e-05, 2.41464e-05, 2.01606e-05, 1.68743e-05, 1.41541e-05, 1.18849e-05, 9.98449e-06, 
			0.00038458, 0.000212528, 0.000145467, 0.000107997, 8.35996e-05, 6.63659e-05, 5.3555e-05, 4.37228e-05, 3.59948e-05, 2.98166e-05, 2.48109e-05, 2.07136e-05, 1.7337e-05, 1.45368e-05, 1.21973e-05, 1.0236e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_42MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.02826e-05, 1.36283e-05, 1.65584e-05, 1.91608e-05, 2.15307e-05, 2.36979e-05, 2.56771e-05, 2.74764e-05, 2.91131e-05, 3.06019e-05, 3.19505e-05, 3.31675e-05, 3.4267e-05, 3.52582e-05, 3.61437e-05, 3.69428e-05, 
			1.29203e-05, 1.6092e-05, 1.90128e-05, 2.16975e-05, 2.41591e-05, 2.64201e-05, 2.84911e-05, 3.0394e-05, 3.21273e-05, 3.37075e-05, 3.51397e-05, 3.64393e-05, 3.76172e-05, 3.86739e-05, 3.96301e-05, 4.04872e-05, 
			1.55849e-05, 1.86906e-05, 2.16035e-05, 2.43149e-05, 2.68233e-05, 2.91403e-05, 3.12801e-05, 3.32436e-05, 3.50406e-05, 3.66825e-05, 3.81793e-05, 3.95342e-05, 4.07656e-05, 4.18758e-05, 4.2873e-05, 4.37791e-05, 
			1.8349e-05, 2.13937e-05, 2.42864e-05, 2.70025e-05, 2.95425e-05, 3.18973e-05, 3.40795e-05, 3.60863e-05, 3.79306e-05, 3.96199e-05, 4.1158e-05, 4.25596e-05, 4.38288e-05, 4.4956e-05, 4.5998e-05, 4.69385e-05, 
			2.11511e-05, 2.41798e-05, 2.70725e-05, 2.98091e-05, 3.23751e-05, 3.47649e-05, 3.69835e-05, 3.9034e-05, 4.09135e-05, 4.26408e-05, 4.42155e-05, 4.56449e-05, 4.69518e-05, 4.81124e-05, 4.91868e-05, 5.01628e-05
		)
}

CapTable	"metal3_C_TOP_GP_42MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.89102e-05, 2.42176e-05, 2.89607e-05, 3.33011e-05, 3.72578e-05, 4.08762e-05, 4.41871e-05, 4.72198e-05, 4.99855e-05, 5.24969e-05, 5.47774e-05, 5.68401e-05, 5.87041e-05, 6.03816e-05, 6.18919e-05, 6.32465e-05, 
			2.38871e-05, 2.91248e-05, 3.39629e-05, 3.84446e-05, 4.25979e-05, 4.64317e-05, 4.99601e-05, 5.31891e-05, 5.61415e-05, 5.88307e-05, 6.12742e-05, 6.34889e-05, 6.54857e-05, 6.72931e-05, 6.89177e-05, 7.03802e-05, 
			2.89827e-05, 3.42154e-05, 3.91441e-05, 4.37587e-05, 4.80596e-05, 5.20423e-05, 5.57075e-05, 5.90755e-05, 6.21547e-05, 6.49648e-05, 6.75132e-05, 6.98302e-05, 7.19209e-05, 7.38126e-05, 7.5523e-05, 7.70547e-05, 
			3.41678e-05, 3.94534e-05, 4.44797e-05, 4.92101e-05, 5.36189e-05, 5.77055e-05, 6.14767e-05, 6.49414e-05, 6.81143e-05, 7.10025e-05, 7.36338e-05, 7.60199e-05, 7.81823e-05, 8.01604e-05, 8.19221e-05, 8.35054e-05, 
			3.94731e-05, 4.48531e-05, 4.99717e-05, 5.47884e-05, 5.92901e-05, 6.34627e-05, 6.73159e-05, 7.08487e-05, 7.40895e-05, 7.70402e-05, 7.97293e-05, 8.21754e-05, 8.43819e-05, 8.64038e-05, 8.81997e-05, 8.98129e-05
		)
}

CapTable	"metal3_C_LATERAL_42MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000377222, 0.000212608, 0.000151227, 0.000117478, 9.54271e-05, 7.95572e-05, 6.74296e-05, 5.77872e-05, 4.99117e-05, 4.33563e-05, 3.78207e-05, 3.31024e-05, 2.90447e-05, 2.5537e-05, 2.24931e-05, 1.98372e-05, 
			0.000395259, 0.000226542, 0.000162317, 0.000126618, 0.000103116, 8.61238e-05, 7.31002e-05, 6.27267e-05, 5.42441e-05, 4.71733e-05, 4.12017e-05, 3.61029e-05, 3.17181e-05, 2.7925e-05, 2.46259e-05, 2.17476e-05, 
			0.000405726, 0.000235246, 0.000169519, 0.000132664, 0.000108278, 9.05778e-05, 7.69804e-05, 6.61301e-05, 5.72471e-05, 4.98341e-05, 4.35672e-05, 3.82138e-05, 3.3605e-05, 2.96134e-05, 2.614e-05, 2.31071e-05, 
			0.000412182, 0.000241094, 0.000174509, 0.000136932, 0.000111957, 9.37958e-05, 7.98022e-05, 6.8623e-05, 5.9456e-05, 5.18028e-05, 4.53261e-05, 3.97872e-05, 3.50157e-05, 3.08787e-05, 2.72769e-05, 2.41301e-05, 
			0.000416466, 0.000245129, 0.000178051, 0.000140006, 0.00011463, 9.61246e-05, 8.1846e-05, 7.04276e-05, 6.10568e-05, 5.3226e-05, 4.65934e-05, 4.09189e-05, 3.60279e-05, 3.17842e-05, 2.80893e-05, 2.48588e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_43MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.14133e-05, 1.53098e-05, 1.85626e-05, 2.13868e-05, 2.39026e-05, 2.61839e-05, 2.82737e-05, 3.01986e-05, 3.19766e-05, 3.36193e-05, 3.51392e-05, 3.65401e-05, 3.78356e-05, 3.90256e-05, 4.01239e-05, 4.11285e-05, 
			1.38811e-05, 1.75351e-05, 2.07687e-05, 2.36516e-05, 2.62633e-05, 2.86509e-05, 3.08511e-05, 3.28846e-05, 3.47652e-05, 3.65065e-05, 3.81202e-05, 3.96096e-05, 4.09885e-05, 4.22575e-05, 4.343e-05, 4.45091e-05, 
			1.63832e-05, 1.9847e-05, 2.30262e-05, 2.59204e-05, 2.85733e-05, 3.10219e-05, 3.32875e-05, 3.53913e-05, 3.73439e-05, 3.91572e-05, 4.08367e-05, 4.23969e-05, 4.38364e-05, 4.51707e-05, 4.64005e-05, 4.75376e-05, 
			1.89207e-05, 2.2239e-05, 2.53578e-05, 2.82408e-05, 3.09127e-05, 3.33918e-05, 3.57008e-05, 3.78533e-05, 3.98566e-05, 4.17235e-05, 4.34557e-05, 4.50685e-05, 4.65632e-05, 4.79466e-05, 4.92286e-05, 5.04125e-05, 
			2.15064e-05, 2.47957e-05, 2.79054e-05, 3.08071e-05, 3.35131e-05, 3.6035e-05, 3.83907e-05, 4.05873e-05, 4.26395e-05, 4.45483e-05, 4.63267e-05, 4.79793e-05, 4.95158e-05, 5.09407e-05, 5.22564e-05, 5.34761e-05
		)
}

CapTable	"metal3_C_TOP_GP_43MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.35319e-05, 1.66239e-05, 1.94116e-05, 2.19734e-05, 2.43481e-05, 2.65618e-05, 2.86348e-05, 3.05785e-05, 3.2402e-05, 3.41128e-05, 3.57143e-05, 3.7214e-05, 3.86112e-05, 3.99165e-05, 4.11274e-05, 4.22565e-05, 
			1.66067e-05, 1.95051e-05, 2.22314e-05, 2.48198e-05, 2.7273e-05, 2.95967e-05, 3.17941e-05, 3.38698e-05, 3.58284e-05, 3.76718e-05, 3.94012e-05, 4.10241e-05, 4.25394e-05, 4.39558e-05, 4.52732e-05, 4.64978e-05, 
			1.95758e-05, 2.2433e-05, 2.51702e-05, 2.78113e-05, 3.03435e-05, 3.27579e-05, 3.50549e-05, 3.72312e-05, 3.92893e-05, 4.12272e-05, 4.30514e-05, 4.47593e-05, 4.63616e-05, 4.78548e-05, 4.92463e-05, 5.05397e-05, 
			2.25333e-05, 2.54114e-05, 2.82006e-05, 3.0907e-05, 3.35142e-05, 3.60107e-05, 3.83897e-05, 4.06458e-05, 4.2782e-05, 4.47943e-05, 4.66897e-05, 4.8466e-05, 5.01276e-05, 5.16799e-05, 5.31259e-05, 5.44715e-05, 
			2.54944e-05, 2.84082e-05, 3.1246e-05, 3.40137e-05, 3.66874e-05, 3.92531e-05, 4.16986e-05, 4.40229e-05, 4.62199e-05, 4.82964e-05, 5.02467e-05, 5.20765e-05, 5.37883e-05, 5.53865e-05, 5.68778e-05, 5.82632e-05
		)
}

CapTable	"metal3_C_LATERAL_43MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000380596, 0.000217041, 0.00015661, 0.000123678, 0.000102298, 8.69537e-05, 7.52094e-05, 6.58218e-05, 5.80849e-05, 5.15662e-05, 4.59836e-05, 4.11449e-05, 3.69116e-05, 3.31817e-05, 2.98771e-05, 2.69366e-05, 
			0.000400092, 0.000232446, 0.000169154, 0.000134234, 0.000111354, 9.48298e-05, 8.21302e-05, 7.19513e-05, 6.35477e-05, 5.64595e-05, 5.03849e-05, 4.51172e-05, 4.05065e-05, 3.64431e-05, 3.28406e-05, 2.96338e-05, 
			0.000412028, 0.000242589, 0.000177738, 0.000141595, 0.000117758, 0.000100451, 8.71052e-05, 7.63823e-05, 6.7515e-05, 6.00272e-05, 5.36049e-05, 4.80312e-05, 4.31505e-05, 3.88458e-05, 3.50302e-05, 3.16299e-05, 
			0.000419908, 0.000249789, 0.000183999, 0.00014705, 0.00012254, 0.000104693, 9.08799e-05, 7.97597e-05, 7.05508e-05, 6.27656e-05, 5.60832e-05, 5.0279e-05, 4.51937e-05, 4.07081e-05, 3.67268e-05, 3.31792e-05, 
			0.00042551, 0.000255042, 0.00018866, 0.000151143, 0.000126144, 0.000107871, 9.37012e-05, 8.22783e-05, 7.2807e-05, 6.4794e-05, 5.7911e-05, 5.19324e-05, 4.66906e-05, 4.20644e-05, 3.79596e-05, 3.43003e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_44MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.05856e-05, 2.56612e-05, 2.98729e-05, 3.35163e-05, 3.67478e-05, 3.96697e-05, 4.23483e-05, 4.4828e-05, 4.71391e-05, 4.93037e-05, 5.13379e-05, 5.3254e-05, 5.50621e-05, 5.67701e-05, 5.83849e-05, 5.99124e-05, 
			2.44202e-05, 2.89958e-05, 3.30039e-05, 3.65876e-05, 3.98415e-05, 4.28327e-05, 4.56078e-05, 4.81978e-05, 5.06272e-05, 5.29129e-05, 5.5069e-05, 5.71057e-05, 5.9032e-05, 6.08553e-05, 6.2582e-05, 6.42177e-05, 
			2.80182e-05, 3.22983e-05, 3.61676e-05, 3.97048e-05, 4.29691e-05, 4.60026e-05, 4.88404e-05, 5.15046e-05, 5.40154e-05, 5.63856e-05, 5.86274e-05, 6.07495e-05, 6.27605e-05, 6.46668e-05, 6.64744e-05, 6.8189e-05, 
			3.14888e-05, 3.55746e-05, 3.93551e-05, 4.28624e-05, 4.61325e-05, 4.91968e-05, 5.20794e-05, 5.47991e-05, 5.73695e-05, 5.98024e-05, 6.21082e-05, 6.4295e-05, 6.63701e-05, 6.83396e-05, 7.02093e-05, 7.19849e-05, 
			3.48726e-05, 3.8857e-05, 4.25748e-05, 4.60611e-05, 4.93385e-05, 5.24258e-05, 5.53434e-05, 5.81036e-05, 6.07197e-05, 6.32016e-05, 6.5557e-05, 6.77943e-05, 6.99199e-05, 7.19397e-05, 7.38592e-05, 7.56832e-05
		)
}

CapTable	"metal3_C_LATERAL_44MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000384118, 0.000221955, 0.00016276, 0.000130956, 0.000110606, 9.6201e-05, 8.53073e-05, 7.66819e-05, 6.96203e-05, 6.36922e-05, 5.86186e-05, 5.421e-05, 5.03328e-05, 4.68896e-05, 4.38071e-05, 4.10292e-05, 
			0.000404886, 0.000238641, 0.000176641, 0.000142908, 0.000121115, 0.00010558, 9.37728e-05, 8.43912e-05, 7.66909e-05, 7.02156e-05, 6.46668e-05, 5.98419e-05, 5.55962e-05, 5.18244e-05, 4.8447e-05, 4.54028e-05, 
			0.000418174, 0.000250131, 0.000186592, 0.000151661, 0.000128936, 0.00011264, 0.000100204, 9.02916e-05, 8.2138e-05, 7.52699e-05, 6.93773e-05, 6.42488e-05, 5.97327e-05, 5.57183e-05, 5.21223e-05, 4.88799e-05, 
			0.000427459, 0.000258726, 0.000194247, 0.000158515, 0.000135123, 0.000118289, 0.000105388, 9.50793e-05, 8.65827e-05, 7.9415e-05, 7.32586e-05, 6.78952e-05, 6.31691e-05, 5.89658e-05, 5.51984e-05, 5.17994e-05, 
			0.000434515, 0.000265446, 0.000200386, 0.000164098, 0.000140224, 0.000122969, 0.000109711, 9.90954e-05, 9.03305e-05, 8.29262e-05, 7.65598e-05, 7.10086e-05, 6.61133e-05, 6.17568e-05, 5.78497e-05, 5.43236e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_31MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.01153e-05, 1.40326e-05, 1.75305e-05, 2.05832e-05, 2.31906e-05, 2.53849e-05, 2.72541e-05, 2.88099e-05, 3.00912e-05, 3.11619e-05, 3.20517e-05, 3.27865e-05, 3.33941e-05, 3.38976e-05, 3.43952e-05, 3.47182e-05, 
			1.36809e-05, 1.75913e-05, 2.11372e-05, 2.42887e-05, 2.69853e-05, 2.93075e-05, 3.12655e-05, 3.28975e-05, 3.42724e-05, 3.54172e-05, 3.63716e-05, 3.71633e-05, 3.79333e-05, 3.84549e-05, 3.88937e-05, 3.92652e-05, 
			1.73827e-05, 2.12703e-05, 2.48409e-05, 2.80456e-05, 3.08295e-05, 3.32025e-05, 3.52243e-05, 3.6934e-05, 3.83656e-05, 3.95634e-05, 4.05671e-05, 4.14988e-05, 4.21784e-05, 4.27505e-05, 4.32345e-05, 4.36317e-05, 
			2.11386e-05, 2.50162e-05, 2.86395e-05, 3.18795e-05, 3.46979e-05, 3.7133e-05, 3.92053e-05, 4.09604e-05, 4.24374e-05, 4.37919e-05, 4.48099e-05, 4.56679e-05, 4.63914e-05, 4.6985e-05, 4.75164e-05, 4.79655e-05, 
			2.49515e-05, 2.88781e-05, 3.25192e-05, 3.57983e-05, 3.86764e-05, 4.11558e-05, 4.3274e-05, 4.50716e-05, 4.66782e-05, 4.79399e-05, 4.90084e-05, 4.9908e-05, 5.06605e-05, 5.13166e-05, 5.18713e-05, 5.23454e-05
		)
}

CapTable	"metal3_C_TOP_GP_31MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			4.25163e-05, 5.7233e-05, 6.98046e-05, 8.034e-05, 8.90701e-05, 9.62675e-05, 0.000102194, 0.000107067, 0.000111076, 0.000114375, 0.000117096, 0.000119348, 0.000121216, 0.000122768, 0.000123975, 0.000125083, 
			6.02727e-05, 7.52842e-05, 8.81233e-05, 9.8932e-05, 0.000107951, 0.000115444, 0.000121651, 0.00012679, 0.00013104, 0.000134566, 0.000137492, 0.000139928, 0.000141838, 0.000143563, 0.000145002, 0.000146202, 
			7.85761e-05, 9.36722e-05, 0.000106618, 0.000117576, 0.000126771, 0.000134444, 0.000140837, 0.000146152, 0.000150576, 0.00015426, 0.000157331, 0.000159796, 0.00016196, 0.000163775, 0.000165284, 0.000166555, 
			9.7125e-05, 0.000112249, 0.000125273, 0.000136332, 0.000145656, 0.000153461, 0.000159995, 0.000165452, 0.000170012, 0.000173697, 0.000176908, 0.000179593, 0.00018184, 0.000183725, 0.000185282, 0.000186585, 
			0.000115807, 0.000131008, 0.000144094, 0.00015524, 0.000164658, 0.000172579, 0.000179224, 0.000184785, 0.000189351, 0.000193264, 0.000196542, 0.000199284, 0.000201582, 0.000203491, 0.00020509, 0.000206424
		)
}

CapTable	"metal3_C_LATERAL_31MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000360646, 0.000191594, 0.000127407, 9.21312e-05, 6.95195e-05, 5.37928e-05, 4.2261e-05, 3.35527e-05, 2.68367e-05, 2.15571e-05, 1.73608e-05, 1.3992e-05, 1.12659e-05, 9.04518e-06, 7.23344e-06, 5.7337e-06, 
			0.000372047, 0.000199972, 0.000133823, 9.72401e-05, 7.3668e-05, 5.71449e-05, 4.49971e-05, 3.57809e-05, 2.8618e-05, 2.29663e-05, 1.84519e-05, 1.48107e-05, 1.18619e-05, 9.43905e-06, 7.44775e-06, 5.80356e-06, 
			0.000377342, 0.000204487, 0.000137533, 0.000100275, 7.61354e-05, 5.91671e-05, 4.66239e-05, 3.70602e-05, 2.96044e-05, 2.36984e-05, 1.89637e-05, 1.51396e-05, 1.20156e-05, 9.45129e-06, 7.34054e-06, 5.59516e-06, 
			0.000379915, 0.000207169, 0.000139808, 0.000102165, 7.76717e-05, 6.03924e-05, 4.75709e-05, 3.77602e-05, 3.00868e-05, 2.40017e-05, 1.90987e-05, 1.51215e-05, 1.1871e-05, 9.20256e-06, 7.00235e-06, 5.18132e-06, 
			0.000381254, 0.000208718, 0.000141212, 0.000103324, 7.85792e-05, 6.10624e-05, 4.80354e-05, 3.80464e-05, 3.0221e-05, 2.39879e-05, 1.89658e-05, 1.4884e-05, 1.15485e-05, 8.80645e-06, 6.54368e-06, 4.67096e-06
		)
}

CapTable	"metal3_C_BOTTOM_GP_32MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.24429e-05, 1.62063e-05, 1.95696e-05, 2.26341e-05, 2.54374e-05, 2.8002e-05, 3.03472e-05, 3.2487e-05, 3.44289e-05, 3.61872e-05, 3.77776e-05, 3.92029e-05, 4.049e-05, 4.16361e-05, 4.26656e-05, 4.35847e-05, 
			1.56106e-05, 1.92228e-05, 2.25835e-05, 2.57103e-05, 2.86118e-05, 3.12931e-05, 3.37581e-05, 3.60126e-05, 3.80801e-05, 3.99462e-05, 4.1649e-05, 4.31823e-05, 4.45603e-05, 4.58011e-05, 4.69147e-05, 4.79097e-05, 
			1.88111e-05, 2.23447e-05, 2.5698e-05, 2.88614e-05, 3.18224e-05, 3.45752e-05, 3.71203e-05, 3.94632e-05, 4.16024e-05, 4.35569e-05, 4.53278e-05, 4.69347e-05, 4.83861e-05, 4.96944e-05, 5.08673e-05, 5.19238e-05, 
			2.20497e-05, 2.55373e-05, 2.88887e-05, 3.20754e-05, 3.50745e-05, 3.78825e-05, 4.04783e-05, 4.28831e-05, 4.50862e-05, 4.7098e-05, 4.89299e-05, 5.05929e-05, 5.20972e-05, 5.34566e-05, 5.46797e-05, 5.5782e-05, 
			2.53308e-05, 2.88131e-05, 3.21784e-05, 3.53959e-05, 3.84398e-05, 4.12878e-05, 4.39411e-05, 4.63886e-05, 4.86412e-05, 5.07049e-05, 5.25848e-05, 5.42924e-05, 5.58408e-05, 5.72404e-05, 5.85018e-05, 5.96389e-05
		)
}

CapTable	"metal3_C_TOP_GP_32MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.75283e-05, 2.29921e-05, 2.78347e-05, 3.2198e-05, 3.61528e-05, 3.97424e-05, 4.29967e-05, 4.59379e-05, 4.85902e-05, 5.09739e-05, 5.3108e-05, 5.502e-05, 5.67186e-05, 5.82352e-05, 5.95788e-05, 6.07692e-05, 
			2.23322e-05, 2.77686e-05, 3.27627e-05, 3.73325e-05, 4.15066e-05, 4.53096e-05, 4.87616e-05, 5.18878e-05, 5.4699e-05, 5.72359e-05, 5.95004e-05, 6.1529e-05, 6.33399e-05, 6.49508e-05, 6.63818e-05, 6.76522e-05, 
			2.72839e-05, 3.2766e-05, 3.78794e-05, 4.25937e-05, 4.69108e-05, 5.0848e-05, 5.44246e-05, 5.76601e-05, 6.05828e-05, 6.32071e-05, 6.5564e-05, 6.76696e-05, 6.95474e-05, 7.12208e-05, 7.27115e-05, 7.40334e-05, 
			3.23921e-05, 3.79334e-05, 4.31396e-05, 4.79511e-05, 5.2367e-05, 5.63868e-05, 6.00509e-05, 6.33584e-05, 6.63482e-05, 6.90365e-05, 7.14486e-05, 7.36072e-05, 7.55357e-05, 7.72544e-05, 7.87849e-05, 8.01422e-05, 
			3.77014e-05, 4.33597e-05, 4.8657e-05, 5.35556e-05, 5.80468e-05, 6.21439e-05, 6.5864e-05, 6.92329e-05, 7.22693e-05, 7.4998e-05, 7.74469e-05, 7.96417e-05, 8.15997e-05, 8.33451e-05, 8.49001e-05, 8.62809e-05
		)
}

CapTable	"metal3_C_LATERAL_32MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000376552, 0.000211551, 0.000149835, 0.000115804, 9.35228e-05, 7.74763e-05, 6.52184e-05, 5.54896e-05, 4.75667e-05, 4.09962e-05, 3.5474e-05, 3.0791e-05, 2.67887e-05, 2.33516e-05, 2.03843e-05, 1.78163e-05, 
			0.000394318, 0.00022519, 0.000160612, 0.000124624, 0.000100896, 8.37337e-05, 7.05928e-05, 6.01482e-05, 5.16309e-05, 4.45623e-05, 3.86165e-05, 3.35684e-05, 2.92522e-05, 2.55389e-05, 2.23318e-05, 1.95534e-05, 
			0.000404513, 0.000233624, 0.000167551, 0.000130416, 0.000105818, 8.7964e-05, 7.42641e-05, 6.33573e-05, 5.44552e-05, 4.70568e-05, 4.08304e-05, 3.55373e-05, 3.10069e-05, 2.71068e-05, 2.37348e-05, 2.0809e-05, 
			0.000410726, 0.000239242, 0.000172325, 0.000134488, 0.00010932, 9.10221e-05, 7.69446e-05, 6.57219e-05, 5.65502e-05, 4.89227e-05, 4.24948e-05, 3.70266e-05, 3.23422e-05, 2.83052e-05, 2.48111e-05, 2.17774e-05, 
			0.00041473, 0.000242999, 0.000175605, 0.000137315, 0.000111762, 9.31367e-05, 7.87889e-05, 6.73431e-05, 5.79802e-05, 5.01875e-05, 4.36173e-05, 3.80251e-05, 3.32307e-05, 2.90973e-05, 2.55179e-05, 2.24078e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_33MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.35625e-05, 1.76917e-05, 2.12422e-05, 2.4403e-05, 2.72677e-05, 2.9892e-05, 3.23135e-05, 3.45541e-05, 3.66265e-05, 3.85428e-05, 4.0312e-05, 4.19451e-05, 4.34437e-05, 4.48227e-05, 4.6081e-05, 4.72352e-05, 
			1.66884e-05, 2.05768e-05, 2.40927e-05, 2.73062e-05, 3.02683e-05, 3.30137e-05, 3.55641e-05, 3.79368e-05, 4.01372e-05, 4.21774e-05, 4.40633e-05, 4.58077e-05, 4.74096e-05, 4.8886e-05, 5.02398e-05, 5.14763e-05, 
			1.98276e-05, 2.35809e-05, 2.707e-05, 3.03143e-05, 3.33395e-05, 3.61644e-05, 3.88007e-05, 4.12579e-05, 4.35471e-05, 4.56707e-05, 4.76407e-05, 4.94574e-05, 5.11368e-05, 5.26788e-05, 5.40985e-05, 5.54001e-05, 
			2.30114e-05, 2.66819e-05, 3.01553e-05, 3.34236e-05, 3.64939e-05, 3.93721e-05, 4.2069e-05, 4.45876e-05, 4.69395e-05, 4.91224e-05, 5.11508e-05, 5.30274e-05, 5.47589e-05, 5.63556e-05, 5.78255e-05, 5.91697e-05, 
			2.62559e-05, 2.99166e-05, 3.34002e-05, 3.66981e-05, 3.98105e-05, 4.27412e-05, 4.54899e-05, 4.80659e-05, 5.04654e-05, 5.27026e-05, 5.47754e-05, 5.67007e-05, 5.84783e-05, 6.01142e-05, 6.16238e-05, 6.30108e-05
		)
}

CapTable	"metal3_C_TOP_GP_33MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.26189e-05, 1.59011e-05, 1.88082e-05, 2.1447e-05, 2.38738e-05, 2.6122e-05, 2.8211e-05, 3.01538e-05, 3.1961e-05, 3.36393e-05, 3.51946e-05, 3.66309e-05, 3.79588e-05, 3.91782e-05, 4.03033e-05, 4.13321e-05, 
			1.55746e-05, 1.87163e-05, 2.16195e-05, 2.43286e-05, 2.68635e-05, 2.92373e-05, 3.1459e-05, 3.35355e-05, 3.54735e-05, 3.72767e-05, 3.89519e-05, 4.04998e-05, 4.19343e-05, 4.32531e-05, 4.44664e-05, 4.55815e-05, 
			1.85002e-05, 2.16007e-05, 2.45346e-05, 2.73111e-05, 2.99316e-05, 3.24006e-05, 3.4722e-05, 3.68966e-05, 3.89269e-05, 4.08208e-05, 4.25775e-05, 4.42103e-05, 4.57159e-05, 4.71062e-05, 4.83833e-05, 4.95568e-05, 
			2.14568e-05, 2.4564e-05, 2.75409e-05, 3.03797e-05, 3.30726e-05, 3.56187e-05, 3.80149e-05, 4.0265e-05, 4.23657e-05, 4.43285e-05, 4.61506e-05, 4.7839e-05, 4.94019e-05, 5.08416e-05, 5.21672e-05, 5.3388e-05, 
			2.44549e-05, 2.75976e-05, 3.06221e-05, 3.35198e-05, 3.62761e-05, 3.88833e-05, 4.13426e-05, 4.36486e-05, 4.58109e-05, 4.78236e-05, 4.96962e-05, 5.143e-05, 5.30337e-05, 5.45161e-05, 5.58779e-05, 5.71299e-05
		)
}

CapTable	"metal3_C_LATERAL_33MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000379613, 0.0002158, 0.000155109, 0.00012193, 0.000100329, 8.47938e-05, 7.28932e-05, 6.33833e-05, 5.55576e-05, 4.8981e-05, 4.33695e-05, 3.85263e-05, 3.43118e-05, 3.06194e-05, 2.7369e-05, 2.44957e-05, 
			0.000398714, 0.000230786, 0.000167224, 0.000132058, 0.00010896, 9.2253e-05, 7.94072e-05, 6.91172e-05, 6.06376e-05, 5.35055e-05, 4.74166e-05, 4.21599e-05, 3.75836e-05, 3.35726e-05, 3.00404e-05, 2.69185e-05, 
			0.000410228, 0.000240485, 0.000175363, 0.000138977, 0.000114934, 9.74596e-05, 8.39843e-05, 7.31702e-05, 6.4246e-05, 5.67342e-05, 5.03166e-05, 4.47734e-05, 3.99448e-05, 3.57132e-05, 3.19836e-05, 2.8684e-05, 
			0.000417665, 0.000247239, 0.000181181, 0.000144003, 0.000119305, 0.00010131, 8.73897e-05, 7.62006e-05, 6.69572e-05, 5.91702e-05, 5.25126e-05, 4.67594e-05, 4.17472e-05, 3.735e-05, 3.34737e-05, 3.00434e-05, 
			0.000422828, 0.000252071, 0.000185448, 0.000147731, 0.000122573, 0.000104181, 8.99301e-05, 7.84624e-05, 6.89797e-05, 6.09848e-05, 5.41484e-05, 4.82367e-05, 4.3083e-05, 3.85619e-05, 3.45747e-05, 3.10439e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_34MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.19464e-05, 2.75492e-05, 3.22594e-05, 3.63667e-05, 4.00282e-05, 4.33441e-05, 4.63802e-05, 4.91823e-05, 5.17821e-05, 5.42039e-05, 5.64665e-05, 5.85847e-05, 6.05709e-05, 6.24359e-05, 6.41889e-05, 6.58384e-05, 
			2.63004e-05, 3.14224e-05, 3.59475e-05, 4.00142e-05, 4.37172e-05, 4.71187e-05, 5.02642e-05, 5.31889e-05, 5.59175e-05, 5.8471e-05, 6.08653e-05, 6.31145e-05, 6.52298e-05, 6.72214e-05, 6.90987e-05, 7.08694e-05, 
			3.0464e-05, 3.52951e-05, 3.9692e-05, 4.3724e-05, 4.74435e-05, 5.08939e-05, 5.41075e-05, 5.71113e-05, 5.99266e-05, 6.25703e-05, 6.50573e-05, 6.73996e-05, 6.96083e-05, 7.1693e-05, 7.36624e-05, 7.55245e-05, 
			3.45184e-05, 3.91642e-05, 4.34745e-05, 4.74774e-05, 5.1205e-05, 5.46862e-05, 5.79463e-05, 6.10067e-05, 6.38851e-05, 6.65969e-05, 6.91536e-05, 7.15681e-05, 7.38499e-05, 7.60081e-05, 7.80515e-05, 7.99876e-05, 
			3.85028e-05, 4.30464e-05, 4.72951e-05, 5.1275e-05, 5.50071e-05, 5.85119e-05, 6.18066e-05, 6.49104e-05, 6.78387e-05, 7.06045e-05, 7.32186e-05, 7.5693e-05, 7.80357e-05, 8.02558e-05, 8.23619e-05, 8.43606e-05
		)
}

CapTable	"metal3_C_LATERAL_34MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.00038302, 0.000220494, 0.000160987, 0.000128913, 0.000108337, 9.37443e-05, 8.27002e-05, 7.39564e-05, 6.68044e-05, 6.08093e-05, 5.56884e-05, 5.12487e-05, 4.73536e-05, 4.39026e-05, 4.08206e-05, 3.80489e-05, 
			0.000403407, 0.00023681, 0.000174509, 0.000140522, 0.000118522, 0.00010282, 9.08824e-05, 8.14013e-05, 7.36282e-05, 6.71009e-05, 6.15177e-05, 5.66712e-05, 5.24146e-05, 4.86396e-05, 4.52642e-05, 4.22257e-05, 
			0.000416307, 0.000247939, 0.000184125, 0.000148968, 0.000126061, 0.000109624, 9.70813e-05, 8.70901e-05, 7.88802e-05, 7.19737e-05, 6.60568e-05, 6.09137e-05, 5.63909e-05, 5.23746e-05, 4.87791e-05, 4.55381e-05, 
			0.000425228, 0.0002562, 0.000191481, 0.000155555, 0.000132012, 0.000115064, 0.000102078, 9.17081e-05, 8.31695e-05, 7.59735e-05, 6.97995e-05, 6.44252e-05, 5.96926e-05, 5.54848e-05, 5.17129e-05, 4.83087e-05, 
			0.00043195, 0.000262626, 0.000197362, 0.000160913, 0.000136916, 0.00011957, 0.000106245, 9.55828e-05, 8.67857e-05, 7.93593e-05, 7.29778e-05, 6.7415e-05, 6.25103e-05, 5.81437e-05, 5.42248e-05, 5.06836e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_21MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.47144e-05, 2.00362e-05, 2.49095e-05, 2.92515e-05, 3.30214e-05, 3.61836e-05, 3.88237e-05, 4.09793e-05, 4.27351e-05, 4.41528e-05, 4.52869e-05, 4.61905e-05, 4.69109e-05, 4.74935e-05, 4.79748e-05, 4.83435e-05, 
			2.01037e-05, 2.55553e-05, 3.06033e-05, 3.512e-05, 3.9055e-05, 4.23867e-05, 4.51553e-05, 4.74376e-05, 4.92934e-05, 5.07963e-05, 5.19868e-05, 5.29579e-05, 5.37632e-05, 5.43843e-05, 5.48799e-05, 5.52756e-05, 
			2.57317e-05, 3.12788e-05, 3.64302e-05, 4.10679e-05, 4.50919e-05, 4.85129e-05, 5.1367e-05, 5.37138e-05, 5.56081e-05, 5.71631e-05, 5.8424e-05, 5.94604e-05, 6.02686e-05, 6.09151e-05, 6.14323e-05, 6.18456e-05, 
			3.15195e-05, 3.71314e-05, 4.23667e-05, 4.70665e-05, 5.11605e-05, 5.46353e-05, 5.75386e-05, 5.99007e-05, 6.18633e-05, 6.34899e-05, 6.47716e-05, 6.58042e-05, 6.66309e-05, 6.72952e-05, 6.78254e-05, 6.82486e-05, 
			3.74196e-05, 4.30854e-05, 4.83717e-05, 5.31222e-05, 5.7253e-05, 6.07289e-05, 6.36684e-05, 6.61002e-05, 6.81206e-05, 6.9728e-05, 7.10293e-05, 7.20766e-05, 7.2917e-05, 7.35899e-05, 7.41258e-05, 7.45573e-05
		)
}

CapTable	"metal3_C_TOP_GP_21MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			4.02524e-05, 5.47574e-05, 6.71441e-05, 7.74815e-05, 8.59753e-05, 9.28987e-05, 9.8485e-05, 0.000102977, 0.00010657, 0.000109431, 0.000111713, 0.000113534, 0.000114982, 0.000116123, 0.000117007, 0.000117728, 
			5.76621e-05, 7.2525e-05, 8.52151e-05, 9.58313e-05, 0.000104581, 0.000111735, 0.000117533, 0.000122205, 0.000125954, 0.000128953, 0.000131367, 0.000133275, 0.000134758, 0.000135965, 0.000136924, 0.000137686, 
			7.57151e-05, 9.06788e-05, 0.000103475, 0.000114201, 0.000123079, 0.000130348, 0.000136253, 0.000141028, 0.00014489, 0.000147962, 0.000150413, 0.000152338, 0.000153899, 0.00015514, 0.000156124, 0.000156908, 
			9.40339e-05, 0.00010901, 0.000121844, 0.000132629, 0.000141569, 0.000148898, 0.000154869, 0.000159736, 0.000163617, 0.000166692, 0.000169187, 0.000171178, 0.000172764, 0.000174023, 0.000175027, 0.000175826, 
			0.000112466, 0.000127487, 0.000140337, 0.000151148, 0.000160129, 0.000167544, 0.000173547, 0.000178401, 0.000182272, 0.000185416, 0.00018793, 0.000189932, 0.000191533, 0.000192807, 0.000193827, 0.000194631
		)
}

CapTable	"metal3_C_LATERAL_21MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000358834, 0.000189046, 0.000124199, 8.83935e-05, 6.53988e-05, 4.94682e-05, 3.79238e-05, 2.93415e-05, 2.28446e-05, 1.78728e-05, 1.4035e-05, 1.10533e-05, 8.72634e-06, 6.90514e-06, 5.47686e-06, 4.35019e-06, 
			0.000369244, 0.000196396, 0.000129579, 9.2521e-05, 6.86344e-05, 5.20243e-05, 3.99655e-05, 3.09702e-05, 2.41472e-05, 1.89122e-05, 1.48606e-05, 1.17088e-05, 9.25e-06, 7.31839e-06, 5.79953e-06, 4.60258e-06, 
			0.000373528, 0.000199921, 0.000132362, 9.47176e-05, 7.04032e-05, 5.34492e-05, 4.11104e-05, 3.1892e-05, 2.48849e-05, 1.95023e-05, 1.53322e-05, 1.2088e-05, 9.5466e-06, 7.55185e-06, 5.98326e-06, 4.74541e-06, 
			0.000375138, 0.000201726, 0.00013389, 9.59773e-05, 7.14207e-05, 5.42917e-05, 4.17942e-05, 3.24405e-05, 2.53287e-05, 1.98605e-05, 1.56178e-05, 1.23102e-05, 9.72087e-06, 7.68874e-06, 6.08768e-06, 4.82434e-06, 
			0.000375637, 0.000202588, 0.000134727, 9.67002e-05, 7.203e-05, 5.47823e-05, 4.21954e-05, 3.27734e-05, 2.56066e-05, 2.00848e-05, 1.58015e-05, 1.24624e-05, 9.84542e-06, 7.78938e-06, 6.16846e-06, 4.88986e-06
		)
}

CapTable	"metal3_C_BOTTOM_GP_22MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.66621e-05, 2.1931e-05, 2.67093e-05, 3.10818e-05, 3.50801e-05, 3.87125e-05, 4.19971e-05, 4.49393e-05, 4.75614e-05, 4.98907e-05, 5.19389e-05, 5.37412e-05, 5.53108e-05, 5.66828e-05, 5.78733e-05, 5.89021e-05, 
			2.14862e-05, 2.67554e-05, 3.16763e-05, 3.62439e-05, 4.04478e-05, 4.42879e-05, 4.77679e-05, 5.08913e-05, 5.36789e-05, 5.61582e-05, 5.83391e-05, 6.02617e-05, 6.19429e-05, 6.34063e-05, 6.468e-05, 6.57818e-05, 
			2.65254e-05, 3.18489e-05, 3.68788e-05, 4.15792e-05, 4.59193e-05, 4.9888e-05, 5.3492e-05, 5.67293e-05, 5.96261e-05, 6.21942e-05, 6.44651e-05, 6.64622e-05, 6.82073e-05, 6.97325e-05, 7.10581e-05, 7.2203e-05, 
			3.17572e-05, 3.71326e-05, 4.22477e-05, 4.70414e-05, 5.14746e-05, 5.55307e-05, 5.9218e-05, 6.25302e-05, 6.54956e-05, 6.813e-05, 7.04547e-05, 7.25011e-05, 7.42913e-05, 7.58562e-05, 7.71925e-05, 7.84003e-05, 
			3.71357e-05, 4.25869e-05, 4.77683e-05, 5.26323e-05, 5.71322e-05, 6.12574e-05, 6.49963e-05, 6.83661e-05, 7.13789e-05, 7.40523e-05, 7.64184e-05, 7.85008e-05, 8.03186e-05, 8.18895e-05, 8.32994e-05, 8.44995e-05
		)
}

CapTable	"metal3_C_TOP_GP_22MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.67055e-05, 2.18946e-05, 2.65791e-05, 3.08651e-05, 3.4778e-05, 3.83387e-05, 4.15533e-05, 4.44402e-05, 4.70145e-05, 4.92901e-05, 5.1298e-05, 5.30544e-05, 5.4592e-05, 5.59252e-05, 5.70802e-05, 5.80808e-05, 
			2.1631e-05, 2.68395e-05, 3.16886e-05, 3.61829e-05, 4.03238e-05, 4.41017e-05, 4.75203e-05, 5.05953e-05, 5.33373e-05, 5.57645e-05, 5.79093e-05, 5.97848e-05, 6.14229e-05, 6.28498e-05, 6.40843e-05, 6.51542e-05, 
			2.67656e-05, 3.2048e-05, 3.703e-05, 4.16758e-05, 4.59649e-05, 4.98869e-05, 5.34363e-05, 5.66285e-05, 5.94733e-05, 6.19998e-05, 6.4224e-05, 6.61732e-05, 6.78775e-05, 6.93584e-05, 7.06425e-05, 7.17577e-05, 
			3.20996e-05, 3.74675e-05, 4.25529e-05, 4.73068e-05, 5.17017e-05, 5.57172e-05, 5.93527e-05, 6.26254e-05, 6.55402e-05, 6.81225e-05, 7.04021e-05, 7.23981e-05, 7.41447e-05, 7.56623e-05, 7.70057e-05, 7.8112e-05, 
			3.76033e-05, 4.30623e-05, 4.82348e-05, 5.30691e-05, 5.75382e-05, 6.16186e-05, 6.53197e-05, 6.86413e-05, 7.16017e-05, 7.42276e-05, 7.65402e-05, 7.8568e-05, 8.03453e-05, 8.19097e-05, 8.32168e-05, 8.43755e-05
		)
}

CapTable	"metal3_C_LATERAL_22MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000373876, 0.00020813, 0.000145705, 0.000111043, 8.82356e-05, 7.17772e-05, 5.92273e-05, 4.93192e-05, 4.13179e-05, 3.47567e-05, 2.93224e-05, 2.47863e-05, 2.09822e-05, 1.77786e-05, 1.50746e-05, 1.27878e-05, 
			0.000390407, 0.000220497, 0.00015521, 0.000118607, 9.43782e-05, 7.68384e-05, 6.34396e-05, 5.28522e-05, 4.42985e-05, 3.72809e-05, 3.14656e-05, 2.66105e-05, 2.25366e-05, 1.91059e-05, 1.62085e-05, 1.37568e-05, 
			0.000399311, 0.000227643, 0.000160888, 0.000123181, 9.8128e-05, 7.99445e-05, 6.6036e-05, 5.50385e-05, 4.61468e-05, 3.88514e-05, 3.28023e-05, 2.77514e-05, 2.35124e-05, 1.99408e-05, 1.69236e-05, 1.43695e-05, 
			0.000404233, 0.000232007, 0.000164457, 0.000126099, 0.000100531, 8.19605e-05, 6.773e-05, 5.64693e-05, 4.7362e-05, 3.98871e-05, 3.36882e-05, 2.85104e-05, 2.4163e-05, 2.04995e-05, 1.74012e-05, 1.47833e-05, 
			0.000407047, 0.00023466, 0.000166709, 0.000127974, 0.000102094, 8.326e-05, 6.88215e-05, 5.73924e-05, 4.8146e-05, 4.05549e-05, 3.42577e-05, 2.89968e-05, 2.45785e-05, 2.08524e-05, 1.77083e-05, 1.5043e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_23MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.82414e-05, 2.36275e-05, 2.84305e-05, 3.2786e-05, 3.67671e-05, 4.0402e-05, 4.37213e-05, 4.6751e-05, 4.95156e-05, 5.20247e-05, 5.42976e-05, 5.63513e-05, 5.82058e-05, 5.98718e-05, 6.13715e-05, 6.27129e-05, 
			2.30171e-05, 2.82822e-05, 3.31423e-05, 3.76321e-05, 4.17806e-05, 4.56021e-05, 4.91142e-05, 5.23324e-05, 5.52714e-05, 5.79505e-05, 6.03798e-05, 6.25815e-05, 6.45695e-05, 6.63629e-05, 6.79748e-05, 6.94249e-05, 
			2.79128e-05, 3.3147e-05, 3.8057e-05, 4.26409e-05, 4.69008e-05, 5.08493e-05, 5.44883e-05, 5.78287e-05, 6.08854e-05, 6.3678e-05, 6.62122e-05, 6.85139e-05, 7.05933e-05, 7.24711e-05, 7.41597e-05, 7.56825e-05, 
			3.29323e-05, 3.81604e-05, 4.31169e-05, 4.77732e-05, 5.2121e-05, 5.61546e-05, 5.98828e-05, 6.33112e-05, 6.64532e-05, 6.93217e-05, 7.19356e-05, 7.43046e-05, 7.64527e-05, 7.83889e-05, 8.01389e-05, 8.17145e-05, 
			3.80565e-05, 4.33171e-05, 4.83204e-05, 5.30369e-05, 5.74473e-05, 6.15485e-05, 6.5346e-05, 6.88395e-05, 7.20467e-05, 7.49743e-05, 7.76461e-05, 8.00671e-05, 8.22648e-05, 8.42575e-05, 8.6051e-05, 8.76568e-05
		)
}

CapTable	"metal3_C_TOP_GP_23MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.12159e-05, 1.4567e-05, 1.75197e-05, 2.0193e-05, 2.26332e-05, 2.48772e-05, 2.69419e-05, 2.88333e-05, 3.05564e-05, 3.21273e-05, 3.35545e-05, 3.48466e-05, 3.60105e-05, 3.70607e-05, 3.80009e-05, 3.88461e-05, 
			1.40843e-05, 1.73272e-05, 2.03108e-05, 2.30752e-05, 2.56367e-05, 2.80097e-05, 3.02005e-05, 3.22153e-05, 3.40614e-05, 3.57448e-05, 3.72791e-05, 3.86677e-05, 3.99249e-05, 4.10549e-05, 4.20738e-05, 4.29849e-05, 
			1.69698e-05, 2.01793e-05, 2.32011e-05, 2.60383e-05, 2.86888e-05, 3.11493e-05, 3.343e-05, 3.55337e-05, 3.74648e-05, 3.92273e-05, 4.08352e-05, 4.22913e-05, 4.36108e-05, 4.4799e-05, 4.58713e-05, 4.68303e-05, 
			1.99079e-05, 2.31218e-05, 2.61848e-05, 2.90776e-05, 3.17908e-05, 3.4321e-05, 3.66674e-05, 3.88364e-05, 4.08265e-05, 4.26495e-05, 4.43075e-05, 4.5816e-05, 4.71785e-05, 4.84116e-05, 4.95177e-05, 5.05107e-05, 
			2.29107e-05, 2.6166e-05, 2.92709e-05, 3.2215e-05, 3.49857e-05, 3.7574e-05, 3.99752e-05, 4.21964e-05, 4.42343e-05, 4.61024e-05, 4.78026e-05, 4.93503e-05, 5.07475e-05, 5.20026e-05, 5.31369e-05, 5.4166e-05
		)
}

CapTable	"metal3_C_LATERAL_23MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000376975, 0.000212341, 0.000150921, 0.000117128, 9.50281e-05, 7.91112e-05, 6.69382e-05, 5.72552e-05, 4.9343e-05, 4.27549e-05, 3.71938e-05, 3.24531e-05, 2.83808e-05, 2.48639e-05, 2.18123e-05, 1.91566e-05, 
			0.00039499, 0.000226246, 0.000161984, 0.00012624, 0.000102688, 8.56439e-05, 7.25684e-05, 6.21457e-05, 5.36169e-05, 4.65063e-05, 4.04992e-05, 3.53738e-05, 3.09672e-05, 2.71593e-05, 2.38519e-05, 2.0971e-05, 
			0.000405443, 0.00023493, 0.000169162, 0.000132259, 0.000107817, 9.00586e-05, 7.64011e-05, 6.54956e-05, 5.65597e-05, 4.91025e-05, 4.27974e-05, 3.74128e-05, 3.27818e-05, 2.8775e-05, 2.52946e-05, 2.22599e-05, 
			0.000411897, 0.000240766, 0.000174133, 0.000136499, 0.000111462, 9.32352e-05, 7.91778e-05, 6.7937e-05, 5.87168e-05, 5.10154e-05, 4.44993e-05, 3.89306e-05, 3.41376e-05, 2.99897e-05, 2.63831e-05, 2.32378e-05, 
			0.00041617, 0.00024479, 0.000177666, 0.000139562, 0.000114123, 9.55489e-05, 8.1205e-05, 6.97236e-05, 6.02969e-05, 5.24182e-05, 4.57461e-05, 4.00428e-05, 3.51305e-05, 3.08776e-05, 2.71783e-05, 2.39498e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_24MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.55234e-05, 3.25604e-05, 3.86274e-05, 4.39944e-05, 4.88004e-05, 5.31381e-05, 5.70713e-05, 6.06498e-05, 6.39135e-05, 6.68952e-05, 6.96231e-05, 7.21218e-05, 7.44134e-05, 7.65171e-05, 7.84503e-05, 8.02283e-05, 
			3.14216e-05, 3.80586e-05, 4.40216e-05, 4.94152e-05, 5.43158e-05, 5.87815e-05, 6.28606e-05, 6.65899e-05, 7.00063e-05, 7.31391e-05, 7.60147e-05, 7.86569e-05, 8.10869e-05, 8.33237e-05, 8.53845e-05, 8.7285e-05, 
			3.72484e-05, 4.36545e-05, 4.953e-05, 5.49167e-05, 5.98542e-05, 6.43824e-05, 6.85381e-05, 7.2354e-05, 7.58629e-05, 7.90888e-05, 8.20574e-05, 8.47937e-05, 8.73156e-05, 8.96427e-05, 9.1792e-05, 9.37787e-05, 
			4.30514e-05, 4.92962e-05, 5.50992e-05, 6.04626e-05, 6.54074e-05, 6.99636e-05, 7.41628e-05, 7.80304e-05, 8.15951e-05, 8.48834e-05, 8.79164e-05, 9.07172e-05, 9.33055e-05, 9.56984e-05, 9.7914e-05, 9.99656e-05, 
			4.88166e-05, 5.49693e-05, 6.07079e-05, 6.60397e-05, 7.09806e-05, 7.55482e-05, 7.97717e-05, 8.3673e-05, 8.72771e-05, 9.061e-05, 9.36914e-05, 9.65432e-05, 9.91833e-05, 0.00010163, 0.000103898, 0.000106003
		)
}

CapTable	"metal3_C_LATERAL_24MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000380176, 0.00021673, 0.000156437, 0.000123713, 0.000102617, 8.76249e-05, 7.62891e-05, 6.73478e-05, 6.00785e-05, 5.40341e-05, 4.89208e-05, 4.4536e-05, 4.07344e-05, 3.74086e-05, 3.44775e-05, 3.18777e-05, 
			0.000399507, 0.00023203, 0.000168993, 0.000134415, 0.000111957, 9.59185e-05, 8.37502e-05, 7.41283e-05, 6.62906e-05, 5.97626e-05, 5.42321e-05, 4.94827e-05, 4.53594e-05, 4.17474e-05, 3.85594e-05, 3.57274e-05, 
			0.000411384, 0.000242211, 0.000177744, 0.00014208, 0.000118797, 0.000102099, 8.93917e-05, 7.93206e-05, 7.11007e-05, 6.42432e-05, 5.84242e-05, 5.34195e-05, 4.90683e-05, 4.52511e-05, 4.18768e-05, 3.88746e-05, 
			0.000419359, 0.00024963, 0.000184359, 0.000148019, 0.000124185, 0.000107051, 9.39688e-05, 8.35786e-05, 7.50831e-05, 6.7984e-05, 6.19508e-05, 5.67546e-05, 5.22301e-05, 4.82552e-05, 4.47362e-05, 4.1601e-05, 
			0.000425256, 0.00025534, 0.000189629, 0.000152859, 0.000128651, 0.000111189, 9.78309e-05, 8.72026e-05, 7.84969e-05, 7.12104e-05, 6.50084e-05, 5.9659e-05, 5.49945e-05, 5.08906e-05, 4.72525e-05, 4.40068e-05
		)
}

CapTable	"metal3_C_BOTTOM_GPMAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			3.80605e-05, 5.31194e-05, 6.60748e-05, 7.65652e-05, 8.4635e-05, 9.06104e-05, 9.49151e-05, 9.79462e-05, 0.000100056, 0.000101506, 0.000102497, 0.00010317, 0.000103623, 0.000103928, 0.000104134, 0.000104272, 
			5.60979e-05, 7.16666e-05, 8.49283e-05, 9.56073e-05, 0.0001038, 0.000109864, 0.000114217, 0.000117291, 0.000119422, 0.000120885, 0.00012188, 0.000122553, 0.000123005, 0.000123308, 0.000123509, 0.000123644, 
			7.48531e-05, 9.05505e-05, 0.000103873, 0.000114586, 0.000122785, 0.000128854, 0.000133208, 0.000136272, 0.000138397, 0.000139851, 0.000140836, 0.000141501, 0.000141945, 0.00014224, 0.000142435, 0.000142565, 
			9.38399e-05, 0.000109536, 0.000122853, 0.00013354, 0.000141735, 0.00014777, 0.000152104, 0.000155151, 0.000157256, 0.000158696, 0.000159667, 0.000160321, 0.000160755, 0.000161041, 0.00016123, 0.00016135, 
			0.000112847, 0.000128537, 0.000141824, 0.000152481, 0.000160636, 0.000166645, 0.000170954, 0.000173972, 0.000176058, 0.000177479, 0.000178437, 0.000179078, 0.000179502, 0.00017978, 0.00017996, 0.000180081
		)
}

CapTable	"metal3_C_TOP_GPMAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			3.75871e-05, 5.21447e-05, 6.45329e-05, 7.44828e-05, 8.20999e-05, 8.77233e-05, 9.17601e-05, 9.46114e-05, 9.65887e-05, 9.79531e-05, 9.88865e-05, 9.95203e-05, 9.99517e-05, 0.000100244, 0.00010044, 0.000100571, 
			5.56025e-05, 7.06426e-05, 8.33139e-05, 9.34448e-05, 0.000101183, 0.000106884, 0.000110989, 0.00011387, 0.000115877, 0.000117256, 0.000118201, 0.000118843, 0.000119278, 0.000119571, 0.000119766, 0.000119893, 
			7.42301e-05, 8.93854e-05, 0.000102119, 0.000112277, 0.000120042, 0.000125747, 0.000129851, 0.000132742, 0.000134747, 0.000136128, 0.000137072, 0.000137712, 0.000138144, 0.000138433, 0.000138622, 0.000138744, 
			9.30363e-05, 0.000108189, 0.000120911, 0.000131075, 0.000138813, 0.000144512, 0.000148604, 0.000151487, 0.000153489, 0.000154864, 0.000155802, 0.000156436, 0.000156862, 0.000157144, 0.000157328, 0.000157447, 
			0.000111876, 0.000127051, 0.000139751, 0.000149885, 0.000157616, 0.000163302, 0.000167383, 0.000170253, 0.000172243, 0.00017361, 0.000174539, 0.000175167, 0.000175587, 0.000175867, 0.000176043, 0.000176151
		)
}

CapTable	"metal3_C_LATERALMAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000344747, 0.00017081, 0.000103505, 6.6792e-05, 4.41694e-05, 2.95047e-05, 1.97856e-05, 1.32801e-05, 8.90848e-06, 5.96546e-06, 3.98401e-06, 2.65079e-06, 1.75386e-06, 1.15121e-06, 7.46925e-07, 4.76806e-07, 
			0.000349115, 0.0001732, 0.000104821, 6.75707e-05, 4.46337e-05, 2.97732e-05, 1.99268e-05, 1.33425e-05, 8.9203e-06, 5.94807e-06, 3.95007e-06, 2.60876e-06, 1.7099e-06, 1.10915e-06, 7.09654e-07, 4.46418e-07, 
			0.000348852, 0.000173159, 0.000104754, 6.74694e-05, 4.45211e-05, 2.96562e-05, 1.9812e-05, 1.32318e-05, 8.81882e-06, 5.85592e-06, 3.86884e-06, 2.53882e-06, 1.65141e-06, 1.06235e-06, 6.74663e-07, 4.22794e-07, 
			0.000347214, 0.000172444, 0.000104289, 6.7114e-05, 4.42299e-05, 2.94353e-05, 1.96295e-05, 1.30801e-05, 8.69173e-06, 5.75117e-06, 3.7837e-06, 2.47145e-06, 1.60034e-06, 1.02634e-06, 6.5263e-07, 4.12756e-07, 
			0.000345464, 0.000171541, 0.000103719, 6.67125e-05, 4.39267e-05, 2.91852e-05, 1.94282e-05, 1.29233e-05, 8.56993e-06, 5.65732e-06, 3.71302e-06, 2.42018e-06, 1.56555e-06, 1.0057e-06, 6.44932e-07, 4.15632e-07
		)
}

CapTable	"metal3_C_BOTTOM_GP_12MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			4.07637e-05, 5.57819e-05, 6.87225e-05, 7.9564e-05, 8.84696e-05, 9.56939e-05, 0.000101501, 0.000106139, 0.00010983, 0.000112757, 0.000115081, 0.000116916, 0.000118365, 0.000119515, 0.00012042, 0.000121139, 
			5.81189e-05, 7.34926e-05, 8.67336e-05, 9.78578e-05, 0.000107032, 0.000114503, 0.000120531, 0.000125365, 0.000129222, 0.000132294, 0.000134729, 0.00013666, 0.000138191, 0.000139404, 0.000140365, 0.000141128, 
			7.61482e-05, 9.16156e-05, 0.000104964, 0.000116209, 0.000125511, 0.000133108, 0.000139252, 0.000144194, 0.000148142, 0.000151285, 0.000153793, 0.000155774, 0.00015735, 0.0001586, 0.000159594, 0.000160383, 
			9.44518e-05, 0.000109938, 0.000123328, 0.000134633, 0.000144005, 0.000151666, 0.000157879, 0.000162876, 0.000166874, 0.000170068, 0.00017261, 0.00017463, 0.000176236, 0.000177512, 0.000178522, 0.000179326, 
			0.000112863, 0.00012838, 0.000141788, 0.000153119, 0.000162533, 0.000170234, 0.000176481, 0.000181513, 0.000185541, 0.000188761, 0.000191325, 0.000193368, 0.000194991, 0.000196279, 0.000197303, 0.00019812
		)
}

CapTable	"metal3_C_TOP_GP_12MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.47799e-05, 2.00222e-05, 2.47927e-05, 2.90231e-05, 3.26634e-05, 3.5719e-05, 3.82432e-05, 4.03017e-05, 4.19665e-05, 4.33063e-05, 4.43747e-05, 4.52304e-05, 4.59154e-05, 4.64549e-05, 4.68923e-05, 4.7235e-05, 
			2.02237e-05, 2.55706e-05, 3.05122e-05, 3.4916e-05, 3.87254e-05, 4.19418e-05, 4.46085e-05, 4.67943e-05, 4.85681e-05, 4.99967e-05, 5.1147e-05, 5.20691e-05, 5.28035e-05, 5.33882e-05, 5.38537e-05, 5.42238e-05, 
			2.58404e-05, 3.12787e-05, 3.63238e-05, 4.08401e-05, 4.47534e-05, 4.80649e-05, 5.08197e-05, 5.30761e-05, 5.49156e-05, 5.6405e-05, 5.75956e-05, 5.85598e-05, 5.93246e-05, 5.99347e-05, 6.04197e-05, 6.08063e-05, 
			3.15944e-05, 3.70958e-05, 4.22188e-05, 4.68075e-05, 5.07914e-05, 5.41632e-05, 5.69691e-05, 5.92792e-05, 6.11621e-05, 6.26823e-05, 6.39057e-05, 6.48865e-05, 6.56708e-05, 6.62955e-05, 6.67941e-05, 6.7191e-05, 
			3.74396e-05, 4.30086e-05, 4.81865e-05, 5.28283e-05, 5.68523e-05, 6.02672e-05, 6.31138e-05, 6.54506e-05, 6.73616e-05, 6.89035e-05, 7.0145e-05, 7.11397e-05, 7.19365e-05, 7.25724e-05, 7.30803e-05, 7.34822e-05
		)
}

CapTable	"metal3_C_LATERAL_12MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.00035852, 0.000188619, 0.000123661, 8.77671e-05, 6.4731e-05, 4.87852e-05, 3.72646e-05, 2.87216e-05, 2.22783e-05, 1.73614e-05, 1.35776e-05, 1.06478e-05, 8.36749e-06, 6.58672e-06, 5.19047e-06, 4.09366e-06, 
			0.00036916, 0.000196235, 0.0001293, 9.21264e-05, 6.81643e-05, 5.15158e-05, 3.94478e-05, 3.04693e-05, 2.36796e-05, 1.8485e-05, 1.44789e-05, 1.13706e-05, 8.94793e-06, 7.0527e-06, 5.56559e-06, 4.39583e-06, 
			0.00037371, 0.000200012, 0.000132301, 9.45146e-05, 7.0089e-05, 5.30698e-05, 4.07039e-05, 3.14868e-05, 2.45029e-05, 1.91513e-05, 1.50188e-05, 1.18075e-05, 9.30216e-06, 7.34031e-06, 5.79981e-06, 4.58685e-06, 
			0.000375561, 0.000202019, 0.000134003, 9.59137e-05, 7.12258e-05, 5.40148e-05, 4.1477e-05, 3.21194e-05, 2.50201e-05, 1.95747e-05, 1.5365e-05, 1.20917e-05, 9.53554e-06, 7.53262e-06, 5.95829e-06, 4.71803e-06, 
			0.00037627, 0.000203041, 0.000134967, 9.67453e-05, 7.19272e-05, 5.45871e-05, 4.19496e-05, 3.2513e-05, 2.53466e-05, 1.98453e-05, 1.55891e-05, 1.22779e-05, 9.68985e-06, 7.66032e-06, 6.06396e-06, 4.80592e-06
		)
}

CapTable	"metal3_C_BOTTOM_GP_13MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			4.2733e-05, 5.80612e-05, 7.11579e-05, 8.20964e-05, 9.11078e-05, 9.84841e-05, 0.000104508, 0.000109424, 0.000113443, 0.00011674, 0.000119443, 0.000121676, 0.000123525, 0.000125053, 0.000126327, 0.000127394, 
			6.01656e-05, 7.56619e-05, 8.89407e-05, 0.000100085, 0.00010933, 0.000116954, 0.00012322, 0.000128371, 0.00013261, 0.000136104, 0.000138993, 0.000141385, 0.000143378, 0.000145033, 0.000146416, 0.000147575, 
			7.80899e-05, 9.35514e-05, 0.000106849, 0.000118071, 0.000127431, 0.000135191, 0.00014161, 0.000146906, 0.00015129, 0.000154921, 0.000157927, 0.000160429, 0.00016252, 0.000164263, 0.000165726, 0.00016695, 
			9.61701e-05, 0.000111557, 0.000124845, 0.000136104, 0.000145536, 0.000153384, 0.000159901, 0.000165308, 0.000169789, 0.000173517, 0.000176616, 0.000179199, 0.000181359, 0.00018317, 0.000184695, 0.000185973, 
			0.00011428, 0.000129642, 0.000142915, 0.000154202, 0.000163681, 0.000171601, 0.0001782, 0.000183674, 0.000188231, 0.000192031, 0.000195198, 0.000197845, 0.000200057, 0.000201926, 0.000203493, 0.000204817
		)
}

CapTable	"metal3_C_TOP_GP_13MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			9.7082e-06, 1.30221e-05, 1.6017e-05, 1.86705e-05, 2.09692e-05, 2.29261e-05, 2.45732e-05, 2.59543e-05, 2.71054e-05, 2.80605e-05, 2.88614e-05, 2.95247e-05, 3.00754e-05, 3.05424e-05, 3.09298e-05, 3.12519e-05, 
			1.30068e-05, 1.63139e-05, 1.93624e-05, 2.20979e-05, 2.44888e-05, 2.6545e-05, 2.8295e-05, 2.9772e-05, 3.10114e-05, 3.20495e-05, 3.29179e-05, 3.36469e-05, 3.42531e-05, 3.47659e-05, 3.51989e-05, 3.55603e-05, 
			1.63275e-05, 1.96381e-05, 2.27245e-05, 2.55133e-05, 2.79724e-05, 3.00983e-05, 3.19109e-05, 3.3455e-05, 3.47533e-05, 3.58432e-05, 3.67676e-05, 3.7542e-05, 3.81884e-05, 3.87376e-05, 3.9199e-05, 3.95942e-05, 
			1.96715e-05, 2.29891e-05, 2.61058e-05, 2.89408e-05, 3.14499e-05, 3.36256e-05, 3.54917e-05, 3.70786e-05, 3.84243e-05, 3.95549e-05, 4.05129e-05, 4.13232e-05, 4.20029e-05, 4.25776e-05, 4.30594e-05, 4.34735e-05, 
			2.30334e-05, 2.63806e-05, 2.95301e-05, 3.23952e-05, 3.49464e-05, 3.71601e-05, 3.90603e-05, 4.069e-05, 4.20704e-05, 4.32334e-05, 4.42221e-05, 4.50554e-05, 4.57649e-05, 4.6354e-05, 4.68598e-05, 4.72853e-05
		)
}

CapTable	"metal3_C_LATERAL_13MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000360937, 0.000192074, 0.000128058, 9.29356e-05, 7.04578e-05, 5.48512e-05, 4.347e-05, 3.48984e-05, 2.8294e-05, 2.31188e-05, 1.90093e-05, 1.57119e-05, 1.30417e-05, 1.08636e-05, 9.07595e-06, 7.60029e-06, 
			0.000373016, 0.000201218, 0.000135262, 9.8852e-05, 7.54082e-05, 5.90358e-05, 4.70274e-05, 3.79327e-05, 3.08879e-05, 2.53396e-05, 2.09124e-05, 1.73439e-05, 1.44424e-05, 1.20668e-05, 1.01092e-05, 8.48859e-06, 
			0.000379112, 0.000206549, 0.000139786, 0.000102706, 7.87217e-05, 6.18898e-05, 4.94903e-05, 4.00599e-05, 3.27267e-05, 2.69282e-05, 2.22856e-05, 1.85305e-05, 1.54682e-05, 1.29529e-05, 1.08753e-05, 9.14987e-06, 
			0.000382508, 0.000210055, 0.000142919, 0.00010545, 8.11098e-05, 6.39881e-05, 5.13198e-05, 4.16539e-05, 3.41141e-05, 2.81355e-05, 2.33359e-05, 1.94429e-05, 1.62607e-05, 1.36411e-05, 1.14723e-05, 9.66756e-06, 
			0.000384703, 0.000212482, 0.000145193, 0.000107492, 8.29192e-05, 6.55701e-05, 5.27061e-05, 4.28705e-05, 3.51789e-05, 2.90665e-05, 2.41473e-05, 2.01501e-05, 1.68749e-05, 1.41746e-05, 1.19342e-05, 1.00668e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_14MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			4.99058e-05, 6.72165e-05, 8.19171e-05, 9.41483e-05, 0.000104202, 0.000112431, 0.000119168, 0.0001247, 0.000129264, 0.000133053, 0.000136215, 0.000138875, 0.000141126, 0.000143042, 0.000144686, 0.000146103, 
			6.91166e-05, 8.63565e-05, 0.000101074, 0.000113394, 0.000123603, 0.000132033, 0.000138995, 0.000144763, 0.000149563, 0.00015358, 0.000156962, 0.000159825, 0.000162267, 0.000164361, 0.000166169, 0.000167737, 
			8.8557e-05, 0.000105563, 0.00012015, 0.000132441, 0.000142696, 0.000151224, 0.000158313, 0.00016423, 0.000169186, 0.000173358, 0.000176894, 0.000179908, 0.000182491, 0.000184719, 0.000186652, 0.000188338, 
			0.000107927, 0.000124688, 0.000139138, 0.000151378, 0.000161647, 0.000170226, 0.000177405, 0.000183427, 0.000188499, 0.000192793, 0.000196449, 0.000199581, 0.000202278, 0.000204614, 0.00020665, 0.000208433, 
			0.000127117, 0.000143717, 0.000158046, 0.000170226, 0.000180492, 0.000189111, 0.000196351, 0.000202448, 0.000207609, 0.000211998, 0.000215748, 0.000218975, 0.000221767, 0.000224193, 0.000226316, 0.00022818
		)
}

CapTable	"metal3_C_LATERAL_14MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000362958, 0.00019501, 0.000131902, 9.76307e-05, 7.59055e-05, 6.09311e-05, 5.00559e-05, 4.18695e-05, 3.5541e-05, 3.05458e-05, 2.65349e-05, 2.32676e-05, 2.05723e-05, 1.8324e-05, 1.64301e-05, 1.48205e-05, 
			0.000376158, 0.000205398, 0.000140461, 0.000104995, 8.2376e-05, 6.6689e-05, 5.52224e-05, 4.65326e-05, 3.97695e-05, 3.43946e-05, 3.00499e-05, 2.64874e-05, 2.35301e-05, 2.10483e-05, 1.89454e-05, 1.71483e-05, 
			0.000383538, 0.000212108, 0.000146444, 0.000110368, 8.72511e-05, 7.11304e-05, 5.92838e-05, 5.02575e-05, 4.31934e-05, 3.75488e-05, 3.29613e-05, 2.91802e-05, 2.60249e-05, 2.33642e-05, 2.10991e-05, 1.91545e-05, 
			0.000388357, 0.000217102, 0.000151116, 0.000114686, 9.12341e-05, 7.48289e-05, 6.27071e-05, 5.34293e-05, 4.61359e-05, 4.02816e-05, 3.55029e-05, 3.15465e-05, 2.82313e-05, 2.54243e-05, 2.30251e-05, 2.09577e-05, 
			0.00039207, 0.000221099, 0.000154993, 0.000118353, 9.46756e-05, 7.8038e-05, 6.57065e-05, 5.62363e-05, 4.87628e-05, 4.27409e-05, 3.78067e-05, 3.37064e-05, 3.02582e-05, 2.73281e-05, 2.48156e-05, 2.26433e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_51MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			6.18814e-06, 8.65312e-06, 1.04448e-05, 1.22445e-05, 1.37887e-05, 1.5107e-05, 1.62002e-05, 1.71408e-05, 1.79322e-05, 1.85975e-05, 1.91544e-05, 1.96298e-05, 2.00329e-05, 2.03753e-05, 2.06671e-05, 2.09152e-05, 
			8.11356e-06, 1.03881e-05, 1.24618e-05, 1.42932e-05, 1.5885e-05, 1.72325e-05, 1.83959e-05, 1.93815e-05, 2.02115e-05, 2.09194e-05, 2.15204e-05, 2.20304e-05, 2.24657e-05, 2.28368e-05, 2.31547e-05, 2.34318e-05, 
			1.01865e-05, 1.2426e-05, 1.44987e-05, 1.63303e-05, 1.79481e-05, 1.9343e-05, 2.05335e-05, 2.15457e-05, 2.24115e-05, 2.31484e-05, 2.37769e-05, 2.43137e-05, 2.4772e-05, 2.51713e-05, 2.55088e-05, 2.66489e-05, 
			1.22626e-05, 1.44768e-05, 1.65288e-05, 1.83856e-05, 2.00161e-05, 2.14206e-05, 2.26363e-05, 2.36757e-05, 2.4563e-05, 2.53238e-05, 2.59735e-05, 2.65308e-05, 2.70155e-05, 2.74277e-05, 2.86434e-05, 2.8842e-05, 
			1.43247e-05, 1.65346e-05, 1.85993e-05, 2.04624e-05, 2.21035e-05, 2.35334e-05, 2.4768e-05, 2.58278e-05, 2.67383e-05, 2.75187e-05, 2.8195e-05, 2.87706e-05, 3.02406e-05, 3.05551e-05, 3.08158e-05, 3.10328e-05
		)
}

CapTable	"metal4_C_TOP_GP_51MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			4.46081e-05, 5.97584e-05, 7.31282e-05, 8.39758e-05, 9.29097e-05, 0.000100308, 0.000106369, 0.000111434, 0.000115634, 0.000119139, 0.00012206, 0.000124531, 0.000126622, 0.000128399, 0.000129918, 0.000131223, 
			6.28678e-05, 7.83824e-05, 9.15705e-05, 0.000102593, 0.000111796, 0.000119402, 0.000125771, 0.000131076, 0.000135504, 0.000139236, 0.000142384, 0.000145053, 0.000147325, 0.000149271, 0.000150942, 0.000152379, 
			8.14113e-05, 9.68639e-05, 0.000110085, 0.000121179, 0.000130516, 0.000138316, 0.000144848, 0.000150311, 0.000154923, 0.000158819, 0.000162126, 0.000164944, 0.000167359, 0.000169427, 0.000171217, 0.000171836, 
			0.000100062, 0.000115489, 0.000128679, 0.000139876, 0.000149297, 0.000157195, 0.000163852, 0.000169466, 0.000174213, 0.000178242, 0.000181681, 0.000184622, 0.000187142, 0.000189325, 0.000190264, 0.000192035, 
			0.000118765, 0.000134221, 0.000147473, 0.000158731, 0.000168218, 0.000176232, 0.000183, 0.000188724, 0.000193585, 0.00019773, 0.000201265, 0.000204309, 0.000205855, 0.000208256, 0.00021036, 0.000212212
		)
}

CapTable	"metal4_C_LATERAL_51MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000362104, 0.000193745, 0.00013012, 9.54005e-05, 7.32687e-05, 5.78712e-05, 4.66659e-05, 3.81111e-05, 3.14616e-05, 2.61883e-05, 2.196e-05, 1.84937e-05, 1.56359e-05, 1.3257e-05, 1.12602e-05, 9.57152e-06, 
			0.000374332, 0.000202986, 0.00013751, 0.000101564, 7.84633e-05, 6.2382e-05, 5.0496e-05, 4.14336e-05, 3.43627e-05, 2.87036e-05, 2.41196e-05, 2.03588e-05, 1.72397e-05, 1.46286e-05, 1.24249e-05, 1.05518e-05, 
			0.000380607, 0.000208545, 0.000142281, 0.000105713, 8.20767e-05, 6.5483e-05, 5.32045e-05, 4.38147e-05, 3.64137e-05, 3.04814e-05, 2.56515e-05, 2.16693e-05, 1.83508e-05, 1.55603e-05, 1.31942e-05, 1.12534e-05, 
			0.000384247, 0.000212282, 0.000145706, 0.000108693, 8.47025e-05, 6.78252e-05, 5.52569e-05, 4.55837e-05, 3.79456e-05, 3.17962e-05, 2.67687e-05, 2.26064e-05, 1.91243e-05, 1.61837e-05, 1.37667e-05, 1.16111e-05, 
			0.000386708, 0.000214973, 0.000148183, 0.000110915, 8.66863e-05, 6.95302e-05, 5.67316e-05, 4.6849e-05, 3.90169e-05, 3.26883e-05, 2.7497e-05, 2.31834e-05, 1.96596e-05, 1.65829e-05, 1.39534e-05, 1.1691e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_52MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			7.94024e-06, 1.05448e-05, 1.27859e-05, 1.47769e-05, 1.65745e-05, 1.82137e-05, 1.97134e-05, 2.10862e-05, 2.23482e-05, 2.34963e-05, 2.4544e-05, 2.55084e-05, 2.63851e-05, 2.71743e-05, 2.78995e-05, 2.85568e-05, 
			9.89828e-06, 1.23775e-05, 1.4615e-05, 1.66515e-05, 1.85165e-05, 2.02332e-05, 2.18102e-05, 2.32606e-05, 2.45958e-05, 2.58168e-05, 2.69403e-05, 2.79584e-05, 2.88964e-05, 2.97504e-05, 3.05211e-05, 3.12295e-05, 
			1.19069e-05, 1.43193e-05, 1.65554e-05, 1.86193e-05, 2.05268e-05, 2.22961e-05, 2.39238e-05, 2.54244e-05, 2.68142e-05, 2.80886e-05, 2.92516e-05, 3.0323e-05, 3.13033e-05, 3.21916e-05, 3.30084e-05, 3.37509e-05, 
			1.39614e-05, 1.63348e-05, 1.8571e-05, 2.06538e-05, 2.25928e-05, 2.43936e-05, 2.60597e-05, 2.76055e-05, 2.9022e-05, 3.03331e-05, 3.15382e-05, 3.26379e-05, 3.36511e-05, 3.45771e-05, 3.54221e-05, 3.61935e-05, 
			1.60524e-05, 1.84215e-05, 2.06674e-05, 2.27697e-05, 2.47328e-05, 2.65684e-05, 2.82705e-05, 2.98397e-05, 3.1297e-05, 3.26396e-05, 3.38702e-05, 3.5005e-05, 3.60448e-05, 3.69977e-05, 3.78676e-05, 3.86614e-05
		)
}

CapTable	"metal4_C_TOP_GP_52MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.03832e-05, 2.58832e-05, 3.07667e-05, 3.51911e-05, 3.92318e-05, 4.29338e-05, 4.63299e-05, 4.94462e-05, 5.22991e-05, 5.49151e-05, 5.73056e-05, 5.94818e-05, 6.14685e-05, 6.32817e-05, 6.4927e-05, 6.64254e-05, 
			2.56155e-05, 3.0967e-05, 3.58945e-05, 4.04548e-05, 4.46764e-05, 4.85787e-05, 5.21826e-05, 5.5504e-05, 5.85567e-05, 6.13591e-05, 6.39258e-05, 6.62771e-05, 6.84223e-05, 7.03819e-05, 7.2169e-05, 7.37954e-05, 
			3.08715e-05, 3.61918e-05, 4.11755e-05, 4.58409e-05, 5.01922e-05, 5.42338e-05, 5.79832e-05, 6.14473e-05, 6.46346e-05, 6.75711e-05, 7.02668e-05, 7.2736e-05, 7.49967e-05, 7.70636e-05, 7.89508e-05, 8.06747e-05, 
			3.62174e-05, 4.15496e-05, 4.6594e-05, 5.13463e-05, 5.5798e-05, 5.99458e-05, 6.37998e-05, 6.73674e-05, 7.06658e-05, 7.37012e-05, 7.64925e-05, 7.90552e-05, 8.14037e-05, 8.35527e-05, 8.55203e-05, 8.73135e-05, 
			4.16402e-05, 4.70182e-05, 5.21172e-05, 5.6939e-05, 6.14674e-05, 6.56925e-05, 6.9629e-05, 7.32787e-05, 7.66522e-05, 7.97656e-05, 8.26314e-05, 8.5265e-05, 8.76833e-05, 8.98941e-05, 9.19216e-05, 9.37752e-05
		)
}

CapTable	"metal4_C_LATERAL_52MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000377919, 0.000213716, 0.000152699, 0.000119274, 9.75022e-05, 8.18681e-05, 6.99317e-05, 6.04391e-05, 5.26711e-05, 4.61857e-05, 4.06899e-05, 3.59755e-05, 3.1897e-05, 2.83489e-05, 2.52372e-05, 2.24988e-05, 
			0.000396264, 0.000227966, 0.000164121, 0.000128754, 0.000105535, 8.87776e-05, 7.59402e-05, 6.5707e-05, 5.7318e-05, 5.03065e-05, 4.4352e-05, 3.92456e-05, 3.4818e-05, 3.09568e-05, 2.75769e-05, 2.45937e-05, 
			0.000407084, 0.000237013, 0.000171661, 0.000135132, 0.000111022, 9.35435e-05, 8.01164e-05, 6.93921e-05, 6.05856e-05, 5.32092e-05, 4.69454e-05, 4.15568e-05, 3.6885e-05, 3.28112e-05, 2.92295e-05, 2.607e-05, 
			0.000413907, 0.000243209, 0.000176985, 0.000139719, 0.000115002, 9.70432e-05, 8.32042e-05, 7.21255e-05, 6.30202e-05, 5.53795e-05, 4.88785e-05, 4.32897e-05, 3.84328e-05, 3.41888e-05, 3.04578e-05, 2.71652e-05, 
			0.000418561, 0.00024761, 0.000180884, 0.000143137, 0.000118008, 9.96876e-05, 8.55411e-05, 7.4207e-05, 6.48696e-05, 5.70298e-05, 5.0356e-05, 4.46023e-05, 3.96029e-05, 3.5231e-05, 3.13844e-05, 2.79866e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_53MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.82476e-05, 2.24832e-05, 2.59171e-05, 2.8831e-05, 3.13768e-05, 3.36543e-05, 3.57273e-05, 3.76393e-05, 3.94205e-05, 4.10927e-05, 4.26707e-05, 4.41666e-05, 4.55895e-05, 4.69458e-05, 4.82412e-05, 4.94801e-05, 
			2.1294e-05, 2.50117e-05, 2.82038e-05, 3.1012e-05, 3.35342e-05, 3.5833e-05, 3.79565e-05, 3.99363e-05, 4.17953e-05, 4.35512e-05, 4.52169e-05, 4.68023e-05, 4.83147e-05, 4.97603e-05, 5.1144e-05, 5.247e-05, 
			2.40688e-05, 2.74621e-05, 3.04828e-05, 3.32111e-05, 3.57076e-05, 3.80167e-05, 4.01699e-05, 4.21952e-05, 4.41084e-05, 4.59245e-05, 4.76535e-05, 4.93042e-05, 5.0883e-05, 5.23951e-05, 5.38451e-05, 5.52367e-05, 
			2.66714e-05, 2.98516e-05, 3.27547e-05, 3.54259e-05, 3.7903e-05, 4.02178e-05, 4.23954e-05, 4.44548e-05, 4.64094e-05, 4.82719e-05, 5.00508e-05, 5.1753e-05, 5.33841e-05, 5.49493e-05, 5.64518e-05, 5.78957e-05, 
			2.91536e-05, 3.22067e-05, 3.50272e-05, 3.76555e-05, 4.01187e-05, 4.24379e-05, 4.46337e-05, 4.67194e-05, 4.8708e-05, 5.06066e-05, 5.24259e-05, 5.41694e-05, 5.58429e-05, 5.74507e-05, 5.89963e-05, 6.04824e-05
		)
}

CapTable	"metal4_C_LATERAL_53MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000386033, 0.000224448, 0.000165764, 0.000134417, 0.000114479, 0.000100443, 8.9878e-05, 8.15444e-05, 7.47393e-05, 6.90337e-05, 6.41514e-05, 5.99043e-05, 5.61607e-05, 5.28254e-05, 4.98268e-05, 4.71111e-05, 
			0.000407392, 0.000241721, 0.000180239, 0.000146973, 0.000125598, 0.000110436, 9.89604e-05, 8.98694e-05, 8.24228e-05, 7.61653e-05, 7.08014e-05, 6.61298e-05, 6.20088e-05, 5.83349e-05, 5.50312e-05, 5.2038e-05, 
			0.000421285, 0.000253807, 0.000190782, 0.000156313, 0.000133999, 0.000118069, 0.000105955, 9.63236e-05, 8.8412e-05, 8.17491e-05, 7.60284e-05, 7.10396e-05, 6.66347e-05, 6.27049e-05, 5.91688e-05, 5.59639e-05, 
			0.000431172, 0.000262989, 0.000199013, 0.000163729, 0.000140734, 0.000124251, 0.000111656, 0.000101611, 9.33397e-05, 8.63604e-05, 8.03586e-05, 7.5119e-05, 7.0488e-05, 6.63533e-05, 6.2631e-05, 5.92556e-05, 
			0.000438816, 0.000270285, 0.000205709, 0.000169849, 0.000146355, 0.00012943, 0.000116459, 0.000106088, 9.7529e-05, 9.0295e-05, 8.40655e-05, 7.86212e-05, 7.38049e-05, 6.95019e-05, 6.56256e-05, 6.21093e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_41MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			7.45598e-06, 1.02837e-05, 1.27764e-05, 1.49521e-05, 1.67901e-05, 1.83749e-05, 1.96742e-05, 2.07981e-05, 2.1741e-05, 2.25187e-05, 2.31853e-05, 2.37454e-05, 2.42183e-05, 2.46182e-05, 2.49613e-05, 2.52441e-05, 
			9.99446e-06, 1.27799e-05, 1.52915e-05, 1.7491e-05, 1.94123e-05, 2.10179e-05, 2.24115e-05, 2.35883e-05, 2.45682e-05, 2.54093e-05, 2.61187e-05, 2.67193e-05, 2.72313e-05, 2.76669e-05, 2.80318e-05, 2.85054e-05, 
			1.25738e-05, 1.52965e-05, 1.78205e-05, 2.00252e-05, 2.19738e-05, 2.36487e-05, 2.50617e-05, 2.62755e-05, 2.73053e-05, 2.81786e-05, 2.89208e-05, 2.9556e-05, 3.00874e-05, 3.05483e-05, 3.10804e-05, 3.1381e-05, 
			1.51431e-05, 1.78604e-05, 2.03416e-05, 2.25887e-05, 2.45524e-05, 2.62332e-05, 2.76872e-05, 2.89279e-05, 2.9983e-05, 3.08868e-05, 3.16561e-05, 3.23057e-05, 3.30263e-05, 3.34692e-05, 3.38484e-05, 3.41807e-05, 
			1.77104e-05, 2.04182e-05, 2.29312e-05, 2.51723e-05, 2.71536e-05, 2.88697e-05, 3.03467e-05, 3.16109e-05, 3.26956e-05, 3.36137e-05, 3.44056e-05, 3.52082e-05, 3.5756e-05, 3.62299e-05, 3.66412e-05, 3.69972e-05
		)
}

CapTable	"metal4_C_TOP_GP_41MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			4.33822e-05, 5.82673e-05, 7.08977e-05, 8.14031e-05, 9.00885e-05, 9.72411e-05, 0.00010312, 0.000107995, 0.000112028, 0.000115378, 0.000118177, 0.00012052, 0.000122492, 0.000124156, 0.000125565, 0.000126772, 
			6.09827e-05, 7.60164e-05, 8.88007e-05, 9.94927e-05, 0.000108389, 0.00011576, 0.000121893, 0.000126989, 0.000131241, 0.0001348, 0.000137789, 0.000140308, 0.000142437, 0.000144246, 0.000145793, 0.000146943, 
			7.89638e-05, 9.39679e-05, 0.00010676, 0.000117512, 0.00012652, 0.000134031, 0.000140302, 0.000145551, 0.000149951, 0.000153653, 0.000156776, 0.000159417, 0.000161672, 0.000163586, 0.000165077, 0.00016652, 
			9.70683e-05, 0.000111991, 0.000124764, 0.000135565, 0.000144637, 0.000152235, 0.00015861, 0.000163967, 0.000168477, 0.000172283, 0.00017551, 0.000178259, 0.000180426, 0.000182461, 0.000184209, 0.000185707, 
			0.000115176, 0.000130106, 0.000142885, 0.000153714, 0.000162842, 0.000170514, 0.00017697, 0.000182406, 0.000186995, 0.000190896, 0.000194197, 0.000196881, 0.000199319, 0.000201403, 0.000203193, 0.000204739
		)
}

CapTable	"metal4_C_LATERAL_41MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000362065, 0.000193634, 0.000130046, 9.53117e-05, 7.31573e-05, 5.77573e-05, 4.65458e-05, 3.80108e-05, 3.139e-05, 2.61688e-05, 2.19632e-05, 1.85472e-05, 1.57447e-05, 1.34252e-05, 1.14918e-05, 9.86877e-06, 
			0.000374326, 0.000202961, 0.000137467, 0.000101504, 7.8402e-05, 6.23176e-05, 5.0454e-05, 4.14246e-05, 3.43907e-05, 2.87837e-05, 2.42598e-05, 2.05657e-05, 1.75197e-05, 1.49869e-05, 1.2865e-05, 1.10894e-05, 
			0.00038064, 0.000208555, 0.000142285, 0.000105708, 8.20873e-05, 6.55206e-05, 5.32977e-05, 4.39359e-05, 3.65963e-05, 3.07348e-05, 2.59844e-05, 2.209e-05, 1.8865e-05, 1.61739e-05, 1.39225e-05, 1.20078e-05, 
			0.000384314, 0.000212358, 0.000145785, 0.000108795, 8.48394e-05, 6.80036e-05, 5.54952e-05, 4.58937e-05, 3.83384e-05, 3.22826e-05, 2.73581e-05, 2.33065e-05, 1.99539e-05, 1.71366e-05, 1.4761e-05, 1.27487e-05, 
			0.00038684, 0.000215138, 0.000148387, 0.000111185, 8.69954e-05, 6.99129e-05, 5.72009e-05, 4.74177e-05, 3.9697e-05, 3.34897e-05, 2.84292e-05, 2.42638e-05, 2.07872e-05, 1.78745e-05, 1.54136e-05, 1.33229e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_42MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			8.89028e-06, 1.17978e-05, 1.43091e-05, 1.65476e-05, 1.85706e-05, 2.04127e-05, 2.20991e-05, 2.36404e-05, 2.50453e-05, 2.63339e-05, 2.75026e-05, 2.85687e-05, 2.95285e-05, 3.0406e-05, 3.11982e-05, 3.19077e-05, 
			1.10923e-05, 1.38683e-05, 1.63801e-05, 1.86673e-05, 2.07662e-05, 2.26932e-05, 2.44692e-05, 2.60928e-05, 2.75804e-05, 2.89474e-05, 3.0193e-05, 3.13214e-05, 3.23526e-05, 3.32825e-05, 3.41306e-05, 3.48974e-05, 
			1.33491e-05, 1.60482e-05, 1.8557e-05, 2.08768e-05, 2.30202e-05, 2.49983e-05, 2.68283e-05, 2.851e-05, 3.00558e-05, 3.14658e-05, 3.27622e-05, 3.39416e-05, 3.50119e-05, 3.5989e-05, 3.68764e-05, 3.76783e-05, 
			1.56414e-05, 1.82986e-05, 2.0804e-05, 2.31444e-05, 2.53155e-05, 2.73305e-05, 2.91977e-05, 3.09191e-05, 3.2496e-05, 3.39494e-05, 3.52743e-05, 3.64897e-05, 3.75963e-05, 3.86037e-05, 3.95184e-05, 4.0346e-05, 
			1.79826e-05, 2.0636e-05, 2.31465e-05, 2.55073e-05, 2.77099e-05, 2.9757e-05, 3.16501e-05, 3.34055e-05, 3.50199e-05, 3.65e-05, 3.78594e-05, 3.91035e-05, 4.02357e-05, 4.12661e-05, 4.22036e-05, 4.30555e-05
		)
}

CapTable	"metal4_C_TOP_GP_42MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.96319e-05, 2.49928e-05, 2.97632e-05, 3.40915e-05, 3.80446e-05, 4.16672e-05, 4.49876e-05, 4.80309e-05, 5.08186e-05, 5.33586e-05, 5.56756e-05, 5.7784e-05, 5.9702e-05, 6.14389e-05, 6.30118e-05, 6.44378e-05, 
			2.47071e-05, 2.99355e-05, 3.47607e-05, 3.92291e-05, 4.33642e-05, 4.71864e-05, 5.07069e-05, 5.395e-05, 5.6923e-05, 5.96424e-05, 6.21286e-05, 6.43961e-05, 6.64566e-05, 6.83309e-05, 7.00308e-05, 7.15704e-05, 
			2.98255e-05, 3.5037e-05, 3.9928e-05, 4.45054e-05, 4.87712e-05, 5.27345e-05, 5.63938e-05, 5.97684e-05, 6.28718e-05, 6.57196e-05, 6.83189e-05, 7.0693e-05, 7.28575e-05, 7.48252e-05, 7.66107e-05, 7.82348e-05, 
			3.5047e-05, 4.02822e-05, 4.52427e-05, 4.9909e-05, 5.4277e-05, 5.83377e-05, 6.20999e-05, 6.55759e-05, 6.87764e-05, 7.171e-05, 7.43967e-05, 7.6852e-05, 7.90909e-05, 8.11265e-05, 8.29811e-05, 8.4664e-05, 
			4.03554e-05, 4.56467e-05, 5.06724e-05, 5.54102e-05, 5.98508e-05, 6.39918e-05, 6.78356e-05, 7.13817e-05, 7.465e-05, 7.76535e-05, 8.04045e-05, 8.29177e-05, 8.52152e-05, 8.7306e-05, 8.9208e-05, 9.09369e-05
		)
}

CapTable	"metal4_C_LATERAL_42MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000377748, 0.000213427, 0.000152307, 0.00011879, 9.6941e-05, 8.12423e-05, 6.92546e-05, 5.97232e-05, 5.19305e-05, 4.54303e-05, 3.99319e-05, 3.52246e-05, 3.11674e-05, 2.76396e-05, 2.45613e-05, 2.18667e-05, 
			0.000396029, 0.000227611, 0.000163657, 0.000128199, 0.000104904, 8.80852e-05, 7.52007e-05, 6.49356e-05, 5.65326e-05, 4.95138e-05, 4.35674e-05, 3.8479e-05, 3.40819e-05, 3.02641e-05, 2.69237e-05, 2.39939e-05, 
			0.00040677, 0.000236583, 0.000171125, 0.000134508, 0.000110326, 9.27942e-05, 7.9329e-05, 6.85832e-05, 5.97691e-05, 5.24045e-05, 4.61569e-05, 4.08016e-05, 3.61766e-05, 3.21496e-05, 2.86283e-05, 2.55359e-05, 
			0.000413521, 0.00024271, 0.000176385, 0.000139035, 0.000114256, 9.62548e-05, 8.23864e-05, 7.12978e-05, 6.21972e-05, 5.4579e-05, 4.81174e-05, 4.25692e-05, 3.77706e-05, 3.35936e-05, 2.99368e-05, 2.67247e-05, 
			0.000418093, 0.000247031, 0.000180209, 0.000142387, 0.000117202, 9.8845e-05, 8.46857e-05, 7.33502e-05, 6.40324e-05, 5.62307e-05, 4.96003e-05, 4.39082e-05, 3.89805e-05, 3.46889e-05, 3.09296e-05, 2.76237e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_43MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.91604e-05, 2.3707e-05, 2.74291e-05, 3.06121e-05, 3.34124e-05, 3.59295e-05, 3.82298e-05, 4.03571e-05, 4.23415e-05, 4.42046e-05, 4.5962e-05, 4.76255e-05, 4.92043e-05, 5.07052e-05, 5.21339e-05, 5.34954e-05, 
			2.25078e-05, 2.65398e-05, 3.00303e-05, 3.31229e-05, 3.59167e-05, 3.84748e-05, 4.08439e-05, 4.30566e-05, 4.51361e-05, 4.70998e-05, 4.89602e-05, 5.07275e-05, 5.24089e-05, 5.40114e-05, 5.55402e-05, 5.69995e-05, 
			2.55948e-05, 2.93112e-05, 3.26413e-05, 3.56675e-05, 3.84504e-05, 4.10318e-05, 4.34459e-05, 4.57177e-05, 4.78642e-05, 4.98994e-05, 5.18343e-05, 5.36773e-05, 5.54345e-05, 5.71123e-05, 5.87152e-05, 6.0247e-05, 
			2.85292e-05, 3.20379e-05, 3.52626e-05, 3.8243e-05, 4.10189e-05, 4.36173e-05, 4.60667e-05, 4.8382e-05, 5.05809e-05, 5.26716e-05, 5.46644e-05, 5.6566e-05, 5.83829e-05, 6.01198e-05, 6.17809e-05, 6.33704e-05, 
			3.13544e-05, 3.47455e-05, 3.78983e-05, 4.08464e-05, 4.3618e-05, 4.62314e-05, 4.87077e-05, 5.10577e-05, 5.32966e-05, 5.54308e-05, 5.7469e-05, 5.94174e-05, 6.12815e-05, 6.30658e-05, 6.47738e-05, 6.641e-05
		)
}

CapTable	"metal4_C_LATERAL_43MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000385286, 0.000223486, 0.000164615, 0.000133097, 0.000113002, 9.88226e-05, 8.81272e-05, 7.96746e-05, 7.27622e-05, 6.69609e-05, 6.19934e-05, 5.76716e-05, 5.38633e-05, 5.04725e-05, 4.74278e-05, 4.4674e-05, 
			0.000406423, 0.000240542, 0.000178868, 0.000145425, 0.000123888, 0.000108577, 9.69654e-05, 8.7752e-05, 8.01954e-05, 7.38399e-05, 6.83897e-05, 6.36432e-05, 5.9458e-05, 5.57298e-05, 5.23807e-05, 4.93514e-05, 
			0.00042009, 0.000252402, 0.000189183, 0.000154535, 0.000132057, 0.000115977, 0.000103726, 9.39719e-05, 8.59508e-05, 7.91916e-05, 7.33863e-05, 6.83248e-05, 6.38582e-05, 5.98769e-05, 5.62988e-05, 5.30611e-05, 
			0.000429747, 0.000261356, 0.000197184, 0.000161722, 0.000138563, 0.000121931, 0.000109202, 9.90366e-05, 9.06581e-05, 8.35856e-05, 7.75032e-05, 7.21946e-05, 6.75058e-05, 6.33237e-05, 5.95636e-05, 5.61593e-05, 
			0.000437158, 0.000268422, 0.000203652, 0.000167616, 0.000143959, 0.00012689, 0.000113788, 0.000103301, 9.464e-05, 8.73174e-05, 8.10121e-05, 7.55037e-05, 7.06345e-05, 6.62886e-05, 6.23792e-05, 5.88381e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_31MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			9.03266e-06, 1.24998e-05, 1.55784e-05, 1.82598e-05, 2.05435e-05, 2.24995e-05, 2.41119e-05, 2.54884e-05, 2.66357e-05, 2.75811e-05, 2.83826e-05, 2.90517e-05, 2.95984e-05, 3.00642e-05, 3.04538e-05, 3.08323e-05, 
			1.21761e-05, 1.56013e-05, 1.87051e-05, 2.14655e-05, 2.38147e-05, 2.58493e-05, 2.75687e-05, 2.90018e-05, 3.02176e-05, 3.12316e-05, 3.2083e-05, 3.27996e-05, 3.34004e-05, 3.39772e-05, 3.43732e-05, 3.47126e-05, 
			1.53863e-05, 1.87856e-05, 2.19281e-05, 2.46872e-05, 2.71132e-05, 2.91917e-05, 3.0946e-05, 3.24422e-05, 3.37075e-05, 3.47557e-05, 3.56495e-05, 3.64043e-05, 3.70902e-05, 3.76041e-05, 3.80428e-05, 3.84195e-05, 
			1.8629e-05, 2.19978e-05, 2.51472e-05, 2.79586e-05, 3.03993e-05, 3.251e-05, 3.43112e-05, 3.58369e-05, 3.7133e-05, 3.82281e-05, 3.9213e-05, 3.99703e-05, 4.06154e-05, 4.11697e-05, 4.16443e-05, 4.20554e-05, 
			2.18932e-05, 2.53007e-05, 2.84581e-05, 3.12799e-05, 3.37677e-05, 3.59148e-05, 3.77381e-05, 3.92991e-05, 4.06266e-05, 4.17808e-05, 4.27182e-05, 4.35161e-05, 4.41993e-05, 4.47867e-05, 4.52949e-05, 4.57218e-05
		)
}

CapTable	"metal4_C_TOP_GP_31MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			4.27309e-05, 5.74608e-05, 7.00011e-05, 8.04766e-05, 8.91393e-05, 9.62776e-05, 0.000102154, 0.000106999, 0.000110991, 0.000114296, 0.000117031, 0.000119304, 0.000121211, 0.000122799, 0.000124131, 0.0001252, 
			6.03327e-05, 7.52951e-05, 8.80412e-05, 9.87424e-05, 0.000107651, 0.000115052, 0.000121185, 0.000126271, 0.000130493, 0.000134009, 0.000136941, 0.000139391, 0.000141445, 0.000143095, 0.000144584, 0.000145835, 
			7.84165e-05, 9.33916e-05, 0.000106197, 0.000117002, 0.000126053, 0.0001336, 0.000139896, 0.000145139, 0.000149512, 0.000153184, 0.000156248, 0.00015882, 0.000160931, 0.000162786, 0.000164343, 0.000165655, 
			9.66638e-05, 0.000111612, 0.000124449, 0.000135319, 0.000144465, 0.00015212, 0.000158533, 0.000163902, 0.000168396, 0.000172165, 0.000175269, 0.000177968, 0.00018024, 0.000182143, 0.000183754, 0.000185105, 
			0.000114983, 0.000129967, 0.000142825, 0.000153751, 0.000162963, 0.000170702, 0.000177216, 0.000182669, 0.000187249, 0.000191071, 0.000194334, 0.000197082, 0.000199395, 0.00020134, 0.000202978, 0.000204383
		)
}

CapTable	"metal4_C_LATERAL_31MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000361332, 0.000192573, 0.00012867, 9.36502e-05, 7.12575e-05, 5.56713e-05, 4.4303e-05, 3.56793e-05, 2.9008e-05, 2.37611e-05, 1.95653e-05, 1.61798e-05, 1.34227e-05, 1.1162e-05, 9.29594e-06, 7.75074e-06, 
			0.000373153, 0.000201421, 0.000135595, 9.92967e-05, 7.59721e-05, 5.96375e-05, 4.76311e-05, 3.85165e-05, 3.1414e-05, 2.57918e-05, 2.12818e-05, 1.76253e-05, 1.4635e-05, 1.21781e-05, 1.01342e-05, 8.43125e-06, 
			0.000378946, 0.000206465, 0.00013983, 0.000102913, 7.90303e-05, 6.22594e-05, 4.98817e-05, 4.04264e-05, 3.30389e-05, 2.71663e-05, 2.24379e-05, 1.85905e-05, 1.54378e-05, 1.28253e-05, 1.06563e-05, 8.84584e-06, 
			0.000382071, 0.000209731, 0.000142734, 0.000105417, 8.12017e-05, 6.41418e-05, 5.14864e-05, 4.17931e-05, 3.41942e-05, 2.81361e-05, 2.3248e-05, 1.92525e-05, 1.59642e-05, 1.32455e-05, 1.09803e-05, 9.08799e-06, 
			0.000384006, 0.000211884, 0.000144754, 0.000107215, 8.27571e-05, 6.54704e-05, 5.26151e-05, 4.27479e-05, 3.4993e-05, 2.87974e-05, 2.3779e-05, 1.96743e-05, 1.62947e-05, 1.34954e-05, 1.11614e-05, 9.20447e-06
		)
}

CapTable	"metal4_C_BOTTOM_GP_32MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.08591e-05, 1.4314e-05, 1.73435e-05, 2.00683e-05, 2.2545e-05, 2.48058e-05, 2.68722e-05, 2.87531e-05, 3.04661e-05, 3.20174e-05, 3.34296e-05, 3.46942e-05, 3.58418e-05, 3.6875e-05, 3.77931e-05, 3.8624e-05, 
			1.36087e-05, 1.69235e-05, 1.99599e-05, 2.27487e-05, 2.53169e-05, 2.76795e-05, 2.98462e-05, 3.18354e-05, 3.36455e-05, 3.52996e-05, 3.67923e-05, 3.8152e-05, 3.93705e-05, 4.04772e-05, 4.14694e-05, 4.23583e-05, 
			1.64178e-05, 1.96498e-05, 2.2679e-05, 2.55045e-05, 2.81239e-05, 3.05494e-05, 3.2782e-05, 3.484e-05, 3.67129e-05, 3.84293e-05, 3.9993e-05, 4.14028e-05, 4.26852e-05, 4.38407e-05, 4.4876e-05, 4.58105e-05, 
			1.92746e-05, 2.24547e-05, 2.54769e-05, 2.83177e-05, 3.0974e-05, 3.34363e-05, 3.57209e-05, 3.78161e-05, 3.9746e-05, 4.15023e-05, 4.31101e-05, 4.45693e-05, 4.58881e-05, 4.7083e-05, 4.81578e-05, 4.91312e-05, 
			2.21812e-05, 2.53546e-05, 2.83844e-05, 3.12466e-05, 3.39374e-05, 3.64336e-05, 3.87559e-05, 4.08993e-05, 4.28606e-05, 4.46622e-05, 4.63035e-05, 4.779e-05, 4.91431e-05, 5.03707e-05, 5.14798e-05, 5.24807e-05
		)
}

CapTable	"metal4_C_TOP_GP_32MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.84471e-05, 2.37388e-05, 2.84623e-05, 3.27512e-05, 3.66666e-05, 4.02478e-05, 4.35204e-05, 4.65107e-05, 4.92304e-05, 5.17023e-05, 5.39342e-05, 5.5958e-05, 5.77756e-05, 5.94073e-05, 6.08786e-05, 6.21902e-05, 
			2.33499e-05, 2.85562e-05, 3.33725e-05, 3.78298e-05, 4.19453e-05, 4.57379e-05, 4.92188e-05, 5.24003e-05, 5.53055e-05, 5.79412e-05, 6.03376e-05, 6.24963e-05, 6.44501e-05, 6.62011e-05, 6.77782e-05, 6.91935e-05, 
			2.83458e-05, 3.3572e-05, 3.84861e-05, 4.30731e-05, 4.73347e-05, 5.12686e-05, 5.48888e-05, 5.81995e-05, 6.12297e-05, 6.39815e-05, 6.64714e-05, 6.87338e-05, 7.07672e-05, 7.2602e-05, 7.42578e-05, 7.57406e-05, 
			3.34788e-05, 3.87549e-05, 4.37612e-05, 4.84547e-05, 5.28188e-05, 5.68569e-05, 6.05703e-05, 6.3981e-05, 6.70883e-05, 6.99217e-05, 7.2486e-05, 7.48115e-05, 7.69129e-05, 7.88042e-05, 8.05119e-05, 8.20382e-05, 
			3.87384e-05, 4.41095e-05, 4.92008e-05, 5.39832e-05, 5.84319e-05, 6.25548e-05, 6.6346e-05, 6.98158e-05, 7.29939e-05, 7.5878e-05, 7.84993e-05, 8.08787e-05, 8.30236e-05, 8.49544e-05, 8.66912e-05, 8.82536e-05
		)
}

CapTable	"metal4_C_LATERAL_32MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000377112, 0.000212444, 0.000151017, 0.000117227, 9.51426e-05, 7.92473e-05, 6.71003e-05, 5.74456e-05, 4.95642e-05, 4.30077e-05, 3.74763e-05, 3.27659e-05, 2.87202e-05, 2.52277e-05, 2.22001e-05, 1.9563e-05, 
			0.000395116, 0.000226338, 0.000162063, 0.000126323, 0.000102789, 8.57724e-05, 7.27328e-05, 6.23498e-05, 5.38644e-05, 4.6797e-05, 4.0833e-05, 3.5747e-05, 3.13793e-05, 2.76035e-05, 2.43253e-05, 2.14697e-05, 
			0.000405552, 0.00023501, 0.000169232, 0.000132336, 0.00010792, 9.02e-05, 7.65898e-05, 6.57345e-05, 5.68526e-05, 4.94472e-05, 4.31928e-05, 3.7856e-05, 3.32676e-05, 2.92986e-05, 2.58502e-05, 2.28435e-05, 
			0.000411989, 0.000240836, 0.000174201, 0.000136586, 0.000111584, 9.34063e-05, 7.94046e-05, 6.82245e-05, 5.90643e-05, 5.1424e-05, 4.4963e-05, 3.9445e-05, 3.46976e-05, 3.05894e-05, 2.70159e-05, 2.38988e-05, 
			0.000416242, 0.00024484, 0.000177715, 0.000139634, 0.000114236, 9.57166e-05, 8.14341e-05, 7.00193e-05, 6.06589e-05, 5.28441e-05, 4.62325e-05, 4.05829e-05, 3.57199e-05, 3.15087e-05, 2.78452e-05, 2.46463e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_33MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.08292e-05, 2.59988e-05, 3.03036e-05, 3.40379e-05, 3.73579e-05, 4.03652e-05, 4.31224e-05, 4.56737e-05, 4.80488e-05, 5.02699e-05, 5.2353e-05, 5.43105e-05, 5.61527e-05, 5.78886e-05, 5.95255e-05, 6.10693e-05, 
			2.4752e-05, 2.94323e-05, 3.3542e-05, 3.72266e-05, 4.05787e-05, 4.36612e-05, 4.65212e-05, 4.9188e-05, 5.16851e-05, 5.40302e-05, 5.62369e-05, 5.83166e-05, 6.02781e-05, 6.21298e-05, 6.38788e-05, 6.55311e-05, 
			2.8455e-05, 3.2844e-05, 3.68243e-05, 4.04709e-05, 4.38379e-05, 4.69686e-05, 4.98935e-05, 5.26364e-05, 5.52157e-05, 5.76461e-05, 5.99385e-05, 6.21034e-05, 6.41491e-05, 6.60832e-05, 6.79125e-05, 6.96427e-05, 
			3.2039e-05, 3.62446e-05, 4.01408e-05, 4.37606e-05, 4.7138e-05, 5.02995e-05, 5.32706e-05, 5.60683e-05, 5.87068e-05, 6.11995e-05, 6.35555e-05, 6.57842e-05, 6.7893e-05, 6.98891e-05, 7.17797e-05, 7.35701e-05, 
			3.55502e-05, 3.96561e-05, 4.34963e-05, 4.70971e-05, 5.04798e-05, 5.36662e-05, 5.66706e-05, 5.95073e-05, 6.21905e-05, 6.47298e-05, 6.71348e-05, 6.94117e-05, 7.15697e-05, 7.36151e-05, 7.55539e-05, 7.7392e-05
		)
}

CapTable	"metal4_C_LATERAL_33MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000383911, 0.000221673, 0.000162408, 0.000130535, 0.000110124, 9.56645e-05, 8.47269e-05, 7.60668e-05, 6.898e-05, 6.30347e-05, 5.79513e-05, 5.35399e-05, 4.96656e-05, 4.623e-05, 4.31589e-05, 4.03962e-05, 
			0.000404597, 0.000238269, 0.000176187, 0.000142381, 0.000120523, 0.000104935, 9.30854e-05, 8.36721e-05, 7.59508e-05, 6.94632e-05, 6.39103e-05, 5.90876e-05, 5.485e-05, 5.1091e-05, 4.77302e-05, 4.47059e-05, 
			0.000417788, 0.000249654, 0.000186031, 0.000151025, 0.000128237, 0.000111892, 9.94193e-05, 8.94818e-05, 8.13134e-05, 7.44391e-05, 6.85488e-05, 6.34284e-05, 5.89263e-05, 5.49301e-05, 5.13556e-05, 4.81376e-05, 
			0.000426969, 0.000258139, 0.000193578, 0.000157774, 0.000134326, 0.00011745, 0.000104519, 9.41923e-05, 8.56878e-05, 7.85212e-05, 7.2373e-05, 6.70239e-05, 6.23171e-05, 5.8137e-05, 5.43953e-05, 5.1025e-05, 
			0.000433905, 0.000264748, 0.000199612, 0.000163261, 0.000139339, 0.000122051, 0.000108772, 9.81467e-05, 8.93819e-05, 8.1986e-05, 7.56344e-05, 7.01033e-05, 6.52327e-05, 6.09036e-05, 5.70268e-05, 5.35324e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_21MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.47144e-05, 2.00362e-05, 2.49095e-05, 2.92515e-05, 3.30214e-05, 3.61836e-05, 3.88237e-05, 4.09793e-05, 4.27351e-05, 4.41528e-05, 4.52869e-05, 4.61905e-05, 4.69109e-05, 4.74935e-05, 4.79748e-05, 4.83435e-05, 
			2.01037e-05, 2.55553e-05, 3.06033e-05, 3.512e-05, 3.9055e-05, 4.23867e-05, 4.51553e-05, 4.74376e-05, 4.92934e-05, 5.07963e-05, 5.19868e-05, 5.29579e-05, 5.37632e-05, 5.43843e-05, 5.48799e-05, 5.52756e-05, 
			2.57317e-05, 3.12788e-05, 3.64302e-05, 4.10679e-05, 4.50919e-05, 4.85129e-05, 5.1367e-05, 5.37138e-05, 5.56081e-05, 5.71631e-05, 5.8424e-05, 5.94604e-05, 6.02686e-05, 6.09151e-05, 6.14323e-05, 6.18456e-05, 
			3.15195e-05, 3.71314e-05, 4.23667e-05, 4.70665e-05, 5.11605e-05, 5.46353e-05, 5.75386e-05, 5.99007e-05, 6.18633e-05, 6.34899e-05, 6.47716e-05, 6.58042e-05, 6.66309e-05, 6.72952e-05, 6.78254e-05, 6.82486e-05, 
			3.74196e-05, 4.30854e-05, 4.83717e-05, 5.31222e-05, 5.7253e-05, 6.07289e-05, 6.36684e-05, 6.61002e-05, 6.81206e-05, 6.9728e-05, 7.10293e-05, 7.20766e-05, 7.2917e-05, 7.35899e-05, 7.41258e-05, 7.45573e-05
		)
}

CapTable	"metal4_C_TOP_GP_21MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			4.02524e-05, 5.47574e-05, 6.71441e-05, 7.74815e-05, 8.59753e-05, 9.28987e-05, 9.8485e-05, 0.000102977, 0.00010657, 0.000109431, 0.000111713, 0.000113534, 0.000114982, 0.000116123, 0.000117007, 0.000117728, 
			5.76621e-05, 7.2525e-05, 8.52151e-05, 9.58313e-05, 0.000104581, 0.000111735, 0.000117533, 0.000122205, 0.000125954, 0.000128953, 0.000131367, 0.000133275, 0.000134758, 0.000135965, 0.000136924, 0.000137686, 
			7.57151e-05, 9.06788e-05, 0.000103475, 0.000114201, 0.000123079, 0.000130348, 0.000136253, 0.000141028, 0.00014489, 0.000147962, 0.000150413, 0.000152338, 0.000153899, 0.00015514, 0.000156124, 0.000156908, 
			9.40339e-05, 0.00010901, 0.000121844, 0.000132629, 0.000141569, 0.000148898, 0.000154869, 0.000159736, 0.000163617, 0.000166692, 0.000169187, 0.000171178, 0.000172764, 0.000174023, 0.000175027, 0.000175826, 
			0.000112466, 0.000127487, 0.000140337, 0.000151148, 0.000160129, 0.000167544, 0.000173547, 0.000178401, 0.000182272, 0.000185416, 0.00018793, 0.000189932, 0.000191533, 0.000192807, 0.000193827, 0.000194631
		)
}

CapTable	"metal4_C_LATERAL_21MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000358834, 0.000189046, 0.000124199, 8.83935e-05, 6.53988e-05, 4.94682e-05, 3.79238e-05, 2.93415e-05, 2.28446e-05, 1.78728e-05, 1.4035e-05, 1.10533e-05, 8.72634e-06, 6.90514e-06, 5.47686e-06, 4.35019e-06, 
			0.000369244, 0.000196396, 0.000129579, 9.2521e-05, 6.86344e-05, 5.20243e-05, 3.99655e-05, 3.09702e-05, 2.41472e-05, 1.89122e-05, 1.48606e-05, 1.17088e-05, 9.25e-06, 7.31839e-06, 5.79953e-06, 4.60258e-06, 
			0.000373528, 0.000199921, 0.000132362, 9.47176e-05, 7.04032e-05, 5.34492e-05, 4.11104e-05, 3.1892e-05, 2.48849e-05, 1.95023e-05, 1.53322e-05, 1.2088e-05, 9.5466e-06, 7.55185e-06, 5.98326e-06, 4.74541e-06, 
			0.000375138, 0.000201726, 0.00013389, 9.59773e-05, 7.14207e-05, 5.42917e-05, 4.17942e-05, 3.24405e-05, 2.53287e-05, 1.98605e-05, 1.56178e-05, 1.23102e-05, 9.72087e-06, 7.68874e-06, 6.08768e-06, 4.82434e-06, 
			0.000375637, 0.000202588, 0.000134727, 9.67002e-05, 7.203e-05, 5.47823e-05, 4.21954e-05, 3.27734e-05, 2.56066e-05, 2.00848e-05, 1.58015e-05, 1.24624e-05, 9.84542e-06, 7.78938e-06, 6.16846e-06, 4.88986e-06
		)
}

CapTable	"metal4_C_BOTTOM_GP_22MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.66621e-05, 2.1931e-05, 2.67093e-05, 3.10818e-05, 3.50801e-05, 3.87125e-05, 4.19971e-05, 4.49393e-05, 4.75614e-05, 4.98907e-05, 5.19389e-05, 5.37412e-05, 5.53108e-05, 5.66828e-05, 5.78733e-05, 5.89021e-05, 
			2.14862e-05, 2.67554e-05, 3.16763e-05, 3.62439e-05, 4.04478e-05, 4.42879e-05, 4.77679e-05, 5.08913e-05, 5.36789e-05, 5.61582e-05, 5.83391e-05, 6.02617e-05, 6.19429e-05, 6.34063e-05, 6.468e-05, 6.57818e-05, 
			2.65254e-05, 3.18489e-05, 3.68788e-05, 4.15792e-05, 4.59193e-05, 4.9888e-05, 5.3492e-05, 5.67293e-05, 5.96261e-05, 6.21942e-05, 6.44651e-05, 6.64622e-05, 6.82073e-05, 6.97325e-05, 7.10581e-05, 7.2203e-05, 
			3.17572e-05, 3.71326e-05, 4.22477e-05, 4.70414e-05, 5.14746e-05, 5.55307e-05, 5.9218e-05, 6.25302e-05, 6.54956e-05, 6.813e-05, 7.04547e-05, 7.25011e-05, 7.42913e-05, 7.58562e-05, 7.71925e-05, 7.84003e-05, 
			3.71357e-05, 4.25869e-05, 4.77683e-05, 5.26323e-05, 5.71322e-05, 6.12574e-05, 6.49963e-05, 6.83661e-05, 7.13789e-05, 7.40523e-05, 7.64184e-05, 7.85008e-05, 8.03186e-05, 8.18895e-05, 8.32994e-05, 8.44995e-05
		)
}

CapTable	"metal4_C_TOP_GP_22MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.67055e-05, 2.18946e-05, 2.65791e-05, 3.08651e-05, 3.4778e-05, 3.83387e-05, 4.15533e-05, 4.44402e-05, 4.70145e-05, 4.92901e-05, 5.1298e-05, 5.30544e-05, 5.4592e-05, 5.59252e-05, 5.70802e-05, 5.80808e-05, 
			2.1631e-05, 2.68395e-05, 3.16886e-05, 3.61829e-05, 4.03238e-05, 4.41017e-05, 4.75203e-05, 5.05953e-05, 5.33373e-05, 5.57645e-05, 5.79093e-05, 5.97848e-05, 6.14229e-05, 6.28498e-05, 6.40843e-05, 6.51542e-05, 
			2.67656e-05, 3.2048e-05, 3.703e-05, 4.16758e-05, 4.59649e-05, 4.98869e-05, 5.34363e-05, 5.66285e-05, 5.94733e-05, 6.19998e-05, 6.4224e-05, 6.61732e-05, 6.78775e-05, 6.93584e-05, 7.06425e-05, 7.17577e-05, 
			3.20996e-05, 3.74675e-05, 4.25529e-05, 4.73068e-05, 5.17017e-05, 5.57172e-05, 5.93527e-05, 6.26254e-05, 6.55402e-05, 6.81225e-05, 7.04021e-05, 7.23981e-05, 7.41447e-05, 7.56623e-05, 7.70057e-05, 7.8112e-05, 
			3.76033e-05, 4.30623e-05, 4.82348e-05, 5.30691e-05, 5.75382e-05, 6.16186e-05, 6.53197e-05, 6.86413e-05, 7.16017e-05, 7.42276e-05, 7.65402e-05, 7.8568e-05, 8.03453e-05, 8.19097e-05, 8.32168e-05, 8.43755e-05
		)
}

CapTable	"metal4_C_LATERAL_22MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000373876, 0.00020813, 0.000145705, 0.000111043, 8.82356e-05, 7.17772e-05, 5.92273e-05, 4.93192e-05, 4.13179e-05, 3.47567e-05, 2.93224e-05, 2.47863e-05, 2.09822e-05, 1.77786e-05, 1.50746e-05, 1.27878e-05, 
			0.000390407, 0.000220497, 0.00015521, 0.000118607, 9.43782e-05, 7.68384e-05, 6.34396e-05, 5.28522e-05, 4.42985e-05, 3.72809e-05, 3.14656e-05, 2.66105e-05, 2.25366e-05, 1.91059e-05, 1.62085e-05, 1.37568e-05, 
			0.000399311, 0.000227643, 0.000160888, 0.000123181, 9.8128e-05, 7.99445e-05, 6.6036e-05, 5.50385e-05, 4.61468e-05, 3.88514e-05, 3.28023e-05, 2.77514e-05, 2.35124e-05, 1.99408e-05, 1.69236e-05, 1.43695e-05, 
			0.000404233, 0.000232007, 0.000164457, 0.000126099, 0.000100531, 8.19605e-05, 6.773e-05, 5.64693e-05, 4.7362e-05, 3.98871e-05, 3.36882e-05, 2.85104e-05, 2.4163e-05, 2.04995e-05, 1.74012e-05, 1.47833e-05, 
			0.000407047, 0.00023466, 0.000166709, 0.000127974, 0.000102094, 8.326e-05, 6.88215e-05, 5.73924e-05, 4.8146e-05, 4.05549e-05, 3.42577e-05, 2.89968e-05, 2.45785e-05, 2.08524e-05, 1.77083e-05, 1.5043e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_23MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.55458e-05, 3.25926e-05, 3.86666e-05, 4.40398e-05, 4.88499e-05, 5.31866e-05, 5.71182e-05, 6.0692e-05, 6.39485e-05, 6.69211e-05, 6.96387e-05, 7.2126e-05, 7.44052e-05, 7.64959e-05, 7.84165e-05, 8.01819e-05, 
			3.14552e-05, 3.81041e-05, 4.40748e-05, 4.94743e-05, 5.4378e-05, 5.88442e-05, 6.29196e-05, 6.66439e-05, 7.00526e-05, 7.31759e-05, 7.60404e-05, 7.86709e-05, 8.10883e-05, 8.33125e-05, 8.53609e-05, 8.72497e-05, 
			3.72932e-05, 4.37105e-05, 4.95947e-05, 5.49856e-05, 5.99267e-05, 6.44538e-05, 6.86059e-05, 7.24172e-05, 7.59167e-05, 7.91333e-05, 8.20915e-05, 8.48159e-05, 8.7326e-05, 8.96413e-05, 9.1779e-05, 9.37546e-05, 
			4.3106e-05, 4.9362e-05, 5.51712e-05, 6.05399e-05, 6.5487e-05, 7.00423e-05, 7.42372e-05, 7.8099e-05, 8.16561e-05, 8.49344e-05, 8.79578e-05, 9.07486e-05, 9.33262e-05, 9.57088e-05, 9.79132e-05, 9.99552e-05, 
			4.8881e-05, 5.50416e-05, 6.0786e-05, 6.61226e-05, 7.1064e-05, 7.56316e-05, 7.98507e-05, 8.37458e-05, 8.73424e-05, 9.06671e-05, 9.37384e-05, 9.65798e-05, 9.92104e-05, 0.000101646, 0.000103905, 0.000106002
		)
}

CapTable	"metal4_C_LATERAL_23MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000380156, 0.000216706, 0.000156412, 0.00012369, 0.000102599, 8.76156e-05, 7.62899e-05, 6.73604e-05, 6.01042e-05, 5.40739e-05, 4.89748e-05, 4.46043e-05, 4.0817e-05, 3.75054e-05, 3.45873e-05, 3.19998e-05, 
			0.000399479, 0.000232, 0.000168963, 0.00013439, 0.000111941, 9.59132e-05, 8.3757e-05, 7.41485e-05, 6.6325e-05, 5.98119e-05, 5.42965e-05, 4.95617e-05, 4.54527e-05, 4.18541e-05, 3.86786e-05, 3.58579e-05, 
			0.000411351, 0.000242178, 0.000177716, 0.000142061, 0.000118787, 0.000102101, 8.94079e-05, 7.93512e-05, 7.11463e-05, 6.43037e-05, 5.84993e-05, 5.35088e-05, 4.91711e-05, 4.53662e-05, 4.20031e-05, 3.9011e-05, 
			0.000419325, 0.0002496, 0.000184338, 0.000148008, 0.000124185, 0.000107065, 9.39966e-05, 8.36206e-05, 7.51397e-05, 6.80548e-05, 6.20354e-05, 5.6852e-05, 5.23396e-05, 4.8375e-05, 4.48658e-05, 4.17388e-05, 
			0.000425225, 0.000255319, 0.000189616, 0.000152859, 0.000128664, 0.000111217, 9.78723e-05, 8.72586e-05, 7.85674e-05, 7.12947e-05, 6.51056e-05, 5.9768e-05, 5.51144e-05, 5.10196e-05, 4.73897e-05, 4.41504e-05
		)
}

CapTable	"metal4_C_BOTTOM_GPMAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			3.80605e-05, 5.31194e-05, 6.60748e-05, 7.65652e-05, 8.4635e-05, 9.06104e-05, 9.49151e-05, 9.79462e-05, 0.000100056, 0.000101506, 0.000102497, 0.00010317, 0.000103623, 0.000103928, 0.000104134, 0.000104272, 
			5.60979e-05, 7.16666e-05, 8.49283e-05, 9.56073e-05, 0.0001038, 0.000109864, 0.000114217, 0.000117291, 0.000119422, 0.000120885, 0.00012188, 0.000122553, 0.000123005, 0.000123308, 0.000123509, 0.000123644, 
			7.48531e-05, 9.05505e-05, 0.000103873, 0.000114586, 0.000122785, 0.000128854, 0.000133208, 0.000136272, 0.000138397, 0.000139851, 0.000140836, 0.000141501, 0.000141945, 0.00014224, 0.000142435, 0.000142565, 
			9.38399e-05, 0.000109536, 0.000122853, 0.00013354, 0.000141735, 0.00014777, 0.000152104, 0.000155151, 0.000157256, 0.000158696, 0.000159667, 0.000160321, 0.000160755, 0.000161041, 0.00016123, 0.00016135, 
			0.000112847, 0.000128537, 0.000141824, 0.000152481, 0.000160636, 0.000166645, 0.000170954, 0.000173972, 0.000176058, 0.000177479, 0.000178437, 0.000179078, 0.000179502, 0.00017978, 0.00017996, 0.000180081
		)
}

CapTable	"metal4_C_TOP_GPMAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			3.75871e-05, 5.21447e-05, 6.45329e-05, 7.44828e-05, 8.20999e-05, 8.77233e-05, 9.17601e-05, 9.46114e-05, 9.65887e-05, 9.79531e-05, 9.88865e-05, 9.95203e-05, 9.99517e-05, 0.000100244, 0.00010044, 0.000100571, 
			5.56025e-05, 7.06426e-05, 8.33139e-05, 9.34448e-05, 0.000101183, 0.000106884, 0.000110989, 0.00011387, 0.000115877, 0.000117256, 0.000118201, 0.000118843, 0.000119278, 0.000119571, 0.000119766, 0.000119893, 
			7.42301e-05, 8.93854e-05, 0.000102119, 0.000112277, 0.000120042, 0.000125747, 0.000129851, 0.000132742, 0.000134747, 0.000136128, 0.000137072, 0.000137712, 0.000138144, 0.000138433, 0.000138622, 0.000138744, 
			9.30363e-05, 0.000108189, 0.000120911, 0.000131075, 0.000138813, 0.000144512, 0.000148604, 0.000151487, 0.000153489, 0.000154864, 0.000155802, 0.000156436, 0.000156862, 0.000157144, 0.000157328, 0.000157447, 
			0.000111876, 0.000127051, 0.000139751, 0.000149885, 0.000157616, 0.000163302, 0.000167383, 0.000170253, 0.000172243, 0.00017361, 0.000174539, 0.000175167, 0.000175587, 0.000175867, 0.000176043, 0.000176151
		)
}

CapTable	"metal4_C_LATERALMAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000344747, 0.00017081, 0.000103505, 6.6792e-05, 4.41694e-05, 2.95047e-05, 1.97856e-05, 1.32801e-05, 8.90848e-06, 5.96546e-06, 3.98401e-06, 2.65079e-06, 1.75386e-06, 1.15121e-06, 7.46925e-07, 4.76806e-07, 
			0.000349115, 0.0001732, 0.000104821, 6.75707e-05, 4.46337e-05, 2.97732e-05, 1.99268e-05, 1.33425e-05, 8.9203e-06, 5.94807e-06, 3.95007e-06, 2.60876e-06, 1.7099e-06, 1.10915e-06, 7.09654e-07, 4.46418e-07, 
			0.000348852, 0.000173159, 0.000104754, 6.74694e-05, 4.45211e-05, 2.96562e-05, 1.9812e-05, 1.32318e-05, 8.81882e-06, 5.85592e-06, 3.86884e-06, 2.53882e-06, 1.65141e-06, 1.06235e-06, 6.74663e-07, 4.22794e-07, 
			0.000347214, 0.000172444, 0.000104289, 6.7114e-05, 4.42299e-05, 2.94353e-05, 1.96295e-05, 1.30801e-05, 8.69173e-06, 5.75117e-06, 3.7837e-06, 2.47145e-06, 1.60034e-06, 1.02634e-06, 6.5263e-07, 4.12756e-07, 
			0.000345464, 0.000171541, 0.000103719, 6.67125e-05, 4.39267e-05, 2.91852e-05, 1.94282e-05, 1.29233e-05, 8.56993e-06, 5.65732e-06, 3.71302e-06, 2.42018e-06, 1.56555e-06, 1.0057e-06, 6.44932e-07, 4.15632e-07
		)
}

CapTable	"metal4_C_BOTTOM_GP_12MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			4.07637e-05, 5.57819e-05, 6.87225e-05, 7.9564e-05, 8.84696e-05, 9.56939e-05, 0.000101501, 0.000106139, 0.00010983, 0.000112757, 0.000115081, 0.000116916, 0.000118365, 0.000119515, 0.00012042, 0.000121139, 
			5.81189e-05, 7.34926e-05, 8.67336e-05, 9.78578e-05, 0.000107032, 0.000114503, 0.000120531, 0.000125365, 0.000129222, 0.000132294, 0.000134729, 0.00013666, 0.000138191, 0.000139404, 0.000140365, 0.000141128, 
			7.61482e-05, 9.16156e-05, 0.000104964, 0.000116209, 0.000125511, 0.000133108, 0.000139252, 0.000144194, 0.000148142, 0.000151285, 0.000153793, 0.000155774, 0.00015735, 0.0001586, 0.000159594, 0.000160383, 
			9.44518e-05, 0.000109938, 0.000123328, 0.000134633, 0.000144005, 0.000151666, 0.000157879, 0.000162876, 0.000166874, 0.000170068, 0.00017261, 0.00017463, 0.000176236, 0.000177512, 0.000178522, 0.000179326, 
			0.000112863, 0.00012838, 0.000141788, 0.000153119, 0.000162533, 0.000170234, 0.000176481, 0.000181513, 0.000185541, 0.000188761, 0.000191325, 0.000193368, 0.000194991, 0.000196279, 0.000197303, 0.00019812
		)
}

CapTable	"metal4_C_TOP_GP_12MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.47799e-05, 2.00222e-05, 2.47927e-05, 2.90231e-05, 3.26634e-05, 3.5719e-05, 3.82432e-05, 4.03017e-05, 4.19665e-05, 4.33063e-05, 4.43747e-05, 4.52304e-05, 4.59154e-05, 4.64549e-05, 4.68923e-05, 4.7235e-05, 
			2.02237e-05, 2.55706e-05, 3.05122e-05, 3.4916e-05, 3.87254e-05, 4.19418e-05, 4.46085e-05, 4.67943e-05, 4.85681e-05, 4.99967e-05, 5.1147e-05, 5.20691e-05, 5.28035e-05, 5.33882e-05, 5.38537e-05, 5.42238e-05, 
			2.58404e-05, 3.12787e-05, 3.63238e-05, 4.08401e-05, 4.47534e-05, 4.80649e-05, 5.08197e-05, 5.30761e-05, 5.49156e-05, 5.6405e-05, 5.75956e-05, 5.85598e-05, 5.93246e-05, 5.99347e-05, 6.04197e-05, 6.08063e-05, 
			3.15944e-05, 3.70958e-05, 4.22188e-05, 4.68075e-05, 5.07914e-05, 5.41632e-05, 5.69691e-05, 5.92792e-05, 6.11621e-05, 6.26823e-05, 6.39057e-05, 6.48865e-05, 6.56708e-05, 6.62955e-05, 6.67941e-05, 6.7191e-05, 
			3.74396e-05, 4.30086e-05, 4.81865e-05, 5.28283e-05, 5.68523e-05, 6.02672e-05, 6.31138e-05, 6.54506e-05, 6.73616e-05, 6.89035e-05, 7.0145e-05, 7.11397e-05, 7.19365e-05, 7.25724e-05, 7.30803e-05, 7.34822e-05
		)
}

CapTable	"metal4_C_LATERAL_12MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.00035852, 0.000188619, 0.000123661, 8.77671e-05, 6.4731e-05, 4.87852e-05, 3.72646e-05, 2.87216e-05, 2.22783e-05, 1.73614e-05, 1.35776e-05, 1.06478e-05, 8.36749e-06, 6.58672e-06, 5.19047e-06, 4.09366e-06, 
			0.00036916, 0.000196235, 0.0001293, 9.21264e-05, 6.81643e-05, 5.15158e-05, 3.94478e-05, 3.04693e-05, 2.36796e-05, 1.8485e-05, 1.44789e-05, 1.13706e-05, 8.94793e-06, 7.0527e-06, 5.56559e-06, 4.39583e-06, 
			0.00037371, 0.000200012, 0.000132301, 9.45146e-05, 7.0089e-05, 5.30698e-05, 4.07039e-05, 3.14868e-05, 2.45029e-05, 1.91513e-05, 1.50188e-05, 1.18075e-05, 9.30216e-06, 7.34031e-06, 5.79981e-06, 4.58685e-06, 
			0.000375561, 0.000202019, 0.000134003, 9.59137e-05, 7.12258e-05, 5.40148e-05, 4.1477e-05, 3.21194e-05, 2.50201e-05, 1.95747e-05, 1.5365e-05, 1.20917e-05, 9.53554e-06, 7.53262e-06, 5.95829e-06, 4.71803e-06, 
			0.00037627, 0.000203041, 0.000134967, 9.67453e-05, 7.19272e-05, 5.45871e-05, 4.19496e-05, 3.2513e-05, 2.53466e-05, 1.98453e-05, 1.55891e-05, 1.22779e-05, 9.68985e-06, 7.66032e-06, 6.06396e-06, 4.80592e-06
		)
}

CapTable	"metal4_C_BOTTOM_GP_13MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			4.99002e-05, 6.72045e-05, 8.18958e-05, 9.41114e-05, 0.000104143, 0.000112345, 0.000119052, 0.000124554, 0.000129088, 0.000132846, 0.000135982, 0.000138616, 0.000140843, 0.00014274, 0.000144365, 0.000145767, 
			6.91068e-05, 8.63391e-05, 0.00010104, 0.000113338, 0.000123517, 0.000131915, 0.000138843, 0.000144577, 0.000149342, 0.000153327, 0.000156678, 0.000159515, 0.000161932, 0.000164007, 0.000165798, 0.000167352, 
			8.85458e-05, 0.000105535, 0.000120099, 0.00013236, 0.000142582, 0.00015107, 0.000158123, 0.000164, 0.00016892, 0.000173061, 0.000176567, 0.000179553, 0.000182115, 0.000184323, 0.000186239, 0.000187912, 
			0.000107911, 0.000124649, 0.00013907, 0.000151274, 0.000161505, 0.000170041, 0.00017718, 0.000183162, 0.000188196, 0.000192458, 0.000196084, 0.000199189, 0.000201865, 0.000204184, 0.000206206, 0.000207978, 
			0.000127092, 0.000143664, 0.000157956, 0.000170094, 0.000180317, 0.000188891, 0.000196087, 0.000202145, 0.000207266, 0.000211618, 0.000215341, 0.000218543, 0.000221313, 0.000223724, 0.000225834, 0.000227692
		)
}

CapTable	"metal4_C_LATERAL_13MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000362961, 0.000195021, 0.000131928, 9.76788e-05, 7.59814e-05, 6.1038e-05, 5.0195e-05, 4.204e-05, 3.5742e-05, 3.07751e-05, 2.67901e-05, 2.3546e-05, 2.08712e-05, 1.86409e-05, 1.67621e-05, 1.51649e-05, 
			0.000376163, 0.000205418, 0.000140507, 0.000105072, 8.24891e-05, 6.68388e-05, 5.54084e-05, 4.67533e-05, 4.00224e-05, 3.46772e-05, 3.0359e-05, 2.68195e-05, 2.3882e-05, 2.14168e-05, 1.93276e-05, 1.75409e-05, 
			0.000383552, 0.000212149, 0.000146518, 0.000110481, 8.74045e-05, 7.13241e-05, 5.95162e-05, 5.05257e-05, 4.34946e-05, 3.78792e-05, 3.33178e-05, 2.95582e-05, 2.64211e-05, 2.37748e-05, 2.15208e-05, 1.9584e-05, 
			0.000388388, 0.000217165, 0.000151221, 0.000114835, 9.14262e-05, 7.50632e-05, 6.29812e-05, 5.37396e-05, 4.64783e-05, 4.06524e-05, 3.58974e-05, 3.19606e-05, 2.86608e-05, 2.58653e-05, 2.34741e-05, 2.14112e-05, 
			0.000392123, 0.000221192, 0.000155133, 0.000118542, 9.49108e-05, 7.83177e-05, 6.60265e-05, 5.65925e-05, 4.91506e-05, 4.31558e-05, 3.82435e-05, 3.41608e-05, 3.07255e-05, 2.78041e-05, 2.52963e-05, 2.31252e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_61MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			5.79418e-06, 7.76048e-06, 9.52182e-06, 1.10772e-05, 1.24407e-05, 1.35818e-05, 1.4572e-05, 1.53692e-05, 1.60814e-05, 1.6683e-05, 1.7194e-05, 1.76131e-05, 1.7985e-05, 1.8304e-05, 1.85777e-05, 1.88136e-05, 
			7.66612e-06, 9.60218e-06, 1.13747e-05, 1.29511e-05, 1.43528e-05, 1.55194e-05, 1.65599e-05, 1.74492e-05, 1.82041e-05, 1.8831e-05, 1.93838e-05, 1.98552e-05, 2.02605e-05, 2.06098e-05, 2.09103e-05, 2.11705e-05, 
			9.53162e-06, 1.14586e-05, 1.32236e-05, 1.48382e-05, 1.62194e-05, 1.74616e-05, 1.85307e-05, 1.94482e-05, 2.02174e-05, 2.08919e-05, 2.1471e-05, 2.19688e-05, 2.23992e-05, 2.27689e-05, 2.3091e-05, 2.33708e-05, 
			1.1395e-05, 1.33059e-05, 1.50531e-05, 1.66786e-05, 1.8121e-05, 1.93799e-05, 2.04523e-05, 2.13926e-05, 2.22034e-05, 2.29015e-05, 2.35001e-05, 2.40178e-05, 2.44657e-05, 2.48546e-05, 2.51916e-05, 2.54869e-05, 
			1.32735e-05, 1.51418e-05, 1.69336e-05, 1.85648e-05, 2.00178e-05, 2.12741e-05, 2.23818e-05, 2.33402e-05, 2.41676e-05, 2.48814e-05, 2.54996e-05, 2.60336e-05, 2.64946e-05, 2.68988e-05, 2.72538e-05, 2.77137e-05
		)
}

CapTable	"metal5_C_TOP_GP_61MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			4.43174e-05, 5.96341e-05, 7.25417e-05, 8.32461e-05, 9.20542e-05, 9.92848e-05, 0.00010526, 0.000110151, 0.000114261, 0.000117687, 0.00012055, 0.00012295, 0.000124991, 0.000126723, 0.000128201, 0.000129468, 
			6.21197e-05, 7.74911e-05, 9.04915e-05, 0.000101307, 0.000110298, 0.000117695, 0.000123897, 0.000129057, 0.000133372, 0.000136979, 0.000140032, 0.000142618, 0.000144815, 0.000146692, 0.000148302, 0.000149685, 
			8.02672e-05, 9.55028e-05, 0.000108422, 0.000119277, 0.000128289, 0.000135853, 0.000142177, 0.000147469, 0.000151908, 0.000155667, 0.000158851, 0.000161559, 0.000163873, 0.000165855, 0.000167562, 0.000169037, 
			9.84182e-05, 0.00011349, 0.0001263, 0.000137146, 0.000146248, 0.000153874, 0.000160268, 0.000165665, 0.00017022, 0.00017408, 0.000177367, 0.000180173, 0.000182574, 0.000184642, 0.000186434, 0.000187979, 
			0.000116532, 0.000131475, 0.00014427, 0.000155102, 0.00016422, 0.000171889, 0.000178367, 0.000183837, 0.000188474, 0.000192422, 0.000195784, 0.000198666, 0.000201146, 0.000203286, 0.000205136, 0.000206594
		)
}

CapTable	"metal5_C_LATERAL_61MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000362636, 0.000194501, 0.000131201, 9.67179e-05, 7.47555e-05, 5.957e-05, 4.84484e-05, 4.01078e-05, 3.35504e-05, 2.83536e-05, 2.41734e-05, 2.07879e-05, 1.79724e-05, 1.56296e-05, 1.36641e-05, 1.20027e-05, 
			0.000375225, 0.00020419, 0.000139012, 0.000103341, 8.04731e-05, 6.46285e-05, 5.2904e-05, 4.3976e-05, 3.7e-05, 3.14698e-05, 2.69646e-05, 2.32718e-05, 2.02121e-05, 1.76536e-05, 1.54967e-05, 1.36657e-05, 
			0.000381903, 0.000210158, 0.000144269, 0.000107946, 8.46678e-05, 6.82945e-05, 5.62027e-05, 4.69552e-05, 3.97208e-05, 3.39027e-05, 2.91726e-05, 2.52784e-05, 2.20382e-05, 1.93179e-05, 1.70162e-05, 1.5055e-05, 
			0.000386002, 0.000214434, 0.000148277, 0.0001116, 8.7901e-05, 7.12561e-05, 5.89361e-05, 4.94446e-05, 4.19642e-05, 3.59531e-05, 3.10481e-05, 2.69954e-05, 2.36117e-05, 2.07616e-05, 1.834e-05, 1.62751e-05, 
			0.000388945, 0.000217752, 0.000151393, 0.000114509, 9.0599e-05, 7.37593e-05, 6.12052e-05, 5.15346e-05, 4.38878e-05, 3.77224e-05, 3.2676e-05, 2.84936e-05, 2.49918e-05, 2.2034e-05, 1.95174e-05, 1.73691e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_62MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.66656e-05, 2.04126e-05, 2.33909e-05, 2.58712e-05, 2.80042e-05, 2.98862e-05, 3.15815e-05, 3.3133e-05, 3.45702e-05, 3.5915e-05, 3.7183e-05, 3.83856e-05, 3.95318e-05, 4.06287e-05, 4.16811e-05, 4.26934e-05, 
			1.9229e-05, 2.24468e-05, 2.51574e-05, 2.75047e-05, 2.95817e-05, 3.14538e-05, 3.31673e-05, 3.47547e-05, 3.62397e-05, 3.76397e-05, 3.89677e-05, 4.02338e-05, 4.14453e-05, 4.26087e-05, 4.3728e-05, 4.48077e-05, 
			2.14914e-05, 2.43712e-05, 2.68906e-05, 2.91334e-05, 3.11606e-05, 3.30162e-05, 3.47371e-05, 3.6346e-05, 3.7863e-05, 3.93018e-05, 4.06735e-05, 4.19864e-05, 4.32473e-05, 4.44609e-05, 4.56313e-05, 4.67624e-05, 
			2.35592e-05, 2.62074e-05, 2.85905e-05, 3.07558e-05, 3.27418e-05, 3.4585e-05, 3.63082e-05, 3.79336e-05, 3.94759e-05, 4.09452e-05, 4.23518e-05, 4.37025e-05, 4.50027e-05, 4.62574e-05, 4.74698e-05, 4.86429e-05, 
			2.54828e-05, 2.79852e-05, 3.02694e-05, 3.23742e-05, 3.43323e-05, 3.61642e-05, 3.78916e-05, 3.95298e-05, 4.10914e-05, 4.2586e-05, 4.40212e-05, 4.5403e-05, 4.67362e-05, 4.80248e-05, 4.9272e-05, 5.04804e-05
		)
}

CapTable	"metal5_C_LATERAL_62MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000387355, 0.000226141, 0.000167803, 0.000136779, 0.000117141, 0.00010338, 9.30684e-05, 8.49652e-05, 7.83692e-05, 7.28524e-05, 6.81386e-05, 6.40416e-05, 6.04302e-05, 5.72096e-05, 5.43099e-05, 5.16776e-05, 
			0.000409133, 0.000243858, 0.000182742, 0.000149818, 0.000128758, 0.000113884, 0.00010267, 9.38165e-05, 8.6583e-05, 8.05162e-05, 7.53217e-05, 7.07994e-05, 6.68086e-05, 6.32467e-05, 6.00379e-05, 5.71236e-05, 
			0.000423486, 0.000256413, 0.000193766, 0.000159646, 0.000137653, 0.000122013, 0.00011016, 0.000100764, 9.30619e-05, 8.65858e-05, 8.10292e-05, 7.61838e-05, 7.19023e-05, 6.80775e-05, 6.46293e-05, 6.14961e-05, 
			0.000433849, 0.000266077, 0.000202483, 0.000167549, 0.000144871, 0.000128673, 0.000116334, 0.000106517, 9.84474e-05, 9.16465e-05, 8.58004e-05, 8.06949e-05, 7.61785e-05, 7.21398e-05, 6.84958e-05, 6.51832e-05, 
			0.000441986, 0.000273862, 0.000209661, 0.000174145, 0.000150956, 0.000134308, 0.000121582, 0.000111429, 0.000103062, 9.59958e-05, 8.99114e-05, 8.45905e-05, 7.98781e-05, 7.56608e-05, 7.18528e-05, 6.83889e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_51MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			5.89568e-06, 8.1081e-06, 1.00472e-05, 1.17303e-05, 1.31582e-05, 1.43892e-05, 1.5387e-05, 1.62653e-05, 1.70051e-05, 1.76289e-05, 1.81415e-05, 1.85896e-05, 1.89711e-05, 1.92963e-05, 1.95754e-05, 1.98141e-05, 
			7.86926e-06, 1.00349e-05, 1.19818e-05, 1.36808e-05, 1.51691e-05, 1.64011e-05, 1.74852e-05, 1.84047e-05, 1.91842e-05, 1.98296e-05, 2.03938e-05, 2.08739e-05, 2.12838e-05, 2.16357e-05, 2.19367e-05, 2.21973e-05, 
			9.8567e-06, 1.19666e-05, 1.39196e-05, 1.56101e-05, 1.71196e-05, 1.84181e-05, 1.95266e-05, 2.04565e-05, 2.12626e-05, 2.19503e-05, 2.25375e-05, 2.30402e-05, 2.34716e-05, 2.38428e-05, 2.41632e-05, 2.4443e-05, 
			1.18373e-05, 1.39383e-05, 1.58421e-05, 1.75781e-05, 1.90966e-05, 2.04084e-05, 2.1518e-05, 2.24829e-05, 2.33103e-05, 2.40156e-05, 2.46224e-05, 2.51422e-05, 2.55893e-05, 2.59753e-05, 2.63085e-05, 2.68218e-05, 
			1.37945e-05, 1.58852e-05, 1.78234e-05, 1.95622e-05, 2.10742e-05, 2.23997e-05, 2.35444e-05, 2.45263e-05, 2.5368e-05, 2.60907e-05, 2.67137e-05, 2.72478e-05, 2.77129e-05, 2.83507e-05, 2.86511e-05, 2.89113e-05
		)
}

CapTable	"metal5_C_TOP_GP_51MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			4.42047e-05, 5.93184e-05, 7.21062e-05, 8.27392e-05, 9.14871e-05, 9.87123e-05, 0.000104622, 0.000109567, 0.000113666, 0.000117085, 0.000119934, 0.000122342, 0.000124376, 0.000126103, 0.000127575, 0.000128836, 
			6.19109e-05, 7.71131e-05, 9.00119e-05, 0.000100773, 0.00010973, 0.000117123, 0.000123311, 0.000128462, 0.00013277, 0.000136378, 0.000139427, 0.000142008, 0.000144201, 0.000146075, 0.000147679, 0.000149058, 
			7.99645e-05, 9.50552e-05, 0.000107919, 0.000118685, 0.000127733, 0.000135281, 0.000141595, 0.00014687, 0.000151319, 0.000155072, 0.000158252, 0.000160955, 0.000163267, 0.000165243, 0.000166944, 0.000168412, 
			9.80487e-05, 0.000113033, 0.00012581, 0.000136628, 0.000145712, 0.000153324, 0.000159715, 0.000165102, 0.000169651, 0.000173506, 0.000176786, 0.000179586, 0.000181983, 0.000184044, 0.00018583, 0.00018713, 
			0.000116086, 0.000131034, 0.000143808, 0.000154629, 0.00016373, 0.000171401, 0.000177866, 0.000183324, 0.000187951, 0.000191888, 0.000195241, 0.000198113, 0.000200578, 0.000202453, 0.000204345, 0.000205996
		)
}

CapTable	"metal5_C_LATERAL_51MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000362662, 0.000194475, 0.000131123, 9.65913e-05, 7.46262e-05, 5.93687e-05, 4.83028e-05, 3.98423e-05, 3.32713e-05, 2.80641e-05, 2.38994e-05, 2.04803e-05, 1.76639e-05, 1.53224e-05, 1.33599e-05, 1.17032e-05, 
			0.000375245, 0.000204144, 0.0001389, 0.00010317, 8.02581e-05, 6.43605e-05, 5.26109e-05, 4.36646e-05, 3.6675e-05, 3.11279e-05, 2.66183e-05, 2.29237e-05, 1.9865e-05, 1.73095e-05, 1.51577e-05, 1.33333e-05, 
			0.000381895, 0.000210105, 0.000144099, 0.000107794, 8.43707e-05, 6.7963e-05, 5.58466e-05, 4.66063e-05, 3.9328e-05, 3.35037e-05, 2.87711e-05, 2.48776e-05, 2.16406e-05, 1.89258e-05, 1.66314e-05, 1.468e-05, 
			0.000385944, 0.000214281, 0.000148018, 0.000111275, 8.75274e-05, 7.08492e-05, 5.84976e-05, 4.89927e-05, 4.15041e-05, 3.549e-05, 3.05852e-05, 2.6536e-05, 2.31587e-05, 2.03171e-05, 1.79063e-05, 1.58712e-05, 
			0.000388881, 0.000217486, 0.000151028, 0.000114069, 9.01306e-05, 7.32259e-05, 6.06516e-05, 5.09701e-05, 4.33188e-05, 3.71543e-05, 3.21129e-05, 2.79388e-05, 2.44483e-05, 2.15229e-05, 1.90175e-05, 1.68729e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_52MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.72606e-05, 2.11954e-05, 2.43407e-05, 2.69766e-05, 2.92558e-05, 3.12747e-05, 3.31001e-05, 3.47753e-05, 3.63306e-05, 3.77881e-05, 3.91633e-05, 4.04685e-05, 4.1712e-05, 4.29013e-05, 4.40413e-05, 4.51367e-05, 
			1.9999e-05, 2.34013e-05, 2.62844e-05, 2.87924e-05, 3.10226e-05, 3.30411e-05, 3.48942e-05, 3.66152e-05, 3.82281e-05, 3.97506e-05, 4.11958e-05, 4.25734e-05, 4.38915e-05, 4.51556e-05, 4.63709e-05, 4.75412e-05, 
			2.24406e-05, 2.55041e-05, 2.8198e-05, 3.06071e-05, 3.27947e-05, 3.48046e-05, 3.66722e-05, 3.84226e-05, 4.00753e-05, 4.16443e-05, 4.31404e-05, 4.45722e-05, 4.59458e-05, 4.72668e-05, 4.85391e-05, 4.97664e-05, 
			2.4689e-05, 2.75218e-05, 3.00835e-05, 3.24215e-05, 3.45747e-05, 3.65761e-05, 3.84555e-05, 4.02282e-05, 4.19122e-05, 4.3518e-05, 4.50547e-05, 4.65293e-05, 4.79479e-05, 4.93147e-05, 5.06334e-05, 5.1907e-05, 
			2.67988e-05, 2.94888e-05, 3.19558e-05, 3.42378e-05, 3.63672e-05, 3.83645e-05, 4.02517e-05, 4.20437e-05, 4.37525e-05, 4.53879e-05, 4.6958e-05, 4.84683e-05, 4.99237e-05, 5.13285e-05, 5.26854e-05, 5.39976e-05
		)
}

CapTable	"metal5_C_LATERAL_52MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000386865, 0.000225518, 0.000167068, 0.000135943, 0.000116213, 0.000102368, 9.19778e-05, 8.38018e-05, 7.7138e-05, 7.15585e-05, 6.6787e-05, 6.26366e-05, 5.89767e-05, 5.57122e-05, 5.2773e-05, 5.01054e-05, 
			0.000408506, 0.000243103, 0.000181875, 0.000148849, 0.000127695, 0.000112734, 0.000101438, 9.25078e-05, 8.52034e-05, 7.90712e-05, 7.38161e-05, 6.92387e-05, 6.51974e-05, 6.15905e-05, 5.83411e-05, 5.5391e-05, 
			0.000422724, 0.000255529, 0.000192772, 0.000158549, 0.000136458, 0.000120728, 0.000108792, 9.93177e-05, 9.15435e-05, 8.50004e-05, 7.93825e-05, 7.44814e-05, 7.01498e-05, 6.62799e-05, 6.27917e-05, 5.96232e-05, 
			0.000432961, 0.000265068, 0.000201361, 0.000166321, 0.000143546, 0.000127257, 0.000114833, 0.000104938, 9.6796e-05, 8.99282e-05, 8.40213e-05, 7.88612e-05, 7.42952e-05, 7.02125e-05, 6.653e-05, 6.31834e-05, 
			0.000440966, 0.000272721, 0.000208408, 0.000172787, 0.000149502, 0.000132763, 0.000119953, 0.000109722, 0.000101283, 9.41514e-05, 8.80074e-05, 8.2633e-05, 7.7873e-05, 7.36134e-05, 6.97687e-05, 6.62729e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_41MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			6.69004e-06, 9.23524e-06, 1.14912e-05, 1.3417e-05, 1.50738e-05, 1.6492e-05, 1.76544e-05, 1.8663e-05, 1.95087e-05, 2.02199e-05, 2.08099e-05, 2.13163e-05, 2.17448e-05, 2.21101e-05, 2.24193e-05, 2.26876e-05, 
			8.95706e-06, 1.14953e-05, 1.37074e-05, 1.56789e-05, 1.73944e-05, 1.88292e-05, 2.00739e-05, 2.11274e-05, 2.20059e-05, 2.27597e-05, 2.33992e-05, 2.39413e-05, 2.44014e-05, 2.4794e-05, 2.51363e-05, 2.5424e-05, 
			1.12542e-05, 1.37033e-05, 1.59594e-05, 1.79263e-05, 1.96657e-05, 2.1159e-05, 2.24314e-05, 2.35024e-05, 2.44241e-05, 2.52045e-05, 2.58714e-05, 2.64375e-05, 2.69275e-05, 2.73428e-05, 2.77e-05, 2.83142e-05, 
			1.35583e-05, 1.59856e-05, 1.82001e-05, 2.02034e-05, 2.19523e-05, 2.34472e-05, 2.47394e-05, 2.58446e-05, 2.67868e-05, 2.75892e-05, 2.82772e-05, 2.88691e-05, 2.93735e-05, 3.01601e-05, 3.04758e-05, 3.07502e-05, 
			1.58418e-05, 1.82553e-05, 2.04918e-05, 2.24977e-05, 2.42477e-05, 2.57706e-05, 2.7083e-05, 2.82061e-05, 2.91673e-05, 2.99967e-05, 3.0702e-05, 3.13095e-05, 3.21569e-05, 3.25539e-05, 3.28975e-05, 3.31934e-05
		)
}

CapTable	"metal5_C_TOP_GP_41MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			4.37688e-05, 5.86816e-05, 7.12818e-05, 8.18213e-05, 9.04666e-05, 9.76063e-05, 0.000103463, 0.000108336, 0.00011237, 0.00011573, 0.000118532, 0.000120891, 0.000122883, 0.000124572, 0.000126012, 0.000127242, 
			6.13705e-05, 7.63129e-05, 8.91204e-05, 9.97573e-05, 0.000108615, 0.000115944, 0.000122056, 0.000127139, 0.000131382, 0.000134944, 0.000137944, 0.00014048, 0.000142636, 0.000144477, 0.000146049, 0.000147406, 
			7.92992e-05, 9.41977e-05, 0.000106907, 0.000117574, 0.000126524, 0.00013399, 0.000140232, 0.000145453, 0.000149843, 0.000153548, 0.000156684, 0.000159351, 0.000161626, 0.000163577, 0.000165259, 0.000166384, 
			9.72377e-05, 0.000112037, 0.000124682, 0.000135384, 0.000144376, 0.000151911, 0.000158248, 0.000163579, 0.00016808, 0.000171893, 0.000175139, 0.000177905, 0.000180278, 0.00018194, 0.000183772, 0.000185363, 
			0.000115134, 0.000129896, 0.000142526, 0.000153236, 0.000162257, 0.000169859, 0.000176267, 0.000181678, 0.000186264, 0.000190161, 0.000193487, 0.000196336, 0.000198442, 0.000200614, 0.000202504, 0.000204155
		)
}

CapTable	"metal5_C_LATERAL_41MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000362382, 0.000194125, 0.000130716, 9.6115e-05, 7.41006e-05, 5.88087e-05, 4.76913e-05, 3.92218e-05, 3.26494e-05, 2.74457e-05, 2.32782e-05, 1.98705e-05, 1.70666e-05, 1.47375e-05, 1.2787e-05, 1.11417e-05, 
			0.000374853, 0.000203717, 0.000138396, 0.000102614, 7.966e-05, 6.37045e-05, 5.19369e-05, 4.29808e-05, 3.60027e-05, 3.0431e-05, 2.59269e-05, 2.22391e-05, 1.91876e-05, 1.6639e-05, 1.44935e-05, 1.26741e-05, 
			0.00038141, 0.00020958, 0.000143534, 0.000107159, 8.37001e-05, 6.72652e-05, 5.51286e-05, 4.58634e-05, 3.85787e-05, 3.27513e-05, 2.80174e-05, 2.41235e-05, 2.08867e-05, 1.81712e-05, 1.5875e-05, 1.39448e-05, 
			0.000385403, 0.000213716, 0.000147393, 0.000110614, 8.68319e-05, 7.01372e-05, 5.7736e-05, 4.82126e-05, 4.071e-05, 3.46842e-05, 2.97696e-05, 2.57113e-05, 2.23243e-05, 1.95035e-05, 1.7078e-05, 1.5006e-05, 
			0.00038829, 0.000216881, 0.000150394, 0.000113397, 8.94085e-05, 7.24688e-05, 5.9864e-05, 5.01561e-05, 4.24819e-05, 3.62975e-05, 3.12368e-05, 2.70439e-05, 2.35603e-05, 2.05943e-05, 1.80681e-05, 1.59018e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_42MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.83386e-05, 2.26139e-05, 2.60747e-05, 2.90046e-05, 3.15591e-05, 3.38394e-05, 3.59127e-05, 3.78225e-05, 3.96008e-05, 4.12695e-05, 4.28441e-05, 4.43369e-05, 4.57566e-05, 4.71108e-05, 4.84047e-05, 4.96426e-05, 
			2.1413e-05, 2.51565e-05, 2.83657e-05, 3.11828e-05, 3.3707e-05, 3.60066e-05, 3.81279e-05, 4.01043e-05, 4.19598e-05, 4.37123e-05, 4.53747e-05, 4.6957e-05, 4.84673e-05, 4.99114e-05, 5.12945e-05, 5.26204e-05, 
			2.41976e-05, 2.76102e-05, 3.06396e-05, 3.33735e-05, 3.58697e-05, 3.8176e-05, 4.03273e-05, 4.2349e-05, 4.42589e-05, 4.60718e-05, 4.77984e-05, 4.94469e-05, 5.10244e-05, 5.2536e-05, 5.39858e-05, 5.53781e-05, 
			2.68044e-05, 2.99944e-05, 3.29039e-05, 3.55757e-05, 3.80517e-05, 4.03637e-05, 4.25393e-05, 4.45945e-05, 4.6548e-05, 4.84075e-05, 5.01847e-05, 5.18857e-05, 5.35163e-05, 5.50815e-05, 5.65849e-05, 5.80306e-05, 
			2.92824e-05, 3.23406e-05, 3.51646e-05, 3.77938e-05, 4.02564e-05, 4.25746e-05, 4.47672e-05, 4.68516e-05, 4.88365e-05, 5.07354e-05, 5.25528e-05, 5.42959e-05, 5.597e-05, 5.75786e-05, 5.91259e-05, 6.06145e-05
		)
}

CapTable	"metal5_C_LATERAL_42MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000385986, 0.000224405, 0.000165746, 0.000134433, 0.00011453, 0.000100525, 8.99889e-05, 8.16794e-05, 7.48938e-05, 6.9204e-05, 6.43336e-05, 6.00953e-05, 5.63581e-05, 5.30264e-05, 5.00296e-05, 4.73138e-05, 
			0.000407378, 0.000241742, 0.000180305, 0.000147083, 0.000125747, 0.00011062, 9.9171e-05, 9.01015e-05, 8.26708e-05, 7.64249e-05, 7.10688e-05, 6.6402e-05, 6.22829e-05, 5.86088e-05, 5.53025e-05, 5.23057e-05, 
			0.000421338, 0.000253915, 0.000190945, 0.000156523, 0.000134249, 0.00011835, 0.000106258, 9.66434e-05, 8.87429e-05, 8.20868e-05, 7.63689e-05, 7.13804e-05, 6.69729e-05, 6.30386e-05, 5.94966e-05, 5.62845e-05, 
			0.000431315, 0.000263196, 0.000199275, 0.000164037, 0.000141077, 0.000124619, 0.000112042, 0.000102008, 9.37418e-05, 8.67642e-05, 8.07607e-05, 7.55166e-05, 7.08792e-05, 6.67366e-05, 6.30048e-05, 5.96187e-05, 
			0.000439065, 0.000270592, 0.000206066, 0.000170247, 0.00014678, 0.000129876, 0.000116916, 0.000106551, 9.79927e-05, 9.07556e-05, 8.45202e-05, 7.90675e-05, 7.42412e-05, 6.99269e-05, 6.6038e-05, 6.25083e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_31MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			9.03266e-06, 1.24998e-05, 1.55784e-05, 1.82598e-05, 2.05435e-05, 2.24995e-05, 2.41119e-05, 2.54884e-05, 2.66357e-05, 2.75811e-05, 2.83826e-05, 2.90517e-05, 2.95984e-05, 3.00642e-05, 3.04538e-05, 3.08323e-05, 
			1.21761e-05, 1.56013e-05, 1.87051e-05, 2.14655e-05, 2.38147e-05, 2.58493e-05, 2.75687e-05, 2.90018e-05, 3.02176e-05, 3.12316e-05, 3.2083e-05, 3.27996e-05, 3.34004e-05, 3.39772e-05, 3.43732e-05, 3.47126e-05, 
			1.53863e-05, 1.87856e-05, 2.19281e-05, 2.46872e-05, 2.71132e-05, 2.91917e-05, 3.0946e-05, 3.24422e-05, 3.37075e-05, 3.47557e-05, 3.56495e-05, 3.64043e-05, 3.70902e-05, 3.76041e-05, 3.80428e-05, 3.84195e-05, 
			1.8629e-05, 2.19978e-05, 2.51472e-05, 2.79586e-05, 3.03993e-05, 3.251e-05, 3.43112e-05, 3.58369e-05, 3.7133e-05, 3.82281e-05, 3.9213e-05, 3.99703e-05, 4.06154e-05, 4.11697e-05, 4.16443e-05, 4.20554e-05, 
			2.18932e-05, 2.53007e-05, 2.84581e-05, 3.12799e-05, 3.37677e-05, 3.59148e-05, 3.77381e-05, 3.92991e-05, 4.06266e-05, 4.17808e-05, 4.27182e-05, 4.35161e-05, 4.41993e-05, 4.47867e-05, 4.52949e-05, 4.57218e-05
		)
}

CapTable	"metal5_C_TOP_GP_31MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			4.27309e-05, 5.74608e-05, 7.00011e-05, 8.04766e-05, 8.91393e-05, 9.62776e-05, 0.000102154, 0.000106999, 0.000110991, 0.000114296, 0.000117031, 0.000119304, 0.000121211, 0.000122799, 0.000124131, 0.0001252, 
			6.03327e-05, 7.52951e-05, 8.80412e-05, 9.87424e-05, 0.000107651, 0.000115052, 0.000121185, 0.000126271, 0.000130493, 0.000134009, 0.000136941, 0.000139391, 0.000141445, 0.000143095, 0.000144584, 0.000145835, 
			7.84165e-05, 9.33916e-05, 0.000106197, 0.000117002, 0.000126053, 0.0001336, 0.000139896, 0.000145139, 0.000149512, 0.000153184, 0.000156248, 0.00015882, 0.000160931, 0.000162786, 0.000164343, 0.000165655, 
			9.66638e-05, 0.000111612, 0.000124449, 0.000135319, 0.000144465, 0.00015212, 0.000158533, 0.000163902, 0.000168396, 0.000172165, 0.000175269, 0.000177968, 0.00018024, 0.000182143, 0.000183754, 0.000185105, 
			0.000114983, 0.000129967, 0.000142825, 0.000153751, 0.000162963, 0.000170702, 0.000177216, 0.000182669, 0.000187249, 0.000191071, 0.000194334, 0.000197082, 0.000199395, 0.00020134, 0.000202978, 0.000204383
		)
}

CapTable	"metal5_C_LATERAL_31MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000361332, 0.000192573, 0.00012867, 9.36502e-05, 7.12575e-05, 5.56713e-05, 4.4303e-05, 3.56793e-05, 2.9008e-05, 2.37611e-05, 1.95653e-05, 1.61798e-05, 1.34227e-05, 1.1162e-05, 9.29594e-06, 7.75074e-06, 
			0.000373153, 0.000201421, 0.000135595, 9.92967e-05, 7.59721e-05, 5.96375e-05, 4.76311e-05, 3.85165e-05, 3.1414e-05, 2.57918e-05, 2.12818e-05, 1.76253e-05, 1.4635e-05, 1.21781e-05, 1.01342e-05, 8.43125e-06, 
			0.000378946, 0.000206465, 0.00013983, 0.000102913, 7.90303e-05, 6.22594e-05, 4.98817e-05, 4.04264e-05, 3.30389e-05, 2.71663e-05, 2.24379e-05, 1.85905e-05, 1.54378e-05, 1.28253e-05, 1.06563e-05, 8.84584e-06, 
			0.000382071, 0.000209731, 0.000142734, 0.000105417, 8.12017e-05, 6.41418e-05, 5.14864e-05, 4.17931e-05, 3.41942e-05, 2.81361e-05, 2.3248e-05, 1.92525e-05, 1.59642e-05, 1.32455e-05, 1.09803e-05, 9.08799e-06, 
			0.000384006, 0.000211884, 0.000144754, 0.000107215, 8.27571e-05, 6.54704e-05, 5.26151e-05, 4.27479e-05, 3.4993e-05, 2.87974e-05, 2.3779e-05, 1.96743e-05, 1.62947e-05, 1.34954e-05, 1.11614e-05, 9.20447e-06
		)
}

CapTable	"metal5_C_BOTTOM_GP_32MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.07466e-05, 2.58485e-05, 3.00969e-05, 3.37795e-05, 3.70502e-05, 4.00085e-05, 4.27195e-05, 4.52269e-05, 4.75608e-05, 4.97438e-05, 5.17922e-05, 5.37186e-05, 5.55332e-05, 5.72449e-05, 5.88606e-05, 6.03872e-05, 
			2.46848e-05, 2.93031e-05, 3.33561e-05, 3.69858e-05, 4.02864e-05, 4.33205e-05, 4.61314e-05, 4.87529e-05, 5.12081e-05, 5.35139e-05, 5.56853e-05, 5.77325e-05, 5.96656e-05, 6.14925e-05, 6.32198e-05, 6.48543e-05, 
			2.8406e-05, 3.27365e-05, 3.66573e-05, 4.02494e-05, 4.3563e-05, 4.66432e-05, 4.95211e-05, 5.22186e-05, 5.4755e-05, 5.71463e-05, 5.9403e-05, 6.15359e-05, 6.35529e-05, 6.54622e-05, 6.72697e-05, 6.89822e-05, 
			3.20138e-05, 3.61595e-05, 3.99974e-05, 4.35632e-05, 4.68877e-05, 4.99996e-05, 5.29242e-05, 5.56763e-05, 5.82736e-05, 6.0727e-05, 6.30476e-05, 6.52442e-05, 6.73252e-05, 6.92969e-05, 7.11662e-05, 7.29389e-05, 
			3.55404e-05, 3.95867e-05, 4.3367e-05, 4.69123e-05, 5.02435e-05, 5.33781e-05, 5.63349e-05, 5.91279e-05, 6.17686e-05, 6.4269e-05, 6.66378e-05, 6.88841e-05, 7.10143e-05, 7.30353e-05, 7.49532e-05, 7.67739e-05
		)
}

CapTable	"metal5_C_LATERAL_32MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000383953, 0.000221739, 0.000162502, 0.000130666, 0.000110293, 9.58706e-05, 8.49654e-05, 7.63333e-05, 6.92695e-05, 6.33427e-05, 5.82736e-05, 5.38723e-05, 5.00046e-05, 4.65727e-05, 4.35028e-05, 4.0738e-05, 
			0.000404594, 0.000238295, 0.000176257, 0.000142498, 0.000120684, 0.000105136, 9.33209e-05, 8.39362e-05, 7.62376e-05, 6.97679e-05, 6.42281e-05, 5.94149e-05, 5.5183e-05, 5.14262e-05, 4.80651e-05, 4.50374e-05, 
			0.000417754, 0.000249663, 0.000186092, 0.000151138, 0.000128398, 0.000112093, 9.96531e-05, 8.97428e-05, 8.15956e-05, 7.47373e-05, 6.88584e-05, 6.37454e-05, 5.92472e-05, 5.52516e-05, 5.16751e-05, 4.8452e-05, 
			0.000426919, 0.000258142, 0.000193637, 0.000157886, 0.000134484, 0.000117646, 0.000104747, 9.44443e-05, 8.59586e-05, 7.88054e-05, 7.26664e-05, 6.73229e-05, 6.26178e-05, 5.84363e-05, 5.4691e-05, 5.13142e-05, 
			0.000433863, 0.000264758, 0.000199679, 0.000163379, 0.0001395, 0.000122246, 0.000108995, 9.83917e-05, 8.96428e-05, 8.22578e-05, 7.5913e-05, 7.0385e-05, 6.55138e-05, 6.11817e-05, 5.72992e-05, 5.37967e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_21MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.47144e-05, 2.00362e-05, 2.49095e-05, 2.92515e-05, 3.30214e-05, 3.61836e-05, 3.88237e-05, 4.09793e-05, 4.27351e-05, 4.41528e-05, 4.52869e-05, 4.61905e-05, 4.69109e-05, 4.74935e-05, 4.79748e-05, 4.83435e-05, 
			2.01037e-05, 2.55553e-05, 3.06033e-05, 3.512e-05, 3.9055e-05, 4.23867e-05, 4.51553e-05, 4.74376e-05, 4.92934e-05, 5.07963e-05, 5.19868e-05, 5.29579e-05, 5.37632e-05, 5.43843e-05, 5.48799e-05, 5.52756e-05, 
			2.57317e-05, 3.12788e-05, 3.64302e-05, 4.10679e-05, 4.50919e-05, 4.85129e-05, 5.1367e-05, 5.37138e-05, 5.56081e-05, 5.71631e-05, 5.8424e-05, 5.94604e-05, 6.02686e-05, 6.09151e-05, 6.14323e-05, 6.18456e-05, 
			3.15195e-05, 3.71314e-05, 4.23667e-05, 4.70665e-05, 5.11605e-05, 5.46353e-05, 5.75386e-05, 5.99007e-05, 6.18633e-05, 6.34899e-05, 6.47716e-05, 6.58042e-05, 6.66309e-05, 6.72952e-05, 6.78254e-05, 6.82486e-05, 
			3.74196e-05, 4.30854e-05, 4.83717e-05, 5.31222e-05, 5.7253e-05, 6.07289e-05, 6.36684e-05, 6.61002e-05, 6.81206e-05, 6.9728e-05, 7.10293e-05, 7.20766e-05, 7.2917e-05, 7.35899e-05, 7.41258e-05, 7.45573e-05
		)
}

CapTable	"metal5_C_TOP_GP_21MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			4.02524e-05, 5.47574e-05, 6.71441e-05, 7.74815e-05, 8.59753e-05, 9.28987e-05, 9.8485e-05, 0.000102977, 0.00010657, 0.000109431, 0.000111713, 0.000113534, 0.000114982, 0.000116123, 0.000117007, 0.000117728, 
			5.76621e-05, 7.2525e-05, 8.52151e-05, 9.58313e-05, 0.000104581, 0.000111735, 0.000117533, 0.000122205, 0.000125954, 0.000128953, 0.000131367, 0.000133275, 0.000134758, 0.000135965, 0.000136924, 0.000137686, 
			7.57151e-05, 9.06788e-05, 0.000103475, 0.000114201, 0.000123079, 0.000130348, 0.000136253, 0.000141028, 0.00014489, 0.000147962, 0.000150413, 0.000152338, 0.000153899, 0.00015514, 0.000156124, 0.000156908, 
			9.40339e-05, 0.00010901, 0.000121844, 0.000132629, 0.000141569, 0.000148898, 0.000154869, 0.000159736, 0.000163617, 0.000166692, 0.000169187, 0.000171178, 0.000172764, 0.000174023, 0.000175027, 0.000175826, 
			0.000112466, 0.000127487, 0.000140337, 0.000151148, 0.000160129, 0.000167544, 0.000173547, 0.000178401, 0.000182272, 0.000185416, 0.00018793, 0.000189932, 0.000191533, 0.000192807, 0.000193827, 0.000194631
		)
}

CapTable	"metal5_C_LATERAL_21MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000358834, 0.000189046, 0.000124199, 8.83935e-05, 6.53988e-05, 4.94682e-05, 3.79238e-05, 2.93415e-05, 2.28446e-05, 1.78728e-05, 1.4035e-05, 1.10533e-05, 8.72634e-06, 6.90514e-06, 5.47686e-06, 4.35019e-06, 
			0.000369244, 0.000196396, 0.000129579, 9.2521e-05, 6.86344e-05, 5.20243e-05, 3.99655e-05, 3.09702e-05, 2.41472e-05, 1.89122e-05, 1.48606e-05, 1.17088e-05, 9.25e-06, 7.31839e-06, 5.79953e-06, 4.60258e-06, 
			0.000373528, 0.000199921, 0.000132362, 9.47176e-05, 7.04032e-05, 5.34492e-05, 4.11104e-05, 3.1892e-05, 2.48849e-05, 1.95023e-05, 1.53322e-05, 1.2088e-05, 9.5466e-06, 7.55185e-06, 5.98326e-06, 4.74541e-06, 
			0.000375138, 0.000201726, 0.00013389, 9.59773e-05, 7.14207e-05, 5.42917e-05, 4.17942e-05, 3.24405e-05, 2.53287e-05, 1.98605e-05, 1.56178e-05, 1.23102e-05, 9.72087e-06, 7.68874e-06, 6.08768e-06, 4.82434e-06, 
			0.000375637, 0.000202588, 0.000134727, 9.67002e-05, 7.203e-05, 5.47823e-05, 4.21954e-05, 3.27734e-05, 2.56066e-05, 2.00848e-05, 1.58015e-05, 1.24624e-05, 9.84542e-06, 7.78938e-06, 6.16846e-06, 4.88986e-06
		)
}

CapTable	"metal5_C_BOTTOM_GP_22MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.55248e-05, 3.25415e-05, 3.85848e-05, 4.39256e-05, 4.87012e-05, 5.30074e-05, 5.69121e-05, 6.04645e-05, 6.37049e-05, 6.66669e-05, 6.93784e-05, 7.18638e-05, 7.41448e-05, 7.62411e-05, 7.81691e-05, 7.99445e-05, 
			3.14538e-05, 3.80727e-05, 4.40093e-05, 4.93735e-05, 5.42447e-05, 5.86802e-05, 6.27301e-05, 6.64364e-05, 6.98314e-05, 7.29467e-05, 7.58085e-05, 7.84398e-05, 8.08625e-05, 8.30948e-05, 8.51543e-05, 8.70561e-05, 
			3.72974e-05, 4.36834e-05, 4.95334e-05, 5.48912e-05, 5.98004e-05, 6.43012e-05, 6.8432e-05, 7.22285e-05, 7.57179e-05, 7.89306e-05, 8.18905e-05, 8.46194e-05, 8.71384e-05, 8.94657e-05, 9.16184e-05, 9.36111e-05, 
			4.3106e-05, 4.93312e-05, 5.51085e-05, 6.04467e-05, 6.5368e-05, 6.99017e-05, 7.40796e-05, 7.7931e-05, 8.14834e-05, 8.47624e-05, 8.77906e-05, 9.05906e-05, 9.31812e-05, 9.55794e-05, 9.78037e-05, 9.98676e-05, 
			4.8867e-05, 5.50021e-05, 6.07172e-05, 6.60274e-05, 7.09467e-05, 7.54975e-05, 7.97037e-05, 8.35932e-05, 8.71906e-05, 9.05181e-05, 9.35998e-05, 9.64558e-05, 9.91029e-05, 0.00010156, 0.000103842, 0.000105964
		)
}

CapTable	"metal5_C_LATERAL_22MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000380064, 0.000216623, 0.000156369, 0.000123694, 0.000102644, 8.76926e-05, 7.63882e-05, 6.74702e-05, 6.02174e-05, 5.41836e-05, 4.90764e-05, 4.46942e-05, 4.08923e-05, 3.75637e-05, 3.46276e-05, 3.20211e-05, 
			0.000399319, 0.000231889, 0.000168916, 0.000134399, 0.000111993, 9.59946e-05, 8.38555e-05, 7.42538e-05, 6.64286e-05, 5.99074e-05, 5.43788e-05, 4.96278e-05, 4.54994e-05, 4.18799e-05, 3.86817e-05, 3.58378e-05, 
			0.000411194, 0.000242089, 0.000177695, 0.000142093, 0.000118858, 0.000102194, 8.95104e-05, 7.94531e-05, 7.12401e-05, 6.43832e-05, 5.85603e-05, 5.3548e-05, 4.91859e-05, 4.5355e-05, 4.19644e-05, 3.89444e-05, 
			0.000419202, 0.00024955, 0.000184351, 0.000148067, 0.000124272, 0.000107165, 9.40982e-05, 8.37144e-05, 7.52186e-05, 6.81134e-05, 6.20696e-05, 5.68588e-05, 5.23166e-05, 4.8321e-05, 4.47793e-05, 4.16192e-05, 
			0.000425149, 0.000255307, 0.000189658, 0.000152935, 0.000128758, 0.000111314, 9.79633e-05, 8.73342e-05, 7.86212e-05, 7.13219e-05, 6.51028e-05, 5.97324e-05, 5.50441e-05, 5.09135e-05, 4.72469e-05, 4.39704e-05
		)
}

CapTable	"metal5_C_BOTTOM_GPMAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			3.80605e-05, 5.31194e-05, 6.60748e-05, 7.65652e-05, 8.4635e-05, 9.06104e-05, 9.49151e-05, 9.79462e-05, 0.000100056, 0.000101506, 0.000102497, 0.00010317, 0.000103623, 0.000103928, 0.000104134, 0.000104272, 
			5.60979e-05, 7.16666e-05, 8.49283e-05, 9.56073e-05, 0.0001038, 0.000109864, 0.000114217, 0.000117291, 0.000119422, 0.000120885, 0.00012188, 0.000122553, 0.000123005, 0.000123308, 0.000123509, 0.000123644, 
			7.48531e-05, 9.05505e-05, 0.000103873, 0.000114586, 0.000122785, 0.000128854, 0.000133208, 0.000136272, 0.000138397, 0.000139851, 0.000140836, 0.000141501, 0.000141945, 0.00014224, 0.000142435, 0.000142565, 
			9.38399e-05, 0.000109536, 0.000122853, 0.00013354, 0.000141735, 0.00014777, 0.000152104, 0.000155151, 0.000157256, 0.000158696, 0.000159667, 0.000160321, 0.000160755, 0.000161041, 0.00016123, 0.00016135, 
			0.000112847, 0.000128537, 0.000141824, 0.000152481, 0.000160636, 0.000166645, 0.000170954, 0.000173972, 0.000176058, 0.000177479, 0.000178437, 0.000179078, 0.000179502, 0.00017978, 0.00017996, 0.000180081
		)
}

CapTable	"metal5_C_TOP_GPMAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			3.75871e-05, 5.21447e-05, 6.45329e-05, 7.44828e-05, 8.20999e-05, 8.77233e-05, 9.17601e-05, 9.46114e-05, 9.65887e-05, 9.79531e-05, 9.88865e-05, 9.95203e-05, 9.99517e-05, 0.000100244, 0.00010044, 0.000100571, 
			5.56025e-05, 7.06426e-05, 8.33139e-05, 9.34448e-05, 0.000101183, 0.000106884, 0.000110989, 0.00011387, 0.000115877, 0.000117256, 0.000118201, 0.000118843, 0.000119278, 0.000119571, 0.000119766, 0.000119893, 
			7.42301e-05, 8.93854e-05, 0.000102119, 0.000112277, 0.000120042, 0.000125747, 0.000129851, 0.000132742, 0.000134747, 0.000136128, 0.000137072, 0.000137712, 0.000138144, 0.000138433, 0.000138622, 0.000138744, 
			9.30363e-05, 0.000108189, 0.000120911, 0.000131075, 0.000138813, 0.000144512, 0.000148604, 0.000151487, 0.000153489, 0.000154864, 0.000155802, 0.000156436, 0.000156862, 0.000157144, 0.000157328, 0.000157447, 
			0.000111876, 0.000127051, 0.000139751, 0.000149885, 0.000157616, 0.000163302, 0.000167383, 0.000170253, 0.000172243, 0.00017361, 0.000174539, 0.000175167, 0.000175587, 0.000175867, 0.000176043, 0.000176151
		)
}

CapTable	"metal5_C_LATERALMAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000344747, 0.00017081, 0.000103505, 6.6792e-05, 4.41694e-05, 2.95047e-05, 1.97856e-05, 1.32801e-05, 8.90848e-06, 5.96546e-06, 3.98401e-06, 2.65079e-06, 1.75386e-06, 1.15121e-06, 7.46925e-07, 4.76806e-07, 
			0.000349115, 0.0001732, 0.000104821, 6.75707e-05, 4.46337e-05, 2.97732e-05, 1.99268e-05, 1.33425e-05, 8.9203e-06, 5.94807e-06, 3.95007e-06, 2.60876e-06, 1.7099e-06, 1.10915e-06, 7.09654e-07, 4.46418e-07, 
			0.000348852, 0.000173159, 0.000104754, 6.74694e-05, 4.45211e-05, 2.96562e-05, 1.9812e-05, 1.32318e-05, 8.81882e-06, 5.85592e-06, 3.86884e-06, 2.53882e-06, 1.65141e-06, 1.06235e-06, 6.74663e-07, 4.22794e-07, 
			0.000347214, 0.000172444, 0.000104289, 6.7114e-05, 4.42299e-05, 2.94353e-05, 1.96295e-05, 1.30801e-05, 8.69173e-06, 5.75117e-06, 3.7837e-06, 2.47145e-06, 1.60034e-06, 1.02634e-06, 6.5263e-07, 4.12756e-07, 
			0.000345464, 0.000171541, 0.000103719, 6.67125e-05, 4.39267e-05, 2.91852e-05, 1.94282e-05, 1.29233e-05, 8.56993e-06, 5.65732e-06, 3.71302e-06, 2.42018e-06, 1.56555e-06, 1.0057e-06, 6.44932e-07, 4.15632e-07
		)
}

CapTable	"metal5_C_BOTTOM_GP_12MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			4.98106e-05, 6.69407e-05, 8.14209e-05, 9.34097e-05, 0.000103222, 0.000111223, 0.000117756, 0.000123114, 0.000127532, 0.000131202, 0.00013427, 0.000136858, 0.000139055, 0.000140932, 0.000142552, 0.000143954, 
			6.89864e-05, 8.60364e-05, 0.000100523, 0.000112595, 0.000122555, 0.00013075, 0.000137501, 0.000143087, 0.000147731, 0.000151621, 0.000154902, 0.000157685, 0.000160068, 0.000162119, 0.000163895, 0.000165445, 
			8.83722e-05, 0.00010518, 0.000119534, 0.000131572, 0.000141575, 0.000149862, 0.000156737, 0.000162462, 0.000167258, 0.000171298, 0.000174727, 0.000177656, 0.000180174, 0.000182356, 0.000184255, 0.00018592, 
			0.000107678, 0.000124238, 0.000138452, 0.000150437, 0.000160451, 0.000168788, 0.000175749, 0.000181577, 0.000186484, 0.000190642, 0.000194187, 0.000197229, 0.000199858, 0.000202143, 0.000204144, 0.000205904, 
			0.000126774, 0.000143161, 0.00015724, 0.000169154, 0.000179155, 0.000187524, 0.000194538, 0.000200438, 0.000205426, 0.000209672, 0.000213308, 0.000216443, 0.000219162, 0.000221533, 0.000223618, 0.000225457
		)
}

CapTable	"metal5_C_LATERAL_12MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000363177, 0.000195458, 0.000132576, 9.85135e-05, 7.69734e-05, 6.21575e-05, 5.1413e-05, 4.33306e-05, 3.70818e-05, 3.21446e-05, 2.81733e-05, 2.49299e-05, 2.22459e-05, 1.99984e-05, 1.80971e-05, 1.64735e-05, 
			0.000376558, 0.000206035, 0.000141322, 0.000106057, 8.36158e-05, 6.80809e-05, 5.67403e-05, 4.81519e-05, 4.14663e-05, 3.61486e-05, 3.18433e-05, 2.83046e-05, 2.53583e-05, 2.2877e-05, 2.07662e-05, 1.89543e-05, 
			0.000384135, 0.000212932, 0.000147477, 0.000111591, 8.86427e-05, 7.26676e-05, 6.09423e-05, 5.20139e-05, 4.5026e-05, 3.94374e-05, 3.48888e-05, 3.11312e-05, 2.7987e-05, 2.53264e-05, 2.3053e-05, 2.1093e-05, 
			0.00038913, 0.000218088, 0.000152298, 0.000116047, 9.27556e-05, 7.64898e-05, 6.44857e-05, 5.53034e-05, 4.80844e-05, 4.22856e-05, 3.75452e-05, 3.36123e-05, 3.03078e-05, 2.75009e-05, 2.5093e-05, 2.30097e-05, 
			0.000393025, 0.000222257, 0.000156345, 0.000119882, 9.6362e-05, 7.98627e-05, 6.76477e-05, 5.82725e-05, 5.08732e-05, 4.49064e-05, 4.001e-05, 3.59327e-05, 3.24946e-05, 2.95635e-05, 2.7041e-05, 2.48513e-05
		)
}

CapTable	"metal6_C_BOTTOM_GP_71MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.44, 0.88, 1.32, 1.76, 2.2, 2.64, 3.08, 3.52, 3.96, 4.4, 4.84, 5.28, 5.72, 6.16, 6.6, 7.04)
		capValue			= (
			2.06146e-05, 2.49794e-05, 2.85242e-05, 3.15958e-05, 3.43487e-05, 3.68668e-05, 3.91979e-05, 4.13725e-05, 4.34111e-05, 4.53282e-05, 4.71341e-05, 4.88379e-05, 5.04459e-05, 5.19642e-05, 5.33987e-05, 5.4753e-05, 
			2.35357e-05, 2.76332e-05, 3.11724e-05, 3.43344e-05, 3.7219e-05, 3.98877e-05, 4.23774e-05, 4.47131e-05, 4.69113e-05, 4.89854e-05, 5.0945e-05, 5.27976e-05, 5.45496e-05, 5.62069e-05, 5.77748e-05, 5.92581e-05, 
			2.6621e-05, 3.05379e-05, 3.40371e-05, 3.72296e-05, 4.01828e-05, 4.29386e-05, 4.55262e-05, 4.79647e-05, 5.02683e-05, 5.24471e-05, 5.45098e-05, 5.64635e-05, 5.83143e-05, 6.00673e-05, 6.17281e-05, 6.3301e-05, 
			2.97696e-05, 3.35574e-05, 3.70227e-05, 4.0229e-05, 4.32242e-05, 4.60387e-05, 4.86948e-05, 5.12064e-05, 5.35854e-05, 5.58407e-05, 5.79796e-05, 6.00081e-05, 6.19325e-05, 6.37574e-05, 6.54879e-05, 6.71287e-05, 
			3.29448e-05, 3.66484e-05, 4.00882e-05, 4.33059e-05, 4.63333e-05, 4.91935e-05, 5.19011e-05, 5.44706e-05, 5.69086e-05, 5.92239e-05, 6.14229e-05, 6.35113e-05, 6.54941e-05, 6.73765e-05, 6.91634e-05, 7.08588e-05
		)
}

CapTable	"metal6_C_LATERAL_71MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.44, 0.88, 1.32, 1.76, 2.2, 2.64, 3.08, 3.52, 3.96, 4.4, 4.84, 5.28, 5.72, 6.16, 6.6, 7.04)
		capValue			= (
			0.000254765, 0.000159873, 0.000121998, 0.000100348, 8.58547e-05, 7.52416e-05, 6.70074e-05, 6.03579e-05, 5.48299e-05, 5.01329e-05, 4.60754e-05, 4.25236e-05, 3.93823e-05, 3.65806e-05, 3.4064e-05, 3.17909e-05, 
			0.000278513, 0.000177817, 0.00013649, 0.000112559, 9.643e-05, 8.45732e-05, 7.53536e-05, 6.78992e-05, 6.16986e-05, 5.64292e-05, 5.1877e-05, 4.78929e-05, 4.43699e-05, 4.12283e-05, 3.8407e-05, 3.58588e-05, 
			0.000291841, 0.000189035, 0.000146014, 0.000120833, 0.000103741, 9.11187e-05, 8.12728e-05, 7.32948e-05, 6.66484e-05, 6.09946e-05, 5.61067e-05, 5.18266e-05, 4.80402e-05, 4.46625e-05, 4.16282e-05, 3.88867e-05, 
			0.00029995, 0.000196732, 0.000152862, 0.000126934, 0.000109236, 9.60991e-05, 8.582e-05, 7.74724e-05, 7.05065e-05, 6.45733e-05, 5.9439e-05, 5.49399e-05, 5.09569e-05, 4.7402e-05, 4.4207e-05, 4.13188e-05, 
			0.000306261, 0.000202842, 0.000158381, 0.000131905, 0.000113734, 0.000100205, 8.95899e-05, 8.09522e-05, 7.37341e-05, 6.75791e-05, 6.22479e-05, 5.75728e-05, 5.34318e-05, 4.97336e-05, 4.6408e-05, 4.34006e-05
		)
}

CapTable	"metal6_C_BOTTOM_GP_61MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.44, 0.88, 1.32, 1.76, 2.2, 2.64, 3.08, 3.52, 3.96, 4.4, 4.84, 5.28, 5.72, 6.16, 6.6, 7.04)
		capValue			= (
			2.13171e-05, 2.59168e-05, 2.96778e-05, 3.29521e-05, 3.58959e-05, 3.8592e-05, 4.10883e-05, 4.34147e-05, 4.55911e-05, 4.76321e-05, 4.95485e-05, 5.13498e-05, 5.30428e-05, 5.46346e-05, 5.61309e-05, 5.75376e-05, 
			2.44773e-05, 2.88263e-05, 3.26035e-05, 3.59892e-05, 3.90858e-05, 4.19516e-05, 4.46236e-05, 4.71261e-05, 4.94761e-05, 5.16867e-05, 5.37674e-05, 5.5727e-05, 5.75723e-05, 5.93103e-05, 6.09472e-05, 6.24882e-05, 
			2.78306e-05, 3.2011e-05, 3.57636e-05, 3.91958e-05, 4.23735e-05, 4.53379e-05, 4.81181e-05, 5.07328e-05, 5.31958e-05, 5.55177e-05, 5.7708e-05, 5.97741e-05, 6.17226e-05, 6.35607e-05, 6.52936e-05, 6.69276e-05, 
			3.12662e-05, 3.53307e-05, 3.90585e-05, 4.25144e-05, 4.57425e-05, 4.87732e-05, 5.16285e-05, 5.43221e-05, 5.68651e-05, 5.92676e-05, 6.15371e-05, 6.36812e-05, 6.57062e-05, 6.76179e-05, 6.94229e-05, 7.11266e-05, 
			3.47424e-05, 3.87318e-05, 4.24441e-05, 4.59183e-05, 4.9184e-05, 5.22662e-05, 5.51774e-05, 5.79305e-05, 6.05357e-05, 6.30003e-05, 6.53323e-05, 6.75375e-05, 6.96228e-05, 7.15936e-05, 7.34562e-05, 7.52154e-05
		)
}

CapTable	"metal6_C_LATERAL_61MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.44, 0.88, 1.32, 1.76, 2.2, 2.64, 3.08, 3.52, 3.96, 4.4, 4.84, 5.28, 5.72, 6.16, 6.6, 7.04)
		capValue			= (
			0.000254211, 0.000159159, 0.000121147, 9.93751e-05, 8.47742e-05, 7.40673e-05, 6.57527e-05, 5.90358e-05, 5.34528e-05, 4.8713e-05, 4.4623e-05, 4.10488e-05, 3.78941e-05, 3.50865e-05, 3.25716e-05, 3.03061e-05, 
			0.000277777, 0.000176919, 0.00013545, 0.000111393, 9.51538e-05, 8.32023e-05, 7.39029e-05, 6.6383e-05, 6.013e-05, 5.48206e-05, 5.02398e-05, 4.62372e-05, 4.2705e-05, 3.9562e-05, 3.67464e-05, 3.42101e-05, 
			0.000290914, 0.00018795, 0.000144788, 0.000119483, 0.000102284, 8.95714e-05, 7.96508e-05, 7.16125e-05, 6.49194e-05, 5.92315e-05, 5.43203e-05, 5.0027e-05, 4.62367e-05, 4.28624e-05, 3.98387e-05, 3.71134e-05, 
			0.000298838, 0.000195465, 0.000151458, 0.000125411, 0.000107614, 9.43936e-05, 8.4047e-05, 7.56459e-05, 6.86403e-05, 6.26794e-05, 5.75282e-05, 5.30216e-05, 4.904e-05, 4.54938e-05, 4.23139e-05, 3.94461e-05, 
			0.000304965, 0.000201396, 0.000156807, 0.000130223, 0.00011196, 9.83556e-05, 8.76814e-05, 7.89986e-05, 7.17478e-05, 6.55721e-05, 6.02302e-05, 5.55537e-05, 5.14189e-05, 4.77341e-05, 4.44279e-05, 4.1445e-05
		)
}

CapTable	"metal6_C_BOTTOM_GP_51MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.44, 0.88, 1.32, 1.76, 2.2, 2.64, 3.08, 3.52, 3.96, 4.4, 4.84, 5.28, 5.72, 6.16, 6.6, 7.04)
		capValue			= (
			2.25555e-05, 2.75808e-05, 3.17374e-05, 3.53814e-05, 3.86709e-05, 4.16868e-05, 4.44756e-05, 4.7066e-05, 4.94782e-05, 5.17272e-05, 5.38247e-05, 5.5781e-05, 5.76058e-05, 5.93076e-05, 6.0894e-05, 6.23724e-05, 
			2.61612e-05, 3.09742e-05, 3.51884e-05, 3.89844e-05, 4.24638e-05, 4.56823e-05, 4.86755e-05, 5.14675e-05, 5.40756e-05, 5.6513e-05, 5.87916e-05, 6.0921e-05, 6.29111e-05, 6.47699e-05, 6.65059e-05, 6.81271e-05, 
			3.00146e-05, 3.46884e-05, 3.89066e-05, 4.27753e-05, 4.63568e-05, 4.96937e-05, 5.28118e-05, 5.57298e-05, 5.84622e-05, 6.10217e-05, 6.34185e-05, 6.56622e-05, 6.77622e-05, 6.97266e-05, 7.15638e-05, 7.3282e-05, 
			3.39934e-05, 3.85714e-05, 4.2784e-05, 4.66925e-05, 5.03378e-05, 5.37516e-05, 5.69537e-05, 5.99575e-05, 6.27767e-05, 6.5422e-05, 6.79027e-05, 7.02285e-05, 7.2408e-05, 7.44499e-05, 7.6362e-05, 7.81522e-05, 
			3.80408e-05, 4.2558e-05, 4.67667e-05, 5.0703e-05, 5.43956e-05, 5.78654e-05, 6.11288e-05, 6.41967e-05, 6.70813e-05, 6.97918e-05, 7.23376e-05, 7.4727e-05, 7.69691e-05, 7.90714e-05, 8.10428e-05, 8.28904e-05
		)
}

CapTable	"metal6_C_LATERAL_51MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.44, 0.88, 1.32, 1.76, 2.2, 2.64, 3.08, 3.52, 3.96, 4.4, 4.84, 5.28, 5.72, 6.16, 6.6, 7.04)
		capValue			= (
			0.000253245, 0.000157902, 0.000119642, 9.76528e-05, 8.28643e-05, 7.19984e-05, 6.35519e-05, 5.67291e-05, 5.10647e-05, 4.62652e-05, 4.21361e-05, 3.85406e-05, 3.538e-05, 3.258e-05, 3.0084e-05, 2.78475e-05, 
			0.000276475, 0.000175321, 0.000133594, 0.000109316, 9.28892e-05, 8.07814e-05, 7.13555e-05, 6.37367e-05, 5.74101e-05, 5.20503e-05, 4.7439e-05, 4.34244e-05, 3.9895e-05, 3.67685e-05, 3.39808e-05, 3.14815e-05, 
			0.000289262, 0.000186005, 0.000142593, 0.000117075, 9.96996e-05, 8.68423e-05, 7.68074e-05, 6.86829e-05, 6.1929e-05, 5.62022e-05, 5.12719e-05, 4.6977e-05, 4.31992e-05, 3.98507e-05, 3.68634e-05, 3.41835e-05, 
			0.000296839, 0.000193186, 0.000148943, 0.0001227, 0.000104742, 9.13934e-05, 8.09483e-05, 7.24763e-05, 6.54234e-05, 5.94364e-05, 5.4278e-05, 4.97801e-05, 4.58212e-05, 4.23088e-05, 3.91731e-05, 3.6358e-05, 
			0.000302641, 0.000198807, 0.000154, 0.000127238, 0.000108833, 9.51182e-05, 8.4362e-05, 7.56232e-05, 6.8339e-05, 6.21494e-05, 5.68112e-05, 5.21531e-05, 4.80497e-05, 4.44072e-05, 4.11522e-05, 3.82281e-05
		)
}

CapTable	"metal6_C_BOTTOM_GP_41MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.44, 0.88, 1.32, 1.76, 2.2, 2.64, 3.08, 3.52, 3.96, 4.4, 4.84, 5.28, 5.72, 6.16, 6.6, 7.04)
		capValue			= (
			2.52053e-05, 3.12127e-05, 3.62852e-05, 4.07795e-05, 4.48461e-05, 4.85608e-05, 5.19672e-05, 5.50945e-05, 5.79659e-05, 6.06011e-05, 6.30181e-05, 6.52331e-05, 6.72629e-05, 6.91215e-05, 7.08235e-05, 7.2382e-05, 
			2.98556e-05, 3.57543e-05, 4.09847e-05, 4.57181e-05, 5.00458e-05, 5.40224e-05, 5.76824e-05, 6.10519e-05, 6.41533e-05, 6.70055e-05, 6.96273e-05, 7.20357e-05, 7.42472e-05, 7.62769e-05, 7.814e-05, 7.98503e-05, 
			3.49034e-05, 4.07288e-05, 4.60194e-05, 5.0867e-05, 5.53336e-05, 5.94555e-05, 6.32611e-05, 6.67741e-05, 7.00141e-05, 7.30003e-05, 7.57505e-05, 7.82818e-05, 8.06106e-05, 8.27527e-05, 8.47227e-05, 8.65343e-05, 
			4.01632e-05, 4.59301e-05, 5.12428e-05, 5.61504e-05, 6.06931e-05, 6.4902e-05, 6.87977e-05, 7.24021e-05, 7.5733e-05, 7.88087e-05, 8.16466e-05, 8.42632e-05, 8.66751e-05, 8.88975e-05, 9.09451e-05, 9.28315e-05, 
			4.55448e-05, 5.12697e-05, 5.65886e-05, 6.15306e-05, 6.61245e-05, 7.03917e-05, 7.43506e-05, 7.80217e-05, 8.1419e-05, 8.45629e-05, 8.74681e-05, 9.01512e-05, 9.26282e-05, 9.49144e-05, 9.70241e-05, 9.89708e-05
		)
}

CapTable	"metal6_C_LATERAL_41MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.44, 0.88, 1.32, 1.76, 2.2, 2.64, 3.08, 3.52, 3.96, 4.4, 4.84, 5.28, 5.72, 6.16, 6.6, 7.04)
		capValue			= (
			0.000251031, 0.000155095, 0.000116297, 9.38487e-05, 7.86836e-05, 6.75198e-05, 5.88487e-05, 5.18669e-05, 4.61012e-05, 4.12502e-05, 3.71112e-05, 3.35415e-05, 3.04352e-05, 2.77133e-05, 2.53138e-05, 2.31881e-05, 
			0.000273442, 0.000171679, 0.00012942, 0.000104702, 8.79259e-05, 7.5553e-05, 6.59366e-05, 5.81932e-05, 5.17983e-05, 4.64181e-05, 4.18267e-05, 3.78647e-05, 3.44151e-05, 3.139e-05, 2.87204e-05, 2.63523e-05, 
			0.000285384, 0.000181559, 0.000137659, 0.000111751, 9.40758e-05, 8.10009e-05, 7.08204e-05, 6.26116e-05, 5.58256e-05, 5.01108e-05, 4.5229e-05, 4.10122e-05, 3.73369e-05, 3.41096e-05, 3.12584e-05, 2.8726e-05, 
			0.000292146, 0.000187996, 0.000143333, 0.000116764, 9.85639e-05, 8.50506e-05, 7.45063e-05, 6.59907e-05, 5.89411e-05, 5.29967e-05, 4.79125e-05, 4.35156e-05, 3.96782e-05, 3.63045e-05, 3.33197e-05, 3.06653e-05, 
			0.000297234, 0.000192979, 0.000147822, 0.000120794, 0.000102203, 8.83711e-05, 7.75564e-05, 6.88089e-05, 6.15574e-05, 5.54352e-05, 5.01928e-05, 4.56534e-05, 4.16872e-05, 3.81959e-05, 3.51033e-05, 3.23495e-05
		)
}

CapTable	"metal6_C_BOTTOM_GP_31MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.44, 0.88, 1.32, 1.76, 2.2, 2.64, 3.08, 3.52, 3.96, 4.4, 4.84, 5.28, 5.72, 6.16, 6.6, 7.04)
		capValue			= (
			2.9849e-05, 3.76986e-05, 4.44438e-05, 5.04137e-05, 5.57501e-05, 6.05301e-05, 6.48098e-05, 6.86361e-05, 7.20531e-05, 7.5101e-05, 7.78186e-05, 8.02403e-05, 8.2399e-05, 8.4324e-05, 8.60418e-05, 8.75759e-05, 
			3.66828e-05, 4.46054e-05, 5.16516e-05, 5.79704e-05, 6.3649e-05, 6.87546e-05, 7.33389e-05, 7.74497e-05, 8.11317e-05, 8.44271e-05, 8.7375e-05, 9.00116e-05, 9.23702e-05, 9.44812e-05, 9.63721e-05, 9.80671e-05, 
			4.41367e-05, 5.2068e-05, 5.92273e-05, 6.56956e-05, 7.15375e-05, 7.68088e-05, 8.15562e-05, 8.58263e-05, 8.96631e-05, 9.31074e-05, 9.61979e-05, 9.89709e-05, 0.000101459, 0.000103693, 0.0001057, 0.000107504, 
			5.18966e-05, 5.97915e-05, 6.69816e-05, 7.35126e-05, 7.94329e-05, 8.47924e-05, 8.96364e-05, 9.40052e-05, 9.79415e-05, 0.000101485, 0.000104673, 0.000107543, 0.000110123, 0.000112447, 0.000114541, 0.000116428, 
			5.97996e-05, 6.76458e-05, 7.48334e-05, 8.13929e-05, 8.73631e-05, 9.27819e-05, 9.76942e-05, 0.000102136, 0.000106149, 0.00010977, 0.000113037, 0.000115983, 0.000118639, 0.000121037, 0.000123202, 0.000125157
		)
}

CapTable	"metal6_C_LATERAL_31MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.44, 0.88, 1.32, 1.76, 2.2, 2.64, 3.08, 3.52, 3.96, 4.4, 4.84, 5.28, 5.72, 6.16, 6.6, 7.04)
		capValue			= (
			0.000247318, 0.000150269, 0.000110624, 8.75529e-05, 7.19536e-05, 6.05144e-05, 5.16984e-05, 4.46768e-05, 3.89539e-05, 3.42098e-05, 3.02257e-05, 2.68458e-05, 2.39541e-05, 2.1463e-05, 1.93039e-05, 1.74229e-05, 
			0.000268202, 0.000165428, 0.000122433, 9.72014e-05, 8.00946e-05, 6.75388e-05, 5.78578e-05, 5.01427e-05, 4.38488e-05, 3.8624e-05, 3.42292e-05, 3.04928e-05, 2.72891e-05, 2.45221e-05, 2.21178e-05, 2.00172e-05, 
			0.000278764, 0.000174096, 0.00012961, 0.000103321, 8.54249e-05, 7.22576e-05, 6.20852e-05, 5.39636e-05, 4.7325e-05, 4.18034e-05, 3.71487e-05, 3.31825e-05, 2.97738e-05, 2.68229e-05, 2.42522e-05, 2.20009e-05, 
			0.000284362, 0.000179551, 0.000134456, 0.000107628, 8.93063e-05, 7.57778e-05, 6.53016e-05, 5.6919e-05, 5.00525e-05, 4.4329e-05, 3.94932e-05, 3.53637e-05, 3.18063e-05, 2.87196e-05, 2.60245e-05, 2.36589e-05, 
			0.000288518, 0.000183774, 0.000138314, 0.000111129, 9.24935e-05, 7.87041e-05, 6.80014e-05, 5.94196e-05, 5.23757e-05, 4.64923e-05, 4.15117e-05, 3.72501e-05, 3.35714e-05, 3.03733e-05, 2.75755e-05, 2.51147e-05
		)
}

CapTable	"metal6_C_BOTTOM_GP_21MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.44, 0.88, 1.32, 1.76, 2.2, 2.64, 3.08, 3.52, 3.96, 4.4, 4.84, 5.28, 5.72, 6.16, 6.6, 7.04)
		capValue			= (
			3.93054e-05, 5.09496e-05, 6.08124e-05, 6.92398e-05, 7.64551e-05, 8.26337e-05, 8.7922e-05, 9.24472e-05, 9.63204e-05, 9.96383e-05, 0.000102483, 0.000104926, 0.000107027, 0.000108837, 0.000110399, 0.00011175, 
			5.08026e-05, 6.2634e-05, 7.28613e-05, 8.16917e-05, 8.93127e-05, 9.5884e-05, 0.000101548, 0.00010643, 0.000110636, 0.000114266, 0.000117399, 0.000120108, 0.000122454, 0.000124488, 0.000126254, 0.000127791, 
			6.29927e-05, 7.47883e-05, 8.51018e-05, 9.40831e-05, 0.000101891, 0.000108668, 0.000114546, 0.000119641, 0.000124056, 0.000127887, 0.000131213, 0.000134102, 0.000136617, 0.000138809, 0.000140722, 0.000142395, 
			7.53684e-05, 8.70505e-05, 9.73526e-05, 0.000106389, 0.000114289, 0.000121187, 0.000127201, 0.000132439, 0.000137001, 0.000140977, 0.000144444, 0.000147472, 0.000150116, 0.000152433, 0.000154462, 0.000156244, 
			8.78105e-05, 9.93992e-05, 0.000109692, 0.000118773, 0.000126757, 0.000133757, 0.000139886, 0.000145246, 0.000149933, 0.000154032, 0.000157619, 0.000160761, 0.000163516, 0.000165935, 0.000168062, 0.000169935
		)
}

CapTable	"metal6_C_LATERAL_21MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.44, 0.88, 1.32, 1.76, 2.2, 2.64, 3.08, 3.52, 3.96, 4.4, 4.84, 5.28, 5.72, 6.16, 6.6, 7.04)
		capValue			= (
			0.000240783, 0.000142019, 0.000101373, 7.7798e-05, 6.20278e-05, 5.06397e-05, 4.20216e-05, 3.52937e-05, 2.99247e-05, 2.55695e-05, 2.19922e-05, 1.90243e-05, 1.65418e-05, 1.44512e-05, 1.268e-05, 1.1172e-05, 
			0.000259645, 0.000155665, 0.000112049, 8.65729e-05, 6.94627e-05, 5.70618e-05, 4.764e-05, 4.02522e-05, 3.4328e-05, 2.94983e-05, 2.55102e-05, 2.21837e-05, 1.93859e-05, 1.70167e-05, 1.49988e-05, 1.32711e-05, 
			0.000268885, 0.000163464, 0.000118649, 9.22905e-05, 7.44926e-05, 6.15331e-05, 5.16426e-05, 4.38528e-05, 3.7578e-05, 3.24394e-05, 2.8177e-05, 2.46058e-05, 2.1589e-05, 1.90232e-05, 1.68281e-05, 1.49409e-05, 
			0.000273794, 0.000168546, 0.000123306, 9.65107e-05, 7.83384e-05, 6.50356e-05, 5.484e-05, 4.67762e-05, 4.02545e-05, 3.48916e-05, 3.04256e-05, 2.6669e-05, 2.3483e-05, 2.07626e-05, 1.84264e-05, 1.64102e-05, 
			0.000277648, 0.00017264, 0.00012713, 0.00010002, 8.15419e-05, 6.79703e-05, 5.75296e-05, 4.9243e-05, 4.2518e-05, 3.69704e-05, 3.23358e-05, 2.84248e-05, 2.50982e-05, 2.22492e-05, 1.97956e-05, 1.76719e-05
		)
}

CapTable	"metal6_C_BOTTOM_GPMAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.44, 0.88, 1.32, 1.76, 2.2, 2.64, 3.08, 3.52, 3.96, 4.4, 4.84, 5.28, 5.72, 6.16, 6.6, 7.04)
		capValue			= (
			9.23247e-05, 0.000119681, 0.000138446, 0.000151626, 0.000161174, 0.000168272, 0.000173655, 0.000177803, 0.000181035, 0.000183581, 0.000185598, 0.000187207, 0.000188497, 0.000189535, 0.000190372, 0.00019105, 
			0.000133289, 0.000160776, 0.000180162, 0.00019411, 0.000204411, 0.000212187, 0.000218151, 0.000222785, 0.000226425, 0.000229303, 0.000231596, 0.000233433, 0.00023491, 0.000236102, 0.000237066, 0.00023785, 
			0.000174783, 0.000202188, 0.000221827, 0.000236156, 0.000246868, 0.000255025, 0.000261332, 0.000266265, 0.000270157, 0.000273252, 0.000275726, 0.000277715, 0.000279321, 0.00028062, 0.000281679, 0.000282538, 
			0.000216399, 0.000243627, 0.000263354, 0.000277892, 0.000288821, 0.000297212, 0.000303733, 0.000308854, 0.000312913, 0.000316154, 0.000318755, 0.000320855, 0.000322557, 0.00032394, 0.00032507, 0.000325996, 
			0.000258138, 0.00028524, 0.000305021, 0.000319705, 0.000330828, 0.000339401, 0.000346094, 0.000351376, 0.00035558, 0.000358949, 0.000361662, 0.00036386, 0.000365649, 0.000367109, 0.000368305, 0.000369286
		)
}

CapTable	"metal6_C_LATERALMAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.44, 0.88, 1.32, 1.76, 2.2, 2.64, 3.08, 3.52, 3.96, 4.4, 4.84, 5.28, 5.72, 6.16, 6.6, 7.04)
		capValue			= (
			0.000213156, 0.000112758, 7.31413e-05, 5.15631e-05, 3.80444e-05, 2.88789e-05, 2.23464e-05, 1.75311e-05, 1.38958e-05, 1.11033e-05, 8.92973e-06, 7.22098e-06, 5.86706e-06, 4.78769e-06, 3.92294e-06, 3.22739e-06, 
			0.000226992, 0.000123169, 8.12151e-05, 5.79387e-05, 4.31393e-05, 3.29899e-05, 2.56931e-05, 2.02783e-05, 1.6169e-05, 1.29989e-05, 1.05226e-05, 8.56946e-06, 7.0173e-06, 5.77629e-06, 4.77921e-06, 3.97496e-06, 
			0.000233808, 0.000129147, 8.61722e-05, 6.2053e-05, 4.65696e-05, 3.58697e-05, 2.81291e-05, 2.23549e-05, 1.79532e-05, 1.45438e-05, 1.18703e-05, 9.75422e-06, 8.06652e-06, 6.71233e-06, 5.62036e-06, 4.73626e-06, 
			0.000237157, 0.000132889, 8.95572e-05, 6.50132e-05, 4.9182e-05, 3.81654e-05, 3.01594e-05, 2.41625e-05, 1.95733e-05, 1.60049e-05, 1.31963e-05, 1.09644e-05, 9.17694e-06, 7.73651e-06, 6.56961e-06, 5.62016e-06, 
			0.000239959, 0.000136021, 9.24594e-05, 6.7625e-05, 5.14984e-05, 4.0241e-05, 3.2023e-05, 2.58423e-05, 2.10938e-05, 1.73879e-05, 1.44602e-05, 1.2125e-05, 1.0248e-05, 8.72962e-06, 7.49482e-06, 6.48609e-06
		)
}

CapTable	"poly_C_BOTTOM_GPMIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			2.85663e-05, 3.92604e-05, 4.67174e-05, 5.15235e-05, 5.44613e-05, 5.61983e-05, 5.72107e-05, 5.77854e-05, 5.81164e-05, 5.83024e-05, 5.84083e-05, 5.84694e-05, 5.85036e-05, 5.85232e-05, 5.8534e-05, 5.85411e-05, 
			3.94476e-05, 5.08289e-05, 5.87513e-05, 6.38471e-05, 6.69586e-05, 6.88018e-05, 6.98679e-05, 7.04822e-05, 7.08307e-05, 7.10287e-05, 7.11432e-05, 7.12073e-05, 7.12427e-05, 7.12627e-05, 7.12751e-05, 7.12828e-05, 
			5.08896e-05, 6.25366e-05, 7.06203e-05, 7.58088e-05, 7.89809e-05, 8.08537e-05, 8.1944e-05, 8.25666e-05, 8.29227e-05, 8.3127e-05, 8.32416e-05, 8.33053e-05, 8.33416e-05, 8.33633e-05, 8.33764e-05, 8.33863e-05, 
			6.25348e-05, 7.42534e-05, 8.2367e-05, 8.75739e-05, 9.07516e-05, 9.26331e-05, 9.37234e-05, 9.43497e-05, 9.47086e-05, 9.49109e-05, 9.50247e-05, 9.50904e-05, 9.5127e-05, 9.51491e-05, 9.5165e-05, 9.51735e-05, 
			7.43006e-05, 8.60351e-05, 9.41601e-05, 9.93684e-05, 0.000102548, 0.000104428, 0.00010552, 0.000106146, 0.000106503, 0.000106703, 0.000106818, 0.000106884, 0.000106921, 0.000106946, 0.00010696, 0.00010697
		)
}

CapTable	"poly_C_TOP_GPMIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			3.01856e-05, 4.14533e-05, 4.92937e-05, 5.43313e-05, 5.74074e-05, 5.92252e-05, 6.0275e-05, 6.08844e-05, 6.12276e-05, 6.14256e-05, 6.15365e-05, 6.15972e-05, 6.1632e-05, 6.16505e-05, 6.16618e-05, 6.16665e-05, 
			4.17431e-05, 5.37273e-05, 6.20407e-05, 6.7381e-05, 7.06358e-05, 7.256e-05, 7.36785e-05, 7.43175e-05, 7.46858e-05, 7.48932e-05, 7.50082e-05, 7.50741e-05, 7.51102e-05, 7.51314e-05, 7.51408e-05, 7.51456e-05, 
			5.38903e-05, 6.61356e-05, 7.4613e-05, 8.00463e-05, 8.33616e-05, 8.53265e-05, 8.64618e-05, 8.71181e-05, 8.74902e-05, 8.76983e-05, 8.78175e-05, 8.78868e-05, 8.79225e-05, 8.79409e-05, 8.795e-05, 8.79518e-05, 
			6.62287e-05, 7.85504e-05, 8.70574e-05, 9.25133e-05, 9.5839e-05, 9.78063e-05, 9.89476e-05, 9.96021e-05, 9.99713e-05, 0.000100183, 0.000100305, 0.000100371, 0.000100405, 0.000100423, 0.000100428, 0.000100433, 
			7.86949e-05, 9.10327e-05, 9.95466e-05, 0.000105006, 0.000108333, 0.000110299, 0.000111434, 0.000112089, 0.000112461, 0.000112677, 0.000112794, 0.000112858, 0.000112892, 0.000112904, 0.000112913, 0.000112917
		)
}

CapTable	"poly_C_LATERALMIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			0.000108244, 5.14361e-05, 2.7809e-05, 1.55042e-05, 8.72174e-06, 4.92013e-06, 2.77914e-06, 1.56994e-06, 8.87269e-07, 5.01165e-07, 2.83326e-07, 1.60565e-07, 9.15692e-08, 5.33381e-08, 3.22974e-08, 2.05885e-08, 
			0.000114507, 5.45271e-05, 2.94693e-05, 1.64249e-05, 9.23966e-06, 5.21298e-06, 2.94435e-06, 1.66375e-06, 9.39632e-07, 5.30977e-07, 3.00462e-07, 1.70488e-07, 9.79203e-08, 5.79001e-08, 3.59482e-08, 2.34868e-08, 
			0.000116461, 5.55166e-05, 3.00002e-05, 1.67228e-05, 9.4081e-06, 5.30794e-06, 2.99825e-06, 1.69314e-06, 9.5659e-07, 5.40941e-07, 3.06216e-07, 1.74239e-07, 1.01148e-07, 6.10961e-08, 3.88634e-08, 2.61234e-08, 
			0.000116472, 5.56055e-05, 3.00619e-05, 1.67584e-05, 9.42873e-06, 5.31945e-06, 3.00386e-06, 1.69684e-06, 9.59202e-07, 5.42388e-07, 3.07324e-07, 1.76048e-07, 1.03683e-07, 6.40002e-08, 4.18301e-08, 2.86343e-08, 
			0.000116299, 5.55744e-05, 3.00483e-05, 1.67469e-05, 9.42127e-06, 5.31533e-06, 3.00258e-06, 1.69635e-06, 9.5878e-07, 5.42283e-07, 3.0844e-07, 1.7834e-07, 1.06984e-07, 6.78457e-08, 4.53092e-08, 3.17184e-08
		)
}

CapTable	"poly_C_BOTTOM_GP_12MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			3.27472e-05, 4.38697e-05, 5.23275e-05, 5.86896e-05, 6.34343e-05, 6.6951e-05, 6.95527e-05, 7.14792e-05, 7.29055e-05, 7.39651e-05, 7.4754e-05, 7.53411e-05, 7.57793e-05, 7.61047e-05, 7.63492e-05, 7.65321e-05, 
			4.29619e-05, 5.47021e-05, 6.38089e-05, 7.07462e-05, 7.59674e-05, 7.98669e-05, 8.27756e-05, 8.49392e-05, 8.65499e-05, 8.77516e-05, 8.86455e-05, 8.93144e-05, 8.98133e-05, 9.01859e-05, 9.04659e-05, 9.06745e-05, 
			5.37175e-05, 6.57725e-05, 7.5234e-05, 8.24953e-05, 8.7994e-05, 9.21273e-05, 9.52202e-05, 9.75309e-05, 9.92587e-05, 0.000100546, 0.000101509, 0.000102229, 0.000102768, 0.000103171, 0.000103473, 0.000103698, 
			6.47499e-05, 7.69813e-05, 8.6644e-05, 9.41004e-05, 9.97725e-05, 0.00010405, 0.000107262, 0.000109667, 0.000111466, 0.000112811, 0.000113819, 0.000114574, 0.000115138, 0.00011556, 0.000115877, 0.000116114, 
			7.60204e-05, 8.83694e-05, 9.81755e-05, 0.000105771, 0.000111564, 0.000115943, 0.000119239, 0.000121708, 0.000123562, 0.000124949, 0.000125988, 0.000126766, 0.00012735, 0.000127786, 0.000128115, 0.000128359
		)
}

CapTable	"poly_C_TOP_GP_12MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			1.02134e-05, 1.37217e-05, 1.64435e-05, 1.85267e-05, 2.00949e-05, 2.12667e-05, 2.21388e-05, 2.27858e-05, 2.32683e-05, 2.36264e-05, 2.38926e-05, 2.40917e-05, 2.42399e-05, 2.43525e-05, 2.44355e-05, 2.44974e-05, 
			1.31759e-05, 1.68766e-05, 1.98248e-05, 2.21074e-05, 2.38467e-05, 2.5159e-05, 2.61403e-05, 2.68755e-05, 2.74243e-05, 2.78321e-05, 2.81403e-05, 2.83693e-05, 2.85417e-05, 2.86697e-05, 2.87655e-05, 2.88371e-05, 
			1.62801e-05, 2.01005e-05, 2.3176e-05, 2.55797e-05, 2.74243e-05, 2.88206e-05, 2.98727e-05, 3.06626e-05, 3.12522e-05, 3.1698e-05, 3.20306e-05, 3.22789e-05, 3.24647e-05, 3.26039e-05, 3.27079e-05, 3.27857e-05, 
			1.94773e-05, 2.33704e-05, 2.6529e-05, 2.90092e-05, 3.09175e-05, 3.23698e-05, 3.34671e-05, 3.42911e-05, 3.49128e-05, 3.53789e-05, 3.57274e-05, 3.59885e-05, 3.6184e-05, 3.63305e-05, 3.644e-05, 3.65219e-05, 
			2.27449e-05, 2.66947e-05, 2.99121e-05, 3.24465e-05, 3.44024e-05, 3.58936e-05, 3.7023e-05, 3.78786e-05, 3.85171e-05, 3.89978e-05, 3.93584e-05, 3.96287e-05, 3.98312e-05, 3.99829e-05, 4.00963e-05, 4.01812e-05
		)
}

CapTable	"poly_C_LATERAL_12MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			0.000118864, 6.50947e-05, 4.21394e-05, 2.89166e-05, 2.04249e-05, 1.46777e-05, 1.06689e-05, 7.81761e-06, 5.76158e-06, 4.26464e-06, 3.16663e-06, 2.35698e-06, 1.75756e-06, 1.31234e-06, 9.80996e-07, 7.33977e-07, 
			0.00012981, 7.21757e-05, 4.70891e-05, 3.25038e-05, 2.30695e-05, 1.66439e-05, 1.21365e-05, 8.9153e-06, 6.58365e-06, 4.88059e-06, 3.62821e-06, 2.70297e-06, 2.01698e-06, 1.50693e-06, 1.12699e-06, 8.43576e-07, 
			0.000135665, 7.62428e-05, 5.00359e-05, 3.46893e-05, 2.47063e-05, 1.78747e-05, 1.30629e-05, 9.61264e-06, 7.10842e-06, 5.27491e-06, 3.92479e-06, 2.92585e-06, 2.18436e-06, 1.63268e-06, 1.22151e-06, 9.14691e-07, 
			0.0001387, 7.8624e-05, 5.1844e-05, 3.6062e-05, 2.57496e-05, 1.86664e-05, 1.36633e-05, 1.0067e-05, 7.45151e-06, 5.53398e-06, 4.11991e-06, 3.07272e-06, 2.29492e-06, 1.71591e-06, 1.28422e-06, 9.62029e-07, 
			0.00014082, 8.03063e-05, 5.31245e-05, 3.70345e-05, 2.64915e-05, 1.9232e-05, 1.40933e-05, 1.03928e-05, 7.69833e-06, 5.7204e-06, 4.26052e-06, 3.17875e-06, 2.37485e-06, 1.77622e-06, 1.3298e-06, 9.96589e-07
		)
}

CapTable	"poly_C_BOTTOM_GP_13MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			3.49572e-05, 4.65147e-05, 5.52531e-05, 6.18514e-05, 6.68271e-05, 7.05895e-05, 7.34509e-05, 7.56432e-05, 7.73371e-05, 7.86572e-05, 7.96894e-05, 8.05082e-05, 8.11591e-05, 8.16821e-05, 8.2099e-05, 8.24373e-05, 
			4.53702e-05, 5.74278e-05, 6.676e-05, 7.39132e-05, 7.93806e-05, 8.3565e-05, 8.67821e-05, 8.92711e-05, 9.12139e-05, 9.27348e-05, 9.39367e-05, 9.48926e-05, 9.56588e-05, 9.62737e-05, 9.67664e-05, 9.71676e-05, 
			5.62127e-05, 6.84873e-05, 7.81245e-05, 8.55964e-05, 9.13646e-05, 9.58197e-05, 9.9273e-05, 0.000101968, 0.000104078, 0.000105742, 0.000107065, 0.000108125, 0.000108972, 0.000109654, 0.000110207, 0.000110655, 
			6.72411e-05, 7.96107e-05, 8.94224e-05, 9.70955e-05, 0.000103063, 0.000107705, 0.000111328, 0.000114169, 0.000116404, 0.000118176, 0.000119593, 0.000120728, 0.000121636, 0.000122373, 0.000122971, 0.000123458, 
			7.84308e-05, 9.08625e-05, 0.000100804, 0.000108631, 0.000114752, 0.000119541, 0.000123298, 0.000126252, 0.00012859, 0.000130452, 0.000131944, 0.000133136, 0.000134101, 0.00013488, 0.000135516, 0.000136031
		)
}

CapTable	"poly_C_TOP_GP_13MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			6.18451e-06, 8.24865e-06, 9.8414e-06, 1.10626e-05, 1.19937e-05, 1.27036e-05, 1.32467e-05, 1.36647e-05, 1.39881e-05, 1.42399e-05, 1.44417e-05, 1.45986e-05, 1.47243e-05, 1.48224e-05, 1.49054e-05, 1.49711e-05, 
			7.88164e-06, 1.00295e-05, 1.17354e-05, 1.30665e-05, 1.40965e-05, 1.4892e-05, 1.55084e-05, 1.5988e-05, 1.63604e-05, 1.66569e-05, 1.68916e-05, 1.70777e-05, 1.72243e-05, 1.7344e-05, 1.74436e-05, 1.75227e-05, 
			9.63387e-06, 1.18259e-05, 1.35955e-05, 1.49925e-05, 1.60851e-05, 1.69379e-05, 1.76042e-05, 1.81233e-05, 1.85345e-05, 1.88623e-05, 1.91213e-05, 1.93259e-05, 1.94924e-05, 1.96297e-05, 1.97391e-05, 1.98281e-05, 
			1.14159e-05, 1.36348e-05, 1.54432e-05, 1.68839e-05, 1.80203e-05, 1.89136e-05, 1.96137e-05, 2.01656e-05, 2.06057e-05, 2.09547e-05, 2.12314e-05, 2.14525e-05, 2.16361e-05, 2.17819e-05, 2.19011e-05, 2.19971e-05, 
			1.32214e-05, 1.54595e-05, 1.72989e-05, 1.87742e-05, 1.99455e-05, 2.08696e-05, 2.15963e-05, 2.21776e-05, 2.26377e-05, 2.30043e-05, 2.32947e-05, 2.35351e-05, 2.37265e-05, 2.38838e-05, 2.40084e-05, 2.41142e-05
		)
}

CapTable	"poly_C_LATERAL_13MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			0.000120221, 6.70807e-05, 4.46042e-05, 3.16865e-05, 2.33396e-05, 1.7607e-05, 1.35162e-05, 1.05169e-05, 8.27179e-06, 6.56321e-06, 5.24523e-06, 4.21722e-06, 3.4075e-06, 2.76488e-06, 2.25116e-06, 1.83817e-06, 
			0.000131913, 7.50067e-05, 5.0454e-05, 3.61874e-05, 2.68792e-05, 2.04261e-05, 1.57799e-05, 1.23451e-05, 9.75479e-06, 7.77044e-06, 6.23099e-06, 5.02381e-06, 4.06909e-06, 3.30828e-06, 2.69802e-06, 2.20615e-06, 
			0.000138604, 7.9963e-05, 5.42993e-05, 3.9249e-05, 2.93475e-05, 2.24299e-05, 1.74136e-05, 1.3681e-05, 1.08495e-05, 8.66922e-06, 6.96977e-06, 5.63207e-06, 4.57023e-06, 3.72139e-06, 3.03899e-06, 2.48768e-06, 
			0.000142529, 8.32448e-05, 5.69845e-05, 4.14521e-05, 3.116e-05, 2.3924e-05, 1.86463e-05, 1.46985e-05, 1.16901e-05, 9.36365e-06, 7.54375e-06, 6.10665e-06, 4.96249e-06, 4.0459e-06, 3.30739e-06, 2.70969e-06, 
			0.00014556, 8.58196e-05, 5.91123e-05, 4.32109e-05, 3.26197e-05, 2.51353e-05, 1.96515e-05, 1.55325e-05, 1.23815e-05, 9.93684e-06, 8.01902e-06, 6.50019e-06, 5.28868e-06, 4.31598e-06, 3.53113e-06, 2.89468e-06
		)
}

CapTable	"poly_C_BOTTOM_GP_14MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			3.6135e-05, 4.7982e-05, 5.69161e-05, 6.36531e-05, 6.87376e-05, 7.25917e-05, 7.5535e-05, 7.78043e-05, 7.95718e-05, 8.09625e-05, 8.20672e-05, 8.29556e-05, 8.36708e-05, 8.42557e-05, 8.47356e-05, 8.5134e-05, 
			4.67365e-05, 5.90431e-05, 6.85453e-05, 7.58268e-05, 8.13978e-05, 8.56751e-05, 8.89818e-05, 9.15602e-05, 9.35877e-05, 9.51965e-05, 9.64891e-05, 9.75278e-05, 9.8376e-05, 9.90723e-05, 9.96486e-05, 0.000100127, 
			5.77257e-05, 7.02068e-05, 7.99904e-05, 8.75743e-05, 9.34409e-05, 9.79909e-05, 0.000101541, 0.000104332, 0.000106543, 0.000108315, 0.000109739, 0.000110897, 0.000111849, 0.000112629, 0.00011328, 0.000113818, 
			6.88615e-05, 8.14e-05, 9.13317e-05, 9.91037e-05, 0.000105166, 0.000109907, 0.000113632, 0.00011658, 0.000118936, 0.000120825, 0.000122358, 0.000123613, 0.000124639, 0.000125494, 0.000126199, 0.000126792, 
			8.01209e-05, 9.26851e-05, 0.000102725, 0.000110641, 0.000116857, 0.000121747, 0.000125615, 0.000128693, 0.000131161, 0.000133155, 0.000134782, 0.00013611, 0.000137211, 0.000138119, 0.000138879, 0.000139517
		)
}

CapTable	"poly_C_TOP_GP_14MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			4.47872e-06, 5.95864e-06, 7.098e-06, 7.97047e-06, 8.63563e-06, 9.14343e-06, 9.53393e-06, 9.83618e-06, 1.00723e-05, 1.02589e-05, 1.04077e-05, 1.05251e-05, 1.06238e-05, 1.07029e-05, 1.07684e-05, 1.08212e-05, 
			5.68445e-06, 7.21946e-06, 8.43464e-06, 9.38089e-06, 1.01141e-05, 1.06826e-05, 1.11245e-05, 1.14707e-05, 1.17447e-05, 1.19635e-05, 1.21363e-05, 1.22808e-05, 1.23968e-05, 1.24915e-05, 1.25694e-05, 1.26325e-05, 
			6.92691e-06, 8.48572e-06, 9.73943e-06, 1.07303e-05, 1.15068e-05, 1.21144e-05, 1.25918e-05, 1.29697e-05, 1.32716e-05, 1.35103e-05, 1.37085e-05, 1.38682e-05, 1.39958e-05, 1.4105e-05, 1.41916e-05, 1.42692e-05, 
			8.18262e-06, 9.7524e-06, 1.10315e-05, 1.20507e-05, 1.28564e-05, 1.34928e-05, 1.39967e-05, 1.43985e-05, 1.47183e-05, 1.49799e-05, 1.51914e-05, 1.53599e-05, 1.55051e-05, 1.56199e-05, 1.57214e-05, 1.58033e-05, 
			9.44808e-06, 1.10276e-05, 1.23241e-05, 1.33657e-05, 1.41945e-05, 1.4854e-05, 1.53796e-05, 1.57995e-05, 1.61385e-05, 1.64146e-05, 1.66345e-05, 1.68223e-05, 1.69722e-05, 1.71013e-05, 1.72074e-05, 1.72956e-05
		)
}

CapTable	"poly_C_LATERAL_14MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			0.00012062, 6.76714e-05, 4.5355e-05, 3.2559e-05, 2.42962e-05, 1.86147e-05, 1.45476e-05, 1.15501e-05, 9.29002e-06, 7.55378e-06, 6.19884e-06, 5.12715e-06, 4.26945e-06, 3.57603e-06, 3.01033e-06, 2.54522e-06, 
			0.000132531, 7.5857e-05, 5.1496e-05, 3.73735e-05, 2.81629e-05, 2.17663e-05, 1.71429e-05, 1.37039e-05, 1.10885e-05, 9.06354e-06, 7.47197e-06, 6.20491e-06, 5.18496e-06, 4.35609e-06, 3.67678e-06, 3.11583e-06, 
			0.000139479, 8.11007e-05, 5.5651e-05, 4.07585e-05, 3.09601e-05, 2.40983e-05, 1.90989e-05, 1.53519e-05, 1.24825e-05, 1.02466e-05, 8.47888e-06, 7.06408e-06, 5.91998e-06, 4.98607e-06, 4.21762e-06, 3.58086e-06, 
			0.00014369, 8.46932e-05, 5.86616e-05, 4.32932e-05, 3.3104e-05, 2.59178e-05, 2.06468e-05, 1.66718e-05, 1.36101e-05, 1.12116e-05, 9.30611e-06, 7.7746e-06, 6.53083e-06, 5.51195e-06, 4.67082e-06, 3.97186e-06, 
			0.000147035, 8.75983e-05, 6.11285e-05, 4.53921e-05, 3.48988e-05, 2.74548e-05, 2.19647e-05, 1.7803e-05, 1.45821e-05, 1.20476e-05, 1.00261e-05, 8.39496e-06, 7.06597e-06, 5.97389e-06, 5.0699e-06, 4.31686e-06
		)
}

CapTable	"poly_C_BOTTOM_GP_15MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			3.68882e-05, 4.89383e-05, 5.80092e-05, 6.48532e-05, 7.00134e-05, 7.3926e-05, 7.69169e-05, 7.92261e-05, 8.10287e-05, 8.24515e-05, 8.35863e-05, 8.45005e-05, 8.52442e-05, 8.58544e-05, 8.63597e-05, 8.67806e-05, 
			4.7628e-05, 6.01197e-05, 6.97617e-05, 7.71391e-05, 8.27847e-05, 8.71207e-05, 9.0478e-05, 9.30987e-05, 9.51664e-05, 9.68131e-05, 9.81382e-05, 9.92149e-05, 0.000100096, 0.000100824, 0.00010143, 0.000101938, 
			5.8748e-05, 7.13964e-05, 8.12997e-05, 8.89743e-05, 9.49102e-05, 9.95183e-05, 0.000103119, 0.000105957, 0.000108212, 0.000110023, 0.00011149, 0.000112689, 0.000113676, 0.000114497, 0.000115183, 0.00011576, 
			6.99911e-05, 8.26751e-05, 9.27153e-05, 0.000100569, 0.000106699, 0.000111494, 0.000115271, 0.000118269, 0.000120667, 0.000122606, 0.000124185, 0.000125483, 0.000126558, 0.000127453, 0.000128205, 0.000128841, 
			8.13384e-05, 9.4032e-05, 0.000104166, 0.000112156, 0.000118432, 0.000123378, 0.000127298, 0.000130427, 0.000132947, 0.000134992, 0.000136667, 0.00013805, 0.000139198, 0.00014016, 0.000140971, 0.000141659
		)
}

CapTable	"poly_C_TOP_GP_15MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			3.50004e-06, 4.652e-06, 5.54161e-06, 6.21522e-06, 6.73196e-06, 7.12666e-06, 7.4302e-06, 7.66598e-06, 7.85037e-06, 7.99614e-06, 8.11258e-06, 8.20675e-06, 8.28346e-06, 8.34658e-06, 8.39878e-06, 8.44241e-06, 
			4.43895e-06, 5.63319e-06, 6.57039e-06, 7.30461e-06, 7.87292e-06, 8.31377e-06, 8.6571e-06, 8.92661e-06, 9.13982e-06, 9.31034e-06, 9.44794e-06, 9.56002e-06, 9.65197e-06, 9.72797e-06, 9.79143e-06, 9.84464e-06, 
			5.39726e-06, 6.60593e-06, 7.57769e-06, 8.3441e-06, 8.94462e-06, 9.41527e-06, 9.78572e-06, 1.00793e-05, 1.03136e-05, 1.05027e-05, 1.06562e-05, 1.0782e-05, 1.0886e-05, 1.09722e-05, 1.10445e-05, 1.1106e-05, 
			6.36781e-06, 7.58357e-06, 8.57124e-06, 9.35836e-06, 9.98104e-06, 1.04732e-05, 1.08636e-05, 1.11753e-05, 1.14262e-05, 1.16294e-05, 1.17955e-05, 1.19325e-05, 1.20458e-05, 1.21407e-05, 1.22204e-05, 1.22874e-05, 
			7.34424e-06, 8.56243e-06, 9.56314e-06, 1.03668e-05, 1.10068e-05, 1.15161e-05, 1.19229e-05, 1.22498e-05, 1.25141e-05, 1.27295e-05, 1.29065e-05, 1.30528e-05, 1.31748e-05, 1.32768e-05, 1.33626e-05, 1.34357e-05
		)
}

CapTable	"poly_C_LATERAL_15MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			0.000120791, 6.79251e-05, 4.56796e-05, 3.29402e-05, 2.47197e-05, 1.90681e-05, 1.50205e-05, 1.20338e-05, 9.77768e-06, 8.04002e-06, 6.67936e-06, 5.59858e-06, 4.72924e-06, 4.02217e-06, 3.44127e-06, 2.95982e-06, 
			0.000132796, 7.62229e-05, 5.19485e-05, 3.78949e-05, 2.87358e-05, 2.23755e-05, 1.77751e-05, 1.43484e-05, 1.17366e-05, 9.70836e-06, 8.10806e-06, 6.828e-06, 5.79178e-06, 4.94401e-06, 4.24387e-06, 3.66078e-06, 
			0.000139854, 8.15923e-05, 5.6242e-05, 4.14275e-05, 3.16875e-05, 2.48659e-05, 1.98911e-05, 1.61563e-05, 1.32889e-05, 1.10467e-05, 9.26648e-06, 7.83418e-06, 6.66847e-06, 5.71007e-06, 4.91505e-06, 4.25013e-06, 
			0.00014419, 8.53234e-05, 5.94012e-05, 4.41181e-05, 3.39914e-05, 2.68474e-05, 2.16014e-05, 1.76371e-05, 1.45745e-05, 1.2166e-05, 1.02435e-05, 8.68898e-06, 7.41804e-06, 6.3688e-06, 5.49501e-06, 4.76175e-06, 
			0.000147674, 8.83795e-05, 6.20273e-05, 4.63819e-05, 3.59539e-05, 2.85526e-05, 2.30863e-05, 1.89327e-05, 1.57072e-05, 1.31581e-05, 1.1114e-05, 9.45428e-06, 8.09203e-06, 6.96328e-06, 6.02024e-06, 5.22633e-06
		)
}

CapTable	"poly_C_BOTTOM_GP_16MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			3.73917e-05, 4.95869e-05, 5.8764e-05, 6.56762e-05, 7.08906e-05, 7.48446e-05, 7.7868e-05, 8.02036e-05, 8.20279e-05, 8.3469e-05, 8.46201e-05, 8.55493e-05, 8.63066e-05, 8.69298e-05, 8.7447e-05, 8.78796e-05, 
			4.82403e-05, 6.08697e-05, 7.06026e-05, 7.80534e-05, 8.37524e-05, 8.81316e-05, 9.15211e-05, 9.41701e-05, 9.62618e-05, 9.79292e-05, 9.9274e-05, 0.000100367, 0.000101266, 0.000102009, 0.00010263, 0.000103153, 
			5.9451e-05, 7.22242e-05, 8.22197e-05, 8.99628e-05, 9.59509e-05, 0.0001006, 0.000104234, 0.0001071, 0.000109382, 0.000111215, 0.000112704, 0.000113922, 0.00011493, 0.000115769, 0.000116472, 0.000117068, 
			7.07791e-05, 8.35778e-05, 9.37017e-05, 0.000101619, 0.000107797, 0.000112633, 0.000116443, 0.000119469, 0.000121896, 0.000123859, 0.000125461, 0.000126781, 0.000127877, 0.000128794, 0.000129568, 0.000130224, 
			8.22017e-05, 9.49971e-05, 0.000105209, 0.000113256, 0.00011958, 0.000124565, 0.000128517, 0.000131675, 0.000134221, 0.000136294, 0.000137994, 0.000139401, 0.000140575, 0.000141561, 0.000142395, 0.000143106
		)
}

CapTable	"poly_C_TOP_GP_16MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			2.87874e-06, 3.82035e-06, 4.54617e-06, 5.10173e-06, 5.52501e-06, 5.84812e-06, 6.09658e-06, 6.28938e-06, 6.44063e-06, 6.56053e-06, 6.65634e-06, 6.73378e-06, 6.79701e-06, 6.8491e-06, 6.8925e-06, 6.92876e-06, 
			3.64342e-06, 4.61827e-06, 5.39108e-06, 5.99111e-06, 6.45579e-06, 6.81611e-06, 7.09688e-06, 7.31754e-06, 7.49253e-06, 7.63256e-06, 7.74552e-06, 7.83764e-06, 7.91341e-06, 7.97643e-06, 8.029e-06, 8.07334e-06, 
			4.42999e-06, 5.41844e-06, 6.21232e-06, 6.83816e-06, 7.3288e-06, 7.71346e-06, 8.0163e-06, 8.25665e-06, 8.44877e-06, 8.60369e-06, 8.72967e-06, 8.8331e-06, 8.91883e-06, 8.99036e-06, 9.05052e-06, 9.10128e-06, 
			5.22238e-06, 6.2153e-06, 7.02187e-06, 7.66419e-06, 8.1725e-06, 8.57432e-06, 8.89347e-06, 9.14841e-06, 9.3537e-06, 9.52022e-06, 9.65659e-06, 9.76928e-06, 9.86308e-06, 9.94167e-06, 1.0008e-05, 1.00644e-05, 
			6.0181e-06, 7.01312e-06, 7.82889e-06, 8.48435e-06, 9.00643e-06, 9.42213e-06, 9.75433e-06, 1.00215e-05, 1.02377e-05, 1.04142e-05, 1.05596e-05, 1.06803e-05, 1.07811e-05, 1.08658e-05, 1.09377e-05, 1.09997e-05
		)
}

CapTable	"poly_C_LATERAL_16MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			0.00012088, 6.80578e-05, 4.58499e-05, 3.31409e-05, 2.49442e-05, 1.931e-05, 1.52748e-05, 1.22963e-05, 1.00451e-05, 8.30968e-06, 6.94911e-06, 5.86666e-06, 4.99426e-06, 4.28297e-06, 3.69701e-06, 3.20977e-06, 
			0.000132934, 7.64144e-05, 5.2186e-05, 3.81702e-05, 2.90403e-05, 2.27016e-05, 1.81167e-05, 1.47001e-05, 1.20943e-05, 1.00685e-05, 8.46785e-06, 7.18519e-06, 6.14456e-06, 5.29093e-06, 4.58373e-06, 3.99265e-06, 
			0.00014005, 8.18502e-05, 5.6553e-05, 4.17822e-05, 3.20758e-05, 2.5279e-05, 2.03217e-05, 1.65982e-05, 1.3737e-05, 1.14971e-05, 9.71565e-06, 8.27948e-06, 7.10772e-06, 6.14153e-06, 5.33725e-06, 4.66202e-06, 
			0.000144453, 8.56546e-05, 5.9792e-05, 4.45572e-05, 3.44677e-05, 2.73508e-05, 2.21237e-05, 1.81712e-05, 1.51147e-05, 1.27077e-05, 1.07827e-05, 9.22274e-06, 7.94386e-06, 6.8846e-06, 5.99917e-06, 5.25296e-06, 
			0.00014801, 8.87916e-05, 6.25042e-05, 4.69113e-05, 3.65232e-05, 2.91511e-05, 2.37044e-05, 1.95627e-05, 1.63426e-05, 1.37938e-05, 1.17458e-05, 1.00786e-05, 8.70618e-06, 7.56496e-06, 6.60761e-06, 5.79802e-06
		)
}

CapTable	"poly_C_BOTTOM_GP_17MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			4.00111e-05, 5.30044e-05, 6.27772e-05, 7.01359e-05, 7.56842e-05, 7.98902e-05, 8.31065e-05, 8.55918e-05, 8.75343e-05, 8.907e-05, 9.02981e-05, 9.12908e-05, 9.21016e-05, 9.277e-05, 9.33264e-05, 9.37936e-05, 
			5.14788e-05, 6.49051e-05, 7.52491e-05, 8.31615e-05, 8.92118e-05, 9.38601e-05, 9.74583e-05, 0.000100272, 0.000102494, 0.000104269, 0.000105701, 0.000106867, 0.000107828, 0.000108626, 0.000109293, 0.000109857, 
			6.33016e-05, 7.68529e-05, 8.74511e-05, 9.56575e-05, 0.000102002, 0.000106927, 0.000110777, 0.000113815, 0.000116236, 0.000118183, 0.000119766, 0.000121065, 0.000122141, 0.00012304, 0.000123797, 0.000124441, 
			7.52191e-05, 8.87693e-05, 9.94827e-05, 0.000107857, 0.000114389, 0.000119503, 0.000123531, 0.000126735, 0.000129305, 0.000131388, 0.00013309, 0.000134497, 0.000135666, 0.000136648, 0.000137481, 0.000138189, 
			8.72054e-05, 0.000100725, 0.00011151, 0.000120006, 0.000126679, 0.000131939, 0.000136113, 0.00013945, 0.000142145, 0.000144339, 0.000146144, 0.000147642, 0.000148894, 0.00014995, 0.000150848, 0.000151617
		)
}

CapTable	"poly_C_LATERAL_17MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			0.000121078, 6.83514e-05, 4.62275e-05, 3.3588e-05, 2.5447e-05, 1.98564e-05, 1.58545e-05, 1.29013e-05, 1.06688e-05, 8.94701e-06, 7.59591e-06, 6.51968e-06, 5.65083e-06, 4.94094e-06, 4.35462e-06, 3.86551e-06, 
			0.00013324, 7.68375e-05, 5.27134e-05, 3.87845e-05, 2.97249e-05, 2.34417e-05, 1.88996e-05, 1.55156e-05, 1.29343e-05, 1.09263e-05, 9.33822e-06, 8.06379e-06, 7.02788e-06, 6.1761e-06, 5.4684e-06, 4.87481e-06, 
			0.000140483, 8.24206e-05, 5.72452e-05, 4.2576e-05, 3.29524e-05, 2.6221e-05, 2.13146e-05, 1.76301e-05, 1.47982e-05, 1.25796e-05, 1.08131e-05, 9.38664e-06, 8.22037e-06, 7.25615e-06, 6.45091e-06, 5.77229e-06, 
			0.000145031, 8.63896e-05, 6.06644e-05, 4.55446e-05, 3.55486e-05, 2.85062e-05, 2.33369e-05, 1.94287e-05, 1.64055e-05, 1.40226e-05, 1.21145e-05, 1.05653e-05, 9.29229e-06, 8.23473e-06, 7.34761e-06, 6.59679e-06, 
			0.000148753, 8.97088e-05, 6.35741e-05, 4.81087e-05, 3.78244e-05, 3.05346e-05, 2.51519e-05, 2.10594e-05, 1.78761e-05, 1.5354e-05, 1.33243e-05, 1.16686e-05, 1.0302e-05, 9.16192e-06, 8.20176e-06, 7.38612e-06
		)
}

CapTable	"metal1_C_BOTTOM_GP_21MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			1.53438e-05, 2.05717e-05, 2.52941e-05, 2.946e-05, 3.3043e-05, 3.60546e-05, 3.85459e-05, 4.05723e-05, 4.22063e-05, 4.35098e-05, 4.45412e-05, 4.53577e-05, 4.59956e-05, 4.65011e-05, 4.6887e-05, 4.71924e-05, 
			2.08411e-05, 2.62881e-05, 3.12723e-05, 3.56894e-05, 3.94909e-05, 4.26917e-05, 4.53403e-05, 4.74983e-05, 4.92368e-05, 5.06236e-05, 5.17273e-05, 5.26024e-05, 5.32815e-05, 5.38129e-05, 5.42317e-05, 5.45573e-05, 
			2.66792e-05, 3.22845e-05, 3.74235e-05, 4.19768e-05, 4.58921e-05, 4.91905e-05, 5.19161e-05, 5.41376e-05, 5.59292e-05, 5.73598e-05, 5.84988e-05, 5.93914e-05, 6.00958e-05, 6.06492e-05, 6.10802e-05, 6.14169e-05, 
			3.27553e-05, 3.84711e-05, 4.3704e-05, 4.83317e-05, 5.23122e-05, 5.56604e-05, 5.84254e-05, 6.06842e-05, 6.25064e-05, 6.39573e-05, 6.5109e-05, 6.60203e-05, 6.67365e-05, 6.72974e-05, 6.7736e-05, 6.80786e-05, 
			3.89867e-05, 4.47585e-05, 5.00419e-05, 5.47098e-05, 5.87197e-05, 6.20928e-05, 6.48793e-05, 6.71538e-05, 6.89817e-05, 7.04465e-05, 7.16099e-05, 7.25276e-05, 7.32496e-05, 7.3815e-05, 7.4257e-05, 7.46013e-05
		)
}

CapTable	"metal1_C_TOP_GP_21MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			2.10986e-05, 2.84843e-05, 3.50242e-05, 4.06754e-05, 4.54506e-05, 4.94108e-05, 5.26466e-05, 5.52597e-05, 5.73501e-05, 5.90124e-05, 6.03244e-05, 6.13532e-05, 6.21628e-05, 6.27902e-05, 6.32881e-05, 6.36728e-05, 
			2.92229e-05, 3.69147e-05, 4.37813e-05, 4.9721e-05, 5.47451e-05, 5.89147e-05, 6.23255e-05, 6.50839e-05, 6.7292e-05, 6.9049e-05, 7.04322e-05, 7.15182e-05, 7.23794e-05, 7.30509e-05, 7.35743e-05, 7.39825e-05, 
			3.7859e-05, 4.57316e-05, 5.27558e-05, 5.88331e-05, 6.39717e-05, 6.824e-05, 7.17338e-05, 7.45599e-05, 7.68217e-05, 7.86212e-05, 8.00428e-05, 8.11649e-05, 8.20447e-05, 8.27332e-05, 8.3271e-05, 8.36906e-05, 
			4.67948e-05, 5.47738e-05, 6.18766e-05, 6.80247e-05, 7.32263e-05, 7.75436e-05, 8.10799e-05, 8.39333e-05, 8.62206e-05, 8.8048e-05, 8.94898e-05, 9.06259e-05, 9.15176e-05, 9.22156e-05, 9.27612e-05, 9.3187e-05, 
			5.58986e-05, 6.39113e-05, 7.10503e-05, 7.72313e-05, 8.24562e-05, 8.67924e-05, 9.03422e-05, 9.32165e-05, 9.55197e-05, 9.73537e-05, 9.88048e-05, 9.99478e-05, 0.000100845, 0.000101548, 0.000102097, 0.000102526
		)
}

CapTable	"metal1_C_LATERAL_21MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			0.00022907, 0.000123446, 8.2279e-05, 5.89852e-05, 4.37107e-05, 3.29547e-05, 2.50855e-05, 1.92081e-05, 1.47603e-05, 1.13692e-05, 8.77168e-06, 6.77527e-06, 5.23736e-06, 4.05086e-06, 3.13454e-06, 2.42556e-06, 
			0.000239551, 0.000130382, 8.71378e-05, 6.25493e-05, 4.638e-05, 3.49839e-05, 2.66429e-05, 2.04076e-05, 1.56883e-05, 1.20876e-05, 9.32879e-06, 7.20712e-06, 5.57119e-06, 4.30947e-06, 3.33377e-06, 2.57903e-06, 
			0.000243879, 0.000133498, 8.93917e-05, 6.42071e-05, 4.76435e-05, 3.59493e-05, 2.73874e-05, 2.09842e-05, 1.61349e-05, 1.24355e-05, 9.59769e-06, 7.41609e-06, 5.73306e-06, 4.43356e-06, 3.42903e-06, 2.65169e-06, 
			0.000245853, 0.000134991, 9.05047e-05, 6.50458e-05, 4.82733e-05, 3.6436e-05, 2.77639e-05, 2.12782e-05, 1.63645e-05, 1.26127e-05, 9.73669e-06, 7.5223e-06, 5.81469e-06, 4.49585e-06, 3.476e-06, 2.68661e-06, 
			0.000246053, 0.000135479, 9.09258e-05, 6.53791e-05, 4.85371e-05, 3.66456e-05, 2.79321e-05, 2.14078e-05, 1.64671e-05, 1.26927e-05, 9.79686e-06, 7.56804e-06, 5.84894e-06, 4.52092e-06, 3.49379e-06, 2.69854e-06
		)
}

CapTable	"metal1_C_BOTTOM_GP_22MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			1.76183e-05, 2.29797e-05, 2.77363e-05, 3.19906e-05, 3.5792e-05, 3.91735e-05, 4.21626e-05, 4.4791e-05, 4.70888e-05, 4.9087e-05, 5.08185e-05, 5.23133e-05, 5.35998e-05, 5.47039e-05, 5.56492e-05, 5.64586e-05, 
			2.28684e-05, 2.82972e-05, 3.32663e-05, 3.77755e-05, 4.18358e-05, 4.54631e-05, 4.86789e-05, 5.15119e-05, 5.39926e-05, 5.61527e-05, 5.80264e-05, 5.96451e-05, 6.10399e-05, 6.22383e-05, 6.32658e-05, 6.41449e-05, 
			2.8378e-05, 3.39091e-05, 3.90293e-05, 4.37038e-05, 4.7924e-05, 5.17027e-05, 5.5057e-05, 5.80142e-05, 6.06052e-05, 6.28639e-05, 6.48247e-05, 6.65183e-05, 6.79794e-05, 6.92378e-05, 7.03132e-05, 7.12333e-05, 
			3.41223e-05, 3.97577e-05, 4.49874e-05, 4.97738e-05, 5.41025e-05, 5.79798e-05, 6.14236e-05, 6.44625e-05, 6.71261e-05, 6.94498e-05, 7.14664e-05, 7.32123e-05, 7.47161e-05, 7.6008e-05, 7.71162e-05, 7.80616e-05, 
			4.00667e-05, 4.5765e-05, 5.10702e-05, 5.59291e-05, 6.03286e-05, 6.42697e-05, 6.7773e-05, 7.0864e-05, 7.35739e-05, 7.59388e-05, 7.79948e-05, 7.97718e-05, 8.13007e-05, 8.26178e-05, 8.37502e-05, 8.47142e-05
		)
}

CapTable	"metal1_C_TOP_GP_22MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			9.71328e-06, 1.26838e-05, 1.53293e-05, 1.77057e-05, 1.98412e-05, 2.17496e-05, 2.34469e-05, 2.49455e-05, 2.62608e-05, 2.74109e-05, 2.84095e-05, 2.92752e-05, 3.00214e-05, 3.06646e-05, 3.12174e-05, 3.16905e-05, 
			1.25114e-05, 1.54821e-05, 1.82251e-05, 2.0734e-05, 2.30107e-05, 2.50591e-05, 2.68854e-05, 2.85041e-05, 2.99287e-05, 3.11758e-05, 3.22603e-05, 3.32026e-05, 3.40168e-05, 3.47181e-05, 3.53203e-05, 3.58373e-05, 
			1.54133e-05, 1.84224e-05, 2.12404e-05, 2.38408e-05, 2.62092e-05, 2.83453e-05, 3.02562e-05, 3.19504e-05, 3.34442e-05, 3.47514e-05, 3.58924e-05, 3.68832e-05, 3.77396e-05, 3.84754e-05, 3.91113e-05, 3.96589e-05, 
			1.84197e-05, 2.14781e-05, 2.4358e-05, 2.70222e-05, 2.94565e-05, 3.16553e-05, 3.36232e-05, 3.53685e-05, 3.69096e-05, 3.82604e-05, 3.9438e-05, 4.046e-05, 4.13449e-05, 4.21099e-05, 4.27685e-05, 4.33381e-05, 
			2.15242e-05, 2.46174e-05, 2.75418e-05, 3.02557e-05, 3.2735e-05, 3.49774e-05, 3.69828e-05, 3.87659e-05, 4.03391e-05, 4.17181e-05, 4.29181e-05, 4.39642e-05, 4.48719e-05, 4.56539e-05, 4.63227e-05, 4.69034e-05
		)
}

CapTable	"metal1_C_LATERAL_22MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			0.000235807, 0.000132486, 9.30239e-05, 7.08185e-05, 5.60721e-05, 4.53789e-05, 3.72166e-05, 3.07852e-05, 2.56129e-05, 2.13952e-05, 1.79239e-05, 1.50465e-05, 1.26509e-05, 1.06478e-05, 8.96908e-06, 7.55868e-06, 
			0.000249535, 0.000142436, 0.000100615, 7.68302e-05, 6.09246e-05, 4.93521e-05, 4.05027e-05, 3.35215e-05, 2.79016e-05, 2.33163e-05, 1.95402e-05, 1.64079e-05, 1.37978e-05, 1.16156e-05, 9.78545e-06, 8.24754e-06, 
			0.00025678, 0.000148097, 0.00010507, 8.0393e-05, 6.38379e-05, 5.17532e-05, 4.24971e-05, 3.5188e-05, 2.92994e-05, 2.44923e-05, 2.05296e-05, 1.72424e-05, 1.45018e-05, 1.22094e-05, 1.02859e-05, 8.6692e-06, 
			0.000261187, 0.000151642, 0.000107917, 8.27032e-05, 6.57258e-05, 5.33171e-05, 4.3801e-05, 3.62804e-05, 3.02173e-05, 2.52638e-05, 2.11804e-05, 1.77909e-05, 1.49643e-05, 1.25986e-05, 1.06135e-05, 8.94409e-06, 
			0.000263323, 0.000153727, 0.000109667, 8.41504e-05, 6.6927e-05, 5.43217e-05, 4.46435e-05, 3.69869e-05, 3.08116e-05, 2.57647e-05, 2.16025e-05, 1.81463e-05, 1.52635e-05, 1.28504e-05, 1.08255e-05, 9.12234e-06
		)
}

CapTable	"metal1_C_BOTTOM_GP_23MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			1.89812e-05, 2.45689e-05, 2.94626e-05, 3.38074e-05, 3.76815e-05, 4.11339e-05, 4.42052e-05, 4.6933e-05, 4.93482e-05, 5.14833e-05, 5.33678e-05, 5.50281e-05, 5.64886e-05, 5.77765e-05, 5.89055e-05, 5.99017e-05, 
			2.43291e-05, 2.98973e-05, 3.49475e-05, 3.95101e-05, 4.36184e-05, 4.73033e-05, 5.05981e-05, 5.35339e-05, 5.61419e-05, 5.84529e-05, 6.05001e-05, 6.23062e-05, 6.39011e-05, 6.53078e-05, 6.65467e-05, 6.76393e-05, 
			2.98607e-05, 3.54702e-05, 4.06284e-05, 4.53276e-05, 4.95797e-05, 5.34098e-05, 5.68435e-05, 5.99122e-05, 6.26435e-05, 6.50695e-05, 6.72228e-05, 6.91251e-05, 7.08112e-05, 7.22971e-05, 7.36108e-05, 7.47664e-05, 
			3.55723e-05, 4.12374e-05, 4.64743e-05, 5.12662e-05, 5.56177e-05, 5.95452e-05, 6.30738e-05, 6.62364e-05, 6.90537e-05, 7.15623e-05, 7.37898e-05, 7.57644e-05, 7.75122e-05, 7.90574e-05, 8.04235e-05, 8.16314e-05, 
			4.14447e-05, 4.71387e-05, 5.24265e-05, 5.7281e-05, 6.17004e-05, 6.56963e-05, 6.92925e-05, 7.25199e-05, 7.53998e-05, 7.79688e-05, 8.0251e-05, 8.22778e-05, 8.40709e-05, 8.56607e-05, 8.70667e-05, 8.83081e-05
		)
}

CapTable	"metal1_C_TOP_GP_23MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			6.64203e-06, 8.59953e-06, 1.03209e-05, 1.18578e-05, 1.32358e-05, 1.44731e-05, 1.55821e-05, 1.65716e-05, 1.74546e-05, 1.82389e-05, 1.89341e-05, 1.95499e-05, 2.00954e-05, 2.05741e-05, 2.09997e-05, 2.13713e-05, 
			8.41302e-06, 1.0329e-05, 1.20852e-05, 1.36869e-05, 1.51434e-05, 1.64621e-05, 1.76512e-05, 1.87195e-05, 1.96756e-05, 2.05294e-05, 2.12863e-05, 2.19616e-05, 2.2559e-05, 2.30872e-05, 2.35548e-05, 2.39662e-05, 
			1.02104e-05, 1.21203e-05, 1.39034e-05, 1.55502e-05, 1.70572e-05, 1.84308e-05, 1.96737e-05, 2.07931e-05, 2.17983e-05, 2.26989e-05, 2.34987e-05, 2.4214e-05, 2.48458e-05, 2.54084e-05, 2.59041e-05, 2.63466e-05, 
			1.20431e-05, 1.39633e-05, 1.57702e-05, 1.74499e-05, 1.89968e-05, 2.04096e-05, 2.16925e-05, 2.28483e-05, 2.38913e-05, 2.48245e-05, 2.5658e-05, 2.64006e-05, 2.70606e-05, 2.76478e-05, 2.81676e-05, 2.86264e-05, 
			1.39155e-05, 1.5842e-05, 1.76707e-05, 1.9377e-05, 2.0951e-05, 2.23928e-05, 2.37057e-05, 2.48902e-05, 2.59605e-05, 2.69174e-05, 2.77755e-05, 2.85388e-05, 2.92221e-05, 2.98262e-05, 3.03625e-05, 3.08397e-05
		)
}

CapTable	"metal1_C_LATERAL_23MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			0.000237153, 0.000134351, 9.53725e-05, 7.3596e-05, 5.92099e-05, 4.88017e-05, 4.08479e-05, 3.45528e-05, 2.945e-05, 2.52443e-05, 2.17352e-05, 1.87803e-05, 1.62741e-05, 1.41363e-05, 1.23044e-05, 1.07286e-05, 
			0.000251548, 0.00014502, 0.000103721, 8.03903e-05, 6.48568e-05, 5.35699e-05, 4.49196e-05, 3.80575e-05, 3.24847e-05, 2.78836e-05, 2.40379e-05, 2.07942e-05, 1.80388e-05, 1.56848e-05, 1.36647e-05, 1.19245e-05, 
			0.000259526, 0.000151438, 0.000108946, 8.47216e-05, 6.85274e-05, 5.67088e-05, 4.76274e-05, 4.0408e-05, 3.45347e-05, 2.96772e-05, 2.56112e-05, 2.21766e-05, 1.9255e-05, 1.6756e-05, 1.46085e-05, 1.27563e-05, 
			0.000264701, 0.000155754, 0.000112554, 8.77737e-05, 7.11318e-05, 5.89592e-05, 4.95844e-05, 4.2118e-05, 3.60339e-05, 3.0995e-05, 2.67716e-05, 2.31997e-05, 2.01578e-05, 1.75528e-05, 1.5312e-05, 1.33776e-05, 
			0.000267609, 0.000158594, 0.000115035, 8.99214e-05, 7.29985e-05, 6.0593e-05, 5.10176e-05, 4.3378e-05, 3.71442e-05, 3.1975e-05, 2.76377e-05, 2.39656e-05, 2.0835e-05, 1.81519e-05, 1.5842e-05, 1.38462e-05
		)
}

CapTable	"metal1_C_BOTTOM_GP_24MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			1.99141e-05, 2.57001e-05, 3.07436e-05, 3.51999e-05, 3.91601e-05, 4.26844e-05, 4.58187e-05, 4.86033e-05, 5.10748e-05, 5.32665e-05, 5.52102e-05, 5.69303e-05, 5.84568e-05, 5.98092e-05, 6.1008e-05, 6.20721e-05, 
			2.53933e-05, 3.11208e-05, 3.62915e-05, 4.09445e-05, 4.51241e-05, 4.88692e-05, 5.22185e-05, 5.52061e-05, 5.78678e-05, 6.02371e-05, 6.2344e-05, 6.4216e-05, 6.5881e-05, 6.73608e-05, 6.8676e-05, 6.98473e-05, 
			3.10234e-05, 3.67569e-05, 4.20101e-05, 4.67803e-05, 5.10895e-05, 5.49687e-05, 5.84489e-05, 6.15659e-05, 6.4349e-05, 6.68353e-05, 6.90501e-05, 7.10249e-05, 7.27825e-05, 7.435e-05, 7.57472e-05, 7.69925e-05, 
			3.67997e-05, 4.25622e-05, 4.78702e-05, 5.27157e-05, 5.71109e-05, 6.10796e-05, 6.46511e-05, 6.78572e-05, 7.07277e-05, 7.32964e-05, 7.55907e-05, 7.76396e-05, 7.94695e-05, 8.1102e-05, 8.25614e-05, 8.38628e-05, 
			4.27084e-05, 4.84761e-05, 5.38174e-05, 5.87104e-05, 6.31633e-05, 6.71917e-05, 7.08271e-05, 7.4097e-05, 7.70321e-05, 7.96618e-05, 8.20161e-05, 8.41219e-05, 8.60053e-05, 8.76898e-05, 8.91956e-05, 9.05445e-05
		)
}

CapTable	"metal1_C_TOP_GP_24MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			5.08115e-06, 6.5553e-06, 7.84056e-06, 8.9866e-06, 1.00115e-05, 1.09297e-05, 1.17523e-05, 1.24884e-05, 1.31457e-05, 1.3732e-05, 1.42529e-05, 1.4719e-05, 1.51314e-05, 1.54989e-05, 1.58265e-05, 1.6118e-05, 
			6.39443e-06, 7.82404e-06, 9.128e-06, 1.03139e-05, 1.13905e-05, 1.23643e-05, 1.32427e-05, 1.4033e-05, 1.47424e-05, 1.5378e-05, 1.59457e-05, 1.64542e-05, 1.69072e-05, 1.7312e-05, 1.76743e-05, 1.79967e-05, 
			7.71534e-06, 9.13097e-06, 1.04462e-05, 1.1658e-05, 1.27666e-05, 1.37761e-05, 1.46916e-05, 1.55167e-05, 1.62626e-05, 1.69305e-05, 1.75308e-05, 1.8069e-05, 1.85513e-05, 1.89831e-05, 1.93695e-05, 1.97151e-05, 
			9.05177e-06, 1.04647e-05, 1.17912e-05, 1.30219e-05, 1.41541e-05, 1.51888e-05, 1.613e-05, 1.69824e-05, 1.77533e-05, 1.84469e-05, 1.90715e-05, 1.96332e-05, 2.01363e-05, 2.05894e-05, 2.09935e-05, 2.13585e-05, 
			1.04079e-05, 1.18179e-05, 1.31526e-05, 1.43981e-05, 1.55462e-05, 1.66014e-05, 1.75612e-05, 1.84344e-05, 1.92248e-05, 1.99391e-05, 2.05827e-05, 2.1162e-05, 2.16833e-05, 2.21505e-05, 2.2572e-05, 2.29469e-05
		)
}

CapTable	"metal1_C_LATERAL_24MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			0.000237655, 0.00013505, 9.626e-05, 7.46609e-05, 6.04369e-05, 5.01719e-05, 4.2341e-05, 3.61471e-05, 3.11245e-05, 2.69783e-05, 2.35097e-05, 2.05774e-05, 1.80783e-05, 1.59339e-05, 1.40832e-05, 1.24784e-05, 
			0.000252296, 0.000145987, 0.000104901, 8.17692e-05, 6.64163e-05, 5.52882e-05, 4.67722e-05, 4.00197e-05, 3.45318e-05, 2.99918e-05, 2.61853e-05, 2.2961e-05, 2.0207e-05, 1.78389e-05, 1.57909e-05, 1.40115e-05, 
			0.000260549, 0.0001527, 0.00011044, 8.64301e-05, 7.04283e-05, 5.87767e-05, 4.98345e-05, 4.27266e-05, 3.69369e-05, 3.21373e-05, 2.81053e-05, 2.4683e-05, 2.17543e-05, 1.92312e-05, 1.70454e-05, 1.51426e-05, 
			0.000266028, 0.000157336, 0.000114381, 8.98252e-05, 7.3382e-05, 6.13792e-05, 5.21436e-05, 4.47861e-05, 3.87811e-05, 3.37936e-05, 2.95959e-05, 2.60266e-05, 2.29671e-05, 2.03269e-05, 1.80362e-05, 1.60391e-05, 
			0.000269262, 0.000160513, 0.000117206, 9.23221e-05, 7.55996e-05, 6.33622e-05, 5.39223e-05, 4.63856e-05, 4.02232e-05, 3.50962e-05, 3.07742e-05, 2.70938e-05, 2.39341e-05, 2.12039e-05, 1.88314e-05, 1.6761e-05
		)
}

CapTable	"metal1_C_BOTTOM_GP_25MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			2.05548e-05, 2.64839e-05, 3.16359e-05, 3.61813e-05, 4.02142e-05, 4.37985e-05, 4.69839e-05, 4.98134e-05, 5.23255e-05, 5.45548e-05, 5.65332e-05, 5.82889e-05, 5.98481e-05, 6.12338e-05, 6.24671e-05, 6.35654e-05, 
			2.61352e-05, 3.19847e-05, 3.72512e-05, 4.19805e-05, 4.62251e-05, 5.0023e-05, 5.3418e-05, 5.64468e-05, 5.91466e-05, 6.15519e-05, 6.36933e-05, 6.56007e-05, 6.73002e-05, 6.88165e-05, 7.01686e-05, 7.13777e-05, 
			3.1848e-05, 3.7685e-05, 4.30205e-05, 4.78584e-05, 5.22217e-05, 5.6148e-05, 5.96697e-05, 6.28218e-05, 6.56418e-05, 6.81601e-05, 7.041e-05, 7.24207e-05, 7.42161e-05, 7.58207e-05, 7.72578e-05, 7.85437e-05, 
			3.76931e-05, 4.35424e-05, 4.89201e-05, 5.38217e-05, 5.82636e-05, 6.22719e-05, 6.58782e-05, 6.91167e-05, 7.20201e-05, 7.46215e-05, 7.69516e-05, 7.90358e-05, 8.0905e-05, 8.25777e-05, 8.40793e-05, 8.54259e-05, 
			4.36541e-05, 4.94941e-05, 5.48921e-05, 5.98325e-05, 6.43223e-05, 6.83846e-05, 7.20508e-05, 7.53495e-05, 7.83162e-05, 8.09783e-05, 8.3368e-05, 8.5512e-05, 8.74349e-05, 8.91621e-05, 9.07137e-05, 9.21093e-05
		)
}

CapTable	"metal1_C_TOP_GP_25MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			4.1286e-06, 5.32228e-06, 6.36113e-06, 7.28131e-06, 8.10306e-06, 8.83878e-06, 9.49729e-06, 1.00861e-05, 1.06121e-05, 1.10816e-05, 1.15003e-05, 1.18738e-05, 1.22068e-05, 1.25041e-05, 1.27688e-05, 1.30057e-05, 
			5.1852e-06, 6.33423e-06, 7.38123e-06, 8.33156e-06, 9.19175e-06, 9.96912e-06, 1.067e-05, 1.13006e-05, 1.1867e-05, 1.23748e-05, 1.28298e-05, 1.32373e-05, 1.36025e-05, 1.39286e-05, 1.42217e-05, 1.44833e-05, 
			6.23976e-06, 7.37324e-06, 8.42485e-06, 9.39187e-06, 1.02749e-05, 1.10782e-05, 1.18063e-05, 1.24642e-05, 1.30576e-05, 1.35914e-05, 1.40718e-05, 1.45025e-05, 1.48898e-05, 1.5238e-05, 1.555e-05, 1.58324e-05, 
			7.30043e-06, 8.42812e-06, 9.48445e-06, 1.04635e-05, 1.1363e-05, 1.21846e-05, 1.29321e-05, 1.36099e-05, 1.42229e-05, 1.47765e-05, 1.5275e-05, 1.5725e-05, 1.61288e-05, 1.64944e-05, 1.68223e-05, 1.71184e-05, 
			8.37241e-06, 9.49408e-06, 1.0554e-05, 1.15413e-05, 1.24527e-05, 1.3288e-05, 1.40498e-05, 1.47433e-05, 1.53706e-05, 1.59392e-05, 1.6453e-05, 1.69163e-05, 1.73364e-05, 1.77132e-05, 1.8055e-05, 1.83626e-05
		)
}

CapTable	"metal1_C_LATERAL_25MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			0.000237905, 0.000135394, 9.66981e-05, 7.51873e-05, 6.10455e-05, 5.08553e-05, 4.30909e-05, 3.6955e-05, 3.19813e-05, 2.78754e-05, 2.44385e-05, 2.15307e-05, 1.90485e-05, 1.69142e-05, 1.50679e-05, 1.3462e-05, 
			0.000252664, 0.000146463, 0.000105483, 8.24521e-05, 6.71926e-05, 5.61494e-05, 4.77086e-05, 4.1021e-05, 3.55876e-05, 3.10922e-05, 2.73206e-05, 2.41221e-05, 2.13853e-05, 1.90268e-05, 1.69818e-05, 1.5199e-05, 
			0.000261053, 0.000153323, 0.000111178, 8.72791e-05, 7.13794e-05, 5.98195e-05, 5.09582e-05, 4.39194e-05, 3.81877e-05, 3.34345e-05, 2.9438e-05, 2.6041e-05, 2.31286e-05, 2.0613e-05, 1.84271e-05, 1.65175e-05, 
			0.000266681, 0.000158118, 0.000115288, 9.08502e-05, 7.45153e-05, 6.26094e-05, 5.34582e-05, 4.61725e-05, 4.02263e-05, 3.52852e-05, 3.11222e-05, 2.75768e-05, 2.45309e-05, 2.18952e-05, 1.96007e-05, 1.75925e-05, 
			0.000270079, 0.000161467, 0.000118291, 9.35308e-05, 7.69209e-05, 6.47835e-05, 5.54299e-05, 4.79655e-05, 4.18618e-05, 3.678e-05, 3.24906e-05, 2.88311e-05, 2.56817e-05, 2.29519e-05, 2.05714e-05, 1.84849e-05
		)
}

CapTable	"metal1_C_BOTTOM_GP_26MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			2.40082e-05, 3.08337e-05, 3.67275e-05, 4.18996e-05, 4.64698e-05, 5.05195e-05, 5.41095e-05, 5.72929e-05, 6.01159e-05, 6.26192e-05, 6.48404e-05, 6.68131e-05, 6.85666e-05, 7.01278e-05, 7.152e-05, 7.27636e-05, 
			3.03187e-05, 3.69818e-05, 4.29523e-05, 4.82933e-05, 5.3068e-05, 5.73292e-05, 6.11289e-05, 6.4513e-05, 6.75265e-05, 7.02097e-05, 7.25994e-05, 7.47293e-05, 7.66298e-05, 7.83278e-05, 7.98473e-05, 8.12092e-05, 
			3.67153e-05, 4.33061e-05, 4.93082e-05, 5.47317e-05, 5.96091e-05, 6.39845e-05, 6.79014e-05, 7.14027e-05, 7.45315e-05, 7.73268e-05, 7.98233e-05, 8.20567e-05, 8.40548e-05, 8.58455e-05, 8.74528e-05, 8.88976e-05, 
			4.31959e-05, 4.97524e-05, 5.57609e-05, 6.12209e-05, 6.61534e-05, 7.05942e-05, 7.45828e-05, 7.81605e-05, 8.13647e-05, 8.42362e-05, 8.68092e-05, 8.91152e-05, 9.11862e-05, 9.30462e-05, 9.47192e-05, 9.62281e-05, 
			4.97563e-05, 5.62588e-05, 6.22534e-05, 6.77214e-05, 7.26795e-05, 7.71567e-05, 8.11891e-05, 8.48156e-05, 8.80727e-05, 9.09987e-05, 9.3626e-05, 9.59881e-05, 9.81122e-05, 0.000100026, 0.000101752, 0.000103311
		)
}

CapTable	"metal1_C_LATERAL_26MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			0.000238449, 0.000136149, 9.76557e-05, 7.63409e-05, 6.23847e-05, 5.23681e-05, 4.4764e-05, 3.87736e-05, 3.3931e-05, 2.99418e-05, 2.66078e-05, 2.37892e-05, 2.13841e-05, 1.93152e-05, 1.75234e-05, 1.59623e-05, 
			0.000253459, 0.000147491, 0.000106743, 8.39364e-05, 6.88905e-05, 5.80469e-05, 4.9791e-05, 4.32715e-05, 3.799e-05, 3.36298e-05, 2.99775e-05, 2.68827e-05, 2.42355e-05, 2.19528e-05, 1.99708e-05, 1.82397e-05, 
			0.000262128, 0.000154659, 0.000112771, 8.91204e-05, 7.34574e-05, 6.21195e-05, 5.34628e-05, 4.6611e-05, 4.10472e-05, 3.64438e-05, 3.25792e-05, 2.92969e-05, 2.64829e-05, 2.40507e-05, 2.19341e-05, 2.00808e-05, 
			0.000268071, 0.000159793, 0.000117242, 9.30766e-05, 7.69994e-05, 6.53346e-05, 5.64058e-05, 4.93221e-05, 4.3558e-05, 3.87786e-05, 3.47577e-05, 3.13356e-05, 2.83951e-05, 2.58485e-05, 2.36273e-05, 2.16785e-05, 
			0.000271816, 0.000163508, 0.000120634, 9.61657e-05, 7.98319e-05, 6.79522e-05, 5.88357e-05, 5.15867e-05, 4.56763e-05, 4.07658e-05, 3.66265e-05, 3.30968e-05, 3.00581e-05, 2.74212e-05, 2.51168e-05, 2.3091e-05
		)
}

CapTable	"metal1_C_BOTTOM_GPMIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			3.13986e-05, 4.30071e-05, 5.27577e-05, 6.05395e-05, 6.65054e-05, 7.09434e-05, 7.41707e-05, 7.64773e-05, 7.81119e-05, 7.92527e-05, 8.00507e-05, 8.06035e-05, 8.09864e-05, 8.1252e-05, 8.14355e-05, 8.15637e-05, 
			4.58091e-05, 5.78917e-05, 6.79852e-05, 7.60115e-05, 8.2159e-05, 8.67277e-05, 9.00523e-05, 9.24314e-05, 9.41125e-05, 9.52918e-05, 9.61148e-05, 9.66857e-05, 9.70823e-05, 9.73565e-05, 9.75469e-05, 9.76802e-05, 
			6.08322e-05, 7.30651e-05, 8.32542e-05, 9.13507e-05, 9.75388e-05, 0.000102146, 0.00010549, 0.000107889, 0.000109584, 0.000110773, 0.000111603, 0.00011218, 0.000112581, 0.000112858, 0.000113052, 0.000113187, 
			7.61007e-05, 8.8383e-05, 9.85907e-05, 0.000106698, 0.000112901, 0.000117505, 0.000120856, 0.000123254, 0.000124951, 0.000126142, 0.000126973, 0.000127552, 0.000127953, 0.000128232, 0.000128428, 0.000128566, 
			9.143e-05, 0.000103682, 0.000113876, 0.000121961, 0.00012815, 0.000132746, 0.000136089, 0.000138483, 0.000140177, 0.000141367, 0.000142197, 0.000142776, 0.000143178, 0.000143458, 0.000143656, 0.000143794
		)
}

CapTable	"metal1_C_TOP_GPMIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			1.9623e-05, 2.70962e-05, 3.36212e-05, 3.89725e-05, 4.31469e-05, 4.62867e-05, 4.85865e-05, 5.02419e-05, 5.14119e-05, 5.22388e-05, 5.281e-05, 5.321e-05, 5.34878e-05, 5.36809e-05, 5.38159e-05, 5.39111e-05, 
			2.81949e-05, 3.60039e-05, 4.27955e-05, 4.83413e-05, 5.26629e-05, 5.59121e-05, 5.82914e-05, 6.00009e-05, 6.12143e-05, 6.20654e-05, 6.26618e-05, 6.30772e-05, 6.33664e-05, 6.35687e-05, 6.37112e-05, 6.38128e-05, 
			3.7199e-05, 4.51489e-05, 5.20343e-05, 5.76443e-05, 6.20085e-05, 6.52849e-05, 6.76902e-05, 6.94122e-05, 7.06384e-05, 7.15011e-05, 7.21048e-05, 7.25263e-05, 7.28212e-05, 7.30286e-05, 7.31761e-05, 7.32824e-05, 
			4.63912e-05, 5.44027e-05, 6.13182e-05, 6.69451e-05, 7.1318e-05, 7.46028e-05, 7.7005e-05, 7.87357e-05, 7.99649e-05, 8.08307e-05, 8.14378e-05, 8.18633e-05, 8.21625e-05, 8.23744e-05, 8.25262e-05, 8.26363e-05, 
			5.56571e-05, 6.36697e-05, 7.05784e-05, 7.62075e-05, 8.05631e-05, 8.38408e-05, 8.62423e-05, 8.7971e-05, 8.92e-05, 9.00671e-05, 9.06768e-05, 9.11058e-05, 9.14088e-05, 9.16246e-05, 9.17795e-05, 9.18918e-05
		)
}

CapTable	"metal1_C_LATERALMIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			0.000219225, 0.000110993, 6.85381e-05, 4.50509e-05, 3.03799e-05, 2.07336e-05, 1.42415e-05, 9.82491e-06, 6.80505e-06, 4.73441e-06, 3.3138e-06, 2.3369e-06, 1.66453e-06, 1.20058e-06, 8.79056e-07, 6.54616e-07, 
			0.000225525, 0.000114611, 7.07822e-05, 4.65463e-05, 3.13994e-05, 2.14427e-05, 1.47423e-05, 1.01833e-05, 7.06516e-06, 4.92658e-06, 3.45681e-06, 2.44539e-06, 1.74789e-06, 1.26517e-06, 9.29134e-07, 6.93071e-07, 
			0.000226899, 0.000115544, 7.14008e-05, 4.6957e-05, 3.1705e-05, 2.16682e-05, 1.49129e-05, 1.03164e-05, 7.17016e-06, 5.01079e-06, 3.52575e-06, 2.5023e-06, 1.79485e-06, 1.30346e-06, 9.59599e-07, 7.16318e-07, 
			0.000226962, 0.000115674, 7.15184e-05, 4.70587e-05, 3.17816e-05, 2.17396e-05, 1.498e-05, 1.03774e-05, 7.22635e-06, 5.06209e-06, 3.57191e-06, 2.54302e-06, 1.82974e-06, 1.3322e-06, 9.82063e-07, 7.32814e-07, 
			0.000225977, 0.000115349, 7.1366e-05, 4.69797e-05, 3.17507e-05, 2.17384e-05, 1.49948e-05, 1.03999e-05, 7.25216e-06, 5.08822e-06, 3.59621e-06, 2.56385e-06, 1.846e-06, 1.34342e-06, 9.88394e-07, 7.34895e-07
		)
}

CapTable	"metal1_C_BOTTOM_GP_12MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			3.41591e-05, 4.60195e-05, 5.59208e-05, 6.39846e-05, 7.04549e-05, 7.56045e-05, 7.96872e-05, 8.29186e-05, 8.548e-05, 8.75149e-05, 8.9136e-05, 9.04289e-05, 9.14667e-05, 9.23008e-05, 9.29735e-05, 9.35185e-05, 
			4.83804e-05, 6.0503e-05, 7.06799e-05, 7.90138e-05, 8.57513e-05, 9.11535e-05, 9.54652e-05, 9.89013e-05, 0.000101642, 0.00010383, 0.000105581, 0.000106987, 0.000108116, 0.000109029, 0.000109765, 0.000110365, 
			6.30561e-05, 7.52392e-05, 8.55069e-05, 9.39682e-05, 0.000100839, 0.000106378, 0.000110822, 0.000114382, 0.00011723, 0.000119514, 0.00012135, 0.000122824, 0.000124015, 0.000124974, 0.000125754, 0.00012639, 
			7.79328e-05, 9.01473e-05, 0.000100465, 0.000108997, 0.000115959, 0.00012159, 0.000126121, 0.000129762, 0.000132685, 0.000135035, 0.000136927, 0.000138452, 0.000139686, 0.000140681, 0.000141492, 0.000142151, 
			9.29042e-05, 0.000105094, 0.00011543, 0.000124004, 0.00013102, 0.000136707, 0.000141297, 0.000144997, 0.000147969, 0.000150365, 0.000152295, 0.000153854, 0.000155118, 0.000156141, 0.000156974, 0.000157651
		)
}

CapTable	"metal1_C_TOP_GP_12MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			8.59902e-06, 1.16047e-05, 1.42704e-05, 1.6554e-05, 1.84597e-05, 2.00223e-05, 2.1289e-05, 2.2311e-05, 2.31327e-05, 2.3793e-05, 2.43222e-05, 2.47502e-05, 2.50955e-05, 2.53737e-05, 2.56007e-05, 2.57843e-05, 
			1.16701e-05, 1.47133e-05, 1.74607e-05, 1.98435e-05, 2.18523e-05, 2.35138e-05, 2.48732e-05, 2.59775e-05, 2.68711e-05, 2.75948e-05, 2.81792e-05, 2.86527e-05, 2.90366e-05, 2.9348e-05, 2.96028e-05, 2.9808e-05, 
			1.48088e-05, 1.78821e-05, 2.0682e-05, 2.31245e-05, 2.51955e-05, 2.69194e-05, 2.83371e-05, 2.94932e-05, 3.04356e-05, 3.12005e-05, 3.18198e-05, 3.2326e-05, 3.27356e-05, 3.30726e-05, 3.33452e-05, 3.3567e-05, 
			1.79973e-05, 2.11011e-05, 2.39385e-05, 2.64258e-05, 2.85428e-05, 3.03093e-05, 3.17689e-05, 3.29639e-05, 3.39396e-05, 3.47344e-05, 3.5381e-05, 3.59085e-05, 3.63362e-05, 3.66905e-05, 3.69759e-05, 3.72091e-05, 
			2.12276e-05, 2.43511e-05, 2.72174e-05, 2.97366e-05, 3.1884e-05, 3.36829e-05, 3.51711e-05, 3.63912e-05, 3.73939e-05, 3.8209e-05, 3.88773e-05, 3.94211e-05, 3.98635e-05, 4.02244e-05, 4.05194e-05, 4.07599e-05
		)
}

CapTable	"metal1_C_LATERAL_12MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			0.00022525, 0.000119272, 7.8431e-05, 5.58144e-05, 4.13337e-05, 3.13486e-05, 2.41586e-05, 1.88342e-05, 1.48128e-05, 1.17301e-05, 9.33931e-06, 7.46722e-06, 5.98958e-06, 4.81536e-06, 3.87679e-06, 3.12306e-06, 
			0.00023487, 0.000126018, 8.35187e-05, 5.98355e-05, 4.45656e-05, 3.39738e-05, 2.63025e-05, 2.05892e-05, 1.62513e-05, 1.2909e-05, 1.0305e-05, 8.25783e-06, 6.63613e-06, 5.34355e-06, 4.3076e-06, 3.47392e-06, 
			0.000239272, 0.000129614, 8.64389e-05, 6.2219e-05, 4.65471e-05, 3.56152e-05, 2.76625e-05, 2.1715e-05, 1.71815e-05, 1.36764e-05, 1.09365e-05, 8.77605e-06, 7.06077e-06, 5.69024e-06, 4.59003e-06, 3.70295e-06, 
			0.000241874, 0.000131893, 8.83667e-05, 6.38385e-05, 4.78936e-05, 3.67431e-05, 2.86041e-05, 2.24986e-05, 1.78312e-05, 1.42131e-05, 1.13784e-05, 9.1387e-06, 7.35695e-06, 5.9309e-06, 4.78462e-06, 3.85925e-06, 
			0.000242911, 0.00013324, 8.95973e-05, 6.49049e-05, 4.88061e-05, 3.75194e-05, 2.92589e-05, 2.30462e-05, 1.82867e-05, 1.45908e-05, 1.16901e-05, 9.39469e-06, 7.56624e-06, 6.10159e-06, 4.92292e-06, 3.97087e-06
		)
}

CapTable	"metal1_C_BOTTOM_GP_13MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			3.56155e-05, 4.77711e-05, 5.78631e-05, 6.60584e-05, 7.26379e-05, 7.79012e-05, 8.21106e-05, 8.54872e-05, 8.82086e-05, 9.04165e-05, 9.22139e-05, 9.36879e-05, 9.49094e-05, 9.59178e-05, 9.67631e-05, 9.74712e-05, 
			5.00411e-05, 6.23526e-05, 7.26457e-05, 8.10648e-05, 8.78892e-05, 9.33965e-05, 9.7845e-05, 0.000101442, 0.000104365, 0.000106757, 0.000108717, 0.000110339, 0.000111687, 0.000112811, 0.000113756, 0.000114548, 
			6.48028e-05, 7.70953e-05, 8.74239e-05, 9.59344e-05, 0.000102877, 0.000108524, 0.000113118, 0.000116857, 0.000119914, 0.000122432, 0.000124506, 0.000126231, 0.000127671, 0.000128877, 0.000129893, 0.00013075, 
			7.968e-05, 9.19394e-05, 0.000102273, 0.000110839, 0.000117867, 0.000123608, 0.000128306, 0.000132149, 0.000135309, 0.00013792, 0.000140084, 0.000141892, 0.0001434, 0.000144671, 0.000145744, 0.000146651, 
			9.45873e-05, 0.000106778, 0.000117102, 0.000125699, 0.00013278, 0.000138594, 0.000143369, 0.00014729, 0.000150531, 0.000153215, 0.000155447, 0.000157317, 0.000158882, 0.000160205, 0.000161321, 0.000162271
		)
}

CapTable	"metal1_C_TOP_GP_13MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			5.76505e-06, 7.72806e-06, 9.45996e-06, 1.09399e-05, 1.21773e-05, 1.3197e-05, 1.4033e-05, 1.47166e-05, 1.52757e-05, 1.57327e-05, 1.61121e-05, 1.64267e-05, 1.66848e-05, 1.69051e-05, 1.70865e-05, 1.72404e-05, 
			7.72466e-06, 9.68609e-06, 1.145e-05, 1.29803e-05, 1.42756e-05, 1.53564e-05, 1.62493e-05, 1.69898e-05, 1.76037e-05, 1.8108e-05, 1.85314e-05, 1.88829e-05, 1.91751e-05, 1.9423e-05, 1.9629e-05, 1.98079e-05, 
			9.69887e-06, 1.16572e-05, 1.34378e-05, 1.49977e-05, 1.63285e-05, 1.74493e-05, 1.83818e-05, 1.91623e-05, 1.98126e-05, 2.03502e-05, 2.08053e-05, 2.11826e-05, 2.15012e-05, 2.17704e-05, 2.19962e-05, 2.21921e-05, 
			1.16774e-05, 1.36386e-05, 1.54338e-05, 1.70123e-05, 1.83723e-05, 1.95246e-05, 2.04877e-05, 2.12997e-05, 2.19769e-05, 2.25418e-05, 2.30185e-05, 2.34157e-05, 2.37575e-05, 2.40432e-05, 2.42846e-05, 2.44938e-05, 
			1.36646e-05, 1.56255e-05, 1.74335e-05, 1.90295e-05, 2.04118e-05, 2.15865e-05, 2.25735e-05, 2.34091e-05, 2.41062e-05, 2.46934e-05, 2.51884e-05, 2.56039e-05, 2.59603e-05, 2.62586e-05, 2.65156e-05, 2.67328e-05
		)
}

CapTable	"metal1_C_LATERAL_13MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			0.000226321, 0.00012083, 8.04382e-05, 5.81965e-05, 4.39967e-05, 3.41962e-05, 2.71032e-05, 2.1802e-05, 1.77445e-05, 1.45808e-05, 1.20764e-05, 1.00683e-05, 8.44078e-06, 7.10915e-06, 6.01104e-06, 5.09865e-06, 
			0.000236584, 0.000128281, 8.6272e-05, 6.29855e-05, 4.8001e-05, 3.75845e-05, 2.99899e-05, 2.42712e-05, 1.98622e-05, 1.64004e-05, 1.36417e-05, 1.14164e-05, 9.60265e-06, 8.11144e-06, 6.87578e-06, 5.84529e-06, 
			0.000241708, 0.000132629, 8.99579e-05, 6.61315e-05, 5.07286e-05, 3.99462e-05, 3.20374e-05, 2.60469e-05, 2.14021e-05, 1.77358e-05, 1.47994e-05, 1.24201e-05, 1.04724e-05, 8.86488e-06, 7.52833e-06, 6.41021e-06, 
			0.000245072, 0.000135679, 9.26497e-05, 6.84953e-05, 5.27908e-05, 4.17539e-05, 3.36191e-05, 2.74289e-05, 2.26082e-05, 1.87867e-05, 1.57145e-05, 1.32156e-05, 1.11636e-05, 9.46485e-06, 8.04903e-06, 6.86154e-06, 
			0.000246882, 0.000137784, 9.46155e-05, 7.02656e-05, 5.43692e-05, 4.31552e-05, 3.48562e-05, 2.85161e-05, 2.35614e-05, 1.96206e-05, 1.64429e-05, 1.38511e-05, 1.17172e-05, 9.94686e-06, 8.46785e-06, 7.22564e-06
		)
}

CapTable	"metal1_C_BOTTOM_GP_14MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			3.66271e-05, 4.90594e-05, 5.93647e-05, 6.77241e-05, 7.44339e-05, 7.98016e-05, 8.41005e-05, 8.7557e-05, 9.03526e-05, 9.26283e-05, 9.44952e-05, 9.6038e-05, 9.7323e-05, 9.83977e-05, 9.93072e-05, 0.000100077, 
			5.12653e-05, 6.38063e-05, 7.42792e-05, 8.28382e-05, 8.97732e-05, 9.53744e-05, 9.99055e-05, 0.000103582, 0.000106584, 0.000109052, 0.000111091, 0.000112791, 0.000114215, 0.000115416, 0.000116436, 0.000117305, 
			6.61932e-05, 7.86704e-05, 8.91455e-05, 9.77728e-05, 0.000104811, 0.000110544, 0.000115215, 0.000119035, 0.000122178, 0.000124777, 0.000126938, 0.000128752, 0.000130279, 0.000131574, 0.000132678, 0.000133626, 
			8.11876e-05, 9.35969e-05, 0.000104049, 0.000112708, 0.00011982, 0.000125642, 0.000130418, 0.000134345, 0.000137593, 0.000140294, 0.000142553, 0.000144457, 0.000146067, 0.000147439, 0.000148614, 0.000149623, 
			9.61727e-05, 0.00010848, 0.000118899, 0.000127571, 0.000134727, 0.000140616, 0.000145469, 0.000149479, 0.000152813, 0.000155594, 0.000157934, 0.000159906, 0.000161586, 0.00016302, 0.000164251, 0.000165313
		)
}

CapTable	"metal1_C_TOP_GP_14MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			4.29662e-06, 5.7483e-06, 7.02643e-06, 8.11578e-06, 9.02499e-06, 9.77472e-06, 1.03897e-05, 1.08935e-05, 1.13074e-05, 1.16486e-05, 1.19315e-05, 1.21675e-05, 1.23645e-05, 1.25323e-05, 1.2673e-05, 1.27941e-05, 
			5.73179e-06, 7.17415e-06, 8.46818e-06, 9.58854e-06, 1.05373e-05, 1.13289e-05, 1.19859e-05, 1.25305e-05, 1.29825e-05, 1.33587e-05, 1.36738e-05, 1.39387e-05, 1.41626e-05, 1.43532e-05, 1.45152e-05, 1.46551e-05, 
			7.16829e-06, 8.60086e-06, 9.90139e-06, 1.10389e-05, 1.20098e-05, 1.28282e-05, 1.35132e-05, 1.40859e-05, 1.45651e-05, 1.49659e-05, 1.53062e-05, 1.55914e-05, 1.58363e-05, 1.60432e-05, 1.62233e-05, 1.63758e-05, 
			8.59687e-06, 1.00259e-05, 1.13324e-05, 1.24827e-05, 1.34715e-05, 1.43101e-05, 1.50167e-05, 1.56114e-05, 1.61118e-05, 1.65342e-05, 1.68924e-05, 1.71964e-05, 1.74567e-05, 1.76791e-05, 1.78689e-05, 1.80358e-05, 
			1.00253e-05, 1.14484e-05, 1.2759e-05, 1.39195e-05, 1.49223e-05, 1.57771e-05, 1.64989e-05, 1.71129e-05, 1.76283e-05, 1.80689e-05, 1.84405e-05, 1.87611e-05, 1.90323e-05, 1.92678e-05, 1.94706e-05, 1.96468e-05
		)
}

CapTable	"metal1_C_LATERAL_14MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			0.00022668, 0.000121346, 8.11098e-05, 5.90064e-05, 4.49226e-05, 3.5213e-05, 2.81866e-05, 2.29295e-05, 1.88967e-05, 1.57413e-05, 1.32314e-05, 1.12068e-05, 9.55361e-06, 8.18939e-06, 7.05306e-06, 6.09865e-06, 
			0.000237172, 0.000129058, 8.72298e-05, 6.41031e-05, 4.92505e-05, 3.89359e-05, 3.14137e-05, 2.5741e-05, 2.13551e-05, 1.78967e-05, 1.51256e-05, 1.28746e-05, 1.10248e-05, 9.48908e-06, 8.20291e-06, 7.11717e-06, 
			0.00024256, 0.000133696, 9.12257e-05, 6.75736e-05, 5.23118e-05, 4.16356e-05, 3.37999e-05, 2.78529e-05, 2.32258e-05, 1.9555e-05, 1.65965e-05, 1.41804e-05, 1.21845e-05, 1.05199e-05, 9.11965e-06, 7.93311e-06, 
			0.000246223, 0.000137062, 9.42465e-05, 7.02748e-05, 5.47155e-05, 4.37848e-05, 3.57197e-05, 2.95667e-05, 2.4755e-05, 2.09189e-05, 1.78127e-05, 1.52647e-05, 1.31514e-05, 1.13821e-05, 9.88865e-06, 8.61892e-06, 
			0.000248356, 0.000139505, 9.65584e-05, 7.23956e-05, 5.66446e-05, 4.55332e-05, 3.72977e-05, 3.09857e-05, 2.60295e-05, 2.20624e-05, 1.8838e-05, 1.61836e-05, 1.3975e-05, 1.212e-05, 1.05497e-05, 9.21108e-06
		)
}

CapTable	"metal1_C_BOTTOM_GP_15MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			3.72899e-05, 4.99271e-05, 6.04054e-05, 6.8906e-05, 7.57306e-05, 8.11912e-05, 8.55673e-05, 8.90881e-05, 9.19392e-05, 9.4264e-05, 9.61752e-05, 9.77571e-05, 9.90795e-05, 0.00010019, 0.000101131, 0.000101934, 
			5.20709e-05, 6.47936e-05, 7.54239e-05, 8.41105e-05, 9.11511e-05, 9.68401e-05, 0.000101444, 0.000105186, 0.000108246, 0.000110762, 0.00011285, 0.000114593, 0.000116059, 0.0001173, 0.000118359, 0.000119266, 
			6.71275e-05, 7.97645e-05, 9.03756e-05, 9.91175e-05, 0.000106253, 0.000112065, 0.000116807, 0.00012069, 0.000123889, 0.000126542, 0.000128754, 0.000130614, 0.000132188, 0.000133528, 0.000134677, 0.000135666, 
			8.22238e-05, 9.4775e-05, 0.000105349, 0.000114111, 0.00012131, 0.000127211, 0.000132053, 0.000136043, 0.000139349, 0.000142106, 0.00014442, 0.000146374, 0.000148036, 0.00014946, 0.000150681, 0.000151741, 
			9.72863e-05, 0.000109714, 0.00012024, 0.000129002, 0.000136237, 0.000142197, 0.000147114, 0.000151187, 0.000154578, 0.000157418, 0.000159812, 0.000161844, 0.000163577, 0.000165067, 0.000166357, 0.000167469
		)
}

CapTable	"metal1_C_TOP_GP_15MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			3.45537e-06, 4.62485e-06, 5.65044e-06, 6.52408e-06, 7.25274e-06, 7.85299e-06, 8.34566e-06, 8.74982e-06, 9.08226e-06, 9.35695e-06, 9.58513e-06, 9.77564e-06, 9.93535e-06, 1.00709e-05, 1.01865e-05, 1.02852e-05, 
			4.60921e-06, 5.76451e-06, 6.79637e-06, 7.69296e-06, 8.45149e-06, 9.08488e-06, 9.61074e-06, 1.0047e-05, 1.04089e-05, 1.07115e-05, 1.09654e-05, 1.11793e-05, 1.13608e-05, 1.15155e-05, 1.16481e-05, 1.17625e-05, 
			5.74774e-06, 6.89248e-06, 7.93171e-06, 8.84015e-06, 9.61588e-06, 1.02699e-05, 1.08179e-05, 1.12765e-05, 1.16606e-05, 1.19832e-05, 1.22562e-05, 1.24881e-05, 1.26856e-05, 1.28553e-05, 1.30012e-05, 1.3128e-05, 
			6.88133e-06, 8.02146e-06, 9.06394e-06, 9.98175e-06, 1.07709e-05, 1.14393e-05, 1.20044e-05, 1.24802e-05, 1.28815e-05, 1.32208e-05, 1.35092e-05, 1.37553e-05, 1.39667e-05, 1.41458e-05, 1.4306e-05, 1.44413e-05, 
			8.00881e-06, 9.14379e-06, 1.01885e-05, 1.11133e-05, 1.19125e-05, 1.2594e-05, 1.31716e-05, 1.36613e-05, 1.40764e-05, 1.4429e-05, 1.47304e-05, 1.49882e-05, 1.52107e-05, 1.54028e-05, 1.55667e-05, 1.57158e-05
		)
}

CapTable	"metal1_C_LATERAL_15MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			0.000226819, 0.000121536, 8.13504e-05, 5.92933e-05, 4.52489e-05, 3.55708e-05, 2.85684e-05, 2.33278e-05, 1.93054e-05, 1.61547e-05, 1.36446e-05, 1.16159e-05, 9.95547e-06, 8.58106e-06, 7.43224e-06, 6.46342e-06, 
			0.000237413, 0.000129366, 8.76036e-05, 6.45353e-05, 4.97316e-05, 3.94558e-05, 3.19628e-05, 2.63103e-05, 2.19362e-05, 1.8483e-05, 1.5711e-05, 1.34542e-05, 1.15942e-05, 1.0045e-05, 8.74224e-06, 7.63762e-06, 
			0.000242924, 0.00013414, 9.17448e-05, 6.81599e-05, 5.2954e-05, 4.23215e-05, 3.45179e-05, 2.85925e-05, 2.39776e-05, 2.03109e-05, 1.73495e-05, 1.49245e-05, 1.2915e-05, 1.12326e-05, 9.81116e-06, 8.60061e-06, 
			0.000246723, 0.000137651, 9.49198e-05, 7.10216e-05, 5.55225e-05, 4.46384e-05, 3.66068e-05, 3.0475e-05, 2.56742e-05, 2.18398e-05, 1.87274e-05, 1.61667e-05, 1.40352e-05, 1.22432e-05, 1.07231e-05, 9.42383e-06, 
			0.000249012, 0.000140258, 9.74045e-05, 7.33211e-05, 5.76343e-05, 4.65717e-05, 3.83701e-05, 3.20788e-05, 2.71312e-05, 2.3163e-05, 1.99289e-05, 1.72575e-05, 1.50257e-05, 1.31426e-05, 1.15403e-05, 1.01664e-05
		)
}

CapTable	"metal1_C_BOTTOM_GP_16MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			4.02969e-05, 5.386e-05, 6.51137e-05, 7.42493e-05, 8.15854e-05, 8.74564e-05, 9.21619e-05, 9.59511e-05, 9.90205e-05, 0.000101528, 0.00010359, 0.000105302, 0.000106735, 0.000107943, 0.000108971, 0.00010985, 
			5.59492e-05, 6.95375e-05, 8.09019e-05, 9.02017e-05, 9.77426e-05, 0.000103838, 0.000108773, 0.000112787, 0.000116069, 0.000118776, 0.000121023, 0.000122905, 0.000124491, 0.00012584, 0.000126995, 0.000127991, 
			7.18074e-05, 8.52537e-05, 9.65622e-05, 0.000105888, 0.000113504, 0.000119713, 0.000124779, 0.000128932, 0.000132354, 0.000135197, 0.000137574, 0.00013958, 0.000141281, 0.000142736, 0.00014399, 0.000145075, 
			8.76498e-05, 0.000100957, 0.000112189, 0.000121505, 0.000129165, 0.000135444, 0.0001406, 0.000144854, 0.000148384, 0.000151332, 0.000153813, 0.000155916, 0.00015771, 0.000159253, 0.000160588, 0.000161749, 
			0.0001034, 0.000116537, 0.000127682, 0.00013697, 0.000144643, 0.000150967, 0.000156189, 0.000160518, 0.000164129, 0.000167161, 0.000169723, 0.000171905, 0.000173777, 0.000175392, 0.000176796, 0.000178021
		)
}

CapTable	"metal1_C_LATERAL_16MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.16, 0.32, 0.48, 0.64, 0.8, 0.96, 1.12, 1.28, 1.44, 1.6, 1.76, 1.92, 2.08, 2.24, 2.4, 2.56)
		capValue			= (
			0.000227176, 0.000122062, 8.20428e-05, 6.01402e-05, 4.62332e-05, 3.66736e-05, 2.97704e-05, 2.4612e-05, 2.06564e-05, 1.75591e-05, 1.50913e-05, 1.3095e-05, 1.14585e-05, 1.01011e-05, 8.96311e-06, 7.99982e-06, 
			0.000237982, 0.000130133, 8.8565e-05, 6.56781e-05, 5.10361e-05, 4.09e-05, 3.3525e-05, 2.79703e-05, 2.36764e-05, 2.02874e-05, 1.75659e-05, 1.53477e-05, 1.35164e-05, 1.19871e-05, 1.06968e-05, 9.59799e-06, 
			0.000243741, 0.00013518, 9.30069e-05, 6.96272e-05, 5.46042e-05, 4.41298e-05, 3.64602e-05, 3.06457e-05, 2.61215e-05, 2.25273e-05, 1.96229e-05, 1.72413e-05, 1.52635e-05, 1.36026e-05, 1.2194e-05, 1.09885e-05, 
			0.000247821, 0.000139001, 9.6516e-05, 7.28454e-05, 5.75488e-05, 4.68394e-05, 3.89556e-05, 3.29465e-05, 2.8245e-05, 2.44902e-05, 2.14399e-05, 1.89259e-05, 1.68279e-05, 1.50579e-05, 1.355e-05, 1.22542e-05, 
			0.000250423, 0.000141945, 9.93602e-05, 7.55248e-05, 6.00579e-05, 4.91845e-05, 4.11426e-05, 3.49828e-05, 3.01421e-05, 2.62588e-05, 2.30901e-05, 2.04674e-05, 1.82698e-05, 1.64083e-05, 1.48165e-05, 1.34438e-05
		)
}

CapTable	"metal2_C_BOTTOM_GP_31MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			9.6769e-06, 1.30527e-05, 1.61198e-05, 1.88262e-05, 2.11693e-05, 2.31726e-05, 2.48397e-05, 2.6236e-05, 2.73884e-05, 2.83277e-05, 2.90994e-05, 2.97281e-05, 3.02388e-05, 3.06553e-05, 3.09768e-05, 3.12505e-05, 
			1.29986e-05, 1.64355e-05, 1.96039e-05, 2.24272e-05, 2.48957e-05, 2.69955e-05, 2.87742e-05, 3.02509e-05, 3.14773e-05, 3.24868e-05, 3.33123e-05, 3.39894e-05, 3.45212e-05, 3.49687e-05, 3.53373e-05, 3.56562e-05, 
			1.6464e-05, 1.99341e-05, 2.31702e-05, 2.60588e-05, 2.85925e-05, 3.07649e-05, 3.25933e-05, 3.4125e-05, 3.53941e-05, 3.6441e-05, 3.73018e-05, 3.79787e-05, 3.85565e-05, 3.9031e-05, 3.94359e-05, 3.97464e-05, 
			2.0014e-05, 2.35327e-05, 2.67976e-05, 2.97415e-05, 3.23115e-05, 3.4521e-05, 3.6389e-05, 3.79498e-05, 3.92484e-05, 4.02903e-05, 4.11714e-05, 4.18995e-05, 4.252e-05, 4.30005e-05, 4.33925e-05, 4.37122e-05, 
			2.36201e-05, 2.71578e-05, 3.04596e-05, 3.34237e-05, 3.60243e-05, 3.82561e-05, 4.01446e-05, 4.17285e-05, 4.30074e-05, 4.40995e-05, 4.50044e-05, 4.57663e-05, 4.63658e-05, 4.68531e-05, 4.72535e-05, 4.75783e-05
		)
}

CapTable	"metal2_C_TOP_GP_31MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.64284e-05, 3.57274e-05, 4.37703e-05, 5.05973e-05, 5.63039e-05, 6.10255e-05, 6.49113e-05, 6.80865e-05, 7.06669e-05, 7.27655e-05, 7.44636e-05, 7.58377e-05, 7.69497e-05, 7.78465e-05, 7.85897e-05, 7.91783e-05, 
			3.69499e-05, 4.6517e-05, 5.48325e-05, 6.19069e-05, 6.78432e-05, 7.27776e-05, 7.68449e-05, 8.01803e-05, 8.29018e-05, 8.51175e-05, 8.69187e-05, 8.83767e-05, 8.95797e-05, 9.05391e-05, 9.13097e-05, 9.19096e-05, 
			4.79808e-05, 5.76552e-05, 6.60798e-05, 7.32706e-05, 7.9317e-05, 8.43504e-05, 8.85154e-05, 9.19359e-05, 9.47335e-05, 9.7016e-05, 9.887e-05, 0.000100408, 0.000101626, 0.000102609, 0.00010338, 0.000104029, 
			5.92588e-05, 6.90006e-05, 7.74909e-05, 8.47409e-05, 9.08539e-05, 9.59506e-05, 0.00010017, 0.000103644, 0.000106486, 0.00010884, 0.000110729, 0.000112258, 0.000113464, 0.000114474, 0.000115291, 0.00011595, 
			7.06678e-05, 8.0417e-05, 8.89233e-05, 9.62066e-05, 0.000102349, 0.000107478, 0.000111729, 0.000115228, 0.000118141, 0.000120477, 0.000122372, 0.000123888, 0.000125147, 0.000126171, 0.000126992, 0.000127658
		)
}

CapTable	"metal2_C_LATERAL_31MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000240309, 0.000129947, 8.70437e-05, 6.30445e-05, 4.74537e-05, 3.65047e-05, 2.84821e-05, 2.24259e-05, 1.77807e-05, 1.41736e-05, 1.13448e-05, 9.11308e-06, 7.34336e-06, 5.93458e-06, 4.80793e-06, 3.90669e-06, 
			0.000249965, 0.000136626, 9.19792e-05, 6.68774e-05, 5.04874e-05, 3.89571e-05, 3.04704e-05, 2.40601e-05, 1.91263e-05, 1.52847e-05, 1.22675e-05, 9.88241e-06, 7.98594e-06, 6.47518e-06, 5.26762e-06, 4.30149e-06, 
			0.000253867, 0.000139864, 9.45556e-05, 6.89436e-05, 5.2185e-05, 4.03498e-05, 3.16264e-05, 2.50194e-05, 1.99278e-05, 1.5957e-05, 1.28337e-05, 1.03579e-05, 8.39322e-06, 6.82431e-06, 5.57273e-06, 4.56647e-06, 
			0.000255683, 0.000141621, 9.60599e-05, 7.01927e-05, 5.3222e-05, 4.12171e-05, 3.23532e-05, 2.56315e-05, 2.04452e-05, 1.63929e-05, 1.32049e-05, 1.06803e-05, 8.67491e-06, 7.07076e-06, 5.78739e-06, 4.75889e-06, 
			0.000256118, 0.000142551, 9.69444e-05, 7.09733e-05, 5.3895e-05, 4.18032e-05, 3.28608e-05, 2.60711e-05, 2.08221e-05, 1.6727e-05, 1.35006e-05, 1.09462e-05, 8.91036e-06, 7.28383e-06, 5.98468e-06, 4.94262e-06
		)
}

CapTable	"metal2_C_BOTTOM_GP_32MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.13275e-05, 1.47722e-05, 1.78361e-05, 2.06075e-05, 2.31197e-05, 2.5396e-05, 2.74492e-05, 2.92959e-05, 3.09505e-05, 3.24222e-05, 3.37328e-05, 3.48893e-05, 3.59131e-05, 3.68108e-05, 3.76017e-05, 3.82958e-05, 
			1.44249e-05, 1.78453e-05, 2.10001e-05, 2.39002e-05, 2.65547e-05, 2.89705e-05, 3.11619e-05, 3.31353e-05, 3.4903e-05, 3.6478e-05, 3.78833e-05, 3.91259e-05, 4.02216e-05, 4.11887e-05, 4.20393e-05, 4.2784e-05, 
			1.76603e-05, 2.1096e-05, 2.43169e-05, 2.73005e-05, 3.00446e-05, 3.25537e-05, 3.48259e-05, 3.68788e-05, 3.8717e-05, 4.03613e-05, 4.18209e-05, 4.31157e-05, 4.42624e-05, 4.52731e-05, 4.61598e-05, 4.69411e-05, 
			2.10065e-05, 2.44791e-05, 2.77476e-05, 3.07937e-05, 3.36014e-05, 3.61669e-05, 3.8495e-05, 4.06012e-05, 4.24894e-05, 4.41764e-05, 4.56786e-05, 4.70116e-05, 4.81887e-05, 4.92278e-05, 5.01467e-05, 5.09472e-05, 
			2.44564e-05, 2.79508e-05, 3.12608e-05, 3.43451e-05, 3.71949e-05, 3.98001e-05, 4.21697e-05, 4.43058e-05, 4.62267e-05, 4.79451e-05, 4.94745e-05, 5.08302e-05, 5.20311e-05, 5.30909e-05, 5.40238e-05, 5.48219e-05
		)
}

CapTable	"metal2_C_TOP_GP_32MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.25295e-05, 1.62366e-05, 1.95323e-05, 2.25084e-05, 2.52128e-05, 2.76658e-05, 2.98874e-05, 3.18869e-05, 3.36768e-05, 3.52774e-05, 3.66967e-05, 3.79551e-05, 3.90643e-05, 4.00428e-05, 4.0901e-05, 4.16512e-05, 
			1.60135e-05, 1.96998e-05, 2.30957e-05, 2.62205e-05, 2.90894e-05, 3.17094e-05, 3.40834e-05, 3.62269e-05, 3.8152e-05, 3.9873e-05, 4.14002e-05, 4.2756e-05, 4.39542e-05, 4.50087e-05, 4.59341e-05, 4.67466e-05, 
			1.962e-05, 2.33346e-05, 2.68109e-05, 3.0041e-05, 3.30169e-05, 3.57377e-05, 3.82155e-05, 4.04505e-05, 4.24608e-05, 4.4257e-05, 4.58577e-05, 4.72762e-05, 4.85271e-05, 4.96297e-05, 5.06015e-05, 5.14515e-05, 
			2.33423e-05, 2.71074e-05, 3.0653e-05, 3.39544e-05, 3.70057e-05, 3.98025e-05, 4.23483e-05, 4.4647e-05, 4.67161e-05, 4.85663e-05, 5.02139e-05, 5.16741e-05, 5.29663e-05, 5.41041e-05, 5.51018e-05, 5.5984e-05, 
			2.71868e-05, 3.09878e-05, 3.45805e-05, 3.79409e-05, 4.10448e-05, 4.3893e-05, 4.64845e-05, 4.88307e-05, 5.09395e-05, 5.2823e-05, 5.45011e-05, 5.59928e-05, 5.73095e-05, 5.84715e-05, 5.94945e-05, 6.04179e-05
		)
}

CapTable	"metal2_C_LATERAL_32MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000249131, 0.000141447, 0.000100319, 7.7318e-05, 6.21085e-05, 5.10844e-05, 4.26392e-05, 3.59381e-05, 3.04956e-05, 2.6003e-05, 2.2252e-05, 1.90968e-05, 1.64238e-05, 1.41515e-05, 1.22111e-05, 1.05509e-05, 
			0.000262567, 0.000151377, 0.000108028, 8.35317e-05, 6.72185e-05, 5.53535e-05, 4.62489e-05, 3.90167e-05, 3.31399e-05, 2.8288e-05, 2.42359e-05, 2.08243e-05, 1.79361e-05, 1.54779e-05, 1.33793e-05, 1.15832e-05, 
			0.000269539, 0.000157117, 0.000112678, 8.73421e-05, 7.04082e-05, 5.80488e-05, 4.85476e-05, 4.0993e-05, 3.48503e-05, 2.9774e-05, 2.55345e-05, 2.19633e-05, 1.89378e-05, 1.63626e-05, 1.41628e-05, 1.22785e-05, 
			0.000273701, 0.000160772, 0.000115738, 8.99075e-05, 7.25699e-05, 5.98943e-05, 5.01369e-05, 4.23698e-05, 3.6048e-05, 3.08234e-05, 2.64556e-05, 2.27751e-05, 1.96559e-05, 1.69992e-05, 1.47287e-05, 1.27825e-05, 
			0.000275881, 0.000163094, 0.000117771, 9.16495e-05, 7.40659e-05, 6.11932e-05, 5.12677e-05, 4.33614e-05, 3.6922e-05, 3.1597e-05, 2.71442e-05, 2.33906e-05, 2.02074e-05, 1.74952e-05, 1.51761e-05, 1.31846e-05
		)
}

CapTable	"metal2_C_BOTTOM_GP_33MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.23026e-05, 1.58725e-05, 1.89768e-05, 2.17447e-05, 2.42465e-05, 2.65226e-05, 2.86021e-05, 3.05027e-05, 3.22387e-05, 3.38233e-05, 3.52696e-05, 3.6585e-05, 3.77797e-05, 3.88667e-05, 3.98488e-05, 4.07414e-05, 
			1.53155e-05, 1.87612e-05, 2.18882e-05, 2.4741e-05, 2.73567e-05, 2.97589e-05, 3.1964e-05, 3.39877e-05, 3.58423e-05, 3.75396e-05, 3.90924e-05, 4.05057e-05, 4.17919e-05, 4.29656e-05, 4.40316e-05, 4.49958e-05, 
			1.83959e-05, 2.17897e-05, 2.49363e-05, 2.7847e-05, 3.0537e-05, 3.30203e-05, 3.53092e-05, 3.74177e-05, 3.93528e-05, 4.11265e-05, 4.27522e-05, 4.42336e-05, 4.55885e-05, 4.68192e-05, 4.79426e-05, 4.8963e-05, 
			2.15396e-05, 2.49238e-05, 2.80942e-05, 3.10494e-05, 3.37945e-05, 3.6338e-05, 3.86889e-05, 4.08611e-05, 4.28555e-05, 4.46865e-05, 4.63679e-05, 4.79064e-05, 4.93076e-05, 5.05895e-05, 5.17524e-05, 5.28141e-05, 
			2.47533e-05, 2.81296e-05, 3.13173e-05, 3.43036e-05, 3.709e-05, 3.96765e-05, 4.20724e-05, 4.42877e-05, 4.63255e-05, 4.82028e-05, 4.99206e-05, 5.1499e-05, 5.29405e-05, 5.42528e-05, 5.5453e-05, 5.65456e-05
		)
}

CapTable	"metal2_C_TOP_GP_33MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			8.82332e-06, 1.12334e-05, 1.33427e-05, 1.52372e-05, 1.69597e-05, 1.85365e-05, 1.9982e-05, 2.13079e-05, 2.25238e-05, 2.36362e-05, 2.46512e-05, 2.55775e-05, 2.64217e-05, 2.71869e-05, 2.78843e-05, 2.85135e-05, 
			1.09849e-05, 1.33113e-05, 1.54401e-05, 1.74001e-05, 1.92102e-05, 2.08822e-05, 2.24266e-05, 2.38505e-05, 2.51602e-05, 2.63619e-05, 2.74602e-05, 2.84671e-05, 2.93862e-05, 3.02195e-05, 3.0977e-05, 3.16667e-05, 
			1.31514e-05, 1.54503e-05, 1.76023e-05, 1.96102e-05, 2.14806e-05, 2.32202e-05, 2.48338e-05, 2.63234e-05, 2.76978e-05, 2.89631e-05, 3.01211e-05, 3.11844e-05, 3.21518e-05, 3.30364e-05, 3.38382e-05, 3.45673e-05, 
			1.53427e-05, 1.76442e-05, 1.98185e-05, 2.18659e-05, 2.3785e-05, 2.55757e-05, 2.72399e-05, 2.87798e-05, 3.02056e-05, 3.15191e-05, 3.27221e-05, 3.3824e-05, 3.48337e-05, 3.5752e-05, 3.65925e-05, 3.73525e-05, 
			1.75837e-05, 1.98903e-05, 2.20905e-05, 2.4173e-05, 2.61276e-05, 2.79574e-05, 2.96629e-05, 3.12427e-05, 3.27074e-05, 3.40534e-05, 3.52934e-05, 3.64271e-05, 3.74645e-05, 3.8415e-05, 3.92778e-05, 4.00635e-05
		)
}

CapTable	"metal2_C_LATERAL_33MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000251284, 0.000144351, 0.0001039, 8.14834e-05, 6.67548e-05, 5.61044e-05, 4.79289e-05, 4.13998e-05, 3.60406e-05, 3.1555e-05, 2.77462e-05, 2.4478e-05, 2.16504e-05, 1.91881e-05, 1.7034e-05, 1.51413e-05, 
			0.000265707, 0.000155308, 0.000112657, 8.87487e-05, 7.29074e-05, 6.13971e-05, 5.2534e-05, 4.54413e-05, 3.96108e-05, 3.47254e-05, 3.05735e-05, 2.70073e-05, 2.39192e-05, 2.12278e-05, 1.88706e-05, 1.67984e-05, 
			0.00027371, 0.000162075, 0.000118316, 9.35409e-05, 7.70421e-05, 6.49946e-05, 5.56909e-05, 4.82299e-05, 4.20874e-05, 3.69337e-05, 3.25487e-05, 2.87788e-05, 2.55112e-05, 2.26617e-05, 2.01629e-05, 1.79636e-05, 
			0.000278899, 0.000166725, 0.00012233, 9.70089e-05, 8.00545e-05, 6.76385e-05, 5.80257e-05, 5.03017e-05, 4.3933e-05, 3.85835e-05, 3.40265e-05, 3.01052e-05, 2.6704e-05, 2.37342e-05, 2.11291e-05, 1.8834e-05, 
			0.00028207, 0.000169984, 0.000125241, 9.95725e-05, 8.23145e-05, 6.96452e-05, 5.98128e-05, 5.18986e-05, 4.53648e-05, 3.98704e-05, 3.51874e-05, 3.11533e-05, 2.76507e-05, 2.4591e-05, 2.19043e-05, 1.95356e-05
		)
}

CapTable	"metal2_C_BOTTOM_GP_34MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.30285e-05, 1.67441e-05, 1.99309e-05, 2.27455e-05, 2.52769e-05, 2.75747e-05, 2.96733e-05, 3.15963e-05, 3.33631e-05, 3.49847e-05, 3.64747e-05, 3.78437e-05, 3.91019e-05, 4.02561e-05, 4.13142e-05, 4.22868e-05, 
			1.60496e-05, 1.95804e-05, 2.27518e-05, 2.56248e-05, 2.8246e-05, 3.06519e-05, 3.28644e-05, 3.49011e-05, 3.67781e-05, 3.85091e-05, 4.01035e-05, 4.15721e-05, 4.29263e-05, 4.417e-05, 4.53157e-05, 4.63663e-05, 
			1.90953e-05, 2.25314e-05, 2.56918e-05, 2.85985e-05, 3.1277e-05, 3.37519e-05, 3.60387e-05, 3.81516e-05, 4.01061e-05, 4.19134e-05, 4.35816e-05, 4.51211e-05, 4.65438e-05, 4.78523e-05, 4.90606e-05, 5.01709e-05, 
			2.21674e-05, 2.55638e-05, 2.87236e-05, 3.16572e-05, 3.43798e-05, 3.69061e-05, 3.925e-05, 4.14239e-05, 4.34382e-05, 4.53067e-05, 4.70324e-05, 4.86309e-05, 5.01057e-05, 5.14705e-05, 5.27263e-05, 5.38893e-05, 
			2.52823e-05, 2.86397e-05, 3.17981e-05, 3.47479e-05, 3.74989e-05, 4.00601e-05, 4.24453e-05, 4.46613e-05, 4.67187e-05, 4.863e-05, 5.03989e-05, 5.20402e-05, 5.35549e-05, 5.49611e-05, 5.62593e-05, 5.74549e-05
		)
}

CapTable	"metal2_C_TOP_GP_34MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			6.99818e-06, 8.8164e-06, 1.03997e-05, 1.18144e-05, 1.30956e-05, 1.42655e-05, 1.53385e-05, 1.63248e-05, 1.72311e-05, 1.80669e-05, 1.88363e-05, 1.95444e-05, 2.01952e-05, 2.07941e-05, 2.13457e-05, 2.18507e-05, 
			8.63172e-06, 1.03658e-05, 1.19452e-05, 1.3394e-05, 1.47302e-05, 1.59618e-05, 1.71016e-05, 1.81559e-05, 1.9131e-05, 2.00317e-05, 2.08645e-05, 2.16336e-05, 2.2341e-05, 2.29956e-05, 2.35974e-05, 2.41537e-05, 
			1.02417e-05, 1.19369e-05, 1.35183e-05, 1.4991e-05, 1.63619e-05, 1.76365e-05, 1.88229e-05, 1.99253e-05, 2.09482e-05, 2.18956e-05, 2.27739e-05, 2.35875e-05, 2.43374e-05, 2.50329e-05, 2.56728e-05, 2.62653e-05, 
			1.18463e-05, 1.35283e-05, 1.51129e-05, 1.66044e-05, 1.80028e-05, 1.93107e-05, 2.05313e-05, 2.167e-05, 2.27297e-05, 2.37124e-05, 2.46273e-05, 2.54735e-05, 2.62596e-05, 2.69845e-05, 2.76569e-05, 2.82743e-05, 
			1.34732e-05, 1.51482e-05, 1.67419e-05, 1.82515e-05, 1.96736e-05, 2.10089e-05, 2.22574e-05, 2.34255e-05, 2.45156e-05, 2.55281e-05, 2.64724e-05, 2.73467e-05, 2.81596e-05, 2.89093e-05, 2.9603e-05, 3.02473e-05
		)
}

CapTable	"metal2_C_LATERAL_34MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000252166, 0.000145538, 0.000105376, 8.32259e-05, 6.87391e-05, 5.83017e-05, 5.03084e-05, 4.39299e-05, 3.86896e-05, 3.42926e-05, 3.05443e-05, 2.73099e-05, 2.44923e-05, 2.202e-05, 1.98369e-05, 1.78999e-05, 
			0.000266977, 0.000156913, 0.000114577, 9.09596e-05, 7.53787e-05, 6.40951e-05, 5.54236e-05, 4.84863e-05, 4.27764e-05, 3.79777e-05, 3.38812e-05, 3.03418e-05, 2.72551e-05, 2.45427e-05, 2.21447e-05, 2.00146e-05, 
			0.000275407, 0.000164125, 0.000120697, 9.62243e-05, 7.99928e-05, 6.8175e-05, 5.90623e-05, 5.1753e-05, 4.57243e-05, 4.06489e-05, 3.63098e-05, 3.25555e-05, 2.92767e-05, 2.63924e-05, 2.3839e-05, 2.1568e-05, 
			0.000281049, 0.000169238, 0.000125181, 0.000100164, 8.34758e-05, 7.12847e-05, 6.18549e-05, 5.4273e-05, 4.8007e-05, 4.2723e-05, 3.81986e-05, 3.42787e-05, 3.08513e-05, 2.78323e-05, 2.51576e-05, 2.27758e-05, 
			0.000284684, 0.00017297, 0.000128564, 0.000103197, 8.61976e-05, 7.37436e-05, 6.4083e-05, 5.62983e-05, 4.98538e-05, 4.4411e-05, 3.97448e-05, 3.56973e-05, 3.21548e-05, 2.90308e-05, 2.62599e-05, 2.37909e-05
		)
}

CapTable	"metal2_C_BOTTOM_GP_35MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.77513e-05, 2.24721e-05, 2.64371e-05, 2.98832e-05, 3.29421e-05, 3.56961e-05, 3.8197e-05, 4.04823e-05, 4.258e-05, 4.45109e-05, 4.62924e-05, 4.7939e-05, 4.94626e-05, 5.08741e-05, 5.21824e-05, 5.33962e-05, 
			2.1378e-05, 2.57422e-05, 2.95926e-05, 3.30326e-05, 3.61416e-05, 3.89739e-05, 4.15671e-05, 4.39514e-05, 4.61502e-05, 4.81824e-05, 5.00633e-05, 5.18064e-05, 5.34237e-05, 5.49253e-05, 5.63205e-05, 5.76175e-05, 
			2.48976e-05, 2.90443e-05, 3.28022e-05, 3.62185e-05, 3.93416e-05, 4.22092e-05, 4.48518e-05, 4.72922e-05, 4.95521e-05, 5.1647e-05, 5.35914e-05, 5.53978e-05, 5.70776e-05, 5.86403e-05, 6.00952e-05, 6.14504e-05, 
			2.83479e-05, 3.23669e-05, 3.6057e-05, 3.94502e-05, 4.25769e-05, 4.5465e-05, 4.81398e-05, 5.06207e-05, 5.29246e-05, 5.50664e-05, 5.7059e-05, 5.89146e-05, 6.06433e-05, 6.22546e-05, 6.37576e-05, 6.51602e-05, 
			3.17299e-05, 3.56303e-05, 3.92559e-05, 4.26161e-05, 4.573e-05, 4.86202e-05, 5.13061e-05, 5.38049e-05, 5.61313e-05, 5.82989e-05, 6.03198e-05, 6.22047e-05, 6.39633e-05, 6.56065e-05, 6.71411e-05, 6.85755e-05
		)
}

CapTable	"metal2_C_LATERAL_35MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000253982, 0.000147915, 0.00010828, 8.66237e-05, 7.25934e-05, 6.25739e-05, 5.49597e-05, 4.89216e-05, 4.39839e-05, 3.98532e-05, 3.63361e-05, 3.32999e-05, 3.06501e-05, 2.83164e-05, 2.6246e-05, 2.43976e-05, 
			0.00026956, 0.000160091, 0.000118322, 9.52365e-05, 8.0149e-05, 6.93189e-05, 6.10598e-05, 5.44944e-05, 4.91165e-05, 4.46111e-05, 4.07713e-05, 3.74537e-05, 3.45555e-05, 3.20011e-05, 2.97326e-05, 2.77057e-05, 
			0.0002788, 0.000168143, 0.000125309, 0.000101396, 8.5685e-05, 7.43471e-05, 6.56722e-05, 5.87588e-05, 5.30848e-05, 4.83237e-05, 4.42602e-05, 4.07448e-05, 3.76702e-05, 3.49572e-05, 3.25454e-05, 3.03876e-05, 
			0.000285283, 0.000174114, 0.000130671, 0.000106235, 9.00885e-05, 7.83972e-05, 6.94245e-05, 6.22564e-05, 5.63615e-05, 5.14067e-05, 4.71712e-05, 4.35021e-05, 4.02891e-05, 3.74506e-05, 3.49238e-05, 3.26605e-05, 
			0.000289821, 0.000178764, 0.000134992, 0.000110225, 9.37877e-05, 8.18527e-05, 7.26673e-05, 6.53134e-05, 5.92553e-05, 5.41561e-05, 4.97916e-05, 4.60062e-05, 4.26873e-05, 3.97515e-05, 3.71356e-05, 3.47894e-05
		)
}

CapTable	"metal2_C_BOTTOM_GP_21MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.25154e-05, 1.70169e-05, 2.11204e-05, 2.47449e-05, 2.7852e-05, 3.0452e-05, 3.2594e-05, 3.4328e-05, 3.57159e-05, 3.68201e-05, 3.76932e-05, 3.8382e-05, 3.89299e-05, 3.93373e-05, 3.96658e-05, 3.99223e-05, 
			1.71221e-05, 2.1784e-05, 2.6075e-05, 2.98768e-05, 3.31413e-05, 3.58814e-05, 3.81344e-05, 3.99633e-05, 4.14303e-05, 4.25997e-05, 4.35402e-05, 4.42595e-05, 4.48221e-05, 4.52695e-05, 4.56185e-05, 4.58916e-05, 
			2.20052e-05, 2.67676e-05, 3.11603e-05, 3.50569e-05, 3.84033e-05, 4.12096e-05, 4.35191e-05, 4.5395e-05, 4.69036e-05, 4.81141e-05, 4.90511e-05, 4.97997e-05, 5.03878e-05, 5.08486e-05, 5.12085e-05, 5.14896e-05, 
			2.70504e-05, 3.18864e-05, 3.63421e-05, 4.02882e-05, 4.36762e-05, 4.65156e-05, 4.88585e-05, 5.07744e-05, 5.2294e-05, 5.3501e-05, 5.44665e-05, 5.52259e-05, 5.5823e-05, 5.62903e-05, 5.66558e-05, 5.69411e-05, 
			3.22058e-05, 3.708e-05, 4.15688e-05, 4.55424e-05, 4.89535e-05, 5.18152e-05, 5.4181e-05, 5.60813e-05, 5.76198e-05, 5.88461e-05, 5.98172e-05, 6.05831e-05, 6.11851e-05, 6.1656e-05, 6.20234e-05, 6.23104e-05
		)
}

CapTable	"metal2_C_TOP_GP_21MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.55041e-05, 3.46333e-05, 4.25818e-05, 4.93296e-05, 5.49428e-05, 5.95427e-05, 6.32634e-05, 6.62449e-05, 6.86149e-05, 7.04857e-05, 7.19585e-05, 7.31109e-05, 7.40043e-05, 7.47232e-05, 7.52742e-05, 7.57036e-05, 
			3.60005e-05, 4.54653e-05, 5.37213e-05, 6.07327e-05, 6.65777e-05, 7.13737e-05, 7.52586e-05, 7.83766e-05, 8.08583e-05, 8.28199e-05, 8.43484e-05, 8.55728e-05, 8.65323e-05, 8.72756e-05, 8.78559e-05, 8.83067e-05, 
			4.70586e-05, 5.66635e-05, 6.50459e-05, 7.21737e-05, 7.81181e-05, 8.30004e-05, 8.69606e-05, 9.01414e-05, 9.26721e-05, 9.46685e-05, 9.62654e-05, 9.75085e-05, 9.84823e-05, 9.9244e-05, 9.98366e-05, 0.000100301, 
			5.83818e-05, 6.807e-05, 7.65119e-05, 8.36939e-05, 8.96889e-05, 9.46147e-05, 9.86092e-05, 0.000101805, 0.000104373, 0.000106414, 0.000108015, 0.000109272, 0.000110256, 0.000111028, 0.000111631, 0.000112102, 
			6.98447e-05, 7.95412e-05, 8.80017e-05, 9.52053e-05, 0.00010122, 0.00010616, 0.000110164, 0.000113406, 0.000115981, 0.000118022, 0.000119632, 0.000120895, 0.000121887, 0.000122664, 0.000123272, 0.000123747
		)
}

CapTable	"metal2_C_LATERAL_21MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000238843, 0.0001279, 8.44916e-05, 6.01039e-05, 4.42657e-05, 3.32144e-05, 2.51929e-05, 1.92405e-05, 1.47634e-05, 1.13652e-05, 8.7704e-06, 6.78126e-06, 5.25172e-06, 4.07182e-06, 3.16077e-06, 2.45603e-06, 
			0.000247666, 0.00013372, 8.85755e-05, 6.3121e-05, 4.65408e-05, 3.49526e-05, 2.65373e-05, 2.02842e-05, 1.55743e-05, 1.1996e-05, 9.26232e-06, 7.16226e-06, 5.54669e-06, 4.30042e-06, 3.3374e-06, 2.59258e-06, 
			0.000250708, 0.000136132, 9.03871e-05, 6.44832e-05, 4.75988e-05, 3.57775e-05, 2.71809e-05, 2.07886e-05, 1.59703e-05, 1.23065e-05, 9.50296e-06, 7.35052e-06, 5.69299e-06, 4.41386e-06, 3.42558e-06, 2.65999e-06, 
			0.000251719, 0.000137159, 9.12303e-05, 6.51533e-05, 4.81211e-05, 3.61916e-05, 2.75106e-05, 2.10519e-05, 1.61783e-05, 1.24695e-05, 9.63175e-06, 7.45174e-06, 5.77311e-06, 4.47638e-06, 3.47353e-06, 2.6968e-06, 
			0.000251425, 0.000137441, 9.1547e-05, 6.54303e-05, 4.8351e-05, 3.63848e-05, 2.76685e-05, 2.11756e-05, 1.6276e-05, 1.25466e-05, 9.69169e-06, 7.49885e-06, 5.80807e-06, 4.50242e-06, 3.49238e-06, 2.70984e-06
		)
}

CapTable	"metal2_C_BOTTOM_GP_22MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.42204e-05, 1.87399e-05, 2.28182e-05, 2.65161e-05, 2.98603e-05, 3.28578e-05, 3.55287e-05, 3.78889e-05, 3.99597e-05, 4.17684e-05, 4.33358e-05, 4.46911e-05, 4.58553e-05, 4.68551e-05, 4.77098e-05, 4.84381e-05, 
			1.84913e-05, 2.3072e-05, 2.7324e-05, 3.12288e-05, 3.4778e-05, 3.7974e-05, 4.08254e-05, 4.33471e-05, 4.55639e-05, 4.74976e-05, 4.91776e-05, 5.06272e-05, 5.18764e-05, 5.2947e-05, 5.38631e-05, 5.46435e-05, 
			2.3025e-05, 2.76909e-05, 3.2064e-05, 3.61016e-05, 3.97788e-05, 4.30936e-05, 4.60534e-05, 4.86713e-05, 5.09735e-05, 5.29816e-05, 5.47268e-05, 5.62354e-05, 5.75323e-05, 5.8646e-05, 5.9596e-05, 6.04088e-05, 
			2.77669e-05, 3.25174e-05, 3.69816e-05, 4.11088e-05, 4.48707e-05, 4.8263e-05, 5.12916e-05, 5.39717e-05, 5.63266e-05, 5.83839e-05, 6.01689e-05, 6.17134e-05, 6.30416e-05, 6.4177e-05, 6.5173e-05, 6.59838e-05, 
			3.26814e-05, 3.74866e-05, 4.2013e-05, 4.62015e-05, 5.00196e-05, 5.34618e-05, 5.65332e-05, 5.92527e-05, 6.1643e-05, 6.37299e-05, 6.55422e-05, 6.71058e-05, 6.84549e-05, 6.96073e-05, 7.05958e-05, 7.14395e-05
		)
}

CapTable	"metal2_C_TOP_GP_22MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.18343e-05, 1.55097e-05, 1.88139e-05, 2.18156e-05, 2.45343e-05, 2.69864e-05, 2.91768e-05, 3.11197e-05, 3.28307e-05, 3.43253e-05, 3.56258e-05, 3.67504e-05, 3.77208e-05, 3.8553e-05, 3.92653e-05, 3.98739e-05, 
			1.53575e-05, 1.90668e-05, 2.25098e-05, 2.56808e-05, 2.85784e-05, 3.11973e-05, 3.35442e-05, 3.56288e-05, 3.74648e-05, 3.90724e-05, 4.04716e-05, 4.16838e-05, 4.27285e-05, 4.36261e-05, 4.43943e-05, 4.50502e-05, 
			1.90558e-05, 2.28296e-05, 2.63788e-05, 2.96674e-05, 3.26781e-05, 3.54046e-05, 3.78487e-05, 4.00199e-05, 4.19341e-05, 4.36114e-05, 4.50718e-05, 4.6336e-05, 4.7426e-05, 4.83623e-05, 4.9166e-05, 4.98494e-05, 
			2.2904e-05, 2.67567e-05, 3.03866e-05, 3.37592e-05, 3.68497e-05, 3.96484e-05, 4.21572e-05, 4.43875e-05, 4.63552e-05, 4.80771e-05, 4.95769e-05, 5.08756e-05, 5.19957e-05, 5.29621e-05, 5.37642e-05, 5.44896e-05, 
			2.68914e-05, 3.0796e-05, 3.44885e-05, 3.79205e-05, 4.10656e-05, 4.39135e-05, 4.64679e-05, 4.87382e-05, 5.07389e-05, 5.24909e-05, 5.40158e-05, 5.53393e-05, 5.64776e-05, 5.746e-05, 5.82986e-05, 5.90144e-05
		)
}

CapTable	"metal2_C_LATERAL_22MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000247409, 0.000139067, 9.73606e-05, 7.38757e-05, 5.82882e-05, 4.69913e-05, 3.83722e-05, 3.15844e-05, 2.61292e-05, 2.1685e-05, 1.80326e-05, 1.50103e-05, 1.24994e-05, 1.04058e-05, 8.65666e-06, 7.19277e-06, 
			0.00026002, 0.000148153, 0.000104219, 7.92471e-05, 6.25722e-05, 5.04563e-05, 4.12007e-05, 3.39074e-05, 2.80434e-05, 2.32663e-05, 1.93376e-05, 1.60878e-05, 1.33866e-05, 1.11348e-05, 9.25312e-06, 7.67825e-06, 
			0.000266131, 0.000153046, 0.000108047, 8.22683e-05, 6.5007e-05, 5.24294e-05, 4.28098e-05, 3.52256e-05, 2.91245e-05, 2.41527e-05, 2.00631e-05, 1.66792e-05, 1.3867e-05, 1.15221e-05, 9.56241e-06, 7.92248e-06, 
			0.00026944, 0.000155884, 0.000110334, 8.40989e-05, 6.64734e-05, 5.3617e-05, 4.37758e-05, 3.60104e-05, 2.9762e-05, 2.46683e-05, 2.04784e-05, 1.70103e-05, 1.41274e-05, 1.17231e-05, 9.71615e-06, 8.03288e-06, 
			0.00027081, 0.000157445, 0.000111649, 8.51663e-05, 6.73336e-05, 5.4314e-05, 4.43371e-05, 3.64598e-05, 3.01199e-05, 2.49507e-05, 2.06979e-05, 1.71776e-05, 1.42513e-05, 1.18109e-05, 9.77176e-06, 8.06526e-06
		)
}

CapTable	"metal2_C_BOTTOM_GP_23MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.56635e-05, 2.03941e-05, 2.45995e-05, 2.8384e-05, 3.18011e-05, 3.48877e-05, 3.76666e-05, 4.01613e-05, 4.23934e-05, 4.43857e-05, 4.61573e-05, 4.77293e-05, 4.91238e-05, 5.03544e-05, 5.14434e-05, 5.24011e-05, 
			2.00127e-05, 2.47211e-05, 2.90461e-05, 3.30057e-05, 3.66172e-05, 3.9895e-05, 4.28591e-05, 4.55281e-05, 4.79224e-05, 5.00646e-05, 5.19722e-05, 5.36701e-05, 5.51745e-05, 5.65091e-05, 5.76859e-05, 5.87269e-05, 
			2.45568e-05, 2.92889e-05, 3.37031e-05, 3.77756e-05, 4.1507e-05, 4.49062e-05, 4.79886e-05, 5.07688e-05, 5.32661e-05, 5.55043e-05, 5.75003e-05, 5.92792e-05, 6.08569e-05, 6.22567e-05, 6.34937e-05, 6.45889e-05, 
			2.92546e-05, 3.40387e-05, 3.85176e-05, 4.26688e-05, 4.64856e-05, 4.99687e-05, 5.31331e-05, 5.59905e-05, 5.85629e-05, 6.08658e-05, 6.29264e-05, 6.47599e-05, 6.63911e-05, 6.7837e-05, 6.91181e-05, 7.02518e-05, 
			3.41018e-05, 3.89147e-05, 4.34446e-05, 4.76548e-05, 5.15316e-05, 5.50742e-05, 5.82968e-05, 6.12083e-05, 6.3834e-05, 6.61855e-05, 6.82904e-05, 7.01642e-05, 7.18345e-05, 7.33157e-05, 7.46277e-05, 7.57872e-05
		)
}

CapTable	"metal2_C_TOP_GP_23MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			8.00873e-06, 1.03759e-05, 1.2472e-05, 1.43657e-05, 1.6087e-05, 1.76512e-05, 1.90702e-05, 2.03526e-05, 2.15069e-05, 2.25407e-05, 2.34654e-05, 2.42896e-05, 2.50202e-05, 2.56699e-05, 2.62423e-05, 2.67501e-05, 
			1.01433e-05, 1.24682e-05, 1.46126e-05, 1.65877e-05, 1.84051e-05, 2.00712e-05, 2.15895e-05, 2.29665e-05, 2.42096e-05, 2.53259e-05, 2.63274e-05, 2.72198e-05, 2.80159e-05, 2.87202e-05, 2.93471e-05, 2.98999e-05, 
			1.23297e-05, 1.46548e-05, 1.68372e-05, 1.88721e-05, 2.07569e-05, 2.24908e-05, 2.40746e-05, 2.55154e-05, 2.68191e-05, 2.79911e-05, 2.9044e-05, 2.99832e-05, 3.0822e-05, 3.15663e-05, 3.22279e-05, 3.28121e-05, 
			1.45714e-05, 1.69163e-05, 1.91369e-05, 2.12194e-05, 2.31533e-05, 2.49371e-05, 2.65694e-05, 2.80572e-05, 2.94027e-05, 3.06172e-05, 3.17051e-05, 3.26807e-05, 3.35497e-05, 3.43234e-05, 3.50092e-05, 3.56159e-05, 
			1.68726e-05, 1.92356e-05, 2.14882e-05, 2.36052e-05, 2.55781e-05, 2.74002e-05, 2.90688e-05, 3.05913e-05, 3.19686e-05, 3.3213e-05, 3.43292e-05, 3.53301e-05, 3.62215e-05, 3.70141e-05, 3.77183e-05, 3.83436e-05
		)
}

CapTable	"metal2_C_LATERAL_23MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000249278, 0.000141641, 0.000100569, 7.76286e-05, 6.24815e-05, 5.15159e-05, 4.31218e-05, 3.64606e-05, 3.10451e-05, 2.65675e-05, 2.28199e-05, 1.96549e-05, 1.6964e-05, 1.46646e-05, 1.26915e-05, 1.09932e-05, 
			0.0002628, 0.000151676, 0.000108397, 8.39719e-05, 6.77258e-05, 5.59182e-05, 4.68567e-05, 3.96532e-05, 3.37888e-05, 2.89336e-05, 2.48659e-05, 2.14271e-05, 1.8501e-05, 1.59981e-05, 1.38488e-05, 1.19968e-05, 
			0.000269873, 0.00015753, 0.00011317, 8.791e-05, 7.10398e-05, 5.8728e-05, 4.9258e-05, 4.17169e-05, 3.55692e-05, 3.04737e-05, 2.62004e-05, 2.25847e-05, 1.95055e-05, 1.68691e-05, 1.4604e-05, 1.26506e-05, 
			0.000274151, 0.000161306, 0.000116355, 9.05919e-05, 7.33081e-05, 6.06671e-05, 5.09237e-05, 4.31535e-05, 3.68111e-05, 3.15498e-05, 2.71328e-05, 2.33934e-05, 2.02055e-05, 1.74755e-05, 1.51275e-05, 1.31025e-05, 
			0.000276452, 0.00016375, 0.000118498, 9.2433e-05, 7.48862e-05, 6.20287e-05, 5.20995e-05, 4.41701e-05, 3.76912e-05, 3.23125e-05, 2.77935e-05, 2.39654e-05, 2.07002e-05, 1.79025e-05, 1.54957e-05, 1.3419e-05
		)
}

CapTable	"metal2_C_BOTTOM_GP_24MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.65117e-05, 2.14008e-05, 2.57068e-05, 2.95584e-05, 3.30233e-05, 3.61462e-05, 3.89588e-05, 4.14931e-05, 4.37698e-05, 4.58142e-05, 4.76489e-05, 4.92924e-05, 5.07636e-05, 5.20803e-05, 5.32599e-05, 5.43138e-05, 
			2.0932e-05, 2.57449e-05, 3.01351e-05, 3.41319e-05, 3.7769e-05, 4.10676e-05, 4.40552e-05, 4.67573e-05, 4.91933e-05, 5.13876e-05, 5.33613e-05, 5.5136e-05, 5.67274e-05, 5.81571e-05, 5.94373e-05, 6.05874e-05, 
			2.55043e-05, 3.03011e-05, 3.47467e-05, 3.88335e-05, 4.25731e-05, 4.59825e-05, 4.90803e-05, 5.18896e-05, 5.44309e-05, 5.67239e-05, 5.87905e-05, 6.06531e-05, 6.23275e-05, 6.38343e-05, 6.51854e-05, 6.64021e-05, 
			3.01965e-05, 3.50092e-05, 3.94952e-05, 4.36424e-05, 4.74534e-05, 5.09377e-05, 5.41135e-05, 5.69988e-05, 5.96151e-05, 6.19812e-05, 6.41193e-05, 6.60445e-05, 6.77832e-05, 6.93456e-05, 7.07537e-05, 7.20161e-05, 
			3.50056e-05, 3.98231e-05, 4.43388e-05, 4.85288e-05, 5.2391e-05, 5.59307e-05, 5.91625e-05, 6.21046e-05, 6.47768e-05, 6.71965e-05, 6.93866e-05, 7.13635e-05, 7.31484e-05, 7.4758e-05, 7.6204e-05, 7.75095e-05
		)
}

CapTable	"metal2_C_TOP_GP_24MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			6.22081e-06, 8.0104e-06, 9.58343e-06, 1.09972e-05, 1.22779e-05, 1.34409e-05, 1.44985e-05, 1.54548e-05, 1.63216e-05, 1.71039e-05, 1.78083e-05, 1.84426e-05, 1.90131e-05, 1.95256e-05, 1.99844e-05, 2.03972e-05, 
			7.8044e-06, 9.54178e-06, 1.11324e-05, 1.25941e-05, 1.39359e-05, 1.51672e-05, 1.62925e-05, 1.73166e-05, 1.82477e-05, 1.90918e-05, 1.98551e-05, 2.05434e-05, 2.11653e-05, 2.17239e-05, 2.2228e-05, 2.26793e-05, 
			9.40506e-06, 1.11226e-05, 1.27295e-05, 1.42251e-05, 1.56074e-05, 1.68835e-05, 1.80544e-05, 1.91242e-05, 2.00995e-05, 2.09866e-05, 2.17911e-05, 2.25178e-05, 2.31757e-05, 2.37679e-05, 2.43029e-05, 2.47827e-05, 
			1.10254e-05, 1.27433e-05, 1.43664e-05, 1.58876e-05, 1.73022e-05, 1.86114e-05, 1.98163e-05, 2.09212e-05, 2.19296e-05, 2.28494e-05, 2.36834e-05, 2.44416e-05, 2.51252e-05, 2.57445e-05, 2.63021e-05, 2.68072e-05, 
			1.26759e-05, 1.43936e-05, 1.60314e-05, 1.75735e-05, 1.90121e-05, 2.03468e-05, 2.1579e-05, 2.27111e-05, 2.37455e-05, 2.46906e-05, 2.55493e-05, 2.63296e-05, 2.70351e-05, 2.76731e-05, 2.82527e-05, 2.87725e-05
		)
}

CapTable	"metal2_C_LATERAL_24MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000250032, 0.000142681, 0.000101884, 7.9199e-05, 6.4282e-05, 5.35164e-05, 4.52892e-05, 3.87605e-05, 3.34435e-05, 2.90319e-05, 2.53201e-05, 2.21647e-05, 1.94598e-05, 1.71256e-05, 1.51004e-05, 1.33357e-05, 
			0.000263913, 0.000153108, 0.000110134, 8.59897e-05, 6.99932e-05, 5.83989e-05, 4.95117e-05, 4.24433e-05, 3.66754e-05, 3.18809e-05, 2.78405e-05, 2.43993e-05, 2.14448e-05, 1.88909e-05, 1.6672e-05, 1.47353e-05, 
			0.000271385, 0.000159387, 0.000115351, 9.0384e-05, 7.37709e-05, 6.16745e-05, 5.23763e-05, 4.49639e-05, 3.89031e-05, 3.38562e-05, 2.95959e-05, 2.59619e-05, 2.28369e-05, 2.0132e-05, 1.77787e-05, 1.5722e-05, 
			0.000276095, 0.00016361, 0.000118991, 9.35264e-05, 7.64977e-05, 6.40666e-05, 5.44862e-05, 4.68325e-05, 4.0563e-05, 3.53335e-05, 3.09124e-05, 2.7136e-05, 2.38841e-05, 2.10661e-05, 1.86111e-05, 1.64635e-05, 
			0.000278846, 0.000166509, 0.000121592, 9.58203e-05, 7.85211e-05, 6.58621e-05, 5.6082e-05, 4.8253e-05, 4.18299e-05, 3.64648e-05, 3.19229e-05, 2.80392e-05, 2.4691e-05, 2.1786e-05, 1.92533e-05, 1.70352e-05
		)
}

CapTable	"metal2_C_BOTTOM_GP_25MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.09013e-05, 2.66836e-05, 3.16837e-05, 3.60879e-05, 4.00004e-05, 4.34901e-05, 4.66088e-05, 4.93991e-05, 5.18988e-05, 5.414e-05, 5.61525e-05, 5.79622e-05, 5.95929e-05, 6.10644e-05, 6.23959e-05, 6.36031e-05, 
			2.61429e-05, 3.17476e-05, 3.67796e-05, 4.13011e-05, 4.53678e-05, 4.90247e-05, 5.23127e-05, 5.52683e-05, 5.79274e-05, 6.03216e-05, 6.24794e-05, 6.44268e-05, 6.61872e-05, 6.77818e-05, 6.92288e-05, 7.05447e-05, 
			3.14223e-05, 3.69224e-05, 4.19502e-05, 4.65165e-05, 5.06524e-05, 5.43915e-05, 5.77672e-05, 6.08156e-05, 6.35678e-05, 6.60534e-05, 6.83019e-05, 7.03369e-05, 7.21828e-05, 7.38592e-05, 7.53852e-05, 7.67769e-05, 
			3.67185e-05, 4.21569e-05, 4.71612e-05, 5.1736e-05, 5.59001e-05, 5.96797e-05, 6.31044e-05, 6.62069e-05, 6.90175e-05, 7.15632e-05, 7.38725e-05, 7.59696e-05, 7.78766e-05, 7.96131e-05, 8.11988e-05, 8.26482e-05, 
			4.20703e-05, 4.74457e-05, 5.24278e-05, 5.70041e-05, 6.11848e-05, 6.49925e-05, 6.84537e-05, 7.15991e-05, 7.44561e-05, 7.70511e-05, 7.94109e-05, 8.15594e-05, 8.3518e-05, 8.53058e-05, 8.69421e-05, 8.84409e-05
		)
}

CapTable	"metal2_C_LATERAL_25MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.00025153, 0.000144821, 0.000104626, 8.25128e-05, 6.81339e-05, 5.78686e-05, 5.01003e-05, 4.39866e-05, 3.90384e-05, 3.49497e-05, 3.15157e-05, 2.85944e-05, 2.6082e-05, 2.3902e-05, 2.1995e-05, 2.03153e-05, 
			0.000265996, 0.000155856, 0.000113523, 8.99898e-05, 7.45706e-05, 6.35132e-05, 5.51181e-05, 4.84932e-05, 4.31191e-05, 3.86681e-05, 3.49219e-05, 3.17279e-05, 2.89754e-05, 2.65814e-05, 2.44831e-05, 2.26313e-05, 
			0.00027414, 0.000162838, 0.000119479, 9.51621e-05, 7.91601e-05, 6.76311e-05, 5.8851e-05, 5.1904e-05, 4.62548e-05, 4.15653e-05, 3.76095e-05, 3.42292e-05, 3.13093e-05, 2.87647e-05, 2.65295e-05, 2.45526e-05, 
			0.000279594, 0.000167844, 0.000123939, 9.91563e-05, 8.27692e-05, 7.09309e-05, 6.18897e-05, 5.47184e-05, 4.88733e-05, 4.40103e-05, 3.98992e-05, 3.63783e-05, 3.3331e-05, 3.06694e-05, 2.83267e-05, 2.62504e-05, 
			0.000283137, 0.000171557, 0.000127379, 0.000102311, 8.56714e-05, 7.36191e-05, 6.43881e-05, 5.7048e-05, 5.10525e-05, 4.6054e-05, 4.182e-05, 3.81868e-05, 3.50364e-05, 3.22795e-05, 2.98483e-05, 2.76902e-05
		)
}

CapTable	"metal2_C_BOTTOM_GPMIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.42034e-05, 3.36054e-05, 4.18336e-05, 4.86312e-05, 5.39968e-05, 5.80879e-05, 6.11241e-05, 6.33373e-05, 6.49248e-05, 6.60553e-05, 6.6854e-05, 6.74145e-05, 6.78068e-05, 6.80802e-05, 6.82708e-05, 6.84027e-05, 
			3.50105e-05, 4.482e-05, 5.33398e-05, 6.03423e-05, 6.58583e-05, 7.00564e-05, 7.31745e-05, 7.54437e-05, 7.70728e-05, 7.82323e-05, 7.90499e-05, 7.9624e-05, 8.00238e-05, 8.0302e-05, 8.04952e-05, 8.06282e-05, 
			4.63845e-05, 5.63293e-05, 6.49307e-05, 7.19892e-05, 7.75383e-05, 8.17595e-05, 8.48913e-05, 8.71714e-05, 8.88088e-05, 8.99728e-05, 9.07924e-05, 9.1366e-05, 9.17659e-05, 9.20429e-05, 9.22335e-05, 9.2365e-05, 
			5.79697e-05, 6.79635e-05, 7.65776e-05, 8.36436e-05, 8.91919e-05, 9.34094e-05, 9.65377e-05, 9.88137e-05, 0.000100446, 0.000101605, 0.00010242, 0.00010299, 0.000103386, 0.00010366, 0.000103849, 0.000103978, 
			6.9641e-05, 7.96227e-05, 8.82301e-05, 9.52789e-05, 0.000100815, 0.00010502, 0.000108136, 0.000110403, 0.000112029, 0.000113179, 0.000113989, 0.000114553, 0.000114946, 0.000115215, 0.000115399, 0.000115527
		)
}

CapTable	"metal2_C_TOP_GPMIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.398e-05, 3.31146e-05, 4.10289e-05, 4.7527e-05, 5.26297e-05, 5.65064e-05, 5.93809e-05, 6.14701e-05, 6.29738e-05, 6.4039e-05, 6.47937e-05, 6.53248e-05, 6.56963e-05, 6.59577e-05, 6.61415e-05, 6.6271e-05, 
			3.48166e-05, 4.43435e-05, 5.25346e-05, 5.92224e-05, 6.4465e-05, 6.84461e-05, 7.13917e-05, 7.35379e-05, 7.50754e-05, 7.61693e-05, 7.69435e-05, 7.74883e-05, 7.7871e-05, 7.81399e-05, 7.83294e-05, 7.84631e-05, 
			4.61751e-05, 5.58285e-05, 6.40973e-05, 7.08375e-05, 7.61088e-05, 8.01127e-05, 8.30739e-05, 8.52302e-05, 8.67782e-05, 8.78775e-05, 8.8656e-05, 8.92043e-05, 8.95902e-05, 8.98619e-05, 9.00539e-05, 9.01893e-05, 
			5.77225e-05, 6.74252e-05, 7.57122e-05, 8.24552e-05, 8.77339e-05, 9.173e-05, 9.46896e-05, 9.6844e-05, 9.83909e-05, 9.94916e-05, 0.00010027, 0.00010082, 0.000101207, 0.000101481, 0.000101674, 0.00010181, 
			6.93265e-05, 7.90105e-05, 8.72851e-05, 9.40153e-05, 9.92795e-05, 0.000103267, 0.000106218, 0.000108366, 0.000109909, 0.000111008, 0.000111786, 0.000112336, 0.000112724, 0.000112998, 0.000113193, 0.000113328
		)
}

CapTable	"metal2_C_LATERALMIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000231766, 0.000118614, 7.38784e-05, 4.90001e-05, 3.3348e-05, 2.2961e-05, 1.58995e-05, 1.10437e-05, 7.68583e-06, 5.35891e-06, 3.74342e-06, 2.62141e-06, 1.84194e-06, 1.29971e-06, 9.22188e-07, 6.58787e-07, 
			0.000237403, 0.000121785, 7.58029e-05, 5.02591e-05, 3.41886e-05, 2.35313e-05, 1.62885e-05, 1.13083e-05, 7.86547e-06, 5.4797e-06, 3.82395e-06, 2.67456e-06, 1.87639e-06, 1.32183e-06, 9.36067e-07, 6.67216e-07, 
			0.000238014, 0.000122317, 7.61483e-05, 5.04699e-05, 3.43375e-05, 2.36292e-05, 1.63518e-05, 1.13484e-05, 7.89001e-06, 5.49431e-06, 3.83221e-06, 2.67891e-06, 1.87838e-06, 1.32228e-06, 9.35529e-07, 6.66431e-07, 
			0.000237334, 0.000122075, 7.60273e-05, 5.03922e-05, 3.42722e-05, 2.35828e-05, 1.63188e-05, 1.13246e-05, 7.87313e-06, 5.48218e-06, 3.82423e-06, 2.67387e-06, 1.87518e-06, 1.32028e-06, 9.34639e-07, 6.67088e-07, 
			0.000235901, 0.000121521, 7.57088e-05, 5.01814e-05, 3.41223e-05, 2.34788e-05, 1.62439e-05, 1.12682e-05, 7.83035e-06, 5.44937e-06, 3.79858e-06, 2.65335e-06, 1.85852e-06, 1.307e-06, 9.24607e-07, 6.61e-07
		)
}

CapTable	"metal2_C_BOTTOM_GP_12MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.63778e-05, 3.58404e-05, 4.41129e-05, 5.11564e-05, 5.70424e-05, 6.18937e-05, 6.58524e-05, 6.90602e-05, 7.16491e-05, 7.37276e-05, 7.5396e-05, 7.67346e-05, 7.78039e-05, 7.8659e-05, 7.93471e-05, 7.98925e-05, 
			3.68104e-05, 4.65477e-05, 5.50955e-05, 6.23952e-05, 6.85239e-05, 7.35956e-05, 7.77491e-05, 8.11274e-05, 8.38618e-05, 8.60651e-05, 8.78383e-05, 8.92609e-05, 9.04011e-05, 9.13276e-05, 9.20481e-05, 9.26366e-05, 
			4.776e-05, 5.75939e-05, 6.62514e-05, 7.3673e-05, 7.99153e-05, 8.50978e-05, 8.93537e-05, 9.28227e-05, 9.56387e-05, 9.79091e-05, 9.97373e-05, 0.00010121, 0.000102388, 0.000103336, 0.000104097, 0.000104708, 
			5.8947e-05, 6.88432e-05, 7.75529e-05, 8.5036e-05, 9.1345e-05, 9.65908e-05, 0.000100905, 0.000104428, 0.000107287, 0.000109597, 0.000111474, 0.000112962, 0.000114169, 0.000115138, 0.000115916, 0.000116541, 
			7.02834e-05, 8.01824e-05, 8.89213e-05, 9.64376e-05, 0.000102783, 0.000108066, 0.000112415, 0.000115967, 0.000118855, 0.00012119, 0.000123077, 0.000124595, 0.000125816, 0.000126798, 0.000127587, 0.00012822
		)
}

CapTable	"metal2_C_TOP_GP_12MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.05318e-05, 1.41785e-05, 1.74671e-05, 2.03647e-05, 2.28559e-05, 2.49558e-05, 2.67015e-05, 2.81364e-05, 2.93065e-05, 3.0257e-05, 3.10254e-05, 3.16421e-05, 3.21417e-05, 3.25454e-05, 3.28659e-05, 3.31305e-05, 
			1.42721e-05, 1.79965e-05, 2.14102e-05, 2.44448e-05, 2.70666e-05, 2.92892e-05, 3.11451e-05, 3.26773e-05, 3.39315e-05, 3.49539e-05, 3.57824e-05, 3.64533e-05, 3.69961e-05, 3.74193e-05, 3.77856e-05, 3.8069e-05, 
			1.81569e-05, 2.19436e-05, 2.54346e-05, 2.85472e-05, 3.12457e-05, 3.35384e-05, 3.54593e-05, 3.70488e-05, 3.83503e-05, 3.94163e-05, 4.02844e-05, 4.0984e-05, 4.1555e-05, 4.20129e-05, 4.23823e-05, 4.26802e-05, 
			2.21371e-05, 2.59753e-05, 2.95215e-05, 3.26879e-05, 3.54377e-05, 3.77773e-05, 3.97396e-05, 4.13653e-05, 4.27032e-05, 4.37995e-05, 4.4674e-05, 4.54097e-05, 4.59937e-05, 4.64648e-05, 4.68466e-05, 4.71541e-05, 
			2.61937e-05, 3.00642e-05, 3.36468e-05, 3.68494e-05, 3.96326e-05, 4.19988e-05, 4.39885e-05, 4.5641e-05, 4.69993e-05, 4.8113e-05, 4.90178e-05, 4.97523e-05, 5.03471e-05, 5.08281e-05, 5.12166e-05, 5.15302e-05
		)
}

CapTable	"metal2_C_LATERAL_12MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000239744, 0.000129188, 8.61109e-05, 6.19758e-05, 4.62981e-05, 3.53212e-05, 2.73036e-05, 2.12948e-05, 1.67147e-05, 1.31838e-05, 1.04384e-05, 8.2899e-06, 6.60024e-06, 5.26581e-06, 4.20884e-06, 3.36844e-06, 
			0.000249285, 0.000135779, 9.09661e-05, 6.5725e-05, 4.92486e-05, 3.76723e-05, 2.91902e-05, 2.2814e-05, 1.79402e-05, 1.41727e-05, 1.1236e-05, 8.93361e-06, 7.11936e-06, 5.6856e-06, 4.54633e-06, 3.6409e-06, 
			0.000253111, 0.000138951, 9.34815e-05, 6.77244e-05, 5.08729e-05, 3.89899e-05, 3.02614e-05, 2.36857e-05, 1.86495e-05, 1.47492e-05, 1.17043e-05, 9.31367e-06, 7.42736e-06, 5.93424e-06, 4.74862e-06, 3.80486e-06, 
			0.000254879, 0.000140668, 9.49383e-05, 6.89272e-05, 5.18538e-05, 3.97975e-05, 3.09259e-05, 2.42311e-05, 1.90968e-05, 1.51151e-05, 1.20048e-05, 9.55779e-06, 7.62672e-06, 6.09693e-06, 4.88103e-06, 3.91272e-06, 
			0.000255249, 0.000141527, 9.57489e-05, 6.96265e-05, 5.24412e-05, 4.02925e-05, 3.13379e-05, 2.45715e-05, 1.9377e-05, 1.53453e-05, 1.21924e-05, 9.71242e-06, 7.7533e-06, 6.20038e-06, 4.96602e-06, 3.98254e-06
		)
}

CapTable	"metal2_C_BOTTOM_GP_13MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.77688e-05, 3.74449e-05, 4.58332e-05, 5.29499e-05, 5.89132e-05, 6.38676e-05, 6.79691e-05, 7.13613e-05, 7.41589e-05, 7.64727e-05, 7.839e-05, 7.99835e-05, 8.13112e-05, 8.24181e-05, 8.33468e-05, 8.41257e-05, 
			3.82635e-05, 4.80912e-05, 5.66645e-05, 6.3983e-05, 7.01592e-05, 7.53238e-05, 7.96296e-05, 8.32128e-05, 8.61864e-05, 8.86608e-05, 9.07241e-05, 9.24472e-05, 9.38868e-05, 9.50973e-05, 9.61142e-05, 9.69695e-05, 
			4.91625e-05, 5.89953e-05, 6.7613e-05, 7.50155e-05, 8.12945e-05, 8.65748e-05, 9.09965e-05, 9.46893e-05, 9.77764e-05, 0.000100356, 0.000102512, 0.000104322, 0.000105839, 0.000107118, 0.000108196, 0.000109108, 
			6.02084e-05, 7.00334e-05, 7.8663e-05, 8.61108e-05, 9.2453e-05, 9.78032e-05, 0.000102305, 0.000106083, 0.000109248, 0.000111901, 0.00011413, 0.000116002, 0.000117577, 0.000118907, 0.000120031, 0.000120986, 
			7.13579e-05, 8.11435e-05, 8.97754e-05, 9.72399e-05, 0.000103617, 0.000109024, 0.000113584, 0.000117418, 0.000120642, 0.00012335, 0.00012563, 0.00012755, 0.00012917, 0.000130536, 0.000131701, 0.000132685
		)
}

CapTable	"metal2_C_TOP_GP_13MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			7.04707e-06, 9.40461e-06, 1.15108e-05, 1.33672e-05, 1.49707e-05, 1.63406e-05, 1.74979e-05, 1.84675e-05, 1.92845e-05, 1.99675e-05, 2.05394e-05, 2.1016e-05, 2.14154e-05, 2.17518e-05, 2.20334e-05, 2.22712e-05, 
			9.36764e-06, 1.17229e-05, 1.38806e-05, 1.5805e-05, 1.74822e-05, 1.89309e-05, 2.01624e-05, 2.1203e-05, 2.20869e-05, 2.28288e-05, 2.34519e-05, 2.39763e-05, 2.4419e-05, 2.47903e-05, 2.51053e-05, 2.53728e-05, 
			1.17239e-05, 1.4083e-05, 1.62715e-05, 1.82355e-05, 1.99572e-05, 2.14528e-05, 2.27358e-05, 2.38296e-05, 2.47535e-05, 2.55353e-05, 2.61968e-05, 2.67543e-05, 2.72269e-05, 2.76249e-05, 2.79645e-05, 2.82522e-05, 
			1.41012e-05, 1.64754e-05, 1.86855e-05, 2.06771e-05, 2.24355e-05, 2.39718e-05, 2.52899e-05, 2.6415e-05, 2.73717e-05, 2.81857e-05, 2.88728e-05, 2.94568e-05, 2.99533e-05, 3.03726e-05, 3.073e-05, 3.10322e-05, 
			1.64988e-05, 1.88766e-05, 2.11016e-05, 2.31239e-05, 2.49154e-05, 2.64724e-05, 2.78168e-05, 2.89695e-05, 2.99515e-05, 3.07883e-05, 3.14974e-05, 3.21023e-05, 3.26154e-05, 3.30566e-05, 3.34225e-05, 3.3743e-05
		)
}

CapTable	"metal2_C_LATERAL_13MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000241368, 0.000131495, 8.90364e-05, 6.54074e-05, 5.01001e-05, 3.93553e-05, 3.14431e-05, 2.54329e-05, 2.07662e-05, 1.70837e-05, 1.4141e-05, 1.17652e-05, 9.83132e-06, 8.24521e-06, 6.93622e-06, 5.85022e-06, 
			0.000251849, 0.000139092, 9.49328e-05, 7.02055e-05, 5.40855e-05, 4.27115e-05, 3.4293e-05, 2.78653e-05, 2.28486e-05, 1.8871e-05, 1.56775e-05, 1.30876e-05, 1.09702e-05, 9.22664e-06, 7.78252e-06, 6.5798e-06, 
			0.000256689, 0.000143296, 9.847e-05, 7.31993e-05, 5.6663e-05, 4.49322e-05, 3.6212e-05, 2.95258e-05, 2.42873e-05, 2.01177e-05, 1.67578e-05, 1.40235e-05, 1.17806e-05, 9.928e-06, 8.38887e-06, 7.10371e-06, 
			0.000259493, 0.000146026, 0.000100903, 7.53304e-05, 5.85169e-05, 4.65526e-05, 3.76276e-05, 3.07619e-05, 2.53655e-05, 2.10569e-05, 1.75748e-05, 1.47336e-05, 1.23966e-05, 1.04619e-05, 8.85051e-06, 7.50223e-06, 
			0.000260864, 0.000147842, 0.000102619, 7.68776e-05, 5.98912e-05, 4.77731e-05, 3.87053e-05, 3.17092e-05, 2.61964e-05, 2.17843e-05, 1.82105e-05, 1.52877e-05, 1.28789e-05, 1.08799e-05, 9.21272e-06, 7.81408e-06
		)
}

CapTable	"metal2_C_BOTTOM_GP_14MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.88166e-05, 3.87446e-05, 4.73207e-05, 5.45792e-05, 6.06517e-05, 6.56981e-05, 6.98818e-05, 7.33483e-05, 7.62254e-05, 7.86181e-05, 8.06181e-05, 8.22921e-05, 8.36992e-05, 8.48921e-05, 8.58991e-05, 8.67614e-05, 
			3.95208e-05, 4.95562e-05, 5.82898e-05, 6.57307e-05, 7.2002e-05, 7.72521e-05, 8.1636e-05, 8.52976e-05, 8.83551e-05, 9.09146e-05, 9.30673e-05, 9.4879e-05, 9.64125e-05, 9.77162e-05, 9.88264e-05, 9.97774e-05, 
			5.0575e-05, 6.05806e-05, 6.9333e-05, 7.68373e-05, 8.31972e-05, 8.85556e-05, 9.30549e-05, 9.68337e-05, 0.000100007, 0.000102676, 0.000104934, 0.000106841, 0.000108466, 0.000109847, 0.000111032, 0.000112045, 
			6.17348e-05, 7.1703e-05, 8.04422e-05, 8.79717e-05, 9.43883e-05, 9.98163e-05, 0.000104394, 0.000108257, 0.000111512, 0.000114264, 0.000116599, 0.000118581, 0.000120274, 0.000121718, 0.000122962, 0.000124027, 
			7.29521e-05, 8.28539e-05, 9.15761e-05, 9.91166e-05, 0.000105569, 0.000111046, 0.000115682, 0.000119609, 0.000122929, 0.000125748, 0.000128141, 0.000130184, 0.000131926, 0.000133425, 0.000134713, 0.000135821
		)
}

CapTable	"metal2_C_TOP_GP_14MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			5.36719e-06, 7.14021e-06, 8.71695e-06, 1.0101e-05, 1.12954e-05, 1.23148e-05, 1.31782e-05, 1.39065e-05, 1.45196e-05, 1.50363e-05, 1.54707e-05, 1.58397e-05, 1.61537e-05, 1.64169e-05, 1.66458e-05, 1.68364e-05, 
			7.09806e-06, 8.85552e-06, 1.04569e-05, 1.18813e-05, 1.31245e-05, 1.41962e-05, 1.51126e-05, 1.58901e-05, 1.65515e-05, 1.71154e-05, 1.7591e-05, 1.79988e-05, 1.83461e-05, 1.86412e-05, 1.88953e-05, 1.91116e-05, 
			8.83926e-06, 1.05863e-05, 1.21993e-05, 1.36468e-05, 1.49192e-05, 1.60237e-05, 1.69746e-05, 1.77864e-05, 1.84817e-05, 1.90772e-05, 1.95814e-05, 2.00174e-05, 2.03851e-05, 2.07063e-05, 2.09779e-05, 2.1217e-05, 
			1.05807e-05, 1.23262e-05, 1.3948e-05, 1.54127e-05, 1.67051e-05, 1.78335e-05, 1.88123e-05, 1.96499e-05, 2.03722e-05, 2.0991e-05, 2.15187e-05, 2.19741e-05, 2.23623e-05, 2.27015e-05, 2.29892e-05, 2.3243e-05, 
			1.23278e-05, 1.40701e-05, 1.56991e-05, 1.71772e-05, 1.84861e-05, 1.96343e-05, 2.06326e-05, 2.14901e-05, 2.22333e-05, 2.2866e-05, 2.34162e-05, 2.38848e-05, 2.42937e-05, 2.46429e-05, 2.49465e-05, 2.52122e-05
		)
}

CapTable	"metal2_C_LATERAL_14MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.00024187, 0.000132222, 8.99837e-05, 6.65551e-05, 5.14195e-05, 4.08124e-05, 3.30038e-05, 2.7064e-05, 2.24387e-05, 1.87722e-05, 1.58244e-05, 1.34266e-05, 1.14565e-05, 9.82407e-06, 8.46115e-06, 7.31575e-06, 
			0.000252628, 0.000140128, 9.62115e-05, 7.17032e-05, 5.57678e-05, 4.45393e-05, 3.62275e-05, 2.98691e-05, 2.48902e-05, 2.09216e-05, 1.77137e-05, 1.50909e-05, 1.29256e-05, 1.11231e-05, 9.61183e-06, 8.33633e-06, 
			0.000257792, 0.000144672, 0.000100106, 7.50641e-05, 5.87168e-05, 4.7132e-05, 3.8515e-05, 3.18927e-05, 2.66828e-05, 2.2512e-05, 1.91261e-05, 1.63464e-05, 1.40428e-05, 1.2118e-05, 1.04987e-05, 9.1275e-06, 
			0.000260946, 0.000147769, 0.000102914, 7.75736e-05, 6.09481e-05, 4.91259e-05, 4.02969e-05, 3.34851e-05, 2.81064e-05, 2.37844e-05, 2.02637e-05, 1.7364e-05, 1.4953e-05, 1.29325e-05, 1.12276e-05, 9.78012e-06, 
			0.000262691, 0.000149964, 0.00010501, 7.94986e-05, 6.26947e-05, 5.07093e-05, 4.17266e-05, 3.47722e-05, 2.92643e-05, 2.48258e-05, 2.11999e-05, 1.82053e-05, 1.5709e-05, 1.36119e-05, 1.18382e-05, 1.03288e-05
		)
}

CapTable	"metal2_C_BOTTOM_GP_15MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			3.30949e-05, 4.42363e-05, 5.38102e-05, 6.18891e-05, 6.86299e-05, 7.42232e-05, 7.8859e-05, 8.27047e-05, 8.59066e-05, 8.85816e-05, 9.08294e-05, 9.2729e-05, 9.43425e-05, 9.57208e-05, 9.69068e-05, 9.79315e-05, 
			4.49022e-05, 5.60423e-05, 6.57067e-05, 7.39213e-05, 8.08309e-05, 8.66118e-05, 9.14409e-05, 9.54805e-05, 9.88699e-05, 0.000101725, 0.000104142, 0.000106198, 0.000107957, 0.000109471, 0.000110781, 0.000111921, 
			5.6952e-05, 6.79638e-05, 7.75753e-05, 8.57995e-05, 9.2761e-05, 9.86252e-05, 0.000103558, 0.00010771, 0.000111217, 0.000114189, 0.000116721, 0.000118887, 0.000120752, 0.000122364, 0.000123767, 0.000124992, 
			6.89976e-05, 7.9884e-05, 8.94136e-05, 9.76124e-05, 0.000104592, 0.000110501, 0.000115498, 0.000119727, 0.000123318, 0.000126378, 0.000128996, 0.000131248, 0.000133195, 0.000134887, 0.000136365, 0.000137661, 
			8.10043e-05, 9.17486e-05, 0.000101202, 0.000109368, 0.000116352, 0.000122289, 0.000127333, 0.000131623, 0.00013528, 0.00013841, 0.000141099, 0.000143422, 0.000145438, 0.000147196, 0.000148738, 0.000150096
		)
}

CapTable	"metal2_C_LATERAL_15MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000242733, 0.000133471, 9.16138e-05, 6.85471e-05, 5.37392e-05, 4.34177e-05, 3.58493e-05, 3.01052e-05, 2.56339e-05, 2.20842e-05, 1.922e-05, 1.68774e-05, 1.49383e-05, 1.33164e-05, 1.19467e-05, 1.07802e-05, 
			0.000253951, 0.000141888, 9.84062e-05, 7.43072e-05, 5.87404e-05, 4.78313e-05, 3.9786e-05, 3.36433e-05, 2.88322e-05, 2.49883e-05, 2.18677e-05, 1.92993e-05, 1.71607e-05, 1.53613e-05, 1.38333e-05, 1.2525e-05, 
			0.000259646, 0.000147014, 0.000102926, 7.83313e-05, 6.23828e-05, 5.11405e-05, 4.28072e-05, 3.64117e-05, 3.13761e-05, 2.73321e-05, 2.40316e-05, 2.13013e-05, 1.90168e-05, 1.70852e-05, 1.54374e-05, 1.40202e-05, 
			0.000263401, 0.000150754, 0.000106415, 8.15522e-05, 6.53488e-05, 5.3886e-05, 4.53518e-05, 3.87729e-05, 3.357e-05, 2.93729e-05, 2.59327e-05, 2.30746e-05, 2.06726e-05, 1.86337e-05, 1.68875e-05, 1.53799e-05, 
			0.000265803, 0.000153638, 0.000109228, 8.42136e-05, 6.7846e-05, 5.62283e-05, 4.7544e-05, 4.08225e-05, 3.54866e-05, 3.11663e-05, 2.76116e-05, 2.46479e-05, 2.21483e-05, 2.00189e-05, 1.8189e-05, 1.66041e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_41MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			6.49509e-06, 8.76855e-06, 1.07764e-05, 1.255e-05, 1.40693e-05, 1.53607e-05, 1.6466e-05, 1.73815e-05, 1.81675e-05, 1.8826e-05, 1.93747e-05, 1.98412e-05, 2.02344e-05, 2.05667e-05, 2.08465e-05, 2.1078e-05, 
			8.59887e-06, 1.08432e-05, 1.28859e-05, 1.47041e-05, 1.6276e-05, 1.76202e-05, 1.87827e-05, 1.9769e-05, 2.06032e-05, 2.13022e-05, 2.18972e-05, 2.24006e-05, 2.28263e-05, 2.31827e-05, 2.34864e-05, 2.37464e-05, 
			1.07448e-05, 1.29738e-05, 1.50219e-05, 1.68623e-05, 1.84589e-05, 1.98549e-05, 2.10508e-05, 2.20638e-05, 2.29296e-05, 2.36629e-05, 2.42874e-05, 2.48142e-05, 2.52558e-05, 2.56368e-05, 2.60362e-05, 2.62903e-05, 
			1.29114e-05, 1.51287e-05, 1.71756e-05, 1.9033e-05, 2.06655e-05, 2.20832e-05, 2.32976e-05, 2.43397e-05, 2.52304e-05, 2.59869e-05, 2.66242e-05, 2.71685e-05, 2.7636e-05, 2.80956e-05, 2.84157e-05, 2.8692e-05, 
			1.50689e-05, 1.72658e-05, 1.93283e-05, 2.11882e-05, 2.2827e-05, 2.42575e-05, 2.54919e-05, 2.65524e-05, 2.74573e-05, 2.82215e-05, 2.88805e-05, 2.95151e-05, 2.99736e-05, 3.03673e-05, 3.07058e-05, 3.09961e-05
		)
}

CapTable	"metal3_C_TOP_GP_41MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.75659e-05, 3.69308e-05, 4.49956e-05, 5.1795e-05, 5.74971e-05, 6.22444e-05, 6.61971e-05, 6.94802e-05, 7.22123e-05, 7.44886e-05, 7.63866e-05, 7.79749e-05, 7.93071e-05, 8.04261e-05, 8.13732e-05, 8.21792e-05, 
			3.80085e-05, 4.75361e-05, 5.57788e-05, 6.27752e-05, 6.86713e-05, 7.36129e-05, 7.77522e-05, 8.12089e-05, 8.41005e-05, 8.65228e-05, 8.85535e-05, 9.02595e-05, 9.1698e-05, 9.29182e-05, 9.39503e-05, 9.48255e-05, 
			4.88364e-05, 5.83821e-05, 6.66697e-05, 7.37483e-05, 7.97335e-05, 8.47783e-05, 8.90198e-05, 9.25792e-05, 9.5569e-05, 9.80827e-05, 0.000100198, 0.000101986, 0.000103503, 0.000104783, 0.000105795, 0.000106748, 
			5.98126e-05, 6.93658e-05, 7.76747e-05, 8.47939e-05, 9.08389e-05, 9.59488e-05, 0.000100259, 0.00010389, 0.000106948, 0.000109529, 0.000111715, 0.000113562, 0.000115125, 0.000116389, 0.000117545, 0.000118531, 
			7.08537e-05, 8.03741e-05, 8.86825e-05, 9.58205e-05, 0.000101895, 0.000107044, 0.000111399, 0.000115076, 0.000118187, 0.000120823, 0.000123047, 0.000124861, 0.00012649, 0.000127874, 0.000129059, 0.000130075
		)
}

CapTable	"metal3_C_LATERAL_41MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000241905, 0.000132204, 8.99144e-05, 6.64356e-05, 5.1249e-05, 4.05997e-05, 3.27361e-05, 2.67651e-05, 2.20972e-05, 1.83991e-05, 1.54369e-05, 1.30282e-05, 1.1057e-05, 9.43154e-06, 8.08172e-06, 6.95394e-06, 
			0.000252462, 0.000139856, 9.5865e-05, 7.13015e-05, 5.53337e-05, 4.40878e-05, 3.5742e-05, 2.93607e-05, 2.43686e-05, 2.0401e-05, 1.71988e-05, 1.45905e-05, 1.2447e-05, 1.06719e-05, 9.19227e-06, 7.95207e-06, 
			0.000257349, 0.0001441, 9.94669e-05, 7.43801e-05, 5.80255e-05, 4.64272e-05, 3.7805e-05, 3.11936e-05, 2.59972e-05, 2.18482e-05, 1.84925e-05, 1.57493e-05, 1.34865e-05, 1.16074e-05, 1.00408e-05, 8.71769e-06, 
			0.000260184, 0.000146885, 0.000101977, 7.66093e-05, 5.99817e-05, 4.81725e-05, 3.93704e-05, 3.25891e-05, 2.72485e-05, 2.29715e-05, 1.95012e-05, 1.66564e-05, 1.43041e-05, 1.23494e-05, 1.07052e-05, 9.31911e-06, 
			0.000261645, 0.00014882, 0.000103819, 7.83061e-05, 6.15363e-05, 4.95921e-05, 4.06591e-05, 3.37617e-05, 2.83156e-05, 2.39425e-05, 2.03866e-05, 1.74682e-05, 1.50441e-05, 1.30219e-05, 1.13215e-05, 9.8835e-06
		)
}

CapTable	"metal3_C_BOTTOM_GP_42MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			7.54519e-06, 9.95452e-06, 1.20097e-05, 1.38201e-05, 1.54485e-05, 1.69249e-05, 1.82723e-05, 1.95015e-05, 2.0625e-05, 2.16471e-05, 2.25742e-05, 2.34193e-05, 2.41807e-05, 2.48731e-05, 2.54991e-05, 2.60563e-05, 
			9.35938e-06, 1.16557e-05, 1.37128e-05, 1.55742e-05, 1.72728e-05, 1.88305e-05, 2.0257e-05, 2.15633e-05, 2.27643e-05, 2.38554e-05, 2.48538e-05, 2.57549e-05, 2.65768e-05, 2.73227e-05, 2.79894e-05, 2.85971e-05, 
			1.12514e-05, 1.3487e-05, 1.5545e-05, 1.74411e-05, 1.91857e-05, 2.07967e-05, 2.22797e-05, 2.36388e-05, 2.4889e-05, 2.60281e-05, 2.70712e-05, 2.80211e-05, 2.88767e-05, 2.96575e-05, 3.03627e-05, 3.09984e-05, 
			1.31898e-05, 1.54104e-05, 1.74839e-05, 1.94083e-05, 2.11906e-05, 2.28456e-05, 2.43682e-05, 2.5774e-05, 2.70579e-05, 2.82373e-05, 2.93161e-05, 3.02914e-05, 3.11828e-05, 3.199e-05, 3.27188e-05, 3.33771e-05, 
			1.51762e-05, 1.73727e-05, 1.94488e-05, 2.13905e-05, 2.31965e-05, 2.48745e-05, 2.64235e-05, 2.78548e-05, 2.91705e-05, 3.03703e-05, 3.14703e-05, 3.24722e-05, 3.33809e-05, 3.42051e-05, 3.49521e-05, 3.56271e-05
		)
}

CapTable	"metal3_C_TOP_GP_42MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.38297e-05, 1.75326e-05, 2.08167e-05, 2.37831e-05, 2.64861e-05, 2.89607e-05, 3.12254e-05, 3.32984e-05, 3.51907e-05, 3.69155e-05, 3.84853e-05, 3.99077e-05, 4.1197e-05, 4.2361e-05, 4.34089e-05, 4.43577e-05, 
			1.7339e-05, 2.09547e-05, 2.42932e-05, 2.73792e-05, 3.02323e-05, 3.28644e-05, 3.52897e-05, 3.75184e-05, 3.95543e-05, 4.14174e-05, 4.31119e-05, 4.46553e-05, 4.60525e-05, 4.73137e-05, 4.84591e-05, 4.94866e-05, 
			2.08765e-05, 2.44904e-05, 2.78886e-05, 3.10645e-05, 3.40212e-05, 3.6762e-05, 3.92929e-05, 4.16236e-05, 4.37604e-05, 4.57158e-05, 4.74966e-05, 4.91148e-05, 5.05882e-05, 5.19187e-05, 5.3122e-05, 5.42099e-05, 
			2.44811e-05, 2.81284e-05, 3.15793e-05, 3.48267e-05, 3.78623e-05, 4.06786e-05, 4.32873e-05, 4.56898e-05, 4.78997e-05, 4.99203e-05, 5.17599e-05, 5.3441e-05, 5.49628e-05, 5.63427e-05, 5.7593e-05, 5.87221e-05, 
			2.8193e-05, 3.18744e-05, 3.53782e-05, 3.86825e-05, 4.17767e-05, 4.46557e-05, 4.73235e-05, 4.9782e-05, 5.20393e-05, 5.41116e-05, 5.60002e-05, 5.77205e-05, 5.92852e-05, 6.07038e-05, 6.19876e-05, 6.31479e-05
		)
}

CapTable	"metal3_C_LATERAL_42MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000251086, 0.000144052, 0.000103513, 8.10184e-05, 6.62206e-05, 5.55099e-05, 4.72844e-05, 4.07163e-05, 3.53289e-05, 3.08276e-05, 2.70148e-05, 2.37504e-05, 2.09376e-05, 1.84952e-05, 1.63677e-05, 1.45091e-05, 
			0.00026539, 0.00015488, 0.000112129, 8.81296e-05, 7.22064e-05, 6.06268e-05, 5.17077e-05, 4.45735e-05, 3.87156e-05, 3.3818e-05, 2.96648e-05, 2.6111e-05, 2.30431e-05, 2.03811e-05, 1.80617e-05, 1.6031e-05, 
			0.000273244, 0.000161489, 0.000117618, 9.27415e-05, 7.61552e-05, 6.40355e-05, 5.46781e-05, 4.71811e-05, 4.10168e-05, 3.5859e-05, 3.14821e-05, 2.77326e-05, 2.44978e-05, 2.16869e-05, 1.92353e-05, 1.70885e-05, 
			0.000278265, 0.000165956, 0.00012144, 9.60137e-05, 7.89728e-05, 6.64889e-05, 5.68294e-05, 4.90762e-05, 4.2698e-05, 3.73529e-05, 3.28165e-05, 2.89283e-05, 2.55692e-05, 2.26512e-05, 2.0104e-05, 1.78736e-05, 
			0.000281242, 0.000169022, 0.000124156, 9.83856e-05, 8.10482e-05, 6.83191e-05, 5.84501e-05, 5.05178e-05, 4.39849e-05, 3.85087e-05, 3.3856e-05, 2.98654e-05, 2.64165e-05, 2.34198e-05, 2.08021e-05, 1.85078e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_43MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			8.29338e-06, 1.10233e-05, 1.32465e-05, 1.51461e-05, 1.68258e-05, 1.83481e-05, 1.97452e-05, 2.10371e-05, 2.22368e-05, 2.33522e-05, 2.43886e-05, 2.53527e-05, 2.62459e-05, 2.70726e-05, 2.78388e-05, 2.85436e-05, 
			9.96513e-06, 1.24868e-05, 1.46713e-05, 1.65971e-05, 1.83369e-05, 1.99316e-05, 2.14074e-05, 2.27796e-05, 2.40589e-05, 2.52501e-05, 2.63596e-05, 2.7393e-05, 2.83512e-05, 2.92417e-05, 3.00635e-05, 3.08247e-05, 
			1.17124e-05, 1.40877e-05, 1.62311e-05, 1.81683e-05, 1.99433e-05, 2.15886e-05, 2.31202e-05, 2.45499e-05, 2.58858e-05, 2.71324e-05, 2.82945e-05, 2.93784e-05, 3.03846e-05, 3.13195e-05, 3.21862e-05, 3.29866e-05, 
			1.34715e-05, 1.57965e-05, 1.7932e-05, 1.98936e-05, 2.17117e-05, 2.34053e-05, 2.49872e-05, 2.64663e-05, 2.7851e-05, 2.91435e-05, 3.03515e-05, 3.14746e-05, 3.25205e-05, 3.34915e-05, 3.43908e-05, 3.52238e-05, 
			1.52785e-05, 1.75245e-05, 1.96353e-05, 2.16006e-05, 2.34344e-05, 2.51511e-05, 2.67608e-05, 2.82699e-05, 2.96844e-05, 3.10065e-05, 3.22415e-05, 3.33934e-05, 3.44652e-05, 3.54621e-05, 3.6387e-05, 3.72423e-05
		)
}

CapTable	"metal3_C_TOP_GP_43MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.01908e-05, 1.24356e-05, 1.44513e-05, 1.62909e-05, 1.79848e-05, 1.9554e-05, 2.10145e-05, 2.23774e-05, 2.36503e-05, 2.48398e-05, 2.59516e-05, 2.69886e-05, 2.79562e-05, 2.88582e-05, 2.9696e-05, 3.04764e-05, 
			1.24839e-05, 1.4596e-05, 1.65807e-05, 1.84529e-05, 2.02134e-05, 2.18691e-05, 2.34248e-05, 2.48854e-05, 2.62566e-05, 2.75437e-05, 2.87493e-05, 2.98765e-05, 3.0931e-05, 3.19132e-05, 3.28305e-05, 3.36833e-05, 
			1.46657e-05, 1.67529e-05, 1.8749e-05, 2.06591e-05, 2.24755e-05, 2.41947e-05, 2.58195e-05, 2.73522e-05, 2.87954e-05, 3.01517e-05, 3.14252e-05, 3.26174e-05, 3.37336e-05, 3.47759e-05, 3.57475e-05, 3.66527e-05, 
			1.68336e-05, 1.89119e-05, 2.0922e-05, 2.28622e-05, 2.47189e-05, 2.64858e-05, 2.81628e-05, 2.97492e-05, 3.12453e-05, 3.26553e-05, 3.39794e-05, 3.52228e-05, 3.63861e-05, 3.7474e-05, 3.84885e-05, 3.9435e-05, 
			1.90365e-05, 2.1147e-05, 2.31921e-05, 2.51714e-05, 2.7072e-05, 2.88861e-05, 3.06087e-05, 3.22416e-05, 3.37834e-05, 3.52374e-05, 3.66043e-05, 3.78876e-05, 3.90888e-05, 4.02127e-05, 4.1262e-05, 4.22413e-05
		)
}

CapTable	"metal3_C_LATERAL_43MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.00025338, 0.000147063, 0.000107167, 8.52274e-05, 7.08897e-05, 6.05445e-05, 5.2593e-05, 4.62145e-05, 4.09412e-05, 3.64856e-05, 3.266e-05, 2.93349e-05, 2.64188e-05, 2.38432e-05, 2.1555e-05, 1.95144e-05, 
			0.000268642, 0.000158875, 0.000116774, 9.33229e-05, 7.78453e-05, 6.66086e-05, 5.79375e-05, 5.09641e-05, 4.51893e-05, 4.03053e-05, 3.61095e-05, 3.24616e-05, 2.92616e-05, 2.64342e-05, 2.39226e-05, 2.16806e-05, 
			0.000277467, 0.000166442, 0.000123196, 9.88361e-05, 8.26573e-05, 7.08422e-05, 6.16925e-05, 5.43159e-05, 4.81973e-05, 4.30174e-05, 3.8564e-05, 3.46897e-05, 3.12898e-05, 2.82841e-05, 2.56129e-05, 2.32291e-05, 
			0.000283437, 0.000171819, 0.000127881, 0.00010292, 8.62359e-05, 7.40067e-05, 6.45078e-05, 5.68338e-05, 5.04596e-05, 4.50576e-05, 4.04092e-05, 3.63642e-05, 3.28121e-05, 2.96711e-05, 2.688e-05, 2.4386e-05, 
			0.000287307, 0.000175723, 0.000131382, 0.000106024, 8.89913e-05, 7.64694e-05, 6.67174e-05, 5.88241e-05, 5.226e-05, 4.6692e-05, 4.18977e-05, 3.77227e-05, 3.40563e-05, 3.0812e-05, 2.79264e-05, 2.53489e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_44MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.52649e-05, 1.89413e-05, 2.19505e-05, 2.45217e-05, 2.67842e-05, 2.88187e-05, 3.06767e-05, 3.23918e-05, 3.39874e-05, 3.54805e-05, 3.6883e-05, 3.82046e-05, 3.94523e-05, 4.06323e-05, 4.17492e-05, 4.28074e-05, 
			1.7977e-05, 2.12803e-05, 2.4141e-05, 2.66748e-05, 2.896e-05, 3.10495e-05, 3.29811e-05, 3.47802e-05, 3.6465e-05, 3.80495e-05, 3.95439e-05, 4.09564e-05, 4.22934e-05, 4.35606e-05, 4.47623e-05, 4.59027e-05, 
			2.05296e-05, 2.36013e-05, 2.63569e-05, 2.88559e-05, 3.11468e-05, 3.32676e-05, 3.52458e-05, 3.70999e-05, 3.8845e-05, 4.04924e-05, 4.2051e-05, 4.35277e-05, 4.49286e-05, 4.62583e-05, 4.75213e-05, 4.87214e-05, 
			2.29698e-05, 2.59052e-05, 2.85888e-05, 3.10624e-05, 3.3357e-05, 3.54997e-05, 3.75115e-05, 3.94059e-05, 4.11961e-05, 4.28911e-05, 4.44988e-05, 4.60249e-05, 4.74747e-05, 4.88531e-05, 5.0164e-05, 5.14108e-05, 
			2.53638e-05, 2.81965e-05, 3.08307e-05, 3.32863e-05, 3.55847e-05, 3.77435e-05, 3.97799e-05, 4.17062e-05, 4.35311e-05, 4.52632e-05, 4.69087e-05, 4.84735e-05, 4.99618e-05, 5.13784e-05, 5.27271e-05, 5.40114e-05
		)
}

CapTable	"metal3_C_LATERAL_44MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000255977, 0.000150597, 0.000111538, 9.0363e-05, 7.67275e-05, 6.70251e-05, 5.96574e-05, 5.38037e-05, 4.89968e-05, 4.49499e-05, 4.14771e-05, 3.84516e-05, 3.5784e-05, 3.34087e-05, 3.1277e-05, 2.93509e-05, 
			0.000272194, 0.000163371, 0.000122143, 9.94995e-05, 8.47644e-05, 7.42066e-05, 6.61498e-05, 5.97255e-05, 5.44368e-05, 4.99766e-05, 4.61446e-05, 4.28035e-05, 3.98561e-05, 3.72309e-05, 3.48743e-05, 3.27449e-05, 
			0.000282047, 0.000171979, 0.00012963, 0.000106101, 9.06868e-05, 7.95675e-05, 7.10447e-05, 6.42262e-05, 5.85992e-05, 5.3845e-05, 4.97547e-05, 4.61849e-05, 4.3033e-05, 4.02242e-05, 3.77015e-05, 3.54211e-05, 
			0.000289096, 0.000178452, 0.000135428, 0.000111314, 9.54045e-05, 8.3879e-05, 7.50107e-05, 6.78957e-05, 6.20107e-05, 5.70301e-05, 5.27392e-05, 4.89905e-05, 4.56781e-05, 4.27241e-05, 4.00697e-05, 3.7669e-05, 
			0.000294099, 0.000183481, 0.000140051, 0.000115536, 9.9272e-05, 8.74459e-05, 7.83147e-05, 7.09693e-05, 6.48824e-05, 5.97234e-05, 5.52737e-05, 5.13824e-05, 4.79415e-05, 4.48711e-05, 4.21102e-05, 3.96121e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_31MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			7.51653e-06, 1.0059e-05, 1.23664e-05, 1.44159e-05, 1.61953e-05, 1.77178e-05, 1.90184e-05, 2.00989e-05, 2.10178e-05, 2.17778e-05, 2.2419e-05, 2.29505e-05, 2.33945e-05, 2.37634e-05, 2.40709e-05, 2.43823e-05, 
			9.93762e-06, 1.24754e-05, 1.48277e-05, 1.6938e-05, 1.88042e-05, 2.03997e-05, 2.17751e-05, 2.29396e-05, 2.39122e-05, 2.47353e-05, 2.54227e-05, 2.59982e-05, 2.64793e-05, 2.68813e-05, 2.72586e-05, 2.75234e-05, 
			1.24148e-05, 1.49513e-05, 1.73259e-05, 1.94862e-05, 2.13786e-05, 2.30348e-05, 2.44458e-05, 2.56524e-05, 2.66689e-05, 2.75247e-05, 2.82441e-05, 2.88477e-05, 2.94052e-05, 2.98081e-05, 3.01505e-05, 3.04419e-05, 
			1.49023e-05, 1.74544e-05, 1.98431e-05, 2.20276e-05, 2.39643e-05, 2.56414e-05, 2.709e-05, 2.83219e-05, 2.93651e-05, 3.02452e-05, 3.09877e-05, 3.16509e-05, 3.21576e-05, 3.25885e-05, 3.29551e-05, 3.32711e-05, 
			1.74171e-05, 1.9952e-05, 2.23621e-05, 2.45536e-05, 2.65082e-05, 2.82099e-05, 2.96751e-05, 3.09254e-05, 3.19876e-05, 3.29367e-05, 3.3673e-05, 3.42977e-05, 3.48297e-05, 3.5286e-05, 3.56708e-05, 3.59994e-05
		)
}

CapTable	"metal3_C_TOP_GP_31MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.73487e-05, 3.69237e-05, 4.51587e-05, 5.21151e-05, 5.79286e-05, 6.27542e-05, 6.67485e-05, 7.00478e-05, 7.27648e-05, 7.50074e-05, 7.68548e-05, 7.83812e-05, 7.96427e-05, 8.06871e-05, 8.15535e-05, 8.22164e-05, 
			3.80054e-05, 4.78168e-05, 5.63008e-05, 6.34847e-05, 6.95167e-05, 7.45461e-05, 7.87265e-05, 8.21871e-05, 8.50562e-05, 8.74276e-05, 8.93917e-05, 9.10185e-05, 9.23678e-05, 9.3488e-05, 9.43759e-05, 9.51713e-05, 
			4.91604e-05, 5.90555e-05, 6.76344e-05, 7.49294e-05, 8.10676e-05, 8.62011e-05, 9.04826e-05, 9.40394e-05, 9.69933e-05, 9.94442e-05, 0.000101478, 0.000103168, 0.000104516, 0.000105708, 0.000106695, 0.000107514, 
			6.05738e-05, 7.05384e-05, 7.91797e-05, 8.65424e-05, 9.27508e-05, 9.796e-05, 0.000102307, 0.00010593, 0.000108943, 0.000111448, 0.00011353, 0.000115219, 0.000116679, 0.000117887, 0.00011889, 0.000119721, 
			7.21059e-05, 8.20792e-05, 9.07429e-05, 9.81385e-05, 0.000104382, 0.000109625, 0.00011401, 0.000117668, 0.000120717, 0.000123199, 0.000125331, 0.000127106, 0.000128576, 0.000129788, 0.000130804, 0.000131649
		)
}

CapTable	"metal3_C_LATERAL_31MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000241263, 0.000131242, 8.8657e-05, 6.49238e-05, 4.95335e-05, 3.87292e-05, 3.07621e-05, 2.47254e-05, 2.00353e-05, 1.63491e-05, 1.34111e-05, 1.10519e-05, 9.14372e-06, 7.59072e-06, 6.32022e-06, 5.27988e-06, 
			0.000251433, 0.000138459, 9.41405e-05, 6.93147e-05, 5.31214e-05, 4.1718e-05, 3.32768e-05, 2.68479e-05, 2.18511e-05, 1.79027e-05, 1.47503e-05, 1.2211e-05, 1.01506e-05, 8.46892e-06, 7.09237e-06, 5.95342e-06, 
			0.000255866, 0.000142218, 9.72357e-05, 7.18687e-05, 5.52995e-05, 4.3559e-05, 3.48594e-05, 2.82091e-05, 2.30227e-05, 1.89181e-05, 1.56324e-05, 1.29793e-05, 1.08255e-05, 9.05759e-06, 7.60534e-06, 6.40681e-06, 
			0.000258201, 0.000144467, 9.91983e-05, 7.35504e-05, 5.67208e-05, 4.4784e-05, 3.59094e-05, 2.91142e-05, 2.38037e-05, 1.95919e-05, 1.6214e-05, 1.34844e-05, 1.12557e-05, 9.43242e-06, 7.93088e-06, 6.68976e-06, 
			0.000259127, 0.000145866, 0.000100511, 7.47321e-05, 5.77672e-05, 4.57101e-05, 3.673e-05, 2.98402e-05, 2.44467e-05, 2.0166e-05, 1.67228e-05, 1.39319e-05, 1.1657e-05, 9.79266e-06, 8.25487e-06, 6.98235e-06
		)
}

CapTable	"metal3_C_BOTTOM_GP_32MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			8.9818e-06, 1.17347e-05, 1.4134e-05, 1.62796e-05, 1.82236e-05, 1.99937e-05, 2.16075e-05, 2.30764e-05, 2.44112e-05, 2.56237e-05, 2.67159e-05, 2.77036e-05, 2.85865e-05, 2.93828e-05, 3.00902e-05, 3.07265e-05, 
			1.12511e-05, 1.39044e-05, 1.63256e-05, 1.85443e-05, 2.0582e-05, 2.2454e-05, 2.4173e-05, 2.57417e-05, 2.71708e-05, 2.84714e-05, 2.96424e-05, 3.07064e-05, 3.1663e-05, 3.25165e-05, 3.32856e-05, 3.39733e-05, 
			1.36127e-05, 1.62238e-05, 1.86665e-05, 2.09372e-05, 2.30385e-05, 2.498e-05, 2.67692e-05, 2.84033e-05, 2.98991e-05, 3.12537e-05, 3.24856e-05, 3.35929e-05, 3.45954e-05, 3.54958e-05, 3.63027e-05, 3.70232e-05, 
			1.60431e-05, 1.86529e-05, 2.11184e-05, 2.34323e-05, 2.55835e-05, 2.75752e-05, 2.94141e-05, 3.10945e-05, 3.26375e-05, 3.40393e-05, 3.53056e-05, 3.64556e-05, 3.7491e-05, 3.842e-05, 3.92556e-05, 4.00029e-05, 
			1.85553e-05, 2.11594e-05, 2.3643e-05, 2.59847e-05, 2.81678e-05, 3.01966e-05, 3.20655e-05, 3.37846e-05, 3.53526e-05, 3.67833e-05, 3.80823e-05, 3.92572e-05, 4.03136e-05, 4.12657e-05, 4.2121e-05, 4.28878e-05
		)
}

CapTable	"metal3_C_TOP_GP_32MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.31627e-05, 1.68479e-05, 2.0113e-05, 2.30616e-05, 2.57466e-05, 2.81991e-05, 3.04389e-05, 3.24813e-05, 3.43366e-05, 3.60155e-05, 3.75339e-05, 3.88989e-05, 4.01281e-05, 4.12261e-05, 4.22112e-05, 4.3087e-05, 
			1.66054e-05, 2.02284e-05, 2.35668e-05, 2.66486e-05, 2.94917e-05, 3.21094e-05, 3.45077e-05, 3.67024e-05, 3.87009e-05, 4.0513e-05, 4.21558e-05, 4.36313e-05, 4.49586e-05, 4.61531e-05, 4.72184e-05, 4.8169e-05, 
			2.01143e-05, 2.37485e-05, 2.71582e-05, 3.03385e-05, 3.32913e-05, 3.60178e-05, 3.8524e-05, 4.08208e-05, 4.29123e-05, 4.48159e-05, 4.65344e-05, 4.80898e-05, 4.94842e-05, 5.07357e-05, 5.18563e-05, 5.28603e-05, 
			2.3712e-05, 2.73912e-05, 3.08673e-05, 3.41234e-05, 3.71563e-05, 3.99635e-05, 4.25473e-05, 4.4919e-05, 4.70777e-05, 4.90398e-05, 5.08202e-05, 5.24236e-05, 5.38666e-05, 5.51634e-05, 5.63247e-05, 5.73614e-05, 
			2.74232e-05, 3.11409e-05, 3.46705e-05, 3.79868e-05, 4.10816e-05, 4.3946e-05, 4.65891e-05, 4.9009e-05, 5.12223e-05, 5.32292e-05, 5.50474e-05, 5.66891e-05, 5.81697e-05, 5.94973e-05, 6.06866e-05, 6.17503e-05
		)
}

CapTable	"metal3_C_LATERAL_32MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000250477, 0.000143223, 0.000102481, 7.98023e-05, 6.48444e-05, 5.4e-05, 4.56681e-05, 3.90197e-05, 3.35782e-05, 2.90432e-05, 2.52174e-05, 2.19578e-05, 1.91639e-05, 1.67541e-05, 1.46698e-05, 1.28586e-05, 
			0.000264501, 0.000153763, 0.000110798, 8.66084e-05, 7.0523e-05, 5.88092e-05, 4.97853e-05, 4.25748e-05, 3.66679e-05, 3.17417e-05, 2.75845e-05, 2.40412e-05, 2.10015e-05, 1.83808e-05, 1.61103e-05, 1.41387e-05, 
			0.000272057, 0.000160069, 0.000115984, 9.09205e-05, 7.41758e-05, 6.19298e-05, 5.24737e-05, 4.49077e-05, 3.87017e-05, 3.35252e-05, 2.9152e-05, 2.54247e-05, 2.22245e-05, 1.94636e-05, 1.70719e-05, 1.49936e-05, 
			0.000276772, 0.000164235, 0.000119512, 9.39057e-05, 7.67159e-05, 6.41155e-05, 5.43673e-05, 4.65572e-05, 4.01455e-05, 3.47928e-05, 3.02698e-05, 2.64109e-05, 2.30977e-05, 2.02386e-05, 1.77598e-05, 1.56052e-05, 
			0.000279441, 0.000166998, 0.000121938, 9.59981e-05, 7.85224e-05, 6.56869e-05, 5.57411e-05, 4.77613e-05, 4.1207e-05, 3.57313e-05, 3.1101e-05, 2.71505e-05, 2.37567e-05, 2.08259e-05, 1.82847e-05, 1.60741e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_33MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			9.7736e-06, 1.2768e-05, 1.52784e-05, 1.747e-05, 1.94352e-05, 2.12267e-05, 2.28738e-05, 2.43961e-05, 2.58049e-05, 2.71103e-05, 2.83169e-05, 2.94316e-05, 3.04614e-05, 3.14072e-05, 3.22787e-05, 3.30748e-05, 
			1.19103e-05, 1.47014e-05, 1.7179e-05, 1.94094e-05, 2.14495e-05, 2.33329e-05, 2.50782e-05, 2.66995e-05, 2.82054e-05, 2.96052e-05, 3.09017e-05, 3.21002e-05, 3.32105e-05, 3.42302e-05, 3.51718e-05, 3.60366e-05, 
			1.41168e-05, 1.67897e-05, 1.92445e-05, 2.15022e-05, 2.35933e-05, 2.55404e-05, 2.73554e-05, 2.90467e-05, 3.06218e-05, 3.20884e-05, 3.34475e-05, 3.47089e-05, 3.58717e-05, 3.69479e-05, 3.79367e-05, 3.88483e-05, 
			1.63582e-05, 1.89888e-05, 2.14438e-05, 2.37341e-05, 2.58728e-05, 2.78716e-05, 2.97435e-05, 3.14921e-05, 3.31203e-05, 3.46402e-05, 3.60486e-05, 3.73561e-05, 3.85665e-05, 3.96814e-05, 4.07111e-05, 4.16584e-05, 
			1.86764e-05, 2.1259e-05, 2.37092e-05, 2.60149e-05, 2.818e-05, 3.02143e-05, 3.21222e-05, 3.39059e-05, 3.55732e-05, 3.71229e-05, 3.8568e-05, 3.9905e-05, 4.11462e-05, 4.22923e-05, 4.33466e-05, 4.43198e-05
		)
}

CapTable	"metal3_C_TOP_GP_33MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			9.59155e-06, 1.18933e-05, 1.39405e-05, 1.57976e-05, 1.75011e-05, 1.90752e-05, 2.05353e-05, 2.18909e-05, 2.31505e-05, 2.43194e-05, 2.54035e-05, 2.64074e-05, 2.73338e-05, 2.81906e-05, 2.89782e-05, 2.97059e-05, 
			1.18229e-05, 1.40218e-05, 1.60656e-05, 1.79757e-05, 1.97613e-05, 2.14305e-05, 2.29905e-05, 2.44476e-05, 2.58069e-05, 2.70709e-05, 2.8246e-05, 2.93373e-05, 3.03448e-05, 3.1279e-05, 3.21382e-05, 3.29297e-05, 
			1.39927e-05, 1.6171e-05, 1.82369e-05, 2.01948e-05, 2.20414e-05, 2.37793e-05, 2.5411e-05, 2.69404e-05, 2.83694e-05, 2.97007e-05, 3.09412e-05, 3.20913e-05, 3.316e-05, 3.41456e-05, 3.50565e-05, 3.58949e-05, 
			1.61677e-05, 1.83502e-05, 2.04405e-05, 2.24359e-05, 2.43306e-05, 2.61215e-05, 2.78064e-05, 2.93888e-05, 3.08716e-05, 3.22532e-05, 3.35437e-05, 3.47403e-05, 3.58492e-05, 3.68769e-05, 3.7825e-05, 3.86996e-05, 
			1.83897e-05, 2.05959e-05, 2.27199e-05, 2.47555e-05, 2.66945e-05, 2.85294e-05, 3.02591e-05, 3.18865e-05, 3.34097e-05, 3.48362e-05, 3.61622e-05, 3.73964e-05, 3.85399e-05, 3.95984e-05, 4.05784e-05, 4.14808e-05
		)
}

CapTable	"metal3_C_LATERAL_33MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000252676, 0.000146147, 0.000106053, 8.39324e-05, 6.9435e-05, 5.89535e-05, 5.08901e-05, 4.44232e-05, 3.90839e-05, 3.45824e-05, 3.07297e-05, 2.73945e-05, 2.44822e-05, 2.19232e-05, 1.96623e-05, 1.76575e-05, 
			0.000267643, 0.000157656, 0.000115349, 9.17135e-05, 7.60742e-05, 6.47023e-05, 5.59215e-05, 4.88628e-05, 4.30265e-05, 3.8102e-05, 3.38852e-05, 3.02335e-05, 2.7044e-05, 2.42407e-05, 2.17631e-05, 1.95654e-05, 
			0.000276158, 0.00016491, 0.000121459, 9.69177e-05, 8.05837e-05, 6.86404e-05, 5.93882e-05, 5.19351e-05, 4.57638e-05, 4.05516e-05, 3.60856e-05, 3.22157e-05, 2.88349e-05, 2.58615e-05, 2.32346e-05, 2.09022e-05, 
			0.000281814, 0.000169978, 0.000125845, 0.000100715, 8.38868e-05, 7.15417e-05, 6.19527e-05, 5.42138e-05, 4.77975e-05, 4.23738e-05, 3.77229e-05, 3.36911e-05, 3.01673e-05, 2.70684e-05, 2.43274e-05, 2.1894e-05, 
			0.000285365, 0.00017357, 0.000129046, 0.000103529, 8.63652e-05, 7.374e-05, 6.39095e-05, 5.59625e-05, 4.93668e-05, 4.37877e-05, 3.90006e-05, 3.48501e-05, 3.12201e-05, 2.80253e-05, 2.52004e-05, 2.26907e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_34MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.61479e-05, 2.01928e-05, 2.35372e-05, 2.64174e-05, 2.89634e-05, 3.1257e-05, 3.33499e-05, 3.52765e-05, 3.70615e-05, 3.87227e-05, 4.02736e-05, 4.17252e-05, 4.30862e-05, 4.43639e-05, 4.5565e-05, 4.66945e-05, 
			1.91845e-05, 2.28495e-05, 2.60539e-05, 2.89046e-05, 3.1483e-05, 3.38392e-05, 3.60121e-05, 3.8027e-05, 3.99042e-05, 4.16589e-05, 4.33029e-05, 4.48463e-05, 4.62974e-05, 4.76633e-05, 4.89502e-05, 5.01636e-05, 
			2.20857e-05, 2.55228e-05, 2.86259e-05, 3.14462e-05, 3.40334e-05, 3.64239e-05, 3.86431e-05, 4.07133e-05, 4.26506e-05, 4.44677e-05, 4.61755e-05, 4.77832e-05, 4.9298e-05, 5.07274e-05, 5.20768e-05, 5.33521e-05, 
			2.48976e-05, 2.82001e-05, 3.12325e-05, 3.40282e-05, 3.66185e-05, 3.90283e-05, 4.12801e-05, 4.33898e-05, 4.53715e-05, 4.72357e-05, 4.89923e-05, 5.06497e-05, 5.22149e-05, 5.36945e-05, 5.50942e-05, 5.64194e-05, 
			2.76769e-05, 3.08734e-05, 3.38499e-05, 3.66225e-05, 3.92112e-05, 4.16327e-05, 4.39045e-05, 4.60406e-05, 4.80522e-05, 4.99498e-05, 5.17423e-05, 5.34365e-05, 5.50398e-05, 5.6558e-05, 5.79973e-05, 5.9362e-05
		)
}

CapTable	"metal3_C_LATERAL_34MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.00025527, 0.000149634, 0.000110361, 8.90028e-05, 7.5213e-05, 6.53827e-05, 5.79119e-05, 5.19773e-05, 4.71091e-05, 4.30183e-05, 3.95165e-05, 3.64747e-05, 3.38014e-05, 3.14294e-05, 2.9308e-05, 2.73985e-05, 
			0.000271251, 0.000162188, 0.000120754, 9.79375e-05, 8.30605e-05, 7.23893e-05, 6.42449e-05, 5.77559e-05, 5.24221e-05, 4.79333e-05, 4.40868e-05, 4.07427e-05, 3.78015e-05, 3.51899e-05, 3.28526e-05, 3.07467e-05, 
			0.000280862, 0.000170569, 0.00012803, 0.000104346, 8.88082e-05, 7.75946e-05, 6.90028e-05, 6.21373e-05, 5.64814e-05, 5.17135e-05, 4.76217e-05, 4.40599e-05, 4.0924e-05, 3.81362e-05, 3.56389e-05, 3.33864e-05, 
			0.000287673, 0.000176824, 0.000133631, 0.000109384, 9.33736e-05, 8.17742e-05, 7.28559e-05, 6.57105e-05, 5.98111e-05, 5.48293e-05, 5.05474e-05, 4.68153e-05, 4.35252e-05, 4.05976e-05, 3.79718e-05, 3.56009e-05, 
			0.00029245, 0.000181656, 0.000138085, 0.000113462, 9.71218e-05, 8.5244e-05, 7.60822e-05, 6.87233e-05, 6.26367e-05, 5.74883e-05, 5.30573e-05, 4.91906e-05, 4.57777e-05, 4.27373e-05, 4.00071e-05, 3.75394e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_21MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.04752e-05, 1.41639e-05, 1.75125e-05, 2.04808e-05, 2.30397e-05, 2.52199e-05, 2.70293e-05, 2.853e-05, 2.97553e-05, 3.07552e-05, 3.15639e-05, 3.22179e-05, 3.27468e-05, 3.3164e-05, 3.35039e-05, 3.3789e-05, 
			1.4163e-05, 1.79479e-05, 2.14328e-05, 2.45362e-05, 2.72291e-05, 2.95298e-05, 3.1454e-05, 3.30442e-05, 3.43522e-05, 3.54171e-05, 3.62855e-05, 3.69784e-05, 3.75419e-05, 3.79998e-05, 3.83783e-05, 3.86733e-05, 
			1.80416e-05, 2.18841e-05, 2.54548e-05, 2.86379e-05, 3.1413e-05, 3.37738e-05, 3.57574e-05, 3.74011e-05, 3.87533e-05, 3.98584e-05, 4.07448e-05, 4.14724e-05, 4.20759e-05, 4.25498e-05, 4.29322e-05, 4.32414e-05, 
			2.2036e-05, 2.59322e-05, 2.95531e-05, 3.2791e-05, 3.56082e-05, 3.80118e-05, 4.00293e-05, 4.1706e-05, 4.30715e-05, 4.41989e-05, 4.51192e-05, 4.58781e-05, 4.64796e-05, 4.69682e-05, 4.73593e-05, 4.76759e-05, 
			2.61206e-05, 3.00533e-05, 3.37025e-05, 3.69729e-05, 3.98191e-05, 4.22476e-05, 4.42894e-05, 4.59669e-05, 4.73642e-05, 4.85263e-05, 4.94567e-05, 5.02115e-05, 5.08216e-05, 5.13163e-05, 5.17156e-05, 5.20374e-05
		)
}

CapTable	"metal3_C_TOP_GP_21MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.60427e-05, 3.51907e-05, 4.31237e-05, 4.98621e-05, 5.55001e-05, 6.01593e-05, 6.39836e-05, 6.70963e-05, 6.96202e-05, 7.16538e-05, 7.3293e-05, 7.46113e-05, 7.56693e-05, 7.65291e-05, 7.72134e-05, 7.77524e-05, 
			3.64753e-05, 4.58969e-05, 5.41044e-05, 6.10959e-05, 6.69683e-05, 7.18374e-05, 7.5844e-05, 7.91159e-05, 8.17729e-05, 8.3926e-05, 8.56616e-05, 8.70715e-05, 8.82004e-05, 8.91073e-05, 8.98267e-05, 9.04164e-05, 
			4.74112e-05, 5.69402e-05, 6.5253e-05, 7.23591e-05, 7.83354e-05, 8.3309e-05, 8.74071e-05, 9.07627e-05, 9.34943e-05, 9.57082e-05, 9.75162e-05, 9.89632e-05, 0.000100112, 0.000101055, 0.000101814, 0.000102427, 
			5.85798e-05, 6.81709e-05, 7.65358e-05, 8.36956e-05, 8.97332e-05, 9.47603e-05, 9.89137e-05, 0.000102315, 0.000105107, 0.000107361, 0.000109185, 0.000110646, 0.00011184, 0.000112799, 0.000113581, 0.000114208, 
			6.98756e-05, 7.94611e-05, 8.78468e-05, 9.50337e-05, 0.000101101, 0.000106162, 0.000110343, 0.000113801, 0.000116604, 0.00011886, 0.000120709, 0.000122206, 0.000123417, 0.000124395, 0.000125184, 0.000125824
		)
}

CapTable	"metal3_C_LATERAL_21MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.00023999, 0.000129523, 8.65181e-05, 6.24296e-05, 4.67756e-05, 3.57939e-05, 2.7762e-05, 2.17228e-05, 1.71114e-05, 1.35467e-05, 1.0769e-05, 8.59104e-06, 6.875e-06, 5.51599e-06, 4.43829e-06, 3.58058e-06, 
			0.000249446, 0.000135988, 9.12311e-05, 6.60425e-05, 4.96033e-05, 3.80402e-05, 2.95579e-05, 2.31733e-05, 1.82832e-05, 1.44962e-05, 1.15394e-05, 9.21507e-06, 7.38188e-06, 5.92897e-06, 4.77433e-06, 3.85283e-06, 
			0.000253136, 0.000139016, 9.36102e-05, 6.79239e-05, 5.11253e-05, 3.92811e-05, 3.05722e-05, 2.40032e-05, 1.8965e-05, 1.50569e-05, 1.19981e-05, 9.59362e-06, 7.69488e-06, 6.18643e-06, 4.98561e-06, 4.02696e-06, 
			0.000254753, 0.000140599, 9.49567e-05, 6.9039e-05, 5.20445e-05, 4.00453e-05, 3.12106e-05, 2.45372e-05, 1.94098e-05, 1.54285e-05, 1.23116e-05, 9.85694e-06, 7.91358e-06, 6.37077e-06, 5.13962e-06, 4.15634e-06, 
			0.000254995, 0.000141355, 9.56936e-05, 6.96858e-05, 5.25976e-05, 4.05208e-05, 3.16151e-05, 2.48745e-05, 1.96951e-05, 1.56707e-05, 1.25143e-05, 1.00259e-05, 8.0551e-06, 6.48824e-06, 5.23843e-06, 4.23843e-06
		)
}

CapTable	"metal3_C_BOTTOM_GP_22MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.21363e-05, 1.5839e-05, 1.91574e-05, 2.21727e-05, 2.49149e-05, 2.7402e-05, 2.9648e-05, 3.16677e-05, 3.34691e-05, 3.50688e-05, 3.64872e-05, 3.77333e-05, 3.88298e-05, 3.97859e-05, 4.0623e-05, 4.13515e-05, 
			1.55029e-05, 1.91929e-05, 2.26186e-05, 2.57856e-05, 2.86904e-05, 3.13405e-05, 3.3741e-05, 3.58996e-05, 3.78334e-05, 3.95513e-05, 4.10743e-05, 4.24134e-05, 4.35933e-05, 4.4626e-05, 4.55262e-05, 4.63115e-05, 
			1.90335e-05, 2.27581e-05, 2.62676e-05, 2.95343e-05, 3.25489e-05, 3.53025e-05, 3.77985e-05, 4.00494e-05, 4.20607e-05, 4.38534e-05, 4.54391e-05, 4.68404e-05, 4.80712e-05, 4.9147e-05, 5.00898e-05, 5.09107e-05, 
			2.27066e-05, 2.64854e-05, 3.00616e-05, 3.3404e-05, 3.64892e-05, 3.93145e-05, 4.18765e-05, 4.41867e-05, 4.62514e-05, 4.80933e-05, 4.97257e-05, 5.11636e-05, 5.24289e-05, 5.35383e-05, 5.45052e-05, 5.53519e-05, 
			2.65091e-05, 3.03276e-05, 3.39552e-05, 3.73476e-05, 4.04861e-05, 4.33554e-05, 4.59632e-05, 4.83098e-05, 5.04139e-05, 5.2287e-05, 5.39461e-05, 5.54124e-05, 5.67008e-05, 5.78276e-05, 5.88049e-05, 5.96774e-05
		)
}

CapTable	"metal3_C_TOP_GP_22MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.20851e-05, 1.5751e-05, 1.90137e-05, 2.19634e-05, 2.4644e-05, 2.70775e-05, 2.92767e-05, 3.12511e-05, 3.30177e-05, 3.45894e-05, 3.59768e-05, 3.72012e-05, 3.8274e-05, 3.92149e-05, 4.00329e-05, 4.07444e-05, 
			1.54794e-05, 1.91364e-05, 2.25096e-05, 2.5613e-05, 2.84638e-05, 3.10631e-05, 3.34189e-05, 3.55407e-05, 3.7438e-05, 3.91273e-05, 4.06226e-05, 4.19433e-05, 4.31004e-05, 4.4113e-05, 4.49976e-05, 4.57662e-05, 
			1.90175e-05, 2.27134e-05, 2.61771e-05, 2.93942e-05, 3.23541e-05, 3.50624e-05, 3.75209e-05, 3.97334e-05, 4.17163e-05, 4.3481e-05, 4.50464e-05, 4.64244e-05, 4.7634e-05, 4.86946e-05, 4.96181e-05, 5.04229e-05, 
			2.26891e-05, 2.64499e-05, 2.99902e-05, 3.32893e-05, 3.6334e-05, 3.91177e-05, 4.16459e-05, 4.39236e-05, 4.59667e-05, 4.7782e-05, 4.93909e-05, 5.08109e-05, 5.20569e-05, 5.31471e-05, 5.41016e-05, 5.49275e-05, 
			2.64896e-05, 3.02904e-05, 3.38893e-05, 3.72489e-05, 4.03483e-05, 4.31862e-05, 4.57618e-05, 4.80857e-05, 5.01644e-05, 5.20142e-05, 5.36552e-05, 5.50997e-05, 5.637e-05, 5.74854e-05, 5.84674e-05, 5.92973e-05
		)
}

CapTable	"metal3_C_LATERAL_22MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000248827, 0.000140982, 9.97023e-05, 7.65582e-05, 6.12192e-05, 5.00829e-05, 4.15451e-05, 3.47712e-05, 2.92753e-05, 2.47477e-05, 2.09785e-05, 1.78185e-05, 1.51534e-05, 1.28985e-05, 1.09842e-05, 9.35594e-06, 
			0.000262116, 0.00015075, 0.000107229, 8.2573e-05, 6.61168e-05, 5.41296e-05, 4.49245e-05, 3.76148e-05, 3.16806e-05, 2.67918e-05, 2.27199e-05, 1.93054e-05, 1.64254e-05, 1.39875e-05, 1.1918e-05, 1.01571e-05, 
			0.000268903, 0.000156287, 0.000111662, 8.61563e-05, 6.90728e-05, 5.65864e-05, 4.69835e-05, 3.93513e-05, 3.31531e-05, 2.80428e-05, 2.37871e-05, 2.02161e-05, 1.72045e-05, 1.46543e-05, 1.24888e-05, 1.06457e-05, 
			0.000272847, 0.000159708, 0.00011448, 8.84726e-05, 7.09838e-05, 5.81822e-05, 4.8325e-05, 4.04842e-05, 3.41126e-05, 2.88584e-05, 2.4481e-05, 2.08073e-05, 1.77079e-05, 1.5083e-05, 1.2853e-05, 1.09557e-05, 
			0.000274791, 0.00016179, 0.000116266, 8.9969e-05, 7.22356e-05, 5.92404e-05, 4.92196e-05, 4.12438e-05, 3.47594e-05, 2.94111e-05, 2.49539e-05, 2.12125e-05, 1.80553e-05, 1.53805e-05, 1.31073e-05, 1.11739e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_23MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.3256e-05, 1.71236e-05, 2.05195e-05, 2.35696e-05, 2.63386e-05, 2.88644e-05, 3.11718e-05, 3.32762e-05, 3.51924e-05, 3.69347e-05, 3.85142e-05, 3.99454e-05, 4.12354e-05, 4.23974e-05, 4.34463e-05, 4.43885e-05, 
			1.66138e-05, 2.03791e-05, 2.38281e-05, 2.6996e-05, 2.99108e-05, 3.25897e-05, 3.50503e-05, 3.73053e-05, 3.93638e-05, 4.12383e-05, 4.29413e-05, 4.44871e-05, 4.58823e-05, 4.71446e-05, 4.82791e-05, 4.93023e-05, 
			2.00799e-05, 2.38194e-05, 2.73167e-05, 3.05693e-05, 3.35821e-05, 3.63656e-05, 3.89293e-05, 4.12819e-05, 4.3437e-05, 4.54006e-05, 4.71857e-05, 4.88096e-05, 5.02796e-05, 5.16043e-05, 5.28025e-05, 5.38773e-05, 
			2.36488e-05, 2.7409e-05, 3.09499e-05, 3.4266e-05, 3.73537e-05, 4.02137e-05, 4.28526e-05, 4.52773e-05, 4.75021e-05, 4.95309e-05, 5.13808e-05, 5.30575e-05, 5.45805e-05, 5.5958e-05, 5.7196e-05, 5.83155e-05, 
			2.7336e-05, 3.11102e-05, 3.46909e-05, 3.80556e-05, 4.11954e-05, 4.41114e-05, 4.6804e-05, 4.92816e-05, 5.1556e-05, 5.36365e-05, 5.55268e-05, 5.72481e-05, 5.88056e-05, 6.02176e-05, 6.14928e-05, 6.2641e-05
		)
}

CapTable	"metal3_C_TOP_GP_23MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			8.4821e-06, 1.08776e-05, 1.29809e-05, 1.48756e-05, 1.66028e-05, 1.8185e-05, 1.96356e-05, 2.09655e-05, 2.21815e-05, 2.32896e-05, 2.42974e-05, 2.52102e-05, 2.60376e-05, 2.6785e-05, 2.74557e-05, 2.80585e-05, 
			1.05969e-05, 1.29239e-05, 1.50576e-05, 1.70275e-05, 1.88493e-05, 2.05361e-05, 2.20918e-05, 2.3521e-05, 2.4833e-05, 2.60325e-05, 2.7126e-05, 2.81174e-05, 2.90182e-05, 2.98299e-05, 3.05636e-05, 3.12225e-05, 
			1.27421e-05, 1.50529e-05, 1.72203e-05, 1.92469e-05, 2.11373e-05, 2.28956e-05, 2.45231e-05, 2.60241e-05, 2.74021e-05, 2.86651e-05, 2.98179e-05, 3.08642e-05, 3.18122e-05, 3.26731e-05, 3.34468e-05, 3.41477e-05, 
			1.49282e-05, 1.72521e-05, 1.94562e-05, 2.15327e-05, 2.34761e-05, 2.52888e-05, 2.69716e-05, 2.85262e-05, 2.99543e-05, 3.12651e-05, 3.24598e-05, 3.35485e-05, 3.45353e-05, 3.54274e-05, 3.62369e-05, 3.69626e-05, 
			1.71735e-05, 1.95126e-05, 2.17482e-05, 2.38636e-05, 2.58513e-05, 2.77062e-05, 2.94313e-05, 3.1027e-05, 3.24935e-05, 3.38367e-05, 3.50674e-05, 3.61845e-05, 3.72029e-05, 3.81208e-05, 3.89506e-05, 3.96992e-05
		)
}

CapTable	"metal3_C_LATERAL_23MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000250782, 0.000143645, 0.000102998, 8.0396e-05, 6.54973e-05, 5.46964e-05, 4.63926e-05, 3.97582e-05, 3.43169e-05, 2.97706e-05, 2.59218e-05, 2.26302e-05, 1.97955e-05, 1.73402e-05, 1.52035e-05, 1.33384e-05, 
			0.000264968, 0.000154339, 0.000111466, 8.73482e-05, 7.13168e-05, 5.964e-05, 5.06362e-05, 4.34286e-05, 3.75094e-05, 3.25594e-05, 2.83649e-05, 2.47758e-05, 2.16827e-05, 1.90013e-05, 1.66679e-05, 1.46288e-05, 
			0.000272685, 0.0001608, 0.000116799, 9.17994e-05, 7.51004e-05, 6.28801e-05, 5.34326e-05, 4.58566e-05, 3.96262e-05, 3.44108e-05, 2.99882e-05, 2.62009e-05, 2.29345e-05, 2.01024e-05, 1.76351e-05, 1.54789e-05, 
			0.000277553, 0.00016511, 0.000120461, 9.49099e-05, 7.77533e-05, 6.51657e-05, 5.54125e-05, 4.75786e-05, 4.11285e-05, 3.57246e-05, 3.11375e-05, 2.72086e-05, 2.38169e-05, 2.08743e-05, 1.83102e-05, 1.6068e-05, 
			0.000280371, 0.000168007, 0.000123005, 9.71065e-05, 7.96488e-05, 6.68117e-05, 5.68449e-05, 4.88277e-05, 4.22203e-05, 3.66799e-05, 3.19754e-05, 2.79422e-05, 2.44602e-05, 2.14372e-05, 1.88019e-05, 1.64967e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_24MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.87855e-05, 2.38483e-05, 2.81511e-05, 3.19189e-05, 3.52745e-05, 3.82945e-05, 4.10304e-05, 4.35192e-05, 4.57894e-05, 4.78653e-05, 4.97662e-05, 5.15094e-05, 5.31103e-05, 5.45818e-05, 5.5936e-05, 5.71836e-05, 
			2.28858e-05, 2.76407e-05, 3.18704e-05, 3.56695e-05, 3.91077e-05, 4.22348e-05, 4.50895e-05, 4.77006e-05, 5.00937e-05, 5.22904e-05, 5.43089e-05, 5.6166e-05, 5.78762e-05, 5.9453e-05, 6.09081e-05, 6.22521e-05, 
			2.69251e-05, 3.14958e-05, 3.56632e-05, 3.94624e-05, 4.29347e-05, 4.61177e-05, 4.90373e-05, 5.17198e-05, 5.41885e-05, 5.64613e-05, 5.85564e-05, 6.04892e-05, 6.22739e-05, 6.39234e-05, 6.5449e-05, 6.68616e-05, 
			3.09225e-05, 3.53873e-05, 3.95035e-05, 4.32936e-05, 4.67817e-05, 4.99943e-05, 5.29559e-05, 5.56859e-05, 5.82067e-05, 6.0534e-05, 6.2685e-05, 6.46741e-05, 6.65154e-05, 6.82208e-05, 6.98017e-05, 7.12683e-05, 
			3.48873e-05, 3.92566e-05, 4.33259e-05, 4.70967e-05, 5.05854e-05, 5.38112e-05, 5.67949e-05, 5.95556e-05, 6.21094e-05, 6.44742e-05, 6.66645e-05, 6.86944e-05, 7.05772e-05, 7.23244e-05, 7.39475e-05, 7.54553e-05
		)
}

CapTable	"metal3_C_LATERAL_24MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000253165, 0.000146879, 0.000107044, 8.52138e-05, 7.10369e-05, 6.09e-05, 5.31953e-05, 4.70912e-05, 4.21098e-05, 3.79535e-05, 3.44266e-05, 3.13935e-05, 2.8757e-05, 2.64447e-05, 2.4402e-05, 2.25859e-05, 
			0.000268403, 0.000158703, 0.000116727, 9.34647e-05, 7.82309e-05, 6.72844e-05, 5.89367e-05, 5.23072e-05, 4.68865e-05, 4.23566e-05, 3.85073e-05, 3.51924e-05, 3.23072e-05, 2.97734e-05, 2.75316e-05, 2.55358e-05, 
			0.000277297, 0.000166408, 0.000123373, 9.92888e-05, 8.34391e-05, 7.19916e-05, 6.32339e-05, 5.62611e-05, 5.05478e-05, 4.57649e-05, 4.16934e-05, 3.81816e-05, 3.51202e-05, 3.24276e-05, 3.00418e-05, 2.79145e-05, 
			0.000283441, 0.000172055, 0.000128423, 0.000103829, 8.75553e-05, 7.57653e-05, 6.67189e-05, 5.94991e-05, 5.3571e-05, 4.85988e-05, 4.43593e-05, 4.06965e-05, 3.74984e-05, 3.46813e-05, 3.21814e-05, 2.99491e-05, 
			0.000287645, 0.00017638, 0.000132431, 0.000107517, 9.09609e-05, 7.8934e-05, 6.96797e-05, 6.2277e-05, 5.61878e-05, 5.1072e-05, 4.67029e-05, 4.29227e-05, 3.96171e-05, 3.67013e-05, 3.41101e-05, 3.17927e-05
		)
}

CapTable	"metal3_C_BOTTOM_GPMIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.42034e-05, 3.36054e-05, 4.18336e-05, 4.86312e-05, 5.39968e-05, 5.80879e-05, 6.11241e-05, 6.33373e-05, 6.49248e-05, 6.60553e-05, 6.6854e-05, 6.74145e-05, 6.78068e-05, 6.80802e-05, 6.82708e-05, 6.84027e-05, 
			3.50105e-05, 4.482e-05, 5.33398e-05, 6.03423e-05, 6.58583e-05, 7.00564e-05, 7.31745e-05, 7.54437e-05, 7.70728e-05, 7.82323e-05, 7.90499e-05, 7.9624e-05, 8.00238e-05, 8.0302e-05, 8.04952e-05, 8.06282e-05, 
			4.63845e-05, 5.63293e-05, 6.49307e-05, 7.19892e-05, 7.75383e-05, 8.17595e-05, 8.48913e-05, 8.71714e-05, 8.88088e-05, 8.99728e-05, 9.07924e-05, 9.1366e-05, 9.17659e-05, 9.20429e-05, 9.22335e-05, 9.2365e-05, 
			5.79697e-05, 6.79635e-05, 7.65776e-05, 8.36436e-05, 8.91919e-05, 9.34094e-05, 9.65377e-05, 9.88137e-05, 0.000100446, 0.000101605, 0.00010242, 0.00010299, 0.000103386, 0.00010366, 0.000103849, 0.000103978, 
			6.9641e-05, 7.96227e-05, 8.82301e-05, 9.52789e-05, 0.000100815, 0.00010502, 0.000108136, 0.000110403, 0.000112029, 0.000113179, 0.000113989, 0.000114553, 0.000114946, 0.000115215, 0.000115399, 0.000115527
		)
}

CapTable	"metal3_C_TOP_GPMIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.398e-05, 3.31146e-05, 4.10289e-05, 4.7527e-05, 5.26297e-05, 5.65064e-05, 5.93809e-05, 6.14701e-05, 6.29738e-05, 6.4039e-05, 6.47937e-05, 6.53248e-05, 6.56963e-05, 6.59577e-05, 6.61415e-05, 6.6271e-05, 
			3.48166e-05, 4.43435e-05, 5.25346e-05, 5.92224e-05, 6.4465e-05, 6.84461e-05, 7.13917e-05, 7.35379e-05, 7.50754e-05, 7.61693e-05, 7.69435e-05, 7.74883e-05, 7.7871e-05, 7.81399e-05, 7.83294e-05, 7.84631e-05, 
			4.61751e-05, 5.58285e-05, 6.40973e-05, 7.08375e-05, 7.61088e-05, 8.01127e-05, 8.30739e-05, 8.52302e-05, 8.67782e-05, 8.78775e-05, 8.8656e-05, 8.92043e-05, 8.95902e-05, 8.98619e-05, 9.00539e-05, 9.01893e-05, 
			5.77225e-05, 6.74252e-05, 7.57122e-05, 8.24552e-05, 8.77339e-05, 9.173e-05, 9.46896e-05, 9.6844e-05, 9.83909e-05, 9.94916e-05, 0.00010027, 0.00010082, 0.000101207, 0.000101481, 0.000101674, 0.00010181, 
			6.93265e-05, 7.90105e-05, 8.72851e-05, 9.40153e-05, 9.92795e-05, 0.000103267, 0.000106218, 0.000108366, 0.000109909, 0.000111008, 0.000111786, 0.000112336, 0.000112724, 0.000112998, 0.000113193, 0.000113328
		)
}

CapTable	"metal3_C_LATERALMIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000231766, 0.000118614, 7.38784e-05, 4.90001e-05, 3.3348e-05, 2.2961e-05, 1.58995e-05, 1.10437e-05, 7.68583e-06, 5.35891e-06, 3.74342e-06, 2.62141e-06, 1.84194e-06, 1.29971e-06, 9.22188e-07, 6.58787e-07, 
			0.000237403, 0.000121785, 7.58029e-05, 5.02591e-05, 3.41886e-05, 2.35313e-05, 1.62885e-05, 1.13083e-05, 7.86547e-06, 5.4797e-06, 3.82395e-06, 2.67456e-06, 1.87639e-06, 1.32183e-06, 9.36067e-07, 6.67216e-07, 
			0.000238014, 0.000122317, 7.61483e-05, 5.04699e-05, 3.43375e-05, 2.36292e-05, 1.63518e-05, 1.13484e-05, 7.89001e-06, 5.49431e-06, 3.83221e-06, 2.67891e-06, 1.87838e-06, 1.32228e-06, 9.35529e-07, 6.66431e-07, 
			0.000237334, 0.000122075, 7.60273e-05, 5.03922e-05, 3.42722e-05, 2.35828e-05, 1.63188e-05, 1.13246e-05, 7.87313e-06, 5.48218e-06, 3.82423e-06, 2.67387e-06, 1.87518e-06, 1.32028e-06, 9.34639e-07, 6.67088e-07, 
			0.000235901, 0.000121521, 7.57088e-05, 5.01814e-05, 3.41223e-05, 2.34788e-05, 1.62439e-05, 1.12682e-05, 7.83035e-06, 5.44937e-06, 3.79858e-06, 2.65335e-06, 1.85852e-06, 1.307e-06, 9.24607e-07, 6.61e-07
		)
}

CapTable	"metal3_C_BOTTOM_GP_12MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.63778e-05, 3.58404e-05, 4.41129e-05, 5.11564e-05, 5.70424e-05, 6.18937e-05, 6.58524e-05, 6.90602e-05, 7.16491e-05, 7.37276e-05, 7.5396e-05, 7.67346e-05, 7.78039e-05, 7.8659e-05, 7.93471e-05, 7.98925e-05, 
			3.68104e-05, 4.65477e-05, 5.50955e-05, 6.23952e-05, 6.85239e-05, 7.35956e-05, 7.77491e-05, 8.11274e-05, 8.38618e-05, 8.60651e-05, 8.78383e-05, 8.92609e-05, 9.04011e-05, 9.13276e-05, 9.20481e-05, 9.26366e-05, 
			4.776e-05, 5.75939e-05, 6.62514e-05, 7.3673e-05, 7.99153e-05, 8.50978e-05, 8.93537e-05, 9.28227e-05, 9.56387e-05, 9.79091e-05, 9.97373e-05, 0.00010121, 0.000102388, 0.000103336, 0.000104097, 0.000104708, 
			5.8947e-05, 6.88432e-05, 7.75529e-05, 8.5036e-05, 9.1345e-05, 9.65908e-05, 0.000100905, 0.000104428, 0.000107287, 0.000109597, 0.000111474, 0.000112962, 0.000114169, 0.000115138, 0.000115916, 0.000116541, 
			7.02834e-05, 8.01824e-05, 8.89213e-05, 9.64376e-05, 0.000102783, 0.000108066, 0.000112415, 0.000115967, 0.000118855, 0.00012119, 0.000123077, 0.000124595, 0.000125816, 0.000126798, 0.000127587, 0.00012822
		)
}

CapTable	"metal3_C_TOP_GP_12MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.05318e-05, 1.41785e-05, 1.74671e-05, 2.03647e-05, 2.28559e-05, 2.49558e-05, 2.67015e-05, 2.81364e-05, 2.93065e-05, 3.0257e-05, 3.10254e-05, 3.16421e-05, 3.21417e-05, 3.25454e-05, 3.28659e-05, 3.31305e-05, 
			1.42721e-05, 1.79965e-05, 2.14102e-05, 2.44448e-05, 2.70666e-05, 2.92892e-05, 3.11451e-05, 3.26773e-05, 3.39315e-05, 3.49539e-05, 3.57824e-05, 3.64533e-05, 3.69961e-05, 3.74193e-05, 3.77856e-05, 3.8069e-05, 
			1.81569e-05, 2.19436e-05, 2.54346e-05, 2.85472e-05, 3.12457e-05, 3.35384e-05, 3.54593e-05, 3.70488e-05, 3.83503e-05, 3.94163e-05, 4.02844e-05, 4.0984e-05, 4.1555e-05, 4.20129e-05, 4.23823e-05, 4.26802e-05, 
			2.21371e-05, 2.59753e-05, 2.95215e-05, 3.26879e-05, 3.54377e-05, 3.77773e-05, 3.97396e-05, 4.13653e-05, 4.27032e-05, 4.37995e-05, 4.4674e-05, 4.54097e-05, 4.59937e-05, 4.64648e-05, 4.68466e-05, 4.71541e-05, 
			2.61937e-05, 3.00642e-05, 3.36468e-05, 3.68494e-05, 3.96326e-05, 4.19988e-05, 4.39885e-05, 4.5641e-05, 4.69993e-05, 4.8113e-05, 4.90178e-05, 4.97523e-05, 5.03471e-05, 5.08281e-05, 5.12166e-05, 5.15302e-05
		)
}

CapTable	"metal3_C_LATERAL_12MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000239744, 0.000129188, 8.61109e-05, 6.19758e-05, 4.62981e-05, 3.53212e-05, 2.73036e-05, 2.12948e-05, 1.67147e-05, 1.31838e-05, 1.04384e-05, 8.2899e-06, 6.60024e-06, 5.26581e-06, 4.20884e-06, 3.36844e-06, 
			0.000249285, 0.000135779, 9.09661e-05, 6.5725e-05, 4.92486e-05, 3.76723e-05, 2.91902e-05, 2.2814e-05, 1.79402e-05, 1.41727e-05, 1.1236e-05, 8.93361e-06, 7.11936e-06, 5.6856e-06, 4.54633e-06, 3.6409e-06, 
			0.000253111, 0.000138951, 9.34815e-05, 6.77244e-05, 5.08729e-05, 3.89899e-05, 3.02614e-05, 2.36857e-05, 1.86495e-05, 1.47492e-05, 1.17043e-05, 9.31367e-06, 7.42736e-06, 5.93424e-06, 4.74862e-06, 3.80486e-06, 
			0.000254879, 0.000140668, 9.49383e-05, 6.89272e-05, 5.18538e-05, 3.97975e-05, 3.09259e-05, 2.42311e-05, 1.90968e-05, 1.51151e-05, 1.20048e-05, 9.55779e-06, 7.62672e-06, 6.09693e-06, 4.88103e-06, 3.91272e-06, 
			0.000255249, 0.000141527, 9.57489e-05, 6.96265e-05, 5.24412e-05, 4.02925e-05, 3.13379e-05, 2.45715e-05, 1.9377e-05, 1.53453e-05, 1.21924e-05, 9.71242e-06, 7.7533e-06, 6.20038e-06, 4.96602e-06, 3.98254e-06
		)
}

CapTable	"metal3_C_BOTTOM_GP_13MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.77688e-05, 3.74449e-05, 4.58332e-05, 5.29499e-05, 5.89132e-05, 6.38676e-05, 6.79691e-05, 7.13613e-05, 7.41589e-05, 7.64727e-05, 7.839e-05, 7.99835e-05, 8.13112e-05, 8.24181e-05, 8.33468e-05, 8.41257e-05, 
			3.82635e-05, 4.80912e-05, 5.66645e-05, 6.3983e-05, 7.01592e-05, 7.53238e-05, 7.96296e-05, 8.32128e-05, 8.61864e-05, 8.86608e-05, 9.07241e-05, 9.24472e-05, 9.38868e-05, 9.50973e-05, 9.61142e-05, 9.69695e-05, 
			4.91625e-05, 5.89953e-05, 6.7613e-05, 7.50155e-05, 8.12945e-05, 8.65748e-05, 9.09965e-05, 9.46893e-05, 9.77764e-05, 0.000100356, 0.000102512, 0.000104322, 0.000105839, 0.000107118, 0.000108196, 0.000109108, 
			6.02084e-05, 7.00334e-05, 7.8663e-05, 8.61108e-05, 9.2453e-05, 9.78032e-05, 0.000102305, 0.000106083, 0.000109248, 0.000111901, 0.00011413, 0.000116002, 0.000117577, 0.000118907, 0.000120031, 0.000120986, 
			7.13579e-05, 8.11435e-05, 8.97754e-05, 9.72399e-05, 0.000103617, 0.000109024, 0.000113584, 0.000117418, 0.000120642, 0.00012335, 0.00012563, 0.00012755, 0.00012917, 0.000130536, 0.000131701, 0.000132685
		)
}

CapTable	"metal3_C_TOP_GP_13MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			7.04707e-06, 9.40461e-06, 1.15108e-05, 1.33672e-05, 1.49707e-05, 1.63406e-05, 1.74979e-05, 1.84675e-05, 1.92845e-05, 1.99675e-05, 2.05394e-05, 2.1016e-05, 2.14154e-05, 2.17518e-05, 2.20334e-05, 2.22712e-05, 
			9.36764e-06, 1.17229e-05, 1.38806e-05, 1.5805e-05, 1.74822e-05, 1.89309e-05, 2.01624e-05, 2.1203e-05, 2.20869e-05, 2.28288e-05, 2.34519e-05, 2.39763e-05, 2.4419e-05, 2.47903e-05, 2.51053e-05, 2.53728e-05, 
			1.17239e-05, 1.4083e-05, 1.62715e-05, 1.82355e-05, 1.99572e-05, 2.14528e-05, 2.27358e-05, 2.38296e-05, 2.47535e-05, 2.55353e-05, 2.61968e-05, 2.67543e-05, 2.72269e-05, 2.76249e-05, 2.79645e-05, 2.82522e-05, 
			1.41012e-05, 1.64754e-05, 1.86855e-05, 2.06771e-05, 2.24355e-05, 2.39718e-05, 2.52899e-05, 2.6415e-05, 2.73717e-05, 2.81857e-05, 2.88728e-05, 2.94568e-05, 2.99533e-05, 3.03726e-05, 3.073e-05, 3.10322e-05, 
			1.64988e-05, 1.88766e-05, 2.11016e-05, 2.31239e-05, 2.49154e-05, 2.64724e-05, 2.78168e-05, 2.89695e-05, 2.99515e-05, 3.07883e-05, 3.14974e-05, 3.21023e-05, 3.26154e-05, 3.30566e-05, 3.34225e-05, 3.3743e-05
		)
}

CapTable	"metal3_C_LATERAL_13MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000241368, 0.000131495, 8.90364e-05, 6.54074e-05, 5.01001e-05, 3.93553e-05, 3.14431e-05, 2.54329e-05, 2.07662e-05, 1.70837e-05, 1.4141e-05, 1.17652e-05, 9.83132e-06, 8.24521e-06, 6.93622e-06, 5.85022e-06, 
			0.000251849, 0.000139092, 9.49328e-05, 7.02055e-05, 5.40855e-05, 4.27115e-05, 3.4293e-05, 2.78653e-05, 2.28486e-05, 1.8871e-05, 1.56775e-05, 1.30876e-05, 1.09702e-05, 9.22664e-06, 7.78252e-06, 6.5798e-06, 
			0.000256689, 0.000143296, 9.847e-05, 7.31993e-05, 5.6663e-05, 4.49322e-05, 3.6212e-05, 2.95258e-05, 2.42873e-05, 2.01177e-05, 1.67578e-05, 1.40235e-05, 1.17806e-05, 9.928e-06, 8.38887e-06, 7.10371e-06, 
			0.000259493, 0.000146026, 0.000100903, 7.53304e-05, 5.85169e-05, 4.65526e-05, 3.76276e-05, 3.07619e-05, 2.53655e-05, 2.10569e-05, 1.75748e-05, 1.47336e-05, 1.23966e-05, 1.04619e-05, 8.85051e-06, 7.50223e-06, 
			0.000260864, 0.000147842, 0.000102619, 7.68776e-05, 5.98912e-05, 4.77731e-05, 3.87053e-05, 3.17092e-05, 2.61964e-05, 2.17843e-05, 1.82105e-05, 1.52877e-05, 1.28789e-05, 1.08799e-05, 9.21272e-06, 7.81408e-06
		)
}

CapTable	"metal3_C_BOTTOM_GP_14MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			3.30739e-05, 4.42084e-05, 5.37739e-05, 6.18433e-05, 6.85755e-05, 7.41598e-05, 7.87878e-05, 8.26255e-05, 8.58186e-05, 8.84862e-05, 9.0727e-05, 9.262e-05, 9.42274e-05, 9.56002e-05, 9.67809e-05, 9.78019e-05, 
			4.48633e-05, 5.59917e-05, 6.5646e-05, 7.38492e-05, 8.07484e-05, 8.65187e-05, 9.13374e-05, 9.53679e-05, 9.87477e-05, 0.000101594, 0.000104003, 0.000106053, 0.000107806, 0.000109315, 0.00011062, 0.000111755, 
			5.68837e-05, 6.78819e-05, 7.74801e-05, 8.5692e-05, 9.264e-05, 9.84923e-05, 0.000103413, 0.000107556, 0.000111052, 0.000114015, 0.000116538, 0.000118697, 0.000120556, 0.000122162, 0.000123562, 0.000124783, 
			6.88915e-05, 7.97641e-05, 8.92773e-05, 9.74618e-05, 0.000104426, 0.000110322, 0.000115307, 0.000119525, 0.000123104, 0.000126153, 0.000128765, 0.000131008, 0.00013295, 0.000134636, 0.00013611, 0.000137404, 
			8.08531e-05, 9.15757e-05, 0.00010101, 0.00010916, 0.000116127, 0.00012205, 0.000127081, 0.000131358, 0.000135005, 0.000138124, 0.000140806, 0.000143122, 0.000145132, 0.000146887, 0.000148425, 0.000149781
		)
}

CapTable	"metal3_C_LATERAL_14MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000242749, 0.000133493, 9.16417e-05, 6.85814e-05, 5.37799e-05, 4.34654e-05, 3.59037e-05, 3.01665e-05, 2.57019e-05, 2.21586e-05, 1.93004e-05, 1.69633e-05, 1.50293e-05, 1.34119e-05, 1.20463e-05, 1.08836e-05, 
			0.00025398, 0.000141925, 9.84511e-05, 7.43604e-05, 5.88019e-05, 4.79012e-05, 3.98643e-05, 3.37296e-05, 2.8926e-05, 2.50893e-05, 2.1975e-05, 1.94124e-05, 1.72788e-05, 1.54838e-05, 1.39596e-05, 1.26545e-05, 
			0.000259696, 0.000147072, 0.000102995, 7.84104e-05, 6.24723e-05, 5.12398e-05, 4.2916e-05, 3.65295e-05, 3.15021e-05, 2.74653e-05, 2.41714e-05, 2.14469e-05, 1.91671e-05, 1.72395e-05, 1.5595e-05, 1.41804e-05, 
			0.000263476, 0.00015084, 0.000106514, 8.16629e-05, 6.54713e-05, 5.40196e-05, 4.54959e-05, 3.89264e-05, 3.37321e-05, 2.95426e-05, 2.61087e-05, 2.3256e-05, 2.08586e-05, 1.88231e-05, 1.70796e-05, 1.55738e-05, 
			0.00026591, 0.000153762, 0.000109366, 8.43656e-05, 6.8011e-05, 5.64056e-05, 4.77319e-05, 4.10201e-05, 3.56926e-05, 3.13795e-05, 2.78307e-05, 2.48716e-05, 2.23753e-05, 2.02485e-05, 1.84204e-05, 1.68361e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_51MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			4.80648e-06, 6.58749e-06, 8.13477e-06, 9.46533e-06, 1.05964e-05, 1.15476e-05, 1.23666e-05, 1.30565e-05, 1.36185e-05, 1.41127e-05, 1.45303e-05, 1.48761e-05, 1.51773e-05, 1.54352e-05, 1.56539e-05, 1.58407e-05, 
			6.37045e-06, 8.12364e-06, 9.6852e-06, 1.104e-05, 1.21994e-05, 1.32046e-05, 1.40348e-05, 1.47633e-05, 1.53798e-05, 1.59041e-05, 1.6341e-05, 1.67204e-05, 1.70444e-05, 1.73207e-05, 1.75587e-05, 1.77621e-05, 
			7.98126e-06, 9.70494e-06, 1.12536e-05, 1.26309e-05, 1.38237e-05, 1.48269e-05, 1.57056e-05, 1.64555e-05, 1.70855e-05, 1.76298e-05, 1.80953e-05, 1.8493e-05, 1.88315e-05, 1.91238e-05, 1.93743e-05, 1.95909e-05, 
			9.6096e-06, 1.13134e-05, 1.28775e-05, 1.42394e-05, 1.5447e-05, 1.6491e-05, 1.73868e-05, 1.81446e-05, 1.88015e-05, 1.93626e-05, 1.98418e-05, 2.02538e-05, 2.06071e-05, 2.09113e-05, 2.11735e-05, 2.14e-05, 
			1.12228e-05, 1.29213e-05, 1.44563e-05, 1.58429e-05, 1.70555e-05, 1.80965e-05, 1.90031e-05, 1.97812e-05, 2.04485e-05, 2.10204e-05, 2.15109e-05, 2.1933e-05, 2.22969e-05, 2.26092e-05, 2.30084e-05, 2.32161e-05
		)
}

CapTable	"metal4_C_TOP_GP_51MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.8783e-05, 3.83542e-05, 4.6591e-05, 5.35645e-05, 5.94153e-05, 6.42943e-05, 6.83744e-05, 7.17767e-05, 7.46103e-05, 7.69975e-05, 7.89998e-05, 8.06853e-05, 8.21136e-05, 8.33253e-05, 8.43578e-05, 8.52401e-05, 
			3.94904e-05, 4.91778e-05, 5.75744e-05, 6.4728e-05, 7.07663e-05, 7.58503e-05, 8.01092e-05, 8.37011e-05, 8.67222e-05, 8.92674e-05, 9.14163e-05, 9.32391e-05, 9.47893e-05, 9.61121e-05, 9.72423e-05, 9.82133e-05, 
			5.05174e-05, 6.01965e-05, 6.86159e-05, 7.58354e-05, 8.19636e-05, 8.71371e-05, 9.15221e-05, 9.5221e-05, 9.83463e-05, 0.000100996, 0.000103245, 0.00010516, 0.000106794, 0.000108192, 0.000109393, 0.000110428, 
			6.16497e-05, 7.13052e-05, 7.97298e-05, 8.69617e-05, 9.31451e-05, 9.83962e-05, 0.000102848, 0.000106622, 0.000109826, 0.000112549, 0.000114872, 0.000116852, 0.000118549, 0.000120006, 0.000121264, 0.000122346, 
			7.28255e-05, 8.24319e-05, 9.08333e-05, 9.80942e-05, 0.000104302, 0.000109593, 0.000114096, 0.000117927, 0.000121191, 0.000123971, 0.000126345, 0.000128379, 0.000130127, 0.000131632, 0.000132793, 0.000133951
		)
}

CapTable	"metal4_C_LATERAL_51MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000242285, 0.000132779, 9.0674e-05, 6.73571e-05, 5.23049e-05, 4.17654e-05, 3.39736e-05, 2.80323e-05, 2.34198e-05, 1.97204e-05, 1.67377e-05, 1.43138e-05, 1.23049e-05, 1.06359e-05, 9.23866e-06, 8.0614e-06, 
			0.000253046, 0.000140654, 9.68627e-05, 7.24752e-05, 5.66517e-05, 4.54889e-05, 3.72508e-05, 3.0904e-05, 2.59224e-05, 2.19414e-05, 1.87246e-05, 1.60773e-05, 1.38859e-05, 1.20569e-05, 1.05196e-05, 9.21923e-06, 
			0.00025817, 0.000145151, 0.000100733, 7.58178e-05, 5.95822e-05, 4.81146e-05, 3.95497e-05, 3.2961e-05, 2.77788e-05, 2.36092e-05, 2.02165e-05, 1.74243e-05, 1.51045e-05, 1.31616e-05, 1.1523e-05, 1.01325e-05, 
			0.000261261, 0.000148205, 0.000103491, 7.8331e-05, 6.18292e-05, 5.01066e-05, 4.13513e-05, 3.46e-05, 2.92507e-05, 2.49442e-05, 2.14284e-05, 1.85259e-05, 1.61072e-05, 1.40758e-05, 1.23562e-05, 1.08958e-05, 
			0.000262983, 0.00015038, 0.000105615, 8.02635e-05, 6.36079e-05, 5.17537e-05, 4.28597e-05, 3.59696e-05, 3.05048e-05, 2.60931e-05, 2.2482e-05, 1.94926e-05, 1.69952e-05, 1.48926e-05, 1.312e-05, 1.15966e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_52MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			5.83852e-06, 7.72096e-06, 9.29964e-06, 1.06771e-05, 1.19075e-05, 1.3022e-05, 1.40383e-05, 1.49683e-05, 1.58191e-05, 1.65978e-05, 1.73138e-05, 1.7964e-05, 1.85641e-05, 1.91099e-05, 1.96024e-05, 2.00562e-05, 
			7.19323e-06, 8.97004e-06, 1.0542e-05, 1.19494e-05, 1.32296e-05, 1.43996e-05, 1.54734e-05, 1.64619e-05, 1.73678e-05, 1.8203e-05, 1.89657e-05, 1.96687e-05, 2.0305e-05, 2.08928e-05, 2.14294e-05, 2.1913e-05, 
			8.59981e-06, 1.03158e-05, 1.18827e-05, 1.33133e-05, 1.46253e-05, 1.58333e-05, 1.69464e-05, 1.79748e-05, 1.89194e-05, 1.97937e-05, 2.05944e-05, 2.1325e-05, 2.19994e-05, 2.26153e-05, 2.31749e-05, 2.36895e-05, 
			1.00317e-05, 1.17307e-05, 1.33008e-05, 1.47485e-05, 1.60901e-05, 1.73284e-05, 1.8476e-05, 1.95341e-05, 2.05136e-05, 2.141e-05, 2.22396e-05, 2.30026e-05, 2.36966e-05, 2.43366e-05, 2.4922e-05, 2.5456e-05, 
			1.1492e-05, 1.31663e-05, 1.47359e-05, 1.61947e-05, 1.75526e-05, 1.88096e-05, 1.99793e-05, 2.10604e-05, 2.20556e-05, 2.29783e-05, 2.38267e-05, 2.46031e-05, 2.53199e-05, 2.59765e-05, 2.65779e-05, 2.71251e-05
		)
}

CapTable	"metal4_C_TOP_GP_52MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.47614e-05, 1.86282e-05, 2.20279e-05, 2.50817e-05, 2.78568e-05, 3.03924e-05, 3.27172e-05, 3.4849e-05, 3.68052e-05, 3.85981e-05, 4.02375e-05, 4.1738e-05, 4.31042e-05, 4.43535e-05, 4.54926e-05, 4.65289e-05, 
			1.8368e-05, 2.2107e-05, 2.55347e-05, 2.86923e-05, 3.1606e-05, 3.4296e-05, 3.6779e-05, 3.90663e-05, 4.11734e-05, 4.31079e-05, 4.48839e-05, 4.65094e-05, 4.8e-05, 4.93603e-05, 5.06012e-05, 5.17358e-05, 
			2.19699e-05, 2.56748e-05, 2.91387e-05, 3.23716e-05, 3.53792e-05, 3.81731e-05, 4.07625e-05, 4.31553e-05, 4.53641e-05, 4.73952e-05, 4.92642e-05, 5.09804e-05, 5.25514e-05, 5.3991e-05, 5.53061e-05, 5.65088e-05, 
			2.56147e-05, 2.93251e-05, 3.28266e-05, 3.61181e-05, 3.91956e-05, 4.20647e-05, 4.47285e-05, 4.71976e-05, 4.94779e-05, 5.1586e-05, 5.35225e-05, 5.53012e-05, 5.69367e-05, 5.84328e-05, 5.98042e-05, 6.10564e-05, 
			2.93477e-05, 3.30728e-05, 3.66135e-05, 3.99558e-05, 4.30897e-05, 4.6018e-05, 4.87413e-05, 5.12706e-05, 5.36123e-05, 5.5773e-05, 5.77661e-05, 5.95979e-05, 6.12822e-05, 6.28256e-05, 6.42383e-05, 6.55355e-05
		)
}

CapTable	"metal4_C_LATERAL_52MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.00025171, 0.000144929, 0.000104624, 8.2341e-05, 6.77294e-05, 5.7179e-05, 4.90864e-05, 4.2625e-05, 3.73189e-05, 3.28736e-05, 2.90923e-05, 2.5843e-05, 2.30231e-05, 2.05598e-05, 1.84005e-05, 1.64928e-05, 
			0.000266282, 0.000156038, 0.000113531, 8.97515e-05, 7.40202e-05, 6.26023e-05, 5.38154e-05, 4.67825e-05, 4.09993e-05, 3.61475e-05, 3.202e-05, 2.84655e-05, 2.53833e-05, 2.26857e-05, 2.03158e-05, 1.82277e-05, 
			0.000274434, 0.000162948, 0.000119325, 9.46686e-05, 7.82718e-05, 6.631e-05, 5.70772e-05, 4.96711e-05, 4.35725e-05, 3.84485e-05, 3.40824e-05, 3.03238e-05, 2.70547e-05, 2.41951e-05, 2.16842e-05, 1.94615e-05, 
			0.000279766, 0.000167729, 0.000123459, 9.82491e-05, 8.13897e-05, 6.90545e-05, 5.95079e-05, 5.18385e-05, 4.55095e-05, 4.01898e-05, 3.56492e-05, 3.17341e-05, 2.83326e-05, 2.53512e-05, 2.27266e-05, 2.0407e-05, 
			0.000283061, 0.000171103, 0.000126475, 0.000100909, 8.3739e-05, 7.11463e-05, 6.13754e-05, 5.35095e-05, 4.70142e-05, 4.1543e-05, 3.68714e-05, 3.28436e-05, 2.93336e-05, 2.6259e-05, 2.35509e-05, 2.11541e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_53MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.36878e-05, 1.68139e-05, 1.93175e-05, 2.14175e-05, 2.32396e-05, 2.486e-05, 2.63287e-05, 2.76788e-05, 2.89334e-05, 3.01087e-05, 3.12163e-05, 3.22653e-05, 3.32621e-05, 3.42123e-05, 3.51197e-05, 3.59876e-05, 
			1.58886e-05, 1.86276e-05, 2.09565e-05, 2.29876e-05, 2.47981e-05, 2.64394e-05, 2.79489e-05, 2.93516e-05, 3.0666e-05, 3.19052e-05, 3.30791e-05, 3.41958e-05, 3.52605e-05, 3.62782e-05, 3.72524e-05, 3.81866e-05, 
			1.78993e-05, 2.03931e-05, 2.25947e-05, 2.45654e-05, 2.63575e-05, 2.80058e-05, 2.95388e-05, 3.09752e-05, 3.23298e-05, 3.36134e-05, 3.48349e-05, 3.60001e-05, 3.71143e-05, 3.81818e-05, 3.92057e-05, 4.01891e-05, 
			1.97746e-05, 2.21119e-05, 2.4222e-05, 2.61484e-05, 2.79243e-05, 2.95762e-05, 3.11256e-05, 3.25864e-05, 3.39716e-05, 3.52898e-05, 3.65479e-05, 3.77514e-05, 3.89046e-05, 4.00116e-05, 4.10751e-05, 4.20973e-05, 
			2.15806e-05, 2.38018e-05, 2.58474e-05, 2.77408e-05, 2.9506e-05, 3.11615e-05, 3.27241e-05, 3.42054e-05, 3.56166e-05, 3.69625e-05, 3.82509e-05, 3.9486e-05, 4.06717e-05, 4.18114e-05, 4.29078e-05, 4.3963e-05
		)
}

CapTable	"metal4_C_LATERAL_53MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.00025726, 0.000152256, 0.00011353, 9.26556e-05, 7.92912e-05, 6.98328e-05, 6.26842e-05, 5.70257e-05, 5.23914e-05, 4.84957e-05, 4.5154e-05, 4.22404e-05, 3.96671e-05, 3.73693e-05, 3.52995e-05, 3.34213e-05, 
			0.000273863, 0.000165417, 0.000124532, 0.0001022, 8.77451e-05, 7.74388e-05, 6.9606e-05, 6.33801e-05, 5.82651e-05, 5.39557e-05, 5.0253e-05, 4.70207e-05, 4.41634e-05, 4.16107e-05, 3.93105e-05, 3.72225e-05, 
			0.000284113, 0.000174422, 0.000132418, 0.000109201, 9.4067e-05, 8.31976e-05, 7.48957e-05, 6.82714e-05, 6.28131e-05, 5.82038e-05, 5.42359e-05, 5.07679e-05, 4.76988e-05, 4.49547e-05, 4.24805e-05, 4.02335e-05, 
			0.000291566, 0.000181296, 0.000138612, 0.000114805, 9.91698e-05, 8.78873e-05, 7.92326e-05, 7.23034e-05, 6.65784e-05, 6.17337e-05, 5.75564e-05, 5.39005e-05, 5.06619e-05, 4.77639e-05, 4.51492e-05, 4.27736e-05, 
			0.000296967, 0.000186717, 0.000143617, 0.000119398, 0.000103398, 9.1803e-05, 8.28736e-05, 7.57023e-05, 6.97635e-05, 6.47287e-05, 6.03811e-05, 5.65715e-05, 5.31934e-05, 5.01684e-05, 4.74373e-05, 4.49547e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_41MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			5.49685e-06, 7.48135e-06, 9.21721e-06, 1.07244e-05, 1.20115e-05, 1.30982e-05, 1.40336e-05, 1.48004e-05, 1.54691e-05, 1.60313e-05, 1.6506e-05, 1.69007e-05, 1.72406e-05, 1.75286e-05, 1.77742e-05, 1.79851e-05, 
			7.28101e-06, 9.23422e-06, 1.09881e-05, 1.25383e-05, 1.38619e-05, 1.5013e-05, 1.59705e-05, 1.6806e-05, 1.75121e-05, 1.81028e-05, 1.8612e-05, 1.90429e-05, 1.94103e-05, 1.97249e-05, 1.99904e-05, 2.02186e-05, 
			9.11757e-06, 1.10486e-05, 1.27994e-05, 1.43655e-05, 1.57064e-05, 1.6886e-05, 1.78949e-05, 1.87558e-05, 1.94804e-05, 2.01046e-05, 2.06354e-05, 2.10883e-05, 2.1476e-05, 2.18038e-05, 2.20866e-05, 2.23291e-05, 
			1.09704e-05, 1.28841e-05, 1.46521e-05, 1.62083e-05, 1.75914e-05, 1.87888e-05, 1.98089e-05, 2.06917e-05, 2.14441e-05, 2.20872e-05, 2.2638e-05, 2.31049e-05, 2.35059e-05, 2.38496e-05, 2.42122e-05, 2.44455e-05, 
			1.2817e-05, 1.47049e-05, 1.64708e-05, 1.80524e-05, 1.94421e-05, 2.06411e-05, 2.16833e-05, 2.25786e-05, 2.33444e-05, 2.40019e-05, 2.45633e-05, 2.50443e-05, 2.54565e-05, 2.58643e-05, 2.61516e-05, 2.64e-05
		)
}

CapTable	"metal4_C_TOP_GP_41MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.8268e-05, 3.77195e-05, 4.58542e-05, 5.27385e-05, 5.85126e-05, 6.333e-05, 6.73496e-05, 7.06919e-05, 7.34883e-05, 7.58257e-05, 7.77812e-05, 7.94252e-05, 8.08107e-05, 8.19824e-05, 8.29764e-05, 8.38202e-05, 
			3.88528e-05, 4.84339e-05, 5.6736e-05, 6.3799e-05, 6.9766e-05, 7.47815e-05, 7.89881e-05, 8.25192e-05, 8.54834e-05, 8.79751e-05, 9.00745e-05, 9.18477e-05, 9.33493e-05, 9.46232e-05, 9.57105e-05, 9.66388e-05, 
			4.97685e-05, 5.93446e-05, 6.76755e-05, 7.48104e-05, 8.0857e-05, 8.59762e-05, 9.02947e-05, 9.3931e-05, 9.69996e-05, 9.95908e-05, 0.000101784, 0.000103644, 0.000105223, 0.000106571, 0.000107723, 0.000108711, 
			6.0795e-05, 7.03546e-05, 7.8687e-05, 8.58454e-05, 9.19507e-05, 9.71299e-05, 0.000101515, 0.000105226, 0.000108367, 0.000111029, 0.000113288, 0.000115211, 0.00011685, 0.000118252, 0.000119383, 0.000120439, 
			7.18686e-05, 8.1372e-05, 8.9693e-05, 9.68686e-05, 0.000102999, 0.000108219, 0.000112652, 0.000116416, 0.000119613, 0.000122326, 0.000124637, 0.000126609, 0.000128295, 0.000129684, 0.000130945, 0.000132034
		)
}

CapTable	"metal4_C_LATERAL_41MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000242143, 0.000132582, 9.04207e-05, 6.70511e-05, 5.19542e-05, 4.13755e-05, 3.35582e-05, 2.76274e-05, 2.29715e-05, 1.92739e-05, 1.62988e-05, 1.38831e-05, 1.1891e-05, 1.02412e-05, 8.86528e-06, 7.71065e-06, 
			0.000252834, 0.000140382, 9.65305e-05, 7.20812e-05, 5.62069e-05, 4.50076e-05, 3.67334e-05, 3.0374e-05, 2.5389e-05, 2.14204e-05, 1.82029e-05, 1.55724e-05, 1.34021e-05, 1.15974e-05, 1.00859e-05, 8.81288e-06, 
			0.000257876, 0.000144793, 0.000100308, 7.53371e-05, 5.90822e-05, 4.75429e-05, 3.89573e-05, 3.23591e-05, 2.71725e-05, 2.30122e-05, 1.96353e-05, 1.68647e-05, 1.45705e-05, 1.26562e-05, 1.10482e-05, 9.68959e-06, 
			0.000260887, 0.000147764, 0.00010299, 7.77661e-05, 6.12236e-05, 4.9472e-05, 4.07077e-05, 3.39387e-05, 2.85946e-05, 2.43018e-05, 2.08068e-05, 1.79301e-05, 1.55415e-05, 1.3543e-05, 1.18648e-05, 1.04376e-05, 
			0.000262525, 0.000149886, 0.000105034, 7.96335e-05, 6.29408e-05, 5.10571e-05, 4.21514e-05, 3.52607e-05, 2.98055e-05, 2.54121e-05, 2.18257e-05, 1.88667e-05, 1.64038e-05, 1.43423e-05, 1.25976e-05, 1.11154e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_42MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			6.46968e-06, 8.58217e-06, 1.0361e-05, 1.19136e-05, 1.33015e-05, 1.45582e-05, 1.57051e-05, 1.6755e-05, 1.77137e-05, 1.85885e-05, 1.93922e-05, 2.01206e-05, 2.07871e-05, 2.13882e-05, 2.19389e-05, 2.24378e-05, 
			7.98724e-06, 9.99043e-06, 1.1763e-05, 1.33547e-05, 1.48e-05, 1.61226e-05, 1.73367e-05, 1.84478e-05, 1.94719e-05, 2.04077e-05, 2.12659e-05, 2.20453e-05, 2.27617e-05, 2.34124e-05, 2.40053e-05, 2.45383e-05, 
			9.57148e-06, 1.15121e-05, 1.32829e-05, 1.49002e-05, 1.6386e-05, 1.77528e-05, 1.9011e-05, 2.01724e-05, 2.12367e-05, 2.22164e-05, 2.31099e-05, 2.3931e-05, 2.46801e-05, 2.53604e-05, 2.59813e-05, 2.65462e-05, 
			1.11949e-05, 1.31159e-05, 1.48946e-05, 1.65367e-05, 1.80517e-05, 1.94565e-05, 2.07524e-05, 2.19489e-05, 2.3046e-05, 2.40596e-05, 2.49876e-05, 2.58386e-05, 2.66105e-05, 2.73178e-05, 2.7962e-05, 2.85471e-05, 
			1.28482e-05, 1.4746e-05, 1.65259e-05, 1.81793e-05, 1.97187e-05, 2.11431e-05, 2.2463e-05, 2.36792e-05, 2.48037e-05, 2.58372e-05, 2.67838e-05, 2.76522e-05, 2.84475e-05, 2.91702e-05, 2.98293e-05, 3.04296e-05
		)
}

CapTable	"metal4_C_TOP_GP_42MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.4439e-05, 1.82128e-05, 2.15508e-05, 2.4563e-05, 2.73072e-05, 2.98188e-05, 3.21212e-05, 3.42315e-05, 3.61657e-05, 3.79364e-05, 3.95491e-05, 4.10226e-05, 4.23629e-05, 4.35835e-05, 4.46895e-05, 4.56933e-05, 
			1.80234e-05, 2.16893e-05, 2.50695e-05, 2.81929e-05, 3.10823e-05, 3.37511e-05, 3.62138e-05, 3.8485e-05, 4.05683e-05, 4.24795e-05, 4.42297e-05, 4.5829e-05, 4.72862e-05, 4.86141e-05, 4.98192e-05, 5.09181e-05, 
			2.16104e-05, 2.52601e-05, 2.8687e-05, 3.18936e-05, 3.48811e-05, 3.76574e-05, 4.02298e-05, 4.26019e-05, 4.47888e-05, 4.67986e-05, 4.86407e-05, 5.03252e-05, 5.1863e-05, 5.32656e-05, 5.45433e-05, 5.5705e-05, 
			2.52496e-05, 2.89177e-05, 3.23895e-05, 3.5659e-05, 3.87235e-05, 4.15745e-05, 4.42214e-05, 4.6672e-05, 4.89331e-05, 5.10118e-05, 5.29197e-05, 5.46638e-05, 5.62648e-05, 5.77223e-05, 5.90521e-05, 6.02612e-05, 
			2.8988e-05, 3.26815e-05, 3.61998e-05, 3.95258e-05, 4.2645e-05, 4.55583e-05, 4.8269e-05, 5.0779e-05, 5.30964e-05, 5.52299e-05, 5.71903e-05, 5.89882e-05, 6.06326e-05, 6.21353e-05, 6.35058e-05, 6.47549e-05
		)
}

CapTable	"metal4_C_LATERAL_42MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000251458, 0.000144583, 0.000104188, 8.18217e-05, 6.71349e-05, 5.65188e-05, 4.83701e-05, 4.18614e-05, 3.65184e-05, 3.20454e-05, 2.8246e-05, 2.49858e-05, 2.21621e-05, 1.97049e-05, 1.75511e-05, 1.56575e-05, 
			0.000265927, 0.000155581, 0.000112976, 8.9107e-05, 7.32959e-05, 6.18095e-05, 5.29647e-05, 4.5886e-05, 4.00663e-05, 3.51912e-05, 3.10451e-05, 2.74867e-05, 2.44012e-05, 2.17117e-05, 1.9356e-05, 1.72854e-05, 
			0.000273962, 0.000162368, 0.000118644, 9.38956e-05, 7.74178e-05, 6.53871e-05, 5.60975e-05, 4.86475e-05, 4.25162e-05, 3.73699e-05, 3.29948e-05, 2.92301e-05, 2.59673e-05, 2.31235e-05, 2.06275e-05, 1.84299e-05, 
			0.000279166, 0.000167018, 0.000122646, 9.73442e-05, 8.04063e-05, 6.80045e-05, 5.84065e-05, 5.06938e-05, 4.43388e-05, 3.89985e-05, 3.44511e-05, 3.05392e-05, 2.71469e-05, 2.4184e-05, 2.15842e-05, 1.92945e-05, 
			0.00028233, 0.000170261, 0.000125532, 9.98768e-05, 8.26318e-05, 6.9977e-05, 6.01568e-05, 5.22579e-05, 4.57363e-05, 4.02541e-05, 3.55841e-05, 3.15603e-05, 2.80673e-05, 2.50167e-05, 2.23381e-05, 1.99774e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_43MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.43241e-05, 1.76851e-05, 2.0399e-05, 2.26905e-05, 2.46904e-05, 2.64775e-05, 2.81025e-05, 2.95992e-05, 3.09914e-05, 3.22953e-05, 3.35231e-05, 3.46837e-05, 3.57843e-05, 3.68301e-05, 3.78257e-05, 3.87745e-05, 
			1.67128e-05, 1.96883e-05, 2.22348e-05, 2.44665e-05, 2.64657e-05, 2.8285e-05, 2.99614e-05, 3.15214e-05, 3.29831e-05, 3.43604e-05, 3.56635e-05, 3.68997e-05, 3.80757e-05, 3.91963e-05, 4.02653e-05, 4.12861e-05, 
			1.89221e-05, 2.1653e-05, 2.40769e-05, 2.62576e-05, 2.82467e-05, 3.00802e-05, 3.17883e-05, 3.33885e-05, 3.48975e-05, 3.63256e-05, 3.76819e-05, 3.89725e-05, 4.0203e-05, 4.13781e-05, 4.2501e-05, 4.35751e-05, 
			2.10031e-05, 2.35824e-05, 2.59209e-05, 2.80627e-05, 3.00413e-05, 3.18862e-05, 3.36153e-05, 3.5247e-05, 3.67914e-05, 3.82587e-05, 3.96562e-05, 4.09894e-05, 4.2263e-05, 4.3481e-05, 4.46468e-05, 4.57632e-05, 
			2.3016e-05, 2.54814e-05, 2.77593e-05, 2.98714e-05, 3.1844e-05, 3.36958e-05, 3.54419e-05, 3.70967e-05, 3.86698e-05, 4.01682e-05, 4.15984e-05, 4.29654e-05, 4.42734e-05, 4.55261e-05, 4.67265e-05, 4.78772e-05
		)
}

CapTable	"metal4_C_LATERAL_43MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000256733, 0.000151572, 0.000112709, 9.17133e-05, 7.82405e-05, 6.86847e-05, 6.14487e-05, 5.57122e-05, 5.10079e-05, 4.70507e-05, 4.36548e-05, 4.06944e-05, 3.80806e-05, 3.57489e-05, 3.3651e-05, 3.17501e-05, 
			0.000273195, 0.000164594, 0.000123571, 0.000101116, 8.65511e-05, 7.61462e-05, 6.82254e-05, 6.1921e-05, 5.67367e-05, 5.23664e-05, 4.86106e-05, 4.53331e-05, 4.24372e-05, 3.98525e-05, 3.75264e-05, 3.54182e-05, 
			0.0002833, 0.000173458, 0.000131318, 0.00010798, 9.27364e-05, 8.177e-05, 7.33818e-05, 6.66813e-05, 6.11558e-05, 5.64881e-05, 5.247e-05, 4.89592e-05, 4.58545e-05, 4.30813e-05, 4.05842e-05, 3.83197e-05, 
			0.000290608, 0.000180192, 0.000137374, 0.000113448, 9.77069e-05, 8.63302e-05, 7.75923e-05, 7.05898e-05, 6.4801e-05, 5.99012e-05, 5.56771e-05, 5.19817e-05, 4.87105e-05, 4.57867e-05, 4.31521e-05, 4.0762e-05, 
			0.000295871, 0.000185479, 0.000142253, 0.000117919, 0.000101818, 9.01339e-05, 8.11259e-05, 7.38862e-05, 6.78884e-05, 6.2803e-05, 5.84128e-05, 5.45681e-05, 5.11617e-05, 4.81146e-05, 4.53673e-05, 4.28738e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_31MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			6.93231e-06, 9.28924e-06, 1.13972e-05, 1.32631e-05, 1.48738e-05, 1.62459e-05, 1.74219e-05, 1.83975e-05, 1.9233e-05, 1.9934e-05, 2.05164e-05, 2.10106e-05, 2.14276e-05, 2.17746e-05, 2.2069e-05, 2.23184e-05, 
			9.13794e-06, 1.14641e-05, 1.3601e-05, 1.55047e-05, 1.71832e-05, 1.86129e-05, 1.98514e-05, 2.09015e-05, 2.17834e-05, 2.25332e-05, 2.31677e-05, 2.37016e-05, 2.41489e-05, 2.45309e-05, 2.48559e-05, 2.51581e-05, 
			1.13708e-05, 1.36799e-05, 1.58211e-05, 1.77609e-05, 1.94531e-05, 2.09361e-05, 2.22072e-05, 2.32878e-05, 2.42095e-05, 2.4993e-05, 2.56529e-05, 2.62131e-05, 2.66899e-05, 2.71266e-05, 2.74574e-05, 2.77413e-05, 
			1.36008e-05, 1.5908e-05, 1.80483e-05, 2.00039e-05, 2.17318e-05, 2.32303e-05, 2.45275e-05, 2.56401e-05, 2.6586e-05, 2.73869e-05, 2.80733e-05, 2.86575e-05, 2.91718e-05, 2.95846e-05, 2.994e-05, 3.02479e-05, 
			1.58334e-05, 1.81077e-05, 2.02611e-05, 2.22187e-05, 2.39524e-05, 2.54705e-05, 2.67859e-05, 2.791e-05, 2.88737e-05, 2.96978e-05, 3.04232e-05, 3.10093e-05, 3.15142e-05, 3.19496e-05, 3.23265e-05, 3.26593e-05
		)
}

CapTable	"metal4_C_TOP_GP_31MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.72116e-05, 3.661e-05, 4.46763e-05, 5.14669e-05, 5.71396e-05, 6.18506e-05, 6.57591e-05, 6.89995e-05, 7.16842e-05, 7.39144e-05, 7.57689e-05, 7.73146e-05, 7.86046e-05, 7.96899e-05, 8.06008e-05, 8.13671e-05, 
			3.76081e-05, 4.71889e-05, 5.54523e-05, 6.24351e-05, 6.82972e-05, 7.31926e-05, 7.7273e-05, 8.06681e-05, 8.35001e-05, 8.58613e-05, 8.78317e-05, 8.94837e-05, 9.08747e-05, 9.20416e-05, 9.30251e-05, 9.38315e-05, 
			4.84288e-05, 5.80462e-05, 6.6366e-05, 7.34314e-05, 7.93783e-05, 8.4363e-05, 8.85357e-05, 9.20232e-05, 9.4939e-05, 9.73779e-05, 9.94285e-05, 0.00010115, 0.000102598, 0.000103789, 0.00010484, 0.000105729, 
			5.94425e-05, 6.9092e-05, 7.74454e-05, 8.45555e-05, 9.05566e-05, 9.56045e-05, 9.98381e-05, 0.000103384, 0.00010636, 0.000108863, 0.000110963, 0.000112729, 0.000114205, 0.000115477, 0.000116555, 0.000117469, 
			7.0526e-05, 8.01545e-05, 8.85057e-05, 9.56307e-05, 0.000101655, 0.000106728, 0.00011099, 0.000114577, 0.000117593, 0.000120124, 0.000122235, 0.000124052, 0.000125584, 0.000126877, 0.000127974, 0.000128898
		)
}

CapTable	"metal4_C_LATERAL_31MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000241832, 0.000132051, 8.96979e-05, 6.61714e-05, 5.09531e-05, 4.02837e-05, 3.24124e-05, 2.64388e-05, 2.17793e-05, 1.80941e-05, 1.5147e-05, 1.27574e-05, 1.08069e-05, 9.20237e-06, 7.87412e-06, 6.76824e-06, 
			0.000252346, 0.000139653, 9.55951e-05, 7.09985e-05, 5.49906e-05, 4.37296e-05, 3.53856e-05, 2.90146e-05, 2.40429e-05, 2.00908e-05, 1.69127e-05, 1.43298e-05, 1.22122e-05, 1.04638e-05, 9.01051e-06, 7.7969e-06, 
			0.000257179, 0.000143836, 9.91332e-05, 7.40042e-05, 5.76259e-05, 4.60249e-05, 3.74121e-05, 3.08175e-05, 2.56454e-05, 2.15252e-05, 1.81995e-05, 1.5488e-05, 1.32579e-05, 1.14117e-05, 9.86983e-06, 8.57716e-06, 
			0.000259948, 0.000146537, 0.000101555, 7.61466e-05, 5.95041e-05, 4.77015e-05, 3.89105e-05, 3.21552e-05, 2.68464e-05, 2.26046e-05, 1.91725e-05, 1.63665e-05, 1.40525e-05, 1.21309e-05, 1.05238e-05, 9.17328e-06, 
			0.000261337, 0.000148405, 0.000103338, 7.77918e-05, 6.10136e-05, 4.90816e-05, 4.01747e-05, 3.33112e-05, 2.7905e-05, 2.35761e-05, 2.0066e-05, 1.71857e-05, 1.48066e-05, 1.28276e-05, 1.11687e-05, 9.77117e-06
		)
}

CapTable	"metal4_C_BOTTOM_GP_32MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			7.97654e-06, 1.04907e-05, 1.26491e-05, 1.45603e-05, 1.62813e-05, 1.78466e-05, 1.92741e-05, 2.05753e-05, 2.17614e-05, 2.28439e-05, 2.38216e-05, 2.47131e-05, 2.55114e-05, 2.62381e-05, 2.68917e-05, 2.74737e-05, 
			9.91956e-06, 1.23229e-05, 1.44894e-05, 1.64571e-05, 1.82576e-05, 1.99084e-05, 2.14215e-05, 2.28083e-05, 2.40785e-05, 2.52333e-05, 2.62862e-05, 2.72353e-05, 2.8102e-05, 2.88766e-05, 2.95814e-05, 3.02142e-05, 
			1.19429e-05, 1.42903e-05, 1.64632e-05, 1.84697e-05, 2.03208e-05, 2.20283e-05, 2.36047e-05, 2.50464e-05, 2.63726e-05, 2.75764e-05, 2.86789e-05, 2.96793e-05, 3.05798e-05, 3.1398e-05, 3.21356e-05, 3.2799e-05, 
			1.40199e-05, 1.63554e-05, 1.85458e-05, 2.05843e-05, 2.24778e-05, 2.42339e-05, 2.58508e-05, 2.73406e-05, 2.87005e-05, 2.99503e-05, 3.10815e-05, 3.21161e-05, 3.30524e-05, 3.38982e-05, 3.46601e-05, 3.53474e-05, 
			1.61497e-05, 1.84667e-05, 2.06629e-05, 2.27243e-05, 2.46427e-05, 2.64267e-05, 2.80695e-05, 2.95892e-05, 3.09825e-05, 3.22518e-05, 3.34123e-05, 3.44675e-05, 3.54234e-05, 3.62874e-05, 3.7069e-05, 3.77731e-05
		)
}

CapTable	"metal4_C_TOP_GP_32MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.36209e-05, 1.7314e-05, 2.05894e-05, 2.35488e-05, 2.62462e-05, 2.87135e-05, 3.09708e-05, 3.30359e-05, 3.49186e-05, 3.66294e-05, 3.81856e-05, 3.95897e-05, 4.08636e-05, 4.20078e-05, 4.30362e-05, 4.39647e-05, 
			1.71095e-05, 2.07248e-05, 2.40612e-05, 2.71452e-05, 2.99947e-05, 3.26227e-05, 3.50416e-05, 3.72595e-05, 3.92856e-05, 4.11346e-05, 4.28142e-05, 4.43406e-05, 4.57149e-05, 4.69618e-05, 4.80796e-05, 4.90854e-05, 
			2.06396e-05, 2.42579e-05, 2.76589e-05, 3.08358e-05, 3.3792e-05, 3.65298e-05, 3.90532e-05, 4.13758e-05, 4.34981e-05, 4.54408e-05, 4.72027e-05, 4.88023e-05, 5.02537e-05, 5.15617e-05, 5.27412e-05, 5.3804e-05, 
			2.42442e-05, 2.78998e-05, 3.13581e-05, 3.46098e-05, 3.7644e-05, 4.04583e-05, 4.30609e-05, 4.54548e-05, 4.76532e-05, 4.96544e-05, 5.14823e-05, 5.31369e-05, 5.46371e-05, 5.59921e-05, 5.72176e-05, 5.83187e-05, 
			2.79597e-05, 3.16528e-05, 3.51651e-05, 3.8473e-05, 4.15693e-05, 4.4443e-05, 4.71065e-05, 4.95531e-05, 5.17981e-05, 5.38526e-05, 5.57216e-05, 5.74197e-05, 5.89596e-05, 6.03519e-05, 6.16077e-05, 6.27393e-05
		)
}

CapTable	"metal4_C_LATERAL_32MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.00025091, 0.00014381, 0.000103211, 8.06606e-05, 6.58136e-05, 5.50607e-05, 4.6801e-05, 4.0206e-05, 3.48004e-05, 3.02854e-05, 2.64655e-05, 2.31997e-05, 2.03896e-05, 1.79545e-05, 1.58378e-05, 1.39914e-05, 
			0.000265135, 0.000154557, 0.00011174, 8.76813e-05, 7.1707e-05, 6.00846e-05, 5.11314e-05, 4.39715e-05, 3.80955e-05, 3.31865e-05, 2.90287e-05, 2.54755e-05, 2.24137e-05, 1.97628e-05, 1.74546e-05, 1.54398e-05, 
			0.000272903, 0.000161076, 0.000117138, 9.2203e-05, 7.55664e-05, 6.34068e-05, 5.4016e-05, 4.64948e-05, 4.03152e-05, 3.51485e-05, 3.077e-05, 2.70245e-05, 2.37976e-05, 2.09996e-05, 1.8564e-05, 1.64361e-05, 
			0.000277832, 0.000165453, 0.000120871, 9.53875e-05, 7.82987e-05, 6.57766e-05, 5.60876e-05, 4.83136e-05, 4.19225e-05, 3.65726e-05, 3.20384e-05, 2.81553e-05, 2.48075e-05, 2.19053e-05, 1.93771e-05, 1.71677e-05, 
			0.00028072, 0.000168427, 0.0001235, 9.7675e-05, 8.02924e-05, 6.75287e-05, 5.76332e-05, 4.96843e-05, 4.31418e-05, 3.76633e-05, 3.30147e-05, 2.9034e-05, 2.55994e-05, 2.26208e-05, 2.00248e-05, 1.77543e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_33MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.55652e-05, 1.93538e-05, 2.24689e-05, 2.51397e-05, 2.74982e-05, 2.96222e-05, 3.15623e-05, 3.33519e-05, 3.50142e-05, 3.65657e-05, 3.80191e-05, 3.93838e-05, 4.06678e-05, 4.18771e-05, 4.30177e-05, 4.40937e-05, 
			1.83876e-05, 2.18083e-05, 2.47836e-05, 2.7427e-05, 2.98154e-05, 3.20021e-05, 3.4022e-05, 3.59005e-05, 3.76563e-05, 3.93023e-05, 4.08498e-05, 4.23072e-05, 4.36816e-05, 4.49786e-05, 4.6204e-05, 4.73621e-05, 
			2.10619e-05, 2.42574e-05, 2.71345e-05, 2.9749e-05, 3.21491e-05, 3.43707e-05, 3.64396e-05, 3.8375e-05, 4.01921e-05, 4.19018e-05, 4.35137e-05, 4.50348e-05, 4.64722e-05, 4.78314e-05, 4.9117e-05, 5.0334e-05, 
			2.36344e-05, 2.66994e-05, 2.95086e-05, 3.21019e-05, 3.45076e-05, 3.67521e-05, 3.8855e-05, 4.0832e-05, 4.26931e-05, 4.44495e-05, 4.61089e-05, 4.76783e-05, 4.91633e-05, 5.05696e-05, 5.19019e-05, 5.31642e-05, 
			2.61681e-05, 2.91346e-05, 3.18965e-05, 3.44736e-05, 3.68833e-05, 3.9144e-05, 4.12715e-05, 4.32776e-05, 4.5172e-05, 4.69636e-05, 4.86595e-05, 5.02658e-05, 5.17878e-05, 5.32308e-05, 5.45993e-05, 5.58978e-05
		)
}

CapTable	"metal4_C_LATERAL_33MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000255732, 0.000150271, 0.000111138, 8.98962e-05, 7.62016e-05, 6.64484e-05, 5.90392e-05, 5.31527e-05, 4.83214e-05, 4.42583e-05, 4.07763e-05, 3.77481e-05, 3.50832e-05, 3.27157e-05, 3.05955e-05, 2.86847e-05, 
			0.000271858, 0.000162949, 0.000121645, 9.8931e-05, 8.41359e-05, 7.35281e-05, 6.54318e-05, 5.89783e-05, 5.36695e-05, 4.9198e-05, 4.53621e-05, 4.20237e-05, 3.90848e-05, 3.6473e-05, 3.41338e-05, 3.2025e-05, 
			0.000281612, 0.000171458, 0.00012903, 0.000105434, 8.99617e-05, 7.87972e-05, 7.02404e-05, 6.3399e-05, 5.77584e-05, 5.29994e-05, 4.89117e-05, 4.53512e-05, 4.2214e-05, 3.94241e-05, 3.69243e-05, 3.46695e-05, 
			0.000288557, 0.000177828, 0.000134729, 0.000110551, 9.4592e-05, 8.30287e-05, 7.41344e-05, 6.70041e-05, 6.11131e-05, 5.61351e-05, 5.1854e-05, 4.81209e-05, 4.48291e-05, 4.18998e-05, 3.92729e-05, 3.69025e-05, 
			0.000293456, 0.000182759, 0.000139259, 0.000114688, 9.83829e-05, 8.65273e-05, 7.73785e-05, 7.00258e-05, 6.39408e-05, 5.87914e-05, 5.43581e-05, 5.04884e-05, 4.70736e-05, 4.40326e-05, 4.13041e-05, 3.88399e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_21MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.04752e-05, 1.41639e-05, 1.75125e-05, 2.04808e-05, 2.30397e-05, 2.52199e-05, 2.70293e-05, 2.853e-05, 2.97553e-05, 3.07552e-05, 3.15639e-05, 3.22179e-05, 3.27468e-05, 3.3164e-05, 3.35039e-05, 3.3789e-05, 
			1.4163e-05, 1.79479e-05, 2.14328e-05, 2.45362e-05, 2.72291e-05, 2.95298e-05, 3.1454e-05, 3.30442e-05, 3.43522e-05, 3.54171e-05, 3.62855e-05, 3.69784e-05, 3.75419e-05, 3.79998e-05, 3.83783e-05, 3.86733e-05, 
			1.80416e-05, 2.18841e-05, 2.54548e-05, 2.86379e-05, 3.1413e-05, 3.37738e-05, 3.57574e-05, 3.74011e-05, 3.87533e-05, 3.98584e-05, 4.07448e-05, 4.14724e-05, 4.20759e-05, 4.25498e-05, 4.29322e-05, 4.32414e-05, 
			2.2036e-05, 2.59322e-05, 2.95531e-05, 3.2791e-05, 3.56082e-05, 3.80118e-05, 4.00293e-05, 4.1706e-05, 4.30715e-05, 4.41989e-05, 4.51192e-05, 4.58781e-05, 4.64796e-05, 4.69682e-05, 4.73593e-05, 4.76759e-05, 
			2.61206e-05, 3.00533e-05, 3.37025e-05, 3.69729e-05, 3.98191e-05, 4.22476e-05, 4.42894e-05, 4.59669e-05, 4.73642e-05, 4.85263e-05, 4.94567e-05, 5.02115e-05, 5.08216e-05, 5.13163e-05, 5.17156e-05, 5.20374e-05
		)
}

CapTable	"metal4_C_TOP_GP_21MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.60427e-05, 3.51907e-05, 4.31237e-05, 4.98621e-05, 5.55001e-05, 6.01593e-05, 6.39836e-05, 6.70963e-05, 6.96202e-05, 7.16538e-05, 7.3293e-05, 7.46113e-05, 7.56693e-05, 7.65291e-05, 7.72134e-05, 7.77524e-05, 
			3.64753e-05, 4.58969e-05, 5.41044e-05, 6.10959e-05, 6.69683e-05, 7.18374e-05, 7.5844e-05, 7.91159e-05, 8.17729e-05, 8.3926e-05, 8.56616e-05, 8.70715e-05, 8.82004e-05, 8.91073e-05, 8.98267e-05, 9.04164e-05, 
			4.74112e-05, 5.69402e-05, 6.5253e-05, 7.23591e-05, 7.83354e-05, 8.3309e-05, 8.74071e-05, 9.07627e-05, 9.34943e-05, 9.57082e-05, 9.75162e-05, 9.89632e-05, 0.000100112, 0.000101055, 0.000101814, 0.000102427, 
			5.85798e-05, 6.81709e-05, 7.65358e-05, 8.36956e-05, 8.97332e-05, 9.47603e-05, 9.89137e-05, 0.000102315, 0.000105107, 0.000107361, 0.000109185, 0.000110646, 0.00011184, 0.000112799, 0.000113581, 0.000114208, 
			6.98756e-05, 7.94611e-05, 8.78468e-05, 9.50337e-05, 0.000101101, 0.000106162, 0.000110343, 0.000113801, 0.000116604, 0.00011886, 0.000120709, 0.000122206, 0.000123417, 0.000124395, 0.000125184, 0.000125824
		)
}

CapTable	"metal4_C_LATERAL_21MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.00023999, 0.000129523, 8.65181e-05, 6.24296e-05, 4.67756e-05, 3.57939e-05, 2.7762e-05, 2.17228e-05, 1.71114e-05, 1.35467e-05, 1.0769e-05, 8.59104e-06, 6.875e-06, 5.51599e-06, 4.43829e-06, 3.58058e-06, 
			0.000249446, 0.000135988, 9.12311e-05, 6.60425e-05, 4.96033e-05, 3.80402e-05, 2.95579e-05, 2.31733e-05, 1.82832e-05, 1.44962e-05, 1.15394e-05, 9.21507e-06, 7.38188e-06, 5.92897e-06, 4.77433e-06, 3.85283e-06, 
			0.000253136, 0.000139016, 9.36102e-05, 6.79239e-05, 5.11253e-05, 3.92811e-05, 3.05722e-05, 2.40032e-05, 1.8965e-05, 1.50569e-05, 1.19981e-05, 9.59362e-06, 7.69488e-06, 6.18643e-06, 4.98561e-06, 4.02696e-06, 
			0.000254753, 0.000140599, 9.49567e-05, 6.9039e-05, 5.20445e-05, 4.00453e-05, 3.12106e-05, 2.45372e-05, 1.94098e-05, 1.54285e-05, 1.23116e-05, 9.85694e-06, 7.91358e-06, 6.37077e-06, 5.13962e-06, 4.15634e-06, 
			0.000254995, 0.000141355, 9.56936e-05, 6.96858e-05, 5.25976e-05, 4.05208e-05, 3.16151e-05, 2.48745e-05, 1.96951e-05, 1.56707e-05, 1.25143e-05, 1.00259e-05, 8.0551e-06, 6.48824e-06, 5.23843e-06, 4.23843e-06
		)
}

CapTable	"metal4_C_BOTTOM_GP_22MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.21363e-05, 1.5839e-05, 1.91574e-05, 2.21727e-05, 2.49149e-05, 2.7402e-05, 2.9648e-05, 3.16677e-05, 3.34691e-05, 3.50688e-05, 3.64872e-05, 3.77333e-05, 3.88298e-05, 3.97859e-05, 4.0623e-05, 4.13515e-05, 
			1.55029e-05, 1.91929e-05, 2.26186e-05, 2.57856e-05, 2.86904e-05, 3.13405e-05, 3.3741e-05, 3.58996e-05, 3.78334e-05, 3.95513e-05, 4.10743e-05, 4.24134e-05, 4.35933e-05, 4.4626e-05, 4.55262e-05, 4.63115e-05, 
			1.90335e-05, 2.27581e-05, 2.62676e-05, 2.95343e-05, 3.25489e-05, 3.53025e-05, 3.77985e-05, 4.00494e-05, 4.20607e-05, 4.38534e-05, 4.54391e-05, 4.68404e-05, 4.80712e-05, 4.9147e-05, 5.00898e-05, 5.09107e-05, 
			2.27066e-05, 2.64854e-05, 3.00616e-05, 3.3404e-05, 3.64892e-05, 3.93145e-05, 4.18765e-05, 4.41867e-05, 4.62514e-05, 4.80933e-05, 4.97257e-05, 5.11636e-05, 5.24289e-05, 5.35383e-05, 5.45052e-05, 5.53519e-05, 
			2.65091e-05, 3.03276e-05, 3.39552e-05, 3.73476e-05, 4.04861e-05, 4.33554e-05, 4.59632e-05, 4.83098e-05, 5.04139e-05, 5.2287e-05, 5.39461e-05, 5.54124e-05, 5.67008e-05, 5.78276e-05, 5.88049e-05, 5.96774e-05
		)
}

CapTable	"metal4_C_TOP_GP_22MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.20851e-05, 1.5751e-05, 1.90137e-05, 2.19634e-05, 2.4644e-05, 2.70775e-05, 2.92767e-05, 3.12511e-05, 3.30177e-05, 3.45894e-05, 3.59768e-05, 3.72012e-05, 3.8274e-05, 3.92149e-05, 4.00329e-05, 4.07444e-05, 
			1.54794e-05, 1.91364e-05, 2.25096e-05, 2.5613e-05, 2.84638e-05, 3.10631e-05, 3.34189e-05, 3.55407e-05, 3.7438e-05, 3.91273e-05, 4.06226e-05, 4.19433e-05, 4.31004e-05, 4.4113e-05, 4.49976e-05, 4.57662e-05, 
			1.90175e-05, 2.27134e-05, 2.61771e-05, 2.93942e-05, 3.23541e-05, 3.50624e-05, 3.75209e-05, 3.97334e-05, 4.17163e-05, 4.3481e-05, 4.50464e-05, 4.64244e-05, 4.7634e-05, 4.86946e-05, 4.96181e-05, 5.04229e-05, 
			2.26891e-05, 2.64499e-05, 2.99902e-05, 3.32893e-05, 3.6334e-05, 3.91177e-05, 4.16459e-05, 4.39236e-05, 4.59667e-05, 4.7782e-05, 4.93909e-05, 5.08109e-05, 5.20569e-05, 5.31471e-05, 5.41016e-05, 5.49275e-05, 
			2.64896e-05, 3.02904e-05, 3.38893e-05, 3.72489e-05, 4.03483e-05, 4.31862e-05, 4.57618e-05, 4.80857e-05, 5.01644e-05, 5.20142e-05, 5.36552e-05, 5.50997e-05, 5.637e-05, 5.74854e-05, 5.84674e-05, 5.92973e-05
		)
}

CapTable	"metal4_C_LATERAL_22MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000248827, 0.000140982, 9.97023e-05, 7.65582e-05, 6.12192e-05, 5.00829e-05, 4.15451e-05, 3.47712e-05, 2.92753e-05, 2.47477e-05, 2.09785e-05, 1.78185e-05, 1.51534e-05, 1.28985e-05, 1.09842e-05, 9.35594e-06, 
			0.000262116, 0.00015075, 0.000107229, 8.2573e-05, 6.61168e-05, 5.41296e-05, 4.49245e-05, 3.76148e-05, 3.16806e-05, 2.67918e-05, 2.27199e-05, 1.93054e-05, 1.64254e-05, 1.39875e-05, 1.1918e-05, 1.01571e-05, 
			0.000268903, 0.000156287, 0.000111662, 8.61563e-05, 6.90728e-05, 5.65864e-05, 4.69835e-05, 3.93513e-05, 3.31531e-05, 2.80428e-05, 2.37871e-05, 2.02161e-05, 1.72045e-05, 1.46543e-05, 1.24888e-05, 1.06457e-05, 
			0.000272847, 0.000159708, 0.00011448, 8.84726e-05, 7.09838e-05, 5.81822e-05, 4.8325e-05, 4.04842e-05, 3.41126e-05, 2.88584e-05, 2.4481e-05, 2.08073e-05, 1.77079e-05, 1.5083e-05, 1.2853e-05, 1.09557e-05, 
			0.000274791, 0.00016179, 0.000116266, 8.9969e-05, 7.22356e-05, 5.92404e-05, 4.92196e-05, 4.12438e-05, 3.47594e-05, 2.94111e-05, 2.49539e-05, 2.12125e-05, 1.80553e-05, 1.53805e-05, 1.31073e-05, 1.11739e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_23MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.87666e-05, 2.37938e-05, 2.80736e-05, 3.18251e-05, 3.51676e-05, 3.81766e-05, 4.0902e-05, 4.33807e-05, 4.56406e-05, 4.77058e-05, 4.95962e-05, 5.13288e-05, 5.29192e-05, 5.43807e-05, 5.57252e-05, 5.69639e-05, 
			2.29099e-05, 2.76389e-05, 3.18536e-05, 3.56416e-05, 3.90724e-05, 4.21921e-05, 4.50389e-05, 4.76412e-05, 5.00249e-05, 5.2211e-05, 5.42187e-05, 5.60646e-05, 5.77638e-05, 5.93294e-05, 6.07736e-05, 6.21074e-05, 
			2.7006e-05, 3.15611e-05, 3.57178e-05, 3.95115e-05, 4.29794e-05, 4.61553e-05, 4.90684e-05, 5.17432e-05, 5.42017e-05, 5.6464e-05, 5.85474e-05, 6.0468e-05, 6.22405e-05, 6.38778e-05, 6.53918e-05, 6.6793e-05, 
			3.10674e-05, 3.55223e-05, 3.96312e-05, 4.34164e-05, 4.69001e-05, 5.01068e-05, 5.30599e-05, 5.57804e-05, 5.82901e-05, 6.06052e-05, 6.27428e-05, 6.4718e-05, 6.65451e-05, 6.8237e-05, 6.98045e-05, 7.12588e-05, 
			3.51319e-05, 3.94949e-05, 4.35618e-05, 4.73302e-05, 5.08166e-05, 5.4038e-05, 5.70142e-05, 5.97643e-05, 6.2307e-05, 6.4659e-05, 6.68348e-05, 6.88512e-05, 7.07188e-05, 7.24521e-05, 7.40613e-05, 7.55559e-05
		)
}

CapTable	"metal4_C_LATERAL_23MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000253176, 0.000146897, 0.000107062, 8.52289e-05, 7.10503e-05, 6.09134e-05, 5.32108e-05, 4.71103e-05, 4.2134e-05, 3.79837e-05, 3.44633e-05, 3.14374e-05, 2.8808e-05, 2.65028e-05, 2.44669e-05, 2.26571e-05, 
			0.000268363, 0.000158659, 0.000116678, 9.34107e-05, 7.81748e-05, 6.72294e-05, 5.8885e-05, 5.2261e-05, 4.68472e-05, 4.23257e-05, 3.84852e-05, 3.51796e-05, 3.23037e-05, 2.9779e-05, 2.75463e-05, 2.55589e-05, 
			0.000277192, 0.000166295, 0.000123252, 9.91641e-05, 8.33135e-05, 7.18689e-05, 6.31168e-05, 5.61517e-05, 5.04479e-05, 4.56752e-05, 4.16149e-05, 3.81146e-05, 3.50645e-05, 3.2383e-05, 3.00079e-05, 2.78907e-05, 
			0.000283267, 0.000171871, 0.000128234, 0.000103639, 8.73676e-05, 7.55834e-05, 6.65456e-05, 5.93363e-05, 5.34204e-05, 4.84615e-05, 4.42354e-05, 4.05865e-05, 3.7402e-05, 3.45979e-05, 3.21107e-05, 2.98899e-05, 
			0.000287383, 0.000176112, 0.00013216, 0.000107246, 9.0694e-05, 7.86746e-05, 6.9431e-05, 6.20409e-05, 5.5966e-05, 5.08651e-05, 4.65116e-05, 4.2747e-05, 3.94567e-05, 3.65557e-05, 3.39784e-05, 3.16743e-05
		)
}

CapTable	"metal4_C_BOTTOM_GPMIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.42034e-05, 3.36054e-05, 4.18336e-05, 4.86312e-05, 5.39968e-05, 5.80879e-05, 6.11241e-05, 6.33373e-05, 6.49248e-05, 6.60553e-05, 6.6854e-05, 6.74145e-05, 6.78068e-05, 6.80802e-05, 6.82708e-05, 6.84027e-05, 
			3.50105e-05, 4.482e-05, 5.33398e-05, 6.03423e-05, 6.58583e-05, 7.00564e-05, 7.31745e-05, 7.54437e-05, 7.70728e-05, 7.82323e-05, 7.90499e-05, 7.9624e-05, 8.00238e-05, 8.0302e-05, 8.04952e-05, 8.06282e-05, 
			4.63845e-05, 5.63293e-05, 6.49307e-05, 7.19892e-05, 7.75383e-05, 8.17595e-05, 8.48913e-05, 8.71714e-05, 8.88088e-05, 8.99728e-05, 9.07924e-05, 9.1366e-05, 9.17659e-05, 9.20429e-05, 9.22335e-05, 9.2365e-05, 
			5.79697e-05, 6.79635e-05, 7.65776e-05, 8.36436e-05, 8.91919e-05, 9.34094e-05, 9.65377e-05, 9.88137e-05, 0.000100446, 0.000101605, 0.00010242, 0.00010299, 0.000103386, 0.00010366, 0.000103849, 0.000103978, 
			6.9641e-05, 7.96227e-05, 8.82301e-05, 9.52789e-05, 0.000100815, 0.00010502, 0.000108136, 0.000110403, 0.000112029, 0.000113179, 0.000113989, 0.000114553, 0.000114946, 0.000115215, 0.000115399, 0.000115527
		)
}

CapTable	"metal4_C_TOP_GPMIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.398e-05, 3.31146e-05, 4.10289e-05, 4.7527e-05, 5.26297e-05, 5.65064e-05, 5.93809e-05, 6.14701e-05, 6.29738e-05, 6.4039e-05, 6.47937e-05, 6.53248e-05, 6.56963e-05, 6.59577e-05, 6.61415e-05, 6.6271e-05, 
			3.48166e-05, 4.43435e-05, 5.25346e-05, 5.92224e-05, 6.4465e-05, 6.84461e-05, 7.13917e-05, 7.35379e-05, 7.50754e-05, 7.61693e-05, 7.69435e-05, 7.74883e-05, 7.7871e-05, 7.81399e-05, 7.83294e-05, 7.84631e-05, 
			4.61751e-05, 5.58285e-05, 6.40973e-05, 7.08375e-05, 7.61088e-05, 8.01127e-05, 8.30739e-05, 8.52302e-05, 8.67782e-05, 8.78775e-05, 8.8656e-05, 8.92043e-05, 8.95902e-05, 8.98619e-05, 9.00539e-05, 9.01893e-05, 
			5.77225e-05, 6.74252e-05, 7.57122e-05, 8.24552e-05, 8.77339e-05, 9.173e-05, 9.46896e-05, 9.6844e-05, 9.83909e-05, 9.94916e-05, 0.00010027, 0.00010082, 0.000101207, 0.000101481, 0.000101674, 0.00010181, 
			6.93265e-05, 7.90105e-05, 8.72851e-05, 9.40153e-05, 9.92795e-05, 0.000103267, 0.000106218, 0.000108366, 0.000109909, 0.000111008, 0.000111786, 0.000112336, 0.000112724, 0.000112998, 0.000113193, 0.000113328
		)
}

CapTable	"metal4_C_LATERALMIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000231766, 0.000118614, 7.38784e-05, 4.90001e-05, 3.3348e-05, 2.2961e-05, 1.58995e-05, 1.10437e-05, 7.68583e-06, 5.35891e-06, 3.74342e-06, 2.62141e-06, 1.84194e-06, 1.29971e-06, 9.22188e-07, 6.58787e-07, 
			0.000237403, 0.000121785, 7.58029e-05, 5.02591e-05, 3.41886e-05, 2.35313e-05, 1.62885e-05, 1.13083e-05, 7.86547e-06, 5.4797e-06, 3.82395e-06, 2.67456e-06, 1.87639e-06, 1.32183e-06, 9.36067e-07, 6.67216e-07, 
			0.000238014, 0.000122317, 7.61483e-05, 5.04699e-05, 3.43375e-05, 2.36292e-05, 1.63518e-05, 1.13484e-05, 7.89001e-06, 5.49431e-06, 3.83221e-06, 2.67891e-06, 1.87838e-06, 1.32228e-06, 9.35529e-07, 6.66431e-07, 
			0.000237334, 0.000122075, 7.60273e-05, 5.03922e-05, 3.42722e-05, 2.35828e-05, 1.63188e-05, 1.13246e-05, 7.87313e-06, 5.48218e-06, 3.82423e-06, 2.67387e-06, 1.87518e-06, 1.32028e-06, 9.34639e-07, 6.67088e-07, 
			0.000235901, 0.000121521, 7.57088e-05, 5.01814e-05, 3.41223e-05, 2.34788e-05, 1.62439e-05, 1.12682e-05, 7.83035e-06, 5.44937e-06, 3.79858e-06, 2.65335e-06, 1.85852e-06, 1.307e-06, 9.24607e-07, 6.61e-07
		)
}

CapTable	"metal4_C_BOTTOM_GP_12MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.63778e-05, 3.58404e-05, 4.41129e-05, 5.11564e-05, 5.70424e-05, 6.18937e-05, 6.58524e-05, 6.90602e-05, 7.16491e-05, 7.37276e-05, 7.5396e-05, 7.67346e-05, 7.78039e-05, 7.8659e-05, 7.93471e-05, 7.98925e-05, 
			3.68104e-05, 4.65477e-05, 5.50955e-05, 6.23952e-05, 6.85239e-05, 7.35956e-05, 7.77491e-05, 8.11274e-05, 8.38618e-05, 8.60651e-05, 8.78383e-05, 8.92609e-05, 9.04011e-05, 9.13276e-05, 9.20481e-05, 9.26366e-05, 
			4.776e-05, 5.75939e-05, 6.62514e-05, 7.3673e-05, 7.99153e-05, 8.50978e-05, 8.93537e-05, 9.28227e-05, 9.56387e-05, 9.79091e-05, 9.97373e-05, 0.00010121, 0.000102388, 0.000103336, 0.000104097, 0.000104708, 
			5.8947e-05, 6.88432e-05, 7.75529e-05, 8.5036e-05, 9.1345e-05, 9.65908e-05, 0.000100905, 0.000104428, 0.000107287, 0.000109597, 0.000111474, 0.000112962, 0.000114169, 0.000115138, 0.000115916, 0.000116541, 
			7.02834e-05, 8.01824e-05, 8.89213e-05, 9.64376e-05, 0.000102783, 0.000108066, 0.000112415, 0.000115967, 0.000118855, 0.00012119, 0.000123077, 0.000124595, 0.000125816, 0.000126798, 0.000127587, 0.00012822
		)
}

CapTable	"metal4_C_TOP_GP_12MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.05318e-05, 1.41785e-05, 1.74671e-05, 2.03647e-05, 2.28559e-05, 2.49558e-05, 2.67015e-05, 2.81364e-05, 2.93065e-05, 3.0257e-05, 3.10254e-05, 3.16421e-05, 3.21417e-05, 3.25454e-05, 3.28659e-05, 3.31305e-05, 
			1.42721e-05, 1.79965e-05, 2.14102e-05, 2.44448e-05, 2.70666e-05, 2.92892e-05, 3.11451e-05, 3.26773e-05, 3.39315e-05, 3.49539e-05, 3.57824e-05, 3.64533e-05, 3.69961e-05, 3.74193e-05, 3.77856e-05, 3.8069e-05, 
			1.81569e-05, 2.19436e-05, 2.54346e-05, 2.85472e-05, 3.12457e-05, 3.35384e-05, 3.54593e-05, 3.70488e-05, 3.83503e-05, 3.94163e-05, 4.02844e-05, 4.0984e-05, 4.1555e-05, 4.20129e-05, 4.23823e-05, 4.26802e-05, 
			2.21371e-05, 2.59753e-05, 2.95215e-05, 3.26879e-05, 3.54377e-05, 3.77773e-05, 3.97396e-05, 4.13653e-05, 4.27032e-05, 4.37995e-05, 4.4674e-05, 4.54097e-05, 4.59937e-05, 4.64648e-05, 4.68466e-05, 4.71541e-05, 
			2.61937e-05, 3.00642e-05, 3.36468e-05, 3.68494e-05, 3.96326e-05, 4.19988e-05, 4.39885e-05, 4.5641e-05, 4.69993e-05, 4.8113e-05, 4.90178e-05, 4.97523e-05, 5.03471e-05, 5.08281e-05, 5.12166e-05, 5.15302e-05
		)
}

CapTable	"metal4_C_LATERAL_12MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000239744, 0.000129188, 8.61109e-05, 6.19758e-05, 4.62981e-05, 3.53212e-05, 2.73036e-05, 2.12948e-05, 1.67147e-05, 1.31838e-05, 1.04384e-05, 8.2899e-06, 6.60024e-06, 5.26581e-06, 4.20884e-06, 3.36844e-06, 
			0.000249285, 0.000135779, 9.09661e-05, 6.5725e-05, 4.92486e-05, 3.76723e-05, 2.91902e-05, 2.2814e-05, 1.79402e-05, 1.41727e-05, 1.1236e-05, 8.93361e-06, 7.11936e-06, 5.6856e-06, 4.54633e-06, 3.6409e-06, 
			0.000253111, 0.000138951, 9.34815e-05, 6.77244e-05, 5.08729e-05, 3.89899e-05, 3.02614e-05, 2.36857e-05, 1.86495e-05, 1.47492e-05, 1.17043e-05, 9.31367e-06, 7.42736e-06, 5.93424e-06, 4.74862e-06, 3.80486e-06, 
			0.000254879, 0.000140668, 9.49383e-05, 6.89272e-05, 5.18538e-05, 3.97975e-05, 3.09259e-05, 2.42311e-05, 1.90968e-05, 1.51151e-05, 1.20048e-05, 9.55779e-06, 7.62672e-06, 6.09693e-06, 4.88103e-06, 3.91272e-06, 
			0.000255249, 0.000141527, 9.57489e-05, 6.96265e-05, 5.24412e-05, 4.02925e-05, 3.13379e-05, 2.45715e-05, 1.9377e-05, 1.53453e-05, 1.21924e-05, 9.71242e-06, 7.7533e-06, 6.20038e-06, 4.96602e-06, 3.98254e-06
		)
}

CapTable	"metal4_C_BOTTOM_GP_13MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			3.2822e-05, 4.37797e-05, 5.31653e-05, 6.10598e-05, 6.76286e-05, 7.30653e-05, 7.7561e-05, 8.12855e-05, 8.43803e-05, 8.69648e-05, 8.91348e-05, 9.09676e-05, 9.25253e-05, 9.38569e-05, 9.50019e-05, 9.59945e-05, 
			4.45326e-05, 5.54824e-05, 6.49494e-05, 7.29693e-05, 7.96965e-05, 8.531e-05, 8.9989e-05, 9.38958e-05, 9.71695e-05, 9.99237e-05, 0.000102253, 0.000104236, 0.000105932, 0.000107392, 0.000108656, 0.000109756, 
			5.64595e-05, 6.72672e-05, 7.66685e-05, 8.46869e-05, 9.14533e-05, 9.71399e-05, 0.000101912, 0.000105921, 0.000109302, 0.000112164, 0.000114601, 0.000116686, 0.000118481, 0.000120034, 0.000121385, 0.000122569, 
			6.83518e-05, 7.90173e-05, 8.83197e-05, 9.62976e-05, 0.000103068, 0.000108785, 0.000113609, 0.000117685, 0.00012114, 0.000124082, 0.000126596, 0.000128759, 0.00013063, 0.000132256, 0.000133679, 0.000134928, 
			8.0199e-05, 9.07112e-05, 9.99283e-05, 0.000107865, 0.000114632, 0.000120371, 0.000125235, 0.000129364, 0.000132879, 0.000135884, 0.000138466, 0.000140695, 0.00014263, 0.000144318, 0.000145801, 0.000147108
		)
}

CapTable	"metal4_C_LATERAL_13MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000242955, 0.000133821, 9.20907e-05, 6.91444e-05, 5.44475e-05, 4.4226e-05, 3.67452e-05, 3.10771e-05, 2.66708e-05, 2.3176e-05, 2.03581e-05, 1.80539e-05, 1.61466e-05, 1.45504e-05, 1.32016e-05, 1.20516e-05, 
			0.000254245, 0.000142315, 9.89661e-05, 7.49946e-05, 5.95461e-05, 4.87435e-05, 4.07927e-05, 3.47323e-05, 2.99918e-05, 2.62086e-05, 2.31391e-05, 2.06136e-05, 1.85106e-05, 1.67406e-05, 1.52364e-05, 1.39471e-05, 
			0.000260032, 0.00014754, 0.000103594, 7.91351e-05, 6.33125e-05, 5.21837e-05, 4.39513e-05, 3.7644e-05, 3.26846e-05, 2.87057e-05, 2.54608e-05, 2.27774e-05, 2.05317e-05, 1.86324e-05, 1.70107e-05, 1.56145e-05, 
			0.000263899, 0.000151404, 0.000107219, 8.25006e-05, 6.64316e-05, 5.50901e-05, 4.66639e-05, 4.01793e-05, 3.5058e-05, 3.09313e-05, 2.75505e-05, 2.47428e-05, 2.23831e-05, 2.03789e-05, 1.86609e-05, 1.71759e-05, 
			0.000266416, 0.000154413, 0.000110161, 8.5297e-05, 6.90682e-05, 5.75761e-05, 4.90033e-05, 4.23795e-05, 3.71286e-05, 3.28812e-05, 2.93887e-05, 2.64772e-05, 2.40213e-05, 2.1928e-05, 2.01273e-05, 1.85658e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_61MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			4.21197e-06, 5.61508e-06, 6.86164e-06, 7.95532e-06, 8.89507e-06, 9.7105e-06, 1.03863e-05, 1.09755e-05, 1.14489e-05, 1.18764e-05, 1.22391e-05, 1.25493e-05, 1.28033e-05, 1.30323e-05, 1.32297e-05, 1.33997e-05, 
			5.53129e-06, 6.92076e-06, 8.18317e-06, 9.29933e-06, 1.02672e-05, 1.11189e-05, 1.18499e-05, 1.2449e-05, 1.29846e-05, 1.34434e-05, 1.38362e-05, 1.41622e-05, 1.44528e-05, 1.47038e-05, 1.49211e-05, 1.51095e-05, 
			6.86553e-06, 8.23725e-06, 9.50995e-06, 1.06328e-05, 1.16363e-05, 1.24806e-05, 1.32358e-05, 1.38858e-05, 1.44445e-05, 1.49125e-05, 1.53262e-05, 1.56834e-05, 1.59907e-05, 1.62582e-05, 1.64904e-05, 1.66918e-05, 
			8.20397e-06, 9.56319e-06, 1.08358e-05, 1.19842e-05, 1.29731e-05, 1.38624e-05, 1.46331e-05, 1.52993e-05, 1.58634e-05, 1.63594e-05, 1.67897e-05, 1.71605e-05, 1.74816e-05, 1.77623e-05, 1.80051e-05, 1.82183e-05, 
			9.54124e-06, 1.09056e-05, 1.21526e-05, 1.33071e-05, 1.43325e-05, 1.52315e-05, 1.60012e-05, 1.66811e-05, 1.72693e-05, 1.7778e-05, 1.82194e-05, 1.86017e-05, 1.89343e-05, 1.9224e-05, 1.94774e-05, 1.97017e-05
		)
}

CapTable	"metal5_C_TOP_GP_61MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.91297e-05, 3.892e-05, 4.72911e-05, 5.43496e-05, 6.0259e-05, 6.51893e-05, 6.92949e-05, 7.27317e-05, 7.55825e-05, 7.80084e-05, 8.00495e-05, 8.17762e-05, 8.32365e-05, 8.44893e-05, 8.55616e-05, 8.64835e-05, 
			3.99201e-05, 4.97857e-05, 5.82923e-05, 6.55144e-05, 7.15939e-05, 7.67143e-05, 8.10172e-05, 8.4613e-05, 8.76707e-05, 9.02538e-05, 9.24454e-05, 9.43014e-05, 9.58946e-05, 9.72608e-05, 9.84352e-05, 9.94502e-05, 
			5.10252e-05, 6.08414e-05, 6.93481e-05, 7.66081e-05, 8.27734e-05, 8.79603e-05, 9.23799e-05, 9.61147e-05, 9.92801e-05, 0.000101962, 0.000104256, 0.000106217, 0.000107899, 0.000109346, 0.000110596, 0.000111681, 
			6.22122e-05, 7.1959e-05, 8.04409e-05, 8.77232e-05, 9.39087e-05, 9.9194e-05, 0.000103682, 0.000107499, 0.000110737, 0.000113509, 0.000115881, 0.000117915, 0.000119667, 0.00012118, 0.000122496, 0.000123635, 
			7.34004e-05, 8.30692e-05, 9.14895e-05, 9.87796e-05, 0.000105018, 0.000110343, 0.000114877, 0.000118754, 0.000122067, 0.000124902, 0.000127333, 0.000129428, 0.000131237, 0.000132806, 0.000134169, 0.000135355
		)
}

CapTable	"metal5_C_LATERAL_61MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000242481, 0.000133093, 9.10969e-05, 6.78751e-05, 5.29011e-05, 4.23998e-05, 3.46765e-05, 2.87635e-05, 2.41857e-05, 2.0487e-05, 1.74963e-05, 1.50467e-05, 1.30352e-05, 1.13393e-05, 9.91215e-06, 8.70257e-06, 
			0.000253367, 0.000141105, 9.74337e-05, 7.3147e-05, 5.74077e-05, 4.63033e-05, 3.80711e-05, 3.18003e-05, 2.68241e-05, 2.28373e-05, 1.95946e-05, 1.69421e-05, 1.47202e-05, 1.28563e-05, 1.12808e-05, 9.9398e-06, 
			0.00025864, 0.000145763, 0.000101451, 7.66641e-05, 6.05062e-05, 4.91148e-05, 4.058e-05, 3.40038e-05, 2.88086e-05, 2.46452e-05, 2.12268e-05, 1.84017e-05, 1.60427e-05, 1.40563e-05, 1.2371e-05, 1.09315e-05, 
			0.000261899, 0.000149001, 0.000104419, 7.93292e-05, 6.29557e-05, 5.1278e-05, 4.25456e-05, 3.57874e-05, 3.04468e-05, 2.61152e-05, 2.25643e-05, 1.96189e-05, 1.71516e-05, 1.5067e-05, 1.32912e-05, 1.17728e-05, 
			0.0002638, 0.000151354, 0.000106742, 8.14861e-05, 6.48942e-05, 5.30647e-05, 4.42048e-05, 3.73067e-05, 3.18192e-05, 2.7372e-05, 2.37155e-05, 2.06736e-05, 1.81181e-05, 1.59531e-05, 1.41058e-05, 1.25197e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_62MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.25433e-05, 1.5296e-05, 1.74588e-05, 1.9241e-05, 2.07636e-05, 2.21017e-05, 2.33033e-05, 2.44009e-05, 2.54167e-05, 2.63668e-05, 2.72623e-05, 2.81118e-05, 2.89216e-05, 2.96968e-05, 3.04408e-05, 3.11566e-05, 
			1.4407e-05, 1.67706e-05, 1.8745e-05, 2.04403e-05, 2.19309e-05, 2.32692e-05, 2.44901e-05, 2.56194e-05, 2.66744e-05, 2.76684e-05, 2.86112e-05, 2.951e-05, 3.03701e-05, 3.11959e-05, 3.19909e-05, 3.27576e-05, 
			1.60629e-05, 1.81749e-05, 2.00098e-05, 2.16317e-05, 2.30882e-05, 2.44175e-05, 2.56468e-05, 2.67943e-05, 2.78749e-05, 2.88994e-05, 2.98758e-05, 3.08099e-05, 3.17072e-05, 3.25707e-05, 3.34041e-05, 3.42091e-05, 
			1.75665e-05, 1.95132e-05, 2.12463e-05, 2.28115e-05, 2.42403e-05, 2.55616e-05, 2.67943e-05, 2.79553e-05, 2.90553e-05, 3.01031e-05, 3.11057e-05, 3.20685e-05, 3.29953e-05, 3.38893e-05, 3.47535e-05, 3.559e-05, 
			1.89861e-05, 2.08089e-05, 2.24689e-05, 2.399e-05, 2.53987e-05, 2.67135e-05, 2.79506e-05, 2.91226e-05, 3.02384e-05, 3.13059e-05, 3.23307e-05, 3.3317e-05, 3.42686e-05, 3.51884e-05, 3.60786e-05, 3.69411e-05
		)
}

CapTable	"metal5_C_LATERAL_62MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000258212, 0.000153486, 0.000115014, 9.4369e-05, 8.12143e-05, 7.19458e-05, 6.49677e-05, 5.94615e-05, 5.49627e-05, 5.11869e-05, 4.79508e-05, 4.51298e-05, 4.26367e-05, 4.04082e-05, 3.83974e-05, 3.65688e-05, 
			0.000275106, 0.00016695, 0.000126332, 0.000104241, 9.00054e-05, 7.98953e-05, 7.22377e-05, 6.6167e-05, 6.11896e-05, 5.70013e-05, 5.34047e-05, 5.0265e-05, 4.74877e-05, 4.50036e-05, 4.27615e-05, 4.07217e-05, 
			0.000285673, 0.000176278, 0.000134545, 0.000111573, 9.6658e-05, 8.59837e-05, 7.78546e-05, 7.1383e-05, 6.60591e-05, 6.15674e-05, 5.77023e-05, 5.43234e-05, 5.13307e-05, 4.8652e-05, 4.62321e-05, 4.40301e-05, 
			0.000293454, 0.000183484, 0.000141069, 0.000117502, 0.000102081, 9.09873e-05, 8.24991e-05, 7.57163e-05, 7.01196e-05, 6.53871e-05, 6.1307e-05, 5.77347e-05, 5.45672e-05, 5.17295e-05, 4.91644e-05, 4.68287e-05, 
			0.000299195, 0.000189237, 0.0001464, 0.000122413, 0.000106619, 9.52052e-05, 8.64343e-05, 7.94023e-05, 7.35848e-05, 6.86553e-05, 6.43984e-05, 6.06665e-05, 5.73539e-05, 5.43835e-05, 5.1697e-05, 4.92494e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_51MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			4.3155e-06, 5.89795e-06, 7.27146e-06, 8.45229e-06, 9.45556e-06, 1.03165e-05, 1.10279e-05, 1.16444e-05, 1.21403e-05, 1.25835e-05, 1.29597e-05, 1.32789e-05, 1.35426e-05, 1.37778e-05, 1.3978e-05, 1.4151e-05, 
			5.70717e-06, 7.26348e-06, 8.64801e-06, 9.84837e-06, 1.08747e-05, 1.17688e-05, 1.25028e-05, 1.31531e-05, 1.37048e-05, 1.41753e-05, 1.45671e-05, 1.49101e-05, 1.5205e-05, 1.54583e-05, 1.56771e-05, 1.58651e-05, 
			7.138e-06, 8.66407e-06, 1.0052e-05, 1.12565e-05, 1.23157e-05, 1.32013e-05, 1.39848e-05, 1.46551e-05, 1.52269e-05, 1.57064e-05, 1.61257e-05, 1.64866e-05, 1.67961e-05, 1.70641e-05, 1.7294e-05, 1.74949e-05, 
			8.58028e-06, 1.00861e-05, 1.1472e-05, 1.26726e-05, 1.37462e-05, 1.46743e-05, 1.54723e-05, 1.61469e-05, 1.67362e-05, 1.72412e-05, 1.76755e-05, 1.80501e-05, 1.83721e-05, 1.86507e-05, 1.88918e-05, 1.9102e-05, 
			1.00096e-05, 1.15136e-05, 1.28672e-05, 1.40971e-05, 1.51735e-05, 1.61085e-05, 1.6905e-05, 1.76016e-05, 1.82001e-05, 1.87169e-05, 1.91608e-05, 1.95445e-05, 1.98758e-05, 2.01661e-05, 2.04129e-05, 2.06312e-05
		)
}

CapTable	"metal5_C_TOP_GP_51MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.90503e-05, 3.86884e-05, 4.69673e-05, 5.39677e-05, 5.98379e-05, 6.47403e-05, 6.88269e-05, 7.22466e-05, 7.5092e-05, 7.75025e-05, 7.95294e-05, 8.12429e-05, 8.26935e-05, 8.39329e-05, 8.49935e-05, 8.59031e-05, 
			3.97841e-05, 4.95136e-05, 5.79335e-05, 6.51015e-05, 7.11475e-05, 7.6243e-05, 8.05064e-05, 8.41174e-05, 8.71607e-05, 8.97308e-05, 9.19043e-05, 9.37576e-05, 9.53388e-05, 9.66932e-05, 9.7856e-05, 9.88599e-05, 
			5.08136e-05, 6.05118e-05, 6.89418e-05, 7.61558e-05, 8.22881e-05, 8.74611e-05, 9.18604e-05, 9.55783e-05, 9.87294e-05, 0.000101402, 0.000103682, 0.000105631, 0.000107301, 0.000108735, 0.000109974, 0.000111047, 
			6.1923e-05, 7.1573e-05, 7.99891e-05, 8.72053e-05, 9.33889e-05, 9.86468e-05, 0.000103112, 0.000106903, 0.000110133, 0.000112889, 0.000115245, 0.000117263, 0.000119, 0.000120499, 0.0001218, 0.000122925, 
			7.30516e-05, 8.26374e-05, 9.10103e-05, 9.8259e-05, 0.000104464, 0.000109762, 0.000114275, 0.000118128, 0.000121421, 0.000124236, 0.00012665, 0.000128727, 0.000130519, 0.000132068, 0.000133417, 0.000134589
		)
}

CapTable	"metal5_C_LATERAL_51MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000242464, 0.00013305, 9.10297e-05, 6.77884e-05, 5.27995e-05, 4.22881e-05, 3.45563e-05, 2.86396e-05, 2.40509e-05, 2.03551e-05, 1.73692e-05, 1.4926e-05, 1.29177e-05, 1.1231e-05, 9.81372e-06, 8.61462e-06, 
			0.000253333, 0.000141045, 9.73497e-05, 7.30445e-05, 5.72907e-05, 4.61782e-05, 3.79867e-05, 3.166e-05, 2.66874e-05, 2.2706e-05, 1.94856e-05, 1.6823e-05, 1.46119e-05, 1.27596e-05, 1.11964e-05, 9.86805e-06, 
			0.000258586, 0.00014568, 0.000101345, 7.65379e-05, 6.03689e-05, 4.89604e-05, 4.0426e-05, 3.38539e-05, 2.86652e-05, 2.45051e-05, 2.10981e-05, 1.82852e-05, 1.59397e-05, 1.39676e-05, 1.22971e-05, 1.0873e-05, 
			0.000261822, 0.000148889, 0.000104281, 7.92185e-05, 6.27801e-05, 5.11016e-05, 4.2373e-05, 3.5638e-05, 3.0287e-05, 2.59684e-05, 2.24324e-05, 1.95031e-05, 1.70528e-05, 1.4986e-05, 1.32287e-05, 1.17291e-05, 
			0.000263697, 0.000151218, 0.00010657, 8.12996e-05, 6.47039e-05, 5.28776e-05, 4.40202e-05, 3.71349e-05, 3.16623e-05, 2.72322e-05, 2.35941e-05, 2.05718e-05, 1.80366e-05, 1.5893e-05, 1.4067e-05, 1.25026e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_52MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.30651e-05, 1.59915e-05, 1.8307e-05, 2.02266e-05, 2.1873e-05, 2.33238e-05, 2.4629e-05, 2.58229e-05, 2.69282e-05, 2.79619e-05, 2.89361e-05, 2.98596e-05, 3.07392e-05, 3.158e-05, 3.23859e-05, 3.31603e-05, 
			1.50748e-05, 1.76074e-05, 1.97345e-05, 2.15674e-05, 2.3185e-05, 2.4641e-05, 2.59715e-05, 2.72034e-05, 2.83549e-05, 2.944e-05, 3.0469e-05, 3.14492e-05, 3.23865e-05, 3.32855e-05, 3.415e-05, 3.49821e-05, 
			1.68819e-05, 1.91562e-05, 2.11417e-05, 2.2903e-05, 2.44891e-05, 2.594e-05, 2.72832e-05, 2.85385e-05, 2.97213e-05, 3.08425e-05, 3.19108e-05, 3.29326e-05, 3.39129e-05, 3.48554e-05, 3.57634e-05, 3.66394e-05, 
			1.85325e-05, 2.06407e-05, 2.25244e-05, 2.42292e-05, 2.57903e-05, 2.72368e-05, 2.85881e-05, 2.98609e-05, 3.10678e-05, 3.22174e-05, 3.33169e-05, 3.43719e-05, 3.53864e-05, 3.6364e-05, 3.73077e-05, 3.82191e-05, 
			2.00991e-05, 2.20802e-05, 2.38904e-05, 2.55549e-05, 2.70986e-05, 2.85417e-05, 2.99008e-05, 3.11886e-05, 3.24162e-05, 3.35897e-05, 3.47155e-05, 3.57985e-05, 3.68421e-05, 3.78492e-05, 3.88227e-05, 3.97642e-05
		)
}

CapTable	"metal5_C_LATERAL_52MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.00025779, 0.000152952, 0.000114389, 9.36701e-05, 8.04541e-05, 7.11339e-05, 6.41117e-05, 5.85669e-05, 5.4034e-05, 5.02278e-05, 4.6964e-05, 4.41178e-05, 4.16018e-05, 3.93523e-05, 3.73227e-05, 3.54766e-05, 
			0.000274581, 0.000166323, 0.000125622, 0.000103463, 8.91702e-05, 7.90104e-05, 7.13089e-05, 6.51989e-05, 6.01858e-05, 5.59648e-05, 5.23377e-05, 4.917e-05, 4.63667e-05, 4.38587e-05, 4.15943e-05, 3.95346e-05, 
			0.00028505, 0.000175566, 0.000133759, 0.000110726, 9.57558e-05, 8.50334e-05, 7.68608e-05, 7.03496e-05, 6.49885e-05, 6.04626e-05, 5.65654e-05, 5.31562e-05, 5.01356e-05, 4.74308e-05, 4.49872e-05, 4.27633e-05, 
			0.000292746, 0.000182697, 0.000140215, 0.000116591, 0.000101118, 8.99779e-05, 8.14466e-05, 7.46239e-05, 6.89894e-05, 6.42214e-05, 6.01079e-05, 5.65043e-05, 5.33077e-05, 5.04426e-05, 4.78525e-05, 4.54942e-05, 
			0.00029841, 0.00018838, 0.000145483, 0.000121441, 0.000105596, 9.41361e-05, 8.53219e-05, 7.82487e-05, 7.23922e-05, 6.7426e-05, 6.31344e-05, 5.93697e-05, 5.60267e-05, 5.30281e-05, 5.03156e-05, 4.78443e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_41MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			4.97973e-06, 6.83224e-06, 8.43874e-06, 9.82243e-06, 1.09968e-05, 1.19853e-05, 1.28358e-05, 1.35298e-05, 1.41369e-05, 1.4649e-05, 1.50822e-05, 1.544e-05, 1.57518e-05, 1.60169e-05, 1.62412e-05, 1.64338e-05, 
			6.60408e-06, 8.42163e-06, 1.00406e-05, 1.14597e-05, 1.26649e-05, 1.37087e-05, 1.45735e-05, 1.53294e-05, 1.59693e-05, 1.65122e-05, 1.69647e-05, 1.73578e-05, 1.76914e-05, 1.79761e-05, 1.82193e-05, 1.84296e-05, 
			8.28282e-06, 1.00744e-05, 1.16854e-05, 1.31171e-05, 1.43335e-05, 1.54009e-05, 1.63141e-05, 1.70917e-05, 1.77465e-05, 1.83103e-05, 1.8792e-05, 1.92008e-05, 1.95511e-05, 1.98532e-05, 2.01098e-05, 2.03313e-05, 
			9.97584e-06, 1.17497e-05, 1.33755e-05, 1.47939e-05, 1.60499e-05, 1.71343e-05, 1.8064e-05, 1.88525e-05, 1.95321e-05, 2.0113e-05, 2.061e-05, 2.10341e-05, 2.13985e-05, 2.17111e-05, 2.19799e-05, 2.23363e-05, 
			1.16587e-05, 1.34039e-05, 1.5025e-05, 1.6466e-05, 1.77268e-05, 1.88099e-05, 1.97511e-05, 2.05582e-05, 2.12488e-05, 2.1841e-05, 2.2349e-05, 2.27842e-05, 2.31587e-05, 2.36211e-05, 2.38688e-05, 2.40846e-05
		)
}

CapTable	"metal5_C_TOP_GP_41MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.86539e-05, 3.81682e-05, 4.63622e-05, 5.33019e-05, 5.91262e-05, 6.39849e-05, 6.80459e-05, 7.14198e-05, 7.42532e-05, 7.66252e-05, 7.8613e-05, 8.02861e-05, 8.17014e-05, 8.29007e-05, 8.39221e-05, 8.47926e-05, 
			3.93229e-05, 4.89575e-05, 5.73135e-05, 6.44309e-05, 7.04434e-05, 7.55056e-05, 7.97501e-05, 8.3324e-05, 8.63288e-05, 8.88585e-05, 9.09937e-05, 9.28025e-05, 9.43393e-05, 9.56482e-05, 9.67661e-05, 9.77237e-05, 
			5.03061e-05, 5.99322e-05, 6.83105e-05, 7.54964e-05, 8.15854e-05, 8.6753e-05, 9.11177e-05, 9.47984e-05, 9.79081e-05, 0.000100542, 0.000102775, 0.000104676, 0.000106295, 0.000107677, 0.000108865, 0.000109888, 
			6.13927e-05, 7.09943e-05, 7.9375e-05, 8.65765e-05, 9.2731e-05, 9.79579e-05, 0.000102389, 0.000106143, 0.00010933, 0.000112037, 0.000114342, 0.000116306, 0.000117986, 0.000119428, 0.000120672, 0.000121606, 
			7.25188e-05, 8.20615e-05, 9.04309e-05, 9.76556e-05, 0.000103834, 0.000109101, 0.000113583, 0.000117393, 0.000120639, 0.000123401, 0.000125756, 0.000127774, 0.000129505, 0.000130843, 0.000132158, 0.000133297
		)
}

CapTable	"metal5_C_LATERAL_41MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000242252, 0.000132735, 9.06188e-05, 6.72909e-05, 5.22293e-05, 4.16812e-05, 3.38843e-05, 2.79737e-05, 2.33236e-05, 1.96268e-05, 1.66483e-05, 1.42277e-05, 1.22256e-05, 1.05637e-05, 9.17425e-06, 8.00514e-06, 
			0.000252995, 0.000140597, 9.67966e-05, 7.23914e-05, 5.65574e-05, 4.53873e-05, 3.71395e-05, 3.07917e-05, 2.58113e-05, 2.18337e-05, 1.86201e-05, 1.59794e-05, 1.37959e-05, 1.19757e-05, 1.04476e-05, 9.15684e-06, 
			0.000258103, 0.000145075, 0.000100645, 7.57199e-05, 5.95094e-05, 4.79972e-05, 3.94296e-05, 3.28408e-05, 2.76589e-05, 2.34944e-05, 2.01083e-05, 1.73244e-05, 1.50138e-05, 1.30811e-05, 1.14532e-05, 1.00736e-05, 
			0.000261181, 0.000148117, 0.000103395, 7.82216e-05, 6.1714e-05, 4.99878e-05, 4.12316e-05, 3.44801e-05, 2.91354e-05, 2.48354e-05, 2.1328e-05, 1.84354e-05, 1.60277e-05, 1.40078e-05, 1.23005e-05, 1.08626e-05, 
			0.000262893, 0.000150314, 0.000105509, 8.01515e-05, 6.34918e-05, 5.16335e-05, 4.27407e-05, 3.58541e-05, 3.03954e-05, 2.59917e-05, 2.23904e-05, 1.94122e-05, 1.69272e-05, 1.48488e-05, 1.30775e-05, 1.15682e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_42MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.37938e-05, 1.69354e-05, 1.94552e-05, 2.15699e-05, 2.34055e-05, 2.50404e-05, 2.65239e-05, 2.78894e-05, 2.91598e-05, 3.03513e-05, 3.14754e-05, 3.25409e-05, 3.35544e-05, 3.45207e-05, 3.54442e-05, 3.63282e-05, 
			1.60356e-05, 1.8791e-05, 2.11384e-05, 2.31859e-05, 2.50131e-05, 2.66717e-05, 2.81988e-05, 2.96196e-05, 3.09523e-05, 3.22102e-05, 3.3403e-05, 3.45384e-05, 3.56217e-05, 3.66577e-05, 3.76498e-05, 3.86014e-05, 
			1.8082e-05, 2.05947e-05, 2.28142e-05, 2.48056e-05, 2.6616e-05, 2.82843e-05, 2.98368e-05, 3.12935e-05, 3.26688e-05, 3.39732e-05, 3.52152e-05, 3.64011e-05, 3.75355e-05, 3.86229e-05, 3.9666e-05, 4.06678e-05, 
			1.9992e-05, 2.23495e-05, 2.44791e-05, 2.6426e-05, 2.82234e-05, 2.98979e-05, 3.14681e-05, 3.29526e-05, 3.43599e-05, 3.57003e-05, 3.69807e-05, 3.82062e-05, 3.93812e-05, 4.05091e-05, 4.15928e-05, 4.26349e-05, 
			2.18358e-05, 2.40784e-05, 2.6146e-05, 2.80627e-05, 2.98507e-05, 3.15302e-05, 3.31172e-05, 3.46229e-05, 3.6057e-05, 3.74275e-05, 3.87394e-05, 3.99976e-05, 4.12061e-05, 4.23677e-05, 4.34849e-05, 4.45604e-05
		)
}

CapTable	"metal5_C_LATERAL_42MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000257187, 0.000152181, 0.000113451, 9.25703e-05, 7.91969e-05, 6.97267e-05, 6.25642e-05, 5.68903e-05, 5.22394e-05, 4.83267e-05, 4.49677e-05, 4.20374e-05, 3.94474e-05, 3.71341e-05, 3.50494e-05, 3.31569e-05, 
			0.000273777, 0.000165332, 0.000124443, 0.000102102, 8.76361e-05, 7.73153e-05, 6.94657e-05, 6.32218e-05, 5.80879e-05, 5.37594e-05, 5.00375e-05, 4.67867e-05, 4.39116e-05, 4.13421e-05, 3.9026e-05, 3.6923e-05, 
			0.000284025, 0.000174333, 0.000132322, 0.000109095, 9.3945e-05, 8.30577e-05, 7.47361e-05, 6.8091e-05, 6.26113e-05, 5.79808e-05, 5.39923e-05, 5.05042e-05, 4.74161e-05, 4.46542e-05, 4.21634e-05, 3.9901e-05, 
			0.000291474, 0.000181202, 0.000138508, 0.000114684, 9.90303e-05, 8.77262e-05, 7.90486e-05, 7.20957e-05, 6.63472e-05, 6.14796e-05, 5.72802e-05, 5.36031e-05, 5.03446e-05, 4.74281e-05, 4.47964e-05, 4.24049e-05, 
			0.000296875, 0.000186616, 0.000143503, 0.000119265, 0.000103242, 9.16232e-05, 8.26684e-05, 7.54717e-05, 6.95079e-05, 6.4449e-05, 6.00783e-05, 5.6247e-05, 5.28486e-05, 4.98049e-05, 4.70568e-05, 4.45584e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_31MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			6.93231e-06, 9.28924e-06, 1.13972e-05, 1.32631e-05, 1.48738e-05, 1.62459e-05, 1.74219e-05, 1.83975e-05, 1.9233e-05, 1.9934e-05, 2.05164e-05, 2.10106e-05, 2.14276e-05, 2.17746e-05, 2.2069e-05, 2.23184e-05, 
			9.13794e-06, 1.14641e-05, 1.3601e-05, 1.55047e-05, 1.71832e-05, 1.86129e-05, 1.98514e-05, 2.09015e-05, 2.17834e-05, 2.25332e-05, 2.31677e-05, 2.37016e-05, 2.41489e-05, 2.45309e-05, 2.48559e-05, 2.51581e-05, 
			1.13708e-05, 1.36799e-05, 1.58211e-05, 1.77609e-05, 1.94531e-05, 2.09361e-05, 2.22072e-05, 2.32878e-05, 2.42095e-05, 2.4993e-05, 2.56529e-05, 2.62131e-05, 2.66899e-05, 2.71266e-05, 2.74574e-05, 2.77413e-05, 
			1.36008e-05, 1.5908e-05, 1.80483e-05, 2.00039e-05, 2.17318e-05, 2.32303e-05, 2.45275e-05, 2.56401e-05, 2.6586e-05, 2.73869e-05, 2.80733e-05, 2.86575e-05, 2.91718e-05, 2.95846e-05, 2.994e-05, 3.02479e-05, 
			1.58334e-05, 1.81077e-05, 2.02611e-05, 2.22187e-05, 2.39524e-05, 2.54705e-05, 2.67859e-05, 2.791e-05, 2.88737e-05, 2.96978e-05, 3.04232e-05, 3.10093e-05, 3.15142e-05, 3.19496e-05, 3.23265e-05, 3.26593e-05
		)
}

CapTable	"metal5_C_TOP_GP_31MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.72116e-05, 3.661e-05, 4.46763e-05, 5.14669e-05, 5.71396e-05, 6.18506e-05, 6.57591e-05, 6.89995e-05, 7.16842e-05, 7.39144e-05, 7.57689e-05, 7.73146e-05, 7.86046e-05, 7.96899e-05, 8.06008e-05, 8.13671e-05, 
			3.76081e-05, 4.71889e-05, 5.54523e-05, 6.24351e-05, 6.82972e-05, 7.31926e-05, 7.7273e-05, 8.06681e-05, 8.35001e-05, 8.58613e-05, 8.78317e-05, 8.94837e-05, 9.08747e-05, 9.20416e-05, 9.30251e-05, 9.38315e-05, 
			4.84288e-05, 5.80462e-05, 6.6366e-05, 7.34314e-05, 7.93783e-05, 8.4363e-05, 8.85357e-05, 9.20232e-05, 9.4939e-05, 9.73779e-05, 9.94285e-05, 0.00010115, 0.000102598, 0.000103789, 0.00010484, 0.000105729, 
			5.94425e-05, 6.9092e-05, 7.74454e-05, 8.45555e-05, 9.05566e-05, 9.56045e-05, 9.98381e-05, 0.000103384, 0.00010636, 0.000108863, 0.000110963, 0.000112729, 0.000114205, 0.000115477, 0.000116555, 0.000117469, 
			7.0526e-05, 8.01545e-05, 8.85057e-05, 9.56307e-05, 0.000101655, 0.000106728, 0.00011099, 0.000114577, 0.000117593, 0.000120124, 0.000122235, 0.000124052, 0.000125584, 0.000126877, 0.000127974, 0.000128898
		)
}

CapTable	"metal5_C_LATERAL_31MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000241832, 0.000132051, 8.96979e-05, 6.61714e-05, 5.09531e-05, 4.02837e-05, 3.24124e-05, 2.64388e-05, 2.17793e-05, 1.80941e-05, 1.5147e-05, 1.27574e-05, 1.08069e-05, 9.20237e-06, 7.87412e-06, 6.76824e-06, 
			0.000252346, 0.000139653, 9.55951e-05, 7.09985e-05, 5.49906e-05, 4.37296e-05, 3.53856e-05, 2.90146e-05, 2.40429e-05, 2.00908e-05, 1.69127e-05, 1.43298e-05, 1.22122e-05, 1.04638e-05, 9.01051e-06, 7.7969e-06, 
			0.000257179, 0.000143836, 9.91332e-05, 7.40042e-05, 5.76259e-05, 4.60249e-05, 3.74121e-05, 3.08175e-05, 2.56454e-05, 2.15252e-05, 1.81995e-05, 1.5488e-05, 1.32579e-05, 1.14117e-05, 9.86983e-06, 8.57716e-06, 
			0.000259948, 0.000146537, 0.000101555, 7.61466e-05, 5.95041e-05, 4.77015e-05, 3.89105e-05, 3.21552e-05, 2.68464e-05, 2.26046e-05, 1.91725e-05, 1.63665e-05, 1.40525e-05, 1.21309e-05, 1.05238e-05, 9.17328e-06, 
			0.000261337, 0.000148405, 0.000103338, 7.77918e-05, 6.10136e-05, 4.90816e-05, 4.01747e-05, 3.33112e-05, 2.7905e-05, 2.35761e-05, 2.0066e-05, 1.71857e-05, 1.48066e-05, 1.28276e-05, 1.11687e-05, 9.77117e-06
		)
}

CapTable	"metal5_C_BOTTOM_GP_32MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.56145e-05, 1.93912e-05, 2.24918e-05, 2.51464e-05, 2.74828e-05, 2.95825e-05, 3.14976e-05, 3.32633e-05, 3.49034e-05, 3.64357e-05, 3.78728e-05, 3.92246e-05, 4.04988e-05, 4.17017e-05, 4.28382e-05, 4.39131e-05, 
			1.84747e-05, 2.18801e-05, 2.48369e-05, 2.74585e-05, 2.9825e-05, 3.19872e-05, 3.39841e-05, 3.58412e-05, 3.75781e-05, 3.92085e-05, 4.07435e-05, 4.21916e-05, 4.35597e-05, 4.48534e-05, 4.60779e-05, 4.72377e-05, 
			2.11753e-05, 2.43499e-05, 2.72047e-05, 2.97965e-05, 3.21735e-05, 3.43734e-05, 3.64211e-05, 3.83393e-05, 4.0141e-05, 4.18387e-05, 4.34414e-05, 4.49568e-05, 4.6391e-05, 4.77495e-05, 4.90371e-05, 5.02578e-05, 
			2.37625e-05, 2.6804e-05, 2.95884e-05, 3.21586e-05, 3.45429e-05, 3.6767e-05, 3.88527e-05, 4.08139e-05, 4.26631e-05, 4.44106e-05, 4.60639e-05, 4.763e-05, 4.91146e-05, 5.05227e-05, 5.18586e-05, 5.31267e-05, 
			2.63172e-05, 2.9258e-05, 3.19996e-05, 3.45557e-05, 3.69468e-05, 3.91923e-05, 4.13064e-05, 4.33016e-05, 4.51882e-05, 4.69745e-05, 4.86672e-05, 5.02731e-05, 5.1797e-05, 5.32441e-05, 5.46184e-05, 5.5924e-05
		)
}

CapTable	"metal5_C_LATERAL_32MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000255719, 0.00015029, 0.000111197, 8.99997e-05, 7.63499e-05, 6.66382e-05, 5.92645e-05, 5.34061e-05, 4.85957e-05, 4.45458e-05, 4.10707e-05, 3.80436e-05, 3.53751e-05, 3.29998e-05, 3.08692e-05, 2.89451e-05, 
			0.000271853, 0.000162996, 0.000121744, 9.90843e-05, 8.43373e-05, 7.37699e-05, 6.57044e-05, 5.92727e-05, 5.39771e-05, 4.95113e-05, 4.56746e-05, 4.23299e-05, 3.93805e-05, 3.67548e-05, 3.43993e-05, 3.22722e-05, 
			0.000281644, 0.000171554, 0.000129189, 0.000105647, 9.02208e-05, 7.90906e-05, 7.05571e-05, 6.37289e-05, 5.80931e-05, 5.33314e-05, 4.92353e-05, 4.56613e-05, 4.25074e-05, 3.96982e-05, 3.71769e-05, 3.48997e-05, 
			0.000288647, 0.00017799, 0.000134954, 0.000110829, 9.49074e-05, 8.33698e-05, 7.44895e-05, 6.73634e-05, 6.14687e-05, 5.64799e-05, 5.21831e-05, 4.84304e-05, 4.51162e-05, 4.21623e-05, 3.95102e-05, 3.71135e-05, 
			0.000293605, 0.000182979, 0.000139538, 0.000115009, 9.87311e-05, 8.68906e-05, 7.77458e-05, 7.03882e-05, 6.42911e-05, 5.91238e-05, 5.46685e-05, 5.0774e-05, 4.73323e-05, 4.42632e-05, 4.15061e-05, 3.90134e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_21MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.04752e-05, 1.41639e-05, 1.75125e-05, 2.04808e-05, 2.30397e-05, 2.52199e-05, 2.70293e-05, 2.853e-05, 2.97553e-05, 3.07552e-05, 3.15639e-05, 3.22179e-05, 3.27468e-05, 3.3164e-05, 3.35039e-05, 3.3789e-05, 
			1.4163e-05, 1.79479e-05, 2.14328e-05, 2.45362e-05, 2.72291e-05, 2.95298e-05, 3.1454e-05, 3.30442e-05, 3.43522e-05, 3.54171e-05, 3.62855e-05, 3.69784e-05, 3.75419e-05, 3.79998e-05, 3.83783e-05, 3.86733e-05, 
			1.80416e-05, 2.18841e-05, 2.54548e-05, 2.86379e-05, 3.1413e-05, 3.37738e-05, 3.57574e-05, 3.74011e-05, 3.87533e-05, 3.98584e-05, 4.07448e-05, 4.14724e-05, 4.20759e-05, 4.25498e-05, 4.29322e-05, 4.32414e-05, 
			2.2036e-05, 2.59322e-05, 2.95531e-05, 3.2791e-05, 3.56082e-05, 3.80118e-05, 4.00293e-05, 4.1706e-05, 4.30715e-05, 4.41989e-05, 4.51192e-05, 4.58781e-05, 4.64796e-05, 4.69682e-05, 4.73593e-05, 4.76759e-05, 
			2.61206e-05, 3.00533e-05, 3.37025e-05, 3.69729e-05, 3.98191e-05, 4.22476e-05, 4.42894e-05, 4.59669e-05, 4.73642e-05, 4.85263e-05, 4.94567e-05, 5.02115e-05, 5.08216e-05, 5.13163e-05, 5.17156e-05, 5.20374e-05
		)
}

CapTable	"metal5_C_TOP_GP_21MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.60427e-05, 3.51907e-05, 4.31237e-05, 4.98621e-05, 5.55001e-05, 6.01593e-05, 6.39836e-05, 6.70963e-05, 6.96202e-05, 7.16538e-05, 7.3293e-05, 7.46113e-05, 7.56693e-05, 7.65291e-05, 7.72134e-05, 7.77524e-05, 
			3.64753e-05, 4.58969e-05, 5.41044e-05, 6.10959e-05, 6.69683e-05, 7.18374e-05, 7.5844e-05, 7.91159e-05, 8.17729e-05, 8.3926e-05, 8.56616e-05, 8.70715e-05, 8.82004e-05, 8.91073e-05, 8.98267e-05, 9.04164e-05, 
			4.74112e-05, 5.69402e-05, 6.5253e-05, 7.23591e-05, 7.83354e-05, 8.3309e-05, 8.74071e-05, 9.07627e-05, 9.34943e-05, 9.57082e-05, 9.75162e-05, 9.89632e-05, 0.000100112, 0.000101055, 0.000101814, 0.000102427, 
			5.85798e-05, 6.81709e-05, 7.65358e-05, 8.36956e-05, 8.97332e-05, 9.47603e-05, 9.89137e-05, 0.000102315, 0.000105107, 0.000107361, 0.000109185, 0.000110646, 0.00011184, 0.000112799, 0.000113581, 0.000114208, 
			6.98756e-05, 7.94611e-05, 8.78468e-05, 9.50337e-05, 0.000101101, 0.000106162, 0.000110343, 0.000113801, 0.000116604, 0.00011886, 0.000120709, 0.000122206, 0.000123417, 0.000124395, 0.000125184, 0.000125824
		)
}

CapTable	"metal5_C_LATERAL_21MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.00023999, 0.000129523, 8.65181e-05, 6.24296e-05, 4.67756e-05, 3.57939e-05, 2.7762e-05, 2.17228e-05, 1.71114e-05, 1.35467e-05, 1.0769e-05, 8.59104e-06, 6.875e-06, 5.51599e-06, 4.43829e-06, 3.58058e-06, 
			0.000249446, 0.000135988, 9.12311e-05, 6.60425e-05, 4.96033e-05, 3.80402e-05, 2.95579e-05, 2.31733e-05, 1.82832e-05, 1.44962e-05, 1.15394e-05, 9.21507e-06, 7.38188e-06, 5.92897e-06, 4.77433e-06, 3.85283e-06, 
			0.000253136, 0.000139016, 9.36102e-05, 6.79239e-05, 5.11253e-05, 3.92811e-05, 3.05722e-05, 2.40032e-05, 1.8965e-05, 1.50569e-05, 1.19981e-05, 9.59362e-06, 7.69488e-06, 6.18643e-06, 4.98561e-06, 4.02696e-06, 
			0.000254753, 0.000140599, 9.49567e-05, 6.9039e-05, 5.20445e-05, 4.00453e-05, 3.12106e-05, 2.45372e-05, 1.94098e-05, 1.54285e-05, 1.23116e-05, 9.85694e-06, 7.91358e-06, 6.37077e-06, 5.13962e-06, 4.15634e-06, 
			0.000254995, 0.000141355, 9.56936e-05, 6.96858e-05, 5.25976e-05, 4.05208e-05, 3.16151e-05, 2.48745e-05, 1.96951e-05, 1.56707e-05, 1.25143e-05, 1.00259e-05, 8.0551e-06, 6.48824e-06, 5.23843e-06, 4.23843e-06
		)
}

CapTable	"metal5_C_BOTTOM_GP_22MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.83613e-05, 2.30301e-05, 2.69837e-05, 3.0425e-05, 3.3466e-05, 3.61795e-05, 3.86166e-05, 4.08149e-05, 4.28048e-05, 4.46118e-05, 4.6257e-05, 4.77589e-05, 4.91336e-05, 5.03952e-05, 5.15556e-05, 5.26263e-05, 
			2.24962e-05, 2.69153e-05, 3.08312e-05, 3.43308e-05, 3.74755e-05, 4.03141e-05, 4.28848e-05, 4.52178e-05, 4.73407e-05, 4.92767e-05, 5.10461e-05, 5.26672e-05, 5.41556e-05, 5.55255e-05, 5.67892e-05, 5.79579e-05, 
			2.65429e-05, 3.08058e-05, 3.46735e-05, 3.81828e-05, 4.13683e-05, 4.42648e-05, 4.69016e-05, 4.93078e-05, 5.15047e-05, 5.35161e-05, 5.53608e-05, 5.70559e-05, 5.86171e-05, 6.00578e-05, 6.13905e-05, 6.26259e-05, 
			3.05361e-05, 3.47019e-05, 3.85211e-05, 4.20185e-05, 4.52153e-05, 4.81368e-05, 5.08093e-05, 5.32554e-05, 5.54988e-05, 5.75585e-05, 5.94527e-05, 6.11982e-05, 6.28103e-05, 6.43021e-05, 6.56855e-05, 6.69707e-05, 
			3.45555e-05, 3.86448e-05, 4.24311e-05, 4.59201e-05, 4.91251e-05, 5.2067e-05, 5.47667e-05, 5.72475e-05, 5.95276e-05, 6.16289e-05, 6.35653e-05, 6.53549e-05, 6.70118e-05, 6.85482e-05, 6.99756e-05, 7.13047e-05
		)
}

CapTable	"metal5_C_LATERAL_22MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000253564, 0.000147588, 0.000108023, 8.64421e-05, 7.2501e-05, 6.25857e-05, 5.50878e-05, 4.91749e-05, 4.43677e-05, 4.03689e-05, 3.69823e-05, 3.40725e-05, 3.15424e-05, 2.93204e-05, 2.73523e-05, 2.55956e-05, 
			0.000268815, 0.000159395, 0.000117679, 9.46554e-05, 7.96456e-05, 6.89079e-05, 6.07532e-05, 5.4301e-05, 4.90411e-05, 4.46559e-05, 4.09349e-05, 3.77322e-05, 3.49432e-05, 3.24904e-05, 3.0315e-05, 2.83714e-05, 
			0.000277763, 0.000167147, 0.000124366, 0.000100516, 8.48826e-05, 7.36354e-05, 6.5062e-05, 5.82574e-05, 5.26961e-05, 4.80488e-05, 4.40971e-05, 4.06894e-05, 3.77166e-05, 3.50979e-05, 3.27718e-05, 3.06904e-05, 
			0.000283989, 0.000172873, 0.000129491, 0.000105127, 8.9065e-05, 7.74694e-05, 6.86009e-05, 6.15422e-05, 5.57592e-05, 5.0916e-05, 4.67895e-05, 4.32241e-05, 4.01083e-05, 3.73588e-05, 3.49125e-05, 3.27205e-05, 
			0.000288238, 0.000177226, 0.000133513, 0.000108814, 9.24538e-05, 8.06068e-05, 7.15168e-05, 6.42627e-05, 5.83065e-05, 5.33083e-05, 4.90419e-05, 4.53497e-05, 4.21178e-05, 3.92616e-05, 3.6717e-05, 3.44335e-05
		)
}

CapTable	"metal5_C_BOTTOM_GPMIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.42034e-05, 3.36054e-05, 4.18336e-05, 4.86312e-05, 5.39968e-05, 5.80879e-05, 6.11241e-05, 6.33373e-05, 6.49248e-05, 6.60553e-05, 6.6854e-05, 6.74145e-05, 6.78068e-05, 6.80802e-05, 6.82708e-05, 6.84027e-05, 
			3.50105e-05, 4.482e-05, 5.33398e-05, 6.03423e-05, 6.58583e-05, 7.00564e-05, 7.31745e-05, 7.54437e-05, 7.70728e-05, 7.82323e-05, 7.90499e-05, 7.9624e-05, 8.00238e-05, 8.0302e-05, 8.04952e-05, 8.06282e-05, 
			4.63845e-05, 5.63293e-05, 6.49307e-05, 7.19892e-05, 7.75383e-05, 8.17595e-05, 8.48913e-05, 8.71714e-05, 8.88088e-05, 8.99728e-05, 9.07924e-05, 9.1366e-05, 9.17659e-05, 9.20429e-05, 9.22335e-05, 9.2365e-05, 
			5.79697e-05, 6.79635e-05, 7.65776e-05, 8.36436e-05, 8.91919e-05, 9.34094e-05, 9.65377e-05, 9.88137e-05, 0.000100446, 0.000101605, 0.00010242, 0.00010299, 0.000103386, 0.00010366, 0.000103849, 0.000103978, 
			6.9641e-05, 7.96227e-05, 8.82301e-05, 9.52789e-05, 0.000100815, 0.00010502, 0.000108136, 0.000110403, 0.000112029, 0.000113179, 0.000113989, 0.000114553, 0.000114946, 0.000115215, 0.000115399, 0.000115527
		)
}

CapTable	"metal5_C_TOP_GPMIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.398e-05, 3.31146e-05, 4.10289e-05, 4.7527e-05, 5.26297e-05, 5.65064e-05, 5.93809e-05, 6.14701e-05, 6.29738e-05, 6.4039e-05, 6.47937e-05, 6.53248e-05, 6.56963e-05, 6.59577e-05, 6.61415e-05, 6.6271e-05, 
			3.48166e-05, 4.43435e-05, 5.25346e-05, 5.92224e-05, 6.4465e-05, 6.84461e-05, 7.13917e-05, 7.35379e-05, 7.50754e-05, 7.61693e-05, 7.69435e-05, 7.74883e-05, 7.7871e-05, 7.81399e-05, 7.83294e-05, 7.84631e-05, 
			4.61751e-05, 5.58285e-05, 6.40973e-05, 7.08375e-05, 7.61088e-05, 8.01127e-05, 8.30739e-05, 8.52302e-05, 8.67782e-05, 8.78775e-05, 8.8656e-05, 8.92043e-05, 8.95902e-05, 8.98619e-05, 9.00539e-05, 9.01893e-05, 
			5.77225e-05, 6.74252e-05, 7.57122e-05, 8.24552e-05, 8.77339e-05, 9.173e-05, 9.46896e-05, 9.6844e-05, 9.83909e-05, 9.94916e-05, 0.00010027, 0.00010082, 0.000101207, 0.000101481, 0.000101674, 0.00010181, 
			6.93265e-05, 7.90105e-05, 8.72851e-05, 9.40153e-05, 9.92795e-05, 0.000103267, 0.000106218, 0.000108366, 0.000109909, 0.000111008, 0.000111786, 0.000112336, 0.000112724, 0.000112998, 0.000113193, 0.000113328
		)
}

CapTable	"metal5_C_LATERALMIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000231766, 0.000118614, 7.38784e-05, 4.90001e-05, 3.3348e-05, 2.2961e-05, 1.58995e-05, 1.10437e-05, 7.68583e-06, 5.35891e-06, 3.74342e-06, 2.62141e-06, 1.84194e-06, 1.29971e-06, 9.22188e-07, 6.58787e-07, 
			0.000237403, 0.000121785, 7.58029e-05, 5.02591e-05, 3.41886e-05, 2.35313e-05, 1.62885e-05, 1.13083e-05, 7.86547e-06, 5.4797e-06, 3.82395e-06, 2.67456e-06, 1.87639e-06, 1.32183e-06, 9.36067e-07, 6.67216e-07, 
			0.000238014, 0.000122317, 7.61483e-05, 5.04699e-05, 3.43375e-05, 2.36292e-05, 1.63518e-05, 1.13484e-05, 7.89001e-06, 5.49431e-06, 3.83221e-06, 2.67891e-06, 1.87838e-06, 1.32228e-06, 9.35529e-07, 6.66431e-07, 
			0.000237334, 0.000122075, 7.60273e-05, 5.03922e-05, 3.42722e-05, 2.35828e-05, 1.63188e-05, 1.13246e-05, 7.87313e-06, 5.48218e-06, 3.82423e-06, 2.67387e-06, 1.87518e-06, 1.32028e-06, 9.34639e-07, 6.67088e-07, 
			0.000235901, 0.000121521, 7.57088e-05, 5.01814e-05, 3.41223e-05, 2.34788e-05, 1.62439e-05, 1.12682e-05, 7.83035e-06, 5.44937e-06, 3.79858e-06, 2.65335e-06, 1.85852e-06, 1.307e-06, 9.24607e-07, 6.61e-07
		)
}

CapTable	"metal5_C_BOTTOM_GP_12MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			3.31621e-05, 4.42827e-05, 5.38135e-05, 6.18261e-05, 6.84816e-05, 7.39805e-05, 7.85184e-05, 8.22713e-05, 8.53868e-05, 8.79875e-05, 9.01721e-05, 9.20194e-05, 9.35936e-05, 9.49423e-05, 9.61078e-05, 9.71211e-05, 
			4.50292e-05, 5.61571e-05, 6.578e-05, 7.39265e-05, 8.07505e-05, 8.64347e-05, 9.11669e-05, 9.51128e-05, 9.84178e-05, 0.000101199, 0.000103555, 0.000105562, 0.000107283, 0.000108772, 0.000110063, 0.000111194, 
			5.71053e-05, 6.80975e-05, 7.76609e-05, 8.58146e-05, 9.26866e-05, 9.84547e-05, 0.000103291, 0.000107351, 0.000110776, 0.000113677, 0.000116151, 0.000118272, 0.000120102, 0.000121692, 0.000123082, 0.000124303, 
			6.91362e-05, 7.99951e-05, 8.9469e-05, 9.75918e-05, 0.000104481, 0.000110293, 0.000115194, 0.000119335, 0.000122846, 0.000125838, 0.000128402, 0.000130613, 0.000132531, 0.000134205, 0.000135673, 0.000136969, 
			8.10883e-05, 9.18019e-05, 0.000101201, 0.000109296, 0.000116193, 0.000122043, 0.000126999, 0.000131207, 0.000134793, 0.000137862, 0.000140505, 0.000142794, 0.000144786, 0.000146532, 0.00014807, 0.000149433
		)
}

CapTable	"metal5_C_LATERAL_12MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000242714, 0.000133502, 9.17143e-05, 6.8734e-05, 5.40219e-05, 4.3797e-05, 3.63201e-05, 3.06583e-05, 2.62576e-05, 2.27655e-05, 1.99466e-05, 1.76374e-05, 1.57208e-05, 1.41118e-05, 1.27468e-05, 1.1578e-05, 
			0.000253934, 0.000141933, 9.85356e-05, 7.45351e-05, 5.90717e-05, 4.82635e-05, 4.0311e-05, 3.42493e-05, 2.95058e-05, 2.57164e-05, 2.26365e-05, 2.00968e-05, 1.79757e-05, 1.61841e-05, 1.46556e-05, 1.33397e-05, 
			0.000259675, 0.000147125, 0.000103138, 7.865e-05, 6.28089e-05, 5.16669e-05, 4.34236e-05, 3.71045e-05, 3.21313e-05, 2.81354e-05, 2.48692e-05, 2.21613e-05, 1.98876e-05, 1.79576e-05, 1.63031e-05, 1.48725e-05, 
			0.000263521, 0.000150975, 0.000106747, 8.1996e-05, 6.58997e-05, 5.45341e-05, 4.60845e-05, 3.95758e-05, 3.44282e-05, 3.02719e-05, 2.68588e-05, 2.40156e-05, 2.16178e-05, 1.95736e-05, 1.78141e-05, 1.62869e-05, 
			0.000266055, 0.000153999, 0.000109698, 8.47898e-05, 6.85205e-05, 5.69902e-05, 4.838e-05, 4.1718e-05, 3.64274e-05, 3.21382e-05, 2.86018e-05, 2.56441e-05, 2.31407e-05, 2.09988e-05, 1.9149e-05, 1.75381e-05
		)
}

CapTable	"metal6_C_BOTTOM_GP_71MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.44, 0.88, 1.32, 1.76, 2.2, 2.64, 3.08, 3.52, 3.96, 4.4, 4.84, 5.28, 5.72, 6.16, 6.6, 7.04)
		capValue			= (
			1.57128e-05, 1.88828e-05, 2.14223e-05, 2.36185e-05, 2.55904e-05, 2.73971e-05, 2.90729e-05, 3.06387e-05, 3.21086e-05, 3.34926e-05, 3.47985e-05, 3.60314e-05, 3.71965e-05, 3.82979e-05, 3.93391e-05, 4.03233e-05, 
			1.77454e-05, 2.07289e-05, 2.32869e-05, 2.55683e-05, 2.76512e-05, 2.95793e-05, 3.13799e-05, 3.30707e-05, 3.4664e-05, 3.61685e-05, 3.75914e-05, 3.8938e-05, 4.02129e-05, 4.142e-05, 4.25628e-05, 4.3645e-05, 
			1.99248e-05, 2.27829e-05, 2.53252e-05, 2.76408e-05, 2.97811e-05, 3.17807e-05, 3.36587e-05, 3.54298e-05, 3.71042e-05, 3.86896e-05, 4.01915e-05, 4.16156e-05, 4.29657e-05, 4.42455e-05, 4.54588e-05, 4.66091e-05, 
			2.21676e-05, 2.49398e-05, 2.74622e-05, 2.97937e-05, 3.19691e-05, 3.40147e-05, 3.59454e-05, 3.77719e-05, 3.95034e-05, 4.11459e-05, 4.2705e-05, 4.41847e-05, 4.55897e-05, 4.69231e-05, 4.81887e-05, 4.93894e-05, 
			2.44482e-05, 2.71599e-05, 2.96671e-05, 3.20092e-05, 3.42119e-05, 3.62922e-05, 3.82622e-05, 4.0132e-05, 4.19079e-05, 4.35957e-05, 4.51997e-05, 4.67241e-05, 4.81728e-05, 4.95492e-05, 5.08566e-05, 5.20981e-05
		)
}

CapTable	"metal6_C_LATERAL_71MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.44, 0.88, 1.32, 1.76, 2.2, 2.64, 3.08, 3.52, 3.96, 4.4, 4.84, 5.28, 5.72, 6.16, 6.6, 7.04)
		capValue			= (
			0.000177287, 0.00011352, 8.7575e-05, 7.25348e-05, 6.23591e-05, 5.4848e-05, 4.89848e-05, 4.42275e-05, 4.02574e-05, 3.68739e-05, 3.39429e-05, 3.13719e-05, 2.90936e-05, 2.70579e-05, 2.52269e-05, 2.35708e-05, 
			0.000195646, 0.000127487, 9.88795e-05, 8.2064e-05, 7.06148e-05, 6.21367e-05, 5.55085e-05, 5.0127e-05, 4.56357e-05, 4.18089e-05, 3.84953e-05, 3.55898e-05, 3.3016e-05, 3.07175e-05, 2.86509e-05, 2.67819e-05, 
			0.000206325, 0.000136376, 0.000106386, 8.85648e-05, 7.63528e-05, 6.72712e-05, 6.01511e-05, 5.43598e-05, 4.95205e-05, 4.53936e-05, 4.18188e-05, 3.86828e-05, 3.59045e-05, 3.3423e-05, 3.11913e-05, 2.91728e-05, 
			0.000212854, 0.000142442, 0.000111742, 9.33292e-05, 8.06339e-05, 7.11511e-05, 6.36951e-05, 5.76179e-05, 5.25319e-05, 4.81902e-05, 4.44257e-05, 4.11218e-05, 3.81927e-05, 3.55753e-05, 3.32203e-05, 3.10897e-05, 
			0.000217913, 0.000147246, 0.000116055, 9.72048e-05, 8.41378e-05, 7.43484e-05, 6.66317e-05, 6.03301e-05, 5.50494e-05, 5.05365e-05, 4.66206e-05, 4.31815e-05, 4.0131e-05, 3.74037e-05, 3.49488e-05, 3.27268e-05
		)
}

CapTable	"metal6_C_BOTTOM_GP_61MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.44, 0.88, 1.32, 1.76, 2.2, 2.64, 3.08, 3.52, 3.96, 4.4, 4.84, 5.28, 5.72, 6.16, 6.6, 7.04)
		capValue			= (
			1.62622e-05, 1.96064e-05, 2.23064e-05, 2.46532e-05, 2.67665e-05, 2.87061e-05, 3.05055e-05, 3.21854e-05, 3.37597e-05, 3.52383e-05, 3.66287e-05, 3.79368e-05, 3.9168e-05, 4.0327e-05, 4.14176e-05, 4.24435e-05, 
			1.8472e-05, 2.16445e-05, 2.43789e-05, 2.68285e-05, 2.90699e-05, 3.11463e-05, 3.30848e-05, 3.49027e-05, 3.66118e-05, 3.82215e-05, 3.97385e-05, 4.11687e-05, 4.25172e-05, 4.37883e-05, 4.49863e-05, 4.61153e-05, 
			2.08498e-05, 2.39072e-05, 2.66395e-05, 2.9135e-05, 3.1446e-05, 3.36031e-05, 3.56283e-05, 3.75343e-05, 3.93318e-05, 4.10283e-05, 4.263e-05, 4.41424e-05, 4.55703e-05, 4.69181e-05, 4.81901e-05, 4.939e-05, 
			2.33079e-05, 2.62888e-05, 2.90102e-05, 3.153e-05, 3.38829e-05, 3.6094e-05, 3.81769e-05, 4.01435e-05, 4.20023e-05, 4.37598e-05, 4.54215e-05, 4.69929e-05, 4.84781e-05, 4.98815e-05, 5.12074e-05, 5.24597e-05, 
			2.58174e-05, 2.87442e-05, 3.1458e-05, 3.39948e-05, 3.63791e-05, 3.86289e-05, 4.07557e-05, 4.27687e-05, 4.46748e-05, 4.64797e-05, 4.81886e-05, 4.98062e-05, 5.13367e-05, 5.27845e-05, 5.41535e-05, 5.54478e-05
		)
}

CapTable	"metal6_C_LATERAL_61MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.44, 0.88, 1.32, 1.76, 2.2, 2.64, 3.08, 3.52, 3.96, 4.4, 4.84, 5.28, 5.72, 6.16, 6.6, 7.04)
		capValue			= (
			0.000176853, 0.000112969, 8.6923e-05, 7.17921e-05, 6.15352e-05, 5.39526e-05, 4.80272e-05, 4.32169e-05, 3.9203e-05, 3.5784e-05, 3.28257e-05, 3.02347e-05, 2.7943e-05, 2.58999e-05, 2.4067e-05, 2.24139e-05, 
			0.000195078, 0.000126799, 9.80847e-05, 8.11734e-05, 6.96398e-05, 6.1088e-05, 5.43965e-05, 4.89619e-05, 4.44276e-05, 4.05665e-05, 3.72273e-05, 3.43039e-05, 3.17192e-05, 2.94162e-05, 2.73504e-05, 2.54873e-05, 
			0.000205617, 0.000135548, 0.000105449, 8.75326e-05, 7.52371e-05, 6.60834e-05, 5.89025e-05, 5.30611e-05, 4.81818e-05, 4.40244e-05, 4.04273e-05, 3.72771e-05, 3.44914e-05, 3.20086e-05, 2.97809e-05, 2.77714e-05, 
			0.000212003, 0.000141473, 0.000110668, 9.21621e-05, 7.93869e-05, 6.98363e-05, 6.2324e-05, 5.62012e-05, 5.108e-05, 4.6712e-05, 4.29299e-05, 3.96154e-05, 3.6683e-05, 3.40681e-05, 3.17207e-05, 2.96022e-05, 
			0.000216919, 0.00014614, 0.000114848, 9.59101e-05, 8.27686e-05, 7.29168e-05, 6.51493e-05, 5.88078e-05, 5.34969e-05, 4.89628e-05, 4.50337e-05, 4.15884e-05, 3.85386e-05, 3.58172e-05, 3.33734e-05, 3.11665e-05
		)
}

CapTable	"metal6_C_BOTTOM_GP_51MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.44, 0.88, 1.32, 1.76, 2.2, 2.64, 3.08, 3.52, 3.96, 4.4, 4.84, 5.28, 5.72, 6.16, 6.6, 7.04)
		capValue			= (
			1.71835e-05, 2.08307e-05, 2.38087e-05, 2.64159e-05, 2.87726e-05, 3.0938e-05, 3.29451e-05, 3.48134e-05, 3.65566e-05, 3.81852e-05, 3.97072e-05, 4.11295e-05, 4.24582e-05, 4.36992e-05, 4.48577e-05, 4.59392e-05, 
			1.97175e-05, 2.32191e-05, 2.62651e-05, 2.90065e-05, 3.15206e-05, 3.38497e-05, 3.60191e-05, 3.80464e-05, 3.99433e-05, 4.17193e-05, 4.33821e-05, 4.49388e-05, 4.63957e-05, 4.77585e-05, 4.90331e-05, 5.02246e-05, 
			2.24566e-05, 2.58657e-05, 2.89315e-05, 3.17392e-05, 3.43409e-05, 3.6767e-05, 3.90369e-05, 4.11647e-05, 4.31601e-05, 4.50322e-05, 4.67876e-05, 4.84333e-05, 4.99759e-05, 5.14207e-05, 5.27734e-05, 5.40399e-05, 
			2.53081e-05, 2.86567e-05, 3.17283e-05, 3.45746e-05, 3.72307e-05, 3.97194e-05, 4.20558e-05, 4.42509e-05, 4.63137e-05, 4.82518e-05, 5.00719e-05, 5.17806e-05, 5.33838e-05, 5.48874e-05, 5.6297e-05, 5.76179e-05, 
			2.82324e-05, 3.15412e-05, 3.46135e-05, 3.74856e-05, 4.01799e-05, 4.27144e-05, 4.50994e-05, 4.7345e-05, 4.94587e-05, 5.14472e-05, 5.3317e-05, 5.50744e-05, 5.67251e-05, 5.82748e-05, 5.97292e-05, 6.10936e-05
		)
}

CapTable	"metal6_C_LATERAL_51MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.44, 0.88, 1.32, 1.76, 2.2, 2.64, 3.08, 3.52, 3.96, 4.4, 4.84, 5.28, 5.72, 6.16, 6.6, 7.04)
		capValue			= (
			0.000176128, 0.000112048, 8.5828e-05, 7.05438e-05, 6.01532e-05, 5.24555e-05, 4.64333e-05, 4.15441e-05, 3.7468e-05, 3.40021e-05, 3.10111e-05, 2.83998e-05, 2.6099e-05, 2.40568e-05, 2.22331e-05, 2.05961e-05, 
			0.000194117, 0.000125632, 9.6735e-05, 7.96643e-05, 6.7993e-05, 5.93248e-05, 5.25378e-05, 4.70268e-05, 4.24336e-05, 3.85302e-05, 3.51632e-05, 3.22249e-05, 2.96367e-05, 2.73399e-05, 2.52886e-05, 2.34473e-05, 
			0.000204409, 0.000134132, 0.000103853, 8.57789e-05, 7.33503e-05, 6.40863e-05, 5.68168e-05, 5.09059e-05, 4.59755e-05, 4.17829e-05, 3.81652e-05, 3.5007e-05, 3.22241e-05, 2.97536e-05, 2.75467e-05, 2.55646e-05, 
			0.00021054, 0.000139811, 0.000108832, 9.0178e-05, 7.72792e-05, 6.76284e-05, 6.00369e-05, 5.38545e-05, 4.8691e-05, 4.42966e-05, 4.05016e-05, 3.71864e-05, 3.42636e-05, 3.16672e-05, 2.9346e-05, 2.72603e-05, 
			0.00021521, 0.000144242, 0.000112788, 9.3714e-05, 8.04609e-05, 7.05207e-05, 6.26852e-05, 5.62943e-05, 5.09506e-05, 4.63987e-05, 4.24647e-05, 3.90258e-05, 3.59917e-05, 3.32949e-05, 3.08824e-05, 2.87131e-05
		)
}

CapTable	"metal6_C_BOTTOM_GP_41MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.44, 0.88, 1.32, 1.76, 2.2, 2.64, 3.08, 3.52, 3.96, 4.4, 4.84, 5.28, 5.72, 6.16, 6.6, 7.04)
		capValue			= (
			1.9132e-05, 2.34595e-05, 2.70684e-05, 3.02606e-05, 3.31558e-05, 3.58092e-05, 3.82513e-05, 4.05014e-05, 4.25747e-05, 4.44838e-05, 4.62403e-05, 4.78552e-05, 4.93382e-05, 5.06999e-05, 5.19493e-05, 5.30952e-05, 
			2.24062e-05, 2.66616e-05, 3.04132e-05, 3.38089e-05, 3.69211e-05, 3.97889e-05, 4.24369e-05, 4.4883e-05, 4.71416e-05, 4.92253e-05, 5.11461e-05, 5.29153e-05, 5.45437e-05, 5.60414e-05, 5.74188e-05, 5.86849e-05, 
			2.59867e-05, 3.02005e-05, 3.40185e-05, 3.75203e-05, 4.07532e-05, 4.37454e-05, 4.65165e-05, 4.90819e-05, 5.14554e-05, 5.36488e-05, 5.56743e-05, 5.75428e-05, 5.92655e-05, 6.0853e-05, 6.2315e-05, 6.36614e-05, 
			2.97472e-05, 3.39362e-05, 3.7788e-05, 4.13496e-05, 4.46538e-05, 4.77223e-05, 5.05705e-05, 5.32132e-05, 5.56617e-05, 5.79282e-05, 6.00244e-05, 6.19612e-05, 6.37495e-05, 6.54002e-05, 6.69228e-05, 6.83271e-05, 
			3.36283e-05, 3.7796e-05, 4.16648e-05, 4.52632e-05, 4.86154e-05, 5.17358e-05, 5.46391e-05, 5.73355e-05, 5.98397e-05, 6.21606e-05, 6.43103e-05, 6.62992e-05, 6.81385e-05, 6.98382e-05, 7.14085e-05, 7.28588e-05
		)
}

CapTable	"metal6_C_LATERAL_41MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.44, 0.88, 1.32, 1.76, 2.2, 2.64, 3.08, 3.52, 3.96, 4.4, 4.84, 5.28, 5.72, 6.16, 6.6, 7.04)
		capValue			= (
			0.000174632, 0.000110115, 8.35113e-05, 6.78993e-05, 5.72349e-05, 4.93156e-05, 4.31208e-05, 3.81037e-05, 3.39398e-05, 3.04216e-05, 2.74088e-05, 2.48014e-05, 2.25267e-05, 2.05283e-05, 1.87632e-05, 1.71967e-05, 
			0.000192099, 0.000123154, 9.38626e-05, 7.6462e-05, 6.45225e-05, 5.56435e-05, 4.86975e-05, 4.30741e-05, 3.84092e-05, 3.44694e-05, 3.1096e-05, 2.81767e-05, 2.56288e-05, 2.33898e-05, 2.14103e-05, 1.96523e-05, 
			0.000201835, 0.00013111, 0.000100452, 8.20695e-05, 6.9396e-05, 5.99449e-05, 5.25397e-05, 4.65387e-05, 4.15569e-05, 3.73468e-05, 3.37396e-05, 3.06161e-05, 2.7888e-05, 2.54881e-05, 2.3365e-05, 2.14771e-05, 
			0.00020742, 0.000136271, 0.000104946, 8.60154e-05, 7.29032e-05, 6.30947e-05, 5.53944e-05, 4.91457e-05, 4.39524e-05, 3.9559e-05, 3.57911e-05, 3.25252e-05, 2.96698e-05, 2.71553e-05, 2.49283e-05, 2.29459e-05, 
			0.000211573, 0.000140226, 0.000108465, 8.91515e-05, 7.57182e-05, 6.565e-05, 5.77319e-05, 5.12975e-05, 4.59436e-05, 4.14099e-05, 3.75178e-05, 3.4141e-05, 3.11854e-05, 2.85804e-05, 2.62706e-05, 2.42124e-05
		)
}

CapTable	"metal6_C_BOTTOM_GP_31MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.44, 0.88, 1.32, 1.76, 2.2, 2.64, 3.08, 3.52, 3.96, 4.4, 4.84, 5.28, 5.72, 6.16, 6.6, 7.04)
		capValue			= (
			2.23669e-05, 2.79397e-05, 3.26777e-05, 3.68715e-05, 4.06326e-05, 4.40169e-05, 4.70618e-05, 4.97985e-05, 5.22543e-05, 5.44556e-05, 5.64271e-05, 5.81917e-05, 5.97709e-05, 6.1184e-05, 6.2449e-05, 6.35818e-05, 
			2.71135e-05, 3.27516e-05, 3.77471e-05, 4.22333e-05, 4.62794e-05, 4.99309e-05, 5.32248e-05, 5.61919e-05, 5.88615e-05, 6.12613e-05, 6.34168e-05, 6.53522e-05, 6.70896e-05, 6.86496e-05, 7.00505e-05, 7.13096e-05, 
			3.23318e-05, 3.79959e-05, 4.31048e-05, 4.7729e-05, 5.19189e-05, 5.57138e-05, 5.91469e-05, 6.2248e-05, 6.50454e-05, 6.75667e-05, 6.98377e-05, 7.18822e-05, 7.37225e-05, 7.53793e-05, 7.68712e-05, 7.82155e-05, 
			3.78121e-05, 4.34747e-05, 4.86285e-05, 5.33192e-05, 5.75849e-05, 6.14601e-05, 6.49746e-05, 6.81574e-05, 7.10363e-05, 7.36369e-05, 7.59843e-05, 7.81041e-05, 8.00165e-05, 8.17423e-05, 8.33002e-05, 8.47073e-05, 
			4.34345e-05, 4.90751e-05, 5.42428e-05, 5.89674e-05, 6.32797e-05, 6.72082e-05, 7.07797e-05, 7.40214e-05, 7.69604e-05, 7.96225e-05, 8.20308e-05, 8.42089e-05, 8.61783e-05, 8.79595e-05, 8.9571e-05, 9.10292e-05
		)
}

CapTable	"metal6_C_LATERAL_31MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.44, 0.88, 1.32, 1.76, 2.2, 2.64, 3.08, 3.52, 3.96, 4.4, 4.84, 5.28, 5.72, 6.16, 6.6, 7.04)
		capValue			= (
			0.000172086, 0.000106795, 7.95915e-05, 6.35305e-05, 5.25479e-05, 4.44209e-05, 3.81104e-05, 3.30517e-05, 2.89057e-05, 2.54516e-05, 2.25382e-05, 2.00567e-05, 1.79262e-05, 1.60854e-05, 1.44856e-05, 1.30888e-05, 
			0.000188502, 0.000118824, 8.8989e-05, 7.12034e-05, 5.90104e-05, 4.99844e-05, 4.29769e-05, 3.73603e-05, 3.27554e-05, 2.89162e-05, 2.56742e-05, 2.29087e-05, 2.05303e-05, 1.84709e-05, 1.66774e-05, 1.51075e-05, 
			0.000197254, 0.000125898, 9.47938e-05, 7.61132e-05, 6.32608e-05, 5.37256e-05, 4.63109e-05, 4.03593e-05, 3.54726e-05, 3.13921e-05, 2.79403e-05, 2.49906e-05, 2.2449e-05, 2.02438e-05, 1.83195e-05, 1.66317e-05, 
			0.000201976, 0.000130321, 9.86548e-05, 7.95142e-05, 6.62951e-05, 5.64602e-05, 4.87971e-05, 4.26344e-05, 3.75652e-05, 3.33245e-05, 2.97307e-05, 2.66534e-05, 2.39965e-05, 2.16867e-05, 1.96669e-05, 1.78918e-05, 
			0.000205431, 0.000133696, 0.000101689, 8.22398e-05, 6.87578e-05, 5.87089e-05, 5.08628e-05, 4.45414e-05, 3.93324e-05, 3.49671e-05, 3.1261e-05, 2.80822e-05, 2.53327e-05, 2.29383e-05, 2.08407e-05, 1.8994e-05
		)
}

CapTable	"metal6_C_BOTTOM_GP_21MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.44, 0.88, 1.32, 1.76, 2.2, 2.64, 3.08, 3.52, 3.96, 4.4, 4.84, 5.28, 5.72, 6.16, 6.6, 7.04)
		capValue			= (
			2.89634e-05, 3.71505e-05, 4.40475e-05, 4.99575e-05, 5.50438e-05, 5.9423e-05, 6.31907e-05, 6.64309e-05, 6.92167e-05, 7.16122e-05, 7.36727e-05, 7.54468e-05, 7.69754e-05, 7.82944e-05, 7.94337e-05, 8.04193e-05, 
			3.68052e-05, 4.51342e-05, 5.23318e-05, 5.85675e-05, 6.39719e-05, 6.86524e-05, 7.27047e-05, 7.62088e-05, 7.92406e-05, 8.18614e-05, 8.41297e-05, 8.60939e-05, 8.77964e-05, 8.92738e-05, 9.05577e-05, 9.16749e-05, 
			4.52269e-05, 5.35515e-05, 6.08391e-05, 6.72076e-05, 7.27642e-05, 7.76068e-05, 8.18204e-05, 8.54839e-05, 8.86681e-05, 9.14346e-05, 9.38387e-05, 9.59298e-05, 9.77495e-05, 9.93355e-05, 0.00010072, 0.000101928, 
			5.38392e-05, 6.20861e-05, 6.93653e-05, 7.57678e-05, 8.1383e-05, 8.62999e-05, 9.05967e-05, 9.43496e-05, 9.76235e-05, 0.000100481, 0.000102973, 0.00010515, 0.000107053, 0.000108718, 0.000110175, 0.000111455, 
			6.25351e-05, 7.07007e-05, 7.79585e-05, 8.43788e-05, 9.00381e-05, 9.50139e-05, 9.93789e-05, 0.000103204, 0.000106554, 0.000109486, 0.000112053, 0.000114301, 0.000116273, 0.000118003, 0.000119523, 0.000120861
		)
}

CapTable	"metal6_C_LATERAL_21MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.44, 0.88, 1.32, 1.76, 2.2, 2.64, 3.08, 3.52, 3.96, 4.4, 4.84, 5.28, 5.72, 6.16, 6.6, 7.04)
		capValue			= (
			0.000167659, 0.000101053, 7.3081e-05, 5.66238e-05, 4.54959e-05, 3.73922e-05, 3.12182e-05, 2.63714e-05, 2.24857e-05, 1.9322e-05, 1.67154e-05, 1.45473e-05, 1.27304e-05, 1.11977e-05, 9.89793e-06, 8.79026e-06, 
			0.000182707, 0.000112058, 8.17301e-05, 6.3748e-05, 5.15481e-05, 4.26403e-05, 3.58348e-05, 3.04754e-05, 2.61637e-05, 2.26397e-05, 1.9724e-05, 1.72885e-05, 1.5238e-05, 1.35004e-05, 1.20196e-05, 1.07515e-05, 
			0.00019049, 0.000118504, 8.71342e-05, 6.84041e-05, 5.56382e-05, 4.62796e-05, 3.91028e-05, 3.34307e-05, 2.88511e-05, 2.50944e-05, 2.19752e-05, 1.93602e-05, 1.71509e-05, 1.5272e-05, 1.36651e-05, 1.22844e-05, 
			0.00019473, 0.000122698, 9.09308e-05, 7.18444e-05, 5.87773e-05, 4.91595e-05, 4.17589e-05, 3.58903e-05, 3.11359e-05, 2.72225e-05, 2.39623e-05, 2.12194e-05, 1.88936e-05, 1.69086e-05, 1.52048e-05, 1.37353e-05, 
			0.000197975, 0.000126039, 9.40336e-05, 7.46993e-05, 6.14034e-05, 5.15903e-05, 4.40154e-05, 3.79905e-05, 3.30952e-05, 2.90545e-05, 2.56782e-05, 2.28299e-05, 2.0408e-05, 1.8335e-05, 1.65508e-05, 1.50075e-05
		)
}

CapTable	"metal6_C_BOTTOM_GPMIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.44, 0.88, 1.32, 1.76, 2.2, 2.64, 3.08, 3.52, 3.96, 4.4, 4.84, 5.28, 5.72, 6.16, 6.6, 7.04)
		capValue			= (
			6.07645e-05, 7.92315e-05, 9.23315e-05, 0.000101727, 0.000108608, 0.000113757, 0.000117683, 0.000120728, 0.000123123, 0.000125032, 0.000126567, 0.000127814, 0.000128833, 0.000129672, 0.000130364, 0.000130937, 
			8.5751e-05, 0.000104376, 0.000117986, 0.000128014, 0.000135526, 0.000141254, 0.000145692, 0.000149178, 0.000151947, 0.00015417, 0.000155971, 0.00015744, 0.000158646, 0.000159639, 0.000160461, 0.000161142, 
			0.000111137, 0.000129754, 0.000143612, 0.000153991, 0.000161885, 0.000167981, 0.000172755, 0.000176541, 0.000179571, 0.000182021, 0.000184014, 0.000185646, 0.00018699, 0.000188101, 0.000189021, 0.000189785, 
			0.000136566, 0.00015514, 0.000169141, 0.000179754, 0.000187901, 0.000194251, 0.000199263, 0.000203257, 0.000206474, 0.000209084, 0.000211217, 0.000212968, 0.000214413, 0.000215611, 0.000216604, 0.000217432, 
			0.000162181, 0.00018075, 0.000194869, 0.000205665, 0.000214024, 0.000220573, 0.000225772, 0.000229938, 0.000233308, 0.000236053, 0.000238302, 0.000240154, 0.000241686, 0.000242956, 0.000244014, 0.000244894
		)
}

CapTable	"metal6_C_LATERALMIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.44, 0.88, 1.32, 1.76, 2.2, 2.64, 3.08, 3.52, 3.96, 4.4, 4.84, 5.28, 5.72, 6.16, 6.6, 7.04)
		capValue			= (
			0.000149528, 8.12074e-05, 5.34526e-05, 3.80673e-05, 2.83317e-05, 2.1689e-05, 1.69267e-05, 1.33905e-05, 1.06951e-05, 8.59851e-06, 6.94163e-06, 5.61576e-06, 4.54417e-06, 3.67132e-06, 2.95611e-06, 2.36743e-06, 
			0.00016092, 8.98911e-05, 6.02958e-05, 4.35408e-05, 3.27459e-05, 2.52649e-05, 1.98321e-05, 1.57554e-05, 1.26218e-05, 1.01684e-05, 8.2199e-06, 6.65471e-06, 5.38616e-06, 4.35086e-06, 3.50133e-06, 2.80153e-06, 
			0.000167028, 9.51919e-05, 6.47012e-05, 4.7191e-05, 3.57682e-05, 2.7763e-05, 2.18933e-05, 1.74532e-05, 1.40171e-05, 1.1312e-05, 9.15365e-06, 7.41361e-06, 5.99924e-06, 4.84228e-06, 3.8913e-06, 3.10693e-06, 
			0.000170375, 9.8633e-05, 6.77193e-05, 4.97694e-05, 3.79529e-05, 2.96033e-05, 2.34404e-05, 1.87525e-05, 1.51075e-05, 1.22263e-05, 9.91971e-06, 8.05468e-06, 6.53488e-06, 5.28891e-06, 4.26277e-06, 3.41485e-06, 
			0.000172981, 0.000101313, 7.00986e-05, 5.18213e-05, 3.96923e-05, 3.108e-05, 2.46882e-05, 1.98028e-05, 1.59885e-05, 1.29628e-05, 1.05331e-05, 8.56325e-06, 6.95446e-06, 5.633e-06, 4.54289e-06, 3.64087e-06
		)
}

CapModel	"polyConfig1" {
		refLayer				= "GPOLY"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "MET1"
		bottomCapType			= "Table"
		bottomCapDataMin		= "poly_C_BOTTOM_GPMIN"
		bottomCapDataNom		= "poly_C_BOTTOM_GPNOM"
		bottomCapDataMax		= "poly_C_BOTTOM_GPMAX"
		topCapType			= "Table"
		topCapDataMin			= "poly_C_TOP_GPMIN"
		topCapDataNom			= "poly_C_TOP_GPNOM"
		topCapDataMax			= "poly_C_TOP_GPMAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "poly_C_LATERALMIN"
		lateralCapDataNom		= "poly_C_LATERALNOM"
		lateralCapDataMax		= "poly_C_LATERALMAX"
}

CapModel	"polyConfig2" {
		refLayer				= "GPOLY"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "MET2"
		bottomCapType			= "Table"
		bottomCapDataMin		= "poly_C_BOTTOM_GP_12MIN"
		bottomCapDataNom		= "poly_C_BOTTOM_GP_12NOM"
		bottomCapDataMax		= "poly_C_BOTTOM_GP_12MAX"
		topCapType			= "Table"
		topCapDataMin			= "poly_C_TOP_GP_12MIN"
		topCapDataNom			= "poly_C_TOP_GP_12NOM"
		topCapDataMax			= "poly_C_TOP_GP_12MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "poly_C_LATERAL_12MIN"
		lateralCapDataNom		= "poly_C_LATERAL_12NOM"
		lateralCapDataMax		= "poly_C_LATERAL_12MAX"
}

CapModel	"polyConfig3" {
		refLayer				= "GPOLY"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "MET3"
		bottomCapType			= "Table"
		bottomCapDataMin		= "poly_C_BOTTOM_GP_13MIN"
		bottomCapDataNom		= "poly_C_BOTTOM_GP_13NOM"
		bottomCapDataMax		= "poly_C_BOTTOM_GP_13MAX"
		topCapType			= "Table"
		topCapDataMin			= "poly_C_TOP_GP_13MIN"
		topCapDataNom			= "poly_C_TOP_GP_13NOM"
		topCapDataMax			= "poly_C_TOP_GP_13MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "poly_C_LATERAL_13MIN"
		lateralCapDataNom		= "poly_C_LATERAL_13NOM"
		lateralCapDataMax		= "poly_C_LATERAL_13MAX"
}

CapModel	"polyConfig4" {
		refLayer				= "GPOLY"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "MET4"
		bottomCapType			= "Table"
		bottomCapDataMin		= "poly_C_BOTTOM_GP_14MIN"
		bottomCapDataNom		= "poly_C_BOTTOM_GP_14NOM"
		bottomCapDataMax		= "poly_C_BOTTOM_GP_14MAX"
		topCapType			= "Table"
		topCapDataMin			= "poly_C_TOP_GP_14MIN"
		topCapDataNom			= "poly_C_TOP_GP_14NOM"
		topCapDataMax			= "poly_C_TOP_GP_14MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "poly_C_LATERAL_14MIN"
		lateralCapDataNom		= "poly_C_LATERAL_14NOM"
		lateralCapDataMax		= "poly_C_LATERAL_14MAX"
}

CapModel	"polyConfig5" {
		refLayer				= "GPOLY"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "MET5"
		bottomCapType			= "Table"
		bottomCapDataMin		= "poly_C_BOTTOM_GP_15MIN"
		bottomCapDataNom		= "poly_C_BOTTOM_GP_15NOM"
		bottomCapDataMax		= "poly_C_BOTTOM_GP_15MAX"
		topCapType			= "Table"
		topCapDataMin			= "poly_C_TOP_GP_15MIN"
		topCapDataNom			= "poly_C_TOP_GP_15NOM"
		topCapDataMax			= "poly_C_TOP_GP_15MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "poly_C_LATERAL_15MIN"
		lateralCapDataNom		= "poly_C_LATERAL_15NOM"
		lateralCapDataMax		= "poly_C_LATERAL_15MAX"
}

CapModel	"polyConfig6" {
		refLayer				= "GPOLY"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "MET6"
		bottomCapType			= "Table"
		bottomCapDataMin		= "poly_C_BOTTOM_GP_16MIN"
		bottomCapDataNom		= "poly_C_BOTTOM_GP_16NOM"
		bottomCapDataMax		= "poly_C_BOTTOM_GP_16MAX"
		topCapType			= "Table"
		topCapDataMin			= "poly_C_TOP_GP_16MIN"
		topCapDataNom			= "poly_C_TOP_GP_16NOM"
		topCapDataMax			= "poly_C_TOP_GP_16MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "poly_C_LATERAL_16MIN"
		lateralCapDataNom		= "poly_C_LATERAL_16NOM"
		lateralCapDataMax		= "poly_C_LATERAL_16MAX"
}

CapModel	"polyConfig7" {
		refLayer				= "GPOLY"
		groundPlaneBelow		= ""
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "poly_C_BOTTOM_GP_17MIN"
		bottomCapDataNom		= "poly_C_BOTTOM_GP_17NOM"
		bottomCapDataMax		= "poly_C_BOTTOM_GP_17MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "poly_C_LATERAL_17MIN"
		lateralCapDataNom		= "poly_C_LATERAL_17NOM"
		lateralCapDataMax		= "poly_C_LATERAL_17MAX"
}

CapModel	"metal1Config1" {
		refLayer				= "MET1"
		groundPlaneBelow		= "GPOLY"
		groundPlaneAbove		= "MET2"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal1_C_BOTTOM_GPMIN"
		bottomCapDataNom		= "metal1_C_BOTTOM_GPNOM"
		bottomCapDataMax		= "metal1_C_BOTTOM_GPMAX"
		topCapType			= "Table"
		topCapDataMin			= "metal1_C_TOP_GPMIN"
		topCapDataNom			= "metal1_C_TOP_GPNOM"
		topCapDataMax			= "metal1_C_TOP_GPMAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal1_C_LATERALMIN"
		lateralCapDataNom		= "metal1_C_LATERALNOM"
		lateralCapDataMax		= "metal1_C_LATERALMAX"
}

CapModel	"metal1Config2" {
		refLayer				= "MET1"
		groundPlaneBelow		= "GPOLY"
		groundPlaneAbove		= "MET3"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal1_C_BOTTOM_GP_12MIN"
		bottomCapDataNom		= "metal1_C_BOTTOM_GP_12NOM"
		bottomCapDataMax		= "metal1_C_BOTTOM_GP_12MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal1_C_TOP_GP_12MIN"
		topCapDataNom			= "metal1_C_TOP_GP_12NOM"
		topCapDataMax			= "metal1_C_TOP_GP_12MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal1_C_LATERAL_12MIN"
		lateralCapDataNom		= "metal1_C_LATERAL_12NOM"
		lateralCapDataMax		= "metal1_C_LATERAL_12MAX"
}

CapModel	"metal1Config3" {
		refLayer				= "MET1"
		groundPlaneBelow		= "GPOLY"
		groundPlaneAbove		= "MET4"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal1_C_BOTTOM_GP_13MIN"
		bottomCapDataNom		= "metal1_C_BOTTOM_GP_13NOM"
		bottomCapDataMax		= "metal1_C_BOTTOM_GP_13MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal1_C_TOP_GP_13MIN"
		topCapDataNom			= "metal1_C_TOP_GP_13NOM"
		topCapDataMax			= "metal1_C_TOP_GP_13MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal1_C_LATERAL_13MIN"
		lateralCapDataNom		= "metal1_C_LATERAL_13NOM"
		lateralCapDataMax		= "metal1_C_LATERAL_13MAX"
}

CapModel	"metal1Config4" {
		refLayer				= "MET1"
		groundPlaneBelow		= "GPOLY"
		groundPlaneAbove		= "MET5"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal1_C_BOTTOM_GP_14MIN"
		bottomCapDataNom		= "metal1_C_BOTTOM_GP_14NOM"
		bottomCapDataMax		= "metal1_C_BOTTOM_GP_14MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal1_C_TOP_GP_14MIN"
		topCapDataNom			= "metal1_C_TOP_GP_14NOM"
		topCapDataMax			= "metal1_C_TOP_GP_14MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal1_C_LATERAL_14MIN"
		lateralCapDataNom		= "metal1_C_LATERAL_14NOM"
		lateralCapDataMax		= "metal1_C_LATERAL_14MAX"
}

CapModel	"metal1Config5" {
		refLayer				= "MET1"
		groundPlaneBelow		= "GPOLY"
		groundPlaneAbove		= "MET6"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal1_C_BOTTOM_GP_15MIN"
		bottomCapDataNom		= "metal1_C_BOTTOM_GP_15NOM"
		bottomCapDataMax		= "metal1_C_BOTTOM_GP_15MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal1_C_TOP_GP_15MIN"
		topCapDataNom			= "metal1_C_TOP_GP_15NOM"
		topCapDataMax			= "metal1_C_TOP_GP_15MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal1_C_LATERAL_15MIN"
		lateralCapDataNom		= "metal1_C_LATERAL_15NOM"
		lateralCapDataMax		= "metal1_C_LATERAL_15MAX"
}

CapModel	"metal1Config6" {
		refLayer				= "MET1"
		groundPlaneBelow		= "GPOLY"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal1_C_BOTTOM_GP_16MIN"
		bottomCapDataNom		= "metal1_C_BOTTOM_GP_16NOM"
		bottomCapDataMax		= "metal1_C_BOTTOM_GP_16MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal1_C_LATERAL_16MIN"
		lateralCapDataNom		= "metal1_C_LATERAL_16NOM"
		lateralCapDataMax		= "metal1_C_LATERAL_16MAX"
}

CapModel	"metal1Config8" {
		refLayer				= "MET1"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "MET2"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal1_C_BOTTOM_GP_21MIN"
		bottomCapDataNom		= "metal1_C_BOTTOM_GP_21NOM"
		bottomCapDataMax		= "metal1_C_BOTTOM_GP_21MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal1_C_TOP_GP_21MIN"
		topCapDataNom			= "metal1_C_TOP_GP_21NOM"
		topCapDataMax			= "metal1_C_TOP_GP_21MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal1_C_LATERAL_21MIN"
		lateralCapDataNom		= "metal1_C_LATERAL_21NOM"
		lateralCapDataMax		= "metal1_C_LATERAL_21MAX"
}

CapModel	"metal1Config9" {
		refLayer				= "MET1"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "MET3"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal1_C_BOTTOM_GP_22MIN"
		bottomCapDataNom		= "metal1_C_BOTTOM_GP_22NOM"
		bottomCapDataMax		= "metal1_C_BOTTOM_GP_22MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal1_C_TOP_GP_22MIN"
		topCapDataNom			= "metal1_C_TOP_GP_22NOM"
		topCapDataMax			= "metal1_C_TOP_GP_22MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal1_C_LATERAL_22MIN"
		lateralCapDataNom		= "metal1_C_LATERAL_22NOM"
		lateralCapDataMax		= "metal1_C_LATERAL_22MAX"
}

CapModel	"metal1Config10" {
		refLayer				= "MET1"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "MET4"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal1_C_BOTTOM_GP_23MIN"
		bottomCapDataNom		= "metal1_C_BOTTOM_GP_23NOM"
		bottomCapDataMax		= "metal1_C_BOTTOM_GP_23MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal1_C_TOP_GP_23MIN"
		topCapDataNom			= "metal1_C_TOP_GP_23NOM"
		topCapDataMax			= "metal1_C_TOP_GP_23MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal1_C_LATERAL_23MIN"
		lateralCapDataNom		= "metal1_C_LATERAL_23NOM"
		lateralCapDataMax		= "metal1_C_LATERAL_23MAX"
}

CapModel	"metal1Config11" {
		refLayer				= "MET1"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "MET5"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal1_C_BOTTOM_GP_24MIN"
		bottomCapDataNom		= "metal1_C_BOTTOM_GP_24NOM"
		bottomCapDataMax		= "metal1_C_BOTTOM_GP_24MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal1_C_TOP_GP_24MIN"
		topCapDataNom			= "metal1_C_TOP_GP_24NOM"
		topCapDataMax			= "metal1_C_TOP_GP_24MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal1_C_LATERAL_24MIN"
		lateralCapDataNom		= "metal1_C_LATERAL_24NOM"
		lateralCapDataMax		= "metal1_C_LATERAL_24MAX"
}

CapModel	"metal1Config12" {
		refLayer				= "MET1"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "MET6"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal1_C_BOTTOM_GP_25MIN"
		bottomCapDataNom		= "metal1_C_BOTTOM_GP_25NOM"
		bottomCapDataMax		= "metal1_C_BOTTOM_GP_25MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal1_C_TOP_GP_25MIN"
		topCapDataNom			= "metal1_C_TOP_GP_25NOM"
		topCapDataMax			= "metal1_C_TOP_GP_25MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal1_C_LATERAL_25MIN"
		lateralCapDataNom		= "metal1_C_LATERAL_25NOM"
		lateralCapDataMax		= "metal1_C_LATERAL_25MAX"
}

CapModel	"metal1Config13" {
		refLayer				= "MET1"
		groundPlaneBelow		= ""
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal1_C_BOTTOM_GP_26MIN"
		bottomCapDataNom		= "metal1_C_BOTTOM_GP_26NOM"
		bottomCapDataMax		= "metal1_C_BOTTOM_GP_26MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal1_C_LATERAL_26MIN"
		lateralCapDataNom		= "metal1_C_LATERAL_26NOM"
		lateralCapDataMax		= "metal1_C_LATERAL_26MAX"
}

CapModel	"metal2Config1" {
		refLayer				= "MET2"
		groundPlaneBelow		= "MET1"
		groundPlaneAbove		= "MET3"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GPMIN"
		bottomCapDataNom		= "metal2_C_BOTTOM_GPNOM"
		bottomCapDataMax		= "metal2_C_BOTTOM_GPMAX"
		topCapType			= "Table"
		topCapDataMin			= "metal2_C_TOP_GPMIN"
		topCapDataNom			= "metal2_C_TOP_GPNOM"
		topCapDataMax			= "metal2_C_TOP_GPMAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERALMIN"
		lateralCapDataNom		= "metal2_C_LATERALNOM"
		lateralCapDataMax		= "metal2_C_LATERALMAX"
}

CapModel	"metal2Config2" {
		refLayer				= "MET2"
		groundPlaneBelow		= "MET1"
		groundPlaneAbove		= "MET4"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_12MIN"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_12NOM"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_12MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal2_C_TOP_GP_12MIN"
		topCapDataNom			= "metal2_C_TOP_GP_12NOM"
		topCapDataMax			= "metal2_C_TOP_GP_12MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_12MIN"
		lateralCapDataNom		= "metal2_C_LATERAL_12NOM"
		lateralCapDataMax		= "metal2_C_LATERAL_12MAX"
}

CapModel	"metal2Config3" {
		refLayer				= "MET2"
		groundPlaneBelow		= "MET1"
		groundPlaneAbove		= "MET5"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_13MIN"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_13NOM"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_13MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal2_C_TOP_GP_13MIN"
		topCapDataNom			= "metal2_C_TOP_GP_13NOM"
		topCapDataMax			= "metal2_C_TOP_GP_13MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_13MIN"
		lateralCapDataNom		= "metal2_C_LATERAL_13NOM"
		lateralCapDataMax		= "metal2_C_LATERAL_13MAX"
}

CapModel	"metal2Config4" {
		refLayer				= "MET2"
		groundPlaneBelow		= "MET1"
		groundPlaneAbove		= "MET6"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_14MIN"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_14NOM"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_14MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal2_C_TOP_GP_14MIN"
		topCapDataNom			= "metal2_C_TOP_GP_14NOM"
		topCapDataMax			= "metal2_C_TOP_GP_14MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_14MIN"
		lateralCapDataNom		= "metal2_C_LATERAL_14NOM"
		lateralCapDataMax		= "metal2_C_LATERAL_14MAX"
}

CapModel	"metal2Config5" {
		refLayer				= "MET2"
		groundPlaneBelow		= "MET1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_15MIN"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_15NOM"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_15MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_15MIN"
		lateralCapDataNom		= "metal2_C_LATERAL_15NOM"
		lateralCapDataMax		= "metal2_C_LATERAL_15MAX"
}

CapModel	"metal2Config8" {
		refLayer				= "MET2"
		groundPlaneBelow		= "GPOLY"
		groundPlaneAbove		= "MET3"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_21MIN"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_21NOM"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_21MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal2_C_TOP_GP_21MIN"
		topCapDataNom			= "metal2_C_TOP_GP_21NOM"
		topCapDataMax			= "metal2_C_TOP_GP_21MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_21MIN"
		lateralCapDataNom		= "metal2_C_LATERAL_21NOM"
		lateralCapDataMax		= "metal2_C_LATERAL_21MAX"
}

CapModel	"metal2Config9" {
		refLayer				= "MET2"
		groundPlaneBelow		= "GPOLY"
		groundPlaneAbove		= "MET4"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_22MIN"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_22NOM"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_22MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal2_C_TOP_GP_22MIN"
		topCapDataNom			= "metal2_C_TOP_GP_22NOM"
		topCapDataMax			= "metal2_C_TOP_GP_22MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_22MIN"
		lateralCapDataNom		= "metal2_C_LATERAL_22NOM"
		lateralCapDataMax		= "metal2_C_LATERAL_22MAX"
}

CapModel	"metal2Config10" {
		refLayer				= "MET2"
		groundPlaneBelow		= "GPOLY"
		groundPlaneAbove		= "MET5"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_23MIN"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_23NOM"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_23MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal2_C_TOP_GP_23MIN"
		topCapDataNom			= "metal2_C_TOP_GP_23NOM"
		topCapDataMax			= "metal2_C_TOP_GP_23MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_23MIN"
		lateralCapDataNom		= "metal2_C_LATERAL_23NOM"
		lateralCapDataMax		= "metal2_C_LATERAL_23MAX"
}

CapModel	"metal2Config11" {
		refLayer				= "MET2"
		groundPlaneBelow		= "GPOLY"
		groundPlaneAbove		= "MET6"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_24MIN"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_24NOM"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_24MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal2_C_TOP_GP_24MIN"
		topCapDataNom			= "metal2_C_TOP_GP_24NOM"
		topCapDataMax			= "metal2_C_TOP_GP_24MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_24MIN"
		lateralCapDataNom		= "metal2_C_LATERAL_24NOM"
		lateralCapDataMax		= "metal2_C_LATERAL_24MAX"
}

CapModel	"metal2Config12" {
		refLayer				= "MET2"
		groundPlaneBelow		= "GPOLY"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_25MIN"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_25NOM"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_25MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_25MIN"
		lateralCapDataNom		= "metal2_C_LATERAL_25NOM"
		lateralCapDataMax		= "metal2_C_LATERAL_25MAX"
}

CapModel	"metal2Config15" {
		refLayer				= "MET2"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "MET3"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_31MIN"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_31NOM"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_31MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal2_C_TOP_GP_31MIN"
		topCapDataNom			= "metal2_C_TOP_GP_31NOM"
		topCapDataMax			= "metal2_C_TOP_GP_31MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_31MIN"
		lateralCapDataNom		= "metal2_C_LATERAL_31NOM"
		lateralCapDataMax		= "metal2_C_LATERAL_31MAX"
}

CapModel	"metal2Config16" {
		refLayer				= "MET2"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "MET4"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_32MIN"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_32NOM"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_32MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal2_C_TOP_GP_32MIN"
		topCapDataNom			= "metal2_C_TOP_GP_32NOM"
		topCapDataMax			= "metal2_C_TOP_GP_32MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_32MIN"
		lateralCapDataNom		= "metal2_C_LATERAL_32NOM"
		lateralCapDataMax		= "metal2_C_LATERAL_32MAX"
}

CapModel	"metal2Config17" {
		refLayer				= "MET2"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "MET5"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_33MIN"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_33NOM"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_33MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal2_C_TOP_GP_33MIN"
		topCapDataNom			= "metal2_C_TOP_GP_33NOM"
		topCapDataMax			= "metal2_C_TOP_GP_33MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_33MIN"
		lateralCapDataNom		= "metal2_C_LATERAL_33NOM"
		lateralCapDataMax		= "metal2_C_LATERAL_33MAX"
}

CapModel	"metal2Config18" {
		refLayer				= "MET2"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "MET6"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_34MIN"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_34NOM"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_34MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal2_C_TOP_GP_34MIN"
		topCapDataNom			= "metal2_C_TOP_GP_34NOM"
		topCapDataMax			= "metal2_C_TOP_GP_34MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_34MIN"
		lateralCapDataNom		= "metal2_C_LATERAL_34NOM"
		lateralCapDataMax		= "metal2_C_LATERAL_34MAX"
}

CapModel	"metal2Config19" {
		refLayer				= "MET2"
		groundPlaneBelow		= ""
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_35MIN"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_35NOM"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_35MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_35MIN"
		lateralCapDataNom		= "metal2_C_LATERAL_35NOM"
		lateralCapDataMax		= "metal2_C_LATERAL_35MAX"
}

CapModel	"metal3Config1" {
		refLayer				= "MET3"
		groundPlaneBelow		= "MET2"
		groundPlaneAbove		= "MET4"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GPMIN"
		bottomCapDataNom		= "metal3_C_BOTTOM_GPNOM"
		bottomCapDataMax		= "metal3_C_BOTTOM_GPMAX"
		topCapType			= "Table"
		topCapDataMin			= "metal3_C_TOP_GPMIN"
		topCapDataNom			= "metal3_C_TOP_GPNOM"
		topCapDataMax			= "metal3_C_TOP_GPMAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERALMIN"
		lateralCapDataNom		= "metal3_C_LATERALNOM"
		lateralCapDataMax		= "metal3_C_LATERALMAX"
}

CapModel	"metal3Config2" {
		refLayer				= "MET3"
		groundPlaneBelow		= "MET2"
		groundPlaneAbove		= "MET5"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_12MIN"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_12NOM"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_12MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal3_C_TOP_GP_12MIN"
		topCapDataNom			= "metal3_C_TOP_GP_12NOM"
		topCapDataMax			= "metal3_C_TOP_GP_12MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_12MIN"
		lateralCapDataNom		= "metal3_C_LATERAL_12NOM"
		lateralCapDataMax		= "metal3_C_LATERAL_12MAX"
}

CapModel	"metal3Config3" {
		refLayer				= "MET3"
		groundPlaneBelow		= "MET2"
		groundPlaneAbove		= "MET6"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_13MIN"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_13NOM"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_13MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal3_C_TOP_GP_13MIN"
		topCapDataNom			= "metal3_C_TOP_GP_13NOM"
		topCapDataMax			= "metal3_C_TOP_GP_13MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_13MIN"
		lateralCapDataNom		= "metal3_C_LATERAL_13NOM"
		lateralCapDataMax		= "metal3_C_LATERAL_13MAX"
}

CapModel	"metal3Config4" {
		refLayer				= "MET3"
		groundPlaneBelow		= "MET2"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_14MIN"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_14NOM"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_14MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_14MIN"
		lateralCapDataNom		= "metal3_C_LATERAL_14NOM"
		lateralCapDataMax		= "metal3_C_LATERAL_14MAX"
}

CapModel	"metal3Config8" {
		refLayer				= "MET3"
		groundPlaneBelow		= "MET1"
		groundPlaneAbove		= "MET4"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_21MIN"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_21NOM"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_21MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal3_C_TOP_GP_21MIN"
		topCapDataNom			= "metal3_C_TOP_GP_21NOM"
		topCapDataMax			= "metal3_C_TOP_GP_21MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_21MIN"
		lateralCapDataNom		= "metal3_C_LATERAL_21NOM"
		lateralCapDataMax		= "metal3_C_LATERAL_21MAX"
}

CapModel	"metal3Config9" {
		refLayer				= "MET3"
		groundPlaneBelow		= "MET1"
		groundPlaneAbove		= "MET5"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_22MIN"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_22NOM"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_22MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal3_C_TOP_GP_22MIN"
		topCapDataNom			= "metal3_C_TOP_GP_22NOM"
		topCapDataMax			= "metal3_C_TOP_GP_22MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_22MIN"
		lateralCapDataNom		= "metal3_C_LATERAL_22NOM"
		lateralCapDataMax		= "metal3_C_LATERAL_22MAX"
}

CapModel	"metal3Config10" {
		refLayer				= "MET3"
		groundPlaneBelow		= "MET1"
		groundPlaneAbove		= "MET6"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_23MIN"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_23NOM"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_23MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal3_C_TOP_GP_23MIN"
		topCapDataNom			= "metal3_C_TOP_GP_23NOM"
		topCapDataMax			= "metal3_C_TOP_GP_23MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_23MIN"
		lateralCapDataNom		= "metal3_C_LATERAL_23NOM"
		lateralCapDataMax		= "metal3_C_LATERAL_23MAX"
}

CapModel	"metal3Config11" {
		refLayer				= "MET3"
		groundPlaneBelow		= "MET1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_24MIN"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_24NOM"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_24MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_24MIN"
		lateralCapDataNom		= "metal3_C_LATERAL_24NOM"
		lateralCapDataMax		= "metal3_C_LATERAL_24MAX"
}

CapModel	"metal3Config15" {
		refLayer				= "MET3"
		groundPlaneBelow		= "GPOLY"
		groundPlaneAbove		= "MET4"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_31MIN"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_31NOM"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_31MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal3_C_TOP_GP_31MIN"
		topCapDataNom			= "metal3_C_TOP_GP_31NOM"
		topCapDataMax			= "metal3_C_TOP_GP_31MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_31MIN"
		lateralCapDataNom		= "metal3_C_LATERAL_31NOM"
		lateralCapDataMax		= "metal3_C_LATERAL_31MAX"
}

CapModel	"metal3Config16" {
		refLayer				= "MET3"
		groundPlaneBelow		= "GPOLY"
		groundPlaneAbove		= "MET5"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_32MIN"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_32NOM"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_32MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal3_C_TOP_GP_32MIN"
		topCapDataNom			= "metal3_C_TOP_GP_32NOM"
		topCapDataMax			= "metal3_C_TOP_GP_32MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_32MIN"
		lateralCapDataNom		= "metal3_C_LATERAL_32NOM"
		lateralCapDataMax		= "metal3_C_LATERAL_32MAX"
}

CapModel	"metal3Config17" {
		refLayer				= "MET3"
		groundPlaneBelow		= "GPOLY"
		groundPlaneAbove		= "MET6"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_33MIN"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_33NOM"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_33MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal3_C_TOP_GP_33MIN"
		topCapDataNom			= "metal3_C_TOP_GP_33NOM"
		topCapDataMax			= "metal3_C_TOP_GP_33MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_33MIN"
		lateralCapDataNom		= "metal3_C_LATERAL_33NOM"
		lateralCapDataMax		= "metal3_C_LATERAL_33MAX"
}

CapModel	"metal3Config18" {
		refLayer				= "MET3"
		groundPlaneBelow		= "GPOLY"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_34MIN"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_34NOM"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_34MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_34MIN"
		lateralCapDataNom		= "metal3_C_LATERAL_34NOM"
		lateralCapDataMax		= "metal3_C_LATERAL_34MAX"
}

CapModel	"metal3Config22" {
		refLayer				= "MET3"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "MET4"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_41MIN"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_41NOM"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_41MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal3_C_TOP_GP_41MIN"
		topCapDataNom			= "metal3_C_TOP_GP_41NOM"
		topCapDataMax			= "metal3_C_TOP_GP_41MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_41MIN"
		lateralCapDataNom		= "metal3_C_LATERAL_41NOM"
		lateralCapDataMax		= "metal3_C_LATERAL_41MAX"
}

CapModel	"metal3Config23" {
		refLayer				= "MET3"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "MET5"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_42MIN"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_42NOM"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_42MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal3_C_TOP_GP_42MIN"
		topCapDataNom			= "metal3_C_TOP_GP_42NOM"
		topCapDataMax			= "metal3_C_TOP_GP_42MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_42MIN"
		lateralCapDataNom		= "metal3_C_LATERAL_42NOM"
		lateralCapDataMax		= "metal3_C_LATERAL_42MAX"
}

CapModel	"metal3Config24" {
		refLayer				= "MET3"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "MET6"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_43MIN"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_43NOM"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_43MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal3_C_TOP_GP_43MIN"
		topCapDataNom			= "metal3_C_TOP_GP_43NOM"
		topCapDataMax			= "metal3_C_TOP_GP_43MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_43MIN"
		lateralCapDataNom		= "metal3_C_LATERAL_43NOM"
		lateralCapDataMax		= "metal3_C_LATERAL_43MAX"
}

CapModel	"metal3Config25" {
		refLayer				= "MET3"
		groundPlaneBelow		= ""
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_44MIN"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_44NOM"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_44MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_44MIN"
		lateralCapDataNom		= "metal3_C_LATERAL_44NOM"
		lateralCapDataMax		= "metal3_C_LATERAL_44MAX"
}

CapModel	"metal4Config1" {
		refLayer				= "MET4"
		groundPlaneBelow		= "MET3"
		groundPlaneAbove		= "MET5"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GPMIN"
		bottomCapDataNom		= "metal4_C_BOTTOM_GPNOM"
		bottomCapDataMax		= "metal4_C_BOTTOM_GPMAX"
		topCapType			= "Table"
		topCapDataMin			= "metal4_C_TOP_GPMIN"
		topCapDataNom			= "metal4_C_TOP_GPNOM"
		topCapDataMax			= "metal4_C_TOP_GPMAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERALMIN"
		lateralCapDataNom		= "metal4_C_LATERALNOM"
		lateralCapDataMax		= "metal4_C_LATERALMAX"
}

CapModel	"metal4Config2" {
		refLayer				= "MET4"
		groundPlaneBelow		= "MET3"
		groundPlaneAbove		= "MET6"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_12MIN"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_12NOM"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_12MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal4_C_TOP_GP_12MIN"
		topCapDataNom			= "metal4_C_TOP_GP_12NOM"
		topCapDataMax			= "metal4_C_TOP_GP_12MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_12MIN"
		lateralCapDataNom		= "metal4_C_LATERAL_12NOM"
		lateralCapDataMax		= "metal4_C_LATERAL_12MAX"
}

CapModel	"metal4Config3" {
		refLayer				= "MET4"
		groundPlaneBelow		= "MET3"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_13MIN"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_13NOM"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_13MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_13MIN"
		lateralCapDataNom		= "metal4_C_LATERAL_13NOM"
		lateralCapDataMax		= "metal4_C_LATERAL_13MAX"
}

CapModel	"metal4Config8" {
		refLayer				= "MET4"
		groundPlaneBelow		= "MET2"
		groundPlaneAbove		= "MET5"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_21MIN"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_21NOM"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_21MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal4_C_TOP_GP_21MIN"
		topCapDataNom			= "metal4_C_TOP_GP_21NOM"
		topCapDataMax			= "metal4_C_TOP_GP_21MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_21MIN"
		lateralCapDataNom		= "metal4_C_LATERAL_21NOM"
		lateralCapDataMax		= "metal4_C_LATERAL_21MAX"
}

CapModel	"metal4Config9" {
		refLayer				= "MET4"
		groundPlaneBelow		= "MET2"
		groundPlaneAbove		= "MET6"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_22MIN"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_22NOM"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_22MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal4_C_TOP_GP_22MIN"
		topCapDataNom			= "metal4_C_TOP_GP_22NOM"
		topCapDataMax			= "metal4_C_TOP_GP_22MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_22MIN"
		lateralCapDataNom		= "metal4_C_LATERAL_22NOM"
		lateralCapDataMax		= "metal4_C_LATERAL_22MAX"
}

CapModel	"metal4Config10" {
		refLayer				= "MET4"
		groundPlaneBelow		= "MET2"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_23MIN"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_23NOM"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_23MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_23MIN"
		lateralCapDataNom		= "metal4_C_LATERAL_23NOM"
		lateralCapDataMax		= "metal4_C_LATERAL_23MAX"
}

CapModel	"metal4Config15" {
		refLayer				= "MET4"
		groundPlaneBelow		= "MET1"
		groundPlaneAbove		= "MET5"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_31MIN"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_31NOM"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_31MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal4_C_TOP_GP_31MIN"
		topCapDataNom			= "metal4_C_TOP_GP_31NOM"
		topCapDataMax			= "metal4_C_TOP_GP_31MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_31MIN"
		lateralCapDataNom		= "metal4_C_LATERAL_31NOM"
		lateralCapDataMax		= "metal4_C_LATERAL_31MAX"
}

CapModel	"metal4Config16" {
		refLayer				= "MET4"
		groundPlaneBelow		= "MET1"
		groundPlaneAbove		= "MET6"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_32MIN"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_32NOM"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_32MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal4_C_TOP_GP_32MIN"
		topCapDataNom			= "metal4_C_TOP_GP_32NOM"
		topCapDataMax			= "metal4_C_TOP_GP_32MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_32MIN"
		lateralCapDataNom		= "metal4_C_LATERAL_32NOM"
		lateralCapDataMax		= "metal4_C_LATERAL_32MAX"
}

CapModel	"metal4Config17" {
		refLayer				= "MET4"
		groundPlaneBelow		= "MET1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_33MIN"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_33NOM"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_33MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_33MIN"
		lateralCapDataNom		= "metal4_C_LATERAL_33NOM"
		lateralCapDataMax		= "metal4_C_LATERAL_33MAX"
}

CapModel	"metal4Config22" {
		refLayer				= "MET4"
		groundPlaneBelow		= "GPOLY"
		groundPlaneAbove		= "MET5"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_41MIN"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_41NOM"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_41MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal4_C_TOP_GP_41MIN"
		topCapDataNom			= "metal4_C_TOP_GP_41NOM"
		topCapDataMax			= "metal4_C_TOP_GP_41MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_41MIN"
		lateralCapDataNom		= "metal4_C_LATERAL_41NOM"
		lateralCapDataMax		= "metal4_C_LATERAL_41MAX"
}

CapModel	"metal4Config23" {
		refLayer				= "MET4"
		groundPlaneBelow		= "GPOLY"
		groundPlaneAbove		= "MET6"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_42MIN"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_42NOM"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_42MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal4_C_TOP_GP_42MIN"
		topCapDataNom			= "metal4_C_TOP_GP_42NOM"
		topCapDataMax			= "metal4_C_TOP_GP_42MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_42MIN"
		lateralCapDataNom		= "metal4_C_LATERAL_42NOM"
		lateralCapDataMax		= "metal4_C_LATERAL_42MAX"
}

CapModel	"metal4Config24" {
		refLayer				= "MET4"
		groundPlaneBelow		= "GPOLY"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_43MIN"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_43NOM"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_43MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_43MIN"
		lateralCapDataNom		= "metal4_C_LATERAL_43NOM"
		lateralCapDataMax		= "metal4_C_LATERAL_43MAX"
}

CapModel	"metal4Config29" {
		refLayer				= "MET4"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "MET5"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_51MIN"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_51NOM"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_51MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal4_C_TOP_GP_51MIN"
		topCapDataNom			= "metal4_C_TOP_GP_51NOM"
		topCapDataMax			= "metal4_C_TOP_GP_51MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_51MIN"
		lateralCapDataNom		= "metal4_C_LATERAL_51NOM"
		lateralCapDataMax		= "metal4_C_LATERAL_51MAX"
}

CapModel	"metal4Config30" {
		refLayer				= "MET4"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "MET6"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_52MIN"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_52NOM"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_52MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal4_C_TOP_GP_52MIN"
		topCapDataNom			= "metal4_C_TOP_GP_52NOM"
		topCapDataMax			= "metal4_C_TOP_GP_52MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_52MIN"
		lateralCapDataNom		= "metal4_C_LATERAL_52NOM"
		lateralCapDataMax		= "metal4_C_LATERAL_52MAX"
}

CapModel	"metal4Config31" {
		refLayer				= "MET4"
		groundPlaneBelow		= ""
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_53MIN"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_53NOM"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_53MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_53MIN"
		lateralCapDataNom		= "metal4_C_LATERAL_53NOM"
		lateralCapDataMax		= "metal4_C_LATERAL_53MAX"
}

CapModel	"metal5Config1" {
		refLayer				= "MET5"
		groundPlaneBelow		= "MET4"
		groundPlaneAbove		= "MET6"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GPMIN"
		bottomCapDataNom		= "metal5_C_BOTTOM_GPNOM"
		bottomCapDataMax		= "metal5_C_BOTTOM_GPMAX"
		topCapType			= "Table"
		topCapDataMin			= "metal5_C_TOP_GPMIN"
		topCapDataNom			= "metal5_C_TOP_GPNOM"
		topCapDataMax			= "metal5_C_TOP_GPMAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERALMIN"
		lateralCapDataNom		= "metal5_C_LATERALNOM"
		lateralCapDataMax		= "metal5_C_LATERALMAX"
}

CapModel	"metal5Config2" {
		refLayer				= "MET5"
		groundPlaneBelow		= "MET4"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_12MIN"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_12NOM"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_12MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_12MIN"
		lateralCapDataNom		= "metal5_C_LATERAL_12NOM"
		lateralCapDataMax		= "metal5_C_LATERAL_12MAX"
}

CapModel	"metal5Config8" {
		refLayer				= "MET5"
		groundPlaneBelow		= "MET3"
		groundPlaneAbove		= "MET6"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_21MIN"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_21NOM"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_21MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal5_C_TOP_GP_21MIN"
		topCapDataNom			= "metal5_C_TOP_GP_21NOM"
		topCapDataMax			= "metal5_C_TOP_GP_21MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_21MIN"
		lateralCapDataNom		= "metal5_C_LATERAL_21NOM"
		lateralCapDataMax		= "metal5_C_LATERAL_21MAX"
}

CapModel	"metal5Config9" {
		refLayer				= "MET5"
		groundPlaneBelow		= "MET3"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_22MIN"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_22NOM"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_22MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_22MIN"
		lateralCapDataNom		= "metal5_C_LATERAL_22NOM"
		lateralCapDataMax		= "metal5_C_LATERAL_22MAX"
}

CapModel	"metal5Config15" {
		refLayer				= "MET5"
		groundPlaneBelow		= "MET2"
		groundPlaneAbove		= "MET6"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_31MIN"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_31NOM"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_31MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal5_C_TOP_GP_31MIN"
		topCapDataNom			= "metal5_C_TOP_GP_31NOM"
		topCapDataMax			= "metal5_C_TOP_GP_31MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_31MIN"
		lateralCapDataNom		= "metal5_C_LATERAL_31NOM"
		lateralCapDataMax		= "metal5_C_LATERAL_31MAX"
}

CapModel	"metal5Config16" {
		refLayer				= "MET5"
		groundPlaneBelow		= "MET2"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_32MIN"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_32NOM"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_32MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_32MIN"
		lateralCapDataNom		= "metal5_C_LATERAL_32NOM"
		lateralCapDataMax		= "metal5_C_LATERAL_32MAX"
}

CapModel	"metal5Config22" {
		refLayer				= "MET5"
		groundPlaneBelow		= "MET1"
		groundPlaneAbove		= "MET6"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_41MIN"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_41NOM"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_41MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal5_C_TOP_GP_41MIN"
		topCapDataNom			= "metal5_C_TOP_GP_41NOM"
		topCapDataMax			= "metal5_C_TOP_GP_41MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_41MIN"
		lateralCapDataNom		= "metal5_C_LATERAL_41NOM"
		lateralCapDataMax		= "metal5_C_LATERAL_41MAX"
}

CapModel	"metal5Config23" {
		refLayer				= "MET5"
		groundPlaneBelow		= "MET1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_42MIN"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_42NOM"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_42MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_42MIN"
		lateralCapDataNom		= "metal5_C_LATERAL_42NOM"
		lateralCapDataMax		= "metal5_C_LATERAL_42MAX"
}

CapModel	"metal5Config29" {
		refLayer				= "MET5"
		groundPlaneBelow		= "GPOLY"
		groundPlaneAbove		= "MET6"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_51MIN"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_51NOM"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_51MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal5_C_TOP_GP_51MIN"
		topCapDataNom			= "metal5_C_TOP_GP_51NOM"
		topCapDataMax			= "metal5_C_TOP_GP_51MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_51MIN"
		lateralCapDataNom		= "metal5_C_LATERAL_51NOM"
		lateralCapDataMax		= "metal5_C_LATERAL_51MAX"
}

CapModel	"metal5Config30" {
		refLayer				= "MET5"
		groundPlaneBelow		= "GPOLY"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_52MIN"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_52NOM"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_52MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_52MIN"
		lateralCapDataNom		= "metal5_C_LATERAL_52NOM"
		lateralCapDataMax		= "metal5_C_LATERAL_52MAX"
}

CapModel	"metal5Config36" {
		refLayer				= "MET5"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "MET6"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_61MIN"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_61NOM"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_61MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal5_C_TOP_GP_61MIN"
		topCapDataNom			= "metal5_C_TOP_GP_61NOM"
		topCapDataMax			= "metal5_C_TOP_GP_61MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_61MIN"
		lateralCapDataNom		= "metal5_C_LATERAL_61NOM"
		lateralCapDataMax		= "metal5_C_LATERAL_61MAX"
}

CapModel	"metal5Config37" {
		refLayer				= "MET5"
		groundPlaneBelow		= ""
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_62MIN"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_62NOM"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_62MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_62MIN"
		lateralCapDataNom		= "metal5_C_LATERAL_62NOM"
		lateralCapDataMax		= "metal5_C_LATERAL_62MAX"
}

CapModel	"metal6Config1" {
		refLayer				= "MET6"
		groundPlaneBelow		= "MET5"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal6_C_BOTTOM_GPMIN"
		bottomCapDataNom		= "metal6_C_BOTTOM_GPNOM"
		bottomCapDataMax		= "metal6_C_BOTTOM_GPMAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal6_C_LATERALMIN"
		lateralCapDataNom		= "metal6_C_LATERALNOM"
		lateralCapDataMax		= "metal6_C_LATERALMAX"
}

CapModel	"metal6Config8" {
		refLayer				= "MET6"
		groundPlaneBelow		= "MET4"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal6_C_BOTTOM_GP_21MIN"
		bottomCapDataNom		= "metal6_C_BOTTOM_GP_21NOM"
		bottomCapDataMax		= "metal6_C_BOTTOM_GP_21MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal6_C_LATERAL_21MIN"
		lateralCapDataNom		= "metal6_C_LATERAL_21NOM"
		lateralCapDataMax		= "metal6_C_LATERAL_21MAX"
}

CapModel	"metal6Config15" {
		refLayer				= "MET6"
		groundPlaneBelow		= "MET3"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal6_C_BOTTOM_GP_31MIN"
		bottomCapDataNom		= "metal6_C_BOTTOM_GP_31NOM"
		bottomCapDataMax		= "metal6_C_BOTTOM_GP_31MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal6_C_LATERAL_31MIN"
		lateralCapDataNom		= "metal6_C_LATERAL_31NOM"
		lateralCapDataMax		= "metal6_C_LATERAL_31MAX"
}

CapModel	"metal6Config22" {
		refLayer				= "MET6"
		groundPlaneBelow		= "MET2"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal6_C_BOTTOM_GP_41MIN"
		bottomCapDataNom		= "metal6_C_BOTTOM_GP_41NOM"
		bottomCapDataMax		= "metal6_C_BOTTOM_GP_41MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal6_C_LATERAL_41MIN"
		lateralCapDataNom		= "metal6_C_LATERAL_41NOM"
		lateralCapDataMax		= "metal6_C_LATERAL_41MAX"
}

CapModel	"metal6Config29" {
		refLayer				= "MET6"
		groundPlaneBelow		= "MET1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal6_C_BOTTOM_GP_51MIN"
		bottomCapDataNom		= "metal6_C_BOTTOM_GP_51NOM"
		bottomCapDataMax		= "metal6_C_BOTTOM_GP_51MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal6_C_LATERAL_51MIN"
		lateralCapDataNom		= "metal6_C_LATERAL_51NOM"
		lateralCapDataMax		= "metal6_C_LATERAL_51MAX"
}

CapModel	"metal6Config36" {
		refLayer				= "MET6"
		groundPlaneBelow		= "GPOLY"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal6_C_BOTTOM_GP_61MIN"
		bottomCapDataNom		= "metal6_C_BOTTOM_GP_61NOM"
		bottomCapDataMax		= "metal6_C_BOTTOM_GP_61MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal6_C_LATERAL_61MIN"
		lateralCapDataNom		= "metal6_C_LATERAL_61NOM"
		lateralCapDataMax		= "metal6_C_LATERAL_61MAX"
}

CapModel	"metal6Config43" {
		refLayer				= "MET6"
		groundPlaneBelow		= ""
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal6_C_BOTTOM_GP_71MIN"
		bottomCapDataNom		= "metal6_C_BOTTOM_GP_71NOM"
		bottomCapDataMax		= "metal6_C_BOTTOM_GP_71MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal6_C_LATERAL_71MIN"
		lateralCapDataNom		= "metal6_C_LATERAL_71NOM"
		lateralCapDataMax		= "metal6_C_LATERAL_71MAX"
}

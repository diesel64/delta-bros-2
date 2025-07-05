;
; Music Headers
; =============
;
; These are broken down by song segment and point to the note length table and
; and individual channel data. Square 2 is the main pointer, and triangle,
; square 1, and noise are stored as offets relative to the main pointer.
;
; Bytes:
;   00: Note length table (from $8F00)
;   01: Main address / Square 2 (lo)
;   02: Main address / Square 2 (hi)
;   03: Triangle offset from main
;   04: Square 1 offset from main
;   05: Noise/DPCM offset from main
;
; For the musicHeader macro, specifying $00 is "none", -1 for noise/pcm is "omit".
; Some of the music headers use the $00 from the next header's note length table,
; to save one byte (in a ROM /full/ of unused space...)
;
; This turns out to be important because the music part pointers are stored as
; offsets from MusicPartPointers, which means they can't be larger than $FF!
;
MusicPartHeaders:

; ----------------------------------------
; Character select segments 1 through 5
; (6 through 8 are a ways below this)
MusicHeaderCharacterSelect1:
	musicHeader NoteLengthTable_300bpm, MusicDataCharacterSelect1, MusicDataCharacterSelect1_Triangle, MusicDataCharacterSelect1_Square1, MusicDataCharacterSelect1_Noise, -1

MusicHeaderCharacterSelect2:
	musicHeader NoteLengthTable_300bpm, MusicDataCharacterSelect2, MusicDataCharacterSelect2_Triangle, MusicDataCharacterSelect2_Square1, MusicDataCharacterSelect2_Noise, -1

MusicHeaderCharacterSelect3:
	musicHeader NoteLengthTable_300bpm, MusicDataCharacterSelect3, MusicDataCharacterSelect3_Triangle, MusicDataCharacterSelect3_Square1, MusicDataCharacterSelect3_Noise, -1

MusicHeaderCharacterSelect4:
	musicHeader NoteLengthTable_300bpm, MusicDataCharacterSelect4, MusicDataCharacterSelect4_Triangle, MusicDataCharacterSelect4_Square1, MusicDataCharacterSelect4_Noise, -1

MusicHeaderCharacterSelect5:
	musicHeader NoteLengthTable_300bpm, MusicDataCharacterSelect5, MusicDataCharacterSelect5_Triangle, MusicDataCharacterSelect5_Square1, MusicDataCharacterSelect5_Noise, -1

; ----------------------------------------
; Overworld music headers
MusicHeaderOverworld1:
	musicHeader NoteLengthTable_200bpm, MusicDataOverworld1, MusicDataOverworld1_Triangle, MusicDataOverworld1_Square1, MusicDataOverworld1_Noise, -1

MusicHeaderOverworld2:
	musicHeader NoteLengthTable_200bpm, MusicDataOverworld2, MusicDataOverworld2_Triangle, MusicDataOverworld2_Square1, MusicDataOverworld2_Noise, -1

MusicHeaderOverworld3:
	musicHeader NoteLengthTable_200bpm, MusicDataOverworld3, MusicDataOverworld3_Triangle, MusicDataOverworld3_Square1, MusicDataOverworld3_Noise, -1

MusicHeaderOverworld4:
	musicHeader NoteLengthTable_200bpm, MusicDataOverworld4, MusicDataOverworld4_Triangle, MusicDataOverworld4_Square1, MusicDataOverworld4_Noise, -1

MusicHeaderOverworld5:
	musicHeader NoteLengthTable_200bpm, MusicDataOverworld5, MusicDataOverworld5_Triangle, MusicDataOverworld5_Square1, MusicDataOverworld5_Noise, -1

MusicHeaderOverworld6:
	musicHeader NoteLengthTable_200bpm, MusicDataOverworld6, MusicDataOverworld6_Triangle, MusicDataOverworld6_Square1, MusicDataOverworld6_Noise, -1

; ----------------------------------------
; Underground music
IFNDEF PROTOTYPE_MUSIC_UNDERGROUND
MusicHeaderUnderground:
	musicHeader NoteLengthTable_129bpm, MusicDataUnderground, MusicDataUnderground_Triangle, MusicDataUnderground_Square1, -1, MusicDataUnderground_DPCM
ENDIF

; ----------------------------------------
; Boss and boss area music
MusicHeaderBoss1:
	musicHeader NoteLengthTable_200bpm, MusicDataBoss1, MusicDataBoss1_Triangle, MusicDataBoss1_Square1, MusicDataBoss1_Noise, -1

MusicHeaderBoss2:
	musicHeader NoteLengthTable_200bpm, MusicDataBoss2, MusicDataBoss2_Triangle, MusicDataBoss2_Square1, MusicDataBoss2_Noise, -1

MusicHeaderBoss3:
	musicHeader NoteLengthTable_200bpm, MusicDataBoss3, MusicDataBoss3_Triangle, MusicDataBoss3_Square1, MusicDataBoss3_Noise, -1

MusicHeaderBoss4:
	musicHeader NoteLengthTable_200bpm, MusicDataBoss4, MusicDataBoss4_Triangle, MusicDataBoss4_Square1, MusicDataBoss4_Noise, -1

MusicHeaderBoss5:
	musicHeader NoteLengthTable_200bpm, MusicDataBoss5, MusicDataBoss5_Triangle, MusicDataBoss5_Square1, MusicDataBoss6_Noise, -1

MusicHeaderBoss6:
	musicHeader NoteLengthTable_200bpm, MusicDataBoss6, MusicDataBoss6_Triangle, MusicDataBoss6_Square1, MusicDataBoss6_Noise, -1

MusicHeaderBoss7:
	musicHeader NoteLengthTable_200bpm, MusicDataBoss7, MusicDataBoss7_Triangle, MusicDataBoss7_Square1, MusicDataBoss7_Noise, -1

MusicHeaderBoss8:
	musicHeader NoteLengthTable_200bpm, MusicDataBoss8, MusicDataBoss8_Triangle, MusicDataBoss8_Square1, MusicDataBoss8_Noise, -1

MusicHeaderBoss9:
	musicHeader NoteLengthTable_200bpm, MusicDataBoss9, MusicDataBoss9_Triangle, MusicDataBoss9_Square1, MusicDataBoss9_Noise, -1

MusicHeaderBoss10:
	musicHeader NoteLengthTable_200bpm, MusicDataBoss10, MusicDataBoss10_Triangle, MusicDataBoss10_Square1, MusicDataBoss10_Noise, -1

MusicHeaderBoss11:
	musicHeader NoteLengthTable_200bpm, MusicDataBoss11, MusicDataBoss11_Triangle, MusicDataBoss11_Square1, MusicDataBoss11_Noise, -1

MusicHeaderBoss12:
	musicHeader NoteLengthTable_200bpm, MusicDataBoss12, MusicDataBoss12_Triangle, MusicDataBoss12_Square1, MusicDataBoss12_Noise, -1

MusicHeaderBoss13:
	musicHeader NoteLengthTable_200bpm, MusicDataBoss13, MusicDataBoss13_Triangle, MusicDataBoss13_Square1, MusicDataBoss13_Noise, -1

MusicHeaderBoss14:
	musicHeader NoteLengthTable_200bpm, MusicDataBoss14, MusicDataBoss14_Triangle, MusicDataBoss14_Square1, MusicDataBoss14_Noise, -1

MusicHeaderBoss15:
	musicHeader NoteLengthTable_200bpm, MusicDataBoss15, MusicDataBoss15_Triangle, MusicDataBoss15_Square1, MusicDataBoss15_Noise, -1

MusicHeaderBoss16:
	musicHeader NoteLengthTable_200bpm, MusicDataBoss16, MusicDataBoss16_Triangle, MusicDataBoss16_Square1, MusicDataBoss16_Noise, -1

MusicHeaderBoss17:
	musicHeader NoteLengthTable_200bpm, MusicDataBoss17, MusicDataBoss17_Triangle, MusicDataBoss17_Square1, MusicDataBoss17_Noise, -1

; ----------------------------------------
; Starman music
IFNDEF PROTOTYPE_MUSIC_STARMAN
MusicHeaderStar:
	IFNDEF PROTOTYPE_MUSIC_UNDERGROUND
		musicHeader NoteLengthTable_300bpm, MusicDataStar, MusicDataStar_Triangle, MusicDataStar_Square1, -1, MusicDataStar_DPCM
	ELSE
		musicHeader NoteLengthTable_300bpm, MusicDataStar, MusicDataStar_Triangle, MusicDataStar_Square1, $00, MusicDataStar_DPCM
	ENDIF
ELSE
MusicHeaderStarBeta:
	musicHeader NoteLengthTable_300bpm, MusicDataStarBeta, MusicDataStarBeta_Triangle, MusicDataStarBeta_Square1, MusicDataStarBeta_Noise, -1
ENDIF

; ----------------------------------------
; Wart's final boss music
MusicHeaderWart:
IFNDEF PROTOTYPE_MUSIC_ENDING
	musicHeader NoteLengthTable_200bpm, MusicDataWart, MusicDataWart_Triangle, MusicDataWart_Square1, $00, -1
ELSE
	; sharing $00 with NoteLengthTable_300bpm from the segment below
	; (we're scrounging for bytes to avoid overflowing the music header table)
	musicHeader NoteLengthTable_200bpm, MusicDataWart, MusicDataWart_Triangle, MusicDataWart_Square1, -1, -1
ENDIF

; ----------------------------------------
; Various shorter jingles, extra character select segments (8, 7, 6), and other potpourri

MusicHeaderCrystal:
	musicHeader NoteLengthTable_300bpm, MusicDataCrystal, MusicDataCrystal_Triangle, MusicDataCrystal_Square1, -1, -1

MusicHeaderGameOver:
 	musicHeader NoteLengthTable_300bpm, MusicDataGameOver, MusicDataGameOver_Triangle, MusicDataGameOver_Square1, -1, -1

MusicHeaderBossBeaten:
 	musicHeader NoteLengthTable_300bpm, MusicDataBossBeaten, MusicDataBossBeaten_Triangle, MusicDataBossBeaten_Square1, -1, -1

MusicHeaderCharacterSelect8:
	musicHeader NoteLengthTable_300bpm, MusicDataCharacterSelect8, MusicDataCharacterSelect8_Triangle, MusicDataCharacterSelect8_Square1, MusicDataCharacterSelect8_Noise, -1

MusicHeaderMushroomBonusChance:
 	musicHeader NoteLengthTable_150bpm, MusicDataMushroomBonusChance, $00, MusicDataMushroomBonusChance_Square1, -1, -1

MusicHeaderCharacterSelect7:
	musicHeader NoteLengthTable_300bpm, MusicDataCharacterSelect7, MusicDataCharacterSelect7_Triangle, MusicDataCharacterSelect7_Square1, MusicDataCharacterSelect7_Noise, -1

MusicHeaderDeath:
 	musicHeader NoteLengthTable_200bpm, MusicDataDeath, MusicDataDeath_Triangle, MusicDataDeath_Square1, -1, -1

MusicHeaderCharacterSelect6:
	musicHeader NoteLengthTable_300bpm, MusicDataCharacterSelect6, MusicDataCharacterSelect6_Triangle, MusicDataCharacterSelect6_Square1, MusicDataCharacterSelect6_Noise, -1

; ----------------------------------------
; Title screen segments

MusicHeaderTitleScreen2:
	musicHeader NoteLengthTable_225bpm, MusicDataTitleScreen2, MusicDataTitleScreen2_Triangle, MusicDataTitleScreen2_Square1, MusicDataTitleScreen2_Noise, -1

MusicHeaderTitleScreen1:
	musicHeader NoteLengthTable_225bpm, MusicDataTitleScreen1, MusicDataTitleScreen1_Triangle, MusicDataTitleScreen1_Square1, MusicDataTitleScreen1_Noise, -1

MusicHeaderTitleScreen3:
	musicHeader NoteLengthTable_225bpm, MusicDataTitleScreen3, MusicDataTitleScreen3_Triangle, MusicDataTitleScreen3_Square1, MusicDataTitleScreen3_Noise, -1

MusicHeaderTitleScreen4:
	musicHeader NoteLengthTable_225bpm, MusicDataTitleScreen4, MusicDataTitleScreen4_Triangle, MusicDataTitleScreen4_Square1, MusicDataTitleScreen4_Noise, -1

; ----------------------------------------
; Subspace music, quite longer than normally heard

MusicHeaderSubspace1:
	musicHeader NoteLengthTable_200bpm, MusicDataSubspace1, MusicDataSubspace1_Triangle, MusicDataSubspace1_Square1, MusicDataSubspace1_Noise, -1

MusicHeaderSubspace2:
	musicHeader NoteLengthTable_200bpm, MusicDataSubspace2, MusicDataSubspace2_Triangle, MusicDataSubspace2_Square1, MusicDataSubspace2_Noise, -1

MusicHeaderSubspace3:
	musicHeader NoteLengthTable_200bpm, MusicDataSubspace3, MusicDataSubspace3_Triangle, MusicDataSubspace3_Square1, MusicDataSubspace3_Noise, -1

MusicHeaderSubspace4:
	musicHeader NoteLengthTable_200bpm, MusicDataSubspace4, MusicDataSubspace4_Triangle, MusicDataSubspace4_Square1, MusicDataSubspace4_Noise, -1

; ----------------------------------------
; Ending music

MusicHeaderEnding1:
	musicHeader NoteLengthTable_129bpm, MusicDataEnding1, MusicDataEnding1_Triangle, MusicDataEnding1_Square1, MusicDataEnding1_Noise, -1

MusicHeaderEnding3:
	musicHeader NoteLengthTable_129bpm, MusicDataEnding3, MusicDataEnding3_Triangle, MusicDataEnding3_Square1, MusicDataEnding3_Noise, -1

MusicHeaderEnding2:
	musicHeader NoteLengthTable_129bpm, MusicDataEnding2, MusicDataEnding2_Triangle, MusicDataEnding2_Square1, MusicDataEnding2_Noise, -1

MusicHeaderEnding5:
	musicHeader NoteLengthTable_129bpm, MusicDataEnding5, MusicDataEnding5_Triangle, MusicDataEnding5_Square1, MusicDataEnding5_Noise, -1

MusicHeaderEnding4:
	musicHeader NoteLengthTable_129bpm, MusicDataEnding4, MusicDataEnding4_Triangle, MusicDataEnding4_Square1, MusicDataEnding4_Noise, -1

IFNDEF PROTOTYPE_MUSIC_ENDING
MusicHeaderEnding6:
	musicHeader NoteLengthTable_129bpm, MusicDataEnding6, $00, MusicDataEnding6_Square1, $00, -1
ENDIF

IFDEF PROTOTYPE_MUSIC_UNDERGROUND
; Much cooler SMB3-esque underground music...
; apparently using /both/ noise and DPCM (!)
MusicHeaderUndergroundBeta1:
	musicHeader NoteLengthTable_200bpm, MusicDataUndergroundBeta1, MusicDataUndergroundBeta1_Triangle, MusicDataUndergroundBeta1_Square1, MusicDataUndergroundBeta1_Noise, MusicDataUndergroundBeta1_DPCM
MusicHeaderUndergroundBeta2:
	musicHeader NoteLengthTable_200bpm, MusicDataUndergroundBeta2, MusicDataUndergroundBeta2_Triangle, MusicDataUndergroundBeta2_Square1, MusicDataUndergroundBeta2_Noise, MusicDataUndergroundBeta2_DPCM
ENDIF

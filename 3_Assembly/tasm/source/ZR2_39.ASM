
PAGE  59,132

;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
;€€					                                 €€
;€€				ZR2_39	                                 €€
;€€					                                 €€
;€€      Created:   16-Feb-26		                                 €€
;€€      Code type: zero start		                                 €€
;€€      Passes:    3          Analysis	Options on: none                 €€
;€€					                                 €€
;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€

target		EQU   'T2'                      ; Target assembler: TASM-2.X

include  srmacros.inc


; The following equates show data references outside the range of the program.

data_1e		equ	0
data_2e		equ	1Eh
data_3e		equ	40h
data_4e		equ	70h
data_5e		equ	80h
data_6e		equ	481h
data_7e		equ	93Ah			;*
data_8e		equ	0B3Ah			;*
data_9e		equ	0CCEh			;*
data_10e	equ	1420h			;*
data_11e	equ	160Dh			;*
data_12e	equ	17E5h			;*
data_13e	equ	180Eh			;*
data_14e	equ	1F0Dh			;*
data_15e	equ	2616h			;*
data_16e	equ	2A8Ah			;*
data_17e	equ	3909h			;*
data_18e	equ	3B47h			;*
data_19e	equ	3C87h			;*
data_20e	equ	4034h			;*
data_21e	equ	4144h			;*
data_22e	equ	4401h			;*
data_23e	equ	4E0Dh			;*
data_24e	equ	60DEh			;*
data_25e	equ	6400h			;*
data_26e	equ	6AE2h			;*
data_27e	equ	6B10h			;*
data_28e	equ	6EECh			;*
data_29e	equ	6F1Ah			;*
data_30e	equ	6FFAh			;*
data_31e	equ	7277h			;*
data_32e	equ	7D55h			;*
data_33e	equ	7D6Eh			;*
data_34e	equ	8085h			;*
data_35e	equ	8107h			;*
data_36e	equ	8BF7h			;*
data_37e	equ	8D88h			;*
data_38e	equ	8D8Ah			;*
data_39e	equ	8E89h			;*
data_40e	equ	8F8Bh			;*
data_41e	equ	9677h			;*
data_42e	equ	0AAD3h			;*
data_43e	equ	0B8B9h			;*
data_44e	equ	0B9B6h			;*
data_45e	equ	0BEAEh			;*
data_46e	equ	0D302h			;*
data_47e	equ	0D30Ah			;*
data_48e	equ	0D32Ah			;*
data_49e	equ	0D340h			;*
data_50e	equ	0DE05h			;*
data_51e	equ	0EA2Ah			;*
data_52e	equ	0F000h			;*
data_53e	equ	0F500h			;*
data_54e	equ	0F540h			;*
data_55e	equ	0FB02h			;*
data_56e	equ	0FCFFh			;*
data_57e	equ	0FEDFh			;*
data_58e	equ	0FFD9h			;*
data_59e	equ	0D00h			;*
data_60e	equ	0FD74h			;*
data_61e	equ	0			;*
data_62e	equ	29E0h			;*
data_63e	equ	53C0h			;*
data_64e	equ	12h			;*
data_65e	equ	12CCh			;*
data_66e	equ	6004h			;*
data_67e	equ	0C008h			;*
data_68e	equ	127h			;*
data_69e	equ	227h			;*
data_70e	equ	0A00h			;*
data_71e	equ	1415h			;*
data_72e	equ	276Ah			;*
data_73e	equ	278Ah			;*
data_74e	equ	2A0Ah			;*
data_75e	equ	323Ch			;*
data_76e	equ	32EEh			;*
data_77e	equ	32FCh			;*
data_78e	equ	77F8h			;*
data_79e	equ	8088h			;*
data_80e	equ	88AAh			;*
data_81e	equ	88FFh			;*
data_82e	equ	0A514h			;*
data_83e	equ	0A516h			;*
data_84e	equ	0A518h			;*
data_85e	equ	0A51Ah			;*
data_86e	equ	0A51Ch			;*
data_87e	equ	0A51Eh			;*
data_88e	equ	0A520h			;*
data_89e	equ	0A522h			;*
data_90e	equ	0A524h			;*
data_91e	equ	0A526h			;*
data_92e	equ	0A528h			;*
data_93e	equ	0A52Ah			;*
data_94e	equ	0A52Ch			;*
data_95e	equ	0A52Eh			;*
data_96e	equ	0A530h			;*
data_97e	equ	0A532h			;*
data_98e	equ	0A534h			;*
data_99e	equ	0A536h			;*
data_100e	equ	0A538h			;*
data_101e	equ	0A53Ah			;*
data_102e	equ	0A53Ch			;*
data_103e	equ	0A53Eh			;*
data_104e	equ	0A540h			;*
data_105e	equ	0A542h			;*
data_106e	equ	0A544h			;*
data_107e	equ	0A546h			;*
data_108e	equ	0A548h			;*
data_109e	equ	0A54Ah			;*
data_110e	equ	0A54Ch			;*
data_111e	equ	0A54Eh			;*
data_112e	equ	0A550h			;*
data_113e	equ	0A552h			;*
data_114e	equ	0AA22h			;*
data_115e	equ	0AB00h			;*
data_116e	equ	0C81Fh			;*
data_117e	equ	0D3CDh			;*
data_118e	equ	0F01Fh			;*
data_119e	equ	0FF7Ch			;*
data_120e	equ	0FF7Fh			;*
data_121e	equ	0FF81h			;*
data_122e	equ	0FF83h			;*
data_123e	equ	0FF85h			;*
data_124e	equ	0FF87h			;*
data_125e	equ	0FF89h			;*
data_126e	equ	0FF8Bh			;*
data_127e	equ	0FF8Dh			;*
data_128e	equ	0FF8Fh			;*
data_129e	equ	0FF91h			;*
data_130e	equ	0FF93h			;*
data_131e	equ	0FF95h			;*
data_132e	equ	0FF97h			;*
data_133e	equ	0FF99h			;*
data_134e	equ	0FF9Bh			;*
data_135e	equ	0FF9Dh			;*
data_136e	equ	0FF9Fh			;*
data_137e	equ	0FFA1h			;*
data_138e	equ	0FFA3h			;*
data_139e	equ	0FFA5h			;*
data_140e	equ	0FFA7h			;*
data_141e	equ	0FFA9h			;*
data_142e	equ	0FFABh			;*
data_143e	equ	0FFADh			;*
data_144e	equ	0FFAFh			;*
data_145e	equ	0FFB1h			;*
data_146e	equ	0FFB3h			;*
data_147e	equ	0FFB5h			;*
data_148e	equ	0FFB7h			;*
data_149e	equ	0FFB9h			;*
data_150e	equ	0FFBBh			;*
data_151e	equ	0FFBDh			;*
data_152e	equ	0FFBFh			;*
data_153e	equ	0FFC1h			;*
data_154e	equ	0FFC3h			;*
data_155e	equ	0FFC5h			;*
data_156e	equ	0FFC7h			;*
data_157e	equ	0FFC9h			;*
data_158e	equ	0FFCBh			;*
data_159e	equ	0FFCDh			;*
data_160e	equ	0FFCFh			;*
data_161e	equ	0FFD1h			;*
data_162e	equ	0FFD3h			;*
data_163e	equ	0FFD5h			;*
data_164e	equ	0F728h			;*
data_879e	equ	0A005h			;*
data_880e	equ	0A00Ah			;*
data_881e	equ	0A014h			;*
data_882e	equ	0A028h			;*
data_883e	equ	0A070h			;*
data_884e	equ	0A1A0h			;*
data_885e	equ	0A202h			;*
data_886e	equ	0A405h			;*
data_887e	equ	0A4C1h			;*
data_888e	equ	0A78Ch			;*
data_889e	equ	0A7FEh			;*
data_890e	equ	0AA0Ah			;*
data_891e	equ	0AA1Ah			;*
data_892e	equ	0AA2Ah			;*
data_893e	equ	0AAAAh			;*
data_894e	equ	0AAD3h			;*
data_895e	equ	0C009h			;*
data_896e	equ	0C0AAh			;*
data_897e	equ	0D002h			;*
data_898e	equ	0D302h			;*
data_899e	equ	0D30Ah			;*
data_900e	equ	0D372h			;*
data_901e	equ	0D3A0h			;*
data_902e	equ	0D558h			;*
data_903e	equ	0DF08h			;*
data_904e	equ	0DF5Eh			;*
data_905e	equ	0DF67h			;*
data_906e	equ	0E007h			;*
data_907e	equ	0E0A1h			;*
data_908e	equ	0E9FFh			;*
data_909e	equ	0EC83h			;*
data_910e	equ	0F1C2h			;*
data_911e	equ	0F903h			;*
data_912e	equ	0F91Dh			;*
data_913e	equ	0FB1Fh			;*
data_914e	equ	0FD41h			;*
data_915e	equ	0FE48h			;*
data_916e	equ	0FEE1h			;*
data_917e	equ	0FFFFh			;*
data_918e	equ	9B08h			;*
data_919e	equ	0A67Fh			;*
data_920e	equ	0AB81h			;*
data_921e	equ	0C81Fh			;*
data_922e	equ	8F5h			;*
data_923e	equ	380Ah			;*
data_924e	equ	3A38h			;*
data_925e	equ	6AE6h			;*
data_926e	equ	0D8FBh			;*
data_927e	equ	0F5D2h			;*
data_928e	equ	7E7Ah
data_929e	equ	8100h
data_930e	equ	738Ah
data_931e	equ	143Fh
data_932e	equ	12E2h
data_933e	equ	12FAh
data_934e	equ	0FF7Ch
data_935e	equ	0FF7Fh
data_936e	equ	17E5h
data_937e	equ	27E5h
data_938e	equ	3535h
data_939e	equ	4A18h
data_940e	equ	97F6h
data_941e	equ	0A0Ah

seg_a		segment	byte public
		assume	cs:seg_a, ds:seg_a


		org	0

zr2_39		proc	far

start:
		push	si
		or	ax,0
;*		db	0DBh,0C4h, 98h, 00h
		db	0DBh,0C4h, 98h, 00h	;  Fixup - byte match

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_9:
		loopnz	$-3Ah			; Loop if zf=0, cx>0

		add	si,dx
		db	0C4h,0F2h,0C4h, 09h,0C5h, 20h
data_167	db	0C5h			; Data table (indexed access)
		db	0F4h,0CCh,0D7h,0C4h, 3Ch, 00h
		db	 13h,0C5h, 00h
data_168	db	0, 0, 0, 0, 0, 0
data_169	db	0			; Data table (indexed access)
		db	0, 0, 0, 0
data_170	db	0			; Data table (indexed access)
		db	9 dup (0)
		db	0
data_171	dw	9600h			; Data table (indexed access)
		db	7 dup (97h)
		db	0A8h,0BCh,0BEh,0C0h
data_173	dw	0C4C2h			; Data table (indexed access)
		db	0C6h,0C8h,0A9h,0BDh,0BFh,0C1h
		db	0C3h,0C5h,0C7h,0C9h,0AAh,0C9h
		db	0CBh,0BCh,0CCh,0CCh,0CCh,0CCh
		db	0B0h,0CAh,0CAh,0BCh
data_174	db	0CCh
		db	0D3h,0D4h,0D4h,0B1h,0A7h,0C1h
		db	0BCh,0CCh,0D1h,0D2h,0D2h, 00h
		db	0B6h,0C6h,0BDh,0CCh,0CCh,0CCh
		db	0CCh, 00h,0B7h,0AEh,0BEh

zr2_39		endp

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_31		proc	near
		db	0C5h,0C6h,0C0h,0C2h, 00h, 00h
		db	0B1h,0BAh,0C8h
data_175	dw	0C9C3h			; Data table (indexed access)
		db	0CAh, 00h, 00h, 00h,0B5h,0C3h
data_176	dw	0BEC9h			; Data table (indexed access)
		db	0C5h, 00h, 00h, 00h, 00h, 9Ch
		db	0C9h,0BFh,0C6h, 00h, 00h, 00h
		db	 00h,0B2h,0B4h,0C0h,0C7h, 00h
		db	 00h, 00h, 00h,0B3h,0B5h,0C1h

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_32:
		db	0C8h, 00h, 00h, 00h, 00h, 00h
		db	 00h, 9Ch,0C9h, 00h, 00h, 00h
		db	 00h, 00h, 00h,0BBh,0BAh

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_33:
		db	7 dup (0)
		db	0B9h, 00h, 65h, 68h, 6Ch, 6Ch
		db	 70h, 74h, 00h
		db	'cfimmquwd'
		db	 85h, 89h, 85h, 89h, 8Eh, 8Eh
		db	 92h, 79h, 7Dh, 81h, 85h, 8Ah
		db	 85h, 91h, 93h, 7Ah, 7Eh, 82h
		db	 86h, 8Bh, 8Fh, 8Eh, 94h, 7Bh
		db	 7Fh, 83h, 87h, 8Ch, 8Ch, 8Eh
		db	 92h, 7Ch, 80h, 84h, 88h, 8Dh
		db	 8Dh, 91h, 93h, 7Ah, 7Eh, 84h
		db	 85h, 89h, 8Dh, 8Eh, 94h, 7Bh
		db	 81h, 85h, 86h, 8Ah, 90h, 8Eh
		db	 92h, 64h, 6Ah, 86h, 87h, 8Bh
data_177	dw	9188h			; Data table (indexed access)
		db	 93h, 00h, 6Bh, 6Ah, 88h, 8Ch
		db	 8Bh, 76h, 78h, 00h
data_178	dw	offset sub_62
		db	 6Fh, 72h
data_179	dw	offset sub_31
data_180	dw	0			; Data table (indexed access)
		db	 00h, 0Bh
data_181	dw	offset sub_42
data_182	dw	offset sub_42
		db	 14h, 00h, 03h, 0Ch, 15h, 15h
		db	 15h, 15h, 15h, 00h, 04h, 0Dh
		db	 16h, 16h, 16h, 16h, 16h, 00h
		db	 05h, 0Dh, 16h, 16h, 16h, 16h
data_183	db	16h
		db	 00h, 06h, 0Dh, 16h, 51h, 16h
		db	 16h, 16h, 00h, 06h
		db	0Dh
data_184	db	16h			; Data table (indexed access)
		db	52h
data_185	dw	1C1Ch			; Data table (indexed access)
		db	 1Ch, 00h, 06h, 0Dh, 16h, 53h
		db	 01h, 01h, 01h, 00h, 06h, 0Dh
		db	 16h, 54h, 16h, 16h, 16h, 00h
		db	 06h, 0Eh, 18h, 18h, 18h, 18h
		db	 18h, 00h, 07h, 0Fh, 19h, 19h
		db	 19h, 19h, 19h, 00h, 08h, 10h
		db	 19h, 19h, 19h, 19h, 19h, 00h
		db	 09h, 11h, 19h, 1Dh, 1Dh, 19h
		db	 19h, 00h, 5Eh, 5Dh, 19h, 19h
		db	 19h, 19h, 19h, 00h, 00h, 13h
		db	 1Bh, 1Bh, 1Bh, 1Bh, 1Bh, 00h
		db	 65h, 68h, 6Ch, 70h, 73h, 00h
		db	 00h, 63h, 66h, 69h, 6Dh, 71h
		db	 71h, 74h, 00h, 64h, 67h, 89h
		db	 89h, 89h
data_186	db	6Eh			; Data table (indexed access)
		db	 75h, 77h, 79h, 7Dh, 81h, 85h
		db	 8Ah, 8Eh, 92h

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_11:
		xchg	dx,ax
		jp	$+80h			; Jump if parity=1
;*		add	byte ptr ss:[8D8Bh][bp],91h
		db	 82h, 86h, 8Bh, 8Dh, 91h	;  Fixup - byte match
		xchg	bx,ax
		jnp	$+81h			; Jump if not parity
;*		add	word ptr ds:[8E8Ch][bx],0FF8Eh
		db	 83h, 87h, 8Ch, 8Eh, 8Eh	;  Fixup - byte match
		xchg	dx,ax
		jl	$-7Eh			; Jump if <
		test	cl,byte ptr ds:[8A8Ch][bx+si]
		xchg	cx,ax
		xchg	dx,ax
		add	byte ptr ds:[8185h][bx+si],al
		xchg	byte ptr ss:[9490h][bp+di],cl
		db	 63h, 66h, 85h, 84h, 88h, 8Dh
		db	 91h, 95h
		db	'dgjnnnvx'
		db	 00h, 00h, 6Bh, 6Fh, 72h, 6Fh
		db	 72h, 00h, 00h, 00h,0D7h,0DDh
		db	 00h, 00h, 00h, 00h, 00h, 00h
		db	0D8h,0DEh,0E6h,0E6h,0E6h,0E4h
		db	 00h, 00h,0D8h,0DFh,0E6h,0E6h
		db	0E6h,0E5h, 00h, 00h,0D8h,0DEh
		db	0E4h,0E6h,0E6h,0E6h, 00h, 00h
		db	0D8h,0DFh,0E5h,0E8h,0E8h,0E8h
		db	 00h, 00h,0D8h,0DEh,0E4h, 01h
		db	 01h, 01h, 00h, 00h,0D8h,0DFh
		db	0E5h, 01h, 01h
data_187	dw	1			; Data table (indexed access)
		db	 00h,0D8h,0DEh,0E4h,0E9h,0E9h
		db	0E9h, 00h, 02h,0D9h,0E0h,0E5h
		db	0EAh,0EAh,0EAh, 00h, 00h,0DAh
		db	0E1h,0EFh,0EFh,0EEh,0ECh, 00h
		db	 00h,0DBh,0E1h,0EFh,0EEh,0EFh
		db	0EDh, 00h, 00h,0DBh,0E1h,0EFh
		db	0EFh,0EFh,0EEh, 00h, 00h,0DCh
		db	0E3h, 00h, 00h, 00h, 00h, 00h
		db	 65h, 68h, 00h, 6Ch, 70h, 73h
		db	 00h, 63h, 66h, 69h, 70h, 6Dh
		db	 8Dh, 75h, 77h, 79h, 7Dh, 81h
		db	 8Bh, 85h, 88h, 8Eh, 94h, 7Ah
		db	 7Eh, 82h, 86h, 8Bh, 8Fh, 8Eh
		db	 94h, 7Bh, 7Fh, 83h, 87h, 8Ch
		db	 90h, 91h, 95h, 7Ch, 80h, 84h
		db	 88h, 8Dh, 88h, 8Eh, 92h, 64h
		db	 81h, 85h, 6Eh, 89h, 89h, 76h
		db	 78h, 00h, 00h, 6Bh, 6Fh, 72h
		db	 72h, 00h, 00h, 00h, 00h,0D7h
		db	 23h, 23h
data_188	db	23h			; Data table (indexed access)
		db	 23h, 23h, 00h, 00h,0D8h, 22h
		db	 22h, 22h, 22h, 22h, 00h, 00h
		db	0D8h, 22h, 22h, 22h, 22h, 22h
		db	 00h, 00h,0D8h, 22h, 55h, 22h
		db	 22h, 22h, 00h, 00h,0D8h, 22h
		db	 56h, 1Ch, 1Ch
data_189	db	1Ch			; Data table (indexed access)
		db	 00h, 00h,0D8h, 22h, 57h, 01h
		db	 01h, 01h, 00h, 00h,0D9h, 22h
		db	 58h, 22h, 22h, 22h, 00h, 00h
		db	0DAh, 24h, 24h, 24h, 24h, 24h
		db	 00h, 00h,0DBh, 24h, 24h, 24h
		db	 24h, 24h, 00h, 00h,0DBh, 24h
		db	 24h, 24h, 24h, 24h, 00h, 00h
		db	0DCh, 25h, 25h, 25h, 25h, 25h
		db	 00h, 00h, 00h, 00h, 6Ch, 70h
		db	 74h, 00h, 00h, 00h, 63h, 6Dh
		db	 6Dh, 71h, 75h, 77h, 00h

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_34:
		add	[si+6Eh],ah
		db	 6Eh, 89h, 76h, 78h, 00h, 00h
		db	 00h, 00h, 6Fh, 72h, 00h, 00h
		db	 00h, 00h, 00h, 5Fh, 14h, 14h
		db	 14h, 14h, 00h, 00h, 03h, 62h
		db	 1Fh, 1Fh, 1Fh, 20h, 00h, 00h
		db	 04h, 0Dh, 1Fh, 1Fh, 1Fh, 20h
		db	 00h, 00h, 05h, 0Dh, 4Dh, 1Fh
		db	 1Fh, 20h, 00h, 00h, 06h, 0Dh
		db	 4Eh, 1Ch, 1Ch, 1Ch, 00h, 00h
		db	 06h, 0Dh, 4Fh, 01h, 01h, 01h
		db	 00h, 00h, 06h, 0Dh, 50h, 1Fh
		db	 1Fh
data_190	db	20h			; Data table (indexed access)
data_191	db	0
		db	 00h, 06h, 0Eh, 18h, 18h, 18h
		db	 18h, 00h, 00h, 07h, 0Fh, 19h
		db	 19h, 19h, 19h, 00h, 00h, 08h
		db	 10h, 19h, 19h, 19h, 19h, 00h
		db	 00h, 09h, 11h, 19h, 19h, 19h
		db	 19h, 00h, 00h, 5Eh, 60h, 19h
		db	 19h, 19h, 19h, 00h, 00h, 00h
		db	 61h, 1Bh, 1Bh, 1Bh, 1Ah, 00h
		db	 63h, 66h, 6Dh, 6Dh, 71h, 75h
		db	 77h, 00h, 64h, 67h, 6Eh, 71h
		db	 71h, 76h, 78h, 00h, 00h, 00h
		db	 6Fh, 72h, 6Fh, 72h, 00h, 00h
		db	 00h, 0Bh, 14h, 14h, 14h, 14h
		db	 14h, 00h, 03h, 0Ch, 15h, 15h
		db	 15h, 15h, 15h, 00h, 04h, 0Dh
		db	 16h, 16h, 16h, 16h, 16h, 00h
		db	 05h, 0Dh, 16h, 16h, 16h, 16h
		db	 16h, 00h, 06h, 0Dh, 16h, 16h
		db	 16h, 16h, 16h, 00h, 06h, 0Dh
		db	 16h, 59h, 17h, 17h, 17h, 00h
		db	 06h, 0Dh, 16h, 5Ah, 1Ch, 1Ch
		db	 1Ch, 00h, 06h, 0Dh, 16h, 5Bh
		db	 01h, 01h, 01h, 00h, 06h, 0Dh
		db	 16h, 5Ch, 16h, 16h, 16h, 00h
		db	 06h, 0Dh, 16h, 16h, 16h, 16h
		db	 16h, 00h, 06h, 0Eh, 18h, 18h
		db	 18h, 18h, 18h, 00h, 07h, 0Fh
		db	 19h, 19h, 19h, 19h, 19h, 00h
		db	 08h, 10h, 19h, 1Ah, 1Ah, 19h
		db	 19h, 00h, 09h, 11h, 19h, 1Dh
		db	 1Dh, 19h, 19h, 02h, 0Ah, 12h
		db	 19h, 19h, 19h, 19h, 19h, 00h
		db	 00h, 13h, 1Bh, 1Bh, 1Bh, 1Bh
		db	 1Bh, 00h, 00h, 00h
		db	 6Ch, 6Ch
data_192	db	73h			; Data table (indexed access)
data_193	dw	0			; Data table (indexed access)
		db	 00h, 65h, 69h, 6Dh, 6Dh, 8Dh
		db	 74h, 00h, 00h, 66h, 89h, 85h
		db	 8Dh, 8Dh, 75h, 77h, 7Ch, 80h
		db	 84h, 88h, 89h, 8Eh, 8Eh, 94h
		db	 00h, 64h, 6Ah, 8Ch, 89h, 87h
		db	 8Bh, 93h, 00h, 00h, 6Bh, 6Eh
		db	 8Ch, 6Eh, 76h, 78h, 00h, 00h
		db	 00h, 00h, 72h, 6Fh, 72h, 00h
		db	 00h, 00h, 00h, 00h, 00h, 00h
		db	 9Bh, 99h, 00h, 00h, 00h, 00h
		db	 00h, 00h, 9Ch, 9Ah, 00h, 00h
		db	 00h, 00h, 00h, 99h,0BCh,0BEh
		db	 00h, 00h, 00h, 00h, 99h,0BCh
		db	0BDh,0BFh, 00h, 00h, 00h, 99h
		db	 9Ah,0BCh,0C0h,0C2h, 00h, 00h
		db	0A2h, 9Ah,0BCh,0BEh,0C1h,0C3h
		db	 00h, 00h,0A3h,0C0h,0BDh,0BFh
		db	0C1h,0C6h, 00h,0ACh,0ADh,0C1h
		db	0C2h,0C2h,0C5h,0C7h, 00h,0A9h
		db	0C8h,0C2h,0C6h,0C3h,0C8h,0BFh
		db	 00h,0A8h,0C9h,0CBh,0BFh,0C4h
		db	0C9h,0CBh, 00h,0A9h,0BCh,0BEh
		db	0CCh,0CCh,0CCh,0CCh, 00h,0A6h
		db	0BDh,0BFh,0CCh,0CDh,0CEh,0CEh
		db	0A5h,0A7h,0C0h,0C2h,0CCh,0CFh
		db	0D0h
data_194	db	0D0h
		db	 00h,0A0h,0C1h,0C3h,0CCh,0CCh
		db	0CCh,0CCh,0A2h,0A4h,0C4h,0C6h
		db	0BFh,0CAh,0BFh,0C5h, 9Fh,0A1h
		db	0C5h,0C7h,0C6h,0C5h,0C5h,0CAh
		db	0A0h,0C4h,0C8h,0CAh,0CAh,0BFh
		db	0CAh,0CAh, 96h
		db	7 dup (97h)
		db	24 dup (0)
		db	 43h, 00h, 7Bh, 00h, 04h, 00h
		db	0FFh, 00h, 01h, 18h,0AFh, 00h
		db	 0Eh
		db	'Bosque village'
		db	 07h, 00h, 09h, 24h, 00h, 06h
		db	 3Dh, 00h, 02h, 51h, 00h, 04h
		db	 60h, 00h, 03h, 72h, 00h, 07h
		db	 8Eh, 00h, 08h,0FFh,0FFh,0B9h
		db	 00h, 13h, 00h, 05h, 95h, 00h
		db	 0Eh, 01h, 06h, 12h, 00h, 08h
		db	0FAh,0CCh, 80h,0FBh,0CCh, 0Eh
		db	0FFh,0FFh,0FFh,0FFh, 3Eh,0C5h
		db	 05h,0C6h, 93h,0C6h, 95h,0C7h
		db	0FAh,0C7h, 46h,0C8h,0F9h,0C8h
		db	0B3h,0C9h, 3Eh,0CAh, 19h,0CBh
		db	 8Dh,0CBh,0FAh,0CBh, 28h,0CCh
		db	 5Ah,0CCh,0B5h,0CCh
data_197	db	'Welcome to Bosque Village, brave'
		db	' warrior. This once was a forest'
		db	' surrounding a temple, but the t'
		db	'emple was destroyed by Jashiin. '
		db	'Now the village of Bosque is des'
		db	'olate. I hope you are here to he'
		db	'lp us.'
		db	0FFh, 4Ch, 69h
data_204	db	'sten, stranger, a sentry is post'
		db	'ed on the outskirts of the city.'
		db	' I\m telling you this for your o'
		db	'wn good; it\s best to stay away '
		db	'from there.'
		db	0FFh, 54h, 68h
data_206	db	'e temple that once stood here ha'
		db	'd the crest of the Warrior God c'
		db	'arved into it. Winners of the ma'
		db	'rtial arts competitions held in '
		db	'front of the temple were awarded'
		db	' with such crests. Thus the cres'
		db	't, the symbol of a true hero, be'
		db	'came known as the Hero\s Crest.'
		db	0FFh, 57h, 68h
data_209	db	'en he destroyed the temple, Jash'
		db	'iin stole the Hero\s Crest.  No '
		db	'one has any idea where to find i'
		db	't.'
		db	0FFh, 54h, 68h
data_211	db	'e crest must be hidden somewhere'	; Data table (indexed access)
		db	' in the forest, but I couldn\t s'
		db	'ay where.'
		db	0FFh, 57h, 68h
		db	'en the temple was destroyed I he'
		db	'ard Jashiin ordering'
data_216	dw	6820h			; Data table (indexed access)
		db	 69h, 73h, 20h, 75h, 6Eh, 64h
		db	'erlings to hide the cres'	; Data table (indexed access)
		db	't in the'		; Data table (indexed access)
		db	 20h, 74h
data_219	db	'runk of the biggest tr'	; Data table (indexed access)
		db	'ee. That must be where it is hid'
		db	'den. I hope you '
		db	'can find it.'
		db	0FFh, 41h, 20h
		db	'spir'
data_222	dw	7469h			; Data table (indexed access)
		db	' appeared and told me to say thi'
		db	's if I met a brave man: "If you '
		db	'go through the door to the right'
		db	' of the tree that forms a cross,'
		db	' you will be able to go up."/I&h'
		db	'ope it helps you.'
		db	0FFh, 49h, 20h
		db	'have some advice for you: Be car'
		db	'eful if you come to a place wher'
		db	'e the l'
data_224	dw	6165h			; Data table (indexed access)
		db	'ves of the trees are thin. The'
		db	' ground th'		; Data table (indexed access)
		db	 65h, 72h, 65h
		db	' is not very strong.'	; Data table (indexed access)
		db	0FFh, 54h, 68h
data_227	db	'e sentry at the edge of town say'
		db	's the Spirits came to him in a d'
		db	'ream, and told him not to allow '
		db	'anyone to pass unless they bear '
		db	'the Hero\s Crest. I wonder if th'
		db	'e Spirits really ordered such a '
		db	'thing? Perhaps he\s mad.'
		db	0FFh, 41h, 20h
data_233	db	'few have slipped by the sentry u'
		db	'ndetected, but none have returne'
		db	'd. There must be some terrible m'
		db	'onster out there.'
		db	0FFh, 54h, 68h
data_235	db	'at sentry must have sold his sou'
		db	'l to Jashiin. Why else would he '
		db	'interfere with brave men such as'
		db	' yourself?'
		db	0FFh, 48h, 6Fh
data_237	db	'ld on there! Do you have the Her'	; Data table (indexed access)
		db	'o\s Crest? '
		db	 81h, 44h, 6Fh, 6Eh, 5Ch
data_239	db	't lie, it won\t do any good. Get'
		db	' out of here!'
		db	0FFh, 59h, 6Fh
		db	'u cannot pass here without the H'
		db	'ero\s Crest. My orders are from '
		db	'the Spirits themselves! '
		db	0FFh, 48h, 6Fh
		db	'ld on there! You have the Hero\s'
		db	' Crest, I see. You may pass.'
		db	0FFh, 09h, 00h, 01h,0CCh, 00h
		db	 04h,0C0h, 0Bh, 65h, 00h, 81h
		db	 19h, 00h, 00h, 00h, 02h, 15h
		db	 00h, 04h, 8Eh, 00h, 05h, 00h
		db	 0Ah, 6Bh, 00h, 04h, 6Fh, 00h
		db	 05h, 00h, 06h, 57h, 00h, 84h
		db	 25h, 00h, 06h, 00h, 04h, 83h
		db	 00h, 00h, 00h, 03h, 03h, 00h
		db	 00h, 4Fh, 00h, 00h, 22h, 00h
		db	 01h, 00h, 01h, 5Ah, 00h, 00h
		db	 89h, 00h, 02h, 00h, 07h, 2Ch
		db	 00h, 00h, 1Bh, 03h, 03h, 00h
		db	 08h, 44h, 00h, 00h, 00h, 00h
		db	 05h, 00h, 05h, 59h, 00h, 02h
		db	 8Bh, 03h, 03h, 00h, 03h, 20h
		db	 00h, 02h, 15h, 00h, 06h, 00h
		db	 09h,0FFh,0FFh, 00h, 0Eh, 00h
		db	 00h, 33h,0C7h,0E3h, 00h, 38h
		db	0C7h, 04h, 47h,0C7h, 4Fh,0C7h
		db	 60h,0C7h, 7Dh,0C7h,0BEh,0CDh
		db	 2Fh,0C7h, 2Ch, 00h, 6Ah,0C7h
		db	 00h, 00h, 00h
		db	29 dup (0)
		db	 89h, 8Dh, 82h, 00h, 00h, 00h
		db	 00h, 00h, 8Ah, 8Eh, 83h, 00h
		db	 00h, 00h, 00h, 00h, 74h, 7Bh
		db	 82h, 00h, 00h, 00h, 00h, 00h
		db	 75h, 7Ch, 83h, 00h, 00h, 00h
		db	 00h, 00h, 74h, 7Bh, 82h, 00h
		db	 00h, 00h, 00h, 00h, 75h, 7Ch
		db	 83h, 00h, 00h, 00h, 00h, 00h
		db	 74h, 7Bh, 82h, 00h, 00h, 00h
		db	 00h, 00h, 75h, 7Ch, 83h, 00h
		db	 00h, 00h, 00h, 00h, 74h, 7Bh
		db	 82h, 00h, 00h, 00h, 00h, 00h
		db	 75h, 7Ch, 83h, 00h, 00h, 00h
		db	 00h, 00h, 74h, 7Bh, 82h, 00h
		db	 00h, 00h, 00h, 00h, 75h, 7Ch
		db	 83h, 00h, 00h, 00h, 00h, 00h
		db	 74h, 7Bh, 82h, 00h, 00h, 00h
		db	 95h, 98h, 75h, 7Ch, 83h, 00h
		db	 00h, 00h, 00h, 00h, 74h, 7Bh
		db	 82h, 00h, 00h, 95h, 97h, 99h
		db	 75h, 7Ch, 83h, 00h, 00h, 00h
		db	 00h, 00h, 74h, 7Bh, 82h, 00h
		db	 95h, 97h, 96h, 99h, 75h, 7Ch
		db	 83h, 00h, 00h, 00h, 00h, 00h
		db	 00h, 89h, 93h, 95h, 96h, 96h
		db	 96h, 99h, 00h, 8Ah, 94h, 00h
		db	134 dup (0)
		db	 59h, 00h, 00h, 00h, 00h, 00h
		db	 00h, 1Dh, 5Ah, 5Dh, 5Fh, 5Fh
		db	 5Fh, 5Fh, 1Dh, 1Eh, 5Ah, 5Dh
		db	 5Fh, 5Fh, 5Fh, 5Fh, 1Eh, 1Eh
		db	 5Ah, 5Dh, 5Fh, 5Fh, 5Fh, 5Fh
		db	 1Eh, 1Eh, 5Ah, 5Dh, 5Fh, 61h
		db	 61h, 61h, 1Eh, 1Eh, 5Ah, 5Dh
		db	 5Fh, 00h, 00h, 00h, 1Eh, 1Eh
		db	 5Ah, 5Dh, 5Fh, 5Fh, 5Fh, 5Fh
		db	 1Eh, 1Eh, 5Ah, 5Dh, 5Fh, 5Fh
		db	 5Fh, 5Fh, 1Eh, 1Eh
		db	'Z]____cc[^````cc[^`#%`Pc[^`$'
		db	'&`', 0
		db	'P[^````'
		db	 00h, 00h, 5Ch
		db	53 dup (0)
		db	 0Dh, 13h, 19h, 1Bh, 1Bh, 1Bh
		db	 1Bh, 1Bh, 03h, 09h, 1Ah, 1Bh
		db	 1Bh, 1Bh, 1Bh, 1Bh, 00h, 00h
		db	 00h, 00h, 1Ch, 1Ch, 1Ch, 1Ch
		db	 00h, 00h, 00h, 00h, 1Ch, 1Ch
		db	 1Ch, 1Ch, 00h, 00h, 00h, 00h
		db	 1Ch, 1Ch, 1Ch, 1Ch, 00h, 00h
		db	 00h, 00h, 1Ch, 1Ch, 1Ch, 1Ch
		db	 00h, 00h, 00h, 00h, 1Ch, 1Ch
		db	 1Ch, 1Ch, 00h, 00h, 00h, 00h
		db	 1Ch, 1Ch, 1Ch, 1Ch, 00h, 00h
		db	 00h, 00h, 1Ch, 1Ch, 1Ch, 1Ch
		db	 00h, 00h, 00h, 00h, 1Ch, 1Ch
		db	 1Ch, 1Ch, 00h, 00h, 00h, 00h
		db	 1Ch, 1Ch, 1Ch, 1Ch, 00h, 00h
		db	 00h, 00h, 1Ch, 1Ch, 1Ch, 1Ch
		db	 00h, 0Dh, 13h, 19h, 1Bh, 1Bh
		db	 1Bh, 1Bh, 00h, 01h, 07h, 1Ah
		db	 1Bh, 1Bh, 1Bh, 1Bh, 00h, 00h
		db	 00h, 00h, 1Ch, 1Ch, 1Ch, 1Ch
		db	 00h, 00h, 00h, 00h, 1Ch, 1Ch
		db	 1Ch, 1Ch, 00h, 00h, 00h, 00h
		db	 1Ch, 1Ch, 1Ch, 1Ch, 00h, 00h
		db	 00h, 00h, 1Ch, 1Ch, 1Ch, 1Ch
		db	 00h, 00h, 00h, 00h, 1Ch, 1Ch
		db	 1Ch, 1Ch, 00h, 00h, 00h, 00h
		db	 1Ch, 1Ch, 1Ch, 1Ch, 00h, 00h
		db	 00h, 00h, 1Ch, 1Ch, 1Ch, 1Ch
		db	 00h, 00h, 00h

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_18:
		add	[si],bl
		sbb	al,1Ch
		sbb	al,0
		add	[bx+si],al
		add	[si],bl
		sbb	al,1Ch
		sbb	al,0
		add	[bx+si],al
		add	[si],bl
		sbb	al,1Ch
		sbb	al,0
		or	ax,1913h
		sbb	bx,[bp+di]
		sbb	bx,[bp+di]
		add	[bx+di],al
		pop	es
		sbb	bl,[bp+di]
		sbb	bx,[bp+di]
		sbb	ax,[bx+si]
		db	17 dup (0)
		db	 4Dh, 52h, 4Eh, 4Fh, 51h, 52h
		db	 00h, 00h
		db	'RSRONS5;OOOSON6< Op NO6< Sqaaa6<'
		db	'O!r'
		db	 00h, 00h, 00h, 36h, 3Ch, 1Fh
		db	 4Eh, 73h, 1Fh
		db	'NR6< NOS S6<NOORN'
		db	 1Fh, 38h, 3Dh, 20h, 53h, 1Fh
		db	 53h, 1Fh
		db	'S9>TTU'
		db	'TUT9>TWVTUW9>TTUWVT:;TWVTTU'
		db	 00h, 00h, 57h, 56h, 54h, 54h
		db	 57h, 56h, 00h, 00h
		db	 58h, 57h, 56h, 56h, 57h, 56h
		db	25 dup (0)
		db	 1Dh, 9Eh, 9Eh, 9Eh, 9Eh, 9Eh
		db	 9Eh, 1Dh, 1Eh, 9Eh, 9Eh, 9Fh
		db	 9Eh, 9Eh

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_39:
		sahf				; Store ah into flags
		push	ds
		push	ds
		sahf				; Store ah into flags
		sahf				; Store ah into flags
		sahf				; Store ah into flags
		sahf				; Store ah into flags
		lahf				; Load ah from flags
		sahf				; Store ah into flags
		push	ds
		push	ds
		sahf				; Store ah into flags
		db	 64h, 2Fh, 31h, 31h, 31h, 1Eh
		db	 1Eh, 9Eh, 65h, 30h, 32h, 32h
		db	 32h, 1Eh, 1Eh, 9Eh, 66h, 30h
		db	 00h, 00h, 00h, 1Eh, 1Eh, 9Eh
		db	 67h, 2Fh, 31h, 31h, 31h, 1Eh
		db	 1Eh, 9Eh, 9Eh, 9Eh, 9Eh, 9Eh
		db	 9Eh, 1Eh, 1Eh, 9Fh, 9Eh, 9Eh
		db	 9Eh, 9Fh, 9Eh, 1Eh, 1Eh, 9Eh
		db	 9Eh, 9Eh, 9Fh, 9Eh, 9Eh, 1Eh
		db	 1Eh, 9Eh, 9Eh, 9Eh, 9Eh, 9Eh
		db	 9Eh, 63h, 63h,0A0h,0A0h,0A0h
		db	0A0h,0A0h,0A0h, 63h, 63h,0A0h
		db	0A0h,0A0h,0A0h,0A1h,0A0h, 50h
		db	 63h,0A0h,0A1h,0A0h,0A0h,0A0h
		db	0A0h, 00h, 50h,0A0h,0A0h,0A0h
		db	0A1h,0A0h,0A0h, 00h
		db	16 dup (0)
		db	'F', 27h, 27h, 27h, 27h, 27h, 27h
		db	'?G(', 27h, 27h, 27h, 27h, 27h, '@'
		db	'H', 27h, 27h, '(', 27h, 27h, 27h
		db	'AG', 27h, 'lbbbb@H', 27h, 'mbaaa'
		db	'AG(nb'
		db	 00h, 00h, 00h, 40h, 48h
data_254	db	27h, 'obbbbAG', 27h, 27h, 27h, 27h
		db	27h, '(@H', 27h, 27h, '(', 27h, 27h
		db	27h, 'AG', 27h, 27h, 27h, 27h, 27h
		db	27h, 'BI))))))CJ))*)*)DK))))))EL)'
		db	')))))'
		db	25 dup (0)
		db	 0Dh, 13h, 19h, 1Bh, 1Bh, 1Bh
		db	 1Bh, 00h, 01h, 07h, 1Ah
		db	 1Bh, 1Bh

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_40:
		sbb	bx,[bp+di]
		db	0
		db	17 dup (0)
		db	 9Bh, 9Ch, 9Ch, 9Ah, 9Bh, 9Ch
		db	 35h, 3Bh, 9Ch, 9Ch, 9Bh, 9Ch
		db	 9Ch, 9Ch, 36h, 3Ch, 9Bh, 68h
		db	 2Fh, 31h, 31h, 31h, 36h, 3Ch
		db	 9Ah
		db	69h

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_41:
		xor	[bp+si],dh
		xor	dh,[bp+si]
		db	 36h, 3Ch, 9Bh, 6Ah, 30h
data_258	db	0			; Data table (indexed access)
		db	 00h, 00h, 36h, 3Ch, 9Ah
		db	 6Bh, 2Fh, 31h
data_259	db	31h			; Data table (indexed access)
		db	 31h, 36h, 3Ch, 9Bh
data_260	db	9Bh			; Data table (indexed access)
		db	 9Ah, 9Ah, 9Bh, 9Ah, 37h, 3Ch
		db	 9Bh, 9Bh, 9Bh, 9Ah, 9Ah, 9Bh
		db	 38h, 3Dh, 9Dh, 9Dh, 9Dh, 9Dh
		db	 9Dh, 9Dh, 39h, 3Eh, 9Dh, 9Dh
		db	 9Dh, 9Dh, 9Dh, 9Dh, 3Ah, 3Bh
		db	 9Dh, 9Dh, 9Dh, 9Dh, 9Dh, 9Dh
		db	 00h, 00h, 9Dh, 9Dh, 9Dh, 9Dh
		db	 9Dh, 9Dh
		db	25 dup (0)
		db	 0Dh, 13h, 19h, 1Bh, 1Bh, 1Bh
		db	 1Bh, 00h, 01h, 07h, 1Ah, 1Bh
		db	 1Bh, 1Bh, 1Bh, 00h, 00h, 00h
		db	 00h, 1Ch, 1Ch, 1Ch, 1Ch, 00h
		db	 00h, 00h, 00h, 1Ch, 1Ch, 1Ch
		db	 1Ch, 00h, 00h, 00h, 00h, 1Ch
		db	 1Ch, 1Ch, 1Ch, 00h, 00h, 00h
		db	 00h, 1Ch, 1Ch, 1Ch, 1Ch, 00h
		db	 00h, 00h
data_262	db	0			; Data table (indexed access)
		db	1Ch
data_263	db	1Ch			; Data table (indexed access)
		db	 1Ch, 1Ch, 00h, 00h, 00h, 00h
		db	 1Ch, 1Ch, 1Ch, 1Ch, 00h, 00h
		db	 00h, 00h, 1Ch, 1Ch, 1Ch, 1Ch
		db	 00h, 00h, 00h, 00h, 1Ch, 1Ch
		db	 1Ch, 1Ch, 00h, 00h, 00h, 00h
		db	 1Ch, 1Ch, 1Ch, 1Ch, 00h, 0Dh
		db	 13h, 19h, 1Bh, 1Bh, 1Bh, 1Bh
		db	 00h, 01h, 07h, 1Ah, 1Bh, 1Bh
		db	 1Bh, 1Bh, 00h, 00h, 00h, 00h
		db	 1Ch, 1Ch, 1Ch, 1Ch, 00h, 00h
		db	 00h, 00h, 1Ch
data_264	db	1Ch			; Data table (indexed access)
		db	 1Ch, 1Ch, 00h, 00h, 00h, 00h
		db	 1Ch, 1Ch, 1Ch, 1Ch, 00h, 00h
		db	 00h, 00h, 1Ch, 1Ch, 1Ch, 1Ch
		db	 00h, 00h, 00h, 00h, 1Ch, 1Ch
		db	 1Ch, 1Ch, 00h, 00h, 00h, 00h
		db	 1Ch, 1Ch, 1Ch, 1Ch, 00h, 00h
		db	 00h, 00h, 1Ch, 1Ch, 1Ch, 1Ch
		db	 00h, 00h, 00h, 00h, 1Ch, 1Ch
		db	 1Ch, 1Ch, 00h, 00h, 00h, 00h
		db	 1Ch, 1Ch, 1Ch, 1Ch, 00h, 00h
		db	 00h, 00h, 1Ch, 1Ch, 1Ch, 1Ch
		db	 0Dh, 13h, 19h, 1Bh, 1Bh, 1Bh
		db	 1Bh, 1Bh, 01h, 07h, 1Ah
		db	 1Bh, 1Bh, 1Bh, 1Bh, 1Bh
		db	113 dup (0)
		db	 79h, 80h, 00h, 00h, 00h, 00h
		db	 00h, 00h, 7Ah, 81h, 84h, 85h
		db	 85h, 85h, 87h, 74h, 7Bh, 82h
		db	 00h, 00h, 00h, 00h, 00h, 75h
		db	 7Ch, 83h, 00h, 84h, 86h, 85h
		db	 87h, 74h, 7Bh, 82h, 00h, 00h
		db	 00h, 00h, 00h, 75h, 7Ch, 83h
		db	 00h, 00h, 84h, 86h, 87h, 74h
		db	 7Bh, 82h, 00h, 00h, 00h, 00h
		db	 00h, 75h, 7Ch, 83h, 00h, 00h
		db	 00h, 84h, 88h, 74h, 7Dh, 82h
		db	 00h, 00h, 00h, 00h, 00h, 75h
		db	 7Ch, 83h, 00h, 00h, 00h, 00h
		db	 00h, 74h, 7Dh, 82h, 00h, 00h
		db	 00h, 00h, 00h, 75h, 7Ch, 83h
		db	 00h, 00h, 00h, 00h, 00h, 74h
		db	 7Dh, 82h, 00h, 00h, 00h, 00h

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_42:
		add	[di+7Ch],dh
		add	word ptr [bx+si],0
		add	[bx+si],al
		add	[si+7Dh],dh
;*		add	byte ptr [bx+si],0
		db	 82h, 00h, 00h		;  Fixup - byte match
		add	[bx+si],al
		add	[di+7Ch],dh
		add	word ptr [bx+si],0
		add	[bx+si],al
		add	[si+7Dh],dh
;*		add	byte ptr [bx+si],0
		db	 82h, 00h, 00h		;  Fixup - byte match
		add	[bx+si],al
		add	[di+7Ch],dh
		add	word ptr [bx+si],0
		add	[bx+si],al
		add	[si+7Dh],dh
;*		add	byte ptr [bx+si],0
		db	 82h, 00h, 00h		;  Fixup - byte match
		add	[bx+si],al
		add	[di+7Ch],dh
		add	word ptr [bx+si],0
		add	[bx+si],al
		add	[si+7Dh],dh
;*		add	byte ptr [bx+si],0
		db	 82h, 00h, 00h		;  Fixup - byte match
		add	[bx+si],al
		add	[bp+7Eh],dh
		add	word ptr [bx+si],0
		add	[bx+si],al
		add	[bx+7Fh],dh
;*		add	byte ptr [bx+si],0
		db	 82h, 00h, 00h		;  Fixup - byte match
		add	[bx+si],al
		add	[bx+si+7Fh],bh
		add	word ptr [bx+si],0
		db	35 dup (0)
		db	 40h, 00h,0B4h, 00h, 02h, 01h
		db	0FFh, 01h, 02h, 19h,0AFh, 00h
		db	 0Bh
		db	'Helada Town'
		db	 81h, 00h,0FFh,0FFh, 80h, 01h
		db	0FFh,0FFh, 2Ch, 00h, 02h, 5Ch
		db	 00h, 07h, 6Fh, 00h, 03h, 80h
		db	 00h, 04h, 94h, 00h, 06h,0FFh
		db	0FFh, 56h, 00h, 16h, 01h, 08h
		db	 10h, 00h, 16h, 00h, 09h, 1Ah
		db	 00h, 10h,0D5h,0CDh, 07h,0D4h
		db	0CDh, 00h,0EDh,0CDh, 09h,0DDh
		db	0CDh, 08h,0FFh,0FFh,0FFh,0FFh
		db	 93h,0C7h, 06h,0C8h, 5Ch,0C8h
		db	 53h,0C9h, 21h,0CAh,0A5h,0CAh
		db	 3Ch,0CBh,0BFh,0CBh, 42h,0CCh
		db	0AEh,0CCh, 09h,0CDh
data_267	db	'Welcome. You must be cold. Helad'
		db	'a used to be a warm, prosperous '
		db	'place, but Jashiin has turned it'
		db	' into a cold ruin.'
		db	0FFh, 59h, 6Fh
		db	'u may have noticed that there ar'
		db	'e two roads leading here. There '
		db	'is also a shortcut.'
		db	0FFh, 48h, 61h
data_270	db	've you been in the ice caverns? '
		db	'The shoemaker in this town was t'
		db	'rying to make special shoes out '
		db	'of Ruzeria bark, to help a hero '
		db	'walk on the ice. Just as he mana'
		db	'ged to do so, Jashiin\s minions '
		db	'murdered him. I wonder what happ'
		db	'ened to those shoes.'
		db	0FFh, 41h, 72h
data_272	db	'e you the brave one? My lover, P'
		db	'ercel, was killed by Jashiin\s u'
		db	'nderlings just after the Spirits'
		db	' asked him to make the Ruzeria s'
		db	'hoes for a brave man. Return my '
		db	'Percel to me! Oh, if only you ha'
		db	'd not come!'
		db	0FFh, 49h, 20h
data_277	db	'think you should know something:'
		db	' Percel the shoemaker said that '
		db	'without the Ruzeria shoes you co'
		db	'uld not go beyond the green door'
		db	'.'
		db	0FFh, 52h, 75h
data_279	db	'zeria is the name of a tree that'
		db	' grows in the underground forest'
		db	'. The bark is very hard and is n'
		db	'ot slippery. Percel had good rea'
		db	'son for choosing it.'
		db	0FFh, 53h, 6Fh
data_282	db	'meone I know said he had seen a '
		db	'pair of unusual shoes in the cav'
		db	'erns. I\m not sure whether those'
		db	' are the shoes that Percel made.'
		db	0FFh, 49h, 5Ch
		db	'm sorry for what I said a short '
		db	'while ago. I don\t know what cam'
		db	'e over me. Please defeat Jashiin'
		db	' and avenge the death of Percel.'
		db	0FFh, 41h, 68h
		db	', the shoes of Percel.... I see '
		db	'you are a brave man. I hope you '
		db	'will find Jashiin and defeat him'
		db	' quickly.'
		db	0FFh, 54h, 68h
data_287	db	'is brave man with the Ruzeria sh'
		db	'oes... With this the shoemaker\s'
		db	' shop also floats up... '
		db	0FFh, 49h, 5Ch
data_289	db	'll bet the green slime creatures'
		db	' have caused you a lot of troubl'
		db	'e. Let me tell you a secret: the'
		db	'y can\t withstand heat. Burn the'
		db	'm and they will vanish in a sing'
		db	'le burst of steam.'
		db	0FFh,0B1h, 00h, 81h, 1Ch, 01h
		db	 03h, 00h, 00h, 8Bh, 00h, 83h
		db	 00h, 00h, 05h, 00h, 04h, 69h
		db	 00h, 02h, 00h, 01h, 03h, 80h
		db	 03h,0A6h, 00h, 83h, 00h, 00h
		db	 05h, 00h, 02h, 48h, 00h, 83h
		db	 1Bh, 00h, 01h, 00h, 05h, 9Eh
		db	 00h, 82h, 00h, 00h, 02h, 00h
		db	 06h, 38h, 00h, 81h, 00h, 01h
		db	 03h, 00h, 0Ah, 50h, 00h, 81h
		db	 00h, 01h, 06h, 00h, 01h,0FFh
		db	0FFh,0EEh, 0Fh, 00h, 00h, 8Bh
		db	0C8h, 0Eh, 01h, 90h,0C8h, 05h
		db	 9Eh,0C8h,0A6h,0C8h,0B7h,0C8h
		db	0DEh,0C8h,0ACh,0CFh, 87h,0C8h
		db	 80h, 00h,0C1h,0C8h
		db	32 dup (0)
		db	 89h, 8Dh, 82h, 00h, 00h, 00h
		db	 00h, 00h, 8Ah, 8Eh, 83h, 00h
		db	 00h, 00h, 00h, 00h, 74h, 7Bh
		db	 82h, 00h, 00h, 00h, 00h, 00h
		db	 75h, 7Ch, 83h, 00h, 00h, 00h
		db	 00h, 00h, 74h, 7Bh, 82h, 00h
		db	 00h, 00h, 95h, 98h, 75h, 7Ch
		db	 83h, 00h, 00h, 00h, 00h, 00h
		db	 74h, 7Bh, 82h, 00h, 00h, 95h
		db	 97h, 99h, 75h, 7Ch, 83h, 00h
		db	 00h, 00h, 00h, 00h, 8Bh, 8Fh
		db	 82h, 00h, 95h, 97h, 96h, 99h
		db	 8Ch, 90h, 83h, 00h, 00h, 00h
		db	 00h, 00h, 00h, 91h, 93h, 95h
		db	 96h, 96h, 96h, 99h, 00h, 92h
		db	 94h, 00h, 00h, 00h, 00h, 00h
		db	 0Dh, 13h,0A2h,0AAh,0AAh,0A7h
		db	0AAh,0A9h, 01h, 07h,0A5h,0AAh
		db	0A7h,0AAh,0AAh,0AAh, 00h, 00h
		db	 00h, 00h,0ABh, 1Ch,0ABh,0ACh
		db	 00h, 00h, 00h, 00h,0ABh,0ABh
		db	0ABh,0ABh, 00h, 00h, 00h, 00h
		db	 1Ch,0ACh,0ABh, 1Ch, 00h, 00h
		db	 00h, 00h,0ABh,0ABh,0ABh,0ABh
		db	 00h, 00h, 00h, 00h,0ABh,0ABh
		db	0ACh,0ABh, 00h, 00h, 00h, 00h
		db	0ABh, 1Ch,0ABh,0ACh, 00h, 00h
		db	 00h, 00h,0ABh,0ABh, 1Ch,0ABh
		db	 00h, 00h, 00h, 00h,0ACh,0ABh
		db	0ABh,0ABh, 00h, 0Dh, 13h,0A2h
		db	0AAh,0A7h,0AAh,0AAh, 00h, 01h
		db	 07h,0AAh,0AAh,0AAh,0AAh,0AAh
		db	 00h, 00h, 00h, 00h,0ABh,0ABh
		db	0ABh,0ACh, 00h, 00h, 00h, 00h
		db	0ACh,0ABh,0ABh,0ABh, 00h, 00h
		db	 00h, 00h,0ABh,0ABh, 1Ch,0ABh
		db	 00h, 00h, 00h, 00h,0ABh,0ACh
		db	0ABh,0ABh, 00h, 00h, 00h, 00h
		db	0ABh,0ABh,0ABh,0ABh, 00h, 00h
		db	 00h, 00h,0ABh,0ABh,0ABh,0ABh
		db	 00h, 00h, 00h, 00h,0ABh,0ABh
		db	0ABh,0ACh, 00h, 00h, 00h, 00h
		db	0ACh,0ABh,0ABh, 1Ch, 0Dh, 13h
		db	0A4h,0AAh,0A6h,0A6h, 1Bh,0A9h
		db	 01h, 07h

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_44:
		cmpsb				; Cmp [si] to es:[di]
		test	al,0A9h
		cmpsb				; Cmp [si] to es:[di]
		cmpsb				; Cmp [si] to es:[di]
		sbb	ax,[bx+si]
		db	0
data_293	db	0			; Data table (indexed access)
data_294	db	0			; Data table (indexed access)
		db	21 dup (0)
		db	 46h,0B0h,0B1h,0B1h,0B2h,0B1h
		db	0B2h, 3Fh, 47h,0B3h,0B1h,0B3h
		db	0B4h,0B3h,0B3h, 40h, 48h,0B1h
		db	 64h, 62h, 62h, 62h, 62h, 41h
		db	 47h,0B1h, 65h, 62h, 32h, 32h
		db	 32h, 40h, 48h,0B4h, 66h, 62h
		db	 00h, 00h, 00h, 41h, 47h,0B5h
		db	 67h, 62h, 62h, 62h, 62h, 40h
		db	 48h,0B1h,0B2h,0B1h,0B2h,0B2h
		db	0B3h, 41h, 47h,0B1h,0B3h,0B3h
		db	0B1h,0B3h,0B1h, 42h, 49h,0B6h
		db	0B6h,0B6h,0B6h,0B6h,0B6h, 43h
		db	 4Ah,0BAh,0B6h,0B7h,0B6h,0B6h
		db	0B6h, 44h, 4Bh,0B8h,0B6h,0B8h
		db	0B6h,0B8h,0B6h, 45h, 4Ch,0B6h
		db	0B6h,0B6h,0B6h,0B6h,0B6h
		db	16 dup (0)
		db	 0Dh, 13h,0A4h,0A6h,0A9h,0A8h
		db	0A6h,0A7h, 01h, 07h,0A5h,0A7h
		db	 1Bh,0AAh,0AAh,0A6h, 00h, 00h
		db	 00h,0ABh,0ABh,0ABh,0ABh,0ABh
		db	 00h, 00h, 00h,0ABh, 1Ch,0ABh
		db	0ABh,0ABh, 00h, 00h, 00h,0ABh
		db	0ACh,0ABh,0ABh,0ABh, 00h, 00h
		db	 00h,0ABh,0ABh,0ABh,0ABh,0ABh
		db	 00h, 00h, 00h,0ABh,0ABh,0ABh
		db	0ACh, 1Ch, 00h, 00h, 00h,0ABh
		db	 1Ch,0ABh,0ABh,0ABh, 00h, 00h
		db	 00h, 1Ch,0ABh,0ABh,0ACh,0ABh
		db	 00h, 00h, 00h,0ABh,0ACh,0ABh
		db	0ABh,0ABh, 00h, 00h, 00h,0ABh
		db	0ABh,0ABh,0ABh, 1Ch, 00h, 00h
		db	 00h,0ABh,0ABh, 1Ch,0ABh,0ABh
		db	 00h, 00h, 00h,0ABh,0ABh,0ABh
		db	0ABh,0ABh, 0Dh, 13h,0A4h,0A9h
		db	0AAh,0A7h,0AAh,0AAh, 02h, 08h
		db	0A3h, 1Bh,0A9h,0AAh,0AAh,0A8h
		db	 00h, 00h, 00h,0ABh,0ABh,0ABh
		db	0ABh,0ABh, 00h, 00h, 00h,0ABh
		db	0ABh,0ABh,0ABh, 1Ch, 00h, 00h
		db	 00h,0ABh,0ACh,0ABh,0ABh,0ABh
		db	 00h, 00h, 00h,0ABh,0ABh,0ABh
		db	0ACh,0ABh, 00h, 00h, 00h,0ABh
		db	0ABh, 1Ch,0ABh,0ABh, 00h, 00h
		db	 00h,0ABh,0ABh,0ACh,0ABh,0ABh
		db	 00h, 00h, 00h,0ABh,0ABh,0ABh
		db	0ABh,0ABh, 00h, 00h, 00h,0ABh
		db	0ABh,0ABh,0ABh,0ABh, 00h, 00h
		db	 00h,0ABh,0ABh,0ACh,0ACh,0ABh
		db	 00h, 00h, 00h,0ABh,0ABh,0ABh
		db	0ABh,0ABh, 00h, 00h, 00h, 1Ch
		db	0ABh,0ABh, 1Ch,0ABh, 00h, 00h
		db	 00h,0ABh,0ABh,0ABh,0ABh,0ACh
		db	 00h, 00h, 00h,0ABh,0ABh,0ACh
		db	0ABh,0ABh, 00h, 00h, 00h,0ABh
		db	0ABh,0ABh,0ABh, 1Ch, 0Fh, 15h
		db	0A2h,0AAh,0A9h,0A6h,0A8h,0AAh
		db	 03h, 09h,0A3h,0AAh,0A8h,0AAh
		db	0A9h,0A8h, 00h
		db	17 dup (0)
		db	0B0h,0B1h,0B1h,0B1h,0B1h,0B5h
		db	 00h, 00h,0B2h,0B2h,0B3h,0B5h
		db	0B2h,0B2h, 35h, 3Bh,0B4h,0B2h
		db	0B2h,0B2h,0B2h,0B3h, 36h, 3Ch
		db	0B5h,0B2h,0B2h,0B3h,0B2h,0B2h
		db	 37h, 3Ch,0B2h, 70h, 2Fh, 31h
		db	 31h, 31h, 36h, 3Ch,0B3h, 71h
		db	 30h, 32h, 32h, 32h, 37h, 3Ch
		db	0B2h, 72h, 30h, 00h, 00h, 00h
		db	 37h, 3Ch,0B2h, 73h, 2Fh, 31h
		db	 31h, 31h, 36h, 3Ch,0B2h,0B2h
		db	0B2h,0B2h,0B2h,0B2h, 36h, 3Ch
		db	0B2h,0B2h,0B2h,0B4h,0B2h,0B2h
		db	 36h, 3Ch

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_45:
		mov	dl,0B2h
		mov	ah,0B2h
		mov	dl,0B3h
		aaa				; Ascii adjust
		cmp	ax,0B2B2h
		mov	ch,0B2h
		mov	dl,0B2h
		cmp	byte ptr ds:[0B9B6h],bh
		mov	cx,0B8B7h
		mov	cx,3E39h
		mov	bh,0B6h
		mov	cx,0B6B8h
		mov	bh,3Ah			; ':'
		cmp	di,word ptr ds:[0B8B9h][bx+si]
		mov	cx,0B8B9h
		add	[bx+si],al
		mov	bh,0B9h
		mov	bh,0B6h
		mov	bh,0B9h
		add	[bx+si],al
		mov	dx,0B8B9h
		mov	bh,0B8h
		mov	cx,0
		db	 00h, 00h, 00h, 00h, 00h, 00h
		db	 12h, 18h,0A2h,0AAh,0A7h,0AAh
		db	0A8h,0A6h, 01h, 07h,0A5h,0A8h
		db	 1Bh,0A9h,0AAh,0A7h, 00h, 00h
		db	 00h, 00h,0ABh,0ABh,0ABh,0ABh
		db	 00h, 00h, 00h, 00h,0ABh,0ABh
		db	0ACh,0ABh, 00h, 00h, 00h, 00h
		db	0ABh,0ABh,0ABh, 1Ch, 00h, 00h
		db	 00h, 00h,0ACh,0ABh,0ABh,0ABh
		db	 00h, 00h, 00h, 00h,0ABh, 1Ch
		db	0ABh,0ACh, 00h, 00h, 00h, 00h
		db	0ABh,0ABh,0ABh,0ABh, 00h, 00h
		db	 00h, 00h,0ABh,0ABh,0ACh,0ABh
		db	 00h, 00h, 00h, 00h,0ABh,0ABh
		db	 1Ch,0ABh, 00h, 00h, 00h, 00h
		db	0ACh,0ABh
data_297	db	0ABh
		db	0ABh, 00h, 00h, 00h, 00h,0ABh
		db	0ABh,0ACh,0ABh, 00h, 00h, 00h
		db	 00h,0ABh, 1Ch,0ABh, 1Ch, 00h
		db	 0Dh, 13h,0A4h,0A6h,0A9h,0A8h
		db	0A6h, 00h, 01h, 07h,0A3h,0A8h
		db	0A8h,0A6h,0A8h, 00h
		db	24 dup (0)
		db	 46h, 9Eh, 9Eh, 9Eh, 9Eh, 9Eh
		db	 9Eh, 3Fh, 47h, 9Fh, 9Eh, 9Eh
		db	 9Eh, 9Eh, 9Eh, 40h, 48h, 9Eh
		db	 9Eh, 9Fh, 9Eh, 9Eh, 9Eh, 41h
		db	 47h, 9Eh, 9Eh, 62h, 62h, 62h
		db	 62h, 40h, 48h, 9Eh, 9Eh, 62h
		db	 32h, 32h, 32h, 41h, 47h, 9Fh
		db	 9Eh, 62h, 00h, 00h, 00h, 40h
		db	 48h, 9Eh, 9Eh, 62h, 62h, 62h
		db	 62h, 41h, 47h, 9Eh, 9Eh, 9Eh
		db	 9Eh, 9Eh, 9Fh, 40h, 48h, 9Eh
		db	 9Eh, 9Eh, 9Fh, 9Eh, 9Eh, 41h
		db	 47h, 9Eh, 9Eh, 9Eh, 9Eh, 9Eh
		db	 9Eh, 40h, 49h,0A0h,0A0h,0A0h
		db	0A0h,0A0h,0A1h, 41h, 4Ah,0A0h
		db	0A0h,0A1h,0A0h,0A0h,0A0h, 44h
		db	 4Bh,0A0h,0A0h,0A0h,0A0h,0A1h
		db	0A0h, 45h, 4Ch,0A0h,0A1h,0A0h
		db	0A0h,0A0h,0A0h
		db	24 dup (0)
		db	 0Dh, 13h,0A2h,0AAh,0A8h,0AAh
		db	0A7h,0AAh, 01h, 07h,0A5h,0A9h
		db	0AAh,0A7h,0AAh,0AAh, 00h, 00h
		db	 00h,0ABh,0ABh,0ABh,0ABh,0ABh
		db	 00h, 00h, 00h, 1Ch,0ABh,0ABh
		db	0ABh
data_300	dw	offset sub_33
		db	 00h, 00h, 1Ch,0ACh,0ABh,0ABh
		db	0ABh, 00h, 00h, 00h,0ABh,0ABh

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_20:
		stosw				; Store ax to es:[di]
		sbb	al,0ABh
		add	[bx+si],al
		add	byte ptr ss:[0ACABh][bp+di],ch
		stosw				; Store ax to es:[di]
		stosw				; Store ax to es:[di]
		add	[bx+si],al
		add	byte ptr ds:[0ACABh][si],ch
		stosw				; Store ax to es:[di]
		stosw				; Store ax to es:[di]
		add	[bx+si],al
		add	byte ptr ss:[0ABABh][bp+di],ch
		stosw				; Store ax to es:[di]
		lodsb				; String [si] to al
		add	[bx+si],al
		add	ss:data_293[bp+di],ch
		stosw				; Store ax to es:[di]
		stosw				; Store ax to es:[di]
		add	[bx+si],al
		add	[si],bl
		stosw				; Store ax to es:[di]
		stosw				; Store ax to es:[di]
		stosw				; Store ax to es:[di]
		lodsb				; String [si] to al
		add	[bx+si],al
		add	byte ptr ss:[0ABACh][bp+di],ch
		stosw				; Store ax to es:[di]
		lodsb				; String [si] to al
		add	[bx+si],al
		add	byte ptr ss:[0ABACh][bp+di],ch
		stosw				; Store ax to es:[di]
		stosw				; Store ax to es:[di]
		add	[bx+si],al
		add	byte ptr ss:[0ABABh][bp+di],ch
		sbb	al,0ABh
		add	[bx+si],al
		add	byte ptr ss:[0ABABh][bp+di],ch
		stosw				; Store ax to es:[di]
		stosw				; Store ax to es:[di]
		adc	bl,[bx+si]
		mov	byte ptr ds:[0A6A6h],al
		stosb				; Store al to es:[di]
		test	al,0A6h
		add	[bx],ax
		mov	word ptr ds:[0A6AAh],ax
		test	al,0A6h
		stosb				; Store al to es:[di]
		add	[bx+si],al
		add	byte ptr ss:[0AC1Ch][bp+di],ch
		stosw				; Store ax to es:[di]
		stosw				; Store ax to es:[di]
		add	[bx+si],al
		add	byte ptr ss:[0ABABh][bp+di],ch
		stosw				; Store ax to es:[di]
		stosw				; Store ax to es:[di]
		add	[bx+si],al
		add	byte ptr ds:[0ABABh][si],ch
		stosw				; Store ax to es:[di]
		stosw				; Store ax to es:[di]
		add	[bx+si],al
		add	ss:data_293[bp+di],ch
		stosw				; Store ax to es:[di]
		lodsb				; String [si] to al
		add	[bx+si],al
		add	byte ptr ss:[0ABABh][bp+di],ch
		stosw				; Store ax to es:[di]
		stosw				; Store ax to es:[di]
		add	[bx+si],al
		add	byte ptr ss:[0ACABh][bp+di],ch
		stosw				; Store ax to es:[di]
		sbb	al,0
		add	[bx+si],al
		sbb	al,0ABh
		stosw				; Store ax to es:[di]
		stosw				; Store ax to es:[di]
		stosw				; Store ax to es:[di]
		add	[bx+si],al
		add	byte ptr ss:[0ABABh][bp+di],ch
		lodsb				; String [si] to al
		stosw				; Store ax to es:[di]
		add	[bx+si],al
		add	byte ptr ss:[0ABABh][bp+di],ch
		stosw				; Store ax to es:[di]
		stosw				; Store ax to es:[di]
		add	[bx+si],al
		add	ss:data_294[bp+di],ch
		stosw				; Store ax to es:[di]
		stosw				; Store ax to es:[di]
		add	[bx+si],al
		add	byte ptr ss:[0ABACh][bp+di],ch
		lodsb				; String [si] to al
		stosw				; Store ax to es:[di]
		add	[bx+si],al
		add	byte ptr ss:[0ABABh][bp+di],ch
		stosw				; Store ax to es:[di]
		sbb	al,0
		add	[bx+si],al
		stosw				; Store ax to es:[di]
		stosw				; Store ax to es:[di]
		stosw				; Store ax to es:[di]
		stosw				; Store ax to es:[di]
		stosw				; Store ax to es:[di]
		adc	bl,[bx+si]
		mov	byte ptr ds:[0A6A7h],al
		test	al,0A7h
		stosb				; Store al to es:[di]
		add	[bx],ax
		movsw				; Mov [si] to es:[di]
		stosb				; Store al to es:[di]
		cmpsw				; Cmp [si] to es:[di]
		stosb				; Store al to es:[di]
		stosb				; Store al to es:[di]
		cmpsw				; Cmp [si] to es:[di]
		db	17 dup (0)
		db	'5;', 27h, 27h, 27h, 27h, 27h, 0
		db	'6<', 27h, '(', 27h, 27h, 27h, 0
		db	'6<', 27h, 27h, 27h, 27h, 27h, 0
		db	'6<', 27h, 27h, '(', 27h, 27h, 0	; Data table (indexed access)
		db	 36h, 3Ch, 27h, 27h, 27h, 27h
		db	 28h, 00h, 36h, 3Ch, 68h, 2Fh
		db	 31h, 31h, 31h, 00h, 36h, 3Ch
		db	 69h, 30h, 32h, 32h, 32h, 00h
		db	 36h, 3Ch, 6Ah, 30h, 00h, 00h
		db	 00h, 00h
		db	 36h, 3Ch, 6Bh
		db	'/111', 0
		db	'6<(', 27h, 27h, 27h, 27h, 0
		db	'6<', 27h, 27h, 27h, 27h, '(', 0
		db	'6<', 27h, '(', 27h, 27h, 27h, 0
		db	'6<', 27h, 27h, 27h, '(', 27h, 0
		db	'7=(', 27h, 27h, 27h, 27h, 0
		db	'9>*))))', 0
		db	'9>))*)*', 0
		db	'9>)*)))', 0
		db	'9>)))*)', 0
		db	':;*))))'
		db	18 dup (0)
		db	0A2h,0A8h,0A9h,0A7h,0A7h,0AAh
		db	 00h, 00h,0A3h,0AAh,0AAh,0A7h
		db	0A8h,0A9h, 00h, 00h, 00h,0ABh
		db	0ABh,0ABh,0ABh,0ABh, 00h, 00h
		db	 00h,0ABh,0ABh,0ABh, 1Ch,0ABh
		db	 00h, 00h, 00h,0ABh,0ACh,0ABh
		db	0ABh,0ABh, 00h, 00h, 00h,0ABh
		db	0ACh,0ABh,0ABh, 1Ch, 00h, 00h
		db	 00h,0ABh,0ABh, 1Ch,0ABh,0ABh
		db	 00h, 00h, 00h,0ABh,0ABh,0ABh
		db	0ABh,0ABh, 00h, 00h, 00h, 1Ch
		db	0ABh,0ABh,0ACh,0ABh, 00h, 00h
		db	 00h,0ABh,0ABh,0ABh,0ACh,0ABh
		db	 00h, 00h, 00h,0ABh,0ACh,0ABh
		db	 1Ch,0ABh, 00h, 00h, 00h,0ABh
		db	0ABh,0ABh,0ABh,0ACh, 00h, 00h
		db	 00h,0ABh,0ABh, 1Ch,0ABh,0ABh
		db	 0Dh, 13h,0A2h,0A6h,0A8h,0A7h
		db	0A7h,0A6h, 01h, 07h,0A3h,0AAh
		db	0A8h,0A6h,0AAh,0A8h, 00h, 00h
		db	 00h,0ABh,0ABh,0ABh,0ABh,0ABh
		db	 00h, 00h, 00h, 1Ch,0ABh,0ABh
		db	0ABh,0ABh, 00h, 00h, 00h,0ABh
		db	0ACh,0ABh,0ABh,0ABh, 00h, 00h
		db	 00h,0ABh,0ABh,0ABh, 1Ch,0ABh
		db	 00h, 00h, 00h,0ABh,0ABh,0ABh
		db	0ABh,0ABh, 00h, 00h, 00h,0ABh
		db	0ABh,0ABh,0ABh, 1Ch, 00h, 00h
		db	 00h,0ABh,0ABh, 1Ch,0ABh,0ABh
		db	 00h, 00h, 00h,0ABh,0ABh,0ABh
		db	0ABh,0ABh, 00h, 00h, 00h,0ABh
		db	0ACh,0ABh,0ABh,0ABh, 00h, 00h
		db	 00h,0ABh,0ABh,0ABh,0ABh,0ACh
		db	 00h, 00h, 00h,0ABh,0ABh,0ABh
		db	0ABh, 1Ch, 12h, 18h,0A2h,0A8h
		db	0A6h,0A6h,0A7h,0A8h, 06h, 0Ch
		db	0A5h,0A9h,0A8h,0A8h,0A7h,0A6h
		db	10 dup (0)
		db	 59h, 00h, 00h, 00h, 00h, 00h
		db	 00h, 1Dh, 5Ah, 5Dh, 5Fh, 5Fh
		db	 5Fh, 5Fh, 1Dh, 1Eh, 5Ah, 5Dh
		db	 5Fh, 5Fh, 5Fh, 5Fh, 1Eh, 1Eh
		db	 5Ah, 5Dh, 5Fh, 5Fh, 5Fh, 5Fh
		db	 1Eh, 1Eh, 5Ah, 5Dh, 5Fh, 5Fh
		db	 5Fh, 5Fh, 1Eh, 1Eh, 5Ah, 5Dh
		db	 6Ch, 5Fh, 5Fh, 5Fh, 1Eh, 1Eh
		db	 5Ah, 5Dh, 6Dh, 61h, 61h, 61h
		db	 1Eh, 1Eh, 5Ah, 5Dh, 6Eh, 00h
		db	 00h, 00h, 1Eh, 1Eh, 5Ah, 5Dh
		db	 6Fh, 5Fh, 5Fh, 5Fh, 1Eh, 1Eh
		db	 5Ah, 5Dh, 5Fh, 5Fh, 5Fh, 5Fh
		db	 1Eh, 1Eh, 5Ah, 5Dh, 5Fh, 5Fh
		db	 5Fh, 5Fh, 1Eh, 1Eh, 5Ah, 5Dh
		db	 5Fh, 5Fh, 5Fh, 5Fh, 1Eh, 1Eh
		db	'Z]____cc[^````Pc[^````'
		db	 00h, 50h, 5Bh, 5Eh, 60h, 60h
		db	 60h, 60h, 00h, 00h
		db	5Ch
		db	29 dup (0)
		db	 0Dh, 13h,0A2h,0A7h,0AAh,0A8h
		db	0A7h,0A9h, 03h, 09h,0A3h,0AAh
		db	0A7h,0A8h,0AAh,0AAh
		db	33 dup (0)
		db	 79h, 80h, 00h, 00h, 00h, 00h
		db	 00h, 00h, 7Ah, 81h, 84h, 85h
		db	 85h, 85h, 87h, 74h, 7Bh, 82h
		db	 00h, 00h, 00h, 00h, 00h, 75h
		db	 7Ch, 83h, 00h, 84h, 86h, 85h
		db	 87h, 74h, 7Bh, 82h, 00h, 00h
		db	 00h, 00h, 00h, 75h, 7Ch, 83h
		db	 00h, 00h, 84h, 86h, 87h, 74h
		db	 7Bh, 82h, 00h, 00h, 00h, 00h
		db	 00h, 75h, 7Ch, 83h, 00h, 00h
		db	 00h, 84h, 88h, 74h, 7Bh, 82h
		db	 00h, 00h, 00h, 00h, 00h, 75h
		db	 7Ch, 83h, 00h, 00h, 00h, 00h
		db	 00h, 74h, 7Dh, 82h, 00h, 00h
		db	 00h, 00h, 00h, 76h, 7Eh, 83h
		db	 00h, 00h, 00h, 00h, 00h, 77h
		db	 7Fh, 82h, 00h, 00h, 00h, 00h
		db	 00h, 78h, 7Fh, 83h, 00h, 00h
		db	 00h, 00h, 00h, 7Ch, 00h, 82h
		db	 00h, 00h
		db	35 dup (0)
		db	 1Ch, 00h,0DCh, 00h, 06h, 01h
		db	0FFh, 01h, 02h, 1Ah,0AFh, 00h
		db	0Ah, 'Tumba Town'
		db	 81h, 00h,0FFh,0FFh, 80h, 01h
		db	0FFh,0FFh, 2Ch, 00h, 03h, 5Dh
		db	 00h, 07h, 80h, 00h, 02h,0B5h
		db	 00h, 06h,0E7h, 00h, 04h,0FFh
		db	0FFh, 5Eh, 00h, 0Bh, 01h, 0Bh
		db	 83h, 00h, 0Ah, 00h, 0Bh, 22h
		db	 00h, 02h,0D3h,0CFh, 08h,0DBh
		db	0CFh, 09h,0FFh,0FFh, 24h, 00h
		db	 80h,0EBh,0CFh, 0Ah,0FFh,0FFh
		db	 24h, 00h, 02h,0EBh,0CFh, 0Bh
		db	0FFh,0FFh,0FFh,0FFh,0F6h,0C8h
		db	 78h,0C9h,0F9h,0C9h,0D5h,0CAh
		db	 89h,0CBh, 1Bh,0CCh,0F3h,0CCh
		db	0A7h,0CDh
		db	61h
data_312	dw	0E4CEh			; Data table (indexed access)
		db	0CEh, 47h,0CFh,0A0h,0CFh, 42h
data_313	db	'rave sir, I hope you\ve come to '
		db	'help this pitiful town. It was t'
		db	'he site of a quiet graveyard bef'
		db	'ore it was decimated by Jashiin.'
		db	0FFh, 49h, 66h
		db	' you\re going back into the cave'
		db	'rns, beware the Gelroid. It\s a '
		db	'blue gelatinous substance which '
		db	'will suck the life out of you.'
		db	0FFh, 48h, 61h
		db	've you heard of Percel the shoem'
		db	'aker from Herada Town? He made R'
		db	'uzeria shoes for walking on ice '
		db	'and Pirika shoes for getting by '
		db	'Gelroid, thorns and fire. Those '
		db	'are '
data_317	dw	6874h			; Data table (indexed access)
		db	65h

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_21:
		and	[bx+6Eh],ch
		db	'ly two I know of'

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_22:
		sub	al,20h			; ' '
		db	62h
		db	'ut there may have been more.'
		db	0FFh, 4Dh, 61h
		db	'y I confide in you? I was once a'
		db	' spy for Jashiin. I can tell you'
		db	' that the Pirika shoes were put '
		db	'into a box and thrown away somew'
		db	'here in the Rotten land. You may'
		db	' never find them.'
		db	0FFh, 4Fh, 6Eh
data_320	db	'e third of this region is covere'
		db	'd with deadly Gelroid. If you\re'
		db	' going to continue through the l'
		db	'abyrinths, ordinary shoes will n'
		db	'ot protect you.'
		db	0FFh, 54h, 68h
		db	'ere'
data_324	dw	6920h			; Data table (indexed access)
		db	 73h, 20h, 61h, 20h, 63h, 65h
data_325	dw	7472h			; Data table (indexed access)
		db	'ain place in the caverns where y'
		db	'ou can pass th'
data_326	dw	6F72h			; Data table (indexed access)
		db	'ugh a wall, but only in one dire'
		db	'ction. My grandfather told me th'
		db	'e p'
data_327	dw	616Ch			; Data table (indexed access)
		db	'ce is near '
		db	'a green '
		db	'stone slab. There ma'	; Data table (indexed access)
		db	'y be other places, but I couldn\'	; Data table (indexed access)
		db	't say where.'
		db	0FFh, 48h, 61h
data_331	db	've you seen the strange, bluish-'
		db	'white people in the caverns? The'
		db	'y were infected by the Gelroid a'
		db	'nd now they wander the land like'
		db	' the living dead. To kill them, '
		db	'aim for the head.'
		db	0FFh, 49h, 74h
		db	' seems that Jashiin has stolen m'
		db	'any things. The weapon maker is '
		db	'searching fo'
data_337	dw	2072h
		db	'his family crest, the Crest of G'
		db	'lory. If you find it in the cave'
		db	'rns, he\ll be most happy to have'
		db	' it back.'
		db	0FFh, 54h, 68h
data_338	db	'ose are the Pirika shoes. Go qui'
		db	'ckly to the abode of Jashiin and'
		db	' finish him off. We will pray fo'
		db	'r your success and swift return.'
		db	0FFh, 41h, 68h
data_340	db	', the Pirika shoes! Forgive me, '
		db	'brave sir. I had no choice. I wo'
		db	'n\t do that kind of thing again.'
		db	0FFh, 49h, 73h
		db	'n\t that the Crest of Glory? Ple'
		db	'ase take it quickly to the owner'
		db	' of the weapons store.'
		db	0FFh
		db	'. . . . . .'
		db	0FFh, 1Ah, 00h, 81h,0A7h, 01h
		db	 03h, 00h, 00h,0CEh, 00h, 81h
		db	0ABh, 01h, 06h, 00h, 06h, 35h
		db	 00h, 82h, 00h, 00h, 01h, 00h
		db	 01h, 47h, 00h, 83h,0ABh, 00h
		db	 02h, 00h, 04h, 56h, 00h, 82h
		db	 00h, 01h, 03h, 00h, 02h, 7Ah
		db	 00h, 83h, 00h, 01h, 05h, 00h
		db	 03h,0A4h, 00h, 84h,0ABh, 00h
		db	 02h, 00h, 05h,0C8h, 00h, 03h
		db	0ABh, 00h, 01h, 00h, 07h,0FFh
		db	0FFh, 36h, 0Eh, 00h, 00h,0D3h
		db	0C6h,0D7h, 00h,0D8h,0C6h, 06h
		db	0E7h,0C6h,0EFh,0C6h, 00h,0C7h
		db	 17h,0C7h,0D4h,0CDh,0CFh,0C6h
		db	 5Ch, 00h, 0Ah,0C7h, 00h, 00h
		db	 00h
		db	29 dup (0)
		db	 89h, 8Dh, 82h, 00h, 00h, 00h
		db	 00h, 00h, 8Ah, 8Eh, 83h, 00h
		db	 00h, 00h, 00h, 00h, 74h, 7Bh
		db	 82h, 00h, 00h, 00h, 00h, 00h
		db	 75h, 7Ch, 83h, 00h, 00h, 00h
		db	 00h, 00h, 74h, 7Bh, 82h, 00h
		db	 00h, 00h, 95h, 98h, 75h, 7Ch
		db	 83h, 00h, 00h, 00h, 00h, 00h
		db	 74h, 7Bh, 82h, 00h, 00h, 95h
		db	 97h, 99h, 75h, 7Ch, 83h, 00h
		db	 00h, 00h, 00h, 00h, 8Bh, 8Fh
		db	 82h, 00h, 95h, 97h, 96h, 99h
		db	 8Ch, 90h, 83h, 00h, 00h, 00h
		db	 00h, 00h, 00h, 91h, 93h, 95h
		db	 96h, 96h, 96h, 99h, 00h, 92h
		db	 94h, 00h
		db	28 dup (0)
		db	 0Dh, 13h,0ADh,0AFh,0AFh,0ADh
		db	0AFh,0AFh, 01h, 07h,0AEh,0AFh
		db	0AFh,0AEh,0AFh,0AFh, 00h, 00h
		db	 00h, 00h, 1Ch,0BBh,0BBh,0BBh
		db	 00h, 00h, 00h, 00h,0BBh,0BBh
		db	0BBh, 1Ch, 00h, 00h, 00h, 00h
		db	0BCh,0BBh,0BBh,0BCh, 00h, 00h
		db	 00h, 00h,0BBh, 1Ch,0BBh,0BBh
		db	 00h, 00h, 00h, 00h,0BBh,0BCh
		db	0BBh, 1Ch, 00h, 00h, 00h, 00h
		db	0BBh,0BBh,0BBh,0BBh, 00h, 00h
		db	 00h, 00h, 1Ch,0BBh, 1Ch,0BCh
		db	 00h, 00h, 00h, 00h,0BBh,0BBh
		db	0BBh,0BBh, 00h, 12h, 18h,0ADh
		db	0AFh,0AFh,0AFh,0AFh, 00h, 06h
		db	 0Ch,0AEh,0AFh,0AFh,0AFh,0AFh
		db	 00h, 00h, 00h, 00h,0BBh,0BBh
		db	 1Ch,0BBh, 00h, 00h, 00h, 00h
		db	0BCh,0BBh,0BBh,0BCh, 00h, 00h
		db	 00h, 00h, 1Ch,0BBh,0BBh,0BBh
		db	 00h, 00h, 00h, 00h,0BBh,0BBh
		db	0BBh, 1Ch, 00h, 00h, 00h, 00h
		db	 1Ch,0BBh,0BCh,0BBh, 00h, 00h
		db	 00h, 00h,0BBh,0BBh,0BBh,0BBh
		db	 00h, 00h, 00h, 00h,0BCh,0BBh
		db	0BBh, 1Ch, 00h, 00h, 00h, 00h
		db	0BBh,0BBh,0BBh,0BBh, 0Eh, 14h
		db	0ADh,0AFh,0AFh,0ADh,0AFh,0AFh
		db	 02h, 08h,0AEh,0AFh,0AFh,0AEh
		db	0AFh,0AFh
		db	10 dup (0)
		db	 46h,0BDh,0BDh,0BDh,0BDh,0BDh
		db	 00h, 3Fh, 47h, 9Eh,0BDh,0BDh
		db	0BDh,0BEh, 00h, 40h, 48h,0BDh
		db	0BDh,0BEh,0BDh,0BDh, 00h, 41h
		db	 47h,0BEh,0BDh,0BDh,0BDh, 9Eh
		db	 00h, 40h, 48h, 64h, 2Fh, 31h
		db	 31h, 31h, 00h, 41h, 47h, 65h
		db	 30h, 32h, 32h, 32h, 00h, 40h
		db	 48h, 66h, 30h, 00h, 00h, 00h
		db	 00h, 41h, 47h, 67h, 2Fh, 31h
		db	 31h, 31h, 00h, 40h, 48h,0BDh
		db	0BDh,0BDh,0BDh,0BDh, 00h, 41h
		db	 47h,0BDh, 9Eh,0BEh,0BDh,0BDh
		db	 00h, 40h, 48h,0BDh,0BDh,0BDh
		db	0BDh,0BDh, 00h, 41h, 47h,0BEh
		db	0BDh,0BDh,0BEh,0BDh, 00h, 42h
		db	 49h,0A0h,0A0h,0A0h,0A0h,0A0h
		db	 00h, 43h, 4Ah,0A0h,0A0h,0A0h
		db	0A1h,0A0h, 00h, 44h, 4Bh,0A1h
		db	0A0h,0A0h,0A0h,0A0h, 00h, 45h
		db	 4Ch,0A0h,0A0h,0A1h,0A0h,0A0h
		db	 00h
		db	15 dup (0)
		db	 0Dh, 13h,0ADh,0AFh,0AFh,0ADh
		db	0AFh,0AFh, 01h, 07h,0AEh,0AFh
		db	0AFh,0AEh,0AFh,0AFh
		db	18 dup (0)
		db	 20h, 1Fh, 1Fh, 1Fh, 20h, 1Fh
		db	 35h, 3Bh, 1Fh, 20h, 1Fh, 20h
		db	 1Fh, 1Fh, 36h, 3Ch, 1Fh, 1Fh
		db	 20h, 21h, 1Fh, 21h, 36h, 3Ch
		db	 1Fh, 1Fh, 1Fh, 20h, 1Fh, 21h
		db	 36h, 3Ch, 1Fh, 20h, 1Fh, 21h
		db	 1Fh, 1Fh, 36h, 3Ch, 1Fh, 70h
		db	 62h, 62h, 62h, 62h, 36h, 3Ch
		db	 1Fh, 71h, 62h, 61h, 61h, 61h
		db	 36h, 3Ch, 1Fh, 72h, 62h, 00h
		db	 00h, 00h, 36h, 3Ch, 1Fh, 73h
		db	 62h, 62h, 62h, 62h, 36h, 3Ch
		db	 1Fh, 20h, 21h, 21h, 1Fh, 1Fh
		db	 36h, 3Ch, 1Fh, 1Fh, 1Fh, 20h
		db	 21h, 1Fh, 37h, 3Ch, 1Fh, 20h
		db	 21h, 21h, 1Fh, 20h, 38h, 3Dh
		db	 1Fh, 1Fh, 1Fh, 1Fh, 20h, 1Fh
		db	'9>!!! ! 9>"""""":;""""""'
		db	0, 0
		db	 22h, 22h, 22h, 22h, 22h, 22h
		db	16 dup (0)
		db	 0Dh, 13h,0ADh,0AFh,0AFh,0ADh
		db	0AFh,0AFh, 01h, 07h,0AEh,0AFh
		db	0AFh,0AEh,0AFh,0AFh
		db	26 dup (0)
		db	 59h, 00h, 00h, 00h, 00h, 00h
		db	 00h, 1Dh, 5Ah, 5Dh, 5Fh, 5Fh
		db	 5Fh, 5Fh, 1Dh, 1Eh, 5Ah, 5Dh
		db	 5Fh, 5Fh, 5Fh, 5Fh, 1Eh, 1Eh
		db	 5Ah, 5Dh, 5Fh, 5Fh, 5Fh, 5Fh
		db	 1Eh, 1Eh, 5Ah, 5Dh, 5Fh, 61h
		db	 61h, 61h, 1Eh, 1Eh, 5Ah, 5Dh
		db	 5Fh, 00h, 00h, 00h, 1Eh, 1Eh
		db	 5Ah, 5Dh, 5Fh, 5Fh, 5Fh, 5Fh
		db	 1Eh, 1Eh, 5Ah, 5Dh, 5Fh, 5Fh
		db	 5Fh, 5Fh, 1Eh, 1Eh, 5Ah, 5Dh
		db	 5Fh, 5Fh, 5Fh, 5Fh, 1Eh, 1Eh
		db	'Z]____cc[^````cc[^````cc[^````Pc'
		db	'[^````', 0
		db	'P[^````'
		db	 00h, 00h, 5Ch
		db	37 dup (0)
		db	 0Eh, 14h,0ADh,0AFh,0AFh,0ADh
		db	0AFh,0AFh, 01h, 07h,0AEh,0AFh
		db	0AFh,0AEh,0AFh,0AFh, 00h, 00h
		db	 00h,0BBh, 1Ch,0BBh,0BBh,0BCh
		db	 00h, 00h, 00h,0BCh,0BBh,0BBh
		db	0BBh,0BBh, 00h, 00h, 00h,0BBh
		db	0BBh,0BCh, 1Ch,0BBh, 00h, 00h
		db	 00h,0BBh, 1Ch,0BBh,0BBh, 1Ch
		db	 00h, 00h, 00h,0BCh,0BBh,0BBh
		db	 1Ch,0BBh, 00h, 00h, 00h,0BBh
		db	0BBh,0BCh,0BBh,0BBh, 00h, 00h
		db	 00h,0BBh, 1Ch,0BBh, 1Ch,0BCh
		db	 00h, 00h, 00h, 1Ch,0BBh,0BBh
		db	0BBh,0BBh, 00h, 00h, 00h,0BBh
		db	0BCh,0BBh,0BBh,0BBh, 00h, 00h
		db	 00h,0BBh,0BBh,0BBh, 1Ch,0BCh
		db	 12h, 18h,0ADh,0AFh,0AFh,0ADh
		db	0AFh,0AFh, 02h, 08h,0AEh,0AFh
		db	0AFh,0AEh,0AFh,0AFh
		db	17 dup (0)
		db	'F', 27h, 27h, 27h, 27h, 27h, 27h
		db	'?G(', 27h, 27h, 27h, 27h, 27h, '@'
		db	'H', 27h, 27h, '(', 27h, 27h, 27h
		db	'AG', 27h, 'hbbbb@H', 27h, 'ib222'
		db	'AG(jb'
		db	 00h, 00h, 00h, 40h, 48h
data_356	db	27h, 'kbbbbAG', 27h, 27h, 27h, 27h
		db	27h, '(@H', 27h, 27h, '(', 27h, 27h
		db	27h, 'AG', 27h, 27h, 27h, 27h, 27h
		db	27h, 'BI))))))CJ))*)*)DK))))))EL)'
		db	')))))'
		db	24 dup (0)
		db	 0Dh, 13h,0ADh,0AFh,0AFh,0ADh
		db	0AFh,0AFh, 01h, 07h,0AEh,0AFh
		db	0AFh,0AEh,0AFh,0AFh
		db	18 dup (0)
		db	 4Dh, 4Eh, 4Eh, 4Fh, 4Eh, 4Eh
		db	 00h, 00h, 4Eh, 4Fh, 52h, 4Fh
		db	 4Fh, 52h, 00h
data_360	dw	5100h
data_361	dw	offset sub_59		; Data table (indexed access)
data_362	dw	offset sub_58		; Data table (indexed access)
		db	 53h, 00h, 00h, 52h, 52h, 2Fh
data_363	dw	offset sub_50		; Data table (indexed access)
		db	 31h, 00h, 00h, 52h, 53h, 30h
		db	 2Ch, 2Dh, 2Eh, 00h, 00h
		db	 51h, 4Fh, 30h
data_364	dw	2E2Bh
data_365	dw	2Eh
data_366	dw	offset sub_57		; Data table (indexed access)
		db	 4Fh, 2Fh
data_367	dw	offset sub_50
		db	 31h, 00h, 00h, 52h
data_368	dw	offset loc_34
data_369	dw	offset sub_56
		db	 4Fh, 00h, 00h, 52h, 53h, 4Fh
		db	 52h, 51h, 52h, 00h, 00h, 52h
		db	 4Fh, 52h, 4Fh, 4Fh, 53h, 00h
		db	 00h, 54h, 54h, 55h, 54h, 55h
		db	 54h, 00h, 00h, 54h, 57h, 56h
		db	 57h, 56h, 55h, 00h, 00h
		db	 58h, 54h, 54h, 54h, 57h, 56h
		db	16 dup (0)
		db	 0Dh, 13h,0ADh,0AFh,0AFh,0ADh
		db	0AFh,0AFh, 01h, 07h,0AEh,0AFh
		db	0AFh,0AEh,0AFh,0AFh, 00h, 00h
		db	 00h,0BBh, 1Ch, 1Ch,0BBh,0BBh
		db	 00h, 00h, 00h,0BBh,0BBh,0BBh
		db	0BBh, 1Ch, 00h, 00h, 00h, 1Ch
		db	0BCh, 1Ch,0BBh,0BBh, 00h, 00h
		db	 00h,0BCh,0BBh,0BBh,0BBh,0BBh
		db	 00h, 00h, 00h,0BBh,0BBh, 1Ch
		db	0BCh,0BBh, 00h, 00h, 00h,0BBh
		db	0BBh,0BBh,0BBh, 1Ch, 00h, 00h
		db	 00h,0BCh,0BBh, 1Ch,0BBh,0BBh
		db	 00h, 00h, 00h, 1Ch,0BBh,0BBh
		db	0BCh,0BBh, 00h, 00h, 00h,0BBh
		db	0BCh,0BBh,0BBh,0BBh, 00h, 00h
		db	 00h,0BBh,0BBh, 1Ch,0BBh,0BBh
		db	 00h, 00h, 00h,0BBh,0BBh,0BBh
		db	0BCh,0BBh, 00h, 00h, 00h, 1Ch
		db	0BBh,0BBh,0BBh,0BBh, 00h, 00h
		db	 00h,0BBh,0BBh,0BBh,0BBh, 1Ch
		db	 0Dh, 13h,0ADh,0AFh,0AFh,0ADh
		db	0AFh,0AFh, 01h, 07h,0AEh,0AFh
		db	0AFh,0AEh,0AFh,0AFh
		db	25 dup (0)
		db	 46h,0B0h,0B1h,0B2h,0B1h,0B2h
		db	0B1h, 3Fh, 47h,0B1h,0B2h,0B1h
		db	0B2h,0B1h,0B1h, 40h, 48h,0B1h
		db	0B1h,0B1h,0B1h,0B2h,0B5h, 41h
		db	 47h,0B2h, 6Ch, 2Fh, 31h, 31h
		db	 31h, 42h, 48h,0B2h
		db	 6Dh, 30h, 32h

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_50:
		xor	dh,[bp+si]
		inc	cx
		inc	di
		mov	dl,6Eh			; 'n'
		xor	[bx+si],al
		add	[bx+si],al
		inc	dx
		dec	ax
		mov	dl,6Fh			; 'o'
		das				; Decimal adjust
		xor	[bx+di],si
		xor	[bx+di+47h],ax
		mov	dl,0B1h
		mov	dl,0B1h
		mov	cl,0B1h
		inc	dx
		dec	ax
		mov	ch,0B1h
		mov	cl,0B1h
		mov	cl,0B1h
		inc	cx
		inc	di
		mov	dl,0B1h
		mov	cl,0B5h
		mov	cl,0B2h
		inc	dx
		dec	cx
		mov	dl,0B2h
		mov	cl,0B1h
		mov	cl,0B1h
		inc	bx
		dec	dx
		mov	dh,0B7h
		mov	dh,0B6h
		mov	dh,0B7h
		inc	sp
		dec	bx
		mov	dh,0B8h
		mov	bh,0B8h
		mov	cx,45B8h
		dec	sp
		mov	dh,0B8h
		popf				; Pop flags
		mov	dh,0B7h
		popf				; Pop flags
		db	16 dup (0)
		db	 0Dh, 13h,0ADh,0AFh,0AFh,0ADh
		db	0AFh,0AFh, 01h, 07h,0AEh,0AFh
		db	0AFh,0AEh,0AFh,0AFh
		db	9 dup (0)
		db	 79h, 80h, 00h, 00h, 00h, 00h
		db	 00h, 00h, 7Ah, 81h, 84h, 85h
		db	 85h, 85h, 87h, 74h, 7Bh, 82h
		db	 00h, 00h, 00h, 00h, 00h, 75h
		db	 7Ch, 83h, 00h, 84h, 86h, 85h
		db	 87h, 74h, 7Bh, 82h, 00h, 00h
		db	 00h, 00h, 00h, 75h, 7Ch, 83h
		db	 00h, 00h, 84h, 86h, 87h, 74h
		db	 7Bh, 82h, 00h, 00h, 00h, 00h
		db	 00h, 75h, 7Ch, 83h, 00h, 00h
		db	 00h, 84h, 88h, 74h, 7Dh, 82h
		db	 00h, 00h, 00h, 00h, 00h, 76h
		db	 7Eh, 83h, 00h, 00h, 00h, 00h
		db	 00h, 77h, 7Fh, 82h, 00h, 00h
		db	 00h, 00h, 00h, 78h, 7Fh, 83h
		db	 00h, 00h
		dw	17 dup (0)		; Data table (indexed access)
		db	 00h, 1Ch, 00h,0ACh, 00h, 06h
data_375	db	0			; Data table (indexed access)
		db	0FFh, 01h, 02h, 19h,0AFh, 02h
		db	 0Bh
		db	'Dorado Town'
		db	 81h, 00h,0FFh,0FFh, 80h, 01h
		db	0FFh,0FFh, 2Fh, 00h, 03h, 46h
		db	 00h, 07h, 5Ch, 00h, 02h, 80h
		db	 00h, 06h,0B8h, 00h, 04h,0FFh
		db	0FFh, 1Fh, 00h, 06h, 01h, 0Fh
		db	 3Bh, 01h, 31h, 00h, 0Eh, 2Ah
		db	 00h, 04h,0FBh,0CDh, 0Ch, 03h
		db	0CEh, 0Dh,0FFh,0FFh,0FFh,0FFh
		db	 33h,0C7h,0C4h,0C7h, 37h,0C8h
		db	0C1h,0C8h, 4Ch,0C9h,0E1h,0C9h
		db	 77h,0CAh,0EBh,0CAh, 5Dh,0CBh
		db	0FCh,0CBh, 60h,0CCh,0D6h,0CCh
		db	 3Dh,0CDh, 7Eh,0CDh
		db	57h
data_376	db	'elcome to Dorado./This was once '
		db	'a thriving merchant town where e'
		db	'veryone lived a peaceful life. J'
		db	'ashiin has reduced it to a sad, '
		db	'desolate place.'
		db	0FFh, 54h, 68h
data_381	db	'e Spirits say that Jashiin retur'
		db	'ned because the people, made sof'
		db	't by peace and prosperity, sank '
		db	'into corruption.'
		db	0FFh, 55h, 73h
		db	'ing the money and treasures of D'
		db	'orado and other places, Jashiin '
		db	'built a place of his own. The Te'
		db	'soro and Burata Caverns are his '
		db	'domain.'
		db	0FFh, 41h, 20h
		db	'word to the wise: The door beari'
		db	'ng the green symbol cannot be op'
		db	'ened. There\s no use trying to f'
		db	'orce it, it absolutely cannot be'
		db	' opened.'
		db	0FFh, 53h, 6Fh
data_385	db	'mewhere in the caverns are the S'
		db	'hirukaano shoes made by the shoe'
		db	'maker Percel. Try to find them; '
		db	'when you wear those shoes you ca'
		db	'n climb any slope.'
		db	0FFh, 53h, 6Fh
data_387	db	'meone who went into the caverns '
		db	'told me the Shirukaano shoes are'
		db	' hidden in Tesoro. Of the four r'
		db	'ooms in the center, they are in '
		db	'the far right room.'
		db	0FFh, 4Fh, 66h
		db	' the four doors in Tesoro, three'
		db	' bear a blue symbol. What was th'
		db	'e other one? For the life of me '
		db	'I can\t remember.'
		db	0FFh, 54h, 68h
data_390	db	'is building wasn\t here before, '
		db	'was it? You can\t put up a build'
		db	'ing like this overnight -- how d'
		db	'id it get here?'
		db	0FFh, 41h, 20h
data_392	db	'peace statue called \Taruso\ sto'
		db	'od here, but one night it disapp'
		db	'eared. Where in the world can it'
		db	' have gone? The evil Jashiin mus'
		db	't have taken a liking to it.'
		db	0FFh, 49h, 20h
		db	'have a message from the Spirits:'
		db	' wait for the moving edge of the'
		db	' platform made of shining blocks'
		db	'.'
		db	0FFh, 57h, 68h
data_395	db	'en you find green stone slabs th'
		db	'at can be moved up and down, arr'
		db	'ange them like a staircase so yo'
		db	'u can go up easily.'
		db	0FFh, 54h, 68h
		db	'e middle of the caverns is made '
		db	'of pure gold! But there is one f'
		db	'ake gold wall that c'
data_398	dw	6E61h			; Data table (indexed access)
		db	' be destroyed.'
		db	0FFh, 41h, 68h
		db	'! You found the Shirukaano shoes'
		db	'! Now you can scale any slope.'
		db	0FFh, 42h, 72h
		db	'ave lad! A message from the Spir'
		db	'its: Take great care when you en'
		db	'ter the next world.'
		db	0FFh,0BEh, 00h, 81h,0B1h, 01h
		db	 00h, 00h, 00h,0B4h, 00h, 84h
		db	0BBh, 01h, 06h, 00h, 01h, 8Bh
		db	 00h, 80h, 00h, 01h, 02h, 00h
		db	 02h, 69h, 00h, 02h, 00h, 01h
		db	 02h, 00h, 03h, 88h, 00h, 00h
		db	 29h, 01h, 05h, 00h, 04h, 66h
		db	 00h, 80h, 60h, 01h, 03h, 00h
		db	 05h, 55h, 00h, 80h, 00h, 01h
		db	 05h, 00h, 06h, 9Ah, 00h, 82h
		db	 4Fh, 01h, 07h, 00h, 07h, 38h
		db	 00h, 80h,0A0h, 01h, 05h, 00h
		db	 08h, 24h, 00h, 04h,0BBh, 01h
		db	 02h, 00h, 09h, 7Ah, 00h, 82h
		db	 00h, 01h, 03h, 00h, 0Ah, 15h
		db	 00h, 83h, 45h, 01h, 01h, 00h
		db	 0Bh,0FFh,0FFh, 15h, 11h, 00h
		db	 00h,0DBh,0C8h, 18h, 01h,0E0h
		db	0C8h, 07h,0EEh,0C8h,0EEh,0C8h
		db	 08h,0C9h, 61h,0C9h,0CBh,0D0h
		db	0D7h,0C8h, 47h, 00h, 17h,0C9h
		db	24 dup (0)
		db	96h
		db	7 dup (97h)
		db	0A9h,0BDh,0BFh,0C1h,0C3h,0C5h
		db	0C7h,0C9h,0AAh,0C9h,0CBh,0BCh
		db	0C5h,0C6h,0C6h,0C5h,0B1h,0A7h
		db	0CAh,0C2h,0C6h,0C2h,0C7h,0C2h
		db	 00h,0A6h,0C1h,0BCh,0CCh,0CCh
		db	0CCh,0CCh,0A5h,0A7h,0C6h,0BDh
		db	0CCh,0D3h,0D4h,0D4h, 00h,0A8h
		db	0C5h,0BEh,0CCh,0D1h,0D2h,0D2h
		db	 00h,0A6h,0C6h,0BAh,0CCh,0CCh
		db	0CCh,0CCh,0AFh,0B0h,0C7h,0C1h
		db	0C3h,0C9h,0BEh,0C5h, 00h,0B1h
		db	0A7h,0C2h,0BDh,0C9h,0BFh,0C6h
		db	 00h, 00h,0B6h,0B4h,0BEh,0B4h
		db	0C0h,0C7h, 00h, 00h,0B7h,0B9h
		db	0BAh,0C0h,0C1h,0C8h, 00h, 00h
		db	 00h, 00h,0BBh,0B4h,0C4h,0C9h
		db	 00h, 00h, 00h, 00h, 00h,0B2h
		db	0B4h,0BAh, 00h, 00h, 00h, 00h
		db	 00h,0BBh,0BAh,0B4h, 00h, 00h
		db	 00h, 00h, 00h, 00h,0B9h,0BAh
		db	 00h, 00h, 00h, 00h, 00h, 00h
		db	 00h,0BBh, 00h, 00h
		db	7 dup (0)
		db	 41h, 42h, 42h, 42h, 42h, 42h
		db	 42h, 00h, 00h, 43h, 47h, 47h
		db	 47h, 49h, 4Ch, 00h, 00h, 44h
		db	 47h, 47h, 47h, 4Ah, 4Ch, 00h
		db	 00h, 43h, 47h, 47h, 47h, 49h
		db	 4Ch, 00h, 00h, 44h, 47h, 47h
		db	 47h, 4Ah, 4Ch, 00h, 00h, 43h
		db	 47h, 47h, 47h, 49h, 4Ch, 00h
		db	 00h, 44h, 47h, 47h, 47h, 4Ah
		db	 4Ch, 00h, 00h, 43h, 47h, 47h
		db	 47h, 49h, 4Ch, 00h, 00h, 44h
		db	 47h, 47h, 47h, 4Ah, 4Ch, 00h
		db	 00h, 43h, 47h, 47h, 47h, 49h
		db	 4Ch, 00h, 00h, 44h, 47h, 47h
		db	 47h, 4Ah, 4Ch, 00h, 00h, 43h
		db	 47h, 47h, 47h, 49h, 4Ch, 00h
		db	 41h, 42h, 42h, 42h, 42h, 42h
		db	 42h, 00h, 00h, 0Bh, 14h, 14h
		db	 14h, 14h, 14h, 00h, 03h, 0Ch
		db	 15h, 15h, 15h, 15h, 15h, 00h
		db	 04h, 0Dh, 16h, 16h, 16h, 16h
		db	 16h, 00h, 05h, 0Dh, 16h, 16h
		db	 16h, 16h, 16h, 00h, 06h, 0Dh
		db	 16h, 4Dh, 17h, 17h, 17h, 00h
		db	 06h, 0Dh, 16h, 4Eh, 01h, 01h
		db	 01h, 00h, 06h, 0Dh, 16h, 4Fh
		db	 1Dh, 1Dh, 1Dh, 00h, 06h, 0Dh
		db	 16h, 50h, 16h, 16h, 16h, 00h
		db	 06h, 0Dh, 16h, 16h, 16h, 16h
		db	 16h, 00h, 06h, 0Eh, 18h, 18h
		db	 18h, 18h, 18h, 00h, 07h, 0Fh
		db	 19h, 19h, 19h, 19h, 19h, 00h
		db	 08h, 10h, 19h, 1Ah, 1Ah, 19h
		db	 19h, 00h, 09h, 11h, 19h, 1Dh
		db	 1Dh, 19h, 19h, 00h, 5Eh, 5Dh
		db	 19h, 18h, 18h, 19h, 19h, 00h
		db	 00h, 13h, 1Bh, 1Bh, 1Bh, 1Bh
		db	 1Bh, 00h, 41h, 42h, 42h, 42h
		db	 42h, 42h, 42h, 00h, 00h, 43h
		db	 47h, 47h, 47h, 49h, 4Ch, 00h
		db	 00h, 44h, 47h, 47h, 47h, 4Ah
		db	 4Ch, 00h, 00h, 43h, 47h, 47h
		db	 47h, 49h, 4Ch, 00h, 00h, 44h
		db	 47h, 47h, 47h, 4Ah, 4Ch, 00h
		db	 00h, 43h, 47h, 47h, 47h, 49h
		db	 4Ch, 00h, 00h, 44h, 47h, 47h
		db	 47h, 4Ah, 4Ch, 00h, 00h, 43h
		db	 47h, 47h, 47h, 49h, 4Ch, 00h
		db	 00h, 44h, 47h, 47h, 47h, 4Ah
		db	 4Ch, 00h, 00h, 43h, 47h, 47h
		db	 47h, 49h, 4Ch, 00h, 00h, 44h
		db	 47h, 47h, 47h, 4Ah, 4Ch, 00h
		db	 00h, 43h, 47h, 47h, 47h, 49h
		db	 4Ch, 00h, 00h, 44h, 47h, 47h
		db	 47h, 4Ah, 4Ch, 00h, 00h, 43h
		db	 47h, 47h, 47h, 49h, 4Ch, 00h
		db	 00h, 44h, 47h, 47h, 47h, 4Ah
		db	 4Ch, 00h
		db	 41h, 42h, 42h, 42h, 42h, 42h
		db	 42h
		db	18 dup (0)
		db	0D7h, 23h, 23h, 23h, 23h, 23h
		db	 00h, 00h,0D8h, 22h, 22h, 22h
		db	 22h, 22h, 00h, 00h,0D8h, 22h
		db	 22h, 22h, 22h, 22h, 00h, 00h
		db	0D8h, 22h, 22h, 22h, 22h, 22h
		db	 00h, 00h,0D8h, 22h, 22h, 1Ch
		db	 1Ch, 1Ch, 00h, 00h,0D8h, 22h
		db	 22h, 01h, 01h, 01h, 00h, 00h
		db	0D8h, 22h, 22h, 22h, 22h, 22h
		db	 00h, 00h,0D8h, 22h, 22h, 22h
		db	 22h, 22h, 00h, 00h,0D8h, 22h
		db	 22h, 22h, 22h, 22h, 00h, 00h
		db	0D9h, 22h, 22h, 22h, 22h, 22h
		db	 00h, 00h

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_51:
;*		fisub	dword ptr [si]		; st = st - memory
		db	0DAh, 24h		;  Fixup - byte match
		and	al,24h			; '$'
		and	al,24h			; '$'
		add	[bx+si],al
;*		db	0DBh, 24h, 24h, 24h, 24h, 24h
		db	0DBh, 24h, 24h, 24h, 24h, 24h	;  Fixup - byte match
		db	 00h, 00h,0DBh

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_53:
		and	al,24h			; '$'
		and	al,24h			; '$'
		and	al,0
;*		add	bl,bl
		db	 00h,0DBh		;  Fixup - byte match
		and	al,24h			; '$'
		and	al,24h			; '$'
		and	al,0
;*		add	ah,bl
		db	 00h,0DCh		;  Fixup - byte match
		and	ax,2525h
		and	ax,25h
		db	16 dup (0)
		db	 41h, 42h, 42h, 42h, 42h, 42h
		db	 42h, 00h, 00h, 43h, 47h, 47h
		db	 47h, 49h, 4Ch, 00h, 00h, 44h
		db	 47h, 47h, 47h, 4Ah, 4Ch, 00h
		db	 00h, 43h, 47h, 47h, 47h, 49h
		db	 4Ch, 00h, 00h, 44h, 47h, 47h
		db	 47h, 4Ah, 4Ch, 00h, 00h, 43h
		db	 47h, 47h, 47h, 49h, 4Ch, 00h
		db	 00h, 44h, 47h, 47h, 47h, 4Ah
		db	 4Ch, 00h, 00h, 43h, 47h, 47h
		db	 47h, 49h, 4Ch, 00h, 00h, 44h
		db	 47h, 47h, 47h, 4Ah, 4Ch, 00h
		db	 00h, 43h, 47h, 47h, 47h, 49h
		db	 4Ch, 00h, 00h, 44h, 47h, 47h
		db	 47h, 4Ah, 4Ch, 00h, 00h, 43h
		db	 47h, 47h, 47h, 49h, 4Ch, 00h
		db	 00h, 44h, 47h, 47h, 47h, 4Ah
		db	 4Ch, 00h
		db	 41h, 42h, 42h, 42h, 42h, 42h
		db	 42h
		db	18 dup (0)
		db	 0Bh, 14h, 14h, 14h, 14h, 14h
		db	 00h, 03h, 0Ch, 1Eh, 1Eh, 1Eh
		db	 1Eh, 20h, 00h, 04h, 0Dh, 1Fh
		db	 1Eh, 1Fh, 1Eh, 20h, 00h, 05h
		db	 0Dh, 1Fh, 55h, 1Fh, 1Eh, 20h
		db	 00h, 06h, 0Dh, 1Fh, 56h, 1Ch
		db	 1Ch, 1Ch, 00h, 06h, 0Dh, 1Eh
		db	 57h, 01h, 01h, 01h, 00h, 06h
		db	 0Dh, 1Eh, 58h, 1Eh, 1Fh, 20h
		db	 00h, 06h, 0Dh, 1Eh, 1Fh, 1Eh
		db	 1Eh, 20h, 00h, 06h, 0Dh, 1Fh
		db	 1Eh, 1Eh, 1Fh, 20h, 00h, 06h
		db	 0Dh, 1Eh, 1Eh, 1Eh, 1Eh, 20h
		db	 00h, 06h, 0Eh, 18h, 18h, 18h
		db	 18h, 18h, 00h, 07h, 0Fh, 19h
		db	 19h, 19h, 19h, 19h, 00h, 08h
		db	 10h, 19h, 19h, 19h, 19h, 19h
		db	 00h, 09h, 11h, 19h, 19h, 19h
		db	 19h, 19h, 00h, 5Eh, 5Dh, 19h
		db	 19h

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_54:
		sbb	[bx+di],bx

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_55:
		sbb	[bx+si],ax
		add	[bp+di],dl
		sbb	bx,[bp+di]
		sbb	bx,[bp+di]
		sbb	ax,[bx+si]
		db	16 dup (0)
		db	 41h, 42h, 42h, 42h, 42h, 42h
		db	 42h, 00h, 00h, 43h, 47h, 47h
		db	 47h, 49h, 4Ch, 00h, 00h, 44h
		db	 47h, 47h, 47h, 4Ah, 4Ch, 00h
		db	 00h, 43h, 47h, 47h, 47h, 49h
		db	 4Ch, 00h, 00h, 44h, 47h, 47h
		db	 47h, 4Ah, 4Ch, 00h, 00h, 43h
		db	 47h, 47h, 47h, 49h, 4Ch, 00h
		db	 00h, 44h, 47h, 47h, 47h, 4Ah
		db	 4Ch, 00h, 00h, 43h, 47h, 47h
		db	 47h, 49h, 4Ch, 00h, 00h, 44h
		db	 47h, 47h, 47h, 4Ah, 4Ch, 00h
		db	 00h, 43h, 47h, 47h, 47h, 49h
		db	 4Ch, 00h, 00h, 44h, 47h, 47h
		db	 47h, 4Ah, 4Ch, 00h, 00h, 43h
		db	 47h, 47h, 47h, 49h, 4Ch, 00h
		db	 00h, 44h, 47h, 47h, 47h, 4Ah
		db	 4Ch, 00h
		db	 41h, 42h, 42h, 42h, 42h, 42h
		db	 42h
		db	18 dup (0)
		db	0D7h,0DDh, 00h, 00h, 00h, 00h
		db	 00h, 00h,0D8h,0DEh,0E7h,0E6h
		db	0E6h,0E4h, 00h, 00h,0D8h,0DEh
		db	0E6h,0E4h,0E6h,0E5h, 00h, 00h
		db	0D8h,0DFh,0E6h,0E5h,0E6h,0E6h
		db	 00h, 00h,0D8h,0DEh,0E6h,0E6h
		db	0E6h,0E7h, 00h, 00h,0D8h,0DEh
		db	0E7h,0E6h,0E6h,0E6h, 00h, 00h
		db	0D8h,0DFh,0E6h,0E6h,0E7h,0E7h
		db	 00h, 00h,0D8h,0DEh, 51h,0E8h
		db	0E8h,0E8h, 00h, 00h,0D8h,0DEh
		db	 52h, 01h, 01h, 01h, 00h, 00h
		db	0D8h,0DFh, 53h, 01h, 01h

locloop_27:
		add	[bx+si],ax
;*		add	al,bl
		db	 00h,0D8h		;  Fixup - byte match
;*		ficom	word ptr [si-17h]	; Compare with st
		db	0DEh, 54h,0E9h		;  Fixup - byte match
		jmp	$+0ECh
sub_31		endp

		db	 00h,0D8h,0DEh,0E6h,0E6h,0E6h
		db	0E6h, 00h, 00h,0D9h,0E0h,0EAh
		db	0EAh,0EBh,0EAh, 00h, 00h,0DAh
		db	0E1h,0ECh,0EEh,0EFh,0EFh, 00h
		db	 00h,0DBh,0E2h,0EDh,0EEh,0EEh
		db	0EFh, 00h, 00h,0DBh,0E2h,0EFh
		db	0EFh,0EFh,0EFh, 00h, 00h,0DBh
		db	0E2h,0EFh,0EFh,0EFh,0EEh, 00h
		db	 00h,0DCh,0E3h, 00h, 00h, 00h
		db	0B3h, 00h, 00h
		db	15 dup (0)
		db	 41h, 42h, 42h, 42h, 42h, 42h
		db	 42h, 00h, 00h, 43h, 47h, 47h
		db	 47h, 49h, 4Ch, 00h, 00h, 44h
		db	 47h, 47h, 47h, 4Ah, 4Ch, 00h
		db	 00h, 43h, 47h, 47h, 47h, 49h
		db	 4Ch, 00h, 00h, 44h, 47h, 47h
		db	 47h, 4Ah, 4Ch, 00h, 00h, 43h
		db	 47h, 47h, 47h, 49h, 4Ch, 00h
		db	 00h, 44h, 47h, 47h, 47h, 4Ah
		db	 4Ch, 00h, 00h, 43h, 47h, 47h
		db	 47h, 49h, 4Ch, 00h, 00h, 44h
		db	 47h, 47h, 47h, 4Ah, 4Ch, 00h
		db	 00h, 43h, 47h, 47h, 47h, 49h
		db	 4Ch, 00h, 00h, 44h, 47h, 47h
		db	 47h, 4Ah, 4Ch, 00h, 00h, 43h
		db	 47h, 47h, 47h, 49h, 4Ch, 00h
		db	 00h, 44h, 47h, 47h, 47h, 4Ah
		db	 4Ch, 00h
		db	 41h, 42h, 42h, 42h, 42h, 42h
		db	 42h
		db	18 dup (0)
		db	 0Bh, 14h, 14h, 14h, 14h, 14h
		db	 00h, 03h, 0Ch, 15h, 15h, 15h
		db	 15h, 15h, 00h, 04h, 0Dh, 16h
		db	 16h, 16h, 16h, 16h, 00h
data_411	dw	0D05h
		db	 16h, 16h, 16h, 16h, 16h, 00h
		db	 06h, 0Dh, 16h, 16h, 16h, 16h
		db	 16h, 00h, 06h, 0Dh, 16h, 59h
		db	 17h, 17h, 17h, 00h, 06h, 0Dh
		db	 16h, 5Ah, 1Ch, 1Ch, 1Ch, 00h
		db	 06h, 0Dh, 16h, 5Bh, 01h, 01h
		db	 01h, 00h, 06h, 0Dh, 16h, 5Ch
		db	 16h, 16h, 16h, 00h, 06h, 0Dh
		db	 16h, 16h, 16h, 16h, 16h, 00h
		db	 06h, 0Dh, 16h, 16h, 16h, 16h
		db	 16h, 00h, 06h, 0Dh, 16h, 16h
		db	 16h, 16h, 16h, 00h, 06h, 0Dh
		db	 16h, 16h, 16h, 16h, 16h, 00h
		db	 06h, 0Dh, 16h, 16h, 16h, 16h
		db	 16h, 00h, 06h, 0Dh, 16h, 16h
		db	 16h, 16h, 16h, 00h, 06h, 0Eh
		db	 18h, 18h, 18h, 18h, 18h, 00h
		db	 07h, 0Fh, 19h, 19h, 19h, 19h
		db	 19h, 00h, 08h, 10h, 19h, 1Ah
		db	 1Ah, 19h, 19h, 00h, 09h, 11h
		db	 19h, 1Dh, 1Dh, 19h, 19h, 00h
		db	 5Eh, 5Dh, 19h, 19h, 19h, 19h
		db	 19h, 00h, 00h, 13h, 1Bh, 1Bh
		db	 1Bh, 1Bh, 1Bh, 00h
		db	24 dup (0)
		db	 41h, 42h, 42h, 42h, 42h, 42h
		db	 42h, 00h, 00h, 43h, 47h, 47h
		db	 47h, 49h, 4Ch, 00h, 00h, 44h
		db	 47h, 47h, 47h, 4Ah, 4Ch, 00h
		db	 00h, 43h, 47h, 47h, 47h, 49h
		db	 4Ch, 00h, 00h, 44h, 47h, 47h
		db	 47h, 4Ah, 4Ch, 00h, 00h, 43h
		db	 47h, 47h, 47h, 49h, 4Ch, 00h
		db	 00h, 44h, 47h, 47h, 47h, 4Ah
		db	 4Ch, 00h, 00h, 43h, 47h, 47h
		db	 47h, 49h, 4Ch, 00h, 00h, 44h
		db	 47h, 47h, 47h, 4Ah, 4Ch, 00h
		db	 00h, 43h, 47h, 47h, 47h, 49h
		db	 4Ch, 00h, 00h, 44h, 47h, 47h
		db	 47h, 4Ah, 4Ch, 00h, 00h, 43h
		db	 47h, 47h, 47h, 49h, 4Ch, 00h
		db	 00h, 44h, 47h, 47h, 47h, 4Ah
		db	 4Ch, 00h
		db	 41h, 42h, 42h, 42h, 42h, 42h
		db	 42h
		db	16 dup (0)
		db	0D7h
		db	7 dup (0)
		db	0D8h,0DFh,0E6h,0E6h,0E6h,0E7h
		db	0E6h,0E6h,0D8h,0DEh,0E6h,0E6h
		db	0E6h,0E6h,0E6h,0E7h,0D8h,0DEh
		db	0E6h,0E7h,0E6h,0E6h,0E6h,0E6h
		db	0D8h,0DFh,0E6h,0E6h,0E6h,0E6h
		db	0E4h,0E6h,0D8h,0DEh,0E6h,0E6h
		db	0E7h,0E6h,0E5h,0E6h,0D8h,0DEh
		db	0E6h,0E6h,0E6h,0E6h,0E6h,0E6h
		db	0D8h,0DFh,0E7h,0E6h,0E6h,0E6h
		db	0E6h,0E7h
data_415	dw	0DED8h			; Data table (indexed access)
		db	0E6h,0E6h,0E6h,0E6h,0E7h,0E6h
		db	0D8h,0DEh,0E6h,0E6h,0E6h,0E6h
		db	0E6h,0E6h,0D8h,0DFh,0E6h,0E7h
		db	0E4h,0E6h,0E6h,0E7h,0D8h,0DEh
		db	0E6h,0E6h,0E5h,0E8h,0E8h,0E8h
data_416	db	0D8h			; Data table (indexed access)
		db	0DEh,0E7h,0E6h,0E4h, 01h, 01h
		db	 01h,0D8h,0DFh,0E6h,0E6h
data_417	db	0E5h			; Data table (indexed access)
		db	 01h, 01h, 01h,0D8h,0DEh,0E6h
		db	0E6h,0E5h,0E9h,0E9h,0E9h,0D8h
		db	0DEh,0E6h,0E6h,0E6h,0E7h,0E6h
		db	0E6h,0D8h,0DFh,0E6h,0E7h,0E6h
		db	0E6h,0E7h,0E6h,0D8h,0DEh,0E6h
		db	0E6h,0E6h,0E6h,0E6h,0E6h,0D8h
		db	0DEh,0E6h,0E7h,0E6h,0E7h,0E6h
		db	0E7h,0D8h,0DFh,0E6h,0E6h,0E6h
		db	0E6h,0E7h,0E6h,0D8h,0DEh,0E6h
		db	0E4h,0E6h,0E6h,0E6h,0E6h,0D8h
		db	0DEh,0E7h,0E5h,0E6h,0E7h,0E6h
		db	0E6h,0D9h,0DFh,0EBh,0EAh,0EBh
		db	0EAh,0EAh,0EBh,0DAh,0E1h,0EFh
		db	0EFh,0EFh,0EFh,0ECh,0EEh,0DBh
		db	0E2h,0EFh,0EEh,0EFh,0EFh,0EDh
		db	0EFh,0DBh,0E1h,0EEh,0EFh,0ECh
		db	0EEh,0EFh,0EFh,0DBh,0E2h,0EFh
		db	0EEh,0EDh,0EFh,0EFh,0EFh,0DBh
		db	0E1h,0EFh,0EFh,0EEh,0EFh,0EFh
		db	0EEh,0DCh, 00h
		db	19 dup (0)
data_419	db	0			; Data table (indexed access)
		db	 00h, 00h, 00h, 41h, 42h, 42h
		db	 42h, 42h, 42h, 42h, 00h, 00h
		db	 43h, 47h, 47h, 47h, 49h, 4Ch
		db	 00h, 00h, 44h, 47h, 47h, 47h
		db	 4Ah, 4Ch, 00h, 00h, 43h, 47h
		db	 47h, 47h, 49h, 4Ch, 00h, 00h
		db	 44h, 47h, 47h, 47h, 4Ah, 4Ch
		db	 00h, 00h, 43h, 47h, 47h, 47h
		db	 49h, 4Ch, 00h, 00h, 44h, 47h
		db	 47h, 47h, 4Ah, 4Ch, 00h, 00h
		db	 43h, 47h, 47h, 47h, 49h, 4Ch
		db	 00h, 00h, 44h, 47h, 47h, 47h
		db	 4Ah, 4Ch, 00h, 00h, 43h, 47h
		db	 47h, 47h, 49h, 4Ch, 00h, 00h
		db	 44h, 47h, 47h, 47h, 4Ah, 4Ch
		db	 00h, 00h
		db	 43h, 47h

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_28:
		inc	di
		inc	di
		dec	cx
		dec	sp
		add	[bx+si],al
		inc	sp
		inc	di
		inc	di
		inc	di
		dec	dx
		dec	sp
		add	[bx+di+42h],al
		inc	dx
		inc	dx
		inc	dx
		inc	dx
		inc	dx
		db	22 dup (0)
		db	 9Bh, 99h, 00h, 00h, 00h, 00h
		db	 00h, 00h, 9Ch, 9Ah, 00h, 00h
		db	 00h, 00h, 00h, 9Bh, 9Dh,0C6h
		db	 00h, 00h, 00h, 00h, 00h, 9Dh
		db	 9Eh,0C7h, 00h, 00h, 00h, 00h
		db	 98h,0C0h,0C1h,0C5h, 00h, 00h
		db	 00h, 99h,0C2h,0BFh
data_421	db	0BFh			; Data table (indexed access)
		db	0C7h, 00h, 00h,0AFh, 9Ah,0C3h
		db	0C0h,0C3h,0C6h, 00h, 00h,0A3h
		db	0B4h,0C4h,0C1h,0C2h,0C5h, 00h
		db	 00h,0A6h,0C5h,0C3h,0C5h,0C3h
		db	0BFh, 00h,0AFh,0A7h,0C6h,0C4h
		db	0C1h,0C1h,0C5h, 00h, 00h,0A8h
		db	0C7h,0C3h,0C0h,0C3h,0C6h, 00h
		db	0A2h,0A4h,0C9h,0CCh,0CCh,0CCh
		db	0CCh, 00h, 00h,0A6h,0C9h,0CCh
		db	0CDh,0CEh,0CEh, 00h,0A3h,0C9h
		db	0C8h,0CCh,0CFh,0D0h,0D0h, 00h
		db	0A6h,0C9h,0C9h,0CCh,0CCh,0CCh
		db	0CCh,0A5h,0A7h,0C8h,0BFh,0C4h
		db	0BFh,0BFh,0C7h, 00h,0A8h,0C9h
		db	0C9h,0C3h,0C0h,0C3h,0C7h, 00h
		db	0A6h,0C8h,0C9h,0C4h,0C0h,0C3h
		db	0C8h,0A3h,0C9h,0C9h,0C8h,0C3h
		db	0C1h,0C2h,0C7h, 96h
		db	7 dup (97h)
		db	24 dup (0)
		db	 1Fh, 00h,0C8h, 00h, 04h, 01h
		db	0FFh, 00h, 01h, 19h,0AFh, 03h
		db	0Ah, 'Llama Town', 8
		db	 00h, 09h, 27h, 00h, 03h, 47h
		db	 00h, 02h, 68h, 00h, 04h, 8Eh
		db	 00h, 06h,0B0h, 00h, 07h, 0Dh
		db	 01h, 08h,0DEh, 00h, 0Ah,0FFh
		db	0FFh, 01h, 00h, 16h, 00h, 12h
		db	 98h, 00h, 07h, 01h, 12h, 1Bh
		db	 00h, 0Dh, 00h, 15h, 30h, 00h
		db	0FFh, 03h,0C9h,0FFh, 04h,0C9h
		db	0FFh, 0Ch,0C7h,0F0h, 0Dh,0C7h
		db	0F1h, 0Eh,0C7h,0F0h, 14h,0C7h
		db	0F0h, 15h,0C7h,0F0h, 16h,0C7h
		db	0F0h,0D2h,0D0h, 01h,0E2h,0D0h
		db	 10h,0EAh,0D0h, 0Bh,0F2h,0D0h
		db	 0Ch,0FAh,0D0h, 0Dh, 02h,0D1h
		db	 0Eh, 0Ah,0D1h, 0Fh, 12h,0D1h
		db	 11h,0FFh,0FFh, 34h, 00h, 80h
		db	0D2h,0D0h, 02h,0D1h,0D0h, 00h
		db	0FFh,0FFh, 34h, 00h, 40h,0DAh
		db	0D0h, 09h,0FFh,0FFh,0FFh,0FFh
		db	 89h,0C9h,0CFh,0C9h, 67h,0CAh
		db	 7Eh,0CAh, 81h,0CAh, 33h,0CBh
		db	 69h,0CBh, 8Eh,0CBh,0D0h,0CBh
		db	 0Eh,0CCh, 79h,0CCh,0C8h,0CCh
		db	0EEh,0CCh, 3Ch,0CDh,0BEh,0CDh
		db	 39h,0CEh,0B0h,0CEh, 41h,0CFh
		db	0BDh,0CFh,0B2h,0D0h
		db	 48h, 65h
		db	'lp! A terrible creature is in ou'
		db	'r hut! Please get rid of it for '
		db	'us.'
		db	0FFh, 4Fh, 68h
		db	', thank you, sir. As a token of '
		db	'my gratitude I will give you the'
		db	' Elf Crest. I think you\ll find '
		db	'it useful; without it, no one in'
		db	' town will help you.'
		db	 83h,0FFh
		db	'Thanks again. '
		db	'Really. '		; Data table (indexed access)
		db	0FFh, 01h, 2Fh, 85h, 54h, 68h
data_427	db	'e caverns in this region are bur'
		db	'ning hot; you won\t be able to s'
		db	'tand it long. I\ve got something'
		db	' that will help you. It\s an Asb'
		db	'estos cape that will protect you'
		db	' from the heat.'
		db	 87h, 49h, 74h
		db	'\s not free though. It will cost'
		db	' you 2500&almas.///'
		db	 89h, 4Fh, 68h
		db	', I&see... well, maybe next time'
		db	'. '
		db	0FFh, 59h, 6Fh
		db	'u say you don\t have 2500&almas '
		db	'to give? Don\t try to fool me. '
		db	0FFh, 48h, 65h
		db	're you are. That will be 2500&al'
		db	'mas. Take good care of it. '
		db	0FFh, 41h, 72h
		db	'e you taking good care of the As'
		db	'bestos cape? It was my prized po'
		db	'ssession so I hope you\ll treat '
		db	'it well.'
		db	0FFh, 4Dh, 79h
data_434	db	' name is Michael. No one here li'
		db	'stens to a word I say. I wonder '
		db	'why that is?'
		db	0FFh, 4Fh, 68h
		db	'! You\ve got the Elf Crest. Grea'
		db	't! '
		db	0FFh, 4Ah, 61h
		db	'shiin filled the caverns with a '
		db	'flaming inferno. Please help us,'
		db	' brave lad!'
		db	0FFh, 42h, 65h
		db	'ware of the great heat currents.'
		db	' There are many whirlpools in th'
		db	'e caverns, and once you get caug'
		db	'ht in one you\ll never get out.'
		db	0FFh, 54h, 68h
data_439	db	'ere are countless one-way, invis'
		db	'ible walls in Correr Cave. To fi'
		db	'nd out more about them, ask Yoze'
		db	'ras or Myuuza the elder.'
		db	0FFh

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_30:
		dec	cx
		and	[bx+di+6Dh],ah
		and	[bx+di+6Fh],bl
		jp	$+67h			; Jump if parity=1
		jc	$+63h			; Jump if carry Set
		jnc	$+30h			; Jump if carry=0
		and	[bx+68h],dl
		db	'en you go into Correr Cave, watc'
		db	'h out for '
		db	'an opening with no ivy. You\ll f'	; Data table (indexed access)
		db	'all if you go through there.'
		db	0FFh, 49h, 5Ch
		db	'm  Myuuza, the town elder. If yo'
		db	'u go into the Correr Cave be sur'
		db	'e to remember the color of the e'
		db	'ntrance door. The exit door is t'
		db	'he same color.'
		db	0FFh, 49h, 66h
		db	' you can\t find your way, find a'
		db	'n air current near the ceiling o'
		db	'f the cave. You can transport yo'
		db	'urself on those currents.'
		db	0FFh, 53h, 69h
		db	'r, I can see that you don\t have'
		db	' the Elf Crest. Recently some he'
		db	'nchmen of Jashiin have been posi'
		db	'ng as heroes and wreaking havoc '
		db	'on this town. You\re not one of '
		db	'them by any chance, are you? Wit'
		db	'hout the Elf Crest, no one here '
		db	'will speak to you.'
		db	0FFh
		db	'. . . . . . . . . . . . '
		db	0FFh,0DCh, 00h, 02h, 00h, 01h
		db	 03h, 80h, 00h,0FFh, 00h, 03h
		db	 00h, 01h, 03h, 00h, 03h, 18h
		db	 00h, 81h, 00h, 01h, 03h, 00h
		db	 12h, 0Eh, 00h, 80h, 00h, 01h
		db	 06h, 00h, 0Ah, 32h, 00h, 02h
		db	 00h, 00h, 06h, 00h, 13h, 7Ch
		db	 00h, 83h, 00h, 01h, 03h, 00h
		db	 13h, 5Bh, 00h, 82h, 00h, 00h
		db	 01h, 00h, 13h,0C0h, 00h, 83h
		db	 00h, 01h, 05h, 00h, 13h, 9Fh
		db	 00h, 81h, 00h, 01h, 06h, 00h
		db	 13h,0FFh,0FFh,0BBh, 10h, 00h
		db	 00h, 1Bh,0CAh, 40h, 01h, 20h
		db	0CAh, 08h, 2Fh,0CAh, 33h,0CAh
		db	 47h,0CAh, 69h,0CAh, 69h,0D0h
		db	 17h,0CAh, 80h, 00h, 4Ch,0CAh
		db	 00h, 00h
		db	30 dup (0)
		db	 89h, 8Dh, 82h, 00h, 00h, 00h
		db	 00h, 00h, 8Ah, 8Eh, 83h, 00h
		db	 00h, 00h, 00h, 00h, 74h, 7Bh
		db	 82h, 00h, 00h, 00h, 00h, 00h
		db	 75h, 7Ch, 83h, 00h, 00h, 00h
		db	 00h, 00h, 74h, 7Bh, 82h, 00h
		db	 00h, 00h, 95h, 98h, 75h, 7Ch
		db	 83h, 00h, 00h, 00h, 00h, 00h
		db	 74h, 7Bh, 82h, 00h, 00h, 95h
		db	 97h, 99h, 75h, 7Ch, 83h, 00h
		db	 00h, 00h, 00h, 00h, 8Bh, 8Fh
		db	 82h, 00h, 95h, 97h, 96h, 99h
		db	 8Ch, 90h, 83h, 00h, 00h, 00h
		db	 00h, 00h, 00h, 91h, 93h, 95h
		db	 96h, 96h, 96h, 99h, 00h, 92h
		db	 94h, 00h, 00h, 00h, 00h, 00h
		db	 0Dh, 13h,0A4h,0AAh,0AAh,0AAh
		db	0AAh,0AAh, 01h, 07h,0A5h,0AAh
		db	0AAh,0AAh,0AAh,0AAh, 00h, 00h
		db	 00h,0BBh,0ABh, 1Ch, 1Ch, 1Ch
		db	 00h, 00h, 00h,0BBh,0ABh, 1Ch
		db	 1Ch, 1Ch, 00h, 00h, 00h,0BBh
		db	0ABh, 1Ch, 1Ch, 1Ch, 00h, 00h
		db	 00h,0BBh,0ABh, 1Ch, 1Ch, 1Ch
		db	 00h, 00h, 00h,0BBh,0ABh, 1Ch
		db	 1Ch, 1Ch, 00h, 00h, 00h,0BBh
		db	0ABh, 1Ch, 1Ch, 1Ch, 00h, 00h
		db	 00h,0BBh,0ABh, 1Ch, 1Ch, 1Ch
		db	 00h, 00h, 00h,0BBh,0ABh, 1Ch
		db	 1Ch, 1Ch, 0Dh, 13h,0ADh,0AFh
		db	0AFh,0AFh,0AFh,0AFh, 01h, 07h
		db	0AEh,0AFh,0AFh,0AFh,0AFh,0AFh
		db	 00h, 00h, 00h,0BBh,0ABh, 1Ch
		db	 1Ch, 1Ch, 00h, 00h, 00h,0BBh
		db	0ABh, 1Ch, 1Ch, 1Ch, 00h, 00h
		db	 00h,0BBh,0ABh, 1Ch, 1Ch, 1Ch
		db	 00h, 00h, 00h,0BBh,0ABh, 1Ch
		db	 1Ch, 1Ch, 00h, 00h, 00h,0BBh
		db	0ABh, 1Ch, 1Ch, 1Ch, 00h, 00h
		db	 00h,0BBh,0ABh, 1Ch, 1Ch, 1Ch
		db	 00h, 00h, 00h,0BBh,0ABh, 1Ch
		db	 1Ch, 1Ch, 00h, 00h, 00h,0BBh
		db	0ABh, 1Ch, 1Ch, 1Ch, 0Dh, 13h
		db	0A4h,0AAh,0AAh,0AAh,0AAh,0AAh
		db	 01h, 07h,0A5h,0AAh,0AAh,0AAh
		db	0AAh,0AAh
		db	32 dup (0)
		db	 1Dh,0B0h,0B1h,0B1h,0B1h,0B1h
		db	0B1h,0B1h, 1Eh,0B2h,0B1h,0B2h
		db	0B1h,0B1h,0B3h,0B2h, 1Eh,0B3h
		db	0B1h,0B3h,0B1h,0B2h,0B1h,0B3h
		db	 1Eh,0B1h,0B1h,0B1h,0B1h,0B3h
		db	0B1h,0B4h, 1Eh,0B2h,0B1h,0B2h
		db	0B1h,0B1h,0B1h,0B5h, 1Eh,0B3h
		db	0B1h,0B3h,0B1h,0B1h,0B1h,0B3h
		db	 1Eh,0B1h,0B1h, 6Ch, 62h, 62h
		db	 62h, 62h, 1Eh,0B1h,0B1h, 6Dh
		db	 62h, 32h, 32h, 32h, 1Eh,0B2h
		db	0B1h, 6Eh, 62h, 00h, 00h, 00h
		db	 1Eh,0B3h,0B1h, 6Fh, 62h, 62h
		db	 62h, 62h, 1Eh,0B1h,0B1h,0B1h
		db	0B2h,0B1h,0B1h,0B1h, 1Eh,0B1h
		db	0B1h,0B1h,0B3h,0B1h,0B1h,0B1h
		db	 1Eh,0B1h,0B2h,0B1h,0B1h,0B2h
		db	0B4h,0B1h, 1Eh,0B1h,0B3h,0B1h
		db	0B1h,0B3h,0B1h,0B1h, 1Eh,0B1h

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_33:
		mov	dl,0B1h
		mov	ah,0B1h
		mov	cl,0B4h
		push	ds
		mov	cl,0B4h
		mov	cl,0B1h
		mov	cl,0B1h
		mov	bl,63h			; 'c'
		mov	dh,0B6h
		mov	dh,0B6h
		mov	dh,0B6h
		mov	dh,63h			; 'c'
		mov	dh,0B6h
		mov	dh,0B6h
		mov	dh,0B6h
		mov	dh,63h			; 'c'
		mov	dh,0B6h
		mov	dh,0B6h
		mov	dh,0B6h
		mov	dh,50h			; 'P'
		mov	dh,0B6h
		mov	dh,0B6h
		mov	dh,0B6h
		mov	dh,0
		db	47 dup (0)
		db	 0Dh, 13h,0A4h,0AAh,0AAh,0AAh
		db	0AAh,0AAh, 02h, 08h,0A5h,0AAh
		db	0AAh,0AAh,0AAh,0AAh, 00h, 00h
		db	 00h,0BBh,0ABh, 1Ch, 1Ch, 1Ch
		db	 00h, 00h, 00h,0BBh,0ABh, 1Ch
		db	 1Ch, 1Ch, 00h, 00h, 00h,0BBh
		db	0ACh, 1Ch, 1Ch, 1Ch, 00h, 00h
		db	 00h,0BBh,0ABh, 1Ch, 1Ch, 1Ch
		db	 00h, 00h, 00h,0BBh,0ABh, 1Ch
		db	 1Ch, 1Ch, 00h, 00h, 00h,0BBh
		db	0ABh, 1Ch, 1Ch, 1Ch, 00h, 00h
		db	 00h,0BBh,0ABh, 1Ch, 1Ch, 1Ch
		db	 00h, 00h, 00h,0BBh,0ABh, 1Ch
		db	 1Ch, 1Ch, 00h, 00h, 00h,0BBh
		db	0ABh, 1Ch, 1Ch, 1Ch, 00h, 00h
		db	 00h,0BBh,0ABh, 1Ch, 1Ch, 1Ch
		db	 00h, 00h, 00h,0BBh,0ABh, 1Ch
		db	 1Ch, 1Ch, 00h, 00h, 00h,0BBh
		db	0ABh, 1Ch, 1Ch, 1Ch, 00h, 00h
		db	 00h,0BBh,0ABh, 1Ch, 1Ch, 1Ch
		db	 00h, 00h, 00h,0BBh,0ABh, 1Ch
		db	 1Ch, 1Ch, 0Fh, 15h,0A4h,0AAh
		db	0AAh,0AAh,0AAh,0AAh, 03h, 09h
		db	0A5h,0AAh,0AAh,0AAh,0AAh,0AAh
		db	18 dup (0)
		db	 27h, 27h, 27h, 27h, 27h, 27h
		db	 00h, 00h
data_454	db	27h, 27h, '(', 27h, 27h, 27h, '5;'
		db	27h, 27h, 27h, 27h, 27h, 27h, '6<'
		db	27h, 27h, 27h, 27h, '(', 27h, '7<'
		db	'(p/1116<', 27h, 'q02227<', 27h, 'r'
		db	'0'
		db	 00h, 00h, 00h, 37h
		db	'<', 27h, 's/1116<', 27h, 27h, 27h
		db	27h, 27h, 27h, '6<', 27h, 27h, 27h
		db	27h, '(', 27h, '6<(', 27h, 27h, 27h
		db	27h, 27h, '7=', 27h, 27h, 27h, 27h
		db	27h, 27h, '8>)))*))9>)*)))):;))*)'
		db	'*)'
		db	 00h, 00h, 29h, 29h, 29h, 29h
		db	 29h, 29h, 00h, 00h
		db	 29h, 29h, 29h, 29h, 29h, 29h
		db	8 dup (0)
		db	 12h, 18h,0A4h,0AAh,0AAh,0AAh
		db	0AAh,0AAh, 01h, 07h,0A5h,0AAh
		db	0AAh,0AAh,0AAh,0AAh, 00h, 00h
		db	 00h,0BBh,0ABh, 1Ch, 1Ch, 1Ch
		db	 00h, 00h, 00h,0BBh,0ABh, 1Ch
		db	 1Ch, 1Ch, 00h, 00h, 00h,0BBh
		db	0ABh, 1Ch, 1Ch, 1Ch, 00h, 00h
		db	 00h,0BBh,0ACh, 1Ch, 1Ch, 1Ch
		db	 00h, 00h, 00h,0BBh,0ABh, 1Ch
		db	 1Ch, 1Ch, 00h, 00h, 00h,0BBh
		db	0ABh, 1Ch, 1Ch, 1Ch, 00h, 00h
		db	 00h,0BBh,0ABh, 1Ch, 1Ch, 1Ch
		db	 00h, 00h, 00h,0BBh,0ABh, 1Ch
		db	 1Ch, 1Ch, 00h, 00h, 00h,0BBh
		db	0ACh, 1Ch, 1Ch, 1Ch, 00h, 00h
		db	 00h,0BBh,0ABh, 1Ch, 1Ch, 1Ch
		db	 00h, 00h, 00h,0BBh,0ABh, 1Ch
		db	 1Ch, 1Ch, 0Dh, 13h,0A4h,0AAh
		db	0AAh,0AAh,0AAh,0AAh, 01h, 07h
		db	0A5h,0AAh,0AAh,0AAh,0AAh,0AAh
		db	10 dup (0)
		db	59h
		db	7 dup (0)
		db	'Z]____', 0
		db	'FZ]____?GZ]____@HZ]____AGZ]____@'
		db	'HZ]_aaaAGZ]_'
		db	 00h, 00h, 00h, 40h, 48h
		db	'Z]____AGZ]____@HZ]____AGZ]____@I'
		db	'Z]____AJZ]____DK[^````EL[^````'
		db	 00h, 00h, 5Bh, 5Eh, 60h, 60h
		db	 60h, 60h, 00h, 00h
		db	5Ch
		db	13 dup (0)
		db	 0Dh, 13h,0A4h,0AAh,0AAh,0AAh
		db	0AAh,0AAh, 01h, 07h,0A5h,0AAh
		db	0AAh,0AAh,0AAh,0AAh, 00h, 00h
		db	 00h,0BBh,0ABh, 1Ch, 1Ch, 1Ch
		db	 00h, 00h, 00h,0BBh,0ABh, 1Ch
		db	 1Ch, 1Ch, 00h, 00h, 00h,0BBh
		db	0ACh, 1Ch, 1Ch, 1Ch, 00h

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_56		proc	near
		add	[bx+si],al
		mov	bx,1CABh
		sbb	al,1Ch
		add	[bx+si],al
		add	ss:data_293[bp+di],bh
		sbb	al,1Ch
		add	[bx+si],al
		add	ss:data_293[bp+di],bh
		sbb	al,1Ch
		add	[bx+si],al
		add	ss:data_293[bp+di],bh
		sbb	al,1Ch
		add	[bx+si],al
		add	ss:data_293[bp+di],bh
		sbb	al,1Ch
		add	[bx+si],al
		add	ss:data_293[bp+di],bh
		sbb	al,1Ch
		add	[bx+si],al
		add	ss:data_294[bp+di],bh
		sbb	al,1Ch
		add	[bx+si],al
		add	ss:data_294[bp+di],bh
		sbb	al,1Ch
		add	[bx+si],al
		add	ss:data_293[bp+di],bh
		sbb	al,1Ch
		add	[bx+si],al
		add	ss:data_293[bp+di],bh
		sbb	al,1Ch
		adc	bl,[bx+si]
		lodsw				; String [si] to ax
		scasw				; Scan es:[di] for ax
		scasw				; Scan es:[di] for ax
		scasw				; Scan es:[di] for ax
		scasw				; Scan es:[di] for ax
		scasw				; Scan es:[di] for ax
		add	[bx],ax
		scasb				; Scan es:[di] for al
		scasw				; Scan es:[di] for ax
		scasw				; Scan es:[di] for ax
		scasw				; Scan es:[di] for ax
		scasw				; Scan es:[di] for ax
		scasw				; Scan es:[di] for ax
		add	[bx+si],al
		add	ss:data_293[bp+di],bh
		sbb	al,1Ch
		add	[bx+si],al
		add	ss:data_293[bp+di],bh
		sbb	al,1Ch
		add	[bx+si],al
		add	ss:data_293[bp+di],bh
		sbb	al,1Ch
		add	[bx+si],al
		add	ss:data_293[bp+di],bh
		sbb	al,1Ch
		add	[bx+si],al
		add	ss:data_293[bp+di],bh
		sbb	al,1Ch
		add	[bx+si],al
		add	ss:data_293[bp+di],bh
		sbb	al,1Ch
		add	[bx+si],al
		add	ss:data_293[bp+di],bh
		sbb	al,1Ch
		add	[bx+si],al
		add	ss:data_293[bp+di],bh
		sbb	al,1Ch
		add	[bx+si],al
		add	ss:data_293[bp+di],bh
		sbb	al,1Ch
		add	[bx+si],al
		add	ss:data_294[bp+di],bh
		sbb	al,1Ch
		add	[bx+si],al
		add	ss:data_294[bp+di],bh
		sbb	al,1Ch
		add	[bx+si],al
		add	ss:data_293[bp+di],bh
		sbb	al,1Ch
		add	[bx+si],al
		add	ss:data_293[bp+di],bh
		sbb	al,1Ch
		adc	bl,[bx+si]
		movsb				; Mov [si] to es:[di]
		stosb				; Store al to es:[di]
		stosb				; Store al to es:[di]
		stosb				; Store al to es:[di]
		stosb				; Store al to es:[di]
		stosb				; Store al to es:[di]
		add	[bx],ax
		movsw				; Mov [si] to es:[di]
		stosb				; Store al to es:[di]
		stosb				; Store al to es:[di]
		stosb				; Store al to es:[di]
		stosb				; Store al to es:[di]
		stosb				; Store al to es:[di]
		db	17 dup (0)
		db	 35h, 3Bh,0BDh,0BDh,0BDh,0BDh
		db	0BDh, 00h, 36h, 3Ch,0BDh,0BDh
		db	0BDh,0BDh,0BDh, 00h, 36h, 3Ch
		db	0BDh,0BDh,0BDh,0BDh,0BDh, 00h
		db	 36h, 3Ch,0BDh,0BDh,0BDh,0BDh
		db	0BDh, 00h, 36h, 3Ch,0BDh,0BDh
		db	0BDh,0BDh,0BDh, 00h, 36h, 3Ch
		db	 68h, 2Fh, 31h, 31h, 31h, 00h
		db	 36h, 3Ch, 69h, 30h, 32h, 32h
		db	 32h, 00h, 36h, 3Ch, 6Ah, 30h
		db	 00h, 00h, 00h, 00h, 36h, 3Ch
		db	 6Bh, 2Fh, 31h, 31h, 31h, 00h
		db	 36h, 3Ch,0BDh,0BDh,0BDh,0BDh
		db	0BDh, 00h, 36h, 3Ch,0BDh,0BDh
		db	0BDh,0BDh,0BDh, 00h, 36h, 3Ch
		db	0BDh,0BDh,0BDh,0BDh,0BDh, 00h
		db	 36h, 3Ch,0BDh,0BDh,0BDh,0BDh
		db	0BDh, 00h, 37h, 3Dh,0BDh,0BDh
		db	0BDh,0BDh,0BDh, 00h, 39h, 3Eh
		db	0A1h,0A1h,0A1h,0A1h,0A1h, 00h
		db	 39h, 3Eh,0A1h,0A1h,0A1h,0A1h
		db	0A1h, 00h, 39h, 3Eh,0A1h,0A1h
		db	0A1h,0A1h,0A1h, 00h, 39h, 3Eh
		db	0A1h,0A1h,0A1h,0A1h,0A1h, 00h
		db	 3Ah, 3Bh,0A1h,0A1h,0A1h,0A1h
		db	0A1h, 00h
		db	15 dup (0)
		db	 0Dh, 13h,0A4h,0AAh,0AAh,0AAh
		db	0AAh,0AAh, 01h, 07h,0A5h,0AAh
		db	0AAh,0AAh,0AAh,0AAh, 00h, 00h
		db	 00h,0BBh,0ABh, 1Ch, 1Ch, 1Ch
		db	 00h, 00h, 00h,0BBh,0ABh, 1Ch
		db	 1Ch, 1Ch, 00h, 00h, 00h,0BBh
		db	0ACh, 1Ch, 1Ch, 1Ch, 00h, 00h
		db	 00h,0BBh,0ACh, 1Ch, 1Ch, 1Ch
		db	 00h, 00h, 00h,0BBh,0ABh, 1Ch
		db	 1Ch, 1Ch, 00h, 00h, 00h,0BBh
		db	0ABh, 1Ch, 1Ch, 1Ch, 00h, 00h
		db	 00h,0BBh,0ABh, 1Ch, 1Ch, 1Ch
		db	 00h, 00h, 00h,0BBh,0ABh, 1Ch
		db	 1Ch, 1Ch, 00h, 00h, 00h,0BBh
		db	0ACh, 1Ch, 1Ch, 1Ch, 00h, 00h
		db	 00h,0BBh,0ABh, 1Ch, 1Ch, 1Ch
		db	 00h, 00h, 00h,0BBh,0ABh, 1Ch
		db	 1Ch, 1Ch, 0Dh, 13h,0ADh,0AFh
		db	0AFh,0AFh,0AFh,0AFh, 01h, 07h
		db	0AEh,0AFh,0AFh,0AFh,0AFh,0AFh
		db	 00h, 00h, 00h,0BBh,0ABh, 1Ch
		db	 1Ch, 1Ch, 00h, 00h, 00h,0BBh
		db	0ABh, 1Ch, 1Ch, 1Ch, 00h, 00h
		db	 00h,0BBh,0ACh, 1Ch, 1Ch, 1Ch
		db	 00h, 00h, 00h,0BBh,0ABh, 1Ch
		db	 1Ch, 1Ch, 00h, 00h, 00h,0BBh
		db	0ABh, 1Ch, 1Ch, 1Ch, 00h, 00h
		db	 00h,0BBh,0ABh, 1Ch, 1Ch, 1Ch
		db	 00h, 00h, 00h,0BBh,0ABh, 1Ch
		db	 1Ch, 1Ch, 00h, 00h, 00h,0BBh
		db	0ABh, 1Ch, 1Ch, 1Ch, 00h, 00h
		db	 00h,0BBh,0ACh, 1Ch, 1Ch, 1Ch
		db	 00h, 00h, 00h,0BBh,0ABh, 1Ch
		db	 1Ch, 1Ch, 00h, 00h, 00h,0BBh
		db	0ABh, 1Ch, 1Ch, 1Ch, 12h, 18h
		db	0A4h,0AAh,0AAh,0AAh,0AAh,0AAh
		db	 06h, 0Ch,0A5h,0AAh,0AAh,0AAh
		db	0AAh,0AAh
		db	8 dup (0)
		db	 35h, 3Bh, 1Fh, 1Fh, 1Fh, 1Fh
		db	 1Fh, 1Fh, 36h, 3Ch, 1Fh, 1Fh
		db	 1Fh, 1Fh, 1Fh, 1Fh, 36h, 3Ch
		db	 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh
		db	 36h, 3Dh, 1Fh, 1Fh, 1Fh, 1Fh
		db	 1Fh, 1Fh, 36h, 3Ch, 1Fh, 1Fh
		db	 1Fh, 1Fh, 1Fh, 1Fh, 36h, 3Ch
		db	 1Fh, 1Fh, 64h, 1Fh, 1Fh, 1Fh
		db	 36h, 3Dh, 1Fh, 1Fh
		db	 65h, 61h, 61h, 61h, 36h, 3Ch

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_57:
		pop	ds
		pop	ds
		db	 66h, 00h, 00h, 00h, 36h, 3Ch
		db	 1Fh, 1Fh, 67h, 1Fh, 1Fh, 1Fh
		db	 36h, 3Dh, 1Fh, 1Fh, 1Fh, 1Fh
		db	 1Fh, 1Fh, 36h, 3Ch, 1Fh, 1Fh
		db	 1Fh, 1Fh, 1Fh, 1Fh, 36h, 3Ch
		db	 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh
		db	 36h, 3Dh, 1Fh, 1Fh, 1Fh, 1Fh
		db	 1Fh, 1Fh, 36h, 3Ch, 1Fh, 1Fh
		db	 1Fh, 1Fh, 1Fh, 1Fh, 37h, 3Ch
		db	 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh
		db	'8=TTTTTT9>TTTTTT9'

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_58:
		db	 3Eh, 54h

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_35:
		push	sp
		push	sp
		push	sp
		push	sp
		push	sp
		cmp	bh,[bp+di]
		push	sp
		push	sp
		push	sp
		push	sp
		push	sp
		push	sp
		db	8 dup (0)
		db	 0Dh, 13h,0A4h,0AAh,0AAh,0AAh
		db	0AAh,0AAh, 03h, 09h,0A5h,0AAh
		db	0AAh,0AAh,0AAh,0AAh, 00h, 00h
		db	 00h,0BBh,0ABh, 1Ch, 1Ch, 1Ch
		db	 00h, 00h, 00h,0BBh,0ABh, 1Ch
		db	 1Ch, 1Ch, 00h, 00h, 00h,0BBh
		db	0ABh, 1Ch, 1Ch, 1Ch, 00h, 00h
		db	 00h,0BBh,0ABh, 1Ch, 1Ch, 1Ch
		db	 00h, 00h, 00h,0BBh,0ABh, 1Ch
		db	 1Ch, 1Ch, 00h, 00h, 00h,0BBh
		db	0ABh, 1Ch, 1Ch, 1Ch, 00h, 00h
		db	 00h,0BBh,0ABh, 1Ch, 1Ch, 1Ch
		db	 00h, 00h, 00h,0BBh,0ABh, 1Ch
		db	 1Ch, 1Ch, 00h, 00h, 00h,0BBh
		db	0ABh, 1Ch, 1Ch, 1Ch, 00h, 00h
		db	 00h,0BBh,0ABh, 1Ch, 1Ch, 1Ch
		db	 00h, 00h, 00h,0BBh,0ABh, 1Ch
		db	 1Ch, 1Ch, 00h, 00h, 00h,0BBh
		db	0ABh, 1Ch, 1Ch, 1Ch, 00h, 00h
		db	 00h,0BBh,0ABh, 1Ch, 1Ch, 1Ch
		db	 0Dh, 13h,0ADh,0AFh,0AFh,0AFh
		db	0AFh,0AFh, 01h, 07h,0AEh,0AFh
		db	0AFh,0AFh,0AFh,0AFh, 00h, 00h
		db	 00h,0BBh,0ABh, 1Ch, 1Ch, 1Ch
		db	 00h, 00h, 00h,0BBh,0ABh, 1Ch
		db	 1Ch, 1Ch, 00h, 00h, 00h,0BBh
		db	0ABh, 1Ch, 1Ch, 1Ch, 00h, 00h
		db	 00h,0BBh,0ABh, 1Ch, 1Ch, 1Ch
		db	 00h, 00h, 00h,0BBh,0ABh, 1Ch
		db	 1Ch, 1Ch, 00h, 00h, 00h,0BBh
		db	0ABh, 1Ch, 1Ch, 1Ch, 00h, 00h
		db	 00h,0BBh,0ABh, 1Ch, 1Ch, 1Ch
		db	 00h, 00h, 00h,0BBh,0ABh, 1Ch
		db	 1Ch, 1Ch, 00h, 00h, 00h,0BBh
		db	0ABh, 1Ch, 1Ch, 1Ch, 00h, 00h
		db	 00h,0BBh,0ABh, 1Ch, 1Ch, 1Ch
		db	 00h, 00h, 00h,0BBh,0ABh, 1Ch
		db	 1Ch, 1Ch, 00h, 00h, 00h,0BBh
		db	0ABh, 1Ch, 1Ch, 1Ch, 00h

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_59:
		add	[bx+si],al
		mov	bx,1CABh
		sbb	al,1Ch
		add	[bx+si],al
		add	ss:data_293[bp+di],bh
		sbb	al,1Ch
		add	[bx+si],al
		add	ss:data_293[bp+di],bh
		sbb	al,1Ch
		add	[bx+si],al
		add	ss:data_293[bp+di],bh
		sbb	al,1Ch
		or	ax,0A413h
		stosb				; Store al to es:[di]
		stosb				; Store al to es:[di]
		stosb				; Store al to es:[di]
		stosb				; Store al to es:[di]
		stosb				; Store al to es:[di]
		add	[bx],ax
		movsw				; Mov [si] to es:[di]
		stosb				; Store al to es:[di]
		stosb				; Store al to es:[di]
		stosb				; Store al to es:[di]
		stosb				; Store al to es:[di]
		stosb				; Store al to es:[di]
		db	24 dup (0)
		db	 1Dh, 9Eh, 9Eh, 9Eh, 9Eh, 9Eh
		db	 9Eh, 9Eh, 1Eh
		db	7 dup (9Eh)
		db	1Eh
		db	7 dup (9Eh)
		db	1Eh
		db	7 dup (9Eh)
		db	1Eh
		db	7 dup (9Eh)
		db	1Eh
		db	7 dup (9Eh)
		db	1Eh
		db	7 dup (9Eh)
		db	1Eh
		db	7 dup (9Eh)
		db	1Eh
		db	7 dup (9Eh)
		db	1Eh
		db	7 dup (9Eh)
		db	 1Eh, 9Eh, 9Eh, 9Eh, 62h, 62h
		db	 62h, 62h, 1Eh, 9Eh, 9Eh, 9Eh
		db	 62h, 61h, 61h, 61h, 1Eh, 9Eh
		db	 9Eh, 9Eh, 62h, 00h, 00h, 00h
		db	 1Eh, 9Eh, 9Eh, 9Eh, 62h, 62h
		db	 62h, 62h, 1Eh
		db	7 dup (9Eh)
		db	1Eh
		db	7 dup (9Eh)
		db	1Eh
		db	7 dup (9Eh)
		db	1Eh
		db	7 dup (9Eh)
		db	1Eh
		db	7 dup (9Eh)
		db	1Eh
		db	7 dup (9Eh)
		db	1Eh
		db	7 dup (9Eh)
		db	1Eh
		db	7 dup (9Eh)
		db	1Eh
		db	7 dup (9Eh)
		db	1Eh
		db	 9Eh, 9Eh, 9Eh, 9Eh, 9Eh
data_488	dw	9E9Eh
		db	1Eh
		db	7 dup (9Eh)
		db	1Eh
		db	7 dup (9Eh)
		db	63h
		db	7 dup (0A0h)
		db	63h
		db	7 dup (0A0h)
		db	50h
		db	7 dup (0A0h)
		db	32 dup (0)
		db	8 dup (0BFh)
		db	24 dup (0)
		db	 48h, 00h, 13h, 01h, 02h, 01h
		db	0FFh, 01h, 02h, 19h,0AFh, 02h
		db	 0Bh
		db	'Pureza Town'
		db	 81h, 00h,0FFh,0FFh, 31h, 00h
		db	 04h, 5Dh, 00h, 07h, 80h, 00h
		db	 02h,0B5h, 00h, 06h,0E7h, 00h
		db	 03h, 26h, 01h,0FFh,0FFh,0FFh
		db	 6Fh, 00h, 15h, 01h, 17h, 42h
		db	 00h, 08h,0B1h,0D0h,0FFh,0B2h
		db	0D0h,0FFh,0FFh,0FFh, 42h, 00h
		db	 08h, 90h,0D0h, 06h,0FFh,0FFh
		db	 2Bh, 00h, 10h, 90h,0D0h, 07h
		db	0FFh,0FFh,0FFh,0FFh, 83h,0CAh
		db	0E2h,0CAh, 46h,0CBh,0E5h,0CBh
		db	 6Ah,0CCh, 35h,0CDh,0B6h,0CDh
		db	 0Fh,0CEh, 2Dh,0CEh, 0Ah,0CFh
		db	 7Dh,0CFh,0EEh,0CFh,0FCh,0CFh
data_497	db	'Fooled again! Meddlesome fool! T'
		db	'aste the past and never return h'
		db	'ere again. /HA, HA, HA, HA... '
		db	0FFh, 41h, 72h
		db	'e you from the outside world? We'
		db	'lcome. You are certainly a coura'
		db	'geous man guided by the Spirits.'
		db	' '
		db	0FFh, 41h, 20h
		db	'moment, sir. I have seen the for'
		db	'tress of Jashiin. It is at the e'
		db	'dge of this world. The Spirits g'
		db	'uided me back from there alive s'
		db	'o I could tell you about it.'
		db	0FFh, 49h, 20h
		db	'think you should know that this '
		db	'town is very close to the fortre'
		db	'ss of Jashiin, and his henchmen '
		db	'are sure to be around. Be carefu'
		db	'l.'
		db	0FFh, 59h, 4Fh
		db	'U! The princess you struggle to '
		db	'rescue will lead you to your doo'
		db	'm'
data_504	dw	2021h

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_39:
		push	sp
		db	'he Spirits are just demons in di'
		db	'sguise. What does this mean? You'
		db	' do the devil\s work, you must b'
		db	'e the devil!  WA, HA, HA, HA, HA'
		db	'... '
		db	0FFh, 54h, 68h
		db	'e Spirits gave me a lion\s head '
		db	'key but it was stolen by one of '
		db	'Jashiin\s underlings. I hope you'
		db	' will find it on your travels.'
		db	0FFh, 41h, 68h
		db	', yes -- that\s the key that was'
		db	' entrusted to me by the Spirits.'
		db	' Make good use of it. '
		db	0FFh
		db	'I pray for your safe return. '
		db	0FFh
		db	'The one weapon you\ll need to de'
		db	'feat Jashiin is the Fairy Flame '
		db	'Sword. According to legend it gi'
		db	'ves off a peculiar light and can'
		db	' vanquish any foe with only one '
		db	'blow. However, where it is to be'
		db	' found is another matter... '
		db	0FFh, 4Eh, 65h
		db	'arby is a village called Esko, b'
		db	'ut I don\t know what has happene'
		db	'd to it recently. I once knew ma'
		db	'ny people there.'
		db	0FFh, 49h, 5Ch
data_509	db	've heard that the lion\s head ke'
		db	'y fell between two towers under '
		db	'a stone slab. It is supposedly n'
		db	'ear this town.'
		db	0FFh
		db	'Help!&.&.&.&.'
		db	0FFh, 42h, 65h
data_511	db	'ware of Jashiin\s last henchman,'
		db	' Algaien. It is said that Jashii'
		db	'n used his power to give him ete'
		db	'rnal life.'
		db	0FFh, 16h, 00h, 81h, 00h, 03h
		db	 03h, 00h, 01h, 2Ch, 00h, 82h
		db	 00h, 00h, 06h, 00h, 03h, 44h
		db	 00h, 80h, 00h, 03h, 02h, 00h
		db	 02h, 54h, 00h, 03h, 00h, 03h
		db	 03h, 00h, 04h, 79h, 00h, 82h
		db	 00h, 03h, 03h, 00h, 05h, 9Ah
		db	 00h, 03h, 00h, 03h, 02h, 00h
		db	 0Ch,0ADh, 00h, 00h, 00h, 03h
		db	 01h, 00h, 08h,0C7h, 00h, 81h
		db	 00h, 03h, 03h, 00h, 09h,0F7h
		db	 00h, 03h, 00h, 03h, 06h, 00h
		db	 0Ah, 24h, 01h, 82h, 00h, 03h
		db	 03h, 80h, 0Bh,0FFh,0FFh, 02h
		db	 0Ah, 00h, 00h,0D3h,0C6h,0D7h
		db	 00h,0D8h,0C6h, 09h,0E8h,0C6h
		db	0E8h,0C6h,0F9h,0C6h, 00h,0C7h
		db	0C8h,0C9h,0CFh,0C6h,0ABh, 00h
		db	0FEh,0C6h, 00h, 00h
		db	24 dup (0)
		db	 96h, 97h, 97h, 97h, 97h, 97h
		db	0A5h,0A7h,0C2h
data_514	dw	0C6C4h			; Data table (indexed access)
		db	0C8h,0CAh,0CBh, 00h,0A8h,0CAh
		db	0C2h,0C4h,0C6h,0CBh,0C9h, 00h
		db	0A9h,0C2h,0C4h,0C6h,0C7h,0C6h
		db	0C9h, 9Fh,0AAh,0CAh,0C5h,0C7h
		db	0CBh,0C7h,0C6h,0B7h,0ABh,0C2h
		db	0C4h,0C4h,0CAh,0C4h,0C7h, 00h
		db	0AAh,0C2h,0C0h,0C2h,0CBh,0BCh
		db	0BEh, 00h,0ABh,0CAh,0C1h,0C3h
		db	0CBh,0BDh,0BFh, 00h,0AEh,0C2h
		db	0C2h,0C8h,0C9h,0CBh,0CBh, 00h
		db	0B1h,0A7h,0C7h,0BEh,0C4h,0C9h
		db	0BCh, 00h, 00h,0A8h,0C2h,0BFh
		db	0C8h,0CBh,0BDh, 00h, 00h,0A9h
		db	0C7h,0C2h,0C1h,0C2h,0CBh, 00h
		db	 9Fh,0AAh,0C2h,0BEh,0C7h,0C3h
		db	0C7h, 00h,0B7h,0ABh,0C7h,0BDh
		db	0C8h,0CBh,0C4h, 00h,0AFh,0B0h
		db	0C2h,0C2h,0C6h,0CBh,0C5h, 00h
		db	 00h,0B1h,0BAh,0C2h,0C7h,0C8h
		db	0CBh, 00h, 00h, 00h,0B9h,0BAh
		db	0CBh,0C9h,0CAh, 00h, 00h, 00h
		db	 00h,0B2h,0B4h,0C8h,0CBh, 00h
		db	 00h, 00h, 00h,0B5h,0BAh,0C9h
		db	0C6h, 00h, 00h, 00h, 00h, 00h
		db	0B9h,0BAh,0C7h, 00h, 00h, 00h
		db	 00h, 00h, 00h,0B9h,0BAh, 00h
		db	 00h, 00h, 00h, 00h, 00h, 00h
		db	0B9h, 00h, 00h
		db	7 dup (0)
		db	 41h, 42h, 42h, 42h, 42h, 42h
		db	 42h, 00h, 00h, 44h, 45h, 45h
		db	 45h, 45h, 45h, 00h, 00h, 43h
		db	 47h, 45h, 45h, 45h, 48h, 00h
		db	 00h, 44h, 45h, 45h, 45h, 45h
		db	 45h, 00h, 00h, 43h, 47h, 45h
		db	 45h, 45h, 47h, 00h, 00h, 44h
		db	 45h, 45h, 45h, 45h, 45h, 00h
		db	 00h, 43h, 47h, 45h, 45h, 45h
		db	 47h, 00h, 00h, 44h, 45h, 45h
		db	 45h, 45h, 47h, 00h, 00h, 43h
		db	 47h, 45h, 45h, 45h, 45h, 00h
		db	 00h, 44h, 45h, 48h, 45h, 45h
		db	 47h, 00h, 00h, 43h, 47h, 45h
		db	 45h, 45h, 45h, 00h, 00h, 44h
		db	 45h, 47h, 45h, 45h, 48h, 00h
		db	 00h, 43h, 48h, 45h, 47h, 47h
		db	 45h, 00h, 00h, 44h, 45h, 47h
		db	 45h, 47h, 47h, 00h, 00h, 43h
		db	 48h, 45h, 47h, 47h, 47h, 00h
		db	 00h, 44h, 45h, 48h, 47h, 47h
		db	 47h, 00h, 00h, 43h, 48h, 45h
		db	 47h, 47h, 47h, 00h
		db	 41h, 42h, 42h, 42h, 42h, 42h
		db	 42h
		db	50 dup (0)
		db	 0Bh, 14h, 14h, 14h, 14h, 14h
		db	 00h, 03h, 0Ch, 15h, 15h, 15h
		db	 15h, 15h, 00h, 04h, 0Dh, 16h
		db	 16h, 16h, 16h, 16h, 00h, 05h
		db	 0Dh, 16h, 16h, 16h, 16h, 16h
		db	 00h, 06h, 0Dh, 16h, 16h, 16h
		db	 16h, 16h, 00h, 06h, 0Dh, 16h
		db	 16h, 16h, 16h, 16h, 00h, 06h
		db	 0Dh, 16h, 4Dh, 17h, 17h, 17h
		db	 00h, 06h, 0Dh, 16h, 4Eh, 1Ch
		db	 1Ch, 1Ch, 00h, 06h, 0Dh, 16h
		db	 4Fh, 01h, 01h, 01h, 00h, 06h
		db	 0Dh, 16h, 50h, 16h, 16h, 16h
		db	 00h, 06h, 0Dh, 16h, 16h, 16h
		db	 16h, 16h, 00h, 06h, 0Dh, 16h
		db	 16h, 16h, 16h, 16h, 00h, 06h
		db	 0Dh, 16h, 16h, 16h, 16h, 16h
		db	 00h, 06h, 0Dh, 16h, 16h, 16h
		db	 16h, 16h, 00h, 06h, 0Dh, 16h
		db	 16h, 16h, 16h, 16h, 00h, 06h
		db	 0Dh, 16h, 16h, 16h, 16h, 16h
		db	 00h, 06h, 0Dh, 18h, 18h, 18h
		db	 18h, 18h, 00h, 06h, 0Eh, 19h
		db	 19h, 19h, 19h, 19h, 00h, 07h
		db	 0Fh, 19h, 19h, 19h, 19h, 19h
		db	 00h, 08h, 10h, 19h, 1Ah, 1Ah
		db	 19h, 19h, 00h, 09h, 11h, 19h
		db	 1Dh, 1Dh, 19h, 19h, 02h, 0Ah
		db	 12h, 19h, 18h, 18h, 19h, 19h
		db	 00h, 00h, 13h, 1Bh, 1Bh, 1Bh
		db	 1Bh, 1Bh, 00h, 00h, 65h, 6Ch
		db	 70h, 73h, 74h, 00h, 00h, 63h
		db	 66h, 6Dh, 71h, 6Eh, 75h, 77h
		db	 00h, 79h, 7Dh, 81h, 85h, 89h
		db	 8Eh, 92h, 00h, 7Ah, 7Eh, 82h
		db	 86h, 8Ah, 8Fh, 93h, 00h, 7Bh
		db	 7Fh, 83h, 87h, 8Bh, 90h, 94h
		db	 00h, 7Ch, 80h, 84h, 88h, 8Ch
		db	 91h, 95h, 00h, 64h, 81h, 85h
		db	 89h, 8Dh, 8Eh, 92h, 00h, 41h
		db	 42h, 42h, 42h, 42h, 42h, 42h
		db	 00h, 00h, 43h, 46h, 46h, 46h
		db	 46h, 46h, 00h, 00h, 44h, 47h
		db	 46h, 46h, 46h, 47h, 00h, 00h
		db	 43h, 46h, 46h, 46h, 46h, 46h
		db	 00h, 00h, 44h, 48h, 46h, 46h
		db	 46h, 45h, 00h, 00h, 43h, 46h
		db	 46h, 46h, 45h, 48h, 00h, 00h
		db	 44h, 47h, 46h, 45h, 45h, 45h
		db	 00h, 00h, 43h, 46h, 45h, 45h
		db	 45h, 48h, 00h, 00h, 44h, 45h
		db	 45h, 45h, 45h, 45h, 00h, 00h
		db	 43h, 46h, 45h, 45h, 45h, 48h
		db	 00h, 00h, 44h, 48h, 46h, 45h
		db	 45h, 45h, 00h, 00h, 43h, 46h
		db	 46h, 46h, 45h, 47h, 00h, 00h
		db	 44h, 47h, 46h, 46h, 46h, 45h
		db	 00h, 00h, 43h, 46h, 46h, 46h
		db	 46h, 46h, 00h, 00h, 44h, 48h
		db	 46h, 46h, 46h, 47h, 00h, 00h
		db	 43h, 46h, 46h, 46h, 46h, 46h
		db	 00h, 00h, 44h, 47h, 46h, 46h
		db	 46h, 45h, 00h, 00h, 43h, 46h
		db	 46h, 46h, 45h, 47h, 00h, 00h
		db	 44h, 47h, 46h, 45h, 45h, 45h
		db	 00h, 00h, 43h, 46h, 45h, 45h
		db	 45h, 48h, 00h, 00h, 44h, 45h
		db	 45h, 45h, 45h, 45h, 00h, 00h
		db	 43h, 48h, 45h, 45h, 45h, 47h
		db	 00h, 00h, 44h, 45h, 45h, 45h
		db	 45h, 45h, 00h, 00h, 43h, 48h
		db	 45h, 45h, 45h, 48h, 00h
		db	 41h, 42h, 42h, 42h, 42h, 42h
		db	 42h
		db	9 dup (0)
		db	 0Bh, 14h, 14h, 14h, 14h, 14h
		db	 14h, 03h, 0Ch, 1Fh, 1Eh, 1Eh
		db	 1Eh, 1Eh, 1Eh, 04h, 0Dh, 1Fh
		db	 1Eh, 1Eh, 1Eh, 1Eh, 1Eh, 05h
		db	 0Dh, 1Fh, 1Eh, 1Eh, 1Eh
loc_42:
		push	ds
		push	ds
		push	es
		or	ax,1E1Fh
		push	bp
		push	ds
		push	ds
		push	ds
		push	es
		or	ax,1E1Fh
		push	si
		sbb	al,1Ch
		sbb	al,6
		or	ax,1E1Fh
		push	di
		add	[bx+di],ax
		add	word ptr ds:[1F0Dh],ax
		push	ds
		pop	ax
		push	ds
		push	ds
		push	ds
		push	es
		or	ax,1E1Fh
		push	ds
		push	ds
		push	ds
		push	ds
		push	es
		or	ax,1E1Fh
		push	ds
		push	ds
		push	ds
		push	ds
		push	es
		or	ax,1E1Fh
		push	ds
		push	ds
		push	ds
		push	ds
		push	es
		or	ax,1E1Fh
		push	ds
		push	ds
		push	ds
		push	ds
		push	es
		push	cs
		sbb	[bx+si],bl
		sbb	[bx+si],bl
		sbb	[bx+si],bl
		pop	es
;*		pop	cs			; Dangerous-8088 only
		db	0Fh			;  Fixup - byte match
		sbb	[bx+di],bx
		sbb	[bx+di],bx
		sbb	[bx+di],bx
		or	[bx+si],dl
		sbb	[bx+di],bx
		sbb	bl,[bp+si]
		sbb	[bx+di],bx
		or	[bx+di],dx
		sbb	[bx+di],bx
		sbb	ax,191Dh
		sbb	[bp+5Dh],bx
		sbb	[bx+di],bx
		sbb	[bx+si],bl
		sbb	[bx+di],bx
		add	[bp+di],dl
		sbb	bx,[bp+di]

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_43:
		sbb	bx,[bp+di]
		sbb	bx,[bp+di]
		add	[bp+69h],ah
		jo	loc_42			; Jump if overflow=1
		jz	loc_44			; Jump if zero
		add	[bp+di+7Fh],bh
		add	word ptr ds:[8D8Ah][bx],75h
		ja	$+7Eh			; Jump if above
		add	byte ptr ds:[7D6Eh][si],8Eh
		mov	ss,word ptr ds:[6400h][si]
		db	 6Ah, 8Ch, 89h, 87h, 8Bh, 93h
		db	 00h, 00h, 6Bh, 6Eh, 8Ch, 6Eh
		db	 76h, 78h, 00h, 00h, 00h, 00h
		db	 72h, 6Fh, 72h, 00h,0D7h,0DFh
		db	0E6h,0E6h,0E6h,0E6h,0E6h,0E6h
		db	0D8h,0DEh,0E6h,0E6h,0E6h,0E6h
		db	0E7h,0E6h,0D8h,0DEh,0E7h,0E6h
		db	0E6h,0E6h,0E6h,0E6h,0D8h,0DFh
		db	0E6h,0E6h,0E6h,0E6h,0E6h,0E6h
		db	0D8h,0DEh,0E6h,0E6h,0E6h,0E6h
		db	0E6h,0E6h,0D8h,0DEh,0E6h,0E7h
		db	0E6h,0E6h,0E7h,0E6h,0D8h,0DFh
		db	0E6h,0E6h,0E6h,0E6h,0E6h,0E6h
		db	0D8h,0DEh,0E6h,0E6h, 51h,0E8h
		db	0E8h,0E8h,0D8h,0DEh,0E6h,0E6h
		db	 52h, 1Ch, 1Ch, 1Ch,0D8h,0DFh
		db	0E6h
loc_44:
		out	53h,al			; port 53h ??I/O Non-standard
		add	[bx+di],ax
;*		add	ax,bx
		db	 01h,0D8h		;  Fixup - byte match
;*		fsubrp	st(7),st		; st(#)=st-st(#), pop
		db	0DEh,0E7h		;  Fixup - byte match
		out	54h,al			; port 54h ??I/O Non-standard
;*		jmp	loc_32			;*
sub_56		endp

		db	0E9h,0E9h,0E9h		;  Fixup - byte match
		db	0D8h,0DEh,0E6h,0E6h,0E7h,0E6h
		db	0E6h,0E6h,0D8h,0DFh,0E6h,0E6h
		db	0E6h,0E6h,0E6h,0E6h,0D8h,0DEh
		db	0E6h,0E7h,0E6h,0E6h,0E6h,0E7h
		db	0D8h,0DEh,0E6h,0E6h,0E6h,0E6h
		db	0E6h,0E6h,0D8h,0DFh,0E7h,0E6h
		db	0E6h,0E6h,0E6h,0E6h,0D8h,0DEh
		db	0E6h,0E6h,0E6h,0E6h,0E6h,0E6h
		db	0D8h,0DEh,0E6h,0E6h,0E6h,0E7h
		db	0E6h,0E6h,0D9h,0DFh,0EAh,0EAh
		db	0EAh,0EAh,0EAh,0EAh,0DAh,0E1h
		db	0EFh,0EFh,0EFh,0EFh,0EFh,0EFh
		db	0DBh,0E2h,0EFh,0EEh,0EFh,0EFh
		db	0EFh,0EEh,0DCh,0E1h,0EFh,0EFh
		db	0EFh,0EEh,0EFh,0EFh
		db	12 dup (0)
		db	 6Ch, 00h, 00h, 00h, 00h, 65h
		db	 00h, 70h, 6Dh, 73h, 74h, 00h
		db	 63h, 66h, 69h, 84h, 88h, 8Dh
		db	 75h, 77h, 79h, 7Dh, 81h, 85h
		db	 89h, 89h, 8Eh, 92h, 7Ah, 7Eh
		db	 82h, 86h, 88h, 8Bh, 8Fh, 93h
		db	 7Bh, 7Fh, 83h, 87h, 89h, 8Ch
		db	 91h, 94h, 7Ch, 80h, 84h, 88h
		db	 8Ch, 8Dh, 8Dh, 92h, 79h, 7Dh
		db	 81h, 85h, 89h, 8Ah, 8Eh, 92h
		db	 7Ah, 7Eh, 82h, 86h, 91h, 8Bh
		db	 8Fh, 93h, 7Bh, 7Fh, 83h, 87h
		db	 8Bh, 8Ch, 8Eh, 94h, 7Ch, 80h
		db	 84h, 88h, 8Ch, 8Dh, 91h, 95h
		db	 79h, 7Dh, 81h, 85h, 89h, 8Bh
		db	 8Eh, 92h, 7Ah, 7Eh, 82h, 86h
		db	 8Ah, 8Ch, 85h, 93h, 7Bh, 7Fh
		db	 83h, 87h, 88h, 8Dh, 8Eh, 94h
		db	 7Ch, 88h, 84h, 88h, 89h, 8Eh
		db	 91h, 95h, 00h, 64h, 7Dh, 81h
		db	 85h, 89h, 8Eh, 78h, 00h, 2Ah
		db	 30h, 35h, 35h, 30h, 30h, 3Dh
		db	 00h
		db	'+18111=&,29;<<>', 27h, '-3:'
		db	 01h, 01h, 01h, 3Fh
		db	'(.44444=(/55555=((66666@((67676@'
		db	'((66666@((66666@((67676@((66666@'
		db	'((66666@('
		db	'(67676@((66666@)(66666@', 0
		db	'(67676@', 0
		db	')66666@'
		db	7 dup (0)
		db	40h
		db	9 dup (0)
		db	 65h, 68h, 6Ch, 70h, 73h, 74h
		db	 00h
		db	'cfimqmuwdgjnnnvx'
		db	 00h, 00h, 6Bh, 6Fh, 72h, 6Fh
		db	 72h, 00h
		db	15 dup (0)
		db	 98h, 00h, 00h, 00h, 00h, 00h
		db	 00h, 99h,0B4h, 00h, 00h, 00h
		db	 00h, 00h, 00h, 9Ch,0BEh, 00h
		db	 00h, 00h, 00h, 00h, 00h, 9Dh
		db	0C3h, 00h, 00h, 00h, 00h, 9Bh
		db	 9Dh,0C2h,0C4h, 00h, 00h, 00h
		db	 9Bh, 9Dh,0C1h,0C3h,0C5h, 00h
		db	 00h, 00h, 9Ch, 9Eh,0C6h,0C8h
		db	0CAh, 00h, 00h, 9Fh, 9Dh,0BCh
		db	0C7h,0C9h,0CBh, 00h, 00h,0A0h
		db	0BCh,0BEh,0C0h,0C2h,0C4h, 00h
		db	 00h,0A1h,0BDh,0BFh,0C1h,0C3h
		db	0C5h, 00h,0A3h,0C6h,0C8h,0CCh
		db	0CCh,0CCh,0CCh,0A2h,0A4h,0C7h
		db	0C9h,0CCh,0CDh,0CEh,0CEh, 00h
		db	0A6h,0C1h,0C3h,0CCh,0CFh,0D0h
		db	0D0h,0A5h,0A7h,0C2h,0C4h,0CCh
		db	0CCh,0CCh,0CCh, 00h,0A8h,0C8h
		db	0CAh,0BCh,0BEh,0BFh,0C1h, 00h
		db	0A9h,0C9h,0CBh,0BDh,0BFh,0C0h
		db	0C2h, 00h,0AAh,0C1h,0C3h,0C5h
		db	0C7h,0C8h,0CAh, 00h,0ABh,0C2h
		db	 96h, 97h, 97h, 97h, 97h
		db	24 dup (0)
		db	 1Eh, 00h,0A6h, 00h, 04h, 00h
		db	0FFh, 00h, 01h, 19h,0AFh, 00h
		db	0Ch, 'Esco village9'
		db	 00h, 03h, 6Fh, 00h, 04h, 8Ah
		db	 00h, 06h,0ABh, 00h, 05h,0CDh
		db	 00h, 08h,0FFh,0FFh, 7Bh, 00h
		db	 06h, 00h, 18h,0FFh,0FFh, 0Eh
		db	0C7h, 5Ah,0C7h, 02h,0C8h, 55h
		db	0C8h,0A1h,0C8h, 05h,0C9h, 68h
		db	0C9h
		db	'Pay attention to the door with t'
		db	'he blue symbol. It h'
		db	'as turned'
data_526	dw	7420h			; Data table (indexed access)
		db	'hree colors.'
		db	0FFh, 49h, 66h
		db	' you fall from a stone and are b'
		db	'locked by a wall, thrust through'
		db	' it with your sword. If the wall'
		db	' crumbles away you\ll be on the '
		db	'road leading to the abode of Jas'
		db	'hiin.'
		db	0FFh, 42h, 79h
data_528	db	' jumping in front of the ivy rat'
		db	'her than going down it, you can '
		db	'open a new road.'
		db	0FFh, 4Ch, 6Fh
		db	'ok for another door with a blue '
		db	'symbol. If you see it, turn to t'
		db	'he right.'
		db	0FFh, 44h, 6Fh
		db	' you have doubts? H'
data_532	dw	7265h			; Data table (indexed access)
		db	'e there is only slaughter and de'
		db	'struction. What do you expect to'
		db	' accomplish?'
		db	0FFh, 57h, 68h
		db	'y have the Spirits sent you on t'
		db	'his journey of slaughter? Why do'
		db	'es Jashiin await you in silence?'
		db	0FFh, 50h, 61h
data_534	db	'y no heed to those two, they are'
		db	' in league with Jashiin. They ar'
		db	'e trying to weaken your will.'
		db	0FFh, 08h, 00h, 00h, 00h, 01h
		db	 03h, 00h, 01h, 26h, 00h, 02h
		db	 00h, 01h, 03h, 00h, 03h, 52h
		db	 00h, 00h, 00h, 01h, 03h, 00h
		db	 02h, 7Eh, 00h, 02h, 00h, 01h
		db	 03h, 00h, 00h,0A9h, 00h, 01h
		db	 00h, 00h, 00h, 00h, 04h,0ADh
		db	 00h, 01h, 00h, 00h, 00h, 00h
		db	 05h, 9Fh, 00h, 04h, 00h, 01h
		db	 03h, 00h, 06h,0FFh,0FFh,0E9h
		db	 0Dh, 00h, 00h, 68h, 07h, 7Dh
		db	 06h, 63h, 06h,0BEh, 06h, 01h
		db	 1Fh, 00h, 02h,0B5h, 00h, 03h
		db	 79h, 01h, 04h, 18h, 02h, 05h
		db	 0Fh, 03h, 09h,0A5h, 03h
loc_46:
		pop	es
		push	sp
		push	es
		or	[bx+di+6],bl
		or	[bp+6],bx
;*                         lock	add	cl,ch
		db	0F0h, 00h,0E9h		;  Fixup - byte match
;*		add	al,ah
		db	 00h,0E0h		;  Fixup - byte match
		jge	loc_46			; Jump if > or =
;*		add	cl,ch
		db	 00h,0E9h		;  Fixup - byte match
;*		add	dh,ah
		db	 00h,0E6h		;  Fixup - byte match
		pop	cx
		in	ax,73h			; port 73h ??I/O Non-standard
		mov	al,data_690
		inc	ax
		adc	[bx+di],dx
		and	dl,[bp+di]
		adc	[si],ah
		adc	[bx+si],dx
		and	dl,[di]
		adc	[bx+si],al
		adc	[bx+di],dx
		adc	dl,[bx+si]
		adc	dx,[bp+di]
		xor	al,0
		adc	[bx+di],dx
		and	dl,[bp+di]
		adc	[si],ah
		adc	[bx+si],dx
		and	dl,[di]
		adc	[bx+si],al
		adc	[bx+di],dx
		adc	dl,[bx+si]
		adc	dx,[bp+di]
		inc	sp
		push	sp
		push	sp
		push	sp
		db	 62h, 61h, 65h, 73h, 43h, 12h
		db	 12h, 62h, 64h, 62h, 71h,0F0h
		db	 01h, 01h, 04h, 14h, 16h, 12h
		db	27h
		db	'7@XYZ[ZY(XYZ[<0@XYZ[ZY(XYZ[70mno'
		db	'mn@mn'
data_537	dw	6D61h			; Data table (indexed access)
		db	'n@mnomn@mnam~~'
		db	0F0h, 02h, 0Eh, 1Fh, 1Fh, 0Fh
		db	0E9h, 01h, 10h, 10h, 00h, 11h
		db	 11h, 01h,0FBh, 25h, 00h,0FFh
		db	0F0h, 02h,0E9h, 01h,0F0h, 02h
		db	0E9h, 01h,0E1h, 00h
		db	40h
data_538	dw	59E6h
data_539	dw	73E5h
data_540	db	98h
data_541	db	22h
data_542	db	0E2h
data_543	db	'@33D52E32D62"334277U"33D52E32D62'
		db	'"334277euuu'
		db	0F0h, 03h, 04h, 03h, 06h, 17h
		db	 27h, 34h, 34h, 04h, 08h, 04h
		db	 13h, 43h, 48h, 05h, 07h, 09h
		db	 1Ah, 5Ah,0E6h, 30h, 98h,0E1h
		db	 32h, 40h,0E5h
		db	'\;;b;<=;b;;>?>'
		db	0E9h, 02h, 30h, 31h, 31h, 72h
		db	 31h, 33h, 31h,0F0h, 04h, 04h
		db	 05h, 01h, 05h, 16h, 16h, 02h
		db	 16h, 15h, 11h, 16h, 02h, 16h
		db	 16h, 17h, 13h, 17h, 10h, 11h
		db	 11h, 22h, 11h, 13h, 11h, 12h
		db	 11h, 13h, 11h, 13h, 11h, 12h
		db	 11h, 16h, 10h, 17h, 13h, 16h
		db	 30h, 47h, 13h, 52h, 16h, 10h
		db	 17h, 13h, 66h, 60h, 67h, 66h
		db	 60h, 67h, 52h, 16h, 10h, 17h
		db	 13h, 16h, 30h, 47h, 13h, 52h
		db	 16h, 10h, 17h, 13h, 16h, 30h
		db	 47h, 13h, 16h, 10h, 17h, 13h
		db	 66h, 60h, 67h, 63h, 68h, 69h
		db	0FBh,0B9h, 00h,0FFh,0F0h, 04h
		db	0E9h, 02h,0F0h, 04h,0E9h, 02h
		db	0E1h, 00h, 40h,0E6h, 59h,0E5h
		db	 73h,0A8h, 02h,0E2h, 40h, 1Ah
		db	 1Ah, 0Bh, 1Ch, 12h, 0Dh, 1Ah
		db	 12h, 0Bh, 1Eh, 12h, 02h, 1Ah
		db	 1Ah, 1Bh, 12h, 1Ch, 1Ch, 7Dh
		db	 02h, 1Ah, 1Ah, 0Bh, 1Ch, 12h
		db	 0Dh, 1Ah, 12h, 0Bh, 1Eh, 12h
		db	 02h, 1Ah, 1Ah, 1Bh, 12h, 1Ch
		db	 1Ch,0F0h, 05h, 0Dh, 1Dh, 1Dh
		db	 1Dh
		db	'+*.<', 0Ch, 'KK+-+Z[],/,'
		db	0E9h, 03h, 30h, 60h,0E6h, 59h
		db	0E1h, 32h, 40h,0E5h, 5Ah,0A8h
		db	'qBCDEDC2BCDEfaqBCDEDC2BCDEga'
		db	0F0h, 06h, 08h, 09h, 0Ah, 08h
		db	 09h, 01h, 08h, 09h, 0Bh, 08h
		db	 09h, 01h, 08h, 09h, 0Ah, 08h
		db	 09h, 01h, 08h, 09h, 0Bh, 08h
		db	 19h, 19h, 29h, 1Ah, 1Ah, 2Ah
		db	 1Ch, 1Ch, 2Ch, 1Dh, 1Dh, 2Dh
		db	0FBh, 7Dh, 01h,0FFh,0F0h, 06h
		db	0E9h, 03h,0F0h, 06h,0E9h, 03h
		db	0A0h,0E5h, 78h,0E6h, 70h,0F5h
		db	 01h, 03h,0F0h, 06h,0E9h, 03h
		db	0E2h, 40h, 0Eh, 31h, 4Fh, 4Fh
		db	0F6h, 01h, 28h, 02h,0E5h, 78h
		db	 4Eh,0E5h, 50h, 5Eh, 5Eh,0E5h
		db	 5Ah, 5Eh, 5Eh,0E5h, 64h, 5Eh
		db	 5Eh,0E5h, 6Eh, 5Eh, 5Eh, 5Eh
		db	0E5h, 78h, 5Eh, 5Eh, 5Eh,0E5h
		db	 7Fh, 4Eh,0E5h, 78h, 4Fh, 4Fh
		db	0F5h, 01h, 03h,0F0h, 06h,0E9h
		db	 03h, 0Eh, 31h, 4Fh, 4Fh,0F6h
		db	 01h, 59h, 02h,0E5h, 78h, 4Eh
		db	0E5h, 50h, 5Eh, 5Eh,0E5h, 5Ah
		db	 5Eh, 5Eh,0E5h, 64h, 5Eh, 5Eh
		db	0E5h, 6Eh, 5Eh, 5Eh, 5Eh,0E5h
		db	 78h, 5Eh, 5Eh, 5Eh,0E5h, 7Fh
		db	 6Eh, 6Eh,0E5h, 78h, 7Fh, 7Fh
		db	 7Fh,0E6h, 30h,0E5h, 7Fh,0E9h
		db	 04h,0F0h, 07h, 00h, 10h
		db	 20h, 20h, 30h, 41h, 42h
data_544	db	3
		db	 13h, 23h, 23h, 33h, 44h, 45h
		db	 04h, 14h, 24h, 24h, 54h,0E6h
		db	 30h,0E5h
		db	'iaaFad`aFaa'
data_545	dw	6867h			; Data table (indexed access)
		db	 67h, 62h, 60h, 60h, 16h
		db	'`h`CD@DaaFad`aFaaghgb``'
		db	16h
		db	'`h`f`h`h`f`abgha"wh'
		db	 06h, 61h, 62h, 67h, 68h,0F0h
		db	 08h, 01h, 02h, 07h, 01h, 02h
		db	 07h, 16h
		db	'!"', 27h, '(!2G('
		db	16h
		db	'!"', 27h, '(!2G(!"', 27h, '('
		db	 01h, 02h, 07h, 08h, 09h, 0Ah
		db	0FBh, 1Ch, 02h,0FFh,0F0h, 08h
		db	0E9h, 04h,0F0h, 08h,0E9h, 04h
		db	0F5h, 01h, 0Dh,0F0h, 08h,0E9h
		db	 04h, 56h,0F6h, 01h, 1Ah, 03h
		db	0A0h,0E5h, 7Fh,0E6h, 1Ch, 66h
		db	0E2h, 40h, 2Bh, 2Bh,0F5h, 01h
		db	 02h,0F0h, 08h,0E9h, 04h
		db	',,,,&,,,&'
		db	7 dup (2Ch)
		db	'----&---&'
		db	7 dup (2Dh)
		db	0F6h, 01h, 30h, 03h, 0Eh, 0Eh
		db	 0Eh, 0Bh, 0Bh, 0Bh, 0Dh, 0Dh
		db	 0Dh, 0Eh, 0Eh, 0Eh, 0Bh, 76h
		db	0F0h, 09h, 06h, 1Eh, 1Eh, 1Eh
		db	 1Bh, 1Bh, 1Bh, 1Fh, 1Fh, 1Fh
		db	 1Eh, 1Eh, 1Eh, 1Bh, 26h, 06h
		db	 1Eh, 1Eh, 1Eh, 1Bh, 1Bh, 1Bh
		db	 1Dh, 1Dh, 1Dh, 1Eh, 1Eh, 1Eh
		db	 1Bh, 26h, 06h, 1Eh, 1Eh, 1Eh
		db	 1Bh, 1Bh, 1Bh, 1Fh, 1Fh, 1Fh
		db	 1Eh, 1Eh, 1Eh, 1Bh, 1Bh, 1Bh
		db	0E9h, 05h, 10h, 10h, 10h, 11h
		db	 11h, 11h, 12h, 12h, 12h,0FBh
		db	 13h, 03h,0FFh,0F0h, 09h,0E9h
		db	 05h,0F5h, 00h, 0Ch,0F0h, 09h
		db	0E9h, 05h,0E5h, 7Fh,0E7h, 0Ah
		db	 33h,0F6h, 00h,0ACh, 03h, 33h
		db	 43h,0E2h, 6Ah, 54h, 54h,0F0h
		db	 09h,0E9h, 05h, 65h,0E2h, 4Eh
		db	 66h,0E2h, 6Ah, 57h,0E2h, 4Eh
		db	 56h,0E2h, 6Ah, 64h,0E2h, 4Eh
		db	 56h,0E2h, 6Ah, 65h,0E2h, 4Eh
		db	 56h, 56h,0E2h, 6Ah, 65h,0E2h
		db	 4Eh, 56h,0E2h, 6Ah, 64h,0E2h
		db	 4Eh, 56h,0E2h, 6Ah, 65h,0E2h
		db	 4Eh, 56h, 56h, 66h,0E2h, 6Ah
		db	 55h,0E2h, 4Eh, 66h,0E2h
data_548	dw	546Ah
data_549	db	0E2h
data_550	db	4Eh
data_551	dw	0E266h
data_552	db	6Ah
data_553	db	55h
		db	0E2h, 4Eh, 66h,0E2h, 6Ah, 55h
		db	0E2h, 4Eh, 56h, 66h,0E2h, 6Ah
		db	 54h,0E2h, 5Ch, 58h,0E2h, 6Ah
		db	 65h,0E2h, 4Eh, 56h, 56h,0E2h
		db	 6Ah, 64h,0E2h, 4Eh, 56h,0E2h
		db	 6Ah, 65h,0E2h, 4Eh, 56h, 56h
		db	0E2h, 6Ah, 65h,0E2h, 4Eh, 56h
		db	0E2h, 6Ah, 64h,0E2h, 4Eh, 56h
		db	0E2h, 6Ah, 65h,0E2h, 4Eh, 56h
		db	 56h, 66h,0E2h, 6Ah, 55h,0E2h
		db	 4Eh, 66h,0E2h, 6Ah, 54h,0E2h
		db	 4Eh, 66h,0E2h, 6Ah, 55h,0E2h
		db	 4Eh, 66h,0E2h, 6Ah, 55h,0E2h
		db	 4Eh, 56h, 66h,0E2h, 6Ah, 54h
		db	0E2h, 4Eh, 66h,0E2h, 78h, 59h
		db	0E2h, 6Ah, 65h,0E2h, 4Eh, 66h
		db	0E2h, 6Ah, 57h,0E2h, 4Eh, 56h
		db	0E2h, 6Ah, 64h,0E2h, 4Eh, 56h
		db	0E2h, 6Ah, 65h,0E2h, 4Eh, 56h
		db	 56h,0E2h, 6Ah, 65h,0E2h, 4Eh
		db	 56h,0E2h, 6Ah, 64h,0E2h, 4Eh
		db	 56h,0E2h, 6Ah, 65h,0E2h, 4Eh
		db	 56h, 56h, 66h,0E2h, 6Ah, 55h
		db	0E2h, 4Eh, 66h,0E2h, 6Ah, 54h
		db	0E2h, 4Eh, 66h,0E2h, 6Ah, 55h
		db	0E2h, 4Eh, 66h,0E2h, 6Ah, 55h
		db	0E2h, 4Eh, 56h, 66h,0E2h, 6Ah
		db	 54h,0E2h, 5Ch, 58h,0E2h, 4Eh
		db	 66h,0E2h, 6Ah, 55h,0E2h, 4Eh
		db	 56h, 66h,0E2h, 6Ah, 54h,0E2h
		db	 4Eh, 66h

locloop_47:
		loop	locloop_48		; Loop if cx > 0

		push	bp
		loop	$+50h			; Loop if cx > 0

		push	si
		db	 66h,0E2h, 6Ah, 55h,0E2h, 4Eh
		db	 66h,0E2h, 6Ah, 54h,0E2h, 4Eh
		db	 66h,0E2h, 6Ah, 55h,0E2h
		db	 4Eh, 56h

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_60		proc	near
		db	 66h,0E2h, 6Ah, 55h,0E2h, 4Eh
		db	 66h,0E2h, 6Ah, 54h,0E2h, 4Eh
		db	 66h,0E2h, 6Ah, 55h,0E2h, 4Eh
		db	 66h,0E2h, 6Ah, 55h,0E2h, 4Eh
		db	 56h,0E2h, 6Ah, 74h, 74h, 74h
		db	 74h, 65h,0E2h, 5Ch,0F0h, 0Ah
		db	 06h,0E2h, 6Ah, 15h,0E2h, 5Ch
		db	 06h,0E2h, 6Ah, 15h,0E2h, 5Ch
		db	 06h,0E2h, 6Ah, 15h,0E2h, 5Ch
		db	 06h,0E2h, 6Ah, 17h, 05h, 24h
		db	 24h, 24h, 15h,0E2h, 5Ch, 06h
		db	0E2h
		db	6Ah
data_554	dw	0E215h			; Data table (indexed access)
		db	 5Ch, 06h,0E2h

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_61:
		db	 6Ah, 15h,0E2h, 5Ch, 06h,0E2h
		db	 6Ah, 15h,0E2h
		db	5Ch

locloop_48:
		push	es
		loop	$+50h			; Loop if cx > 0

		adc	al,0E2h
		db	 6Ah, 27h,0E2h, 4Eh, 24h, 24h
		db	0E2h, 6Ah, 24h, 24h, 24h, 15h
		db	0E2h, 5Ch, 06h,0E2h, 6Ah, 15h
		db	0E2h, 5Ch, 06h,0E2h, 6Ah, 15h
		db	0E2h, 5Ch, 06h,0E2h, 6Ah, 15h
		db	0E2h, 5Ch, 06h,0E2h, 6Ah, 17h
		db	 05h, 24h, 24h, 24h, 15h,0E2h
		db	 5Ch, 06h,0E2h

locloop_49:
		db	 6Ah, 15h,0E2h, 5Ch, 06h,0E2h
		db	 6Ah, 15h,0E2h, 5Ch, 06h,0E2h

locloop_50:
		db	 6Ah, 15h,0E2h, 5Ch, 06h,0E2h

locloop_51:
		db	 6Ah, 15h,0E2h, 5Ch, 06h,0E2h

locloop_52:
		db	 6Ah, 15h,0E2h, 5Ch, 06h,0E2h

locloop_53:
		db	 6Ah, 15h,0E2h, 5Ch, 18h, 0Ah
		db	0E2h, 6Ah, 15h,0E2h
		db	5Ch

locloop_54:
		sbb	[bp+si],cl
		loop	locloop_68		; Loop if cx > 0

		adc	ax,1437h
		adc	ax,4EE2h
		push	es
		loop	$+6Ch			; Loop if cx > 0

		adc	ax,4EE2h
		inc	si
		loop	locloop_69		; Loop if cx > 0

		adc	ax,4EE2h

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_62:
		inc	si
		cmc				; Complement carry
		add	[bp+di],ax
                           lock	or	ch,cl
		add	ax,6AE2h
		adc	ax,4EE2h
		db	 36h,0E2h, 6Ah, 14h, 15h,0E2h
		db	 4Eh, 06h

locloop_58:
		loop	locloop_70		; Loop if cx > 0

		adc	ax,4EE2h
		inc	si

locloop_59:
		loop	locloop_71		; Loop if cx > 0

		adc	ax,5CE2h
		dec	ax

locloop_60:
		loop	locloop_72		; Loop if cx > 0

		adc	ax,4EE2h
		db	 36h,0E2h, 6Ah, 14h, 15h,0E2h

locloop_61:
		dec	si
		push	es
		loop	locloop_73		; Loop if cx > 0

		adc	ax,4EE2h
		inc	si
		loop	locloop_74		; Loop if cx > 0

		adc	ax,4EE2h
		inc	si
		test	byte ptr [bx+di],94h
		add	ax,6AE2h
		adc	ax,4EE2h
		db	 36h,0E2h, 6Ah, 14h, 15h,0E2h
		db	 4Eh

locloop_66:
		push	es
		loop	locloop_75		; Loop if cx > 0

		adc	ax,0E214h
		dec	si

locloop_67:
		db	 26h,0E2h, 6Ah, 15h, 14h,0E2h
		db	 4Eh

locloop_68:
		db	 26h,0E2h, 6Ah, 14h, 15h,0E2h
		db	 4Eh, 26h,0E2h, 6Ah, 15h, 37h
		db	 14h, 15h,0E2h

locloop_69:
		dec	si
		push	es
		loop	locloop_76		; Loop if cx > 0

		adc	ax,4EE2h
		inc	si
		loop	locloop_77		; Loop if cx > 0

		adc	ax,4EE2h
		inc	si
		cmc				; Complement carry
		add	[bp+si],ax
                           lock	or	ch,cl
		add	ax,6AE2h
		adc	ax,4EE2h

locloop_70:
		db	 36h,0E2h, 6Ah, 14h, 15h,0E2h

locloop_71:
		dec	si
		push	es
		loop	locloop_78		; Loop if cx > 0

		adc	ax,4EE2h
		inc	si
		loop	locloop_79		; Loop if cx > 0

		adc	ax,4EE2h
		inc	si
		loop	locloop_80		; Loop if cx > 0

		adc	ax,4EE2h

locloop_73:
		db	 36h,0E2h, 6Ah, 14h, 15h,0E2h

locloop_74:
		dec	si
		push	es
		loop	locloop_81		; Loop if cx > 0

		adc	ax,4EE2h
		inc	si
		loop	locloop_82		; Loop if cx > 0

		adc	ax,4EE2h
		inc	si
		test	byte ptr [bx+di],8
		push	es
		loop	locloop_83		; Loop if cx > 0

		adc	ax,4EE2h

locloop_75:
		db	 36h,0E2h, 6Ah, 14h, 05h, 15h
		db	 44h, 15h, 44h,0FBh,0BFh, 03h
		db	0FFh,0F0h, 0Ah,0E9h, 05h,0FFh
		db	0F0h, 0Ah,0E9h, 05h,0FFh,0F0h
		db	 0Ah,0E9h, 05h,0FFh, 80h
		db	4Dh

locloop_76:
		dec	sp
		dec	ax
		dec	dx
		dec	di
		dec	cx
		inc	bp

locloop_77:
		db	'>@AC<RQTVX'
		db	80h
		db	'JHELCFI@2-05740'

locloop_78:
		xor	byte ptr [bx],2Eh	; '.'
		sub	ax,3532h

locloop_79:
		cmp	[si],di
		inc	bp
		inc	bx
		inc	ax
		inc	cx

locloop_80:
		dec	ax
		db	 3Eh, 3Dh, 80h
		db	'>@AC<ERQT'

locloop_81:
		dec	bp
		push	si
		pop	ax
		xor	ch,[di]
		xor	[bp+si],dh
		xor	al,2Eh			; '.'
		sub	ax,802Bh
		xor	ax,3937h
		cmp	al,21h			; '!'
		db	 26h, 24h, 22h, 1Dh, 1Fh, 1Dh
		db	 1Ch, 80h, 26h, 24h, 2Ah, 22h
		db	 2Eh, 29h, 33h, 18h,0FFh, 0Ch
		db	 0Bh, 18h, 17h, 60h, 5Fh, 48h
		db	 47h, 08h, 07h, 10h, 0Fh, 30h
		db	 31h, 30h, 2Eh, 10h, 0Fh, 30h
		db	 31h, 60h, 5Fh, 18h,0FFh, 0Ch
		db	 0Bh, 18h, 17h, 03h, 03h, 12h
		db	 11h, 03h, 03h, 18h,0FFh, 0Ch
		db	 0Bh, 18h, 17h, 60h, 5Fh, 48h
		db	 47h, 08h, 07h, 10h, 0Fh, 30h
		db	 31h, 48h, 47h, 0Ch, 0Bh, 30h
		db	 2Eh, 60h, 5Fh, 18h,0FFh, 24h
		db	0FFh, 18h, 17h, 0Ch, 0Bh, 24h
		db	0FFh, 06h, 05h, 12h, 11h, 30h
		db	0FFh, 08h, 07h, 60h, 5Fh, 48h
		db	 47h, 08h, 07h, 10h, 0Fh, 30h
		db	 31h, 0Ch, 0Bh, 30h, 2Eh, 60h
		db	 5Fh, 18h,0FFh, 18h, 17h, 03h
		db	 03h, 12h, 11h, 30h,0FFh, 0Ch
		db	 0Bh, 04h, 03h, 06h, 05h, 08h
		db	 07h, 30h, 31h, 24h, 22h, 06h
		db	 05h, 30h, 2Eh, 18h, 17h, 60h
		db	 5Fh, 0Ch, 0Bh, 12h, 11h, 08h
		db	 07h, 30h,0FFh, 0Ch, 0Bh, 06h
		db	 05h, 12h, 11h, 60h,0FFh, 48h
		db	0FFh, 10h,0FFh, 18h,0FFh, 08h
		db	 07h, 10h,0FFh, 60h,0FFh, 48h
		db	0FFh, 0Ch, 01h, 00h, 01h, 06h
		db	 01h, 18h, 01h, 00h, 01h, 08h
		db	 01h, 30h, 01h, 0Ch, 01h, 04h
		db	 23h, 00h, 8Eh, 00h, 3Ch, 00h
		db	0D2h, 00h, 2Fh, 00h, 83h, 00h
		db	 8Ch, 02h, 1Dh, 03h,0D2h, 03h
		db	0E4h, 01h,0ECh, 05h, 28h, 06h
		db	0ADh, 05h, 7Dh, 06h, 0Ch,0B0h
		db	 01h, 05h, 01h, 01h,0F0h, 00h
		db	 80h,0E5h, 17h,0D5h,0E1h, 00h
		db	0D8h,0FBh, 92h, 02h,0F0h, 00h
		db	 80h,0E5h, 27h,0E1h, 02h, 10h
		db	0D5h,0D8h,0FBh, 92h, 02h,0F0h
		db	 00h,0E5h, 1Fh,0F0h, 00h, 80h
		db	0D5h,0D8h,0FCh, 4Ch, 03h, 25h
		db	 81h,0D4h,0CEh,0FCh, 91h, 03h
		db	 33h, 35h, 36h, 38h, 33h, 15h
		db	'F8P3568cefefhP35683'
		db	15h
		db	'F8P35683'
		db	15h
		db	'F83568cefhj'
		db	0E4h, 61h,0C1h,0FBh, 40h, 00h
		db	0F0h, 00h,0E5h
		db	2Fh

locloop_84:
		loopz	locloop_84		; Loop if zf=1, cx>0

;*		adc	al,bl
		db	 10h,0D8h		;  Fixup - byte match
		sti				; Enable interrupts
		inc	ax
;*		add	al,dh
		db	 00h,0F0h		;  Fixup - byte match
		add	ds:data_12e[bx+si],al
;*		aam	0D8h			; undocumented inst
		db	0D4h,0D8h		;  Fixup - byte match
		cmc				; Complement carry
;*		or	al,dh
		db	 08h,0F0h		;  Fixup - byte match
		add	[bx+si+3Ah],dh
		cmp	bh,[bx+si+35h]
		xor	[bp+3Ah],dh
		xor	[bx+si-1Ch],bh
		xor	[bx+si],si
		jcxz	$+72h			; Jump if cx=0
		cmp	bh,[bp+si]
		cmp	[bx+si],dh
		xor	ax,0F035h
		add	word ptr ds:[97F6h],ax
		add	[bx+si],bl
		sbb	ah,ah
;*		adc	bx,sp
		db	 11h,0E3h		;  Fixup - byte match
		and	ax,3838h
		sbb	byte ptr ds:[4A18h],dl
		dec	ax
		inc	si
		adc	ax,1513h
		push	dx
;*		and	ch,2Fh			; '/'
		db	 82h,0E5h, 2Fh		;  Fixup - byte match
		loopz	$+4			; Loop if zf=1, cx>0

;*		fdivp	st(4),st		; st(#)=st(#)/st, pop
		db	0DEh,0FCh		;  Fixup - byte match
		pop	cx
;*		add	bx,di
		db	 01h,0FBh		;  Fixup - byte match
		mov	es,[bx+si]
                           lock	add	byte ptr ss:[7E5h][bp+di],al
;*		sal	ax,cl			; Shift w/zeros fill
		db	0D3h,0F0h		;  Fixup - byte match
;*		add	si,bx
		db	 01h,0DEh		;  Fixup - byte match
		jnc	loc_86			; Jump if carry=0
		jcxz	loc_85			; Jump if cx=0
		cmp	ah,ah
		jae	loc_87			; Jump if above or =
		jcxz	$+3Ch			; Jump if cx=0
		cmp	ah,ah
		jae	$+42h			; Jump if above or =
		jcxz	$+3Ch			; Jump if cx=0
		cmp	ah,ah
		xor	cx,ax
                           lock	add	al,[bp+di]
		add	ax,cx
		add	ax,[bp+di]
		db	0C1h, 03h, 03h,0C1h, 03h, 03h
		db	 03h,0C1h, 03h, 03h, 03h,0E5h
		db	 07h, 13h,0E3h, 1Ah, 1Ah,0E4h
		db	 23h, 30h,0E3h, 1Ah, 1Ah,0E4h
		db	 23h, 30h,0E3h, 1Ah, 1Ah,0E4h
		db	 23h, 30h,0E3h, 1Ah, 1Ah
loc_85:
		in	al,13h			; port 13h ??I/O Non-standard
		db	0C8h, 03h
loc_86:
		add	ax,cx
		add	ax,[bp+di]
		db	0C1h, 03h
loc_87:
		add	ax,cx
		add	ax,[bp+di]
		add	ax,cx
		add	ax,[bp+di]
		add	sp,bp
		pop	es
		inc	bx
		inc	bx
		jcxz	loc_88			; Jump if cx=0
		pop	dx
		pop	dx
		adc	bx,0FE5h
;*		fidiv	word ptr [bx+di+41h]	; st = st / memory
		db	0DEh, 71h, 41h		;  Fixup - byte match
		inc	cx
		xor	[bp+di],sp
		and	ax,7BE3h
		dec	bx
		dec	bx
		cmp	bp,[bp+si]
		sub	[bp+si+4Ah],bh
		dec	dx
                           lock	add	cx,[bp+si]
;*		and	ch,17h
		db	 82h,0E5h, 17h		;  Fixup - byte match
		rcr	cl,cl			; Rotate thru carry
		sub	ch,[bp+si]
		cld				; Clear direction
		pop	cx
;*		add	bx,di
		db	 01h,0FBh		;  Fixup - byte match
		rol	byte ptr [bx+si],cl	; Rotate
                           lock	add	dx,bx
data_555	db	'#### ### #######!!!! !!! !!!!!!!'
		db	'#### ### #######'
loc_88:
		and	[bx+di],sp
		and	[bx+di],sp
		and	[bx+di],ah
		and	[bx+di],sp
		and	[bx+di],ah
		and	[bx+di],sp
		and	[bx+di],sp
		and	[bx+di],sp
		jcxz	$+3Dh			; Jump if cx=0
		cmp	di,[bp+di]
		cmp	bh,[bp+si]
		cmp	ah,ah
		xor	[bx+di],si
;*		xor	bx,sp
		db	 31h,0E3h		;  Fixup - byte match
		cmp	di,[bp+di]
		cmp	di,[bp+si]
		inc	ax
		cmp	di,[bp+di]
		cmp	di,[bp+si]
		cmp	bh,[bp+si]
		db	'666;;;:@;;;:::'
		db	0E4h, 31h, 31h, 31h,0E3h
		db	';;;:@;;;:::666;;;:::888666555'
		db	0FEh,0F0h, 00h,0CDh, 00h,0CFh
		db	 03h,0D0h, 03h,0CEh, 0Ah,0D1h
		db	 0Ah, 20h,0C0h, 20h,0C0h, 20h
		db	0C0h, 20h,0C0h, 20h,0C0h, 20h
		db	0C0h, 20h,0A8h,0C3h, 08h, 08h
		db	0F0h, 00h,0F5h, 0Ch,0F0h, 00h
		db	0C3h, 11h, 01h, 09h, 11h, 01h
		db	 11h, 09h, 11h, 01h, 11h, 09h
		db	 11h, 11h, 01h, 09h, 01h,0F6h
		db	 05h, 02h, 11h, 01h, 09h, 11h
		db	 01h, 11h, 09h, 11h, 01h, 11h
		db	 09h, 11h, 11h, 01h,0C1h, 08h
		db	 08h, 08h, 08h,0C7h, 11h, 11h
		db	 11h, 11h, 12h,0C6h, 08h, 08h
		db	 08h,0C7h, 11h, 11h, 11h, 11h
		db	0C6h,0CAh, 08h, 0Ah, 08h, 08h
		db	0CAh,0F8h, 08h, 08h, 08h,0C7h
		db	 11h, 11h, 11h, 11h, 12h,0C6h
		db	 08h, 08h, 08h,0C7h
		db	8 dup (11h)
		db	0F5h, 1Ch,0F0h, 00h,0C3h, 32h
		db	 30h, 28h, 18h, 10h, 10h,0F6h
		db	 5Dh, 02h,0C3h, 32h, 30h, 28h
		db	 18h, 38h, 08h, 38h, 08h, 38h
		db	 08h,0F5h, 14h,0F0h, 00h,0C3h
		db	 30h, 30h, 28h, 18h, 10h, 10h
		db	0F6h, 76h, 02h,0C3h, 30h, 30h
		db	 28h, 18h, 08h, 08h,0FBh, 01h
		db	 02h,0F0h, 00h, 80h,0E5h, 17h
		db	0D4h,0F0h, 00h,0E0h, 82h,0F5h
		db	 08h,0F0h, 00h
		db	 70h, 36h, 36h, 75h, 31h, 30h
		db	 73h
		db	'60u80p665011'		; Data table (indexed access)
		db	0F7h,0B6h, 02h,0F0h, 01h, 03h
		db	0FBh, 98h, 02h,0F0h, 01h,0F0h
		db	 03h, 03h
		db	'333UVXa%%USUv'
		db	0F0h, 04h, 03h, 13h, 12h, 15h
		db	0E3h
		db	'*0CEFHFESEFHapCEFHFESEFHj`'
		db	0FCh,0F3h, 02h,0F0h, 05h, 05h
		db	0E3h,0FBh, 92h, 02h,0F0h, 05h
		db	0E4h, 1Bh, 1Ah,0E4h, 11h,0E3h
		db	 1Bh, 1Ah, 10h, 1Bh, 1Ah, 16h
		db	 1Bh, 1Ah, 10h, 1Bh, 1Ah,0E4h
		db	 11h,0E3h, 1Bh, 1Ah, 10h, 1Bh
		db	 1Ah, 16h, 1Bh, 2Ah, 2Ah, 0Ah
		db	0E4h, 21h, 21h, 01h, 23h, 23h
		db	 03h, 25h, 25h,0FEh,0F0h, 00h
		db	0F0h, 00h, 80h,0E5h, 17h,0D4h
		db	0FCh, 4Ch, 03h,0F0h, 01h, 25h
		db	0E5h, 17h,0D3h, 81h, 35h, 35h
		db	 82h,0D3h,0E5h, 17h,0E1h, 10h
		db	0FCh, 91h, 03h, 80h,0E5h, 27h
		db	0D3h,0E1h, 1Fh,0F0h, 02h, 40h
		db	0FCh,0F3h, 02h, 15h

locloop_89:
		loopz	locloop_90		; Loop if zf=1, cx>0


locloop_90:
		sti				; Enable interrupts
		pop	ds
		add	si,ax
		add	dh,ch
;*		or	al,dh
		db	 08h,0F0h		;  Fixup - byte match
		add	ah,[bx+si]
		adc	dx,[bp+di]
;*		and	bx,sp
		db	 21h,0E3h		;  Fixup - byte match
		sbb	dl,[bx+si]
		sub	ah,ah
		adc	dx,[bx+si]
		and	[di],dx
		adc	[bx+si],ah
		adc	dx,[bp+di]
;*		adc	bx,sp
		db	 11h,0E3h		;  Fixup - byte match
		adc	[bx+si],bl
;*		sbb	bh,dh
		db	 18h,0F7h		;  Fixup - byte match
		jc	loc_92			; Jump if carry Set
loc_91:
                           lock	add	di,[bp+si-1Ch]
		sti				; Enable interrupts
		push	ax
		add	si,ax
		add	cx,[bp+si]
		cmp	bh,[bp+si]
		cmp	ah,ah
		push	cx
		push	bx
		push	bp
		jcxz	loc_95			; Jump if cx=0
		in	al,21h			; port 21h, 8259-1 int IMR
		and	[bx+di-1Dh],dx
		pop	bx
		in	al,51h			; port 51h ??I/O Non-standard
		jnc	loc_91			; Jump if carry=0
                           lock	add	al,0Bh
		sbb	bl,[bx+si]
		in	al,12h			; port 12h ??I/O Non-standard
loc_93:
		jcxz	loc_93			; Jump if cx=0
                           lock	add	al,43h			; 'C'
		inc	bx
		xor	[bp+di-1Dh],al
		dec	dx
		in	al,41h			; port 41h, 8253 timer 1 refsh
		inc	bx
		xor	[bp+di+43h],al
		inc	si
		dec	ax
		inc	si
		inc	bp
		inc	cx
		inc	cx
                           lock	add	ax,4130h
		dec	ax
		inc	cx
		jcxz	$+1Dh			; Jump if cx=0
		sbb	ah,ah
;*		adc	bx,sp
		db	 11h,0E3h		;  Fixup - byte match
		sbb	ah,ah
		inc	bx
		inc	bx
		adc	[bp+di-1Dh],al
		dec	dx
		in	al,41h			; port 41h, 8253 timer 1 refsh
		inc	bx
		adc	[bp+di+43h],al
		inc	si
		dec	ax
		inc	si
		inc	bp
		inc	cx
		inc	cx
		xor	[bx+di+48h],al
		inc	cx
		inc	ax
		inc	cx
		dec	ax
		inc	cx
		dec	ax
		inc	cx
		inc	ax
		inc	cx
		db	0FEh,0F0h, 00h, 83h,0E5h, 0Fh
		db	0D2h,0F0h, 01h,0DEh,0F5h, 09h
		db	0F0h, 01h,0F5h, 0Ch,0F0h, 01h
		db	33h
loc_94:
                           lock	add	al,50h			; 'P'
		jcxz	loc_106			; Jump if cx=0
		dec	dx
		in	al,0F6h			; port 0F6h ??I/O Non-standard
loc_96:
		loopz	locloop_97		; Loop if zf=1, cx>0

		not	word ptr ds:data_21e
		in	ax,2Fh			; port 2Fh ??I/O Non-standard
loc_98:
                           lock	add	ax,5353h
		in	ax,27h			; port 27h ??I/O Non-standard
		push	bx
		push	bx
loc_99:
		in	ax,1Fh			; port 1Fh ??I/O Non-standard
		push	bx
		push	bx
		in	ax,17h			; port 17h ??I/O Non-standard
		push	bx
		push	bx
loc_100:
		push	bx
		in	ax,0Fh			; port 0Fh, DMA-1 all mask bit
		push	bx
		push	bx
		push	bx
		in	ax,7			; port 7, DMA-1 bas&cnt ch 3
loc_101:
		inc	bx
		in	ax,0Fh			; port 0Fh, DMA-1 all mask bit
		jcxz	loc_109			; Jump if cx=0
		dec	dx
		in	al,0FBh			; port 0FBh ??I/O Non-standard
loc_102:
;*		fld	qword ptr [bp+di]	; Push onto stack
		db	0DDh, 03h		;  Fixup - byte match
                           lock	add	ax,0E541h
		das				; Decimal adjust
		push	bx
loc_103:
		push	bx
		in	ax,27h			; port 27h ??I/O Non-standard
		push	bx
		push	bx
		in	ax,1Fh			; port 1Fh ??I/O Non-standard
		push	bx
loc_104:
		push	bx
		in	ax,17h			; port 17h ??I/O Non-standard
		push	bx
		push	bx
		push	bx
		in	ax,0Fh			; port 0Fh, DMA-1 all mask bit
loc_105:
		push	bx
		push	bx
		push	bx
		in	ax,7			; port 7, DMA-1 bas&cnt ch 3
		db	 63h, 63h
loc_106:
		in	ax,0Fh			; port 0Fh, DMA-1 all mask bit
		jcxz	loc_110			; Jump if cx=0
		jp	$+7Ch			; Jump if parity=1
                           lock	add	ax,0E582h
;*		pop	cs			; Dangerous-8088 only
		db	0Fh			;  Fixup - byte match
;*		sal	al,cl			; Shift w/zeros fill
		db	0D2h,0F0h		;  Fixup - byte match
		push	es
		add	[bx+di],dx
		adc	[bx+di],sp
		xor	si,[di]
		jcxz	$+0Dh			; Jump if cx=0
		sbb	bx,[bp+di]
		sub	di,[bp+si]
		cmp	[bp+si],cl
		sbb	bl,[bp+si]
		dec	dx
		test	dl,cl
		in	ax,17h			; port 17h ??I/O Non-standard
		pop	dx
		pop	dx
		in	al,53h			; port 53h ??I/O Non-standard
		push	bx
loc_109:
		in	al,81h			; port 81h, DMA page reg ch 2
		push	bp
		jcxz	loc_94			; Jump if cx=0
		push	bx
		push	ax
		push	bx
		in	al,81h			; port 81h, DMA page reg ch 2
		push	bp
		jcxz	loc_96			; Jump if cx=0
		push	bx
		push	ax
		push	bx
		in	al,81h			; port 81h, DMA page reg ch 2
		push	bp
		jcxz	loc_98			; Jump if cx=0
		push	bx
		push	bx
		push	bx
		in	al,81h			; port 81h, DMA page reg ch 2
		push	bp
		jcxz	loc_99			; Jump if cx=0
		push	bx
		push	cx
		push	cx
		in	al,81h			; port 81h, DMA page reg ch 2
		push	bp
		jcxz	loc_100			; Jump if cx=0
		push	cx
		push	ax
		push	cx
		in	al,81h			; port 81h, DMA page reg ch 2
		push	bp
		jcxz	loc_101			; Jump if cx=0
		push	cx
		push	ax
		push	cx
		in	al,81h			; port 81h, DMA page reg ch 2
		push	bp
		jcxz	loc_102			; Jump if cx=0
		push	cx
		push	cx
		push	cx
		in	al,81h			; port 81h, DMA page reg ch 2
		push	bp
		jcxz	loc_103			; Jump if cx=0
		push	cx
		push	bx
		push	bx
		in	al,81h			; port 81h, DMA page reg ch 2
		push	bp
		jcxz	loc_104			; Jump if cx=0
		push	bx
		push	ax
		push	bx
		in	al,81h			; port 81h, DMA page reg ch 2
		push	bp
		jcxz	loc_105			; Jump if cx=0
		push	bx
		push	ax
		push	bx
		in	al,81h			; port 81h, DMA page reg ch 2
		push	bp
;*		jcxz	loc_107			;*Jump if cx=0
		db	0E3h, 84h		;  Fixup - byte match
		push	bx
loc_110:
		push	bx
		push	bx
		in	al,81h			; port 81h, DMA page reg ch 2
		push	bp
;*		jcxz	loc_108			;*Jump if cx=0
		db	0E3h, 84h		;  Fixup - byte match
		push	bx
		push	cx
		push	cx
		in	al,81h			; port 81h, DMA page reg ch 2
		push	bp
		jcxz	$-7Ah			; Jump if cx=0
		push	cx
		push	ax
		push	cx
		in	al,81h			; port 81h, DMA page reg ch 2
		push	bp
		jcxz	$-7Ah			; Jump if cx=0
		push	cx
		push	ax
		push	cx
		in	al,81h			; port 81h, DMA page reg ch 2
		push	bp
		jcxz	$-7Ah			; Jump if cx=0
		push	cx
		push	cx
		push	cx
		in	al,81h			; port 81h, DMA page reg ch 2
		adc	ax,1515h
		adc	ax,0E3E3h
		test	ch,[bp+di+6Bh]
		db	 6Bh, 6Ah, 6Ah, 6Ah,0E4h, 61h
		db	 61h, 61h,0E3h, 6Bh, 6Bh, 6Bh
		db	 6Ah, 70h, 81h,0E4h,0E4h, 65h
		db	 65h, 65h,0E3h,0E3h, 84h
		db	'kkkjjjfffkkk'
		db	 81h,0E4h,0E4h,0E5h, 27h, 65h
		db	 65h, 65h,0E5h, 0Fh, 65h, 65h
		db	 65h,0E5h, 17h,0E3h,0E3h, 84h
		db	 6Bh, 6Bh, 6Bh, 6Ah, 6Ah, 6Ah
		db	0E4h, 61h, 61h, 61h,0E3h, 6Bh
		db	 6Bh, 6Bh, 6Ah, 70h, 81h,0E4h
		db	0E4h, 65h, 65h, 65h,0E3h,0E3h
		db	 84h
		db	'kkkjjjfffkkkjjjhhhfffeee'
		db	0E5h, 0Fh,0F0h, 07h,0D8h,0F5h
		db	 09h,0F0h, 07h,0F5h, 0Ch,0F0h
		db	 07h, 83h,0D2h, 13h, 20h, 81h
		db	0D3h, 35h, 83h,0D2h,0E3h, 1Ah
		db	 1Ah,0E4h,0F6h, 4Fh, 05h,0F7h
		db	 87h, 45h, 13h,0E5h, 2Fh, 43h
		db	 43h,0E5h, 27h, 43h, 43h,0E5h
		db	 1Fh, 43h, 43h,0E5h, 17h, 43h
		db	 43h, 43h,0E5h, 0Fh, 43h, 43h
		db	 43h,0E5h, 07h, 13h,0E5h, 0Fh
		db	0E3h, 1Ah, 1Ah,0E4h,0FBh, 4Bh
		db	 05h,0F0h, 07h, 13h,0E5h, 2Fh
		db	 43h, 43h,0E5h, 27h, 43h, 43h
		db	0E5h, 1Fh, 43h, 43h,0E5h, 17h
		db	 43h, 43h, 43h,0E5h, 0Fh, 43h
		db	 43h, 43h,0E5h, 07h, 53h, 53h
		db	0E5h, 0Fh,0E3h, 6Ah, 6Ah, 6Ah
		db	0FBh, 39h, 04h, 03h, 06h, 90h
		db	 0Ch, 12h, 30h, 08h, 18h, 60h
		db	 10h, 78h, 0Ch, 30h, 90h, 01h
		db	 18h, 04h, 0Ch, 18h, 30h, 06h
		db	 08h, 03h, 54h, 48h, 01h, 0Ch
		db	 08h, 28h, 10h, 78h, 60h, 30h
		db	 10h, 90h, 18h, 0Ch, 3Ch, 60h
		db	 78h, 12h, 18h, 03h, 24h, 0Ch
		db	 04h, 06h, 08h, 54h, 06h, 30h
		db	 18h, 48h, 0Ch, 08h, 10h, 01h
		db	 0Ch, 24h, 18h, 04h, 06h, 08h
		db	 20h, 10h, 10h, 07h, 07h, 01h
		db	 51h, 41h, 1Dh, 00h, 40h, 81h
		db	0F3h,0F5h, 0Eh, 00h, 00h, 00h
		db	 02h, 02h, 01h, 41h,0A1h, 1Eh
		db	 00h, 50h, 43h,0F3h, 35h, 0Eh
		db	 00h, 00h, 00h, 02h, 02h, 01h
		db	0E0h, 21h, 8Eh, 00h,0F4h,0F5h
		db	 32h, 36h, 08h, 00h,0C0h,0C0h
		db	 02h, 02h, 81h, 20h, 01h, 10h
		db	 00h,0F9h,0F6h, 13h, 34h, 00h
		db	 0Eh, 15h, 15h, 05h, 05h, 01h
		db	 00h, 01h, 03h, 17h, 09h, 5Fh
		db	 11h, 0Fh, 38h, 00h, 03h, 01h
		db	0E5h, 47h, 06h, 02h, 01h, 00h
		db	 02h, 09h, 38h, 09h, 5Fh, 01h
		db	 2Fh, 87h, 00h, 04h, 00h, 11h
		db	 11h, 04h, 04h, 01h, 00h, 02h
		db	 03h, 10h, 0Bh,0DAh, 01h, 1Fh
		db	 38h, 00h, 06h, 01h,0E6h,0BBh
		db	 02h, 02h, 01h, 00h, 02h,0D2h
		db	 01h, 09h, 5Fh, 01h,0FFh, 38h
		db	 1Fh, 04h, 00h, 00h, 00h, 02h
		db	 02h, 81h, 01h, 02h,0D0h, 01h
		db	 07h, 99h, 01h,0FFh, 38h, 00h
		db	 05h,0D8h, 0Ch, 00h, 00h, 79h
		db	 07h, 5Bh, 05h,0BAh, 06h, 41h
		db	 07h, 01h
loc_111:
		pop	ds
		add	[bp+si],al
		mov	ax,300h
		lds	ax,dword ptr [bx+di]	; Load seg:offset ptr
		add	al,0D3h
		add	cl,[bx+di]
		db	0F1h, 03h, 06h,0A6h, 06h, 07h
		db	0ABh, 06h, 08h,0B0h, 06h, 09h
		db	0B5h, 06h,0F0h, 00h,0E9h, 00h
		db	 00h,0E0h, 82h,0A0h,0E5h, 78h
		db	0E6h, 59h,0E2h, 40h, 11h, 22h
		db	 12h, 23h, 00h, 23h, 00h, 34h
		db	 44h,0F0h, 00h,0E9h, 00h,0F5h
		db	 01h, 02h,0F0h, 00h,0E9h, 00h
		db	0A0h,0E5h, 78h,0E6h, 59h,0F5h
		db	 02h, 02h,0F0h, 00h,0E9h, 00h
		db	 11h, 22h, 12h, 23h, 00h, 23h
		db	 00h, 34h, 44h,0F6h, 02h, 49h
		db	 00h, 11h, 22h, 12h
		db	'#', 0
		db	'#', 0
		db	'$'
		db	'%&', 27h, '(TiW*', 27h, 'Xj'
		db	'[,', 27h, 'MGZ.(YhW()TiW*', 27h, 'X'
		db	'j[,', 27h, 'MGZ()CDp'
		db	0F0h, 01h, 0Dh, 0Ah, 08h, 09h
		db	 04h, 03h, 0Fh, 12h,0F6h, 01h
		db	 3Dh, 00h, 21h,0E9h, 01h, 20h
		db	 31h, 41h, 51h, 02h, 01h, 23h
		db	 20h, 24h, 25h, 06h, 06h, 06h
		db	 06h, 06h, 07h, 06h, 06h, 06h
		db	 06h, 06h, 67h, 07h,0FBh, 36h
		db	 00h,0FFh,0F0h, 01h,0E9h, 01h
		db	 57h, 98h

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_63:
		in	ax,6Eh			; port 6Eh ??I/O Non-standard
		out	59h,al			; port 59h ??I/O Non-standard
		loop	$+42h			; Loop if cx > 0

		jc	$+5Ah			; Jump if carry Set
		js	$+5Bh			; Jump if sign=1
		push	di
		pop	cx
		push	di
                           lock	add	cl,[bp+si]
		sbb	dh,al
		add	ch,cl
;*		add	bp,si
		db	 01h,0F5h		;  Fixup - byte match
		add	[bp+si],ax
                           lock	add	ch,cl
		add	word ptr ds:[6EE5h][bx+si],bx
		out	59h,al			; port 59h ??I/O Non-standard
		cmc				; Complement carry
		add	al,[bp+di]
                           lock	add	ch,cl
		add	[bp+si],sp
		cmp	[bx+si],ch
		cmp	[bx],ax
		cmp	[bx],ax
		or	bl,[bp+si]
		test	byte ptr [bp+si],0E2h
;*		add	dh,ah
		db	 00h,0E6h		;  Fixup - byte match
		dec	ax
		cmc				; Complement carry
		add	al,[bp+si]
                           lock	add	ch,cl
		add	word ptr ds:[7FE5h][bx+si],bp
		dec	bx
		dec	sp
		dec	bp
		dec	dx
		cbw				; Convrt byte to word
		in	ax,73h			; port 73h ??I/O Non-standard
		dec	bx
		dec	sp
		dec	bp
		dec	dx
		mov	al,byte ptr ds:[69E5h]
		dec	bx
		dec	sp
		dec	si
		dec	bp
		dec	dx
		dec	ax
		inc	dx

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_64:
		inc	cx
		pop	di
		xor	[bx+si],di
		test	al,0E5h
		jg	loc_112			; Jump if >
		dec	bp
		jmp	loc_278
			                        ;* No entry point to code
		inc	cx
		cbw				; Convrt byte to word
		in	ax,73h			; port 73h ??I/O Non-standard
		inc	dx
		inc	bx
		inc	ax
		inc	cx
		mov	al,byte ptr ds:[69E5h]
		inc	dx
		inc	bx
		inc	sp
		inc	ax
		inc	bp
		inc	si
		inc	di
		dec	ax
		db	 69h, 68h, 6Ah, 35h, 3Ah,0A8h
		db	0E5h, 7Fh, 4Bh, 4Ch, 44h, 41h
		db	 98h,0E5h, 73h, 4Bh, 4Ch, 44h
		db	 41h,0A0h,0E5h
		db	'iKLD@AMGH]3<'
		db	0A8h,0E5h, 7Fh, 4Eh, 4Fh, 4Ch
		db	0E9h, 03h, 40h, 98h,0E5h, 73h
		db	 41h, 42h, 43h, 40h,0A0h,0E5h
		db	 69h, 41h
loc_112:
		inc	dx
		inc	bx
		inc	sp
		inc	ax
		inc	bp
		inc	si
		inc	di
		dec	ax
		dec	cx
		dec	dx
		dec	ax
		inc	di
		dec	bx
		inc	si
		dec	sp
		inc	bp
		dec	bp
		inc	ax
		dec	si
		inc	ax
		inc	bp
		inc	si
		dec	bx
		test	byte ptr [bp+si],0F8h
;*		add	dh,dh
		db	 00h,0F6h		;  Fixup - byte match
;*		add	si,dx
		db	 01h,0D6h		;  Fixup - byte match
;*		add	ch,dh
		db	 00h,0F5h		;  Fixup - byte match
		add	[si],ax
                           lock	add	ch,cl
		add	ax,[bp+47h]
		dec	dx
		dec	di
		inc	si
		inc	di
		dec	dx
		dec	di
		inc	si
		inc	di
		dec	dx
		dec	di
		dec	cx
		dec	dx
		dec	ax
		inc	di
		dec	bx
		jmp	loc_279
sub_60		endp

		db	 41h, 42h
data_561	dw	4043h			; Data table (indexed access)
		db	'ABC@ABAD@E'
		db	0F6h, 01h, 8Ah, 01h
		db	'@@@@@F@@@@@Ff'
		db	0FBh,0CFh, 00h,0FFh,0F0h, 02h
		db	0E9h, 04h, 06h,0B0h,0E5h, 6Eh
		db	0E6h, 59h,0E1h, 32h, 40h,0E2h
		db	 40h, 27h, 38h, 28h, 39h, 06h
		db	 39h, 06h, 0Ah, 1Ah,0F0h, 02h
		db	0E9h, 04h,0F5h, 01h, 02h,0F0h
		db	 02h,0E9h, 04h,0B0h,0E5h, 6Eh
		db	0E6h, 59h,0F5h, 02h, 03h,0F0h
		db	 02h,0E9h, 04h, 27h, 38h, 28h
		db	 39h, 06h, 39h, 06h, 0Ah, 1Ah
		db	0F6h, 02h,0F0h, 01h,0E6h, 48h
		db	0F5h, 02h, 02h,0F0h, 02h,0E9h
		db	 04h,0A0h,0E5h, 7Fh
		db	 4Bh, 4Ch, 4Dh
data_562	db	4Ah			; Data table (indexed access)
		db	 98h,0E5h, 73h, 4Bh, 4Ch, 4Dh
		db	 4Ah,0A8h

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_65		proc	near
		in	ax,69h			; port 69h ??I/O Non-standard
		dec	bx
		dec	sp
		dec	si
		dec	bp
		dec	dx
		dec	ax
		inc	di
		inc	bx
		pop	di
		xor	di,[bx+si]
		mov	al,byte ptr ds:[7FE5h]
		dec	sp
		dec	bp
		jmp	$+4008h
sub_65		endp

			                        ;* No entry point to code
		inc	cx
		test	al,0E5h
		jnc	$+44h			; Jump if carry=0
		inc	bx
		inc	ax
		inc	cx
		cbw				; Convrt byte to word
		in	ax,69h			; port 69h ??I/O Non-standard
		inc	dx
		inc	bx
		inc	sp
		inc	ax
		inc	bp
		inc	si
		inc	di
		dec	ax
		db	 69h, 68h, 6Ah, 35h, 3Ah,0A0h
		db	0E5h, 7Fh, 4Bh, 4Ch, 44h, 41h
		db	 98h,0E5h, 73h, 4Bh, 4Ch, 44h
		db	 41h,0A8h,0E5h
		db	'iKLD@AMGH]3<'
		db	0A0h,0E5h, 7Fh, 4Eh, 4Fh, 4Ch
		db	0E9h, 06h, 40h,0A8h,0E5h, 73h
		db	 41h, 42h, 43h, 40h, 98h,0E5h
		db	'iABCD@EFGHIJHGKFLEM@N@EFK'
		db	0F6h, 02h, 06h, 02h,0F6h, 01h
		db	0E4h, 01h,0F5h, 01h, 04h,0F0h
		db	 02h,0E9h, 06h
		db	'FGJOFGJOFGJOIJHGK'
		db	0E9h, 07h
		db	'@ABC@ABC@ABAD@E'
		db	0F6h, 01h
loc_113:
		cbw				; Convrt byte to word
		add	al,[bx+si+40h]
		inc	ax
		inc	ax
		inc	ax
		inc	si
		inc	ax
		inc	ax
		inc	ax
		inc	ax
		inc	ax
		inc	si
		db	 66h,0FBh,0DDh, 01h,0FFh,0F0h
		db	 02h,0E9h, 07h,0A0h,0E5h, 78h
		db	0E6h, 6Ah,0E2h, 40h, 37h, 38h
		db	 56h, 06h, 56h, 06h, 37h,0F0h
		db	 02h,0E9h, 07h,0F5h, 01h, 02h
		db	0F0h, 02h,0E9h, 07h,0F5h, 02h
		db	 06h,0F0h, 02h,0E9h, 07h
		db	'8HH8HH8HH8HH'
		db	0F6h, 02h,0F3h, 02h,0F5h, 02h
		db	 02h,0F0h, 02h,0E9h, 07h,0F5h
		db	 03h, 02h,0F0h, 02h,0E9h, 07h
		db	'8HH8HH8HH8HH'
		db	0F6h, 03h, 11h, 03h,0F5h, 03h
		db	 02h,0F0h, 02h,0E9h, 07h
		db	'9II9II9II9II'
		db	0F6h, 03h, 28h, 03h,0F5h, 03h
		db	 02h,0F0h, 02h,0E9h, 07h
		db	':JJ:JJ:JJ:JJ'
		db	0F6h, 03h, 3Fh, 03h,0F5h, 03h
		db	 02h,0F0h, 02h,0E9h, 07h
		db	';KK;KK;KK;KK'
		db	0F6h, 03h, 56h, 03h,0F6h, 02h
		db	 0Ah, 03h,0F6h, 01h,0ECh, 02h
		db	0F5h, 01h, 04h,0F0h, 02h,0E9h
		db	 07h
		db	'<LL<LL<LL<LL=MM=MM=MM=MM'
		db	0F6h, 01h, 75h, 03h
		db	'KKKKKFKKKKKF'
		db	0E1h, 00h

locloop_114:
		inc	ax
		jnp	$+80h			; Jump if not parity
		add	byte ptr ds:[7Eh],bh
		cmp	di,[bp]
		cmp	[bp],bh
		db	 36h, 7Eh, 00h, 33h, 7Eh, 00h
		db	 30h, 7Eh, 00h, 2Dh, 7Eh, 00h
		db	 2Bh, 7Eh, 00h, 28h, 7Eh, 00h
		db	 25h, 7Eh, 00h, 23h, 7Eh, 00h
		db	 20h, 7Eh, 00h, 1Dh, 7Eh, 00h
		db	 1Ah, 7Eh, 00h, 18h, 7Eh, 00h
		db	 14h, 7Eh, 00h, 11h, 7Eh, 00h
		db	 0Eh, 7Eh, 00h, 0Bh, 7Eh, 00h
		db	 09h, 7Eh, 00h, 06h, 7Eh, 00h
		db	 03h, 7Eh, 00h, 00h,0E1h, 00h
		db	 40h,0FBh,0E5h, 02h,0FFh,0F0h
		db	 02h,0E9h, 07h,0E5h, 7Fh,0E7h
		db	 0Ah, 06h,0E2h, 6Ah,0F0h, 03h
		db	 08h, 06h,0F0h, 03h,0E9h, 07h
		db	0F5h, 01h, 02h,0F0h, 03h,0E9h
		db	 07h, 18h,0E2h, 4Eh, 1Fh,0E2h
		db	 5Ch, 29h,0E2h, 4Eh, 2Fh, 1Fh
		db	0E2h, 6Ah,0E9h, 08h, 20h,0E2h
		db	 4Eh, 21h, 11h,0E2h, 6Ah, 22h
		db	0E2h, 4Eh, 21h, 11h,0E2h, 6Ah
		db	 20h,0E2h, 4Eh, 21h, 11h,0E2h
		db	 6Ah, 22h,0E2h, 4Eh, 11h,0E2h
		db	 6Ah, 22h,0E2h, 4Eh, 11h,0E2h
		db	 6Ah, 20h,0E2h, 4Eh, 21h, 11h
		db	0E2h, 6Ah, 22h,0E2h, 4Eh, 21h
		db	 11h,0E2h, 6Ah, 20h,0E2h, 4Eh
		db	 21h,0E2h, 6Ah, 12h,0E2h, 4Eh
		db	 21h, 21h, 11h,0E2h, 6Ah, 20h
		db	0E2h, 4Eh, 21h, 11h,0E2h, 6Ah
		db	 22h,0E2h, 4Eh, 21h, 11h,0E2h
		db	 6Ah, 20h,0E2h, 4Eh, 21h, 11h
		db	0E2h

locloop_115:
		db	 6Ah, 22h

locloop_116:
		loop	$+50h			; Loop if cx > 0

;*		adc	dx,sp
		db	 11h,0E2h		;  Fixup - byte match
		db	 6Ah, 22h,0E2h, 4Eh, 11h,0E2h
		db	 6Ah, 20h,0E2h, 4Eh, 21h, 11h
		db	0E2h, 6Ah, 22h,0E2h
		db	4Eh

locloop_117:
		and	[bx+di],dx
		loop	$+6Ch			; Loop if cx > 0

;*		and	dl,ah
		db	 20h,0E2h		;  Fixup - byte match
		pop	sp
		and	sp,dx
		db	 6Ah, 12h,0E2h, 4Eh, 21h, 21h
		db	 11h

locloop_118:
		loop	$+6Ch			; Loop if cx > 0

;*		and	dl,ah
		db	 20h,0E2h		;  Fixup - byte match
		dec	si
		and	[bx+di],dx

locloop_119:
		loop	$+6Ch			; Loop if cx > 0

		and	ah,dl
		dec	si
		and	[bx+di],dx
		loop	locloop_120		; Loop if cx > 0

;*		and	dl,ah
		db	 20h,0E2h		;  Fixup - byte match
		dec	si
		and	[bx+di],dx
		loop	$+6Ch			; Loop if cx > 0

		and	ah,dl
		dec	si
;*		adc	dx,sp
		db	 11h,0E2h		;  Fixup - byte match
		db	 6Ah, 22h,0E2h, 4Eh, 11h,0E2h
		db	 6Ah, 20h,0E2h, 4Eh, 21h, 11h
		db	0E2h, 6Ah, 22h,0E2h, 4Eh, 21h
		db	0E2h, 6Ah, 30h, 30h, 24h,0F5h
		db	 02h, 02h,0F0h, 03h,0E9h, 08h
		db	 12h,0E2h, 4Eh, 11h,0E2h, 5Ch
		db	 25h,0E2h, 4Eh, 21h, 11h,0E2h
		db	 6Ah, 20h,0E2h, 4Eh, 21h, 11h
		db	0E2h, 6Ah, 22h,0E2h, 4Eh, 21h
		db	 11h,0E2h, 6Ah, 20h,0E2h, 4Eh
		db	 21h, 11h,0E2h, 6Ah, 22h,0E2h
		db	 4Eh, 11h,0E2h, 6Ah, 22h,0E2h
		db	 4Eh, 11h,0E2h, 6Ah, 20h,0E2h
		db	 4Eh, 21h, 11h,0E2h, 6Ah, 22h
		db	0E2h, 4Eh, 21h, 11h,0E2h, 6Ah
		db	 20h,0E2h
		db	 4Eh, 21h

locloop_120:
		loop	locloop_124		; Loop if cx > 0

		adc	ah,dl
		dec	si
		and	[bx+di],sp
;*		adc	dx,sp
		db	 11h,0E2h		;  Fixup - byte match
		db	 6Ah, 20h,0E2h, 4Eh, 21h, 11h
		db	0E2h, 6Ah, 22h,0E2h, 4Eh, 21h
		db	 11h,0E2h, 6Ah, 20h,0E2h, 4Eh
		db	 21h, 11h,0E2h, 6Ah, 22h,0E2h
		db	 4Eh, 11h,0E2h, 6Ah, 22h,0E2h
		db	 4Eh, 11h,0E2h, 6Ah, 20h,0E2h
		db	 4Eh, 21h, 11h,0E2h, 6Ah, 22h
		db	0E2h, 4Eh, 21h, 11h

locloop_121:
		loop	locloop_125		; Loop if cx > 0

;*		and	dl,ah
		db	 20h,0E2h		;  Fixup - byte match
		pop	sp
		and	sp,dx
		db	 6Ah, 12h,0E2h, 4Eh, 21h, 21h
		db	 11h

locloop_122:
		loop	$+6Ch			; Loop if cx > 0

;*		and	dl,ah
		db	 20h,0E2h		;  Fixup - byte match
		dec	si
		and	[bx+di],dx

locloop_123:
		loop	locloop_126		; Loop if cx > 0

		and	ah,dl
		dec	si
		and	[bx+di],dx
		loop	locloop_127		; Loop if cx > 0

;*		and	dl,ah
		db	 20h,0E2h		;  Fixup - byte match
		dec	si
		and	[bx+di],dx
		loop	locloop_128		; Loop if cx > 0

		and	ah,dl
		dec	si
;*		adc	dx,sp
		db	 11h,0E2h		;  Fixup - byte match
		db	 6Ah, 22h,0E2h, 4Eh, 11h,0E2h
		db	 6Ah, 20h,0E2h
		db	 4Eh, 21h

locloop_124:
;*		adc	dx,sp
		db	 11h,0E2h		;  Fixup - byte match
		db	 6Ah, 22h,0E2h, 4Eh, 21h, 11h
		db	0E2h, 6Ah, 20h,0E2h, 4Eh, 21h
		db	0E2h, 6Ah, 12h,0E2h, 4Eh, 21h
		db	 21h, 11h,0E2h, 6Ah, 20h,0E2h
		db	 4Eh, 21h, 11h,0E2h, 6Ah, 22h
		db	0E2h, 4Eh, 21h, 11h,0E2h, 6Ah
		db	 20h,0E2h, 4Eh, 21h, 11h,0E2h
		db	 6Ah, 22h,0E2h, 4Eh, 11h,0E2h
		db	 6Ah, 22h,0E2h, 4Eh, 11h

locloop_125:
		loop	locloop_132		; Loop if cx > 0

;*		and	dl,ah
		db	 20h,0E2h		;  Fixup - byte match
		dec	si
		and	[bx+di],dx
		loop	locloop_133		; Loop if cx > 0

		and	ah,dl
		dec	si
;*		and	dx,sp
		db	 21h,0E2h		;  Fixup - byte match
		db	 6Ah, 30h, 30h, 24h,0F6h, 02h
		db	0C8h

locloop_126:
		add	al,0F6h
		add	[bx],ax
		add	al,0F5h
		add	[bp+si],ax
                           lock	add	bp,cx
		or	[bp+si],dl
		loop	$+50h			; Loop if cx > 0

;*		adc	dx,sp
		db	 11h,0E2h		;  Fixup - byte match
		pop	sp
		and	ax,4EE2h
		and	[bx+di],dx
		loop	$+6Ch			; Loop if cx > 0

;*		and	dl,ah
		db	 20h,0E2h		;  Fixup - byte match
		dec	si
		and	[bx+di],dx
		loop	$+6Ch			; Loop if cx > 0

		and	ah,dl
		dec	si
		and	[bx+di],dx
		loop	$+6Ch			; Loop if cx > 0

;*		and	dl,ah
		db	 20h,0E2h		;  Fixup - byte match
		dec	si
		and	[bx+di],dx
		loop	$+6Ch			; Loop if cx > 0

		and	ah,dl
		dec	si
;*		adc	dx,sp
		db	 11h,0E2h		;  Fixup - byte match
		db	 6Ah, 22h,0E2h, 4Eh, 11h,0E2h
		db	 6Ah, 20h,0E2h, 4Eh, 21h, 11h
		db	0E2h, 6Ah, 22h,0E2h, 4Eh, 21h
		db	 11h,0E2h, 6Ah, 20h,0E2h, 4Eh
		db	 21h,0E2h, 6Ah, 12h,0E2h, 4Eh
		db	 21h, 21h, 11h,0E2h
		db	 6Ah, 20h

locloop_132:
		loop	locloop_134		; Loop if cx > 0

		and	[bx+di],dx
		loop	locloop_136		; Loop if cx > 0

		and	ah,dl
		dec	si
		and	[bx+di],dx
		loop	$+6Ch			; Loop if cx > 0

;*		and	dl,ah
		db	 20h,0E2h		;  Fixup - byte match
		pop	sp
		and	sp,dx
		dec	si
;*		adc	dx,sp
		db	 11h,0E2h		;  Fixup - byte match
		db	 6Ah, 22h,0E2h, 4Eh, 11h,0E2h
		db	 6Ah, 22h,0E2h, 4Eh, 11h,0E2h
		db	 6Ah, 20h,0E2h, 4Eh, 21h, 11h
		db	0E2h, 6Ah, 22h,0E2h, 4Eh, 21h
		db	 11h,0E2h, 6Ah, 20h, 30h, 30h
		db	0F6h, 01h,0CCh, 05h, 10h,0E2h
		db	 5Ch, 32h,0E2h, 6Ah, 10h,0E2h
		db	 5Ch, 32h,0E2h, 6Ah, 10h,0E2h
		db	 5Ch, 32h,0E2h, 6Ah, 10h,0E2h
		db	 5Ch, 32h,0E2h, 6Ah, 10h

locloop_134:
		loop	locloop_137		; Loop if cx > 0

		xor	dh,byte ptr ds:[6AE2h]
;*		adc	dl,ah
		db	 10h,0E2h		;  Fixup - byte match
		pop	sp
		xor	ah,dl
		db	 6Ah, 10h,0E2h, 5Ch, 32h,0E2h
		db	 6Ah, 10h,0E2h, 5Ch, 32h,0E2h
		db	 6Ah, 10h,0E2h, 5Ch, 32h, 12h
		db	0E2h
		db	 6Ah, 30h

locloop_136:
		db	 36h, 10h,0E2h, 5Ch, 32h,0E2h
		db	 6Ah, 10h,0E2h, 5Ch, 32h,0E2h
		db	 6Ah, 10h,0E2h, 5Ch, 32h,0E2h
		db	 6Ah, 10h,0E2h, 5Ch, 32h,0FBh
		db	 00h, 04h,0FFh,0F0h, 03h,0E9h
		db	 08h,0FFh,0F0h, 03h,0E9h, 08h
		db	0FFh,0F0h, 03h,0E9h, 08h,0FFh
		db	0F0h, 03h,0E9h, 08h,0FFh, 80h
		db	'POMK<>CHJF?ADG'

locloop_137:
		dec	si
		push	dx
		dec	di
		dec	bp
		push	ax
		push	sp
		push	si
		pop	si
		or	byte ptr [bp+di+4Ah],48h	; 'H'
		cmp	al,3Fh			; '?'
		inc	bx
		inc	cx
		push	di
		inc	si
		dec	ax
		aas				; Ascii adjust
		inc	bx
		inc	sp
		dec	dx
		dec	di
		push	ax
		push	dx
		push	sp
		dec	bx
		cmp	al,41h			; 'A'
		dec	bp
		cmp	di,word ptr ds:[3B47h]
		db	'>ADJMPSVTOKHCWRVYOTQ'
		db	 80h, 4Dh, 4Bh, 4Ah
		db	'H<?CAWFH?CDJOPRTK<AM;>G;>ADJMPSV'
		db	'TOKHCWRVYOTQ'
		db	 80h, 1Fh, 24h, 22h, 20h, 2Bh
		db	 2Ch, 2Eh,0FFh, 2Ah, 26h, 2Ah
		db	 24h, 2Eh, 29h, 22h, 80h, 0Ch
		db	0FFh, 24h, 22h, 0Ch, 0Bh, 0Ch
		db	 0Dh, 30h, 2Eh, 48h, 47h, 18h
		db	 17h, 06h,0FFh, 06h, 05h
		db	'0.`_`aHI', 0Ch
		db	 0Bh, 18h,0FFh
		db	'$'
		db	'"', 0Ch, 0Dh, '0.$'
		db	'"', 0Ch
		db	 0Bh, 06h, 05h, 48h, 47h, 18h
		db	 17h, 01h, 17h, 60h, 01h, 00h
		db	 01h, 0Ch, 01h, 06h, 01h, 04h
		db	 23h, 00h, 2Ch, 00h,0A5h, 00h
		db	 94h, 01h, 9Eh, 01h,0AAh, 01h
		db	0F4h, 01h, 80h, 02h, 93h, 03h
		db	0B6h, 01h,0C8h, 04h,0F5h, 04h
		db	0B2h, 04h, 5Bh, 05h, 0Ch,0B0h
		db	 01h, 05h, 01h, 01h,0F0h, 00h
		db	 80h,0D5h,0E5h, 1Fh,0FBh,0FAh
		db	 01h,0F0h, 00h,0E5h, 1Fh,0F0h
		db	 00h, 80h,0D5h, 00h, 16h, 04h
		db	 14h, 03h, 00h, 03h, 00h, 21h
		db	0F0h, 00h,0F5h, 09h,0F0h, 00h
		db	 80h,0F5h, 0Ch,0F0h, 00h,0D5h
		db	 16h, 04h, 14h, 03h, 00h, 03h
		db	 00h, 21h,0F6h, 46h, 00h,0C0h
		db	 81h,0FCh,0FDh, 02h,0C3h,0CFh
		db	0F6h, 41h, 40h,0C0h,0CCh,0F5h
		db	 10h,0F0h, 00h,0D4h, 36h, 39h
		db	0E4h, 31h, 34h,0E3h, 36h, 39h
		db	0E4h, 31h, 34h,0E3h, 36h, 39h
		db	0E4h, 31h, 34h, 33h, 31h,0E3h
		db	 3Ch, 38h, 38h, 3Bh,0E4h, 33h
		db	 36h,0E3h, 38h, 3Bh,0E4h, 33h
		db	 36h,0E3h, 38h, 3Bh,0E4h, 33h
		db	 36h, 33h, 31h,0E3h, 3Bh, 3Ah
		db	0F6h, 62h, 00h
		db	';;;;;0;;;;;@'
		db	0C3h,0CFh,0FBh, 3Dh, 00h,0F0h
		db	 00h, 82h,0E5h, 17h,0D2h,0F0h
		db	 00h, 08h,0E4h, 01h, 50h, 50h
		db	0E3h, 08h,0F0h, 00h,0F5h, 09h
		db	0F0h, 00h,0F5h, 18h
loc_138:
;*                         lock	add	bl,dl
		db	0F0h, 00h,0D3h		;  Fixup - byte match
		add	[bx+di],si
		xor	[bx+di],ax
		xor	[bx+di],si
		add	[bx+di],si
		xor	[bx+di],ax
		xor	[bx+di],si
		idiv	byte ptr ds:[0F500h][si]	; al,ah rem = ax/data
;*		or	al,dh
		db	 08h,0F0h		;  Fixup - byte match
		add	[bx+di],al
		xor	[bx+di],si
		add	[bx+di],si
		xor	[bx+di],ax
		xor	[bx+di],si
		add	[bx+di],si
		xor	[bx+di],ax
		xor	[bx+di],si
		add	[bx+di],si
		xor	[bx+di],ax
		xor	[bx+di],si
		add	[bx+di],si
;*		xor	bx,sp
		db	 31h,0E3h		;  Fixup - byte match
		or	di,[bp+di]
		cmp	cx,[bp+di]
		cmp	di,[bp+di]
		or	di,[bp+di]
		cmp	cx,[bp+di]
		cmp	di,[bp+di]
		or	di,[bp+di]
		cmp	cx,[bp+di]
		cmp	di,[bp+di]
		or	di,[bp+di]
		cmp	cx,[bp+di]
		cmp	di,[bp+di]
		or	[bx+di],di
		cmp	[bx+di],cx
		cmp	[bx+di],di
		or	[bx+di],di
		cmp	[bx+di],cx
		cmp	[bx+di],di
		or	[bx+di],di
		cmp	[bx+di],cx
		cmp	[bx+di],di
		or	[bx+di],di
		cmp	[bx+di],cx
		cmp	[bx+di],di
		in	al,8			; port 8, DMA-1 status reg
		cmp	[bx+si],bh
		or	[bx+si],bh
		cmp	[bx+si],cl
		cmp	[bx+si],bh
		or	[bx+si],bh
		cmp	[bx+si],cl
		cmp	[bx+si],bh
		or	[bx+si],bh
		cmp	[bx+si],cl
		cmp	[bx+si],bh
		or	[bx+si],bh
;*		cmp	dh,dh
		db	 38h,0F6h		;  Fixup - byte match
		rol	byte ptr [bx+si],1	; Rotate
		idiv	byte ptr ds:[0F540h][bx+si]	; al,ah rem = ax/data
;*		adc	al,dh
		db	 10h,0F0h		;  Fixup - byte match
		add	[bx+di],cl
		cmp	[bx+di],di
		or	[bx+di],di
		cmp	[bx+di],cx
		cmp	[bx+di],di
		or	[bx+di],di
		cmp	[bp+di],cx
		cmp	di,[bp+di]
		or	di,[bp+di]
		cmp	cx,[bp+di]
		cmp	di,[bp+di]
		or	di,[bp+di]
		cmp	si,si
		cmp	al,1
		cmp	[bx+si],bh
		cmp	[bx+si],bh
		cmp	[bx+si],dh
		cmp	[bx+si],bh
		cmp	[bx+si],bh
		cmp	[bx+si],dh
		db	 68h,0E7h, 67h,0E7h, 66h,0E7h
		db	 65h,0E7h, 64h,0E7h, 63h,0E7h
		db	 62h,0E7h, 61h,0E7h,0E3h, 6Ch
		db	0E7h, 6Bh,0E7h, 6Ah,0E7h, 69h
		db	0E7h, 68h,0E7h, 67h,0E7h, 66h
		db	0E7h, 65h,0E7h, 64h,0E7h, 63h
		db	0E7h, 62h,0E7h, 61h,0E7h,0E3h
		db	 6Ch, 70h,0FBh,0B4h, 00h,0F0h
		db	 00h,0E5h, 37h,0E1h, 02h, 30h
		db	0FBh, 30h, 00h,0F0h, 00h, 80h
		db	0D5h,0E5h, 37h, 30h,0E1h,0FEh
		db	0FBh,0FAh, 01h,0F0h, 00h, 82h
		db	0E5h, 2Fh,0D2h,0E1h,0FEh, 30h
		db	0FBh,0ABh, 00h,0F0h, 00h,0CDh
		db	 00h,0CFh, 03h,0D0h, 03h,0CEh
		db	 0Ah,0D1h, 0Ah, 20h, 6Ch, 20h
		db	 60h,0F0h, 00h,0C0h,0F5h, 68h
		db	0F0h, 00h, 11h, 01h, 19h, 01h
		db	 11h, 01h, 19h, 01h, 11h, 11h
		db	 19h, 01h, 11h, 01h, 19h, 01h
		db	0F6h,0CBh, 01h,0C3h, 18h, 18h
		db	 18h, 18h, 18h, 00h, 18h, 18h
		db	 18h, 18h, 18h, 00h, 0Ah, 18h
		db	 18h, 18h,0FBh,0C6h, 01h,0F0h
		db	 00h, 80h,0D4h,0E5h, 17h,0F0h
		db	 00h,0E0h, 7Dh, 00h, 19h, 08h
		db	 18h, 06h, 00h, 06h, 00h, 24h
		db	0F0h, 00h,0F5h, 09h,0F0h, 00h
		db	0F5h, 08h,0F0h, 00h, 19h, 08h
		db	 18h, 06h, 00h, 06h, 00h, 24h
		db	0F6h, 0Fh, 02h, 19h, 08h, 18h
		db	 06h, 00h, 06h, 00h, 04h,0E3h
		db	 01h, 03h, 08h,0E4h, 01h,0F5h
		db	 08h,0F0h, 00h,0F0h, 01h, 04h
		db	 13h,0E3h, 08h, 2Bh, 28h,0E4h
		db	 01h,0E3h, 1Bh, 04h, 26h, 28h
		db	 39h, 38h,0F7h, 50h, 02h, 0Bh
		db	 2Ch,0E4h, 21h, 03h, 11h,0E3h
		db	 08h,0E4h, 21h, 23h,0FBh, 2Ch
		db	 02h,0F0h, 01h, 0Bh, 2Ch,0E4h
		db	 21h, 36h, 34h, 40h,0E3h, 49h
		db	 4Bh,0E4h, 41h, 43h, 44h, 46h
		db	 47h, 38h,0F6h, 0Bh
		db	'BY[hFHY['
		db	0E4h
		db	'QSKKKKK@KKKKKp'
		db	0E3h,0FBh, 07h, 02h,0F0h, 00h
		db	 80h,0E5h, 17h,0D4h,0E1h, 10h
		db	 00h, 16h, 04h, 14h, 03h, 00h
		db	 03h, 00h, 21h,0F0h, 00h,0F5h
		db	 09h,0F0h, 00h, 80h,0E5h, 17h
		db	0F5h, 0Ch,0F0h, 00h,0D4h, 16h
		db	 04h, 14h, 03h, 00h
loc_139:
		add	ax,[bx+si]
;*		and	si,si
		db	 21h,0F6h		;  Fixup - byte match
		pushf				; Push flags
		add	al,byte ptr ds:[17E5h][bx+di]
		cld				; Clear direction
		std				; Set direction flag
		add	dh,dh
		xchg	bp,ax
		inc	dx
		cmc				; Complement carry
;*		adc	al,dh
		db	 10h,0F0h		;  Fixup - byte match
;*		add	ah,dl
		db	 00h,0D4h		;  Fixup - byte match
		db	 36h, 39h,0E4h, 31h, 34h,0E3h
		db	 36h, 39h,0E4h, 31h, 34h,0E3h
		db	 36h, 39h,0E4h, 31h, 34h, 33h
		db	 31h,0E3h, 3Ch, 38h, 38h, 3Bh
		db	0E4h, 33h, 36h,0E3h, 38h, 3Bh
		db	0E4h, 33h, 36h,0E3h, 38h, 3Bh
		db	0E4h, 33h, 36h, 33h, 31h,0E3h
		db	 3Bh, 3Ah,0F6h,0B5h, 02h, 85h
		db	0E5h, 0Fh
		db	'888880888880888'
loc_140:
;*		cmp	bl,bh
		db	 38h,0FBh		;  Fixup - byte match
		xchg	cx,ax
		add	dh,al
;*		add	ch,dh
		db	 00h,0F5h		;  Fixup - byte match
loc_141:
;*		or	al,dh
		db	 08h,0F0h		;  Fixup - byte match
;*		add	bl,dl
		db	 00h,0D3h		;  Fixup - byte match
		xor	[si],si
;*		cmp	ah,ah
		db	 38h,0E4h		;  Fixup - byte match
;*		xor	bx,sp
		db	 31h,0E3h		;  Fixup - byte match
		into				; Int 4 on overflow
		xor	[si],si
;*		cmp	ah,ah
		db	 38h,0E4h		;  Fixup - byte match
;*		xor	bx,sp
		db	 31h,0E3h		;  Fixup - byte match
		into				; Int 4 on overflow
		xor	[si],si
		db	 36h, 38h,0E4h, 31h, 34h
loc_142:
		db	 36h, 38h,0E4h,0F0h, 01h, 04h
		db	0E3h
loc_143:
		sub	[si],ah
		retn
			                        ;* No entry point to code
		rol	word ptr [si+48h],cl	; Rotate
		dec	bx
		in	al,41h			; port 41h, 8253 timer 1 refsh
		jcxz	loc_140			; Jump if cx=0
		inc	sp
		dec	ax
		dec	bx
		in	al,41h			; port 41h, 8253 timer 1 refsh
		jcxz	loc_141			; Jump if cx=0
		inc	sp
		dec	ax
		dec	cx
		dec	bx
		in	al,43h			; port 43h ??I/O Non-standard
		dec	ax
		dec	cx
		dec	bx
		in	al,11h			; port 11h ??I/O Non-standard
		jcxz	loc_144			; Jump if cx=0
		adc	al,23h			; '#'
		and	al,0C3h
		rol	word ptr [bx+di+46h],cl	; Rotate
		dec	cx
		in	al,41h			; port 41h, 8253 timer 1 refsh
		jcxz	loc_142			; Jump if cx=0
		inc	cx
		inc	si
		dec	cx
		in	al,41h			; port 41h, 8253 timer 1 refsh
		jcxz	loc_143			; Jump if cx=0
		inc	cx
		inc	si
		dec	cx
		dec	bx
		in	al,41h			; port 41h, 8253 timer 1 refsh
		inc	si
		dec	cx
loc_144:
		dec	bx
		push	es
		jcxz	loc_145			; Jump if cx=0
		db	 26h,0C3h,0D2h, 4Ch,0E4h, 43h
		db	 46h, 4Ch,0E3h,0CEh, 4Ch,0E4h
		db	 43h, 46h, 4Ch,0E3h,0CEh, 4Ch
		db	0E4h, 43h, 46h, 49h, 4Ch,0E4h
		db	 43h, 46h, 49h, 4Ch,0E4h, 43h
		db	 41h,0E3h, 4Ch, 49h, 48h, 46h
		db	 44h, 43h, 41h,0E3h
loc_145:
		dec	sp
		dec	ax
		dec	sp
		in	al,43h			; port 43h ??I/O Non-standard
		inc	si
		dec	ax
		retn
			                        ;* No entry point to code
		test	byte ptr [bx+di],3
		int	3			; Debug breakpoint
		db	0FEh,0F0h, 00h,0E5h, 07h,0F0h
		db	 02h,0D8h, 83h,0D1h, 18h,0E4h
		db	 11h, 20h,0E3h, 18h,0F0h, 02h
		db	0D8h,0F5h, 0Ah,0F0h, 02h,0F5h
		db	 18h,0F0h, 02h,0D2h, 83h, 11h
		db	 84h, 31h, 31h, 82h, 18h, 84h
		db	 31h, 31h, 83h, 11h, 84h, 31h
		db	 31h, 82h, 18h, 84h, 31h, 31h
		db	0F6h,0ABh, 03h,0F5h, 09h,0F0h
		db	 02h,0F5h, 08h,0F0h, 02h,0D2h
		db	 83h, 11h, 84h, 31h, 31h, 82h
		db	 18h, 84h, 31h, 31h, 83h, 11h
		db	 84h, 31h, 31h, 82h, 18h, 84h
		db	 31h, 31h,0F6h,0CBh, 03h,0F5h
		db	 08h,0F0h, 02h,0D1h, 83h, 1Bh
		db	 84h, 3Bh, 3Bh, 82h, 18h, 84h
		db	 3Bh, 3Bh, 83h, 1Bh, 84h, 3Bh
		db	 3Bh, 82h, 18h, 84h, 3Bh, 3Bh
		db	0F6h,0E7h, 03h,0F5h, 08h,0F0h
		db	 02h,0D1h, 83h, 19h, 84h, 39h
		db	 39h, 82h, 18h, 84h, 39h, 39h
		db	 83h, 19h, 84h, 39h, 39h, 82h
		db	 18h, 84h, 39h, 39h,0F6h, 03h
		db	 04h,0F5h, 08h,0F0h, 02h,0D1h
		db	 83h, 18h, 84h, 38h, 38h, 82h
		db	 18h, 84h, 38h, 38h, 83h, 18h
		db	 84h
		db	38h
data_568	db	38h
		db	 82h, 18h, 84h, 38h, 38h,0F6h
		db	 1Fh, 04h,0F6h
data_569	db	0C7h
		db	 43h,0F6h,0A7h, 83h,0F5h, 10h
		db	0F0h, 02h,0D1h, 83h, 19h, 84h
		db	 39h, 39h, 82h, 18h, 84h, 39h
		db	 39h, 83h, 19h, 84h, 39h, 39h
		db	 82h, 18h, 84h, 39h, 39h, 83h
		db	 1Bh, 84h, 3Bh, 3Bh, 82h, 18h
		db	 84h, 3Bh, 3Bh, 83h, 1Bh, 84h
		db	 3Bh, 3Bh, 82h, 18h, 84h, 3Bh
		db	 3Bh,0F6h, 41h, 04h,0DCh, 83h
		db	0E4h
		db	'888880888880X'
		db	0E7h, 57h,0E7h, 56h,0E7h, 55h
		db	0E7h, 54h,0E7h, 53h,0E7h, 52h
		db	0E7h, 51h,0E7h,0E3h, 5Ch,0E7h
		db	 5Bh,0E7h, 5Ah,0E7h, 59h,0E7h
		db	 58h,0E7h, 57h,0E7h, 56h,0E7h
		db	 55h,0E7h, 54h,0E7h, 53h,0E7h
		db	 52h,0E7h, 51h,0E7h,0E3h, 5Ch
		db	0E7h, 5Bh,0E7h, 5Ah,0E7h, 59h
		db	0FBh,0A2h, 03h, 0Ch, 24h, 3Ch
		db	 06h, 1Eh, 54h, 01h, 03h, 48h
		db	 18h, 0Ch, 30h, 06h, 60h,0B4h
		db	 1Eh, 04h, 0Ch,0A8h, 06h, 02h
		db	 01h, 20h, 10h, 10h, 07h, 07h
		db	 01h, 51h, 41h, 1Dh, 00h, 40h
		db	 81h,0F3h,0F5h, 0Eh, 0Eh, 08h
		db	 08h, 05h, 05h, 01h,0B8h,0A2h
		db	 61h, 00h, 47h,0F0h, 25h, 04h
		db	 04h, 00h, 00h, 00h, 02h, 02h
		db	 01h,0C0h,0E1h, 8Ah, 00h,0F4h
		db	0F2h, 42h, 67h, 06h, 0Eh, 15h
		db	 15h, 05h, 05h, 01h, 00h, 01h
		db	 03h, 17h, 09h, 5Fh, 11h, 0Fh
		db	 38h, 00h, 03h, 10h, 17h, 17h
		db	 03h, 03h, 01h, 00h, 01h, 03h
		db	 06h, 07h, 5Fh, 24h, 1Fh, 38h
		db	 00h, 04h, 01h,0E5h, 47h, 06h
		db	 02h, 01h, 00h, 02h, 09h, 38h
		db	 09h, 5Fh, 01h, 2Fh, 87h, 00h
		db	 04h, 00h, 00h, 00h
data_570	dw	202h, 181h		; Data table (indexed access)
		db	 02h,0D0h, 01h
data_572	dw	9907h			; Data table (indexed access)
		db	 01h,0FFh, 38h, 00h, 05h, 00h
		db	 00h, 00h, 02h, 02h, 81h, 00h
		db	 01h, 01h, 01h, 07h, 99h, 01h
		db	 1Eh, 38h, 00h, 05h, 00h,0FFh
data_573	db	0			; Data table (indexed access)
		db	 71h, 70h, 01h, 01h, 02h,0B4h
		db	 01h, 07h, 5Fh, 01h,0FEh, 87h
		db	 00h, 04h,0C6h, 0Fh, 00h, 00h
		db	 27h, 07h, 9Bh, 08h, 4Bh, 06h
		db	0ABh, 06h, 01h, 1Fh, 00h, 02h
		db	 41h, 01h, 03h, 87h, 02h, 04h
		db	0BAh, 03h, 05h, 12h, 05h, 06h
		db	 37h, 06h, 07h, 3Ch, 06h, 08h
		db	 41h, 06h, 09h, 46h, 06h,0F0h
		db	 00h,0E9h, 00h,0E0h, 78h,0F0h
		db	 00h,0E9h, 00h,0A0h,0F5h, 01h
		db	 04h,0F0h, 00h,0E9h, 00h,0E5h
		db	 69h,0E6h, 61h, 00h,0E2h, 40h
		db	 11h, 12h, 13h, 24h, 11h, 12h
		db	 13h, 24h, 00h,0E5h, 69h,0E6h
data_574	db	48h			; Data table (indexed access)
		db	 35h, 33h, 35h, 33h
data_575	db	35h			; Data table (indexed access)
		db	 33h, 35h, 33h,0F6h, 01h, 2Dh
		db	 00h,0E6h, 27h,0E5h, 73h, 21h
		db	 16h, 46h, 17h
		db	'Wg89JGA!'
		db	 16h, 46h, 17h, 57h, 17h, 4Ah
		db	0E5h, 64h, 47h, 4Ah,0E5h, 50h
		db	 17h,0E5h, 73h, 21h, 16h, 46h
		db	 17h
		db	'Wg89JGA!'
		db	 16h, 46h, 17h, 57h, 17h, 2Ah
		db	 40h, 1Ah, 18h, 17h, 18h, 17h
		db	 46h, 47h, 16h, 11h, 16h, 11h
		db	 4Bh, 41h, 16h, 17h, 16h, 11h
		db	 41h, 46h, 17h, 11h, 1Ch,0E5h
		db	 64h, 11h, 1Ch,0E5h, 50h, 11h
		db	0E5h, 73h, 1Dh, 1Ah
data_576	db	18h			; Data table (indexed access)
		db	 17h, 18h, 17h, 2Ah, 1Ah, 18h
		db	 17h, 16h, 17h, 2Ah, 18h, 1Ah
		db	 7Dh, 78h, 71h, 47h, 46h, 21h
		db	 16h, 46h, 17h
		db	'Wg89JGA!'
		db	 16h, 46h, 17h, 57h, 17h, 4Ah
		db	0E5h, 64h, 47h, 4Ah,0E5h, 50h
		db	 17h,0E5h, 73h, 21h, 16h, 46h
		db	 17h
		db	'Wg89JGA!'
		db	 16h, 46h, 17h, 57h, 17h, 2Ah
		db	 40h, 1Ah, 18h, 17h, 18h, 17h
		db	 46h, 47h, 16h, 11h, 16h, 11h
		db	 4Bh, 41h, 16h, 17h, 16h, 11h
		db	 41h, 46h, 17h, 11h, 1Ch,0E5h
		db	 64h, 11h, 1Ch,0E5h, 50h, 11h
		db	0E5h, 73h, 1Dh, 1Ah, 18h, 17h
		db	 18h, 17h, 2Ah, 1Ah, 18h, 17h
		db	 16h, 17h, 2Ah, 18h, 1Ah, 7Dh
		db	 78h, 71h,0E5h, 64h,0E6h, 4Bh
		db	 44h, 4Eh,0F5h, 01h, 02h,0F0h
		db	 00h,0E9h, 00h,0F0h, 01h, 0Fh
		db	0E9h, 01h, 10h, 11h, 22h, 03h
		db	 11h, 12h, 23h,0F6h, 01h, 1Eh
		db	 01h, 13h, 34h, 44h, 24h, 25h
		db	 24h, 23h, 12h, 33h, 53h, 01h
		db	0FBh, 25h, 00h,0FFh,0F0h, 01h
		db	0E9h, 01h,0F0h, 01h,0E9h, 01h
		db	0E6h, 61h,0A0h,0F5h, 01h, 04h
		db	0F0h, 01h,0E9h, 01h,0E5h, 6Eh
		db	0E2h, 40h, 32h, 35h,0E5h, 69h
		db	 32h, 35h,0E5h, 5Fh, 32h, 35h
		db	0E5h, 55h, 32h, 35h,0E5h, 4Bh
		db	 32h, 35h,0E5h, 41h, 32h, 35h
		db	0E5h, 37h, 32h, 35h,0E5h, 2Dh
		db	 32h, 35h,0F6h, 01h, 4Fh, 01h
		db	0F5h, 01h, 02h,0F0h, 01h,0E9h
		db	 01h,0E6h, 68h,0E5h, 73h, 36h
		db	 37h, 38h,0E5h, 6Bh, 36h, 37h
		db	 38h,0E5h, 64h, 36h, 37h, 38h
		db	0E5h, 5Fh, 36h, 37h, 38h,0E5h
		db	 5Ah, 36h, 37h, 38h, 36h,0E5h
		db	 73h, 39h, 3Ah, 38h,0E5h, 6Bh
		db	 39h, 3Ah, 38h,0E5h, 64h, 39h
		db	 3Ah, 38h,0E5h, 5Fh, 39h, 3Ah
		db	 38h,0E5h, 50h, 39h, 3Ah, 38h
		db	 39h,0E5h, 73h, 3Bh, 3Ah, 38h
		db	0E5h, 6Bh, 3Bh, 3Ah, 38h,0E5h
		db	 64h, 3Bh, 3Ah, 38h,0E5h, 5Fh
		db	 3Bh, 3Ah, 38h,0E5h, 50h, 3Bh
		db	 3Ah, 38h, 3Bh,0E5h, 73h, 3Ch
		db	 36h, 3Dh,0E5h, 6Bh, 3Ch, 36h
		db	 3Dh,0E5h, 64h, 3Ch, 36h, 3Dh
		db	0E5h, 5Fh, 3Ch, 36h, 3Dh,0E5h
		db	 50h, 3Ch, 36h, 3Dh, 3Ch,0E6h
		db	 39h,0F5h, 02h, 07h,0F0h, 01h
		db	0E9h, 01h,0E5h, 7Fh, 35h, 3Eh
		db	 3Fh,0E9h, 02h, 20h, 21h, 32h
		db	0F6h, 02h,0EFh, 01h,0E6h, 37h
		db	0E5h
		db	 69h, 33h
data_577	dw	3433h			; Data table (indexed access)
		db	 33h, 35h, 33h, 36h, 33h,0F6h
		db	 01h, 7Ch, 01h,0E6h, 39h,0F5h
		db	 01h, 02h,0F0h, 01h,0E9h, 02h
		db	0E5h, 69h, 62h, 77h,0E5h, 5Fh
		db	 62h, 77h,0E5h, 55h, 62h, 77h
		db	0E5h, 4Bh, 62h, 77h,0E5h, 41h
		db	 62h,0F0h, 02h, 07h, 17h,0E5h
		db	 69h, 10h, 28h,0E5h, 5Fh, 10h
		db	 28h,0E5h, 69h, 19h, 2Ah,0E5h
		db	 5Fh, 19h, 2Ah, 12h, 07h, 17h
		db	0E5h, 69h, 11h, 2Bh,0E5h, 5Fh
		db	 11h, 2Bh,0E5h, 55h, 11h, 2Bh
		db	0E5h, 4Bh, 11h, 2Bh,0E5h, 41h
		db	 11h, 0Bh, 1Bh,0E5h, 69h, 19h
		db	 2Ah,0E5h, 5Fh, 19h, 2Ah,0E5h
		db	 69h, 12h, 27h,0E5h, 5Fh, 12h
loc_146:
		daa				; Decimal adjust
		adc	[bp+di],cx
		sbb	si,si
		add	data_691,dx
		jnc	loc_146			; Jump if carry=0
		add	[si],ax
                           lock	add	ch,cl
		add	bh,[si]
		xor	[bp+si],si
		inc	ax
		inc	cx
		xor	dh,dh			; Zero register
		add	[di+2],si
		sti				; Enable interrupts
		inc	bp
;*		add	di,di
		db	 01h,0FFh		;  Fixup - byte match
                           lock	add	ch,cl
		add	dh,al
		add	ch,cl
		add	ah,byte ptr data_395+30h[bx+si]	; ('up and down, arrange the')
		cmc				; Complement carry
		add	[si],ax
                           lock	add	ch,cl
		add	bh,[di]
		in	ax,73h			; port 73h ??I/O Non-standard
		loop	$+42h			; Loop if cx > 0

		db	 3Eh, 3Fh, 33h,0E9h, 03h, 40h
		db	0E5h, 67h, 31h, 50h, 30h,0E5h
		db	 5Ah, 31h, 40h,0E5h
		db	 4Eh, 31h

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_147:
		inc	ax
;*		xor	si,si			; Zero register
		db	 31h,0F6h		;  Fixup - byte match
		add	word ptr ds:[0F502h][di],dx
		add	[bp+si],ax
                           lock	add	ch,cl
		add	sp,bp
		jnc	$+64h			; Jump if carry=0
		xor	dh,[bx+di]
		xor	si,[bx+di]
		xor	al,0E5h
		db	 66h, 31h, 33h, 31h, 34h,0E5h
		db	 6Bh, 32h,0E5h, 73h, 65h, 35h
		db	 31h, 33h, 31h, 34h,0E5h, 66h
		db	 31h, 33h, 31h, 34h,0E5h, 6Bh
		db	 35h,0E5h, 73h, 66h, 36h, 31h
		db	 33h, 31h, 34h,0E5h, 66h, 31h
		db	 33h, 31h, 34h,0E5h, 6Bh, 36h
		db	0E5h, 73h, 67h, 37h, 31h, 33h
		db	 31h, 34h,0E5h, 66h, 31h, 33h
		db	 31h, 34h,0E5h, 6Bh, 37h,0E5h
		db	 76h, 78h,0F0h, 03h, 02h, 08h
		db	 19h, 2Ah, 2Bh, 2Ah, 29h, 18h
		db	 0Bh, 0Ah, 19h, 09h, 05h,0F6h
		db	 01h,0B9h, 02h,0F5h, 01h, 02h
		db	0F0h, 03h,0E9h, 03h,0F5h, 02h
		db	 02h,0F0h, 03h,0E9h, 03h,0E5h
		db	 46h, 3Bh,0E5h, 50h, 3Bh,0E5h
		db	 5Ah, 3Bh,0E5h, 64h, 3Bh,0E5h
		db	 6Eh, 3Bh,0E5h, 78h, 3Bh,0E5h
		db	 7Bh, 4Bh,0E5h, 78h, 5Bh,0E5h
		db	 64h, 5Bh,0E5h, 5Ah, 5Bh,0F6h
		db	 02h, 21h, 03h,0F5h, 02h, 02h
		db	0F0h, 03h,0E9h, 03h,0E5h, 46h
		db	 39h,0E5h, 50h, 39h,0E5h, 5Ah
		db	 39h,0E5h, 64h, 39h,0E5h, 6Eh
		db	 39h,0E5h, 78h, 39h,0E5h, 7Bh
		db	 49h,0E5h, 78h, 59h,0E5h, 64h
		db	 59h,0E5h, 5Ah, 59h,0F6h, 02h
		db	 4Ah, 03h,0F6h, 01h, 1Ah, 03h
		db	0E5h, 46h, 68h,0E5h
		db	 50h, 68h
data_578	dw	5AE5h			; Data table (indexed access)
		db	 68h,0E5h, 64h, 68h,0E5h, 6Eh
		db	 78h,0E5h, 73h, 78h,0E5h, 78h
		db	 78h,0E5h, 7Bh, 28h,0E5h
		db	6Eh
data_579	dw	0E558h			; Data table (indexed access)
		db	 64h, 58h,0E5h, 5Ah, 58h,0E5h
		db	 46h, 66h,0E5h, 50h, 66h,0E5h
		db	 5Ah, 66h,0E5h, 64h, 66h,0E5h
		db	 6Eh, 76h,0E5h, 73h, 76h,0E5h
		db	 78h, 76h,0E5h, 7Bh, 26h,0E5h
		db	 6Eh, 56h,0E5h, 64h, 56h,0E5h
		db	 5Ah, 56h,0FBh, 8Bh, 02h,0FFh
		db	0F0h, 03h,0E9h, 03h,0F0h, 03h
		db	0E9h, 03h,0A0h,0E6h, 4Ch,0F5h
		db	 01h, 02h,0F0h, 03h,0E9h, 03h
		db	0E5h, 5Ah,0E1h, 00h, 40h,0E2h
		db	40h
data_580	db	0F0h
		db	 04h, 0Ch
		db	0Dh, 0
		db	'?', 0Dh, 0
		db	'>', 0Dh, 0
		db	'=', 0Dh, 0
		db	'<', 0Dh, 0
		db	';', 0Dh, 0
		db	':', 0Dh, 0
		db	'9', 0Dh, 0
		db	'8', 0Dh, 0
		db	'7', 0Dh, 0
		db	'6', 0Dh, 0
		db	'5', 0Dh, 0
		db	'4', 0Dh, 0
		db	'3', 0Dh, 0
		db	'2', 0Dh, 0
		db	'1', 0Dh, 0
		db	'0', 0Dh, 0
		db	'/', 0Dh, 0
		db	'.', 0Dh, 0
		db	'-', 0Dh, 0
		db	',', 0Dh

locloop_148:
		add	[bp+di],ch
		or	ax,2A00h
		or	ax,2900h
		or	ax,2800h
		or	ax,2700h
		or	ax,2600h
		or	ax,2500h
		or	ax,2400h
		or	ax,2300h
		or	ax,2200h
		or	ax,2100h
		or	ax,2000h
		or	ax,1F00h
		or	ax,1E00h
		or	ax,1D00h
		or	ax,1C00h
		or	ax,1B00h
		or	ax,1A00h
		or	ax,1900h
		or	ax,1800h
		or	ax,1700h
		or	ax,1600h
		or	ax,1500h
		or	ax,1400h
		or	ax,1300h
		or	ax,1200h
		or	ax,1100h
		loopz	locloop_149		; Loop if zf=1, cx>0


locloop_149:
		inc	ax
		adc	al,14h
		adc	al,0F6h
;*		add	ax,cx
		db	 01h,0C8h		;  Fixup - byte match
		add	sp,si
		dec	bx
		cmc				; Complement carry
		add	[bp+si],ax
                           lock	add	al,0E9h
		add	sp,bp
		db	'n$'
		db	'10>BR$'
		db	'2>0$'
		db	'10>EU$'
		db	'5>0$'
		db	'10>FV$'
		db	'6>0$'
		db	'10>GW$'
		db	'7>0$'
		db	'82>h88$'
		db	'8d88$'
		db	'92>a19$'
		db	'9d99$'
		db	'82>h88$'
		db	'8d99$'
		db	'95?i99$'
		db	'9d99'
		db	0F6h, 01h, 72h, 04h,0F5h, 01h
		db	 02h,0F0h, 04h,0E9h, 03h, 7Eh
		db	 6Eh, 60h,0F0h, 05h, 01h, 1Fh
		db	 20h, 2Eh, 0Fh,0F6h, 01h,0D7h
		db	 04h, 2Fh, 3Eh, 42h, 02h, 08h
		db	 02h, 0Fh, 2Eh, 3Fh, 5Fh, 36h
		db	 36h, 3Fh, 36h,0E5h, 78h,0F5h
		db	 01h, 03h,0F0h, 05h,0E9h, 03h
		db	0E9h, 04h
		db	'`abcdefg'
		db	0F6h, 01h,0FCh, 04h,0FBh,0BEh
		db	 03h,0FFh,0F0h, 05h,0E9h, 04h
		db	0F0h, 05h,0E9h, 04h, 99h,0E1h
		db	 50h, 40h,0F5h, 01h, 04h,0F0h
		db	 05h,0E9h, 04h,0E5h, 5Fh,0E6h
		db	 61h, 38h,0E2h
		db	'@9:;,9:;,8'
		db	0E5h, 5Fh,0E6h
		db	'H}{}{}{}{'
		db	0F6h, 01h, 21h, 05h,0E6h, 27h
		db	0E5h, 69h, 29h, 3Eh, 0Eh, 3Fh
		db	0F0h, 06h, 0Fh, 1Fh,0E9h, 05h
		db	' !234DU5S'
		db	 03h, 53h, 32h,0E5h, 5Ah, 33h
		db	 32h,0E5h, 46h, 53h,0E5h, 69h
		db	 44h, 55h, 35h, 53h, 03h, 13h
		db	' !234DU5S'
		db	3
		db	'SB6RPSPS53UTUT74USUT45STX'
		db	0E5h, 5Ah, 54h, 58h,0E5h, 46h
		db	 54h,0E5h
		db	'iYRPSPSBRPSUSBPRi`d35DU5S'
		db	 03h, 13h
		db	' !234DU5S'
		db	 03h, 53h, 32h,0E5h, 5Ah, 33h
		db	 32h,0E5h, 46h, 53h,0E5h, 69h
		db	 44h, 55h, 35h, 53h, 03h, 13h
		db	' !234DU5S'
		db	3
		db	'SB6RPSPS53UTUT74USUT45STX'
		db	0E5h, 5Ah, 54h, 58h,0E5h, 46h
		db	 54h,0E5h
		db	'iYRPSPSBRPSUSBPRi`d'
		db	0E5h, 5Ah,0E6h, 4Bh, 3Ah, 3Bh
		db	0F5h, 01h, 02h,0F0h, 06h,0E9h
		db	 05h
		db	'|MN<{NL;'
		db	0F6h, 01h, 16h, 06h, 4Bh, 5Ah
		db	0F0h, 07h, 0Ah, 1Ah, 1Fh, 1Ah
		db	 1Bh, 2Ch, 3Bh, 4Bh, 5Eh,0FBh
		db	 16h, 05h,0FFh,0F0h, 07h,0E9h
		db	 05h,0FFh,0F0h, 07h,0E9h, 05h
		db	0FFh,0F0h, 07h,0E9h, 05h,0FFh
		db	0F0h, 07h,0E9h, 05h,0FFh, 80h
		db	 45h, 47h, 4Ah
		db	'MICA@?>FH=OQTRQOMJ259140/7CEHCE9'
		db	'<=@QTFROJ'
		db	 80h, 32h, 35h, 37h, 39h, 32h
		db	 3Eh, 80h
		db	'10/.-+)J'
		db	0FFh
		db	'543456789:'
		db	80h
		db	'EGJMICA@?>AEC'
		db	80h
		db	'FH=MOQTRJ', 0Ch
		db	0FFh, 0Ch, 0Bh, 24h, 22h, 03h
		db	 03h, 18h, 17h, 0Ch, 0Dh, 12h
		db	 11h, 30h, 2Eh, 60h, 5Fh, 24h
		db	 22h, 18h, 17h, 0Ch, 0Bh, 30h
		db	 31h, 30h, 2Eh, 04h
data_585	dw	1003h			; Data table (indexed access)
		db	 0Fh, 08h, 09h, 04h, 03h, 10h
		db	 0Fh, 0Ch, 0Bh, 18h, 17h
		db	0Ch, 0Dh, 'HI`_0.`_'
		db	 18h, 17h, 06h, 07h, 0Ch, 0Bh
		db	 10h, 0Fh, 0Ch, 0Dh, 18h, 19h
		db	 02h, 5Fh, 60h,0FFh, 0Ch,0FFh
		db	 0Ch, 0Bh
		db	'010.$'
		db	'"`_'
		db	 18h, 17h, 60h, 5Fh, 24h, 22h
		db	 0Ch, 0Bh, 30h, 31h, 30h, 2Eh
		db	 02h, 02h, 03h, 03h, 0Ch, 0Dh
		db	 12h, 11h, 03h, 03h, 18h, 17h
		db	 24h, 22h, 0Ch, 0Bh, 30h, 2Eh
		db	 60h, 5Fh, 30h, 31h, 18h, 17h
		db	 24h, 22h, 0Ch, 0Bh, 30h, 2Eh
		db	 60h, 5Fh, 04h, 23h, 00h,0C3h
		db	 00h,0F6h, 01h, 25h, 03h, 25h
		db	 04h, 2Fh, 04h, 3Bh, 04h,0D8h
		db	 04h, 25h, 06h,0A7h, 07h,0CCh
		db	 07h, 35h, 08h,0A8h, 07h, 9Bh
		db	 08h, 0Ch,0B0h, 01h, 05h, 01h
		db	 01h,0F0h, 00h,0E0h, 87h,0F5h
		db	 10h,0F0h, 00h, 00h, 84h,0D4h
		db	0E5h, 17h, 0Ah, 0Ch,0E4h, 03h
		db	 16h,0E3h, 0Ah, 0Ch,0E4h, 03h
		db	 16h, 00h, 81h,0D4h,0E5h, 17h
		db	'"#"#"#"#'
		db	0F6h, 29h, 00h,0F5h, 08h,0F0h
		db	 00h,0E5h, 0Fh, 83h,0D4h,0FCh
		db	 8Ch, 07h, 33h,0CFh, 36h, 33h
		db	0CFh, 06h,0C1h,0D4h,0FCh, 8Ch
		db	 07h, 13h, 30h, 03h, 05h, 06h
		db	 05h, 06h
		db	'86', 8, 0Ah, 8, 0Ah, ';:', 8
		db	 06h, 08h, 0Ah, 3Ah, 38h, 06h
		db	 0Ah,0E4h, 01h,0E3h,0CFh, 0Ah
		db	0E4h, 01h,0E3h,0CFh, 0Ah,0C1h
		db	 02h, 03h, 05h, 06h, 05h, 06h
		db	 13h, 03h, 05h, 06h, 08h, 06h
		db	 13h, 05h, 03h, 42h, 45h, 4Ah
		db	0FDh, 01h,0BCh, 00h, 36h, 38h
		db	0F6h, 4Dh, 00h,0F5h, 08h,0F0h
		db	 00h, 5Ah,0E4h, 11h,0E3h, 1Bh
		db	 3Ah, 58h, 1Bh, 1Ah, 38h,0F6h
		db	0A0h, 00h, 18h, 06h, 66h, 33h
		db	 36h, 38h, 1Ah, 08h, 48h, 5Bh
		db	0FBh, 23h, 00h,0F0h, 00h, 81h
		db	0D4h,0E5h, 17h,0FEh,0F0h, 00h
		db	0E5h, 1Fh,0F5h, 10h,0F0h, 00h
		db	 84h,0D5h,0F5h, 21h,0F0h, 00h
		db	 0Ah, 03h,0CFh,0F6h,0CFh, 40h
		db	0F6h,0C9h, 00h,0E5h, 17h,0F5h
		db	 08h,0F0h, 00h, 82h,0D3h, 03h
		db	 06h, 0Ah,0CFh, 03h, 06h, 0Ah
		db	0CFh, 03h, 06h, 0Ah,0CFh, 03h
		db	 06h, 0Ah,0CFh, 03h, 06h, 0Ah
		db	0CFh, 03h,0C4h, 02h, 05h, 0Ah
		db	0CFh, 02h, 05h, 0Ah,0CFh, 02h
		db	 05h, 0Ah,0CFh, 02h, 05h, 0Ah
		db	0CFh, 02h, 05h, 0Ah,0CFh, 02h
		db	0C4h, 01h, 05h, 0Ah,0CFh, 01h
		db	 05h, 0Ah,0CFh, 01h, 05h, 0Ah
		db	0CFh, 01h, 05h, 0Ah,0CFh, 01h
		db	 05h, 0Ah,0CFh, 01h,0C4h,0E3h
		db	 0Ch,0E4h, 03h, 08h,0CFh,0E3h
		db	 0Ch,0E4h, 03h, 08h,0CFh,0E3h
		db	 0Ch,0E4h, 03h, 08h,0CFh,0E3h
		db	 0Ch,0E4h, 03h, 08h,0CFh,0E3h
		db	 0Ch,0E4h, 03h, 08h,0CFh,0E3h
		db	 0Ch,0C4h,0E5h, 2Fh, 85h,0D5h
		db	0F5h, 1Dh,0F0h
loc_150:
		add	[bp+di],al
		jcxz	$+0Ah			; Jump if cx=0
loc_151:
		or	ah,ah			; Zero ?
;*		xor	bx,sp
		db	 31h,0E3h		;  Fixup - byte match
		cmp	[bp+si],cl
		in	al,0F6h			; port 0F6h ??I/O Non-standard
		dec	bx
		inc	cx
		in	ax,17h			; port 17h ??I/O Non-standard
		adc	bl,0Ah
		or	ah,ah			; Zero ?
;*		add	bx,sp
		db	 01h,0E3h		;  Fixup - byte match
		or	ah,ah			; Zero ?
		add	ah,bl
		or	ah,ah			; Zero ?
		add	ax,0AE3h
		neg	dh
		add	byte ptr ds:[0F5D4h][di],al
;*		or	al,dh
		db	 08h,0F0h		;  Fixup - byte match
;*		add	ch,ah
		db	 00h,0E5h		;  Fixup - byte match
		das				; Decimal adjust
;*		jp	loc_152			;*Jump if parity=1
		db	 7Ah,0E4h		;  Fixup - byte match
                           lock	add	[bp+si],cx
		jcxz	loc_150			; Jump if cx=0
		sbb	ah,ah
		or	ah,bl
		into				; Int 4 on overflow
		sbb	ah,ah
		or	ah,bl
		into				; Int 4 on overflow
		sbb	ah,ah
		or	ah,bl
		into				; Int 4 on overflow
		sbb	ah,ah
		sub	ah,ch
		das				; Decimal adjust
;*		adc	sp,sp
		db	 11h,0E4h		;  Fixup - byte match
;*		add	bx,sp
		db	 01h,0E3h		;  Fixup - byte match
		into				; Int 4 on overflow
;*		adc	sp,sp
		db	 11h,0E4h		;  Fixup - byte match
;*		add	bx,sp
		db	 01h,0E3h		;  Fixup - byte match
;*		jcxz	loc_153			;*Jump if cx=0
		db	0E3h,0CEh		;  Fixup - byte match
		sbb	sp,sp
		or	sp,bx
		into				; Int 4 on overflow
		sbb	sp,sp
		or	sp,bx
		into				; Int 4 on overflow
		sbb	ah,ah
		sub	ah,bl
		in	ax,2Fh			; port 2Fh ??I/O Non-standard
;*		sbb	ah,ah
		db	 18h,0E4h		;  Fixup - byte match
;*		or	bl,ah
		db	 08h,0E3h		;  Fixup - byte match
		into				; Int 4 on overflow
;*		sbb	ah,ah
		db	 18h,0E4h		;  Fixup - byte match
;*		or	bl,ah
		db	 08h,0E3h		;  Fixup - byte match
		into				; Int 4 on overflow
;*		sbb	ah,ah
		db	 18h,0E4h		;  Fixup - byte match
;*		or	bl,ah
		db	 08h,0E3h		;  Fixup - byte match
		into				; Int 4 on overflow
;*		sbb	ah,ah
		db	 18h,0E4h		;  Fixup - byte match
;*		or	bl,ah
		db	 08h,0E3h		;  Fixup - byte match
		into				; Int 4 on overflow
;*		sbb	ah,ah
		db	 18h,0E4h		;  Fixup - byte match

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_66		proc	near
;*		sub	bl,ah
		db	 28h,0E3h		;  Fixup - byte match
		in	ax,2Fh			; port 2Fh ??I/O Non-standard
		sbb	sp,sp
		or	sp,bx
		into				; Int 4 on overflow
		sbb	sp,sp
		or	sp,bx
		into				; Int 4 on overflow
		sbb	ah,ah
		or	ah,bl
		into				; Int 4 on overflow
		sbb	ah,ah
		or	ah,bl
		into				; Int 4 on overflow
;*		sbb	ah,ah
		db	 18h,0E4h		;  Fixup - byte match
;*		sub	bl,ah
		db	 28h,0E3h		;  Fixup - byte match
		div	byte ptr [bp+di+1]	; al,ah rem = ax/data
		cmc				; Complement carry
;*		adc	al,dh
		db	 10h,0F0h		;  Fixup - byte match
;*		add	bp,dx
		db	 01h,0D5h		;  Fixup - byte match
		and	sp,bx
		sub	[bp+si],ch
		in	al,31h			; port 31h ??I/O Non-standard
		jcxz	loc_154			; Jump if cx=0
		sub	dh,dh
		in	al,1			; port 1, DMA-1 bas&cnt ch 0
		sti				; Enable interrupts
		retn
		db	 00h,0F0h, 00h,0E5h, 07h,0F0h
		db	 00h, 86h,0D3h,0F5h, 10h,0F0h
		db	 00h, 00h, 03h, 06h, 0Ah, 38h
		db	0CEh, 0Ah, 38h,0CEh, 0Ah, 38h
		db	0CEh, 0Ah, 38h, 0Ah,0C5h,0F6h
		db	 00h, 02h,0F5h, 08h,0F0h, 00h
		db	0D3h,0F0h, 01h, 43h, 2Ah,0E4h
		db	 23h,0E3h, 2Ah, 20h,0CCh, 2Ah
		db	0E4h
		db	23h
loc_154:
		jcxz	$+2Ch			; Jump if cx=0
;*		and	dh,cl
		db	 20h,0CEh		;  Fixup - byte match
		and	ax,bp
		inc	dx
		sub	ah,ah
		and	sp,bx
		sub	ah,[bx+si]
		int	3			; Debug breakpoint
		sub	ah,ah
		and	sp,bx
		sub	ah,[bx+si]
		into				; Int 4 on overflow
		and	al,ch
		inc	cx
		sub	ah,ah
		and	sp,bx
		sub	ah,[bx+si]
		int	3			; Debug breakpoint
		sub	ah,ah
		and	sp,bx
		sub	ah,[bx+si]
		into				; Int 4 on overflow
;*		and	bp,ax
		db	 21h,0C5h		;  Fixup - byte match
		jcxz	$+4Eh			; Jump if cx=0
		in	al,2Ah			; port 2Ah ??I/O Non-standard
		in	al,23h			; port 23h ??I/O Non-standard
		jcxz	$+2Ch			; Jump if cx=0
;*		and	ah,cl
		db	 20h,0CCh		;  Fixup - byte match
		sub	ah,ah
		and	sp,bx
		sub	ah,[bx+si]
		into				; Int 4 on overflow
		jcxz	$+2Eh			; Jump if cx=0
		lds	bx,dword ptr [bp+di-1Ch]	; Load seg:offset ptr
		db	 63h,0E3h
		db	'kZ868:[fhZj'
		db	0E4h, 62h,0F6h, 17h, 02h,0F5h
		db	 08h,0F0h, 01h,0D2h,0CAh, 76h
		db	0E7h,0C0h, 76h,0E7h,0C0h, 76h
		db	0E7h,0C0h, 76h,0E7h,0C0h, 76h
		db	0E7h,0C0h, 76h,0E7h,0C0h, 26h
		db	 06h,0CEh, 06h,0CEh, 06h,0C3h
		db	0CAh, 76h,0E7h,0C0h, 76h,0E7h
		db	0C0h, 76h,0E7h,0C0h, 76h,0E7h
		db	0C0h, 76h,0E7h,0C0h, 76h,0E7h
		db	0C0h, 26h, 06h,0CEh, 06h,0CEh
		db	 06h,0C3h,0CAh, 7Ah,0E7h,0C0h
		db	 7Ah,0E7h,0C0h, 7Ah,0E7h,0C0h
		db	 7Ah,0E7h,0C0h, 7Ah,0E7h,0C0h
		db	 7Ah,0E7h,0C0h, 2Ah, 0Ah,0CEh
		db	 0Ah,0CEh, 0Ah,0C3h,0CAh, 7Ah
		db	0E7h,0C0h, 7Ah,0E7h,0C0h, 7Ah
		db	0E7h,0C0h, 7Ah,0E7h,0C0h, 7Ah
		db	0E7h,0C0h, 7Ah,0E7h,0C0h, 2Ah
		db	 0Ah,0CEh, 0Ah,0CEh, 0Ah,0C3h
		db	0F6h, 79h, 02h,0CAh, 2Bh,0E7h
		db	0C0h, 2Bh,0E7h,0C0h, 2Bh,0E7h
		db	0C0h, 2Bh,0E7h,0C0h, 3Bh,0E7h
		db	0C0h, 3Bh,0E7h, 3Bh,0E7h,0C0h
		db	 3Bh,0CEh, 0Bh,0CFh, 0Bh,0CFh
		db	 0Bh,0C3h,0E4h,0CAh, 21h,0E7h
		db	0C0h, 21h,0E7h,0C0h, 21h,0E7h
		db	0C0h, 21h,0E7h,0C0h, 31h,0E7h
		db	0C0h, 31h,0E7h, 31h,0E7h,0C0h
		db	 31h,0CEh, 01h,0CFh, 01h,0CFh
data_586	db	1			; Data table (indexed access)
		db	0C3h,0FBh,0F6h, 01h,0F0h, 00h
		db	0E5h, 0Fh,0F0h, 00h,0CFh, 81h
		db	0F5h, 08h,0F0h, 00h,0D5h,0F0h
		db	 02h, 03h,0E7h, 02h,0E7h, 01h
		db	0E7h,0E3h, 0Ch,0E7h, 0Bh,0E7h
		db	 0Ah,0E7h, 09h,0E7h, 08h,0E7h
		db	 07h,0E7h, 06h,0E7h, 05h,0E7h
		db	 04h,0E7h, 03h,0E7h, 02h,0E7h
		db	 01h,0E7h,0E3h, 0Ch,0E7h, 0Bh
		db	0E7h, 0Ah,0E7h, 09h,0E7h, 08h
		db	0E7h, 07h,0E7h, 06h,0E7h, 05h
		db	0E7h, 04h, 10h,0F6h, 2Fh, 03h
		db	0C0h,0F5h, 08h,0F0h, 02h,0D3h
		db	' *(&3 #&( *(&2 "&( *(&1 !&( *(&'
		db	0E3h, 3Ch, 20h, 2Ch,0E4h, 26h
		db	 28h, 20h,0E3h, 2Bh,0E4h, 23h
		db	 26h,0E3h
		db	'K++ +@++ *'
		db	0E4h, 23h, 26h,0E3h
		db	'J** *@** +'
		db	0E4h, 23h, 26h,0E3h
		db	'K++ +@++ *'
		db	0E4h, 22h, 25h,0E3h
		db	'J** *@**'
		db	0F6h, 6Ch, 03h,0D4h
		db	'6FHZ5HFU6FHZ5HFUE&c'
		db	0E3h, 5Bh,0E4h
		db	'SUF%u!!%!'
		db	0C1h,0F0h, 03h, 04h,0E7h, 05h
		db	0E7h, 06h,0E7h, 07h,0E7h, 08h
		db	0E7h, 09h,0E7h, 0Ah,0E7h, 0Bh
		db	 04h,0E7h, 05h,0E7h, 06h,0E7h
		db	 07h,0E7h, 08h,0E7h, 09h,0E7h
		db	 0Ah,0E7h
loc_155:
		or	ax,[si]
		out	5,ax			; port 5, DMA-1 bas&cnt ch 2
		out	6,ax			; port 6, DMA-1 bas&add ch 3
		out	7,ax			; port 7, DMA-1 bas&cnt ch 3
		out	8,ax			; port 8, DMA-1 command reg
		out	9,ax			; port 9, DMA-1 request reg
		out	0Ah,ax			; port 0Ah, DMA-1 mask reg bit
		out	0Bh,ax			; port 0Bh, DMA-1 mode reg
		into				; Int 4 on overflow
		sti				; Enable interrupts
		sub	[bp+di],ax
;*                         lock	add	ch,ah
		db	0F0h, 00h,0E5h		;  Fixup - byte match
;*		pop	cs			; Dangerous-8088 only
		db	0Fh			;  Fixup - byte match
		loopz	locloop_156		; Loop if zf=1, cx>0

;*		and	bl,bh
		db	 20h,0FBh		;  Fixup - byte match
		cli				; Disable interrupts
;*		add	ax,si
		db	 01h,0F0h		;  Fixup - byte match
;*		add	ch,ah
		db	 00h,0E5h		;  Fixup - byte match
		das				; Decimal adjust
;*		loopz	locloop_156		;*Loop if zf=1, cx>0

		db	0E1h,0FCh		;  Fixup - byte match
                           lock	add	[bx+si-5],si
		sub	[bp+di],ax
;*                         lock	add	al,ah
		db	0F0h, 00h,0E0h		;  Fixup - byte match
		xchg	si,bp
;*		adc	al,dh
		db	 10h,0F0h		;  Fixup - byte match
		add	[bx+si],al
		adc	ah,0E5h
		pop	ds
		or	cl,[si]
		in	al,3			; port 3, DMA-1 bas&cnt ch 1
		push	ss
		jcxz	$+0Ch			; Jump if cx=0
		or	al,0E4h
		add	dx,word ptr ds:[8100h]
;*		aam	22h			; '"' undocumented inst
		db	0D4h, 22h		;  Fixup - byte match
		and	sp,[bp+si]
		and	sp,[bp+si]
		and	sp,[bp+si]
		and	si,si
		inc	cx
		add	al,0F5h
;*		or	al,dh
		db	 08h,0F0h		;  Fixup - byte match
		add	byte ptr ss:[17E5h][bp+si],al
		sar	sp,cl			; Shift w/sign fill
		mov	[bx],es
		xor	sp,bp
		pop	ds
		xor	sp,bp
		das				; Decimal adjust
		push	es
		in	ax,17h			; port 17h ??I/O Non-standard
		sar	sp,cl			; Shift w/sign fill
		mov	[bx],es
		adc	si,[bx+si]
		add	ax,[di]
		push	es
		add	ax,3806h
		db	'6', 8, 0Ah, 8, 0Ah, ';:', 8
		db	 06h, 08h, 0Ah, 3Ah, 38h, 06h
		db	 0Ah,0E4h, 01h,0E3h,0E5h, 1Fh
		db	 0Ah,0E4h, 01h,0E3h,0E5h, 2Fh
		db	 0Ah,0E5h, 17h, 02h, 03h, 05h
		db	 06h, 05h, 06h, 13h, 03h, 05h
		db	 06h, 08h, 06h, 13h, 05h, 03h
		db	 42h, 45h, 4Ah,0FDh, 01h,0A0h
		db	 07h, 36h, 38h,0F6h, 63h, 04h
		db	0F5h, 08h,0F0h, 00h, 5Ah,0E4h
		db	 11h,0E3h, 1Bh, 3Ah, 58h, 1Bh
		db	 1Ah, 38h,0F6h,0BCh, 04h, 18h
		db	 06h, 66h, 33h, 36h, 38h, 1Ah
		db	 08h, 48h, 5Bh,0FBh, 3Bh, 04h
		db	0F0h, 00h,0F5h, 10h,0F0h, 00h
		db	 80h,0D5h,0E5h, 17h,0F5h, 21h
		db	0F0h, 00h, 0Ah, 03h,0CEh,0F6h
		db	0E4h, 44h,0F6h,0DCh, 04h,0F5h
		db	 08h,0F0h, 00h, 83h,0E1h, 10h
		db	0D2h,0E5h, 1Fh, 03h, 06h, 0Ah
		db	0CFh, 03h, 06h, 0Ah,0CFh, 03h
		db	 06h, 0Ah,0CFh, 03h, 06h, 0Ah
		db	0CFh, 03h, 06h, 0Ah,0CFh, 03h
		db	0E5h, 1Fh, 02h, 05h, 0Ah,0CFh
		db	 02h, 05h, 0Ah,0CFh, 02h, 05h
		db	 0Ah,0CFh, 02h, 05h, 0Ah,0CFh
		db	 02h, 05h, 0Ah,0CFh, 02h,0E5h
		db	 1Fh, 01h, 05h, 0Ah,0CFh, 01h
		db	 05h, 0Ah,0CFh, 01h, 05h, 0Ah
		db	0CFh, 01h, 05h, 0Ah,0CFh, 01h
		db	 05h, 0Ah,0CFh, 01h,0E5h, 1Fh
		db	0E3h, 0Ch,0E4h, 03h, 08h,0CFh
		db	0E3h, 0Ch,0E4h, 03h, 08h,0CFh
		db	0E3h, 0Ch,0E4h, 03h, 08h,0CFh
		db	0E3h, 0Ch,0E4h, 03h, 08h,0CFh
		db	0E3h, 0Ch,0E4h, 03h, 08h,0CFh
		db	0E3h
		db	0Ch
loc_157:
		in	al,0E4h			; port 0E4h ??I/O Non-standard
		in	al,0E5h			; port 0E5h ??I/O Non-standard
		pop	ss
		cmc				; Complement carry
loc_158:
		sbb	ax,0F0h
		add	sp,bx
		or	[bp+si],cl
		in	al,31h			; port 31h ??I/O Non-standard
		jcxz	loc_166			; Jump if cx=0
		or	ah,ah			; Zero ?
		mul	byte ptr [di+45h]	; ax = data * al
		test	ah,cl
;*		add	dl,dl
		db	 00h,0D2h		;  Fixup - byte match
		in	ax,1Fh			; port 1Fh ??I/O Non-standard
		or	cl,[bp+si]
		in	al,1			; port 1, DMA-1 bas&cnt ch 0
		jcxz	loc_162			; Jump if cx=0
		in	al,2			; port 2, DMA-1 bas&add ch 1
		jcxz	loc_163			; Jump if cx=0
		in	al,5			; port 5, DMA-1 bas&cnt ch 2
		jcxz	loc_164			; Jump if cx=0
		div	cl			; al, ah rem = ax/reg
loc_162:
		add	al,83h
		loopz	locloop_167		; Loop if zf=1, cx>0

loc_163:
		cmc				; Complement carry
;*		or	al,dh
		db	 08h,0F0h		;  Fixup - byte match
;*		add	ah,dl
		db	 00h,0D4h		;  Fixup - byte match
		in	ax,17h			; port 17h ??I/O Non-standard
;*		jp	loc_160			;*Jump if parity=1
		db	 7Ah,0E4h		;  Fixup - byte match
                           lock	add	[bp+si],cx
;*		jcxz	loc_161			;*Jump if cx=0
		db	0E3h,0E5h		;  Fixup - byte match
		pop	ds
		sbb	ah,ah
		or	ah,bl
		in	ax,27h			; port 27h ??I/O Non-standard
		sbb	ah,ah
loc_165:
		or	ah,bl
loc_166:
		in	ax,2Fh			; port 2Fh ??I/O Non-standard
		sbb	ah,ah
		or	ah,bl
		in	ax,37h			; port 37h ??I/O Non-standard
		sbb	ah,ah
		sub	ah,ch
		pop	ss
;*		adc	sp,sp
		db	 11h,0E4h		;  Fixup - byte match
;*		add	bx,sp
		db	 01h,0E3h		;  Fixup - byte match
		in	ax,1Fh			; port 1Fh ??I/O Non-standard
;*		adc	sp,sp
		db	 11h,0E4h		;  Fixup - byte match
;*		add	bx,sp
		db	 01h,0E3h		;  Fixup - byte match
		jcxz	loc_165			; Jump if cx=0
		daa				; Decimal adjust
		sbb	sp,sp
		or	sp,bx
		in	ax,2Fh			; port 2Fh ??I/O Non-standard
		sbb	sp,sp
		or	sp,bx
		in	ax,37h			; port 37h ??I/O Non-standard
		sbb	ah,ah
		sub	ah,bl
		in	ax,17h			; port 17h ??I/O Non-standard
;*		sbb	ah,ah
		db	 18h,0E4h		;  Fixup - byte match
;*		or	bl,ah
		db	 08h,0E3h		;  Fixup - byte match
		in	ax,1Fh			; port 1Fh ??I/O Non-standard
;*		sbb	ah,ah
		db	 18h,0E4h		;  Fixup - byte match
;*		or	bl,ah
		db	 08h,0E3h		;  Fixup - byte match
		in	ax,27h			; port 27h ??I/O Non-standard
;*		sbb	ah,ah
		db	 18h,0E4h		;  Fixup - byte match
;*		or	bl,ah
		db	 08h,0E3h		;  Fixup - byte match
		in	ax,2Fh			; port 2Fh ??I/O Non-standard
;*		sbb	ah,ah
		db	 18h,0E4h		;  Fixup - byte match
;*		or	bl,ah
		db	 08h,0E3h		;  Fixup - byte match
		in	ax,37h			; port 37h ??I/O Non-standard
;*		sbb	ah,ah
		db	 18h,0E4h		;  Fixup - byte match
;*		sub	bl,ah
		db	 28h,0E3h		;  Fixup - byte match
		in	ax,17h			; port 17h ??I/O Non-standard
		sbb	sp,sp
		or	sp,bx
		in	ax,1Fh			; port 1Fh ??I/O Non-standard
		sbb	sp,sp
		or	sp,bx
		in	ax,27h			; port 27h ??I/O Non-standard
		sbb	ah,ah
		or	ah,bl
		in	ax,2Fh			; port 2Fh ??I/O Non-standard
		sbb	ah,ah
		or	ah,bl
		in	ax,37h			; port 37h ??I/O Non-standard
;*		sbb	ah,ah
		db	 18h,0E4h		;  Fixup - byte match
;*		sub	dh,dh
		db	 28h,0F6h		;  Fixup - byte match
		nop
		add	ax,17E5h
		cmc				; Complement carry
;*		adc	al,dh
		db	 10h,0F0h		;  Fixup - byte match
;*		add	sp,dx
		db	 01h,0D4h		;  Fixup - byte match
		and	sp,bx
		sub	[bp+si],ch
		in	al,31h			; port 31h ??I/O Non-standard
		jcxz	loc_168			; Jump if cx=0
		sub	dh,dh
		adc	ax,word ptr ds:[0D8FBh]
		add	al,0F0h
		add	byte ptr ds:[0F5D2h][di],al
;*		adc	al,dh
		db	 10h,0F0h		;  Fixup - byte match
		add	[bx+si],al
		in	ax,17h			; port 17h ??I/O Non-standard
		add	ax,word ptr ds:[380Ah]
		in	ax,27h			; port 27h ??I/O Non-standard
		or	bh,[bx+si]
		in	ax,37h			; port 37h ??I/O Non-standard
		or	bh,[bx+si]
		in	ax,47h			; port 47h ??I/O Non-standard
		or	bh,[bx+si]
		or	dh,dh			; Zero ?
		sub	ax,word ptr ds:[8F5h]
;*                         lock	add	dl,dl
		db	0F0h, 00h,0D2h		;  Fixup - byte match
		in	ax,17h			; port 17h ??I/O Non-standard
                           lock	add	[bp+di+2Ah],ax
		in	al,23h			; port 23h ??I/O Non-standard
		jcxz	loc_169			; Jump if cx=0
;*		and	ch,ah
		db	 20h,0E5h		;  Fixup - byte match
		daa				; Decimal adjust
loc_168:
		sub	ah,ah
		and	sp,bx
		sub	ah,[bx+si]
		in	ax,1Fh			; port 1Fh ??I/O Non-standard
		and	sp,bp
		pop	ss
		inc	dx
		sub	ah,ah
		and	sp,bx
		sub	ah,[bx+si]
		in	ax,27h			; port 27h ??I/O Non-standard
		sub	ah,ah
		and	sp,bx
		sub	ah,[bx+si]
		in	ax,1Fh			; port 1Fh ??I/O Non-standard
		and	ah,ch
		pop	ss
		inc	cx
		sub	ah,ah
		and	sp,bx
		sub	ah,[bx+si]
		in	ax,27h			; port 27h ??I/O Non-standard
		sub	ah,ah
		and	sp,bx
		sub	ah,[bx+si]
		in	ax,1Fh			; port 1Fh ??I/O Non-standard
;*		and	bx,sp
		db	 21h,0E3h		;  Fixup - byte match
		in	ax,17h			; port 17h ??I/O Non-standard
		dec	sp
		in	al,2Ah			; port 2Ah ??I/O Non-standard
		in	al,23h			; port 23h ??I/O Non-standard
		jcxz	$+2Ch			; Jump if cx=0
;*		and	ch,ah
		db	 20h,0E5h		;  Fixup - byte match
		daa				; Decimal adjust
		sub	ah,ah
		and	sp,bx
		sub	ah,[bx+si]
		in	ax,1Fh			; port 1Fh ??I/O Non-standard
		jcxz	$+2Eh			; Jump if cx=0
		in	ax,0Fh			; port 0Fh, DMA-1 all mask bit
		pop	bx
		in	al,63h			; port 63h, 8255 mode reg
		jcxz	$+6Dh			; Jump if cx=0
		pop	dx
		cmp	byte ptr ds:[3A38h],dh
		pop	bx
		db	 66h, 68h, 5Ah, 6Ah,0E4h, 62h
		db	0F6h, 46h, 06h,0F5h, 08h,0F0h
		db	 01h,0D1h,0E5h, 2Fh, 76h,0E7h
		db	0C0h, 76h,0E7h,0C0h, 76h,0E7h
		db	0C0h, 76h,0E7h,0C0h, 76h,0E7h
		db	0C0h, 76h,0E7h,0C0h, 26h,0DFh
		db	0E5h, 17h, 06h,0E5h, 27h, 06h
		db	0E5h, 37h, 06h,0F0h, 03h,0D9h
		db	0D1h,0E5h, 2Fh, 26h,0E7h,0C0h
		db	 26h,0E7h,0C0h, 26h,0E7h,0C0h
		db	 26h,0E7h,0C0h, 26h,0E7h,0C0h
		db	 26h,0E7h,0C0h, 36h,0DAh,0E5h
		db	 17h, 46h,0E5h, 27h, 46h,0E5h
		db	 37h, 46h,0D9h,0D1h,0E5h, 2Fh
		db	 2Ah,0E7h,0C0h, 2Ah,0E7h,0C0h
		db	 2Ah,0E7h,0C0h, 2Ah,0E7h,0C0h
		db	 2Ah,0E7h,0C0h, 2Ah,0E7h,0C0h
		db	 3Ah,0DAh,0E5h, 17h, 4Ah,0E5h
		db	 27h, 4Ah,0E5h, 37h, 4Ah,0D9h
		db	0D1h,0E5h, 2Fh, 2Ah,0E7h,0C0h
		db	 2Ah,0E7h,0C0h, 2Ah,0E7h,0C0h
		db	 2Ah,0E7h,0C0h, 2Ah,0E7h,0C0h
		db	 2Ah,0E7h,0C0h, 3Ah,0DAh,0E5h
		db	 17h, 4Ah,0E5h, 27h, 4Ah,0E5h
		db	 37h, 4Ah,0D9h,0F6h,0B6h, 06h
		db	0D1h,0E5h, 2Fh, 3Bh,0E7h,0C0h
		db	 3Bh,0E7h,0C0h, 3Bh,0E7h,0C0h
		db	 3Bh,0E7h,0C0h, 5Bh,0E7h,0C0h
		db	 5Bh,0E7h,0C0h, 5Bh,0E7h,0C0h
		db	 5Bh,0DAh,0E5h, 17h, 4Bh,0E5h
		db	 27h, 4Bh,0E5h, 37h, 4Bh,0D9h
		db	0D2h,0E5h, 2Fh, 31h,0E7h,0C0h
		db	 31h,0E7h,0C0h, 31h,0E7h,0C0h
		db	 31h,0E7h,0C0h, 51h,0E7h,0C0h
		db	 51h,0E7h,0C0h, 51h,0E7h,0C0h
		db	 51h,0DAh,0E5h, 17h, 41h,0E5h
		db	 27h, 41h,0E5h, 37h, 41h,0D9h
		db	0FBh, 25h, 06h,0F0h, 03h, 6Ah
		db	 38h, 58h, 36h, 76h,0F0h, 04h
		db	 05h, 04h, 13h, 16h, 1Ah, 2Ah
		db	 38h, 18h, 36h, 16h,0FEh,0F0h
		db	 04h, 81h,0E5h, 1Fh,0D4h,0FEh
		db	0FFh, 0Ch, 24h, 03h, 18h, 30h
		db	 60h, 48h, 04h, 10h, 04h, 0Ch
		db	 18h, 54h, 60h, 30h, 06h, 08h
		db	0C0h, 0Ch, 60h, 24h, 18h, 48h
		db	 30h, 02h, 01h, 06h, 0Ch, 10h
		db	 18h, 24h, 1Eh, 03h, 18h, 24h
		db	 0Ch, 00h, 00h, 00h, 02h, 02h
		db	 01h, 41h,0A1h, 1Eh, 00h, 50h
		db	 43h,0F3h, 35h, 0Eh, 0Eh, 08h
		db	 08h, 05h, 05h, 01h,0B4h,0A1h
		db	 61h, 00h, 47h,0F0h, 25h, 04h
		db	 04h, 00h, 00h, 00h, 02h, 02h
		db	 01h, 0Ah, 01h,0CFh, 00h,0F3h
		db	0F4h, 09h, 07h, 08h, 00h, 00h
		db	 00h, 02h, 02h, 01h,0C0h,0E1h
		db	 8Ah, 00h,0F4h,0F2h, 42h, 67h
		db	 06h, 00h, 0Ah, 0Ah, 05h, 05h
		db	 01h,0E4h, 01h, 52h, 00h,0F5h
		db	0F4h,0D3h,0F6h, 08h, 00h, 00h
		db	 00h, 02h, 02h, 01h, 02h, 11h
data_587	dw	46h			; Data table (indexed access)
		db	0F4h,0FAh, 05h, 03h, 08h, 00h
		db	 00h, 00h, 02h, 02h, 01h, 21h
		db	 22h, 14h, 02h,0F8h, 63h, 4Ch
		db	 5Eh, 0Eh, 0Eh, 43h, 43h, 04h
		db	 04h, 81h, 00h, 01h, 1Fh, 02h
		db	 09h, 6Eh, 31h, 1Fh, 38h, 00h
		db	 04h, 10h, 17h, 17h, 03h, 03h
		db	 01h, 00h, 01h, 03h, 06h, 07h
		db	 5Fh, 24h, 1Fh, 38h, 00h, 04h
		db	 00h, 00h, 00h, 02h, 02h, 81h
		db	 01h, 02h,0D0h, 01h, 07h, 99h
		db	 01h,0FFh, 38h, 00h, 05h, 01h
		db	 33h, 33h, 02h, 02h, 01h, 00h
		db	 01h, 0Dh, 29h, 07h, 1Dh, 81h
		db	 0Fh, 38h, 00h, 04h, 00h, 11h
		db	 11h, 04h, 04h, 01h, 00h, 02h
		db	 03h, 10h, 0Bh,0DAh, 01h, 1Fh
		db	 38h, 00h, 03h, 01h, 23h, 23h
		db	 02h, 02h, 01h, 00h, 01h, 05h
		db	 06h, 0Dh, 5Fh, 14h, 1Fh, 38h
		db	 00h, 03h,0F4h, 06h, 00h, 00h
		db	 2Dh, 03h,0C3h, 03h,0D9h, 02h
		db	0F5h, 02h, 01h, 1Fh, 00h, 02h
		db	 8Ah, 00h, 03h,0EBh, 00h, 04h
		db	 84h, 02h, 05h,0C0h, 02h, 06h
		db	0C5h, 02h, 07h,0CAh, 02h, 08h
		db	0CFh, 02h, 09h,0D4h, 02h,0F0h
		db	 00h,0E9h, 00h,0E0h, 64h,0A0h
		db	0E6h, 01h, 00h,0E5h, 6Eh, 10h
		db	 20h, 30h,0E2h, 40h, 41h, 42h
		db	 41h,0F0h, 00h,0E9h, 00h,0E5h
		db	 7Fh, 51h, 53h, 64h, 74h,0F0h
		db	 01h, 04h, 15h, 14h
		db	'!!1 13$'
		db	'D'
		db	 04h, 15h, 14h, 21h, 21h, 31h
		db	 50h,0E5h, 78h, 16h, 15h, 14h
		db	 11h, 13h, 17h, 18h, 19h,0E5h
		db	 7Fh
		db	'j{|zxw3 '
		db	0F0h, 02h, 0Ah, 1Ah, 2Bh, 3Ch
		db	 3Ah, 18h
		db	'*J@Z;<:87C@', 0Ah
		db	 1Ah, 2Bh, 3Ch, 3Ah, 18h, 2Ah
		db	 4Ah, 00h, 20h, 60h, 71h, 72h
		db	 71h,0FBh, 33h, 00h,0FFh,0F0h
		db	 02h,0E9h, 00h,0E5h, 55h,0A0h
		db	0E6h, 0Bh,0F5h, 00h, 02h,0F0h
		db	 02h,0E9h, 00h,0F5h, 01h, 02h
		db	0F0h, 02h,0E9h, 00h,0E2h, 40h
		db	 1Dh, 1Eh, 14h, 15h,0F6h, 01h
		db	 9Dh, 00h,0F6h, 00h, 96h, 00h
		db	0F0h, 02h,0E9h, 00h,0F5h, 01h
		db	 10h,0F0h, 02h,0E9h, 00h,0F5h
		db	 02h, 02h,0F0h, 02h,0E9h, 00h
		db	 1Dh, 1Eh, 14h, 15h,0F6h, 02h
		db	0BDh, 00h,0F6h, 01h,0B6h, 00h
		db	0F5h, 01h, 10h,0F0h, 02h,0E9h
		db	 00h,0F5h, 02h, 02h,0F0h, 02h
		db	0E9h, 00h, 1Ah, 13h, 17h, 13h
		db	0F6h, 02h,0D7h, 00h,0F6h, 01h
		db	0D0h, 00h,0FBh,0AFh, 00h,0FFh
		db	0F0h, 02h,0E9h, 00h,0A0h,0E6h
		db	 6Ah, 40h, 40h,0F0h, 02h,0E9h
		db	 00h,0F5h, 01h, 02h,0F0h, 02h
		db	0E9h, 00h,0E5h, 7Fh,0E2h, 40h
		db	 1Fh,0E5h, 7Ah, 1Fh,0E5h, 75h
		db	 1Fh,0E5h, 70h, 1Fh,0E5h, 64h
		db	 1Fh,0E5h, 5Ah, 1Fh,0E5h, 55h
		db	 1Fh,0E5h, 50h, 1Fh,0E5h, 4Bh
		db	 1Fh,0E5h, 46h, 1Fh,0E5h, 41h
		db	 1Fh,0E5h, 3Ch, 1Fh,0E5h, 37h
		db	 1Fh,0E5h, 32h, 1Fh,0E5h, 2Dh
		db	 1Fh,0E5h, 28h, 1Fh,0E5h, 7Fh
		db	0E9h, 01h, 10h,0E5h, 7Ah, 10h
		db	0E5h, 75h, 10h,0E5h, 70h, 10h
		db	0E5h, 64h, 10h,0E5h, 5Ah, 10h
		db	0E5h, 55h, 10h,0E5h, 50h, 10h
		db	0E5h, 4Bh, 10h,0E5h, 46h, 10h
		db	0E5h, 41h, 10h,0E5h, 3Ch, 10h
		db	0E5h, 37h, 10h,0E5h, 32h, 10h
		db	0E5h, 2Dh, 10h,0E5h, 28h, 10h
		db	0E5h, 7Fh, 11h,0E5h, 7Ah, 11h
		db	0E5h, 75h, 11h,0E5h, 70h, 11h
		db	0E5h, 64h, 11h,0E5h, 5Ah, 11h
		db	0E5h, 55h, 11h,0E5h, 50h, 11h
		db	0E5h, 4Bh, 11h,0E5h, 46h, 11h
		db	0E5h, 41h, 11h,0E5h, 3Ch, 11h
		db	0E5h, 37h, 11h,0E5h, 32h, 11h
		db	0E5h, 2Dh, 11h,0E5h, 28h, 11h
		db	0E5h, 7Fh, 12h,0E5h, 7Ah, 12h
		db	0E5h, 75h, 12h,0E5h, 70h, 12h
		db	0E5h, 64h, 12h,0E5h, 5Ah, 12h
		db	0E5h, 55h, 12h,0E5h, 50h, 12h
		db	0E5h, 4Bh, 12h,0E5h, 46h, 12h
		db	0E5h, 41h, 12h,0E5h, 3Ch, 12h
		db	0E5h, 37h, 12h,0E5h, 32h, 12h
		db	0E5h, 2Dh, 12h,0E5h, 28h, 12h
		db	0F6h, 01h,0FBh, 00h,0F5h, 01h
		db	 02h,0F0h, 02h,0E9h, 01h,0E5h
		db	 7Fh, 33h,0E5h, 73h, 13h,0E5h
		db	 6Eh, 13h,0E5h, 69h, 13h,0E5h
		db	 64h, 13h,0E5h, 5Fh, 13h,0E5h
		db	 5Ah, 13h,0E5h, 7Fh, 31h,0E5h
		db	 73h, 11h,0E5h, 73h, 11h,0E5h
		db	 69h, 11h,0E5h, 64h, 11h,0E5h
		db	 5Fh, 11h,0E5h, 5Ah, 11h,0E5h
		db	 7Fh, 30h,0E5h, 73h, 10h,0E5h
		db	6Eh
loc_170:
;*		adc	ch,ah
		db	 10h,0E5h		;  Fixup - byte match
		db	 69h, 10h,0E5h, 64h, 10h,0E5h
		db	 5Fh, 10h,0E5h, 5Ah, 10h,0E5h
		db	 69h, 14h,0E5h, 64h, 14h,0E5h
		db	 5Fh, 14h,0E5h, 5Ah, 14h,0E5h
		db	 55h, 14h,0E5h, 50h, 14h,0E5h
		db	 4Bh, 14h,0E5h, 46h, 14h,0E5h
		db	 7Fh, 33h,0E5h, 73h, 13h,0E5h
		db	 6Eh, 13h,0E5h, 69h, 13h,0E5h
		db	 64h, 13h,0E5h, 5Fh, 13h,0E5h
		db	 5Ah, 13h,0E5h, 7Fh, 31h,0E5h
		db	 73h, 11h,0E5h, 73h, 11h,0E5h
		db	 69h, 11h,0E5h, 64h, 11h,0E5h
		db	 5Fh, 11h,0E5h, 5Ah, 11h,0E5h
		db	 7Fh, 30h,0E5h, 73h, 10h,0E5h
		db	 6Eh, 10h,0E5h, 69h, 10h,0E5h
		db	 64h, 10h,0E5h, 5Fh, 10h,0E5h
		db	 5Ah, 10h,0E5h, 55h, 10h,0E5h
		db	 50h, 10h,0E5h, 4Bh, 10h,0E5h
		db	 46h, 10h,0E5h, 41h, 10h,0E5h
		db	 3Ch, 10h,0E5h, 37h, 10h,0E5h
		db	 32h, 10h,0F6h, 01h,0CAh, 01h
		db	0FBh,0F4h, 00h,0FFh,0F0h, 02h
		db	0E9h, 01h, 45h, 45h,0E6h, 31h
		db	0E5h, 50h,0F0h, 02h,0E9h, 01h
		db	0F5h, 01h, 04h,0F0h, 02h,0E9h
		db	 01h,0E2h, 40h,0F0h, 03h, 06h
		db	 16h, 26h, 27h, 28h, 26h, 09h
		db	 39h,0F6h, 01h, 95h, 02h,0F5h
		db	 01h, 02h,0F0h, 03h,0E9h, 01h
		db	 36h, 3Ah, 09h, 39h, 36h, 3Ah
		db	 0Bh, 3Bh,0F6h, 01h,0ACh, 02h
		db	0FBh, 8Eh, 02h,0FFh,0F0h, 03h
		db	0E9h, 01h,0FFh,0F0h, 03h,0E9h
		db	 01h,0FFh,0F0h, 03h,0E9h, 01h
		db	0FFh,0F0h, 03h,0E9h, 01h,0FFh
		db	0F0h, 03h,0E9h, 01h,0FFh, 80h
		db	'JILHGEMOPQTS@C+-+*)('
		db	 80h, 39h, 3Eh, 3Dh, 3Ch, 3Bh
		db	 34h, 60h,0FFh, 30h,0FFh, 24h
		db	0FFh, 09h,0FFh, 01h, 01h, 60h
		db	 5Fh, 60h, 61h, 48h, 49h, 0Ch
		db	 0Bh, 06h, 05h, 60h, 61h, 60h
		db	 5Fh, 48h, 49h, 30h,0FFh, 48h
		db	 47h, 18h, 17h, 30h, 2Eh, 0Ch
		db	 0Bh, 24h, 22h, 18h, 17h, 60h
		db	 5Fh, 48h, 47h, 09h,0FFh, 01h
		db	 01h, 60h, 61h, 30h, 2Eh, 0Ch
		db	 0Bh, 60h, 5Fh, 04h, 23h, 00h
		db	 2Ch, 00h, 36h, 00h, 4Ch, 01h
		db	 85h, 01h, 90h, 01h, 9Dh, 01h
		db	0F5h, 01h, 29h, 02h, 3Fh, 03h
		db	 54h, 03h, 90h, 03h, 40h, 03h
		db	0C3h, 03h, 0Ch,0B0h, 01h, 05h
		db	 01h, 01h,0F0h, 00h, 80h,0E5h
		db	 07h,0D5h,0FBh,0A3h, 01h,0F0h
		db	 00h, 81h,0E5h, 0Fh,0D4h,0D8h
		db	0FBh,0FBh, 01h,0F0h, 00h, 82h
		db	0D3h, 10h,0F0h, 00h,0F5h, 08h
		db	0F0h, 00h,0E5h, 07h, 28h,0CFh
		db	 28h,0CFh, 28h,0CFh, 28h,0CFh
		db	 28h,0CFh, 28h,0CFh, 28h,0CFh
		db	 28h,0CFh, 28h,0CFh, 28h,0CFh
		db	 28h,0CFh, 28h,0CFh, 28h,0CFh
		db	 28h,0CFh, 28h,0CFh, 28h,0E5h
		db	 07h, 2Ah,0CFh, 2Ah,0CFh, 2Ah
		db	0CFh, 2Ah,0CFh, 2Ah,0CFh, 2Ah
		db	0CFh, 2Ah,0CFh, 2Ah,0CFh, 2Ah
		db	0CFh, 2Ah,0CFh, 2Ah,0CFh, 2Ah
		db	0CFh, 2Ah,0CFh, 2Ah,0CFh, 2Ah
		db	0CFh, 2Ah,0E5h, 07h, 28h,0CFh
		db	 28h,0CFh, 28h,0CFh, 28h,0CFh
		db	 28h,0CFh, 28h,0CFh, 28h,0CFh
		db	 28h,0CFh, 28h,0CFh, 28h,0CFh
		db	 28h,0CFh, 28h,0CFh, 28h,0CFh
		db	 28h,0CFh, 28h,0CFh, 28h,0E5h
		db	 07h, 27h,0CFh, 27h,0CFh, 27h
		db	0CFh, 27h,0CFh, 27h,0CFh, 27h
		db	0CFh, 27h,0CFh, 27h,0CFh, 27h
		db	0CFh, 27h,0CFh, 27h,0CFh, 27h
		db	0CFh, 27h,0CFh, 27h,0CFh, 27h
		db	0CFh, 27h,0F6h, 3Fh, 00h,0F5h
		db	 08h,0F0h, 00h,0E5h, 07h, 36h
		db	0CFh, 26h,0CFh, 26h,0CFh, 26h
		db	0CFh, 26h,0CFh, 26h,0CFh, 26h
		db	0E5h, 07h, 38h,0CFh, 28h,0CFh
		db	 28h,0CFh, 28h,0CFh, 28h,0CFh
		db	 28h,0CFh, 28h,0E5h, 07h, 3Ah
		db	0CFh, 2Ah,0CFh, 2Ah,0CFh, 2Ah
		db	0CFh, 2Ah,0CFh, 2Ah,0CFh, 2Ah
		db	0C3h, 25h,0CFh, 25h,0CFh, 25h
		db	0CFh, 25h,0CFh, 25h,0CFh, 25h
		db	0CFh, 25h,0CFh, 25h,0E5h, 07h
		db	 36h,0CFh, 26h,0CFh, 26h,0CFh
		db	 26h,0CFh, 26h,0CFh, 26h,0CFh
		db	 26h,0E5h, 07h, 38h,0CFh, 28h
		db	0CFh, 28h,0CFh, 28h,0CFh, 28h
		db	0CFh, 28h,0CFh, 28h,0E5h, 07h
		db	 3Ah,0CFh, 2Ah,0CFh, 2Ah,0CFh
		db	 2Ah,0CFh, 2Ah,0CFh, 2Ah,0CFh
		db	 2Ah,0CFh, 2Ah,0CFh, 2Ah,0CFh
		db	 2Ah,0CFh, 2Ah,0CFh, 2Ah,0CFh
		db	 2Ah,0CFh, 2Ah,0CFh, 2Ah,0F6h
		db	0CAh, 00h,0FBh, 3Bh, 00h,0F0h
		db	 00h, 83h,0E5h, 17h,0F0h, 00h
		db	 10h,0F0h, 00h,0D3h,0F5h, 08h
		db	0F0h, 00h, 4Ah, 2Ah,0E4h
		db	 23h, 22h
		db	0E3h			; Data table (indexed access)
		db	 2Ah,0E4h, 11h,0E3h, 4Ah
loc_171:
		sub	ah,ah
		and	sp,[bp+si]
		jcxz	$+2Ch			; Jump if cx=0
		in	al,11h			; port 11h ??I/O Non-standard
		jcxz	loc_171			; Jump if cx=0
		pop	cx
		add	[bp+si+5Ch],bx
		in	al,11h			; port 11h ??I/O Non-standard
		jcxz	loc_173			; Jump if cx=0
		pop	sp
		adc	ax,5C5Ah
		in	al,11h			; port 11h ??I/O Non-standard
		jcxz	$+5Ch			; Jump if cx=0
		pop	sp
		adc	ax,54FBh
;*		add	ax,si
		db	 01h,0F0h		;  Fixup - byte match
		add	byte ptr ss:[1FE5h][bp+di],al
		loopz	$-4			; Loop if zf=1, cx>0

		db	 60h,0FBh, 51h, 01h,0F0h, 00h
		db	 81h,0E5h, 17h,0D4h,0D8h,0E1h
		db	 06h, 60h,0FBh,0FBh, 01h,0F0h
		db	 00h, 80h,0E5h, 0Fh,0D4h,0F0h
		db	 00h,0E0h, 9Bh, 50h,0F0h, 00h
		db	0CEh, 70h,0F0h, 01h, 03h, 02h
		db	 03h,0C1h, 13h, 15h, 21h,0E3h
		db	 3Ch,0E4h, 31h, 43h,0E7h, 13h
		db	 10h, 13h, 15h
loc_172:
;*		and	bx,sp
		db	 21h,0E3h		;  Fixup - byte match
		cmp	al,0E4h
		xor	[bp+di-19h],ax
		adc	dx,[bx+si-32h]
		jcxz	loc_174			; Jump if cx=0
		cmp	al,0E4h
		xor	[bp+di],si
		xor	ax,3836h
loc_173:
;*		cmp	cx,ax
		db	 39h,0C1h		;  Fixup - byte match
		cmc				; Complement carry
;*		or	al,dh
		db	 08h,0F0h		;  Fixup - byte match
		add	[bp+si-1Ch],bp
		jno	loc_172			; Jump if not overflw
		jl	$+7Ch			; Jump if <
		js	$+78h			; Jump if sign=1
		adc	ax,5A10h
                           lock	add	cl,[bp+si]
		in	al,11h			; port 11h ??I/O Non-standard
		jcxz	$+2Eh			; Jump if cx=0
		sub	cl,[bx+si]
		sbb	bh,[bp+si]
		imul	word ptr ds:[3001h][bx+si]	; dx:ax = data * ax
		sti				; Enable interrupts
		db	0D6h, 01h,0F0h, 00h, 81h,0E5h
		db	 27h,0D2h,0F0h, 00h,0F5h, 10h
		db	0F0h, 00h, 25h, 28h,0E4h
		db	21h
loc_174:
		jcxz	loc_175			; Jump if cx=0
		idiv	bh			; al, ah rem = ax/reg
;*		add	ax,si
		db	 01h,0F0h		;  Fixup - byte match
;*		add	ch,dh
		db	 00h,0F5h		;  Fixup - byte match
;*		xor	al,0
		db	 80h,0F0h, 00h		;  Fixup - byte match
		and	ax,0E428h
;*		and	bx,sp
		db	 21h,0E3h		;  Fixup - byte match
		sub	al,0F6h
		push	cs
		add	ah,ah
		cmc				; Complement carry
;*		xor	al,0
		db	 80h,0F0h, 00h		;  Fixup - byte match
		sub	ah,[di]
		db	 26h, 25h,0F6h, 1Ch, 02h,0E3h
		db	0FBh, 0Ah, 02h,0F0h, 00h, 82h
		db	0D1h, 10h,0F0h, 00h,0F5h, 08h
		db	0F0h
loc_175:
;*		add	ch,ah
		db	 00h,0E5h		;  Fixup - byte match
		pop	es
;*		sub	bh,cl
		db	 28h,0CFh		;  Fixup - byte match
;*		sub	bh,cl
		db	 28h,0CFh		;  Fixup - byte match
;*		sub	bh,cl
		db	 28h,0CFh		;  Fixup - byte match
;*		sub	bh,cl
		db	 28h,0CFh		;  Fixup - byte match
;*		sub	bh,cl
		db	 28h,0CFh		;  Fixup - byte match
;*		sub	bh,cl
		db	 28h,0CFh		;  Fixup - byte match
;*		sub	bh,cl
		db	 28h,0CFh		;  Fixup - byte match
;*		sub	bh,cl
		db	 28h,0CFh		;  Fixup - byte match
;*		sub	bh,cl
		db	 28h,0CFh		;  Fixup - byte match
;*		sub	bh,cl
		db	 28h,0CFh		;  Fixup - byte match
;*		sub	bh,cl
		db	 28h,0CFh		;  Fixup - byte match
;*		sub	bh,cl
		db	 28h,0CFh		;  Fixup - byte match
;*		sub	bh,cl
		db	 28h,0CFh		;  Fixup - byte match
;*		sub	bh,cl
		db	 28h,0CFh		;  Fixup - byte match
;*		sub	bh,cl
		db	 28h,0CFh		;  Fixup - byte match
;*		sub	ch,ah
		db	 28h,0E5h		;  Fixup - byte match
		pop	es
		sub	cl,bh
		sub	cl,bh
		sub	cl,bh
		sub	cl,bh
		sub	cl,bh
		sub	cl,bh
		sub	cl,bh
		sub	cl,bh
		sub	cl,bh
		sub	cl,bh
		sub	cl,bh
		sub	cl,bh
		sub	cl,bh
		sub	cl,bh
		sub	cl,bh
		sub	ah,ch
		pop	es
;*		sub	bh,cl
		db	 28h,0CFh		;  Fixup - byte match
;*		sub	bh,cl
		db	 28h,0CFh		;  Fixup - byte match
;*		sub	bh,cl
		db	 28h,0CFh		;  Fixup - byte match
;*		sub	bh,cl
		db	 28h,0CFh		;  Fixup - byte match
;*		sub	bh,cl
		db	 28h,0CFh		;  Fixup - byte match
;*		sub	bh,cl
		db	 28h,0CFh		;  Fixup - byte match
;*		sub	bh,cl
		db	 28h,0CFh		;  Fixup - byte match
;*		sub	bh,cl
		db	 28h,0CFh		;  Fixup - byte match
;*		sub	bh,cl
		db	 28h,0CFh		;  Fixup - byte match
;*		sub	bh,cl
		db	 28h,0CFh		;  Fixup - byte match
;*		sub	bh,cl
		db	 28h,0CFh		;  Fixup - byte match
;*		sub	bh,cl
		db	 28h,0CFh		;  Fixup - byte match
;*		sub	bh,cl
		db	 28h,0CFh		;  Fixup - byte match
;*		sub	bh,cl
		db	 28h,0CFh		;  Fixup - byte match
;*		sub	bh,cl
		db	 28h,0CFh		;  Fixup - byte match
;*		sub	ch,ah
		db	 28h,0E5h		;  Fixup - byte match
		pop	es
		daa				; Decimal adjust
		iret				; Interrupt return
sub_66		endp

		db	 27h,0CFh, 27h,0CFh, 27h,0CFh
		db	 27h,0CFh, 27h,0CFh, 27h,0CFh
		db	 27h,0CFh, 27h,0CFh, 27h,0CFh
		db	 27h,0CFh, 27h,0CFh, 27h,0CFh
		db	 27h,0CFh, 27h,0CFh, 27h,0F6h
		db	 32h, 02h,0F5h, 08h,0F0h, 00h
		db	0E5h, 07h, 36h,0CFh, 26h,0CFh
		db	 26h,0CFh, 26h,0CFh, 26h,0CFh
		db	 26h,0CFh, 26h,0E5h, 07h, 38h
		db	0CFh, 28h,0CFh, 28h,0CFh, 28h
		db	0CFh, 28h,0CFh, 28h,0CFh, 28h
		db	0E5h, 07h, 3Ah,0CFh, 2Ah,0CFh
		db	 2Ah,0CFh, 2Ah,0CFh, 2Ah,0CFh
		db	 2Ah,0CFh, 2Ah,0C3h, 25h,0CFh
		db	 25h,0CFh, 25h,0CFh, 25h,0CFh
		db	 25h,0CFh, 25h,0CFh, 25h,0CFh
		db	 25h,0E5h, 07h, 36h,0CFh, 26h
		db	0CFh, 26h,0CFh, 26h,0CFh, 26h
		db	0CFh, 26h,0CFh, 26h,0E5h, 07h
		db	 38h,0CFh, 28h,0CFh, 28h,0CFh
		db	 28h,0CFh, 28h,0CFh, 28h,0CFh
		db	 28h,0E5h, 07h, 3Ah,0CFh, 2Ah
		db	0CFh, 2Ah,0CFh, 2Ah,0CFh, 2Ah
		db	0CFh, 2Ah,0CFh, 2Ah,0CFh, 2Ah
		db	0CFh, 2Ah,0CFh, 2Ah,0CFh, 2Ah
		db	0CFh, 2Ah,0CFh, 2Ah,0CFh, 2Ah
		db	0CFh, 2Ah,0F6h,0BDh, 02h,0FBh
		db	 2Eh, 02h,0FFh, 03h,0C0h, 0Ch
		db	 18h, 90h, 60h, 06h, 5Dh, 01h
		db	 60h,0B4h, 06h,0C0h, 30h, 48h
		db	 18h, 0Ch, 24h, 18h, 60h, 0Ah
		db	 08h, 08h, 04h, 04h, 01h, 84h
		db	 81h, 1Ah, 00h,0F4h,0F4h, 23h
		db	 23h, 01h, 00h, 00h, 00h, 02h
		db	 02h, 01h,0A2h,0B1h, 62h, 00h
		db	0A2h,0B0h, 0Dh, 0Dh, 0Fh, 00h
		db	 00h, 00h, 02h, 02h, 01h,0E0h
		db	 21h, 8Eh, 00h,0F4h,0F5h, 32h
		db	 36h, 08h, 0Eh, 08h, 08h, 05h
		db	 05h, 01h,0B4h,0A1h, 61h, 00h
		db	 47h,0F0h, 25h, 04h, 04h, 02h
		db	 0Eh, 0Eh, 05h, 05h, 01h, 00h
		db	 01h, 03h, 45h, 03h, 6Eh, 02h
		db	 2Fh, 38h, 00h, 04h, 01h, 06h
		db	 06h, 07h, 07h, 01h, 00h, 01h
		db	 03h, 0Eh, 05h, 5Fh, 31h, 1Fh
		db	 38h, 00h, 03h, 00h, 00h, 00h
		db	 02h, 02h, 81h, 00h, 01h, 07h
		db	 7Ch, 07h, 99h, 01h, 0Dh, 38h
		db	 00h, 05h,0EBh, 21h, 00h, 00h
		db	 02h, 60h,0FAh,0BCh, 00h, 20h
		db	0FBh, 2Eh,0C7h, 06h, 30h, 66h
		db	0A8h, 6Ah,0B8h, 06h, 00h, 2Eh
		db	0FFh, 16h, 08h, 30h, 0Eh, 07h
		db	0BEh, 52h, 81h,0BFh, 00h,0A0h
		db	0B0h, 02h, 2Eh,0FFh, 16h, 0Ch
		db	 01h, 2Eh, 8Eh, 06h, 2Ch,0FFh
		db	0BEh, 00h,0A0h,0BFh, 00h, 40h
		db	0E8h, 3Ah, 09h, 0Eh, 07h,0BEh
		db	 73h, 81h,0BFh, 00h,0A0h,0B0h
		db	 02h, 2Eh,0FFh, 16h, 0Ch, 01h
		db	 2Eh, 8Eh, 06h, 2Ch,0FFh,0BEh
		db	 00h,0A0h,0BFh, 00h, 80h,0E8h
		db	 1Dh, 09h, 2Eh, 8Eh, 06h, 2Ch
		db	0FFh,0BFh, 00h, 40h,0B0h,0FFh
		db	0BBh, 18h, 0Bh
data_588	db	0B9h			; Data table (indexed access)
		db	 58h, 18h, 2Eh,0FFh, 16h, 04h
		db	 30h, 8Ch,0C8h, 05h, 00h, 20h
		db	 8Eh,0C0h, 1Eh,0BFh, 00h, 00h
		db	 2Eh, 8Eh, 1Eh, 2Ch,0FFh,0BEh
		db	 00h, 80h,0B8h,0B2h, 00h,0E8h
		db	0A0h, 09h, 1Fh,0BFh, 00h, 00h
		db	0B0h,0FFh,0BBh, 71h, 2Dh,0B9h
		db	58h
loc_176:
		sbb	byte ptr ds:[16FFh],ch	; ('s')
		add	al,30h			; '0'
		mov	byte ptr cs:data_720,0
		mov	al,0FFh
		call	sub_67
		mov	cx,59h

locloop_177:
		push	cx
		mov	ax,cs
		add	ax,2000h
		mov	es,ax
		mov	ax,cx
		dec	ax
		add	ax,ax
		push	ds
		mov	di,0
		mov	ds,cs:data_722
		mov	si,8000h
		call	sub_78
		pop	ds
		pop	cx
		push	cx
		mov	bx,cx
		add	bx,17h
		mov	bh,2Dh			; '-'
		mov	di,0
		mov	cx,1858h
		call	word ptr cs:data_363
		mov	al,0Ah
		call	sub_67
		pop	cx
		loop	locloop_177		; Loop if cx > 0

		push	cs
		pop	es
		mov	si,813Dh
		mov	di,0A000h
		mov	al,2
		call	word ptr cs:data_178
		mov	ax,cs
		add	ax,2000h
		mov	es,ax
		mov	si,0A000h
		mov	di,0
		call	sub_76
		mov	di,0
		call	word ptr cs:data_367
		call	sub_70
		push	cs
		pop	es
		mov	si,817Eh
		mov	di,0A000h
		mov	al,2
		call	word ptr cs:data_178
		mov	es,cs:data_722
		mov	si,0A000h
		mov	di,4000h
		call	sub_76
		mov	ax,1
		call	word ptr cs:data_364
		mov	ax,7
		call	word ptr cs:data_362
		mov	es,cs:data_722
		mov	di,4000h
		mov	al,0FFh
		mov	bx,1D12h
		mov	cx,1C64h
		call	word ptr cs:data_360
		call	sub_70
		push	cs
		pop	es
		mov	si,8148h
		mov	di,0A000h
		mov	al,2
		call	word ptr cs:data_178
		mov	es,cs:data_722
		mov	si,0A000h
		mov	di,4000h
		call	sub_76
		mov	di,4000h
		mov	bx,1610h
		mov	cx,2468h
		mov	al,5
		call	word ptr cs:data_365
		call	sub_70
		push	cs
		pop	es
		mov	si,8152h
		mov	di,0A000h
		mov	al,2
		call	word ptr cs:data_178
		mov	es,cs:data_722
		mov	si,0A000h
		mov	di,4000h
		call	sub_76
		push	cs
		pop	es
		mov	si,815Dh
		mov	di,0A000h
		mov	al,2
		call	word ptr cs:data_178
		mov	es,cs:data_722
		mov	si,0A000h
		mov	di,8000h
		call	sub_76
		xor	ax,ax			; Zero register
		call	word ptr cs:data_364
		mov	ax,6
		call	word ptr cs:data_362
		mov	bx,0A15h
		mov	cx,1A5Dh
		call	word ptr cs:data_366
		mov	es,cs:data_722
		mov	di,4000h
		mov	bx,0B18h
		mov	cx,1858h
		call	word ptr cs:data_363
		mov	bx,2C15h
		mov	cx,1A5Dh
		call	word ptr cs:data_366
		mov	es,cs:data_722
		mov	di,8000h
		mov	bx,2D18h
		mov	cx,1858h
		call	word ptr cs:data_363
		call	sub_70
		push	cs
		pop	es
		mov	si,8168h
		mov	di,0A000h
		mov	al,2
		call	word ptr cs:data_178
		mov	es,cs:data_722
		mov	si,0A000h
		mov	di,8000h
		call	sub_76
		mov	es,cs:data_722
		mov	di,8000h
		mov	al,0FFh
		mov	bx,2D18h
		mov	cx,1858h
		call	word ptr cs:data_360
		call	sub_70
		push	cs
		pop	es
		mov	si,8189h
		mov	di,0A000h
		mov	al,2
		call	word ptr cs:data_178
		mov	es,cs:data_722
		mov	si,0A000h
		mov	di,4000h
		call	sub_76
		push	cs
		pop	es
		mov	si,8194h
		mov	di,0A000h
		mov	al,2
		call	word ptr cs:data_178
		mov	es,cs:data_722
		mov	si,0A000h
		mov	di,8000h
		call	sub_76
		mov	ax,2
		call	word ptr cs:data_364
		mov	ax,7
		call	word ptr cs:data_362
		mov	es,cs:data_722
		mov	di,4000h
		mov	al,0FFh
		mov	bx,0B12h
		mov	cx,1A64h
		call	word ptr cs:data_360
		mov	es,cs:data_722
		mov	di,8000h
		mov	al,0FFh
		mov	bx,3325h
		mov	cx,1251h
		call	word ptr cs:data_360
		call	sub_70
		mov	es,cs:data_722
		mov	di,4000h
		xor	ax,ax			; Zero register
		mov	cx,0F3Ch
		rep	stosw			; Rep when cx >0 Store ax to es:[di]
		mov	di,4000h
		mov	al,55h			; 'U'
		mov	cx,64h

locloop_178:
		push	cx
		mov	cx,1Ah
		rep	stosb			; Rep when cx >0 Store al to es:[di]
		ror	al,1			; Rotate
		pop	cx
		loop	locloop_178		; Loop if cx > 0

		xor	al,al			; Zero register
		mov	di,4000h
		mov	bx,0B12h
		mov	cx,1A64h
		call	word ptr cs:data_360
		call	sub_70
		mov	al,0FFh
		mov	bx,0
		mov	cx,50C8h
		call	word ptr cs:data_361
		jmp	loc_229

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_67		proc	near
loc_179:
		call	sub_68
		cmp	cs:data_720,al
		jb	loc_179			; Jump if below
		mov	byte ptr cs:data_720,0
		retn
sub_67		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_68		proc	near
		push	si
		push	ax
		call	word ptr cs:data_179
		call	word ptr cs:data_180
		call	word ptr cs:data_181
		call	word ptr cs:data_182
		pop	ax
		pop	si
		retn
sub_68		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_70		proc	near
		mov	byte ptr cs:data_720,0
loc_180:
		mov	al,10h
		call	sub_67
loc_181:
		push	cs
		pop	ds
		mov	si,data_538
		lodsb				; String [si] to al
		mov	data_538,si
		test	al,80h
		jz	loc_182			; Jump if zero
		jmp	loc_187
loc_182:
		cmp	al,20h			; ' '
		je	loc_184			; Jump if equal
		cmp	al,2Eh			; '.'
		je	loc_184			; Jump if equal
		cmp	al,2Ch			; ','
		je	loc_184			; Jump if equal
		cmp	al,22h			; '"'
		je	loc_184			; Jump if equal
		cmp	al,27h			; '''
		je	loc_184			; Jump if equal
		mov	ah,byte ptr data_543	; ('@33D52E32D62"334277U"33D')

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_183:
		mov	byte ptr ds:[0FF75h],ah
loc_184:
		push	ax
		mov	bx,word ptr ds:[6632h]
		add	bx,4
		mov	al,byte ptr ds:[6634h]
		mov	dl,0Ah
		mul	dl			; ax = reg * al
		add	ax,8Fh
		mov	cx,ax
		pop	ax
		push	bx
		mov	bl,al
		sub	bl,20h			; ' '
		xor	bh,bh			; Zero register
		mov	dl,byte ptr ds:[807Dh][bx]
		mov	dh,bh
		pop	bx
		push	ax
		sub	bx,dx
		push	ax
		push	bx
		push	cx
		inc	bx
		inc	cx
		mov	ah,byte ptr ds:[6635h]
		call	word ptr cs:data_369
		pop	cx
		pop	bx
		pop	ax
		mov	ah,byte ptr ds:[6636h]
		call	word ptr cs:data_369
		pop	ax
		mov	bl,al
		sub	bl,20h			; ' '
		xor	bh,bh			; Zero register
		mov	cl,byte ptr ds:[80DDh][bx]
		mov	ch,bh
		add	word ptr ds:[6632h],cx
		cmp	al,20h			; ' '
		je	loc_185			; Jump if equal
		jmp	loc_180
loc_185:
		mov	si,word ptr ds:[6630h]
		call	sub_71
		mov	dx,word ptr ds:[6632h]
		add	dx,cx
		cmp	dx,138h
		jb	loc_186			; Jump if below
		jmp	loc_208
loc_186:
		jmp	loc_180
loc_187:
		cmp	al,0FFh
		jne	loc_188			; Jump if not equal
		retn
loc_188:
		cmp	al,0FDh
		jne	loc_189			; Jump if not equal
		retn
loc_189:
		mov	ah,al
		and	ah,0F0h
		cmp	ah,80h
		jne	loc_190			; Jump if not equal
		jmp	loc_216
loc_190:
		cmp	ah,90h
		jne	loc_191			; Jump if not equal
		jmp	loc_212
loc_191:
		cmp	ah,0A0h
		jne	loc_192			; Jump if not equal
		jmp	loc_214
loc_192:
		cmp	ah,0B0h
		jne	loc_193			; Jump if not equal
		jmp	loc_217
loc_193:
		cmp	ah,0C0h
		jne	loc_195			; Jump if not equal
		jmp	loc_219
loc_195:
		mov	bx,701h
		cmp	al,0FBh
		jne	loc_196			; Jump if not equal
		jmp	loc_206
loc_196:
		mov	bx,700h
		cmp	al,0FAh
		jne	loc_197			; Jump if not equal
		jmp	loc_206
loc_197:
		mov	bx,602h
		cmp	al,0F9h
		je	loc_206			; Jump if equal
		cmp	al,0F5h
		jne	loc_198			; Jump if not equal
		jmp	loc_210
loc_198:
		cmp	al,0F6h
		jne	loc_199			; Jump if not equal
		jmp	loc_211
loc_199:
		xor	ah,ah			; Zero register
		cmp	al,0F7h
		je	loc_207			; Jump if equal
		inc	ah
		cmp	al,0F3h
		je	loc_207			; Jump if equal
		inc	ah
		cmp	al,0F2h
		je	loc_207			; Jump if equal
		inc	ah
		cmp	al,0F1h
		je	loc_207			; Jump if equal
		cmp	al,0FEh
		je	loc_209			; Jump if equal
		mov	ah,byte ptr ds:[6637h]
		mov	byte ptr ds:[6637h],0
		cmp	al,0F0h
		jne	loc_200			; Jump if not equal
		jmp	loc_180
loc_200:
		mov	byte ptr ds:[6637h],3Dh	; '='
		cmp	al,0EFh
		jne	loc_201			; Jump if not equal
		jmp	loc_180
loc_201:
		mov	byte ptr ds:[6637h],3Eh	; '>'
		cmp	al,0EEh
		jne	loc_202			; Jump if not equal
		jmp	loc_180
loc_202:
		mov	byte ptr ds:[6637h],3Fh	; '?'
		cmp	al,0EDh
		jne	loc_203			; Jump if not equal
		jmp	loc_180
loc_203:
		mov	byte ptr ds:[6637h],40h	; '@'
		cmp	al,0ECh
		jne	loc_204			; Jump if not equal
		jmp	loc_180
loc_204:
		mov	byte ptr ds:[6637h],41h	; 'A'
		cmp	al,0EBh
		jne	loc_205			; Jump if not equal
		jmp	loc_180
loc_205:
		mov	byte ptr ds:[6637h],ah
		jmp	loc_180
loc_206:
		mov	byte ptr ds:[6635h],bl
		mov	byte ptr ds:[6636h],bh
		jmp	loc_180
loc_207:
		mov	data_539,0
		mov	data_540,ah
		jmp	loc_180
loc_208:
		mov	data_539,0
		inc	data_540
		jmp	loc_180
loc_209:
		mov	bx,8Fh
		mov	cx,5039h
		xor	al,al			; Zero register
		call	word ptr cs:data_300
		xor	ah,ah			; Zero register
		jmp	short loc_207
loc_210:
		mov	al,0F0h
		call	sub_67
		jmp	loc_180
loc_211:
		mov	al,0F0h
		call	sub_67
		mov	al,0F0h
		call	sub_67
		mov	al,0F0h
		call	sub_67
		jmp	loc_180
loc_212:
		mov	es,cs:data_722
		and	al,0Fh
		cmp	al,6
		jae	loc_213			; Jump if above or =
		mov	ah,1Bh
		mul	ah			; ax = reg * al
		add	ax,ax
		add	ax,ax
		add	ax,ax
		add	ax,ax
		add	ax,ax
		add	ax,58C0h
		mov	di,ax
		mov	bx,1350h
		mov	cx,920h
		call	word ptr cs:data_363
		jmp	loc_181
loc_213:
		sub	al,6
		mov	ah,21h			; '!'
		mul	ah			; ax = reg * al
		add	ax,ax
		add	ax,ax
		add	ax,ax
		add	ax,ax
		add	ax,6D00h
		mov	di,ax
		mov	bx,1238h
		mov	cx,0B10h
		call	word ptr cs:data_363
		jmp	loc_181
loc_214:
		push	cs
		pop	es
		and	al,0Fh
		cmp	al,3
		jae	loc_215			; Jump if above or =
		mov	ah,0A5h
		mul	ah			; ax = reg * al
		add	ax,7437h
		mov	di,ax
		mov	bx,3548h
		mov	cx,50Bh
		call	word ptr cs:data_363
		jmp	loc_181
loc_215:
		sub	al,3
		mov	ah,0A8h
		mul	ah			; ax = reg * al
		add	ax,7626h
		mov	di,ax
		mov	bx,343Eh
		mov	cx,708h
		call	word ptr cs:data_363
		jmp	loc_181
loc_216:
		mov	es,cs:data_722
		and	al,0Fh
		mov	ah,3Fh			; '?'
		mul	ah			; ax = reg * al
		add	ax,ax
		add	ax,ax
		add	ax,ax
		add	ax,98C0h
		mov	di,ax
		mov	bx,3850h
		mov	cx,718h
		call	word ptr cs:data_363
		jmp	loc_181
loc_217:
		mov	es,cs:data_722
		and	al,0Fh
		cmp	al,6
		jae	loc_218			; Jump if above or =
		mov	ah,51h			; 'Q'
		mul	ah			; ax = reg * al
		add	ax,ax
		add	ax,ax
		add	ax,ax
		add	ax,98C0h
		mov	di,ax
		mov	bx,3450h
		mov	cx,918h
		call	word ptr cs:data_363
		jmp	loc_181
loc_218:
		sub	al,6
		mov	ah,2Dh			; '-'
		mul	ah			; ax = reg * al
		add	ax,ax
		add	ax,ax
		add	ax,ax
		add	ax,ax
		add	ax,0A7F0h
		mov	di,ax
		mov	bx,3338h
		mov	cx,0A18h
		call	word ptr cs:data_363
		jmp	loc_181
loc_219:
		and	al,0Fh
		push	cs
		pop	es
		mov	ah,30h			; '0'
		mul	ah			; ax = reg * al
		add	ax,781Eh
		mov	di,ax
		mov	bx,3840h
		mov	cx,208h
		call	word ptr cs:data_363
		jmp	loc_181
sub_70		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_71		proc	near
		xor	cx,cx			; Zero register
loc_220:
		lodsb				; String [si] to al
		cmp	al,20h			; ' '
		jne	loc_221			; Jump if not equal
		retn
loc_221:
		cmp	al,0FFh
		jne	loc_222			; Jump if not equal
		retn
loc_222:
		cmp	al,0FEh
		jne	loc_223			; Jump if not equal
		retn
loc_223:
		cmp	al,0FDh
		jne	loc_224			; Jump if not equal
		retn
loc_224:
		cmp	al,0F7h
		jne	loc_225			; Jump if not equal
		retn
loc_225:
		cmp	al,0F3h
		jne	loc_226			; Jump if not equal
		retn
loc_226:
		cmp	al,0F2h
		jne	loc_227			; Jump if not equal
		retn
loc_227:
		cmp	al,0F1h
		jne	loc_228			; Jump if not equal
		retn
loc_228:
		or	al,al			; Zero ?
		js	loc_220			; Jump if sign=1
		sub	al,20h			; ' '
		jc	loc_220			; Jump if carry Set
		mov	bl,al
		xor	bh,bh			; Zero register
		add	cl,cs:data_576[bx]
		adc	ch,bh
		jmp	short loc_220
sub_71		endp

			                        ;* No entry point to code
		test	al,6Ah			; 'j'
		db	0, 0, 0, 0, 0, 0
loc_229:
		cli				; Disable interrupts
		mov	sp,2000h
		sti				; Enable interrupts
		mov	data_553,0
		mov	si,81E0h
		mov	es,cs:data_722
		mov	di,3000h
		mov	al,5
		call	word ptr cs:data_178
		mov	ax,cs
		add	ax,2000h
		mov	es,ax
		mov	si,819Fh
		mov	di,0
		mov	al,2
		call	word ptr cs:data_178
		mov	si,81AAh
		mov	di,3400h
		mov	al,2
		call	word ptr cs:data_178
		mov	si,81B5h
		mov	di,5E00h
		mov	al,2
		call	word ptr cs:data_178
		mov	si,81C0h
		mov	di,8A00h
		mov	al,2
		call	word ptr cs:data_178
		mov	si,81CBh
		mov	di,0B800h
		mov	al,2
		call	word ptr cs:data_178
		mov	si,81D6h
		mov	di,0E200h
		mov	al,2
		call	word ptr cs:data_178
		mov	ax,7
		call	word ptr cs:data_362
		push	ds
		mov	ds,cs:data_722
		mov	si,3000h
		xor	ax,ax			; Zero register
		int	60h			; ??INT Non-standard interrupt
		pop	ds
		mov	data_548,787Eh
		call	sub_72
loc_230:
		call	sub_75
		jmp	short loc_230

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_72		proc	near
		mov	byte ptr data_720,0
loc_231:
		mov	si,data_548
		lodsb				; String [si] to al
		mov	data_548,si
		cmp	al,0F7h
		je	loc_242			; Jump if equal
		cmp	al,0F8h
		jne	loc_232			; Jump if not equal
		jmp	loc_243
loc_232:
		cmp	al,0F9h
		jne	loc_233			; Jump if not equal
		jmp	loc_244
loc_233:
		cmp	al,0FAh
		jne	loc_234			; Jump if not equal
		jmp	loc_246
loc_234:
		cmp	al,0FBh
		jne	loc_235			; Jump if not equal
		jmp	loc_247
loc_235:
		cmp	al,0FCh
		jne	loc_236			; Jump if not equal
		jmp	loc_248
loc_236:
		cmp	al,0FDh
		jne	loc_237			; Jump if not equal
		jmp	loc_249
loc_237:
		cmp	al,0FEh
		jne	loc_238			; Jump if not equal
		jmp	loc_252
loc_238:
		cmp	al,0FFh
		jne	loc_239			; Jump if not equal
		jmp	loc_251
loc_239:
		cmp	al,9
		jne	loc_240			; Jump if not equal
		jmp	loc_250
loc_240:
		push	ax
		xor	al,al			; Zero register
		call	sub_73
		mov	al,data_550
		mov	cl,0Eh
		mul	cl			; ax = reg * al
		mov	cl,al
		add	cl,90h
		mov	bl,data_549
		xor	bh,bh			; Zero register
		add	bx,bx
		add	bx,bx
		add	bx,bx
		pop	ax
		mov	ah,7
		call	word ptr cs:data_369
		inc	data_549
loc_241:
		mov	al,0FFh
		call	sub_73
		mov	al,data_552
		call	sub_74
		jmp	loc_231
loc_242:
		call	sub_75
		test	byte ptr data_721,0FFh
		jz	loc_242			; Jump if zero
		mov	byte ptr data_721,0
		mov	data_723,0
		jmp	loc_231
loc_243:
		lodsw				; String [si] to ax
		mov	data_548,si
		mov	data_551,ax
		jmp	loc_231
loc_244:
		xor	al,al			; Zero register
		call	sub_73
loc_245:
		call	sub_75
		mov	ax,data_723
		cmp	ax,data_551
		jb	loc_245			; Jump if below
		mov	data_723,0
		jmp	loc_231
loc_246:
		lodsb				; String [si] to al
		mov	data_548,si
		mov	data_552,al
		jmp	loc_231
loc_247:
		lodsw				; String [si] to ax
		mov	data_550,al
		mov	data_549,ah
		mov	data_548,si
		jmp	loc_231
loc_248:
		mov	bx,8Ch
		mov	cx,503Ch
		xor	al,al			; Zero register
		call	word ptr cs:data_300
		mov	data_549,0
		mov	data_550,0
		jmp	loc_231
loc_249:
		xor	al,al			; Zero register
		call	sub_73
		mov	data_549,0
		inc	data_550
		jmp	loc_231
loc_250:
		xor	al,al			; Zero register
		call	sub_73
		add	data_549,4
		and	data_549,0FCh
		jmp	loc_241

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_73:
		push	ax
		mov	al,data_550
		mov	cl,0Eh
		mul	cl			; ax = reg * al
		add	al,90h
		mov	ah,data_549
		add	ah,ah
		mov	bx,ax
		pop	ax
		jmp	word ptr cs:data_368
loc_251:
		xor	al,al			; Zero register
		call	sub_73
		retn
loc_252:
		xor	al,al			; Zero register
		call	sub_73
		mov	bl,data_553
		xor	bh,bh			; Zero register
		add	bx,bx
		call	data_545[bx]		;*
		inc	data_553
		jmp	loc_231
sub_72		endp

			                        ;* No entry point to code
		db	 2Eh, 68h, 5Ah, 68h, 91h, 68h
		db	0B5h, 68h,0C2h, 68h,0CFh, 68h
		db	 32h, 69h, 1Eh, 8Ch,0C8h, 05h
		db	 00h, 20h, 8Eh,0D8h, 2Eh, 8Eh
		db	 06h, 2Ch,0FFh,0BEh, 00h, 00h
		db	0BFh, 00h, 40h,0E8h, 29h, 01h
		db	 1Fh, 2Eh, 8Eh, 06h, 2Ch,0FFh
		db	0BFh, 00h, 40h,0B0h,0FFh,0BBh
		db	 08h, 0Bh,0B9h, 9Ah, 39h, 2Eh
		db	0FFh, 26h, 04h, 30h, 1Eh, 8Ch
		db	0C8h, 05h, 00h, 20h, 8Eh,0D8h
		db	 2Eh, 8Eh, 06h, 2Ch,0FFh,0BFh
		db	 00h, 40h,0BEh, 00h, 34h,0E8h
		db	0FDh, 00h, 1Fh,0BBh, 08h, 0Bh
		db	0B9h, 9Ah, 39h, 2Eh,0FFh, 16h
		db	 06h, 30h, 2Eh, 8Eh, 06h, 2Ch
		db	0FFh,0BFh, 00h, 40h,0B0h,0FFh
		db	0BBh, 14h, 21h,0B9h, 72h, 2Fh
		db	 2Eh,0FFh, 26h, 04h, 30h, 1Eh
		db	 8Ch,0C8h, 05h, 00h, 20h, 8Eh
		db	0D8h, 2Eh, 8Eh, 06h, 2Ch,0FFh
		db	0BEh, 00h, 5Eh,0BFh, 00h, 40h
		db	0E8h,0C6h, 00h, 1Fh, 2Eh, 8Eh
		db	 06h, 2Ch,0FFh,0BFh, 00h, 40h
		db	 2Eh,0FFh, 26h, 2Ah, 30h, 2Eh
		db	 8Eh, 06h, 2Ch,0FFh,0BFh, 00h
		db	 40h, 2Eh,0FFh, 26h, 2Ch, 30h
		db	0B0h,0FFh,0BBh, 00h, 00h,0B9h
		db	0C8h, 50h, 2Eh,0FFh, 26h, 06h
		db	 30h, 1Eh, 8Ch,0C8h, 05h, 00h
		db	 20h, 8Eh,0D8h, 2Eh, 8Eh, 06h
		db	 2Ch,0FFh,0BEh, 00h, 8Ah,0BFh
		db	 00h, 40h,0E8h, 88h, 00h,0BEh
		db	 00h,0B8h,0BFh,0C0h, 93h,0B9h
		db	0F0h, 14h,0F3h,0A5h, 1Fh,0BFh
		db	 00h, 40h, 33h,0C0h,0B9h, 28h
		db	 00h,0F3h,0ABh, 2Eh, 8Eh, 06h
		db	 2Ch,0FFh,0BFh, 00h, 40h,0B0h
		db	0FFh,0BBh, 00h, 00h,0B9h, 86h
		db	50h
data_590	dw	0FF2Eh			; Data table (indexed access)
		db	 16h, 04h, 30h, 1Eh, 8Ch,0C8h
		db	 05h, 00h, 20h, 8Eh,0D8h, 2Eh
		db	 8Eh, 06h, 2Ch,0FFh,0BEh, 00h
		db	0E2h,0BFh,0A0h,0BDh,0E8h, 4Ch
		db	 00h, 1Fh, 2Eh, 8Eh, 06h, 2Ch
		db	0FFh,0BFh,0A0h,0BDh
data_591	dw	20E9h			; Data table (indexed access)
		db	 01h, 2Eh, 8Eh, 06h, 2Ch,0FFh
		db	0BFh, 00h, 40h,0BBh, 00h, 00h
		db	0B9h, 86h, 50h, 2Eh,0FFh, 26h
		db	 10h
		db	30h

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_74		proc	near
loc_253:
		call	sub_75
		cmp	cs:data_720,al
		jb	loc_253			; Jump if below
		mov	byte ptr cs:data_720,0
		retn
sub_74		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_75		proc	near
		push	si
		push	ax
		call	word ptr cs:data_179
		call	word ptr cs:data_180
		pop	ax
		pop	si
		retn
sub_75		endp

		db	8 dup (0)

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_76		proc	near
		call	sub_77
		jmp	short loc_258

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_77:
		push	di
		lodsw				; String [si] to ax
		mov	cx,ax
		push	cx
		mov	bp,si
		add	si,cx

locloop_254:
		push	cx
		xor	al,al			; Zero register
		mov	cx,8

locloop_255:
		rol	byte ptr ds:[bp],1	; Rotate
		jc	loc_256			; Jump if carry Set
		stosb				; Store al to es:[di]
		loop	locloop_255		; Loop if cx > 0

		jmp	short loc_257
loc_256:
		movsb				; Mov [si] to es:[di]
		loop	locloop_255		; Loop if cx > 0

loc_257:
		inc	bp
		pop	cx
		loop	locloop_254		; Loop if cx > 0

		pop	cx
		add	cx,cx
		add	cx,cx
		add	cx,cx
		pop	di
		retn
loc_258:
		xor	dh,dh			; Zero register

locloop_259:
		xor	al,al			; Zero register
		rcl	byte ptr es:[di],1	; Rotate thru carry
		adc	al,al
		rcl	byte ptr es:[di],1	; Rotate thru carry
		adc	al,al
		xor	dh,al
		mov	ah,dh
		xor	al,al			; Zero register
		rcl	byte ptr es:[di],1	; Rotate thru carry
		adc	al,al
		rcl	byte ptr es:[di],1	; Rotate thru carry
		adc	al,al
		xor	dh,al
		add	ah,ah
		add	ah,ah
		or	ah,dh
		xor	al,al			; Zero register
		rcl	byte ptr es:[di],1	; Rotate thru carry
		adc	al,al
		rcl	byte ptr es:[di],1	; Rotate thru carry
		adc	al,al
		xor	dh,al
		add	ah,ah
		add	ah,ah
		or	ah,dh
		xor	al,al			; Zero register
		rcl	byte ptr es:[di],1	; Rotate thru carry
		adc	al,al
		rcl	byte ptr es:[di],1	; Rotate thru carry
		adc	al,al
		xor	dh,al
		add	ah,ah
		add	ah,ah
		or	ah,dh
		mov	al,ah
		stosb				; Store al to es:[di]
		loop	locloop_259		; Loop if cx > 0

		retn
sub_76		endp

loc_260:
		test	byte ptr [si],40h	; '@'
		jz	loc_264			; Jump if zero
		lodsw				; String [si] to ax
		xchg	ah,al
		mov	cx,ax
		cmp	ax,0FFFFh
		jne	loc_261			; Jump if not equal
		retn
loc_261:
		and	cx,3FFFh
		test	ax,8000h
		jz	loc_263			; Jump if zero
loc_262:
		lodsb				; String [si] to al
		rep	stosb			; Rep when cx >0 Store al to es:[di]
		jmp	short loc_260
loc_263:
		rep	movsb			; Rep when cx >0 Mov [si] to es:[di]
		jmp	short loc_260
loc_264:
		lodsb				; String [si] to al
		mov	cl,al
		and	cx,3Fh
		test	al,80h
		jz	loc_263			; Jump if zero
		jmp	short loc_262

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_78		proc	near
		mov	bx,18h
		mul	bx			; dx:ax = reg * ax
		add	si,ax
		xor	ax,ax			; Zero register
		push	si
		mov	cx,414h

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_79:
		rep	movsw			; Rep when cx >0 Mov [si] to es:[di]
		mov	cx,0Ch
		rep	stosw			; Rep when cx >0 Store ax to es:[di]
		pop	si
		add	si,18D8h
		push	si
		mov	cx,414h
		rep	movsw			; Rep when cx >0 Mov [si] to es:[di]
		mov	cx,0Ch
		rep	stosw			; Rep when cx >0 Store ax to es:[di]
		pop	si
		add	si,18D8h
		mov	cx,414h
		rep	movsw			; Rep when cx >0 Mov [si] to es:[di]
		mov	cx,0Ch
		rep	stosw			; Rep when cx >0 Store ax to es:[di]
		retn
sub_78		endp

			                        ;* No entry point to code
		push	ds
		push	es
		pop	ds
		push	di
		pop	si
		mov	es,cs:data_722
		mov	di,4CE6h
		mov	cx,35h

locloop_265:
		push	cx
		push	di
		mov	cx,13h

locloop_266:
		lodsw				; String [si] to ax
		or	es:[di],ax
		or	es:data_62e[di],ax
		or	es:data_63e[di],ax
		inc	di
		inc	di
		loop	locloop_266		; Loop if cx > 0

		pop	di
		add	di,50h
		pop	cx
		loop	locloop_265		; Loop if cx > 0

		mov	di,4CE6h
		mov	cx,35h

locloop_267:
		push	cx
		push	di
		mov	cx,13h

locloop_268:
		lodsw				; String [si] to ax
		not	ax
		and	es:[di],ax
		and	es:data_62e[di],ax
		and	es:data_63e[di],ax
		inc	di

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_80		proc	near
		inc	di
		loop	locloop_268		; Loop if cx > 0

		pop	di
		add	di,50h
		pop	cx
		loop	locloop_267		; Loop if cx > 0

		pop	ds
		retn
sub_80		endp

		db	0F0h,0FAh,0F3h, 41h
data_595	db	't long last, Jashiin was destroy'
		db	'ed and the nine Tears of Esmesan'
		db	'ti were returned to their rightf'
		db	'ul place.'
		db	0F5h,0F5h,0F5h,0FEh,0F3h
		db	'Princess Felicia was restored to'
		db	' her '
		db	'true form.'
		db	0F5h,0F5h,0F5h,0FBh,0FEh,0F3h
		db	0EFh, 22h, 95h, 59h, 6Fh, 75h
		db	 20h, 90h, 61h, 72h, 65h, 94h
		db	 20h, 90h, 61h, 95h, 73h, 20h
		db	 92h, 62h, 65h, 95h, 61h, 75h
		db	 92h, 74h, 69h, 95h, 66h, 75h
		db	 93h, 6Ch, 20h, 90h, 61h, 95h
		db	 73h, 20h, 90h, 61h, 20h, 93h
		db	 72h, 6Fh, 91h, 73h, 65h, 20h
		db	 92h, 69h, 94h, 6Eh, 20h, 93h
		db	 62h, 95h, 6Ch, 6Fh, 6Fh, 94h
		db	 6Dh, 21h, 22h,0F5h,0F2h,0EBh
		db	0A3h, 22h,0A4h,0A0h, 54h,0A5h
		db	 68h,0A4h, 61h,0A3h,0A2h, 6Eh
		db	0A1h, 6Bh, 20h,0A2h, 79h, 6Fh
		db	 75h, 2Ch, 20h,0A1h,0A3h, 44h
		db	0A4h, 75h,0A5h, 6Bh,0A4h, 65h
		db	0A3h, 20h,0A0h
		db	47h
data_599	db	61h			; Data table (indexed access)
		db	 72h,0A1h, 6Ch, 61h,0A2h, 6Eh
		db	 64h, 2Eh, 22h,0A1h,0F5h,0F5h
		db	0F5h,0FEh,0F3h, 22h,0A1h, 59h
		db	 6Fh, 75h, 20h,0A0h, 68h, 61h
		db	0A2h, 76h, 65h, 20h,0A1h, 64h
		db	 6Fh,0A2h, 6Eh, 65h, 20h,0A0h
		db	 61h, 20h,0A1h, 67h, 72h, 65h
		db	0A0h, 61h, 74h, 20h,0A1h, 64h
		db	 65h, 65h, 64h, 20h,0A2h, 69h
		db	 6Eh, 20h,0A0h, 64h, 65h, 66h
		db	 65h, 61h,0A1h, 74h,0A2h, 69h
		db	 6Eh, 67h, 20h,0A1h, 4Ah, 61h
		db	 73h, 68h, 69h,0A2h, 69h, 6Eh
		db	 2Eh,0A1h, 20h, 20h,0F5h,0A0h
		db	0A4h, 41h,0A5h, 6Ch,0A4h,0A2h
		db	 74h,0A3h, 68h, 6Fh, 75h,0A1h
		db	 67h, 68h, 20h,0A0h, 6Dh, 79h
		db	 20h,0A1h, 62h, 6Fh, 64h,0A1h
		db	 79h, 20h,0A0h, 77h, 61h,0A1h
		db	 73h, 20h,0A1h, 68h,0A0h, 65h
		db	 72h, 65h, 2Ch, 20h,0A4h, 6Dh
		db	0A5h,0A1h, 79h,0A4h, 20h,0A3h
		db	0A1h, 73h, 6Fh,0A2h, 75h, 6Ch
		db	 20h,0A0h, 77h, 61h,0A2h, 73h
		db	 20h,0A2h, 77h,0A1h, 69h, 74h
		db	 68h, 20h,0A0h, 74h, 68h, 65h
		db	 20h,0A1h, 48h, 6Fh,0A2h, 6Ch
		db	 79h, 20h,0A2h, 53h,0A1h, 70h
		db	 69h,0A0h, 72h,0A2h, 69h, 74h
		db	 2Ch, 20h,0A0h, 77h, 61h, 74h
		db	0A1h, 63h, 68h,0A2h, 69h, 6Eh
		db	 67h, 20h,0A1h, 79h, 6Fh, 75h
		db	 2Eh, 22h,0F5h,0F5h,0F5h,0FEh
		db	0F3h, 22h,0A0h, 49h, 20h,0A1h
		db	 64h, 6Fh,0A2h, 6Eh, 27h, 74h
		db	 20h,0A1h, 6Bh,0A2h, 6Eh, 6Fh
		db	 77h, 20h,0A0h, 68h, 6Fh,0A2h
		db	 77h, 20h,0A1h, 74h, 6Fh, 20h
		db	0A0h, 74h, 68h, 61h,0A2h, 6Eh
		db	 6Bh, 20h,0A1h, 79h, 6Fh, 75h
		db	 20h,0A2h, 66h, 6Fh, 72h, 20h
		db	0A1h, 72h, 65h,0A2h, 73h, 63h
		db	 75h,0A1h, 69h, 6Eh, 67h, 20h
		db	0A2h, 6Dh, 65h, 20h,0A0h, 61h
		db	 6Eh, 64h, 20h,0A1h, 73h, 61h
		db	 76h,0A2h, 69h, 6Eh, 67h, 20h
		db	0A0h, 6Dh, 79h, 20h,0A1h, 63h
		db	 6Fh,0A0h, 75h, 6Eh,0A2h, 74h
		db	 72h, 79h, 2Eh, 22h,0A1h,0F5h
		db	0F5h,0F5h,0FEh,0FDh,0F3h
		db	'"Father!"'
		db	0F5h,0F5h,0F2h,0EEh
		db	'"My darling Felicia!  '
		db	0F5h
		db	'Ho'
		db	'w I'
data_602	db	27h, 've longed to hold you in my'
		db	' arms and hear your sweet voice!'
		db	'"'
		db	0F5h,0F5h,0F5h,0FAh,0FEh,0F3h
		db	0F0h
		db	'Outside, the land cursed by the '
		db	'evil magic of Jashiin began to r'
		db	'esume its original lushness.'
		db	0F5h,0F5h,0F5h,0FEh,0F3h
		db	'The dreadful power of Jashiin wa'
		db	's washed from the earth, and the'
		db	' land of Zeliard was peaceful on'
		db	'ce more.'
		db	0F5h,0F5h,0F5h,0FEh,0FDh,0FAh
		db	0F3h
		db	'The Guardian Spirit of the Holy '
		db	'Land of Zeliard appeared before '
		db	'Duke Garland once again.'
		db	0F5h,0F5h,0F5h,0FEh,0F3h,0FBh
		db	0ECh
		db	'"You have suffered many hardship'
		db	's to defeat Jashiin, Duke Garlan'
		db	'd."'
		db	0F5h,0F5h,0F5h,0FEh,0FDh,0FBh
		db	0F3h, 22h, 83h, 59h, 6Fh, 75h
		db	 20h, 81h, 66h, 6Fh, 75h, 82h
		db	 67h, 68h, 74h, 20h, 83h, 62h
		db	 81h, 72h, 61h, 83h, 76h, 65h
		db	 82h, 6Ch, 79h, 20h, 83h, 74h
		db	 6Fh, 20h, 80h, 61h, 83h, 63h
		db	 63h, 6Fh, 84h, 6Dh, 82h, 70h
		db	 6Ch, 69h, 83h, 73h, 68h, 20h
		db	 82h, 74h, 68h, 69h, 83h, 73h
		db	 20h, 83h, 71h, 75h, 81h, 65h
		db	 83h, 73h, 74h, 2Eh, 20h, 20h
		db	0F5h, 80h, 42h, 75h, 83h, 74h
		db	 20h, 82h, 74h, 68h, 69h, 83h
		db	 73h, 20h, 80h, 77h, 61h, 83h
		db	 73h, 20h, 6Fh, 84h, 6Eh, 82h
		db	 6Ch, 79h, 20h, 81h, 74h, 68h
		db	 65h, 20h, 82h, 62h, 65h, 67h
		db	 69h, 6Eh, 84h, 6Eh, 69h, 6Eh
		db	 83h, 67h, 2Eh, 20h, 20h, 84h
		db	0F5h, 83h, 59h, 6Fh, 75h, 80h
		db	 72h, 20h, 81h, 6Eh, 65h, 83h
		db	 78h, 74h, 20h, 82h, 6Dh, 69h
		db	 83h, 73h, 73h, 82h, 69h, 6Fh
		db	 84h, 6Eh, 20h, 80h, 61h, 77h
		db	 61h, 82h, 69h, 83h, 74h, 73h
		db	 20h, 83h, 79h, 6Fh, 75h, 20h
		db	 82h, 69h, 84h, 6Eh, 20h, 80h
		db	 61h, 20h, 82h, 6Eh, 65h, 83h
		db	 77h, 20h, 80h, 6Ch, 61h, 84h
		db	 6Eh, 64h, 2Eh, 22h,0F5h,0F5h
		db	0F5h,0FEh,0F7h,0EFh, 22h, 90h
		db	 4Dh, 92h, 79h, 20h, 91h, 6Eh
		db	 65h, 93h, 78h, 74h, 20h, 92h
		db	 6Dh, 69h, 93h, 73h, 73h, 69h
		db	 6Fh, 94h, 6Eh, 3Fh, 22h, 97h
		db	 20h, 98h, 20h, 97h, 20h, 96h
		db	0F5h,0F3h,0ECh, 22h, 81h, 54h
		db	 68h, 65h, 80h, 72h, 65h, 20h
		db	 80h, 61h, 72h, 65h, 20h, 81h
		db	 6Dh, 61h, 84h, 6Eh, 79h, 20h
		db	 83h, 77h, 68h, 6Fh, 20h, 81h
		db	 68h, 61h, 83h
loc_270:
		jbe	$+67h			; Jump if below or =
		and	byte ptr ss:[656Eh][bp+si],al
		db	 65h, 83h, 64h, 20h, 6Fh, 66h
		db	 84h, 20h, 83h, 79h, 6Fh, 80h
		db	 75h, 72h, 20h, 83h, 73h, 81h
		db	 70h, 65h, 82h, 63h, 69h, 80h
		db	 61h, 83h, 6Ch, 20h, 80h, 74h
		db	 61h, 81h, 6Ch, 65h, 84h, 6Eh
		db	 82h, 74h, 73h, 2Eh, 20h, 20h
		db	 84h,0F5h, 83h, 46h, 6Fh, 6Ch
		db	 6Ch, 6Fh, 77h, 20h, 82h, 6Dh
		db	 65h, 20h, 80h, 61h, 84h, 6Eh
		db	 64h, 20h, 80h, 49h, 20h, 83h
		db	 77h, 82h
		db	 69h, 6Ch, 6Ch
data_608	dw	8320h			; Data table (indexed access)
		db	 73h, 68h, 6Fh, 77h, 81h, 20h
		db	 85h, 79h, 6Fh, 75h, 20h, 81h
		db	 74h, 68h, 65h, 20h, 83h, 77h
		db	 80h, 61h, 82h, 79h, 2Eh, 84h
		db	 20h,0F5h, 83h, 57h, 82h, 65h
		db	 20h, 80h, 6Dh, 75h, 83h, 73h
		db	 74h, 20h, 81h, 64h, 65h, 80h
		db	 70h, 61h, 72h, 83h, 74h, 20h
		db	 85h, 71h, 75h, 82h, 69h, 63h
		db	 83h, 6Bh, 82h, 6Ch, 79h, 2Eh
		db	 22h, 84h,0F5h,0F5h,0F5h,0FEh
		db	0F0h,0F3h,0FAh
		db	'There was'
loc_271:
		and	[bp+6Fh],ch
loc_273:
		and	[si+69h],dh
		db	'me to rest, '
		db	 97h, 61h, 6Eh, 98h
		db	'd no time t'
		db	'o stay in this peaceful land.'
		db	0F5h,0F5h,0F5h,0FDh,0FEh,0F3h
		db	0FBh,0EBh, 97h, 22h, 96h,0B0h
		db	 4Dh, 75h,0B3h, 73h,0B4h, 74h
		db	 20h, 79h, 6Fh, 75h, 20h,0B2h
		db	 6Ch, 65h,0B1h, 61h,0B3h, 76h
		db	 65h,0B4h, 20h,0B3h, 73h, 6Fh
		db	 20h,0B5h, 73h, 6Fh, 6Fh,0B4h
		db	 6Eh, 2Ch, 20h,0B7h,0B3h, 44h
		db	0B8h, 75h,0B1h,0B7h, 6Bh,0B6h
		db	 65h, 20h,0B0h, 47h, 61h, 72h
		db	 6Ch, 61h,0B4h, 6Eh, 64h, 3Fh
		db	 20h, 20h,0F5h,0F2h,0B7h,0B0h
		db	 49h,0B8h, 20h,0B7h,0B5h, 77h
		db	0B6h,0B0h, 61h, 73h, 20h,0B3h
		db	 68h, 6Fh, 70h,0B2h, 69h,0B4h
		db	 6Eh,0B3h, 67h, 2Eh, 2Eh, 2Eh
		db	0B4h, 22h,0F5h,0F5h,0F5h,0FEh
		db	0F7h,0EFh, 22h, 95h, 50h, 72h
		db	 92h, 69h, 94h, 6Eh, 91h
		db	 63h, 65h
data_610	db	93h			; Data table (indexed access)
		db	 73h, 73h, 20h, 91h, 46h, 65h
		db	 92h, 6Ch, 69h, 63h, 69h, 90h
		db	 61h, 2Ch, 20h, 97h, 90h, 49h
		db	 98h, 92h, 20h, 97h, 90h, 6Dh
		db	 96h, 75h, 93h
		db	 73h, 74h, 20h
data_611	dw	6292h			; Data table (indexed access)
		db	 69h, 93h, 64h, 20h, 93h, 79h
		db	 6Fh, 75h, 20h, 91h, 66h, 61h
		db	 90h, 72h, 65h, 91h, 77h, 65h
		db	 93h, 6Ch, 6Ch, 2Eh, 94h, 20h
		db	 20h,0F5h, 93h, 4Dh, 6Fh, 72h
		db	 94h, 6Eh, 69h, 6Eh, 95h, 67h
		db	 20h, 92h, 69h, 95h, 73h, 20h
		db	 90h, 63h, 6Fh, 6Dh, 92h, 69h
		db	 94h, 6Eh, 67h, 20h, 93h, 73h
		db	 6Fh, 6Fh, 94h, 6Eh, 2Ch, 20h
		db	 90h, 61h, 94h, 6Eh, 64h, 20h
		db	 90h, 49h, 92h, 20h, 97h, 92h
		db	 77h, 98h, 69h, 93h, 97h, 6Ch
		db	 96h, 6Ch, 20h, 92h, 6Dh, 69h
		db	 93h, 73h, 73h, 20h, 91h, 74h
		db	 68h, 65h, 20h, 90h
		db	6Ch
data_612	dw	6991h			; Data table (indexed access)
		db	 67h, 93h, 68h, 74h, 20h, 6Fh
		db	 95h, 66h, 20h, 93h, 53h, 92h
		db	 70h, 69h, 72h, 69h, 93h, 74h
		db	 20h, 75h, 94h, 6Eh, 91h, 6Ch
		db	 65h, 93h, 73h, 73h, 20h, 90h
		db	 49h, 92h, 20h, 73h, 90h
		db	 74h, 61h, 72h
data_613	dw	7494h			; Data table (indexed access)
		db	 20h, 91h, 62h, 65h, 93h, 66h
		db	 6Fh, 90h, 72h, 65h, 20h, 91h
		db	 74h, 68h, 65h, 20h, 90h, 64h
		db	 61h, 94h, 77h, 6Eh, 2Eh, 22h
		db	0F5h,0F5h,0F5h,0FEh,0F0h,0F3h
		db	0FAh
		db	'Th'
		db	'e Duke answered quickly, as if t'
		db	'o head off the'
		db	' next words of Princess Felicia.'
		db	0F5h,0F5h,0F5h,0FDh,0FEh,0F3h
		db	0FAh
		db	'For if he heard those words, he '
		db	'might not be able to leave, as h'
		db	'e knew '
		db	'he must.  '
		db	0F5h
		db	'He turned and walked away...'
		db	0F5h,0F5h,0F5h,0FEh,0F7h,0FBh
		db	0EBh, 22h,0C0h, 44h, 6Fh,0C1h
		db	 6Eh, 27h, 74h, 20h,0C0h, 67h
		db	 6Fh, 2Ch, 20h,0C1h, 44h, 75h
		db	0C0h, 6Bh, 65h, 20h,0C0h, 47h
		db	 61h, 72h,0C1h, 6Ch, 61h, 6Eh
		db	0C0h, 64h, 21h, 22h,0F5h,0F0h
		db	0F3h,0FAh
		db	'... and did not look back.'
		db	0F5h,0FDh,0F2h
		db	'Duke Garlan'
		db	'd lef'
		db	't t'
data_621	db	'he castle, and he felt as if his'
		db	' heart might break.'
		db	0F5h,0F5h,0F5h,0FEh,0F7h
		db	 41h, 73h, 20h, 73h
data_624	db	'he watched him go, Princess Feli'
		db	'cia said to herself, '
		db	0F5h,0F2h,0FBh
		db	'"He will return.  '
		db	0F5h
data_626	db	'The road to his destiny, began h'
		db	'ere, and it shall end here."'
		db	0F5h,0F5h
data_629	db	0F5h			; Data table (indexed access)
		db	0FEh,0F3h
		db	'"When his work in the world is d'
		db	'one, he', 27h, 'l'
		db	'l come back to me.  '
		db	0F5h
data_631	db	'Until then, I can only believe i'
		db	't, and wait for him."'
		db	0F5h,0F5h,0F5h,0F5h,0F5h,0FDh
		db	0FFh, 77h, 00h, 77h, 77h, 70h
		db	 5Dh,0DDh,0DDh,0DDh,0DCh, 3Fh
		db	0E0h, 94h, 77h, 70h, 1Dh,0D9h
		db	0E3h,0DDh,0C0h, 07h, 75h, 07h
		db	 77h, 00h, 01h,0DCh, 1Dh,0DCh
		db	 00h, 80h, 77h, 77h, 70h, 04h
		db	 88h, 1Dh,0DDh, 80h, 08h,0B2h
		db	 03h, 70h, 00h, 74h,0FCh, 00h
		db	 00h, 00h,0D8h,0D6h, 00h, 00h
		db	 07h, 74h,0FFh,0E0h, 7Fh,0FFh
		db	0F1h, 7Fh,0FFh,0FFh,0FFh,0FCh
		db	 3Fh,0F9h,0F7h,0FFh,0F8h, 9Fh
		db	0F9h,0EFh,0FFh,0E0h,0C7h,0FFh
		db	0FFh,0FFh, 84h,0F1h,0FEh, 1Fh
		db	0FEh, 0Ch,0FCh, 7Fh,0FFh,0F0h
		db	 1Ch,0FFh, 1Fh,0FFh, 80h, 7Ch
		db	0FFh, 03h,0F8h, 01h,0FCh,0FFh
		db	 30h, 00h, 07h,0FCh,0FFh, 30h
		db	 00h, 1Fh,0FCh,0FFh,0A0h, 7Fh
		db	0FFh,0F1h, 7Fh,0FFh,0FFh,0FFh
		db	0FCh, 3Fh,0F0h, 83h,0FFh
data_634	db	0F8h			; Data table (indexed access)
		db	9Fh			; Data table (indexed access)
		db	0E1h			; Data table (indexed access)
		db	0E0h,0FFh,0E0h,0C7h,0F9h, 03h
		db	0FFh, 84h,0F1h,0FEh, 1Fh,0FEh
		db	 08h,0F4h, 7Fh,0FFh,0F0h, 14h
		db	0FDh, 1Fh,0FFh, 80h, 28h,0F7h
		db	 03h,0F8h, 01h, 74h,0FDh, 20h
		db	 00h, 02h,0F8h,0F7h, 20h, 00h
		db	 17h,0FCh, 77h, 00h, 77h, 77h
		db	 70h, 5Dh,0DDh,0DDh,0DDh,0DCh
		db	 3Fh,0FFh,0FCh, 77h, 70h, 1Dh
		db	0D9h,0C3h,0DDh,0C0h, 07h, 77h
		db	0FFh, 77h, 00h, 01h,0DCh, 1Dh
		db	0DCh, 00h, 80h, 77h, 77h, 70h
		db	 04h, 88h, 1Dh,0DDh, 80h, 08h
		db	0B2h, 03h, 70h, 00h, 74h,0FCh
		db	 00h, 00h, 00h,0D8h,0D6h, 00h
		db	 00h, 07h, 74h,0FFh,0E0h, 7Fh
		db	0FFh,0F1h, 7Fh,0FFh,0FFh,0FFh
		db	0FCh, 3Fh,0FFh,0FFh,0FFh,0F8h

locloop_274:
		lahf				; Load ah from flags
		stc				; Set carry flag
		out	dx,ax			; port 0, DMA-1 bas&add ch 0
		jmp	ax			;*
		db	0C7h,0FFh,0FFh,0FFh, 84h,0F1h
		db	0FEh, 1Fh,0FEh, 0Ch,0FCh, 7Fh
loc_275:
;*		push	ax
		db	0FFh,0F0h		;  Fixup - byte match
		sbb	al,0FFh
		pop	ds
		inc	word ptr ds:[0FF7Ch][bx+si]
		add	di,ax
;*		add	sp,di
		db	 01h,0FCh		;  Fixup - byte match
		push	word ptr [bx+si]
		add	[bx],al
		cld				; Clear direction
		push	word ptr [bx+si]
		add	[bx],bl
		cld				; Clear direction
		jmp	word ptr ds:[0FF7Fh][bx+si]	;*
		db	0F1h, 7Fh,0FFh,0FFh,0FFh,0FCh
		db	 3Fh,0FFh,0FFh,0FFh,0F8h, 9Fh
		db	0E1h,0C0h,0FFh,0E0h,0C7h,0FFh
		db	 87h,0FFh, 84h,0F1h,0FEh, 1Fh
		db	0FEh, 08h,0F4h, 7Fh,0FFh,0F0h
		db	 14h,0FDh, 1Fh,0FFh, 80h, 28h
		db	0F7h, 03h,0F8h, 01h, 74h,0FDh
		db	 20h, 00h, 02h,0F8h,0F7h, 20h
		db	 00h, 17h,0FCh, 77h, 00h, 77h
		db	 77h, 70h, 5Dh,0DDh,0DDh,0DDh
		db	0DCh, 37h,0E0h, 94h, 77h, 70h
		db	 1Dh,0D1h,0E3h,0DDh,0D0h, 07h
		db	 70h, 03h, 77h, 40h, 05h
loc_276:
;*		db	0DDh, 0Dh,0DDh, 00h, 81h, 76h
		db	0DDh, 0Dh,0DDh, 00h, 81h, 76h	;  Fixup - byte match
		db	 17h, 74h, 04h, 88h, 5Dh,0DDh
		db	0D0h, 08h,0B2h, 17h, 77h, 00h
		db	 74h,0FCh, 01h,0D8h, 00h,0D8h
		db	0D6h
		db	0			; Data table (indexed access)
		db	 00h, 07h, 74h,0FFh,0E0h, 7Fh
		db	0FFh,0F1h, 7Fh,0FFh,0FFh,0FFh
		db	0FCh, 3Fh,0F9h,0F7h,0FFh,0F8h
		db	 9Fh,0F9h,0E3h,0FFh,0F0h,0CFh
		db	0FEh, 0Fh,0FFh,0C4h,0E7h,0FFh
		db	0FFh,0FFh, 0Ch,0F9h,0FFh, 1Fh
		db	0FCh, 1Ch,0FEh, 7Fh,0FFh,0F0h
		db	 7Ch,0FFh, 1Fh,0FFh, 81h
loc_277:
		cld				; Clear direction
		jmp	word ptr [bp+di]	;*
			                        ;* No entry point to code
		clc				; Clear carry flag
		pop	es
		cld				; Clear direction
		push	word ptr [bx+si]
		add	[bx],bl
		cld				; Clear direction
		jmp	word ptr ds:[0FF7Fh][bx+si]	;*
		db	0F1h, 7Fh,0FFh,0FFh,0FFh,0FCh
		db	 3Fh,0F0h, 83h,0FFh,0F8h, 9Fh
		db	0E1h,0E0h,0FFh,0F0h,0CFh,0F8h
		db	 01h,0FFh,0C4h,0E7h,0FDh, 07h
		db	0FFh, 08h,0F1h,0FFh, 0Fh,0FCh
		db	 14h,0FCh, 7Fh,0FFh,0F0h, 28h
		db	0F7h, 1Fh,0FFh, 81h, 74h,0FDh
		db	 23h,0F8h, 02h,0F8h,0F7h, 20h
		db	 00h, 17h,0FCh, 20h, 00h, 70h
		db	 00h, 00h, 03h, 02h, 88h, 00h
		db	 0Dh,0D8h, 00h, 01h,0C0h, 02h
		db	 00h, 07h, 77h, 19h, 81h, 40h
		db	 00h, 26h, 05h,0DDh,0FCh,0A9h
		db	 80h, 00h, 75h, 03h, 77h, 7Fh
		db	 77h, 00h, 00h, 3Fh, 03h,0DDh
		db	0D4h, 5Dh,0C0h, 03h, 6Ah, 03h
		db	 77h,0FFh, 77h, 08h, 01h,0FDh
		db	 03h,0DFh,0FDh,0C5h, 18h,0F1h
		db	 78h, 78h, 27h,0E0h, 1Fh, 1Fh
		db	0F8h, 03h,0BFh,0FFh, 80h, 07h
		db	0C0h, 1Eh, 00h,0F7h,0FFh, 11h
		db	 81h,0CCh, 00h, 06h, 7Fh,0FFh
		db	0F0h, 23h, 90h, 27h, 41h, 7Bh
		db	0FFh,0F8h, 17h, 82h, 23h,0B0h
		db	 73h,0FFh,0F4h, 5Fh,0CEh, 23h
		db	0EAh,0F3h,0FFh,0FFh,0FFh, 8Eh
		db	 63h,0FFh,0E3h,0FFh,0FFh,0E7h
		db	 1Ch, 71h, 50h, 78h, 22h,0A0h
		db	 0Bh, 17h,0D8h, 02h,0AFh,0FDh
		db	 00h, 07h,0C0h, 16h, 00h, 57h
		db	0FFh, 11h, 81h,0CCh, 00h, 06h
		db	 2Fh,0FFh,0F0h, 23h, 90h, 25h
		db	 41h, 53h,0FFh,0F8h, 17h, 82h
		db	 22h,0B0h, 63h,0FFh,0F4h, 5Fh
		db	0CEh, 23h,0EAh,0D3h,0FFh,0FFh
		db	0FFh, 8Eh, 63h,0FFh,0A3h,0FFh
		db	0FFh,0E7h, 1Ch, 20h, 00h, 70h
		db	 00h, 00h, 03h, 02h, 88h, 00h
		db	 0Dh,0D8h, 00h, 01h,0C0h, 02h
		db	 00h, 07h, 77h, 00h, 01h, 40h
		db	 00h, 00h, 05h,0DDh,0FCh, 29h
		db	 80h, 00h, 61h, 03h, 77h, 7Fh
		db	 77h, 00h, 00h, 3Fh, 03h,0DDh
		db	0D4h, 5Dh,0C0h, 03h, 6Ah, 03h
		db	 77h,0FFh, 77h, 08h, 01h,0FDh
		db	 03h,0DFh,0FDh,0C5h, 18h,0F1h
		db	 78h, 78h, 27h,0FFh,0FFh, 1Fh
		db	0F8h, 5Bh,0BFh,0FFh,0F4h, 07h
		db	0C0h, 1Eh, 26h,0F7h,0FFh, 40h
		db	 01h,0CCh, 00h, 00h, 7Fh,0FFh
		db	0F0h, 23h, 90h, 27h, 41h, 7Bh
		db	0FFh,0F8h, 17h, 82h, 23h,0B0h
		db	 73h,0FFh,0F4h, 5Fh,0CEh, 23h
		db	0EAh,0F3h,0FFh,0FFh,0FFh, 8Eh
		db	 63h,0FFh,0E3h,0FFh,0FFh,0E7h
		db	 1Ch, 71h, 50h, 78h, 22h,0A0h
		db	 0Bh, 17h,0D8h, 02h,0AFh,0FDh
		db	 00h, 07h,0C0h, 16h, 00h, 57h
		db	0FFh, 00h, 01h,0CCh, 00h, 00h
		db	 2Fh,0FFh,0F0h, 23h, 90h, 25h
		db	 41h, 53h,0FFh,0F8h, 17h, 82h
		db	 22h,0B0h, 63h,0FFh,0F4h, 5Fh
		db	0CEh, 23h,0EAh,0D3h,0FFh,0FFh
		db	0FFh, 8Eh, 63h,0FFh,0A3h,0FFh
		db	0FFh,0E7h, 1Ch, 20h, 00h, 70h
		db	 00h, 00h, 02h, 02h, 88h, 00h
		db	 0Dh,0D8h, 00h, 01h, 40h, 02h
		db	 00h, 07h, 77h, 00h, 01h, 40h
		db	 00h, 00h, 05h,0DDh, 80h, 01h
		db	 80h, 00h, 00h, 03h, 77h, 40h
		db	 03h, 00h, 00h, 00h, 03h,0DDh
		db	0D0h, 0Dh,0C0h, 03h, 40h, 03h
		db	 77h,0FFh, 77h, 08h, 01h,0FDh
		db	 03h,0DFh,0FDh,0C5h, 18h,0F1h
		db	 78h, 78h, 27h,0E7h, 5Fh, 1Fh
		db	0F9h,0EFh,0BFh,0FFh, 3Fh,0F7h
		db	0C0h, 1Eh,0BFh,0F7h,0FFh,0FFh
		db	0FFh,0CCh, 00h, 7Fh,0FFh,0FFh
		db	 9Fh,0E1h, 90h, 27h, 3Fh, 7Bh
		db	0FFh,0C0h, 03h, 82h, 23h, 00h
		db	 73h,0FFh,0F0h, 0Fh,0CEh, 23h
		db	0C0h,0F3h,0FFh,0FFh,0FFh, 8Eh
		db	 63h,0FFh,0E3h,0FFh,0FFh,0E7h
		db	 1Ch, 71h, 50h, 78h, 22h,0A2h
		db	 0Ah, 17h,0D8h,0AAh,0AFh,0FDh
		db	 1Dh, 23h, 40h, 16h, 18h, 57h
		db	0FFh,0BAh, 41h,0CCh, 00h, 30h
		db	 2Fh,0FFh, 94h, 01h, 90h, 25h
		db	 00h, 13h,0FFh,0C0h, 03h, 82h
		db	 22h, 00h, 63h,0FFh,0F0h, 0Fh
		db	0CEh, 23h,0C0h,0D3h,0FFh,0FFh
		db	0FFh, 8Eh, 63h,0FFh,0A3h,0FFh
		db	0FFh,0E7h, 1Ch,0AAh,0AAh, 5Fh
		db	 55h,0B1h,0AAh, 56h, 54h, 0Ah
		db	0A0h, 05h, 00h, 80h, 00h, 40h
		db	 00h,0FFh,0FFh,0FFh,0FFh,0F9h
		db	0FFh, 7Fh,0FEh, 1Fh,0F0h, 8Fh
		db	 83h,0C0h, 07h,0C0h, 1Eh,0FFh
		db	0FFh,0E6h,0FFh,0E0h, 7Fh, 79h
		db	0FCh, 1Fh,0F0h, 8Fh, 80h,0C0h
		db	 05h,0C0h, 0Ah,0AAh,0AAh, 55h
		db	0D5h,0A0h, 2Ah, 56h, 54h, 0Ah
		db	0A0h, 05h, 00h, 80h, 00h, 40h
		db	 00h,0FFh,0FFh,0FFh,0FFh,0FFh
		db	0FFh, 7Fh,0FEh, 1Fh,0F0h, 8Fh
		db	 83h,0C0h, 07h,0C0h, 1Eh,0FFh
		db	0FFh,0E4h, 7Fh,0FFh,0FFh, 79h
		db	0FCh, 1Fh,0F0h, 8Fh, 80h,0C0h
		db	 05h,0C0h, 0Ah,0FEh,0F7h,0F8h
		db	 00h, 04h,0FEh,0FCh,0FBh, 01h
		db	 11h,0FAh, 00h, 53h, 54h, 41h
		db	 46h, 46h,0F9h,0FCh,0F8h, 20h
		db	 01h,0F9h,0FCh,0FAh, 07h,0F8h
		db	 25h, 05h,0FDh
		db	9, 'PRODUCER - JAPANESE VERSION'
		db	0FDh
		db	9, 9, 9, 9, '   Mitsuhiro Mazda'
		db	0F9h,0FCh,0FDh
		db	9, 'PRODUCER - ENGLISH VERSION'
		db	0FDh
		db	9, 9, 9, 9, '     Josh Mandel'
		db	0F9h,0FCh,0FDh, 09h, 4Ch, 45h
		db	 41h
data_635	dw	2044h			; Data table (indexed access)
		db	'PROGRAMMER'
		db	0FDh
		db	9, 9, 9, 9, 9, 'Tomoyuki Shimada'
		db	0F9h,0FCh,0FDh
		db	9, 'GRAPHIC DESIGNERS'
		db	0FDh
		db	9, 9, 9, 9, 9, 'Akihiko Yoshida'
		db	0FDh
		db	9, 9, 9, 9, 9, 'Masatoshi Azumi'
		db	0F9h,0FCh,0FDh
		db	9, 'ENGLISH TEXT TRANSLATION'
		db	0FDh
		db	9, 9, 9, 9, 9, ' Marti McKenna'
		db	0F9h,0FCh
		db	9, 'MUSIC COMPOSERS'
		db	0FDh
		db	9, 9, 9, 9, '-- MECANO ASSOCIATES'
		db	' --'
		db	0FDh
		db	9, 9, 9, 9, '   Fumihito Kasatani'
		db	0FDh
		db	9, 9, 9, 9, '   Nobuyuki Aoshima'
		db	0F9h,0FCh,0FDh
		db	9, 'STORY MAKER'
		db	0FDh
		db	9, 9, 9, 9, 9, 'Masaru Takeuchi'
		db	0F9h,0FCh,0FDh
		db	9, 'SOUND EFFECTS'
		db	0FDh
		db	9, 9, 9, 9, 9, 'Tomoyuki Shimada'
		db	0F9h,0F8h, 00h, 03h,0FCh,0FEh
		db	0F7h,0FEh,0FBh, 01h, 0Dh,0FAh
		db	 00h
		db	'SPECIAL THANKS'
		db	0F9h,0FCh,0F8h, 20h, 01h,0F9h
		db	0FCh,0FAh, 07h,0F8h, 00h, 07h
		db	0FDh
		db	9, 'Toshiyuki Uchida', 9, 'Yuzo S'
		db	'unaga'
		db	0FDh
		db	9, 'Takeshi Miyaji', 9, 9, 'Naozu'
		db	'mi Honma'
		db	0FDh
		db	9, 'Ray E'
		db	'. Nakazato', 9, 9, 'T'
		db	'oshi Masubuchi'
		db	0F9h,0FCh,0FDh
		db	9, 'Hiroyuki Koyama', 9, 9, 'Sato'
		db	'shi Uesaka'
		db	0FDh
		db	'   '
		db	'  -- Si'
		db	'erra On-Line Japan, Inc. --'
		db	0FDh
		db	9, 9, 9, ' Eiji (Ed) Nagano'
		db	0F9h,0FCh
		db	9, 'ADVISERS'
		db	0FDh
		db	9, 9, 9, 9, 9, '  Osamu Harada'
		db	0FDh
		db	9, 9, 9, 9, 9, '  Hiromi Ohba'
		db	0FDh
		db	9, 9, 9, 9, 9, '  Greg Miyaji'
		db	0F9h,0FCh,0F8h, 80h, 05h,0FDh
		db	9, 'SYSTEM DESIGNER'
		db	0FDh
		db	9, 9, 9, 9, 9, 'Rocky Cave Maker'
		db	0F9h,0F8h, 20h, 01h,0FCh,0F9h
		db	0F8h, 00h, 03h,0FCh,0FBh, 01h
		db	 0Ch,0FAh, 00h
		db	'SERVING MONSTERS'
		db	0F9h,0FCh,0F8h, 20h, 01h,0F9h
		db	0FCh,0FAh, 07h,0F8h, 40h, 01h
		db	9, 'Cavern of Maricia', 9, 9, 'CA'
		db	'NGREJO'
		db	0F9h,0FDh
		db	9, 9, 'Peligro', 9, 9, 9, 9, 'PUL'
		db	'PO'
		db	0F9h,0FDh
		db	9, 9, 'Riza', 9, 9, 9, 9, 'POLLO'
		db	0F9h,0F9h,0FCh
		db	9, 'Cavern of Glacial', 9, 9, 'AG'
		db	'ER'
		db	0F9h,0FDh
		db	9, 9, 'Cementar', 9, 9, 9, 'VISTA'
		db	0F9h,0FDh
		db	9, 9, 'Tesoro', 9, 9, 9, 9, 'TARS'
		db	'O'
		db	0F9h,0F9h,0FCh
		db	9, 9, 'Llama Town', 9, 9, 9, 'PAG'
		db	'URO'
		db	0F9h,0FDh
		db	9, 'Cavern of Caliente', 9, 9, 'D'
		db	'RAGON'
		db	0F9h,0FDh
		db	9, 9, 'Absor', 9, 9, 9, 9, 'ALGUI'
		db	'EN'
		db	0F9h,0F9h,0FCh,0FAh, 00h,0FEh
		db	9, 'Copyright (C)1987,19'
		db	'90 GAME ARTS'
		db	0FDh
		db	9, 'Copyright ('
		db	'C)1990 Sierra On-Line'
		db	0FDh
		db	'  This edition first publ'
		db	'ished 1987 by'
		db	0FDh
		db	'  GAME AR'
data_644	dw	5354h			; Data table (indexed access)
		db	' Co.,Ltd./ Tomoyuki Shimada'
		db	0FEh,0F7h,0FEh,0FFh, 00h, 00h
		db	 00h, 00h, 00h, 00h, 01h, 02h
		db	 03h, 04h, 00h, 00h, 00h, 00h
		db	 00h, 00h, 05h, 06h, 07h, 08h
		db	 09h, 0Ah, 0Bh, 0Ch, 0Dh, 0Eh
		db	 0Fh, 10h, 11h, 12h, 13h, 14h
		db	 15h, 16h, 00h, 00h, 00h, 17h
		db	 18h, 19h, 1Ah, 1Bh, 1Ch, 1Dh
		db	 1Eh, 1Fh
		db	' !"#$'
		db	'%&', 27h, '()*+,-.'
		db	0
data_645	db	0
		db	 2Fh, 30h, 31h, 32h, 33h, 00h
		db	 00h, 34h, 35h, 36h, 37h, 38h
		db	 00h, 39h, 26h, 3Ah, 00h
		db	18 dup (0)
		db	 3Bh, 3Ch, 3Dh, 00h, 00h, 00h
		db	 3Eh, 3Fh, 40h, 41h
		db	30 dup (0)
		db	 42h, 43h, 44h, 45h
		db	30 dup (0)
		db	 46h, 47h, 16h
		db	31 dup (0)
		db	 48h, 49h, 4Ah
		db	97 dup (0)
		db	 4Bh, 4Ch, 4Dh
		db	31 dup (0)
		db	 4Eh, 4Fh, 50h
		db	32 dup (0)
		db	51h
		db	33 dup (0)
		db	 52h, 53h
		db	32 dup (0)
		db	 54h, 55h, 56h
		db	31 dup (0)
		db	 57h, 58h, 59h, 5Ah
		db	30 dup (0)
		db	 5Bh, 5Ch, 5Dh, 5Eh
		db	30 dup (0)
		db	 5Fh, 60h, 61h, 62h
		db	30 dup (0)
		db	 63h, 64h
		db	32 dup (0)
		db	 65h, 66h, 67h, 68h, 69h
		db	29 dup (0)
		db	'jklmnopqrs'
		db	24 dup (0)
		db	'tuvwxyz{|}'
		db	24 dup (0)
		db	 7Eh, 7Fh, 80h, 81h, 82h, 83h
		db	 84h, 85h, 86h, 87h, 88h, 89h
		db	 00h, 00h, 00h, 00h, 0Fh, 8Ah
		db	 8Bh, 8Ch, 00h
		db	13 dup (0)
		db	 2Fh, 8Dh, 8Eh, 8Fh, 90h, 91h
		db	 92h, 93h, 94h, 95h, 96h, 97h
		db	 00h, 00h, 00h, 98h, 99h, 9Ah
		db	 9Bh, 9Ch, 9Dh
		db	14 dup (0)
		db	 9Eh, 9Fh,0A0h,0A1h,0A2h,0A3h
		db	0A4h,0A5h,0A6h,0A7h,0A8h,0A9h
		db	 16h, 00h,0AAh,0ABh,0ACh,0ADh
		db	0AEh,0AFh
		db	14 dup (0)
		db	0B0h,0B1h,0B2h,0B3h,0B4h,0B5h
		db	0B6h,0B7h,0B8h, 26h, 26h,0B9h
		db	0BAh,0BBh,0BCh,0BDh,0BEh,0BFh
		db	0C0h,0C1h
		db	13 dup (0)
		db	2, 2, 3, 1, 0, 0
		db	2, 2, 3, 1, 1, 1
		db	2, 2, 0, 1, 2, 1
		db	7 dup (1)
		db	3, 2, 1, 1, 2, 1
		db	9 dup (0)
		db	2, 0
		db	9 dup (0)
		db	1, 0, 0, 0, 0, 0
		db	1, 2, 2, 2, 1, 1
		db	1, 0, 0, 1, 0, 1
		db	1, 0, 0, 2, 1, 0
		db	2, 0, 1, 1, 0, 0
		db	0, 1, 1, 0, 0, 0
		db	1, 1, 1, 2, 0, 3
		db	1, 0, 5, 4, 4, 4
		db	6, 8, 5, 3, 4, 4
		db	6, 6, 6, 5, 6, 8
		db	7, 5, 7, 7, 7, 7
		db	7, 7, 7, 7, 3, 4
		db	6, 6, 6, 7
		db	9 dup (8)
		db	5, 8, 8
		db	8 dup (8)
		db	7, 8, 8, 8, 8, 8
		db	7, 5, 3, 5, 6, 7
		db	7, 8, 8, 7, 8, 7
		db	7, 8, 8, 5, 6, 8
		db	5, 8, 7, 7, 8, 8
		db	8, 7, 6, 8, 8, 8
		db	7, 7, 7, 4, 8, 4
		db	7, 8, 0
		db	'!waku.grp'
		db	 00h, 00h, 1Ch, 73h, 65h, 69h
		db	 2Eh, 67h, 72h, 70h, 00h, 00h
		db	'&yuup.grp'
		db	 00h, 00h, 1Dh
		db	'seip.grp'
		db	 00h, 00h, 11h
		db	'himp.grp'
		db	 00h, 00h, 18h
		db	'new1.grp'
		db	 00h, 00h, 19h
		db	'new2.grp'
		db	 00h, 00h, 15h
		db	'ne80.grp'
		db	 00h, 00h, 16h
		db	'ne81.grp'
		db	0, 1
		db	'6end5.grp'
		db	0, 1
		db	'5end4.grp'
		db	0, 1
		db	'7end6.grp'
		db	0, 1
		db	'8end7.grp'
		db	0
loc_281:
		add	[si],si
		db	'en72.grp'
		db	0, 1
		db	'9fin.grp'
		db	0, 0
		db	27h, 'zend.msd'
		db	 00h, 24h, 13h, 00h, 00h, 00h
		db	 06h, 27h,0AAh, 29h, 55h, 32h
		db	 00h, 33h,0FFh, 35h,0DDh, 37h
		db	0D5h, 43h,0D3h, 4Bh,0CDh, 4Dh
		db	 5Dh, 5Bh, 02h, 63h, 01h, 65h
		db	0A0h, 66h, 80h, 69h, 05h
		db	'l*q', 0Ah, 's@vP'
		db	 89h, 04h, 91h, 10h, 93h, 54h
		db	 97h,0A8h, 98h, 20h, 99h, 08h
		db	 9Bh, 15h, 9Ch, 57h, 9Dh, 75h
		db	0A3h, 28h,0A5h, 7Fh,0A6h,0EAh
		db	0B1h, 45h,0C4h, 8Ah,0CBh, 82h
		db	0CCh, 88h,0D2h,0A2h,0DBh, 41h
		db	0E2h
loc_282:
		pop	di
		jmp	loc_275
			                        ;* No entry point to code
		sar	bh,1			; Shift w/sign fill
		push	word ptr [bp+si]
		push	ax
		xor	cx,[bx+di-3]
		xor	al,[bp+si]
;*		aad	29h			; ')' undocumented inst
		db	0D5h, 29h		;  Fixup - byte match
		dec	ax
		pop	bp
		xor	al,[bp+si]
;*		sal	byte ptr [bp+si],1	; Shift w/zeros fill
		db	0D0h, 32h		;  Fixup - byte match
		dec	ax
		or	ax,32h
		add	di,di
;*		sal	word ptr [bp+di],cl	; Shift w/zeros fill
		db	0D3h, 33h		;  Fixup - byte match
		dec	ax
		std				; Set direction flag
		aas				; Ascii adjust
		db	0C0h, 03h, 00h,0D0h, 32h, 48h
		db	 0Dh, 00h,0C0h, 03h, 00h,0D0h
		db	 32h, 48h, 0Dh, 00h,0C0h, 03h
		db	 05h,0D0h, 29h, 48h, 5Dh, 00h
		db	0C0h, 03h, 04h,0D0h, 27h, 48h
		db	0ADh, 00h,0C0h, 33h, 00h,0D0h
		db	 29h, 48h, 5Fh,0FFh,0FDh,0D5h
		db	 55h, 50h, 27h, 4Ah,0ADh,0D0h
		db	 32h, 00h, 29h, 48h, 54h, 00h
		db	 0Dh,0D3h, 32h, 00h, 27h, 48h
		db	0A8h, 00h,0CDh

locloop_284:
		rol	word ptr [di],cl	; Rotate
		sub	[bx],ax
		push	sp
		sub	[bx+si],dx
		jnz	loc_285			; Jump if not zero
;*		aad	29h			; ')' undocumented inst
		db	0D5h, 29h		;  Fixup - byte match
		sub	dx,[bx+si-33h]
		ror	word ptr [bp+si],cl	; Rotate
		daa				; Decimal adjust
		adc	al,0EAh
		daa				; Decimal adjust
		xor	sp,word ptr ds:[0D3CDh][bx+si]
		add	ax,729h
		push	sp
		sub	word ptr ds:[2957h],cx
		das				; Decimal adjust
		push	ax
		int	0D3h			; ??INT Non-standard interrupt
		or	ah,[bx]
		pop	es
		test	al,27h			; '''
		push	cs
		stosw				; Store ax to es:[di]
		daa				; Decimal adjust
		das				; Decimal adjust
		mov	al,byte ptr ds:[0D3CDh]
		add	ax,729h
		push	ax
		sub	[bp+si],ax
		pop	bp
		sub	[bx+di],cx
		push	di
		sub	[bx+si],ax
		pop	bp
		sub	[si],bp
		push	ax
		int	0D3h			; ??INT Non-standard interrupt
		or	ah,[bx]
		pop	es
		mov	al,byte ptr ds:[2722h]
		or	al,0ABh
		daa				; Decimal adjust
		xor	byte ptr ds:[0D3CDh][bx+si],ah
		add	ax,629h
		push	sp
		inc	ax
		add	[bx+di],bp
		pop	es
		jnz	loc_286			; Jump if not zero
		add	si,[bx+29h]
		das				; Decimal adjust
		push	ax
loc_285:
		int	0D3h			; ??INT Non-standard interrupt
		or	ah,[bx]
		push	es
		test	al,20h			; ' '
		loopnz	locloop_287		; Loop if zf=0, cx>0

		push	es
		stosw				; Store ax to es:[di]
		daa				; Decimal adjust
		add	bp,ss:data_326[bp+di]
		das				; Decimal adjust
		mov	al,byte ptr ds:[0D3CDh]
		add	ax,629h
		push	ax
		add	[bx+si],dh
		sub	[bp+di],ax
;*		aad	29h			; ')' undocumented inst
		db	0D5h, 29h		;  Fixup - byte match
		add	[di+29h],bl
		add	dx,[bx+29h]
loc_286:
		xor	[bx+si-33h],dl
		ror	word ptr [bp+si],cl	; Rotate
		daa				; Decimal adjust
		push	es
;*		mov	al,ah
		db	 88h,0E0h		;  Fixup - byte match
		cmp	ss:data_325[bp+si],bp
		add	ax,27FBh
;*		add	dl,ch
		db	 00h,0EAh		;  Fixup - byte match
		stosb				; Store al to es:[di]
		sti				; Enable interrupts
		mov	dx,2F27h
		mov	al,byte ptr ds:[0D3CDh]
		add	ax,629h
		add	al,40h			; '@'
		pop	bp
;*		aad	5			; undocumented inst
		db	0D5h, 05h		;  Fixup - byte match
		ja	loc_289			; Jump if above
		jnz	loc_288			; Jump if not zero
;*		aad	29h			; ')' undocumented inst
		db	0D5h, 29h		;  Fixup - byte match
		add	dx,[bx+55h]
		ja	loc_291			; Jump if above
		sub	[bx],bp
		push	ax
		int	0D3h			; ??INT Non-standard interrupt
		add	ah,[bx]
		push	es
		sbb	[bx+si],al
		mov	si,2AAh
		daa				; Decimal adjust
		add	byte ptr ss:[0EAAAh][bp],ch
		mov	dx,0BEAEh
		daa				; Decimal adjust
		add	ss:data_673[bp+di],di
;*		jmp	far ptr loc_431		;*
		db	0EAh
		dw	2E27h, 0CDA0h		;  Fixup - byte match
			                        ;* No entry point to code
		rol	word ptr [di],cl	; Rotate
		sub	word ptr ds:[1Ch],ax
		db	 36h,0D5h, 0Dh, 5Fh, 55h, 57h
		db	0F5h, 75h, 29h, 00h,0DDh, 29h
		db	 01h, 57h, 77h, 29h, 30h, 50h
		db	0CDh,0D3h, 0Ah, 27h, 06h, 32h
		db	 00h, 36h, 7Ah, 0Eh, 27h, 04h
		db	0BFh,0BEh,0EAh, 27h, 00h,0FFh
		db	0EBh, 27h, 30h,0A0h,0CDh
loc_288:
		rol	word ptr [di],cl	; Rotate
		sub	word ptr ds:[32h],ax
loc_289:
		push	ss
loc_290:
;*		aad	0Dh			; undocumented inst
		db	0D5h, 0Dh		;  Fixup - byte match
loc_291:
		push	bp
		jge	$+5Fh			; Jump if > or =
		call	di			;*
		sub	[bx+si],ax
		jge	loc_290			; Jump if > or =
;*		aad	57h			; 'W' undocumented inst
		db	0D5h, 57h		;  Fixup - byte match
;*		jg	loc_292			;*Jump if >
		db	 7Fh,0F5h		;  Fixup - byte match
		jnz	loc_293			; Jump if not zero
		das				; Decimal adjust
		push	ax
		int	0D3h			; ??INT Non-standard interrupt
		or	ah,[bx]
		add	ax,0A0h
		adc	[bx+di],al
		lahf				; Load ah from flags
		or	ax,6A55h
		daa				; Decimal adjust
		add	byte ptr ds:[0ABAAh][bx],bh
		mov	di,0AABBh
		jmp	far ptr $+44FEh
			                        ;* No entry point to code
		das				; Decimal adjust
		mov	al,byte ptr ds:[0D3CDh]
		add	ax,529h
		push	ax
		inc	ax
		add	[si],al
		adc	ax,7D0Fh
		xlat				; al=[al+[bx]] table
		push	bp
		pop	di
		cmc				; Complement carry
		push	bp
;*		db	0DFh,0FFh,0DFh, 75h, 5Fh,0A5h
		db	0DFh,0FFh,0DFh, 75h, 5Fh,0A5h	;  Fixup - byte match
		db	 00h, 55h, 57h, 29h, 2Eh, 50h
		db	0CDh,0D3h, 0Ah, 27h, 04h,0A2h
		db	 28h, 40h, 00h,0BCh, 1Bh, 01h
		db	0EFh,0B9h,0BAh,0FAh,0FAh,0FBh
		db	0BAh,0FFh,0EFh,0BAh,0FEh,0FFh
		db	0EEh,0BAh, 27h, 01h,0BAh
		db	27h
data_673	dw	0A02Bh			; Data table (indexed access)
		db	0CDh,0D3h, 05h, 29h, 04h, 41h
		db	 30h, 80h, 00h, 0Fh,0FFh,0C3h
		db	0F5h,0D1h, 5Dh, 5Fh,0FDh,0D7h
		db	0D7h,0FFh, 5Dh, 77h, 33h, 00h
		db	 9Ch, 00h, 29h, 2Fh, 50h,0CDh
		db	0D3h, 0Ah, 27h, 04h, 80h, 28h
		db	 32h, 01h, 02h, 80h, 6Ah,0A0h
		db	0FAh,0AFh,0BFh,0ABh,0ABh,0BFh
		db	0EAh,0BFh,0FFh,0BFh,0FFh,0FEh
		db	 27h, 00h,0FFh, 27h, 2Ch,0A0h
		db	0CDh,0D3h

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_82		proc	near
		add	ax,429h
		inc	ax
		adc	[bp+si],dh
		add	[di],al
		xchg	data_415[bx+si],ax
		pop	bp
		xlat				; al=[al+[bx]] table
		xlat				; al=[al+[bx]] table
		xor	ax,[bp+si]
;*		db	0DFh,0FFh, 7Fh,0D5h, 75h, 29h
		db	0DFh,0FFh, 7Fh,0D5h, 75h, 29h	;  Fixup - byte match
		db	 00h, 5Dh, 29h, 2Ch, 50h,0CDh
		db	0D3h, 0Ah, 27h, 03h, 0Ah, 80h
loc_294:
		add	byte ptr ds:[500h],al
		pop	word ptr ds:[806Ah][bx+di]
		sub	ch,byte ptr ss:[0FBBBh][bp+si]
		scasw				; Scan es:[di] for ax
		db	0FFh,0EAh,0EFh,0FFh,0BBh,0EAh
		db	 27h, 00h,0EFh,0EAh, 27h, 2Ch
		db	0A0h,0CDh,0D3h, 05h, 29h, 03h
		db	 15h, 40h, 00h, 02h, 00h, 0Bh
		db	 8Fh, 81h
loc_295:
		jnz	$+42h			; Jump if not zero
loc_296:
		jge	loc_294			; Jump if > or =
		pop	di
		xor	ax,[bp+di]
		jg	loc_295			; Jump if >
;*		push	di
		db	0FFh,0F7h		;  Fixup - byte match
		jg	loc_296			; Jump if >
		sub	[di],bp
		push	ax
		int	0D3h			; ??INT Non-standard interrupt
		or	ah,[bx]
		add	cx,[bp+si]
		xor	byte ptr [bp+si],1
		pop	ss
		pop	data_577[bx+di]
;*		jmp	far ptr loc_435		;*
sub_82		endp

		db	0EAh
		dw	0AFAAh, 0EEFFh		;  Fixup - byte match
		db	0FFh,0FEh,0FBh,0FBh,0EBh,0ABh
		db	0ABh,0EFh,0FEh,0FAh,0FAh, 27h
		db	 01h,0AEh, 27h, 27h,0A0h,0CDh
		db	0D3h, 05h, 29h, 03h, 32h, 02h
		db	 96h, 7Dh,0F3h, 80h, 3Dh,0C2h
		db	0FFh,0DDh, 5Fh, 33h, 03h,0FDh
		db	0DFh,0DDh, 7Fh, 33h, 00h,0DFh
		db	 7Dh, 55h, 57h,0F5h, 75h, 29h
		db	 27h, 50h,0CDh,0D3h, 0Ah, 27h
		db	 03h, 32h, 03h, 01h, 53h,0C0h
		db	 02h, 80h,0FFh,0EAh,0AFh,0FFh
		db	0FEh,0FFh,0FBh,0EFh,0FFh
loc_297:
		jmp	short loc_297
			                        ;* No entry point to code
		xor	ax,[bx+si]
		cli				; Disable interrupts
		cli				; Disable interrupts
		daa				; Decimal adjust
		sub	al,0A0h
		int	0D3h			; ??INT Non-standard interrupt
		add	ax,29h
		push	sp
		add	[si+32h],dx
		add	ax,[bx]
		clc				; Clear carry flag
		pop	es
		sbb	[bx+si],al
		xor	cx,[bp+di]
		std				; Set direction flag
;*		aad	29h			; ')' undocumented inst
		db	0D5h, 29h		;  Fixup - byte match
		sub	al,50h			; 'P'
		int	0D3h			; ??INT Non-standard interrupt
		or	ah,[bx]
		add	[bp+si],ax
		stosb				; Store al to es:[di]
		xor	al,[bp+di]
		add	ax,0FFE6h
;*		call	sub_81			;*
		db	0E8h, 00h,0FEh		;  Fixup - byte match
		mov	si,33AFh
		add	al,0BFh
		db	0FFh,0BFh,0FFh,0FAh, 27h, 01h
		db	0AEh, 27h, 29h,0A0h,0CDh,0D3h
		db	 05h, 29h, 01h, 05h, 40h, 32h
		db	 03h, 03h, 7Eh, 7Fh,0E8h, 00h
		db	0FFh,0FEh, 3Eh, 33h, 08h,0F5h
		db	 7Dh, 55h, 5Fh,0D5h
		db	 29h, 29h
loc_298:
		push	ax
		int	0D3h			; ??INT Non-standard interrupt
		or	ah,[bx]
		add	[bp+si],ax
		xor	al,[bp+si]
		xor	byte ptr [bp+si],1
		adc	ax,62h
		jg	loc_298			; Jump if >
		or	ax,733h
		mov	di,0FBFEh
		cli				; Disable interrupts
;*		jmp	far ptr loc_430		;*
		db	0EAh
		dw	2A27h, 0CDA0h		;  Fixup - byte match
			                        ;* No entry point to code
		rol	word ptr [di],cl	; Rotate
		sub	[bx+di],ax
		xor	al,[bp+si]
		push	bp
		adc	al,0
		inc	cx
		inc	sp
		adc	word ptr ds:[0FF05h],ax
		out	dx,ax			; port 0, DMA-1 bas&add ch 0
		sbb	ax,0A33h
;*		db	0DFh,0F5h, 9Dh, 01h, 29h, 11h
		db	0DFh,0F5h, 9Dh, 01h, 29h, 11h	;  Fixup - byte match
		db	 75h, 29h, 02h, 59h, 29h, 0Eh
		db	 50h,0CDh,0D3h, 0Ah, 27h, 01h
		db	 00h,0A0h, 00h, 02h, 00h, 2Ah
		db	0A0h, 20h, 82h, 28h, 02h, 0Ah
		db	0FFh,0EFh, 1Dh, 33h, 0Bh, 27h
		db	 15h, 6Ah, 27h, 02h,0A8h, 27h
		db	 0Eh,0A0h,0CDh,0D3h, 04h, 29h
		db	 00h, 54h, 04h, 32h, 00h, 63h
		db	 00h, 55h, 01h, 45h, 5Fh,0D5h
		db	 41h,0F4h, 5Eh, 0Ch, 1Eh
loc_299:
		xor	cx,[bp+di]
		sub	[di],dx
		jnz	loc_300			; Jump if not zero
		add	bl,[bx+di+29h]
		push	cs
		push	ax
		int	0D3h			; ??INT Non-standard interrupt
		or	ch,data_599[bx+si]
		xor	al,[bp+di]
		test	al,0Ah
		sub	ah,[bx]
		add	byte ptr ds:[80AAh][bx+si],ah
		scasw				; Scan es:[di] for ax
		db	0FEh, 33h, 0Ah,0AAh,0EFh, 27h
		db	 05h,0ABh, 27h, 0Ch, 3Ah, 27h
		db	 02h,0B0h, 27h, 0Eh,0A0h,0CDh
		db	0D3h
loc_300:
		add	ax,3255h
		add	dx,[bx+si]
		add	ax,140h
		push	bp
		jns	$+57h			; Jump if not sign
		push	ax
		pop	di
;*		fadd	qword ptr [si-2]
		db	0DCh, 44h,0FEh		;  Fixup - byte match
		xor	cx,[bp+di]
		idiv	di			; ax,dx rem=dx:ax/reg
		xlat				; al=[al+[bx]] table
		pop	di
		jmp	loc_170
			                        ;* No entry point to code
		sub	[bx+si],cx
		push	di
		sub	[bp+si],ax
		push	sp
		mov	bp,229h
		jc	$+2Bh			; Jump if carry Set
		push	cs
		push	ax
		int	0D3h			; ??INT Non-standard interrupt
		or	ah,data_190[bx+si]
		and	[bp+si],al
		add	byte ptr ss:data_613[bp+si],al
		stosb				; Store al to es:[di]
		mov	al,byte ptr data_624+2	; (' watched him go, Princes')
		sub	ch,byte ptr data_381+65h[si]	; ('corruption.')
;*		or	dh,bh
		db	 08h,0FEh		;  Fixup - byte match
		mov	si,1527h
;*		fisub	word ptr [bx]		; st = st - memory
		db	0DEh, 27h		;  Fixup - byte match
		add	ah,ah
		daa				; Decimal adjust
		push	cs
		mov	al,data_687
		add	[bx+si+10h],al
		xor	al,[bp+si]
		add	[di],ax
		inc	ax
		add	[di+50h],dx
		jnz	$+52h			; Jump if not zero
		adc	ax,5F5h
		pop	ax
		xor	cx,[bx+di]
;*		fbstp	tbyte ptr [bp+di]	; Pop st to memory
		db	0DFh, 33h		;  Fixup - byte match
;*		add	di,bx
		db	 01h,0DFh		;  Fixup - byte match
		db	 75h,0FFh,0F7h,0F5h,0D5h, 29h
		db	 01h, 57h, 29h, 09h, 6Fh, 55h
		db	 54h, 29h, 00h,0C9h, 29h, 0Eh
		db	 50h,0CDh,0D3h, 32h, 06h,0A0h
		db	 00h, 0Ah, 28h,0A0h,0AAh,0A0h
		db	 0Ah,0AAh, 82h,0A9h, 7Fh, 33h
		db	 0Ah,0BAh,0BAh, 27h, 05h,0AEh
		db	 27h, 04h,0EAh, 27h, 04h,0B7h
		db	0AAh,0A0h, 0Ah,0ABh, 92h, 27h
		db	 0Eh,0A0h,0CDh,0D3h, 32h, 05h
		db	 01h, 50h, 00h, 01h, 55h, 01h
		db	0FDh, 40h, 05h, 5Dh, 41h, 57h
		db	0BFh, 8Fh, 33h, 0Ah, 5Fh,0FFh
		db	0DFh,0FDh, 55h,0FDh, 7Fh, 29h
		db	 03h, 75h, 29h, 07h, 3Fh,0D5h
		db	 00h, 01h, 57h, 01h, 29h, 0Eh
		db	 50h,0CDh,0D3h, 32h, 05h, 02h
		db	 80h, 00h, 0Ah,0AAh, 02h,0AAh
		db	 80h, 00h,0AAh,0A0h,0AAh,0BFh
		db	 03h, 33h, 09h,0AAh,0FFh, 27h
		db	 07h,0EAh, 27h, 09h,0D7h,0EAh
		db	 02h, 00h, 2Ch, 46h, 27h, 0Eh
		db	0A0h,0CDh,0D3h, 32h, 05h, 01h
		db	 40h, 00h, 05h, 54h, 15h,0F1h
		db	 40h, 01h, 55h, 51h, 55h,0DFh
		db	 01h, 33h, 0Ch,0F5h,0FDh, 7Fh
		db	 75h,0F5h,0F7h, 57h, 75h, 37h
		db	 01h, 77h, 29h, 06h, 6Bh,0F4h
		db	 32h, 00h, 10h, 01h, 29h, 0Eh
		db	 50h,0CDh,0D3h, 32h, 05h, 82h
		db	 32h, 01h, 20h, 2Ah, 97h, 00h
		db	 00h,0AAh,0A0h,0AAh,0AFh, 03h
		db	0FEh, 33h, 05h,0BEh,0BFh,0EFh
		db	0AAh,0BAh, 27h, 13h,0B5h,0E4h
		db	 02h, 00h, 01h, 12h, 27h, 0Eh
		db	0A0h,0CDh,0D3h, 32h, 05h, 14h
		db	 32h, 01h, 44h, 55h, 7Ch, 10h
		db	 14h, 15h, 58h, 55h, 77h, 01h
		db	0FEh
loc_301:
		pop	di
		xor	ax,[di]
		std				; Set direction flag
		cmc				; Complement carry
		pop	di
;*		push	di
		db	0FFh,0F7h		;  Fixup - byte match
		sub	[bx+si],ax
		jnz	loc_303			; Jump if not zero
		pop	di
		cmc				; Complement carry
		pop	bp
		sub	[bx+si],ax
;*		aad	29h			; ')' undocumented inst
		db	0D5h, 29h		;  Fixup - byte match
		or	[bp+si-20h],ch
		xor	al,[bx+di]
		sub	ax,0E29h
		push	ax
		int	0D3h			; ??INT Non-standard interrupt
		xor	al,[si]
		add	ch,[bx+si]
		xor	al,[bx+di]
		and	[bp+si],cl
		stosb				; Store al to es:[di]
		add	ch,[bp+si]
		or	ch,byte ptr ds:[0EA2Ah][bx+si]
		add	word ptr ds:[332Fh][bx+si],sp
		add	ax,0FBEEh
		scasb				; Scan es:[di] for al
		mov	dx,0AAAEh
		mov	si,327h
		stosw				; Store ax to es:[di]
		jmp	far ptr $+4ABDh
			                        ;* No entry point to code
		xor	al,[bx+di]
		mov	dx,0E27h
		mov	al,data_687
		xor	al,[si]
		add	ax,3210h
		add	[bx+si+29h],ax
		add	[bx+si],al
		adc	al,5
		push	sp
		inc	bp
		pop	bp
		inc	ax
		add	[bx+33h],bx
		pop	es
		db	 7Fh,0FFh,0D9h, 10h
loc_303:
		pop	ds
		push	bp
		std				; Set direction flag
		pop	di
		cmc				; Complement carry
		jge	loc_304			; Jump if > or =
		or	al,0B0h
		xor	al,[bx+si]
		add	ch,[bx+di]
;*		pop	cs			; Dangerous-8088 only
		db	0Fh			;  Fixup - byte match
		push	ax
		int	0D3h			; ??INT Non-standard interrupt
		xor	al,[si]
		sub	ah,[bx+si]
		xor	al,[bx+si]
		add	ah,[bx+si]
		sub	ch,byte ptr ss:data_216[bp+si]
		test	al,27h			; '''
		add	[bp+si],cx
		stosb				; Store al to es:[di]
		mov	byte ptr ds:[333h],al
		scasb				; Scan es:[di] for al
		out	dx,al			; port 0E27h ??I/O Non-standard
		scasw				; Scan es:[di] for ax
;*		jmp	far ptr loc_3		;*
		db	0EAh
		dw	0EAAAh, 0A4h		;  Fixup - byte match
		db	 06h, 27h, 03h
loc_304:
		stosw				; Store ax to es:[di]
		mov	bx,27EAh
		or	word ptr ds:[641Ch][bx+si],sp
		or	ah,[bx]
;*		pop	cs			; Dangerous-8088 only
		db	0Fh			;  Fixup - byte match
		mov	al,byte ptr ds:[0D3CDh]
		xor	al,[si]
		add	al,40h			; '@'
		xor	al,[bx+si]
		add	ax,5540h
		jnz	$+2			; delay for I/O
		add	ax,5D45h
		inc	cx
		jge	loc_307			; Jump if > or =
loc_305:
		push	bp
		movsw				; Mov [si] to es:[di]
;*		add	cl,dl
		db	 00h,0D1h		;  Fixup - byte match
		mov	di,433h
		jg	loc_305			; Jump if >
		in	ax,0			; port 0, DMA-1 bas&add ch 0
		add	[di+57h],dx
;*		fist	word ptr [di+57h]	; Store st to memory
		db	0DFh, 55h, 57h		;  Fixup - byte match
		jnz	loc_306			; Jump if not zero
		or	dx,[bx+si+1Eh]
		inc	ax
		adc	ax,0F29h
		push	ax
		int	0D3h			; ??INT Non-standard interrupt
		xor	al,[si]
		add	dh,[bp+si]
		add	[bp+si],cl
		add	ah,byte ptr ds:[0AA2Ah][bx+si]
;*		sub	byte ptr [bp+si],0
		db	 82h, 2Ah, 00h		;  Fixup - byte match
		stosb				; Store al to es:[di]
		test	al,0AAh
		test	al,0EAh
		stosb				; Store al to es:[di]
		mov	ax,[bx+di]
		lahf				; Load ah from flags
		xor	ax,[bp+si]
		db	0FEh,0BAh,0AAh,0AEh,0A8h, 32h
		db	 00h
loc_306:
		sub	ah,al
		push	cs
		daa				; Decimal adjust
		push	cs
loc_307:
		test	al,18h
		add	[bp+si],ch
		daa				; Decimal adjust
;*		pop	cs			; Dangerous-8088 only
		db	0Fh			;  Fixup - byte match
		mov	al,byte ptr ds:[0D3CDh]
		xor	al,[si]
		adc	[bp+si],dh
		add	[di],dl
		add	ax,2940h
		add	[di],al
		push	bp
		push	ax
		push	di
;*		aam	6			; undocumented inst
		db	0D4h, 06h		;  Fixup - byte match
		push	sp
		adc	ax,0D55Dh
		add	al,7Fh
;*		fbstp	tbyte ptr [bp+di]	; Pop st to memory
		db	0DFh, 33h		;  Fixup - byte match
		add	dl,[di-1]
		push	di
		inc	ax
		xor	al,[bx+di]
		loopnz	locloop_308		; Loop if zf=0, cx>0

		sub	[bx+si],ax
;*		fst	st(5)			; Store st to st(#)
		db	0DDh,0D5h		;  Fixup - byte match
		sub	[bx+si],cx
		push	sp
		add	[bx+si],dh
		push	cs
		add	[bx+si],bl
		add	[bx+di],bp
		push	cs
		push	ax
		int	0D3h			; ??INT Non-standard interrupt
		xor	cl,[bx+si]
		db	 65h, 00h, 2Ah,0AAh, 80h, 2Ah
		db	0A0h, 27h, 00h, 82h,0AAh, 82h
		db	0AEh,0AAh, 0Ah, 02h,0BFh, 33h
		db	 00h,0BEh,0D0h, 00h,0BFh,0EAh
		db	 48h, 80h, 00h, 01h, 32h, 00h
		db	0AAh,0FAh,0AAh,0BAh, 27h, 08h
		db	0A1h, 40h, 68h, 03h, 80h, 2Ch
		db	 00h, 0Ah, 27h, 01h,0A8h, 27h
		db	 09h,0A0h,0CDh,0D3h, 32h, 07h
		db	 10h, 04h, 00h, 55h, 15h, 01h
		db	 55h, 40h, 45h, 75h, 40h, 15h
		db	 50h, 7Fh,0DDh, 01h, 10h, 0Dh
		db	 33h, 00h,0DDh, 32h, 00h
data_675	db	7Dh
		db	 55h, 41h, 32h, 03h, 13h, 18h
		db	 01h, 29h, 09h, 32h, 00h, 48h
		db	 32h, 00h, 24h, 00h, 01h, 29h
		db	 01h, 50h, 15h, 55h, 05h, 29h
		db	 06h, 50h,0CDh,0D3h, 32h, 0Ah
		db	 22h,0AAh, 82h,0AAh,0A0h, 0Ah
		db	 27h, 00h, 2Ah,0AAh, 02h, 27h
		db	 00h, 2Fh, 80h, 0Fh,0FBh,0E6h
		db	 32h, 00h, 0Ah,0B8h, 32h, 04h
		db	 01h, 80h, 00h,0ABh, 27h, 00h
		db	 00h, 2Ah, 27h, 04h,0A0h, 00h
		db	0C0h, 18h, 00h, 06h, 00h, 0Ah
		db	 27h, 01h, 92h, 0Ah,0A8h, 00h
		db	 27h, 06h,0A0h,0CDh,0D3h, 32h
		db	 07h, 04h, 32h, 00h
data_676	dw	9Bh			; Data table (indexed access)
		db	 41h, 55h, 54h, 01h, 55h

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_83		proc	near
		push	sp
		push	cx
		push	bp
		add	[di-1],dx
		push	di
		clc				; Clear carry flag
		adc	dx,[di+32h]
		add	[di],ax
		push	ax
		xor	al,[si]
		add	dh,[bp+si]
		add	[di],dl
		push	bp
		inc	sp
		add	[di],al
		sub	[bp+si],ax
		db	0C0h, 15h, 2Bh,0FEh, 80h,0BEh
		db	 00h, 02h,0AAh,0A8h, 01h, 55h
		db	 01h, 32h, 00h, 40h, 00h, 15h
		db	 29h, 05h, 50h,0CDh,0D3h, 32h
		db	 0Ah, 0Ah, 2Ah, 00h, 2Ah,0AAh
		db	 00h, 8Ah,0AAh,0A0h,0A2h,0A8h
		db	 02h, 27h, 00h,0ABh,0C0h, 04h
		db	 32h, 02h,0C0h, 32h, 07h, 1Bh
		db	 82h, 08h, 32h, 00h, 27h, 01h
		db	0A9h, 32h, 00h,0AAh, 32h, 00h
		db	0FFh, 04h, 32h, 08h, 02h, 27h
		db	 05h,0E0h,0CDh,0D3h, 32h, 07h
		db	 10h, 00h, 01h, 04h, 15h, 41h
		db	 29h, 00h, 00h, 05h, 5Dh, 51h
		db	 55h,0D5h, 00h, 15h, 1Fh,0F7h
		db	 54h, 32h, 0Dh, 05h, 08h, 32h
		db	 01h, 05h, 29h, 00h, 52h, 32h
		db	 00h, 14h, 32h, 00h, 3Ch, 32h
		db	 0Ah, 29h, 05h, 50h,0CDh,0D3h
		db	 32h, 07h, 2Ah, 00h,0A8h, 00h
		db	 2Ah,0A3h, 00h,0AAh, 80h, 00h
		db	 2Ah, 27h, 01h,0B0h, 2Ah, 8Ah
		db	 27h, 00h,0A8h, 32h, 0Dh, 10h
		db	 32h, 02h, 2Ah,0AAh, 80h, 32h
		db	 10h, 0Ah,0AAh, 80h, 00h, 27h
		db	 01h,0A0h,0CDh,0D3h, 32h, 07h
		db	 04h, 00h, 55h, 00h, 15h, 00h
		db	 55h, 75h, 50h, 00h, 55h, 54h
		db	 55h, 5Fh, 54h, 01h,0ADh,0D5h
		db	0FDh, 7Fh, 40h, 32h, 11h, 05h
		db	 55h, 32h, 12h, 54h, 32h, 00h
		db	 29h, 01h, 50h,0CDh,0D3h, 32h
		db	 05h, 20h, 02h,0A8h, 00h, 22h
		db	 88h, 2Ah, 00h, 28h, 8Ah,0A8h
		db	 00h, 08h, 27h, 02h,0A0h, 22h
		db	 6Eh,0BEh,0AAh,0B9h, 02h, 32h
		db	 29h, 02h, 27h, 00h,0A0h,0CDh
		db	0D3h, 32h, 04h, 06h, 80h, 00h
		db	 50h, 00h, 05h, 40h, 15h, 00h
		db	 45h, 5Dh, 54h, 32h, 00h, 10h
		db	 55h, 57h,0F5h, 54h, 11h, 5Fh
		db	 55h, 7Dh, 5Dh,0F0h, 32h, 16h
		db	 3Ch, 32h, 11h, 05h, 00h, 10h
		db	0CDh,0D3h, 32h, 07h, 80h, 00h
		db	 02h,0A8h, 2Ah, 00h, 2Ah,0AAh
		db	0A8h, 08h, 00h, 20h, 2Ah, 82h
		db	 2Ah,0AAh, 80h, 88h, 6Ah, 27h
		db	 00h,0ABh, 80h, 32h, 15h, 7Ah
		db	 32h, 14h,0CDh,0D3h, 32h, 04h
		db	 0Ch, 32h, 00h, 40h, 00h, 01h
		db	 54h, 15h, 00h, 45h, 57h, 55h
		db	 32h, 00h, 01h, 41h, 55h, 5Fh
		db	0D5h, 10h, 04h, 05h, 15h, 57h
		db	0FDh,0F1h, 32h, 09h, 25h,0D5h
		db	 54h, 32h, 07h, 70h, 70h, 32h
		db	 13h,0CDh,0D3h, 32h, 07h,0A0h
		db	 00h, 5Bh, 00h
loc_309:
		sub	cl,[bx+si]
		sub	ah,[bx]
		add	[bp+si],si
		add	[bx+si],ah
		stosb				; Store al to es:[di]
		das				; Decimal adjust
		stosb				; Store al to es:[di]
		call	sub_61
		add	dh,[bp+si-56h]
		xchg	ch,al
		xor	al,[bx]
		xchg	ds:data_76e[bx],bh
		or	ds:data_77e,ch
;*		or	[bp+di+0],bx
		db	 09h, 5Bh, 00h		;  Fixup - byte match
		db	 32h, 06h,0CDh,0D3h, 32h, 07h
		db	 54h, 00h, 04h, 01h, 05h, 14h
		db	 01h, 51h,0DDh, 54h, 10h, 32h
		db	 01h, 11h,0BEh,0DDh, 40h, 01h
		db	 40h, 56h, 52h, 95h,0D7h,0C0h
		db	 32h, 00h, 40h, 32h, 01h, 2Ah
		db	 83h,0F5h,0DFh, 55h, 54h, 32h
		db	 07h, 3Eh,0F4h, 32h, 08h, 15h
		db	 01h, 10h, 32h, 06h,0CDh,0D3h
		db	 32h, 07h, 28h, 32h, 00h, 80h
		db	 2Ah,0A0h, 02h, 27h, 01h, 32h
		db	 00h, 0Ah, 80h, 08h,0AAh,0EAh
		db	0A8h, 00h,0A2h, 22h, 8Ah, 84h
		db	 27h, 00h,0A0h, 32h, 01h, 08h
		db	 0Eh,0EBh,0FFh,0BEh,0AAh,0BAh
		db	0A8h, 32h, 07h, 1Ch, 60h, 00h
		db	 03h, 80h, 32h, 00h, 02h,0A0h
		db	 28h, 32h, 00h, 02h, 00h,0AAh
		db	 08h, 20h, 32h, 04h,0CDh,0D3h
		db	 32h, 0Ah, 10h, 05h, 40h, 04h
		db	 55h, 5Dh, 45h, 40h, 00h, 11h
		db	 44h, 17h, 15h, 6Fh,0D5h, 50h
		db	 00h, 01h, 42h, 51h, 82h, 09h
		db	 26h, 5Dh, 40h, 00h, 02h,0AAh
		db	 9Fh, 5Dh, 55h, 9Dh, 00h, 41h
		db	 32h, 00h, 63h, 00h, 32h, 03h
		db	 15h, 32h, 00h, 07h,0C8h, 32h
		db	 00h,0ABh,0F1h, 50h, 32h, 01h
		db	 14h, 01h, 32h, 00h, 01h, 32h
		db	 03h,0CDh,0D3h, 32h, 06h, 80h
		db	 32h, 01h, 08h, 0Ah,0A8h, 08h
		db	 20h, 27h, 00h, 32h, 00h, 02h
		db	 0Ah,0AAh, 83h,0ACh,0AEh,0AAh
		db	0A0h, 00h, 80h,0A2h, 8Ah, 2Ah
		db	 28h,0B2h, 8Ah, 88h, 82h,0A8h
		db	0B5h,0BEh,0FAh,0EBh,0AAh, 2Ah
		db	 88h, 32h, 06h, 0Ah, 00h, 0Eh
		db	 05h,0E1h, 00h, 08h,0AAh, 2Ah
		db	0AAh, 28h, 32h, 01h, 02h
data_678	dw	3208h			; Data table (indexed access)
		db	 05h,0CDh,0D3h, 32h, 01h, 10h
		db	 32h, 04h, 04h, 00h, 04h, 05h
		db	 15h, 51h, 15h, 54h, 51h, 40h
		db	 00h, 9Bh, 00h, 40h, 41h, 04h
		db	 59h, 59h, 54h, 32h, 00h, 20h
		db	 00h, 84h,0ABh, 90h, 4Ch, 84h
		db	 45h, 48h,0ABh,0F7h, 5Dh,0E5h
		db	 55h, 32h, 04h, 40h, 32h, 02h
		db	 06h, 38h, 80h,0C0h, 01h, 88h
		db	0BBh, 22h,0D4h, 10h, 04h, 32h
		db	 00h, 01h, 32h, 06h,0CDh,0D3h
		db	 32h, 00h, 08h, 32h, 03h, 80h
		db	 00h, 82h, 40h, 22h, 00h,0AAh
		db	 80h,0AAh,0A8h, 08h, 32h, 00h
		db	 20h, 12h, 02h, 82h,0A0h, 9Ah
		db	 1Ah,0CAh,0A8h, 02h,0A2h, 32h
		db	 00h, 8Ah, 2Ah,0A2h,0A0h, 8Eh
		db	 42h,0AAh, 02h,0AAh, 2Ah, 80h
		db	 02h, 80h, 32h, 04h, 02h, 80h
		db	 00h,0CFh, 30h, 32h, 02h, 08h
		db	 88h, 08h, 28h, 80h,0A0h, 32h
		db	 01h, 20h, 32h, 04h,0CDh,0D3h
		db	 32h, 06h, 10h, 00h, 05h, 00h
		db	 10h, 01h, 54h, 00h, 10h, 40h
		db	 04h, 01h, 00h, 44h, 08h, 01h
		db	 76h, 00h, 04h, 11h, 60h, 05h
		db	 54h, 01h, 32h, 01h, 04h, 10h
		db	 15h, 11h, 04h, 15h, 55h, 74h
		db	 40h, 32h, 05h, 01h, 00h, 57h
		db	0CFh,0C8h,0CFh, 30h, 32h, 02h
		db	 18h, 04h, 32h, 01h, 04h, 10h
		db	 00h, 04h, 55h, 14h, 50h, 32h
		db	 01h, 10h,0CDh,0D3h, 32h, 05h
		db	 08h, 0Ah, 20h, 02h, 00h, 5Bh
		db	 00h,0AAh,0A8h, 32h, 00h, 02h
		db	 00h,0A0h, 22h, 02h, 20h, 08h
		db	 32h, 00h, 21h, 49h, 02h,0A0h
		db	 66h, 00h, 22h, 88h, 8Ah, 0Ah
		db	0AAh,0CCh, 00h,0A8h, 27h, 00h
		db	 80h, 08h, 80h, 00h, 20h, 00h
		db	 08h, 0Ah, 28h, 8Ah, 88h,0B3h
		db	0F4h, 06h, 08h, 32h, 02h, 98h
		db	 00h, 8Ah,0A2h, 88h
		db	32h

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_311:
		add	[bx+si],cx
		mov	byte ptr ds:[88AAh],al
		add	ah,byte ptr ds:[8088h][bx+si]
		int	0D3h			; ??INT Non-standard interrupt
		xor	al,[bx+di]
		adc	[bp+si],dh
		add	dl,[bx+si]
		add	[si],al
		db	 60h, 04h, 01h, 11h, 55h, 01h
		db	 00h, 40h, 00h, 50h, 10h, 32h
		db	 00h, 15h, 10h, 00h, 40h,0C6h
		db	 06h, 10h, 50h, 85h, 00h, 04h
		db	 01h, 51h, 45h, 10h, 29h, 00h
		db	 5Dh,0D5h, 5Dh, 45h, 84h, 40h
		db	 00h, 04h, 00h, 1Ah, 1Dh,0CFh
		db	0ECh
data_679	db	7Bh			; Data table (indexed access)
		db	0FCh, 32h, 04h, 20h,0D5h, 49h
		db	 74h, 00h, 01h, 00h
data_680	dw	1040h			; Data table (indexed access)
		db	 04h, 15h, 04h, 10h, 40h, 32h
		db	 00h,0CDh,0D3h, 00h, 02h, 32h
		db	 04h, 2Ah, 82h, 2Ah, 00h, 5Bh
		db	 00h, 00h, 28h, 00h, 80h, 20h
		db	 32h, 00h, 0Ah, 00h, 20h, 08h
		db	 0Ah, 08h, 82h, 02h, 88h, 82h
		db	 00h, 2Ah, 82h, 88h,0A0h,0AAh
		db	0BAh,0ABh,0AEh,0BFh, 0Ah, 32h
		db	 00h,0AAh, 08h, 22h, 0Ah, 22h
		db	 0Ah, 27h, 00h, 82h,0AAh, 59h
		db	0D0h, 32h, 04h,0AAh, 82h, 27h
		db	 00h,0A2h, 88h, 32h, 01h, 02h
		db	 28h,0AAh, 82h, 8Ah, 28h, 00h
		db	0CDh,0D3h, 00h, 63h, 00h, 32h
		db	 02h, 04h, 51h, 00h, 54h, 10h
		db	 50h, 01h, 00h, 11h, 00h, 91h
		db	 00h, 00h, 04h, 00h, 40h, 10h
		db	 89h, 01h, 01h, 00h, 01h, 05h
		db	0A0h, 0Ch,0D0h, 01h, 11h, 29h
		db	 00h, 75h,0F7h, 54h, 51h, 55h
		db	 93h, 00h, 68h, 0Eh, 44h, 73h
		db	 00h, 30h, 53h, 11h,0F4h, 49h
		db	 50h, 00h, 09h, 62h, 32h, 01h
		db	 7Dh, 5Dh,0FDh, 15h, 32h, 00h
		db	 44h, 00h, 78h, 60h, 04h, 15h
		db	 04h, 11h, 11h, 40h,0CDh,0D3h
		db	 32h, 00h, 99h, 00h, 32h, 02h
		db	0A8h, 32h, 00h, 0Ah, 28h, 00h
		db	 82h, 20h, 00h, 08h, 00h, 08h
		db	 02h, 00h, 20h, 08h, 02h, 00h
		db	 02h, 08h, 20h, 00h, 02h, 28h
		db	 02h,0A8h,0AAh, 0Ah, 2Ah,0AAh
		db	 68h, 6Ah, 27h, 00h,0AEh, 27h
		db	 00h,0A0h,0A2h, 28h, 80h, 00h
		db	 80h,0A8h, 20h,0B6h, 41h, 40h
		db	 00h, 2Fh, 1Fh, 40h, 32h, 00h
		db	 27h, 00h, 65h, 00h,0A8h, 98h
		db	 01h, 82h, 28h, 00h, 08h, 0Ah
		db	 32h, 01h,0CDh,0D3h, 32h, 00h
		db	 04h, 32h, 02h, 10h, 40h, 00h
		db	 01h, 93h, 00h, 00h, 01h, 14h
		db	 32h, 00h, 42h, 04h, 32h, 03h
		db	 40h, 00h, 04h, 14h, 32h, 00h
		db	 01h, 11h, 04h, 01h, 32h, 00h
		db	 01h,0C5h, 55h, 15h, 4Fh,0F5h
		db	 55h,0D5h, 54h, 24h, 10h, 00h
		db	 08h, 8Ch, 87h, 39h,0F5h, 31h
		db	 40h, 10h,0BEh, 30h,0E0h, 02h
		db	 01h, 55h,0F5h, 75h, 45h, 51h
		db	 00h, 10h, 04h, 05h, 32h, 00h
		db	 01h, 40h, 00h, 50h, 10h,0CDh
		db	0D3h, 00h, 5Bh, 00h, 88h, 32h
		db	 01h, 08h, 80h, 00h,0AAh,0A0h
		db	 08h, 32h, 00h, 0Ah, 32h, 00h
		db	 21h, 02h, 00h, 80h, 32h, 00h
		db	 08h, 98h, 00h, 02h, 08h, 32h
		db	 00h, 28h, 27h, 00h, 00h, 20h
		db	 02h, 27h, 06h, 88h,0AAh, 99h
		db	 00h, 6Ch, 00h,0B0h, 2Ah,0A8h
		db	 5Ah, 00h, 09h, 79h,0E3h, 1Ch
		db	 06h, 02h, 27h, 00h,0A8h, 22h
		db	0AAh, 8Ah,0AAh, 02h,0A8h, 00h
		db	0AAh, 22h, 00h, 2Ah,0A2h, 80h
		db	0CDh,0D3h, 32h, 05h, 14h, 32h
		db	 00h, 54h, 80h, 32h, 01h, 05h
		db	 32h, 00h, 10h, 32h, 00h, 40h
		db	 02h, 32h, 00h, 10h, 32h, 03h
		db	 51h, 41h, 40h, 44h, 05h, 29h
		db	 04h,0FFh, 57h, 14h, 19h, 20h
		db	 10h, 21h, 31h, 7Ah, 6Eh,0B4h
		db	 04h, 62h, 03h, 06h,0EFh,0CEh
		db	 72h, 1Ch, 05h, 29h, 00h, 41h
		db	 15h, 29h, 00h, 54h,0A7h, 55h
		db	 1Dh, 55h, 51h, 29h, 00h, 44h
		db	 10h,0CDh,0D3h, 00h, 02h, 32h
		db	 03h, 22h, 0Ch, 00h, 2Ah, 40h
		db	 20h, 02h, 32h, 00h, 80h, 20h
		db	 00h, 20h, 32h, 00h, 01h, 32h
		db	 07h,0AAh, 08h,0A0h, 8Ah, 27h
		db	 00h,0BAh,0AAh,0BAh,0BAh,0FAh
		db	0EAh, 22h, 22h, 0Ah, 08h, 8Ah
		db	 27h, 00h, 8Ah, 88h, 02h, 34h
		db	 07h, 06h,0EFh,0CEh, 72h, 1Ch
		db	 00h, 27h, 00h, 80h, 0Ah, 2Ah
		db	 27h, 00h, 2Ah, 27h, 02h, 8Ah
		db	0A2h, 98h, 00h,0CDh,0D3h, 32h
		db	 00h, 01h, 00h, 0Ah, 00h, 01h
		db	 10h, 32h, 00h
		db	54h
loc_312:
		and	[bx+si],dl
		db	 63h, 00h, 32h, 00h, 10h, 32h
		db	 01h, 02h, 00h
		db	 40h, 32h

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_84:
		add	al,1
		sub	[bp+si],ax
		jge	$-7			; Jump if > or =
		jg	$+35h			; Jump if >
		add	[bx+57h],bl
		pop	di
		inc	byte ptr [si-2Bh]
		inc	bp
		jnz	$+5Fh			; Jump if not zero
		pop	di
		std				; Set direction flag
		db	 6Dh, 32h, 01h, 16h, 47h, 4Fh
		db	0DEh, 7Fh, 3Ch, 12h,0C1h, 44h
		db	 00h,0D0h, 30h, 41h, 55h, 11h
		db	 55h, 45h, 55h, 15h, 45h, 54h
		db	 11h, 50h,0CDh,0D3h, 32h, 0Ah
		db	 28h, 00h, 66h, 00h, 32h, 02h
		db	 20h, 00h, 80h, 32h, 05h,0A0h
		db	 2Ah,0AAh, 8Ah, 27h, 02h,0AFh
		db	0ABh,0BEh, 88h, 22h, 0Ah, 22h
		db	0C4h, 00h,0AAh, 2Ah, 27h, 00h
		db	0A2h, 0Ah, 98h, 00h, 2Ch, 81h
		db	 9Eh,0FFh,0CEh, 7Ah, 04h, 18h
		db	0A2h,0A8h, 2Ah, 80h,0CCh, 00h
		db	 82h,0AAh, 82h,0AAh,0A2h, 2Ah
		db	 88h,0AAh,0A0h,0CDh,0D3h, 32h
		db	 03h, 80h, 00h, 10h, 00h, 80h
		db	 32h, 02h, 73h, 00h, 32h, 02h
		db	 10h, 32h, 07h, 05h, 29h, 00h
		db	 9Ch, 00h,0D7h,0D7h,0F7h,0FFh
		db	0D7h,0D6h, 50h, 40h, 10h, 32h
		db	 00h, 05h, 45h, 5Fh,0DFh, 3Bh
		db	 34h, 32h, 00h, 41h, 6Bh, 21h
		db	0D1h,0FDh, 8Dh,0E4h, 02h, 14h
		db	 41h, 00h, 05h, 04h, 44h, 77h
		db	 64h, 44h, 10h, 74h, 51h, 54h
		db	 15h,0D7h,0D0h,0CDh,0D3h, 32h
		db	 02h, 1Ah, 80h, 32h, 02h, 28h
		db	 00h, 02h, 32h, 03h, 04h, 00h
		db	 08h, 32h, 06h, 27h, 00h, 2Ah
		db	 27h, 00h, 38h,0A6h, 00h,0BEh
		db	0EAh,0AAh, 80h, 00h, 02h, 27h
		db	 00h, 88h, 27h, 02h, 20h, 99h
		db	 00h, 8Ah, 84h,0E7h,0C0h,0E1h
		db	0ECh, 0Eh,0D8h, 81h, 00h,0A0h
		db	 0Ah, 22h, 8Ah, 22h, 2Ah, 27h
		db	 00h, 28h, 2Ah, 27h, 02h,0A0h
		db	0CDh,0D3h, 32h, 02h, 80h, 32h
		db	 01h, 40h, 32h, 01h, 01h, 32h
		db	 03h, 01h, 32h, 04h, 89h, 01h
		db	 32h, 00h, 01h, 55h, 57h, 29h
		db	 00h, 7Dh,0D7h,0A5h, 00h, 94h
		db	 89h, 00h, 54h, 41h, 29h, 02h
		db	 54h, 44h, 51h, 41h, 0Dh, 54h
		db	 19h,0FFh, 00h,0F9h, 60h,0FEh
		db	 32h, 00h, 90h, 32h, 00h, 14h
		db	 54h, 11h, 05h, 5Dh, 55h, 57h
		db	 77h, 67h, 54h, 29h, 00h, 50h
		db	0CDh,0D3h, 02h, 00h, 20h, 32h
		db	 02h, 08h, 32h, 0Dh, 20h, 28h
		db	 02h, 00h,0AAh,0A8h, 27h, 02h
		db	0BAh,0A6h, 00h,0AAh,0EAh,0A2h
		db	0A0h, 22h, 00h, 2Ah,0AAh, 2Ah
		db	0AAh, 2Ah, 27h, 00h, 28h, 00h
		db	 27h, 00h, 28h, 3Bh,0FFh, 00h
		db	0F9h, 60h,0FEh, 02h, 00h, 08h
		db	 02h, 88h,0A8h, 27h, 04h, 2Ah
		db	 27h, 02h,0A0h,0CDh,0D3h, 32h
		db	 00h, 10h, 32h, 02h, 04h, 01h
		db	 14h, 32h, 0Bh, 10h, 40h, 01h
		db	 29h, 07h,0F5h,0FDh, 7Dh, 45h
		db	 54h, 29h, 03h, 45h, 01h, 5Ch
		db	0E5h, 51h, 01h
		db	45h
loc_313:
		inc	cx
		push	bp
		ja	loc_313			; Jump if above
		add	[bp-4Dh],di
		mov	di,1020h
		inc	sp
		inc	cx
		add	[bx+di+45h],ax
		sub	[bx+si],cx
		push	ax
		int	0D3h			; ??INT Non-standard interrupt
		xor	al,[bp+si]
		add	cl,[bp+si]
		add	[bp+si],ah
		xor	byte ptr [bp+si],0Dh
		mov	ch,ds:data_70e[bx+si]
		daa				; Decimal adjust
		push	es
		scasb				; Scan es:[di] for al
		test	al,82h
		mov	ch,ds:data_68e[bx+si]
		mov	al,ds:data_73e
		push	es
		out	0F8h,ax			; port 0F8h ??I/O Non-standard
		and	[bx-2Dh],bp
		aas				; Ascii adjust
		db	 60h, 00h, 02h,0A8h, 22h, 27h
		db	 0Ah,0A0h,0CDh,0D3h, 32h, 05h
		db	 04h, 00h, 41h, 40h, 32h, 06h
		db	 15h, 14h, 01h

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_85:
		jnc	$+2			; delay for I/O
		add	[di+15h],al
		sub	[bx+di],ax
		pop	di
		xlat				; al=[al+[bx]] table
		pop	bp
;*		db	0DFh,0DFh, 75h, 29h, 01h, 54h
		db	0DFh,0DFh, 75h, 29h, 01h, 54h	;  Fixup - byte match
		db	 11h, 29h, 01h, 44h, 15h, 55h
		db	 11h, 45h, 15h, 29h, 01h, 54h
		db	0EFh,0F8h, 06h,0BFh,0EEh, 2Fh
		db	 78h, 00h, 05h, 54h, 29h, 06h
		db	 54h, 29h, 02h, 50h,0CDh,0D3h
		db	 32h, 02h, 20h, 5Bh, 00h, 28h
		db	 20h, 00h, 80h
		db	 32h, 08h
loc_314:
		sub	[bx+si],al
		daa				; Decimal adjust
		adc	ax,0AAA8h
		mov	ds:data_69e,al
		test	al,0CFh
                           lock	pop	cx
		jg	loc_314			; Jump if >
		dec	si
		js	$+2			; delay for I/O
		or	ah,[bx]
		or	al,0A0h
		int	0D3h			; ??INT Non-standard interrupt
		xor	al,[si]
		add	al,29h			; ')'
		add	al,[bx+si]
		inc	bp
		db	 63h, 00h, 76h, 00h, 41h, 54h
		db	 55h, 11h, 00h, 15h, 29h, 01h
		db	 5Dh,0FDh,0FFh,0D7h,0D5h, 75h
		db	 29h, 09h, 50h, 29h, 00h, 50h
		db	 69h, 00h, 29h, 02h, 54h, 5Fh
		db	0F0h, 46h, 33h, 00h, 10h,0FCh
		db	 00h, 05h, 29h, 0Ch, 50h,0CDh
		db	0D3h, 32h, 00h, 02h, 08h, 02h
		db	0A8h,0AAh, 2Ah, 27h, 00h, 32h
		db	 01h, 02h, 20h,0A8h, 02h, 32h
		db	 00h, 27h, 1Bh, 2Ah, 27h, 02h
		db	0A8h, 1Fh,0F0h,0CFh, 0Fh,0FFh
		db	 81h, 80h, 00h, 0Ah, 27h, 0Ch
		db	0A0h,0CDh,0D3h, 32h, 02h, 11h
		db	 15h, 04h, 29h, 01h, 45h, 04h
		db	 11h, 54h, 00h, 44h, 01h, 54h
		db	 51h, 00h, 45h, 05h, 95h, 75h
		db	0D5h, 29h, 07h, 44h, 51h, 29h
		db	 08h, 45h, 15h, 29h, 01h, 5Dh
		db	0DDh,0D4h, 1Fh,0F0h,0CFh, 0Fh
		db	0FFh, 81h, 80h, 00h, 05h, 29h
		db	 0Ch, 50h,0CDh,0D3h, 5Bh, 00h
		db	 00h, 02h, 2Ah, 27h, 01h, 00h
		db	 20h, 88h,0AAh, 22h,0AAh, 2Ah
		db	0AAh,0A8h, 08h, 32h, 00h, 27h
		db	 18h, 0Ah, 2Ah, 27h, 04h, 1Fh
		db	0F0h,0C7h, 81h,0FFh,0A2h, 00h
		db	 04h, 0Ah, 27h, 0Ch,0A0h,0CDh
		db	0D3h, 32h, 01h, 69h, 00h
		db	 54h, 45h, 44h
loc_315:
		inc	cx
		adc	al,1
		adc	[si+54h],al
		sub	[bx+si],cx
		push	di
		jnz	loc_317			; Jump if not zero
		pop	bp
		sub	[bx],cx
		fwait				; Wait til math done
		add	[di-2Bh],bl
		sub	[bx+di],ax
;*		fst	qword ptr [di+1Fh]	; Store st to memory
		db	0DDh, 55h, 1Fh		;  Fixup - byte match
		js	loc_315			; Jump if sign=1
		xor	bl,0FCh
		sbb	[bx+si],al
		sbb	ax,0DDC5h
		sub	[bp+si],cx
		push	ax
		int	0D3h			; ??INT Non-standard interrupt
		xor	al,[bx+di]
		and	byte ptr [bx+si],80h
		sub	ah,byte ptr ds:[0A00Ah][bx+si]
;*		or	ch,[si+0]
		db	 0Ah, 6Ch, 00h		;  Fixup - byte match
		db	0AAh,0A8h,0A2h, 27h, 1Bh, 82h
		db	 27h, 06h, 8Fh, 58h, 61h,0C0h
		db	 53h,0D0h, 20h, 04h, 2Ah,0A2h
		db	 27h, 0Bh,0A0h,0CDh,0D3h, 00h
		db	45h
loc_316:
		push	cx
		add	ax,329h
		inc	bp
		sub	[bx+si],ax
		push	cx
		sub	[bx+di],dx
		push	sp
		sub	word ptr ds:[0D55Dh],ax
;*		fst	st(4)			; Store st to st(#)
		db	0DDh,0D4h		;  Fixup - byte match
		int	0D5h			; ??INT Non-standard interrupt
;*		fst	qword ptr [di+5Dh]	; Store st to memory
		db	0DDh, 55h, 5Dh		;  Fixup - byte match
		push	bp
		aaa				; Ascii adjust
		add	[bx-44h],cx
		db	 70h,0FFh, 1Fh,0E3h,0E0h, 00h
		db	 1Dh,0DDh,0D4h,0D5h,0DDh, 5Dh
		db	0DDh, 5Dh, 35h, 00h, 37h, 00h
		db	 4Dh, 00h,0DDh,0D0h,0CDh,0D3h
		db	 08h, 88h,0AAh,0A2h, 28h, 88h
		db	 8Ah,0A2h,0A8h, 2Ah, 27h, 00h
		db	 2Ah, 8Ah, 27h, 1Ch, 8Ah, 27h
		db	 07h, 87h,0AFh, 38h, 7Fh,0FFh
		db	0D7h,0E0h, 08h, 2Ah, 27h, 0Ch
		db	0A0h,0CDh,0D3h, 05h, 45h, 11h
		db	 14h, 29h, 04h, 54h, 29h, 05h
		db	 77h, 75h, 29h, 00h, 5Dh, 57h
		db	 29h, 0Ch,0D5h, 29h, 00h, 5Dh
		db	 29h, 00h,0D1h, 55h, 5Dh, 29h
		db	 00h, 5Dh,0D5h, 5Dh,0D5h,0DDh
		db	 47h,0EDh, 38h, 7Fh,0FFh,0DFh
		db	0E0h, 08h, 5Dh, 35h, 0Ch,0D0h
		db	0CDh,0D3h, 00h,0A0h, 02h,0A2h
		db	 0Ah,0A2h, 27h, 01h, 8Ah,0A2h
		db	 27h, 01h, 2Ah, 27h, 25h,0A7h
		db	0F6h,0CEh, 3Fh,0FFh,0DFh,0C0h
		db	 00h, 2Ah, 27h, 0Ch,0A0h,0CDh
		db	0D3h, 00h, 04h, 51h, 29h, 00h
		db	 45h, 29h, 01h, 69h, 00h, 29h
		db	 07h, 57h, 55h, 57h, 5Dh, 29h
		db	 0Ah, 4Dh, 00h, 35h, 00h, 29h
		db	 02h, 5Dh,0D5h,0DDh, 4Dh, 00h
		db	0D5h,0DDh, 5Dh, 35h, 00h,0D3h
		db	0F9h, 07h, 1Fh,0FFh,0DFh,0C0h
		db	 00h, 35h, 0Dh,0D0h,0CDh,0D3h
		db	 00h, 27h, 33h,0ABh,0FCh, 40h
		db	 8Fh, 33h, 00h,0C0h, 00h, 27h
		db	 0Dh,0A0h,0CDh,0D3h, 04h, 29h
		db	 06h, 51h, 29h, 13h, 4Dh, 00h
		db	 29h, 04h, 37h, 00h,0DDh,0D5h
		db	0DDh,0D5h,0DDh,0D5h, 55h,0DDh
		db	0D5h,0DDh,0D5h, 5Dh,0D5h,0D9h
		db	0FFh, 80h, 01h, 33h, 00h, 80h
		db	 40h, 55h, 35h, 0Ch,0D0h,0CDh
		db	0D3h, 02h,0A8h,0A2h, 8Ah, 27h
		db	 03h,0A8h, 27h, 2Ah,0B9h,0FFh
		db	0E0h, 32h, 03h, 2Ah, 27h, 0Ch
		db	0A0h,0CDh,0D3h, 05h, 29h, 08h
		db	 57h, 77h, 55h,0D5h, 29h, 09h
		db	0D5h, 55h, 37h, 00h, 55h,0D5h
		db	 29h, 05h,0DDh,0D5h, 35h, 00h
		db	0D5h, 35h, 02h, 5Dh, 35h, 01h
		db	 37h, 00h,0C0h,0FFh,0F8h, 20h
		db	 0Dh, 92h, 80h, 00h, 1Dh,0DDh
		db	0D5h, 35h, 02h, 5Dh, 35h, 04h
		db	 5Dh,0D0h,0CDh,0D3h, 0Ah, 27h
		db	 33h, 80h,0FFh,0F8h, 20h, 33h
		db	 00h, 80h, 00h, 0Ah, 27h, 0Ch
		db	0A0h,0CDh,0D3h, 05h, 55h,0D5h
		db	 29h, 0Eh, 7Dh, 5Dh,0F5h, 5Dh
		db	0F5h, 37h, 00h, 29h, 02h, 4Dh
		db	 00h, 55h, 4Dh, 02h, 55h, 37h
		db	 01h, 55h,0D5h, 55h,0DDh, 5Dh
		db	 35h, 06h, 80h, 7Fh,0FEh, 00h
		db	0FFh,0EFh,0C0h, 00h, 05h, 35h
		db	 00h, 55h, 35h, 00h,0D5h, 35h
		db	 03h, 5Dh, 35h, 00h, 50h,0CDh
		db	0D3h, 0Ah, 27h, 33h, 82h, 7Fh
		db	0F9h, 00h,0F9h,0FEh, 40h, 10h
		db	 02h, 27h, 0Ch,0A0h,0CDh,0D3h
		db	 05h, 29h, 12h,0D5h, 29h, 01h
		db	 5Dh,0DDh, 5Dh, 29h, 02h, 37h
		db	 00h, 55h,0DDh, 55h, 5Dh, 55h
		db	0D5h,0DDh, 5Dh,0D5h,0DDh,0D5h
		db	0DDh, 55h, 35h, 05h
data_681	db	5Dh			; Data table (indexed access)
		db	 3Fh,0FEh, 80h,0F8h,0FCh,0C0h
		db	 15h, 35h, 01h, 5Dh, 35h, 00h
		db	0D5h, 35h, 03h, 5Dh, 55h,0D5h
		db	 50h,0CDh,0D3h, 0Ah, 27h, 34h
		db	 3Fh,0F9h, 40h, 7Fh, 7Bh, 80h
		db	 12h, 27h, 0Dh,0A0h,0CDh,0D3h
		db	 05h, 29h, 08h, 5Dh, 29h, 0Ah
		db	0D5h, 55h,0DDh,0D5h, 5Dh, 29h
		db	 00h, 5Dh, 35h, 04h,0D5h, 55h
		db	0DDh,0D5h, 35h, 00h, 5Dh,0D5h
		db	 35h, 07h, 3Fh,0FEh, 80h, 7Fh
		db	0FFh, 00h, 15h, 35h, 04h,0D5h
		db	 5Dh,0DDh, 5Dh,0DDh, 37h, 00h
		db	 29h, 00h,0D0h,0CDh,0D3h, 0Ah
		db	 27h, 34h, 9Fh,0FEh, 80h, 3Fh
		db	0FFh, 00h, 12h, 27h, 0Dh,0A0h
		db	0CDh,0D3h, 05h, 29h, 02h,0DDh
		db	 37h, 00h, 29h, 05h,0DDh,0D5h
		db	 29h, 04h, 5Dh,0D5h, 5Dh, 29h
		db	 00h,0D5h, 55h,0D5h, 55h, 35h
		db	 00h,0D5h, 29h, 00h, 35h, 10h
		db	 9Fh,0F9h, 00h, 0Fh,0ECh, 20h
		db	 2Dh, 37h, 00h, 35h, 05h, 5Dh
		db	 35h, 00h,0D5h, 35h, 00h,0D0h
		db	0CDh, 33h, 00h,0DAh, 27h, 33h
		db	 9Fh,0F9h, 32h, 01h,0A0h, 2Ah
		db	 27h, 0Ch,0AFh,0FFh,0FDh, 27h
		db	 00h,0DDh,0D5h, 55h, 5Dh, 29h
		db	 00h, 4Dh, 00h, 29h, 00h, 5Dh
		db	 29h, 01h,0DDh, 5Dh, 55h,0DDh
		db	0D5h, 55h,0DDh, 29h, 01h,0DDh
		db	 29h, 00h, 35h, 06h,0D5h, 35h
		db	 10h,0CFh,0F6h, 32h, 00h, 23h
		db	0A0h, 2Dh,0DDh, 5Dh, 35h, 05h
		db	0D5h, 35h, 03h, 29h, 00h, 32h
		db	 00h,0D0h, 27h, 33h, 8Fh,0F6h
		db	 32h, 00h, 4Fh, 40h, 4Ah, 27h
		db	 0Ch,0ADh, 32h, 00h, 03h, 00h
		db	0D0h, 55h,0D5h, 55h,0D5h, 55h
		db	0D5h, 55h, 4Dh, 00h, 37h, 00h
		db	 5Dh,0D5h, 29h, 00h,0DDh, 5Dh
		db	0DDh,0D5h,0DDh,0D5h, 5Dh,0D5h
		db	 5Dh, 35h, 11h, 5Dh,0DDh,0D5h
		db	 35h, 00h, 37h, 00h, 35h, 01h
		db	0CFh,0F6h, 32h, 00h, 4Fh, 40h
		db	 5Dh, 35h, 09h,0D5h,0DDh, 5Dh
		db	0DDh, 00h,0C0h, 03h, 00h,0D0h
		db	 32h, 48h, 0Dh, 00h,0C0h, 03h
		db	 00h,0D0h, 32h, 48h, 0Dh, 00h
		db	0C0h, 03h,0FFh,0D3h, 33h, 48h
		db	0FDh, 3Fh,0C0h, 32h, 00h,0D0h
		db	 32h, 48h, 0Dh, 32h, 02h, 33h
		db	 49h,0FDh, 32h, 02h,0D5h, 29h
		db	 49h, 32h, 00h, 12h, 29h, 00h
		db	 00h, 00h, 00h,0DAh, 07h
		db	35 dup (0)
		db	 1Ch, 9Dh, 39h,0E4h, 03h,0E7h
		db	 0Fh, 5Eh, 7Bh, 80h, 07h,0CEh
		db	 18h,0BCh, 8Eh, 00h, 01h, 38h
		db	 21h,0E1h,0FCh, 00h, 01h, 60h
		db	 41h,0C2h, 78h, 00h, 01h,0E0h
		db	 81h, 9Fh,0F0h, 00h, 03h,0C4h
		db	 03h, 3Dh, 60h, 00h, 39h,0C8h
		db	 06h, 7Dh,0C0h, 00h, 7Fh, 90h
		db	 0Ch,0E3h, 80h, 00h, 03h, 20h
		db	 1Ah, 47h, 00h, 00h, 06h, 40h
		db	 37h, 8Fh,0F0h, 00h, 0Ch, 80h
		db	 6Fh, 1Fh, 10h, 00h, 19h, 00h
		db	0EFh, 3Eh, 20h, 00h,0F2h, 01h
		db	0FEh, 7Ah, 40h, 00h,0E4h, 03h
		db	0E4h,0FDh, 00h, 02h,0C8h, 07h
		db	0CFh,0D0h, 80h, 13h, 90h, 0Dh
		db	0BFh, 89h, 80h, 23h, 27h, 31h
		db	 5Fh, 1Dh, 80h, 4Eh, 4Fh, 62h
		db	0BEh, 3Fh, 00h, 8Ch, 86h,0C1h
		db	0FCh,0BCh, 01h, 99h, 01h, 81h
		db	0F9h,0FFh, 03h, 32h, 03h, 03h
		db	0FBh,0FEh, 86h, 64h, 02h, 07h
		db	0F7h,0B7h, 8Ch,0C8h, 04h, 0Fh
		db	0F9h, 7Fh,0B9h, 98h, 08h, 1Fh
		db	0BEh,0FFh,0F3h, 30h, 10h, 1Fh
		db	 6Fh, 95h,0F2h, 78h, 2Dh, 9Fh
		db	0F7h,0FFh,0E8h,0F0h, 5Fh, 18h
		db	0FFh,0CFh,0D9h,0E0h,0BEh, 37h
		db	0FFh,0CFh,0F3h,0C1h, 10h, 63h
		db	0BFh, 7Eh, 64h, 02h, 38h,0CFh
		db	0FEh, 7Ch,0C8h, 04h, 71h,0C9h
		db	0F8h,0BFh, 90h, 08h,0EFh,0F7h
		db	0F0h,0F3h, 31h, 11h,0DAh,0F3h
		db	0D1h,0FCh, 1Fh, 23h,0FFh,0FFh
		db	0B7h,0ECh, 6Eh, 47h,0FCh,0FFh
		db	 47h,0D8h, 7Eh,0DFh,0F7h,0FEh
		db	0EDh,0B0h,0FDh, 8Fh,0EFh, 7Dh
		db	0DBh, 61h,0DFh, 7Fh,0DEh,0FFh
		db	0F6h,0C0h, 4Ch, 7Fh,0BBh,0FFh
		db	 4Fh, 81h,0D8h, 7Fh, 79h,0DFh
		db	 9Fh, 03h,0A0h,0DEh,0E3h,0BFh
		db	0EEh, 03h, 03h,0BDh,0E7h, 7Fh
		db	0FCh, 02h, 07h, 7Bh,0CEh,0FFh
		db	0D8h, 06h, 0Eh,0F7h, 9Fh,0FFh
		db	 70h, 04h, 1Dh,0E7h, 3Fh,0FFh
		db	0A4h, 09h,0B3h,0CFh, 7Fh,0FFh
		db	 8Ch, 06h, 63h,0FFh,0FFh,0EEh
		db	 98h
data_683	dw	600h
		db	 9Fh,0FFh,0DEh, 38h, 1Ch, 0Ch
		db	0FFh,0FFh,0AEh, 50h, 14h, 19h
		db	 3Fh,0EEh, 4Ch,0A0h, 78h, 63h
		db	0FFh,0CCh,0D9h, 40h,0B6h,0C2h
		db	0FFh,0B9h,0B2h, 81h,0EDh, 87h
		db	0D6h, 63h,0E7h, 02h, 9Ch, 03h
		db	0FCh,0C7h,0CCh, 07h, 38h, 06h
		db	0F9h, 87h, 18h
		db	0Ah
data_684	db	70h			; Data table (indexed access)
		db	 3Dh,0F0h, 0Fh, 30h, 18h,0E0h
		db	 7Bh,0F0h, 1Eh, 61h,0B1h, 61h
		db	 77h,0E0h, 3Ch,0C3h,0E1h, 01h
		db	0EBh,0D4h, 59h, 86h,0E1h, 40h
		db	0F7h,0F1h,0B3h, 0Dh,0C7h, 81h
		db	 6Fh,0FBh, 66h, 18h, 86h,0C2h
		db	0DFh,0C6h,0C8h, 71h, 00h,0CDh
loc_318:
		mov	di,90FDh
		db	0F2h, 21h, 9Bh, 7Eh,0BBh, 03h
		db	0E4h, 23h, 46h, 75h,0F6h, 07h
		db	0A8h

locloop_319:
		inc	si
		pushf				; Push flags
		jmp	short loc_318
sub_83		endp

			                        ;* No entry point to code
;*		pop	cs			; Dangerous-8088 only
		db	0Fh			;  Fixup - byte match
		push	ax
		lds	di,dword ptr [bx+di]	; Load seg:offset ptr
		xlat				; al=[al+[bx]] table
		pop	ax
		aaa				; Ascii adjust
		mov	ax,word ptr ds:[738Ah]
		out	dx,ax			; port 0, DMA-1 bas&add ch 0
		loopnz	locloop_319		; Loop if zf=0, cx>0

		inc	bx
		adc	ax,0DFE7h
		loopz	$-9			; Loop if zf=1, cx>0

		db	0C6h, 0Bh,0DFh,0BEh,0C7h,0F9h
		db	 8Ch, 1Fh,0BFh, 65h, 8Eh,0F7h
		db	 18h, 3Dh, 7Eh,0CBh, 3Dh,0EEh
		db	 00h, 7Ah,0FDh,0B6h, 7Bh, 9Ch
		db	 00h,0F5h,0FBh, 6Ch,0F4h,0B8h
		db	 03h,0EBh,0F6h,0D9h, 6Dh, 70h
		db	 05h,0D7h,0EDh,0B2h,0DEh,0E0h
		db	 0Fh,0AFh,0DBh,0E5h,0F8h,0C0h
		db	 1Fh, 5Fh,0B5h, 8Bh,0F1h, 80h
		db	 3Eh,0BFh, 0Fh, 95h,0C3h, 00h
		db	 7Dh, 7Ch, 1Ah, 2Ah, 46h, 01h
		db	0F1h,0F8h, 3Eh, 7Dh, 8Ch, 03h
		db	0C2h,0F5h, 48h,0EAh, 18h, 07h
		db	 85h,0F7h,0A9h,0FCh, 30h, 1Fh
		db	 0Bh,0C7h, 73h,0D8h, 00h, 3Eh
		db	 17h, 87h,0E7h,0B0h, 40h, 78h
		db	 36h, 0Ch, 8Fh, 60h,0C1h, 78h
		db	 60h,0FEh, 9Bh,0C1h,0C2h,0E1h
		db	0C3h,0FEh, 37h,0C2h, 87h,0E7h
		db	 8Dh,0FEh, 77h, 85h, 8Fh, 8Fh
		db	 93h, 78h,0FBh, 09h, 3Fh, 9Fh
		db	 36h,0F9h, 72h, 01h, 7Eh, 3Eh
		db	0EFh,0E0h, 44h, 23h, 6Ch, 7Dh
		db	0BFh,0C6h, 08h, 43h,0C0h,0FFh
		db	0DEh,0CBh, 90h, 01h, 83h,0FFh
		db	0BBh, 93h,0E1h, 0Fh, 07h,0FFh
		db	0FFh, 2Eh, 42h, 3Eh, 0Fh,0FFh
		db	0FEh, 26h, 80h, 6Ch, 1Fh,0FFh
		db	0F8h, 41h, 00h, 98h, 3Fh,0FFh
		db	0F0h, 42h, 03h, 30h, 7Fh,0FFh
		db	0E0h, 84h, 06h, 61h,0FBh,0FBh
		db	0C0h
		db	35 dup (0)
		db	 80h, 00h, 00h, 00h, 00h, 21h
		db	 00h, 00h, 00h, 00h, 00h, 42h
		db	 00h, 00h, 00h, 00h, 01h, 94h
		db	 00h, 00h, 00h, 00h, 01h,0B8h
		db	 00h, 00h, 00h, 00h
loc_320:
		pop	es
		jo	$+2			; delay for I/O
		add	[bx+si],al
		add	byte ptr ds:[7CFAh],cl
		test	byte ptr [bx+si],0
		sbb	ax,0F9EDh
		cld				; Clear direction
		add	[bx+si],al
		pop	dx
		jcxz	$-0Ch			; Jump if cx=0
		cmp	[bx+si],al
		add	byte ptr ds:[505h][di],cl
		jo	$+2			; delay for I/O
;*		add	ax,bx
		db	 01h,0D8h		;  Fixup - byte match
		push	es
;*		or	ax,sp
		db	 09h,0E0h		;  Fixup - byte match
		add	[bx],al
		clc				; Clear carry flag
		add	al,1Bh
		db	0C0h, 00h, 0Eh,0F0h, 08h,0D5h
		db	 80h, 00h,0EFh,0E0h
loc_321:
;*		adc	bx,si
		db	 11h,0F3h		;  Fixup - byte match
		add	[bx+di],al
;*		db	0DFh,0C0h, 33h, 86h, 00h, 00h
		db	0DFh,0C0h, 33h, 86h, 00h, 00h	;  Fixup - byte match
		db	 1Fh, 80h, 63h, 1Ch, 00h, 00h
		db	 2Fh, 00h,0DEh, 38h, 00h, 00h
		db	0DEh, 01h,0BCh, 70h, 00h, 00h
		db	 7Ch, 03h, 78h,0E0h, 00h, 03h
		db	 78h, 06h,0E9h,0C0h, 00h, 07h
		db	0F0h
		db	0Dh
loc_322:
		db	0F3h, 80h, 00h, 09h,0E0h, 1Fh
		db	0E7h, 00h, 00h, 0Bh,0C0h, 3Dh
		db	0FEh, 00h, 00h, 07h, 80h, 7Eh
		db	0F8h, 60h, 00h, 6Fh, 00h,0D9h
		db	0F0h,0E0h, 02h,0DEh, 01h, 93h
		db	0E3h,0C0h, 04h, 3Ch, 03h,0FFh
		db	0C7h, 20h, 08h, 78h, 07h,0F7h
		db	0AEh,0F8h, 10h,0F0h, 0Fh, 7Fh
		db	 5Dh,0F0h, 21h,0E0h, 1Eh,0EFh
		db	0FDh,0E0h, 43h,0C0h, 35h,0FEh
		db	0FDh,0DCh, 87h, 80h, 75h,0FDh
		db	0BBh,0D9h, 8Fh, 00h, 7Fh,0FFh
		db	0F7h,0FFh, 1Eh, 01h, 7Fh,0E7h
		db	0EFh, 3Eh, 3Ch, 02h,0EFh,0DFh
		db	0FFh, 3Eh, 78h, 05h,0DFh, 8Eh
		db	0BDh,0BCh,0F0h, 0Fh,0BFh, 3Dh
		db	 79h,0F9h,0E0h, 1Fh, 7Eh, 3Bh
		db	0E2h,0FBh,0C0h, 1Eh,0FCh,0C5h
		db	0C3h,0CFh, 80h, 7Dh,0E8h, 0Bh
		db	 46h,0BFh, 30h, 7Bh,0E3h, 06h
		db	0DDh, 3Eh, 60h,0C7h,0EEh, 0Dh
		db	 13h, 7Ch, 61h,0EFh,0FCh, 1Bh
		db	0A4h,0F8h, 43h,0FFh,0F0h, 37h
		db	 69h,0F8h, 07h,0FFh,0A0h, 7Fh
		db	 91h,0F8h, 0Eh,0FFh,0E0h,0DDh
		db	 23h,0D8h, 3Eh,0FBh,0C1h,0BEh
		db	 47h, 98h, 7Dh,0FFh, 83h, 7Fh
		db	 8Fh, 31h,0FBh,0DBh, 1Fh,0FFh
		db	 1Eh, 33h, 47h,0F6h, 3Eh,0FCh
		db	 3Ch, 37h, 8Fh,0E6h, 7Fh,0F8h
		db	 79h,0EDh, 9Eh,0E6h,0FFh,0F0h
		db	0F3h,0FBh, 7Fh, 2Dh,0B9h,0FDh
		db	0EFh,0E6h,0FFh, 17h, 63h,0A3h
		db	0DEh,0D0h,0E6h, 2Eh,0C7h, 77h
		db	0BFh,0C9h,0FCh, 6Fh, 8Eh, 8Fh
		db	 7Eh, 93h, 34h,0FFh, 19h, 1Eh
		db	0FDh
		db	6Fh
loc_323:
		jns	loc_323			; Jump if not sign
		xor	bh,[di]
		cli				; Disable interrupts
		db	0D6h, 73h,0FCh, 64h,0FBh,0FDh
		db	0ACh,0EFh, 78h, 8Eh,0F7h,0F3h
		db	0DEh,0FFh,0F1h, 1Fh,0EFh,0C7h
		db	0B7h,0BBh,0A2h, 3Fh,0DEh, 8Fh
		db	 5Fh,0F7h, 58h, 3Fh,0FDh, 1Fh
		db	0BEh, 6Eh,0F0h
loc_324:
		jg	loc_324			; Jump if >
		sub	al,7Dh			; '}'
;*		db	0DDh,0E0h,0FFh,0FCh, 6Eh,0F9h
		db	0DDh,0E0h,0FFh,0FCh, 6Eh,0F9h	;  Fixup - byte match
		db	0BBh, 51h, 7Fh,0F9h,0EDh,0F3h
		db	0F7h,0E4h, 7Fh,0F3h, 72h, 65h
		db	0EFh,0EDh,0FFh,0F7h, 7Fh,0FBh
		db	0DFh, 99h,0FFh,0FCh,0D7h,0F7h
		db	0AFh,0F3h,0FFh,0FDh, 7Bh, 6Fh
		db	 5Eh,0E7h,0FFh,0B2h,0B7h, 1Eh
		db	 8Fh, 8Fh,0BEh,0F4h,0AEh, 7Fh
		db	 1Fh, 1Fh,0BDh,0E5h, 5Ch,0FDh
		db	 98h, 3Fh,0DFh
loc_325:
		sar	byte ptr ds:[0B6F8h][bx+di],cl	; Shift w/sign fill
		jg	$-3Fh			; Jump if >
		xchg	sp,ax
		div	bx			; ax,dx rem=dx:ax/reg
		db	 7Ch,0FFh,0DFh, 29h,0EFh,0E4h
		db	0F9h,0FFh,0FEh, 53h,0FFh,0C5h
		db	 93h,0FBh,0FCh,0A3h,0F7h, 8Bh
		db	 27h,0F7h,0F9h, 47h,0EDh, 16h
		db	0CFh,0EFh,0F2h, 8Fh,0DAh, 2Dh
		db	 9Fh,0D3h,0E3h, 1Fh,0B4h
		db	5Ah
loc_326:
		cmp	ax,0C6B6h
		aaa				; Ascii adjust
		db	 6Ch,0B4h, 7Bh, 7Fh, 86h, 7Eh
		db	0F1h, 68h,0F7h,0FFh, 00h,0FDh
		db	 72h,0D1h,0EFh,0FEh, 19h,0FBh
		db	0E5h, 23h,0D7h, 3Ch, 33h,0F7h
		db	0D2h, 47h,0A9h, 78h, 67h,0C7h
		db	0A2h, 8Fh,0F7h,0F0h,0DFh, 0Fh
		db	 45h, 1Fh,0ACh,0E1h,0BEh, 1Eh
		db	0AEh
		db	3Fh

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_87		proc	near
		stc				; Set carry flag
		jcxz	loc_327			; Jump if cx=0
		xor	ax,7F8Ch
		jnc	loc_326			; Jump if carry=0
		clc				; Clear carry flag
		jle	loc_325			; Jump if < or =
		db	0FEh,0E3h,0A1h,0E0h,0FFh, 31h
		db	0FDh, 06h, 1Dh,0E3h,0F7h,0FBh
		db	0EEh, 0Ch, 7Bh, 85h,0F1h,0F7h
		db	0DCh, 1Dh,0FFh, 9Bh,0E3h,0EFh
		db	0D0h, 73h,0F6h, 27h, 85h,0DFh
		db	0C0h,0F3h,0EEh, 4Bh, 8Bh,0FDh
		db	 81h,0F7h,0F8h, 8Fh, 7Fh,0F8h
		db	 03h, 97h,0B3h, 17h,0FFh,0FAh
		db	 03h,0A7h, 06h, 2Bh,0FFh,0EEh
		db	 0Fh, 26h, 08h, 75h,0FFh,0FFh
		db	0BEh, 7Ch, 10h, 67h,0FFh,0BBh
		db	 7Dh,0F8h, 20h,0CFh,0FEh, 9Ah
		db	0FFh,0B0h, 41h, 9Fh,0EDh, 65h
		db	0BEh, 60h, 83h, 3Eh,0D3h, 09h
		db	0FCh,0C1h, 0Eh, 7Dh, 9Eh, 32h
		db	0F9h, 86h, 2Ch, 6Bh,0B8h, 00h
		db	 00h, 00h, 00h, 07h, 70h, 00h
		db	 00h, 00h, 00h, 0Eh,0A0h, 00h
		db	 00h, 00h, 00h, 0Ch, 40h, 00h
		db	 00h, 00h
loc_327:
		add	[bx+si],dh
		add	byte ptr [bx+si],0
		add	[bx+si],al
		and	[bx+si],ax
		db	 00h, 00h, 00h, 00h, 42h, 00h
		db	 00h, 00h, 00h, 00h, 84h, 00h
		db	 00h, 00h, 00h, 01h, 08h, 00h
		db	 00h, 00h, 00h, 06h, 50h, 00h
		db	 00h, 00h, 00h, 06h,0E0h, 00h
		db	 00h, 00h, 00h, 1Dh,0C0h, 00h
		db	 00h, 00h, 00h, 3Bh,0C4h,0CEh
		db	 1Eh, 66h,0E9h, 37h, 8Fh, 98h
		db	 7Fh,0FFh, 9Ch, 6Bh,0EBh,0B8h
		db	 64h, 53h,0F0h, 36h, 77h,0E0h
		db	0C1h, 7Fh, 19h, 64h, 7Fh,0C1h
		db	0FEh,0F0h, 07h,0EEh, 5Fh,0C7h
		db	 6Bh,0F8h, 0Fh,0FFh,0FBh,0DFh
		db	 9Ah,0EEh, 0Fh, 80h, 7Fh,0FCh
		db	 24h,0DFh, 1Fh,0FDh,0FEh, 3Eh
		db	0F0h, 37h,0BFh,0F9h,0EFh,0FFh
		db	0E9h, 8Fh,0FEh,0C7h,0FFh,0FEh
		db	0FDh,0FFh,0FCh,0BFh,0FFh,0F0h
		db	0BFh,0F8h,0FFh,0FEh, 7Bh,0A0h
		db	 2Bh,0CBh,0FFh, 1Dh,0F7h, 87h
		db	0FFh,0F7h,0E0h,0FAh,0FFh, 0Eh
		db	 9Fh,0FFh,0E7h,0F5h,0FDh, 03h
		db	 0Eh, 6Fh,0FFh,0DBh,0FFh, 07h
		db	0FFh,0BFh,0EDh,0B7h,0FCh,0DFh
		db	 25h,0BDh,0C7h, 6Bh,0F3h,0FFh
		db	0FFh,0FEh,0FEh, 1Fh,0C2h, 6Fh
		db	0D8h,0FEh,0BCh, 1Fh, 97h,0FFh
		db	0BFh,0FEh, 78h, 3Fh, 0Fh,0FDh
		db	0FFh,0FFh,0F0h, 7Eh, 1Fh, 6Fh
		db	0DFh,0DFh, 63h,0FEh, 1Eh,0FFh
		db	0FFh, 5Fh,0C1h,0FCh, 3Ch,0FFh
		db	 3Fh,0E7h, 85h,0F8h, 79h, 7Fh
		db	 3Dh,0FBh,0DDh,0E1h, 73h,0FEh
		db	0FFh,0FDh,0FBh,0F0h,0E4h

locloop_328:
		std				; Set direction flag
		db	0FFh,0FBh,0F7h,0FFh,0DCh,0FFh
		db	0E1h,0F7h, 4Fh,0FFh,0F7h,0E7h
		db	0FFh,0FFh, 9Fh, 6Fh,0E7h,0CFh
		db	0FEh,0FFh, 3Fh,0FFh, 8Bh,0DFh
		db	0FFh,0BAh,0FFh,0FFh, 0Fh,0FFh
		db	 1Fh,0F5h,0AEh, 7Dh, 1Fh,0FDh
		db	0FBh,0EFh,0FFh, 7Bh, 7Fh,0FBh
		db	0BFh, 9Fh,0EAh,0F4h, 7Fh,0F3h
		db	0BFh,0BFh,0F3h,0EEh,0D7h,0E1h
		db	 6Eh,0FFh,0FFh,0DDh,0BFh,0E0h
		db	 9Fh,0FFh,0FFh,0FFh, 7Fh,0E0h
		db	0D7h,0FFh,0FFh,0F4h,0FFh, 61h
		db	0FBh,0FFh,0FDh,0F9h, 7Eh, 63h
		db	0FDh,0FFh,0BBh,0FFh,0FCh,0C7h
		db	0EBh,0FEh
loc_329:
		ja	loc_329			; Jump if above
		clc				; Clear carry flag
		int	57h			; ??INT Non-standard interrupt
		cld				; Clear direction
		out	dx,ax			; port 0, DMA-1 bas&add ch 0
		std				; Set direction flag
;*                         lock	fisubr	word ptr ds:[0FFD9h][bx]	; st = memory - st
		db	0F0h,0DEh,0AFh,0D9h,0FFh	;  Fixup - byte match
		mul	cx			; dx:ax = reg * ax
		mov	ch,5Fh			; '_'
		sar	di,cl			; Shift w/sign fill
		db	0F3h,0C1h,0FFh, 3Ch,0A7h,0FFh
		db	0EFh,0C3h,0FEh, 3Ch, 6Fh,0FEh
		db	0EFh, 83h, 40h, 68h,0FFh,0FDh
		db	 7Fh, 85h,0E0h,0F9h,0FFh,0FAh
		db	0FFh, 0Bh, 49h,0D3h,0FEh,0E4h
		db	0FEh, 17h,0BFh,0E7h,0FCh,0CDh
		db	0F4h, 2Bh, 5Dh,0EFh,0FBh, 9Bh
		db	0F8h, 7Eh,0FBh,0FDh,0E6h, 37h
		db	0E0h,0B9h, 62h,0FFh,0CCh, 6Fh
		db	0C1h, 7Fh,0C6h, 6Bh, 98h, 5Fh
		db	 82h,0FDh,0CFh,0D7h, 00h,0BFh
		db	 05h,0DEh, 57h,0AFh, 01h,0FEh
		db	 1Bh, 15h, 2Fh, 5Eh, 03h,0FCh
		db	 37h, 3Bh, 66h,0BDh, 47h,0F8h
		db	 6Eh, 36h, 4Fh,0FFh, 1Fh,0F0h
		db	0D8h, 49h, 16h,0FFh,0BFh,0E1h
		db	0D1h,0EDh,0EDh,0FCh, 7Fh, 87h
		db	0E1h, 1Dh,0DBh,0BFh,0DFh, 0Fh
		db	 83h, 39h,0B7h, 6Bh,0FEh, 3Eh
		db	 06h, 34h, 67h, 5Fh,0BCh, 7Ah
		db	 0Eh, 79h,0CEh,0BFh,0FEh,0F4h
		db	 1Ch,0D3h, 9Dh, 74h,0FFh, 78h
		db	 19h,0E7h, 3Eh,0FFh,0FEh,0F0h
loc_330:
		xor	[bp+7Dh],bx
		db	0FFh,0FFh, 40h, 63h,0BDh,0FBh
		db	0EFh,0FFh, 80h,0C5h,0FBh,0F6h
		db	 4Fh,0EFh, 01h, 8Bh,0D7h,0ECh
		db	0BFh,0DEh, 03h, 07h,0AFh,0DBh
		db	 3Fh,0B8h, 02h, 0Fh, 5Fh,0B7h
		db	0FFh, 48h, 04h, 3Eh,0BFh, 6Dh
		db	0F6h,0D3h, 0Ch, 5Dh, 7Eh,0D3h
		db	0EDh
loc_331:
		loopnz	$+1Ah			; Loop if zf=0, cx>0

		cli				; Disable interrupts
		std				; Set direction flag
		mov	di,8CDFh
;*		add	bp,si
		db	 01h,0F5h		;  Fixup - byte match
		sti				; Enable interrupts
		pop	di
		mov	di,300h
		jmp	short loc_331
sub_87		endp

			                        ;* No entry point to code
;*		fistp	word ptr [si+0]		; Pop st to memory
		db	0DFh, 5Ch, 00h		;  Fixup - byte match
		db	 07h,0D7h,0C1h, 7Eh,0A4h, 40h
		db	 1Fh, 1Fh, 83h, 7Fh,0D8h, 00h
		db	 3Ch, 2Fh, 57h,0FEh,0A0h, 00h
		db	 78h, 5Fh, 7Ah,0FFh,0C0h, 01h
		db	0F0h,0BCh, 77h,0FDh, 80h, 03h
		db	0E1h, 78h, 73h,0FBh, 00h, 07h
		db	 83h, 60h,0CFh,0F6h, 08h, 17h
		db	 86h, 0Fh,0CFh,0BCh, 10h, 2Eh
		db	 1Ch, 3Fh,0BFh, 7Ch, 20h, 7Eh
		db	 78h,0DFh, 7Fh, 78h, 00h,0F8h
		db	0F9h, 37h,0FFh,0B0h, 03h,0F9h
		db	0F3h, 6Ch,0F7h, 20h, 07h,0E3h
		db	0EEh,0FBh,0E4h,0C0h, 06h,0C7h
		db	0DBh,0FBh,0C0h, 80h, 0Ch, 0Fh
		db	0FDh,0EFh, 81h, 00h, 18h, 3Fh
		db	0FBh,0DFh, 02h, 00h,0F0h, 7Fh
		db	0FFh,0FEh, 04h, 03h,0E0h,0FFh
		db	0FFh,0FAh, 08h, 06h,0C1h,0FFh
		db	0FFh, 34h, 10h, 09h, 83h,0FFh
		db	0FFh, 4Ch, 20h, 33h, 07h,0FFh
		db	0FAh, 78h, 40h, 66h, 1Fh,0BFh
		db	0BEh,0E0h, 00h, 00h, 00h, 00h
data_687	db	1Dh
		db	0C0h, 00h, 00h, 00h, 00h, 3Ah
		db	 80h, 00h, 00h, 00h, 00h, 31h
		db	 00h, 00h, 00h
		db	 00h, 00h,0C2h, 00h, 00h, 00h
		db	 00h, 00h, 84h, 00h, 00h, 00h
		db	 00h, 01h, 00h, 0Eh, 40h, 80h
		db	 04h, 04h, 08h, 80h, 04h, 04h
		db	 05h, 01h, 07h,0BEh, 02h, 02h
		db	 02h, 08h, 0Ah,0A0h, 0Ah,0A2h
		db	 01h, 82h, 80h, 6Ah,0AAh,0A0h
		db	0A0h, 0Ah,0B8h, 6Ah,0AAh,0A0h
		db	 0Ah,0AAh, 0Ah, 0Ah, 0Fh, 3Dh
		db	 40h, 05h, 54h, 55h, 55h, 10h
		db	0ABh, 82h, 80h, 80h, 04h, 40h
		db	 08h, 84h, 10h, 40h, 40h, 15h
		db	 1Eh, 3Ch, 28h, 04h, 11h, 80h
		db	0C0h, 02h,0AAh,0B0h,0C0h, 2Ah
		db	0AAh, 82h,0AAh,0AAh,0BCh, 78h
		db	 05h, 28h, 2Bh,0C0h, 40h, 20h
		db	0C0h, 10h, 01h, 40h, 2Ch, 78h
		db	 10h, 50h, 1Bh, 80h,0C0h, 30h
		db	0C0h, 18h, 06h, 0Ah, 0Ah,0AAh
		db	0AAh, 0Ah,0D8h, 78h, 0Ah,0AAh
		db	0B5h, 80h, 0Ch, 30h,0C0h, 30h
		db	0BFh, 80h, 10h, 40h,0F0h,0F0h
		db	 01h, 01h, 45h, 01h, 29h, 80h
		db	 0Ch, 60h,0C0h, 30h, 02h, 40h
		db	 02h,0A8h, 01h,0E0h,0F0h, 02h
		db	0A8h, 2Ah,0AAh, 80h, 28h, 0Bh
		db	 80h, 0Ch, 60h, 60h, 30h, 01h
		db	 20h, 03h,0CAh,0F0h, 01h, 80h
		db	 0Ch,0C0h, 60h, 06h, 90h, 07h
		db	 98h, 18h, 01h, 80h, 0Ch,0C0h
		db	 60h, 0Ch, 2Fh, 80h, 18h, 0Fh
		db	 30h, 18h, 0Ah, 28h, 88h,0A2h
		db	0A2h, 01h, 80h, 0Ch,0C0h, 60h
		db	0C0h, 01h, 40h,0A3h, 1Eh, 30h
		db	0B9h, 51h, 40h, 10h, 29h, 80h
		db	 0Ch,0C0h, 60h, 06h,0D8h,0A0h
		db	 0Ah, 60h, 3Ch, 61h,0F0h, 20h
		db	 08h, 08h, 51h, 40h, 01h, 80h
		db	 0Ch,0C0h, 60h, 18h, 01h, 86h
		db	 50h, 03h, 78h, 3Ch,0C3h, 6Ch
		db	 40h, 50h, 04h, 82h, 0Bh, 80h
		db	 0Ch,0C0h, 60h, 30h, 03h, 03h
		db	 74h,0F0h,0C6h,0F0h, 8Ah,0A0h
		db	 0Ah, 80h, 50h, 01h, 80h, 0Ch
		db	0C0h, 60h, 60h, 03h,0A3h, 11h
		db	 30h, 0Ch, 61h, 98h,0F0h, 04h
		db	 01h, 05h, 28h, 01h, 80h, 0Ch
		db	0C0h, 33h, 02h,0A7h, 28h, 0Ah
		db	 0Ch, 30h,0C3h, 31h,0E0h, 80h
		db	 02h,0A0h, 0Fh, 01h, 80h, 0Ch
		db	 11h, 15h, 01h, 01h, 80h, 14h
		db	 3Ch, 03h,0C0h,0C6h, 63h,0C0h
		db	0A0h, 69h, 40h, 28h, 40h, 0Fh
		db	 28h, 01h, 80h, 0Ch, 0Ah, 22h
		db	 80h, 02h, 02h, 40h, 28h, 3Ch
		db	 14h, 01h, 98h,0C7h, 80h, 11h
		db	 81h, 42h, 82h,0ECh, 80h, 11h
		db	 01h, 80h, 0Ch, 10h, 04h, 01h
		db	 20h, 3Ch,0F0h, 27h, 03h, 61h
		db	 86h,0C0h, 0Ah,0A6h,0D4h, 10h
		db	 97h, 3Bh, 80h, 01h, 80h, 0Ch
		db	 08h,0E0h,0D8h, 05h, 06h,0C3h
		db	 0Ch,0C0h, 15h, 55h, 40h, 80h
		db	 88h, 66h, 80h, 02h, 80h
		db	75h
data_688	dw	180h
		db	 80h, 0Ch, 10h, 20h,0D8h, 07h
		db	 8Dh, 83h, 18h,0C0h, 1Eh, 02h
		db	 28h, 81h, 01h, 0Bh, 93h, 40h
		db	 06h, 84h, 44h,0FDh, 80h, 01h
		db	 80h, 0Ch, 60h, 2Fh, 0Ah, 8Ah
		db	 06h, 30h,0C0h, 14h, 10h, 10h
		db	 44h, 22h,0E3h, 20h, 94h, 80h
		db	 20h, 20h,0FCh,0C0h, 01h, 80h
		db	 0Ch, 60h, 06h, 91h, 40h, 0Ch
		db	 65h,0F7h, 39h,0E8h, 88h, 3Bh
		db	0D5h, 70h, 08h, 0Ch, 10h, 12h
		db	 01h, 80h, 01h,0F8h,0C0h, 01h
		db	 80h, 04h, 08h, 60h, 01h, 68h
		db	 14h, 0Ch, 6Bh,0BCh, 15h, 55h
		db	 04h, 14h, 14h,0E2h,0EDh, 11h
		db	 55h,0A3h, 01h, 58h, 55h, 05h
		db	 03h,0DDh, 60h, 01h, 80h, 09h
		db	 50h, 60h, 01h, 4Ah, 19h,0BFh
		db	 0Fh, 20h, 28h, 02h,0A8h, 81h
		db	0C4h,0E2h, 0Eh, 26h, 19h, 83h
		db	0DCh, 64h, 40h, 80h, 0Eh,0A2h
		db	 28h,0A0h, 60h, 01h,0F4h, 07h
		db	0D0h, 0Ah, 14h, 7Eh, 02h, 80h
		db	 40h, 01h, 10h, 10h, 01h,0A2h
		db	 71h, 05h, 04h, 5Ch, 20h, 0Ch
		db	 21h,0D7h, 07h,0BEh, 46h, 80h
		db	 01h, 08h, 54h, 45h, 10h, 60h
		db	 06h, 56h, 0Ah, 1Bh,0CCh, 01h
		db	0B6h,0AAh, 80h, 2Ah, 2Ah, 8Bh
		db	0C4h, 68h,0AAh,0A0h, 43h, 60h
		db	0FCh, 19h,0BDh, 28h, 41h, 41h
		db	 80h, 06h, 0Ah, 02h, 80h, 30h
		db	 03h, 0Ch, 36h, 0Ch, 18h, 06h
		db	 66h, 14h, 44h, 04h, 55h, 10h
		db	 50h, 54h,0A8h, 35h, 10h, 16h
		db	 10h, 80h,0F7h, 13h, 6Dh, 30h
		db	 80h, 02h, 81h, 80h, 09h, 11h
		db	 04h, 40h, 30h, 77h, 0Dh,0FEh
		db	 02h,0A8h,0A0h,0A1h,0D0h, 1Fh
		db	0A0h,0A7h,0D2h, 04h, 02h, 66h
		db	 2Eh, 6Ch, 96h, 51h, 80h, 0Ch
		db	 18h, 36h, 03h, 60h, 18h, 36h
		db	 0Eh, 39h,0F7h,0CAh, 88h, 01h
		db	0A8h, 1Bh,0C6h, 06h, 50h, 20h
		db	 41h, 16h,0CCh,0EBh, 89h, 80h
		db	 0Ch, 0Ch, 0Fh, 0Dh, 52h, 60h
		db	 76h, 40h, 28h, 14h, 09h, 50h
		db	 0Dh, 81h, 20h, 04h, 2Dh, 8Ch
		db	0D5h, 22h, 80h, 10h, 80h, 0Ch
		db	 06h, 08h,0B5h, 56h, 14h, 01h
		db	 81h, 5Ch, 02h, 80h,0A5h,0BCh
		db	 02h,0A8h, 10h, 80h, 0Ch,0E0h
		db	 01h, 71h, 49h, 8Ch, 69h, 5Bh
		db	 80h, 0Ch, 0Ch,0C0h, 06h, 07h
		db	0F5h, 52h, 3Ch, 03h, 68h, 10h
		db	 18h,0C0h, 05h, 09h, 50h, 0Ch
		db	 70h, 20h, 32h,0B3h, 0Ch,0CBh
		db	 80h, 02h,0A1h, 31h, 41h,0CCh
		db	 81h, 80h, 03h, 09h, 50h, 56h
		db	 01h, 04h, 0Ah, 63h, 18h, 22h
		db	0C1h, 40h, 30h, 8Ah,0A0h, 0Ah
		db	0ABh,0A0h, 06h, 68h, 47h, 80h
		db	 03h,0D9h, 73h, 0Dh, 8Bh, 80h
		db	 01h, 80h, 5Bh, 02h, 2Dh, 24h
		db	 0Ch, 03h,0D5h, 54h, 12h, 02h
		db	 52h, 01h, 8Fh, 69h, 18h, 18h
		db	 44h, 05h, 40h, 07h, 50h, 06h
		db	 34h, 13h,0F6h, 66h, 07h, 8Bh
		db	0A8h, 01h, 80h, 25h, 40h, 15h
		db	 12h, 40h,0C0h, 01h, 80h, 02h
		db	 83h, 50h, 06h, 04h, 86h, 18h
		db	 29h,0B9h, 07h, 80h, 10h, 28h
		db	0AAh,0A0h, 04h,0A0h, 06h, 1Ah
		db	 26h, 6Fh,0C0h, 3Fh, 66h, 0Bh
		db	 80h, 01h, 80h, 05h, 41h, 83h
		db	 66h, 10h, 18h, 04h, 80h, 24h
		db	 0Ch, 09h, 06h,0FCh, 0Ch,0D2h
		db	 0Dh, 70h, 08h, 01h, 05h, 57h
		db	 10h, 06h, 0Dh, 46h, 36h,0F0h
		db	 37h,0E3h, 15h, 80h, 01h, 80h
		db	 01h, 48h, 80h,0B4h, 03h,0A2h
		db	 22h, 40h, 06h, 60h, 1Dh, 0Ch
		db	 04h, 8Dh, 8Ah, 7Bh, 44h, 10h
		db	 04h, 40h, 08h, 08h, 04h, 88h
		db	 03h, 06h, 80h, 86h, 33h,0CCh
		db	 01h,0ECh, 1Bh, 29h, 08h, 01h
		db	 80h, 28h, 90h, 30h, 10h,0BCh
		db	 0Ch, 08h, 53h, 80h, 19h, 98h
		db	 01h,0D1h,0B0h, 05h, 51h, 03h
		db	 01h, 03h, 01h, 80h, 06h, 3Bh
		db	0F7h,0F6h, 53h, 50h, 55h, 01h
		db	 80h, 0Bh, 05h, 40h, 30h,0C0h
		db	 95h, 0Ch, 04h, 2Dh, 80h,0C6h
		db	 18h, 05h, 12h, 6Ch,0A0h,0ACh
		db	 80h, 83h, 0Ch, 03h, 31h, 4Bh
		db	 80h, 7Bh,0A4h, 02h,0A0h, 01h
		db	 80h, 02h,0DFh, 14h, 0Fh,0D4h
		db	 0Ch, 8Bh, 0Ah, 3Ch, 18h, 0Dh
		db	 76h, 1Eh, 0Ch, 40h, 43h, 06h
		db	 01h,0BAh,0A5h, 60h, 6Dh,0ECh
		db	 01h, 59h, 01h, 01h, 80h, 17h
		db	 90h, 06h, 55h, 0Ch, 6Fh, 06h
		db	 18h, 18h, 12h, 07h, 2Dh, 80h
		db	 32h,0A0h, 23h, 30h, 23h, 15h
		db	 58h,0B0h, 36h,0F1h, 82h,0E8h
		db	 0Ah, 02h,0A1h, 80h, 99h, 0Dh
		db	 54h, 18h,0DBh, 17h,0E8h, 30h
		db	 35h, 01h,0B3h,0C0h, 64h, 44h
		db	 13h,0C1h, 04h,0AAh,0A4h, 58h
		db	 32h,0B0h, 30h, 95h, 10h, 44h
		db	 80h, 08h, 20h, 95h, 55h, 18h
		db	 79h, 9Fh,0E0h, 60h, 04h, 08h
		db	 83h,0B0h, 68h, 0Ah, 0Bh, 03h
		db	 02h, 53h, 79h, 58h,0A4h, 31h
		db	 70h, 0Dh, 80h, 08h, 09h, 80h
		db	 44h, 75h, 54h, 60h, 51h,0DCh
		db	 60h,0C0h,0D4h, 14h, 6Ch, 70h
		db	 05h, 07h, 0Ch, 03h, 0Eh,0E6h
		db	0BAh, 52h, 32h,0B0h, 03h,0C1h
		db	 55h, 05h, 80h, 0Fh, 0Ah, 40h
		db	 40h, 35h, 53h,0A0h,0ABh, 90h
		db	 80h, 40h,0A0h, 9Ah, 04h,0E0h
		db	 02h, 8Bh, 18h, 3Dh, 9Dh,0C3h
		db	 19h, 29h, 6Bh, 70h, 01h,0B0h
		db	 01h, 40h,0A3h, 0Ch, 60h, 1Dh
		db	 48h, 0Dh, 70h, 51h, 82h, 40h
		db	 35h, 55h, 55h, 05h, 07h, 80h
		db	 2Ah, 50h, 04h, 45h,0E0h,0D7h
		db	0DBh, 06h, 30h,0D0h, 18h,0B0h
		db	0D8h, 15h, 41h, 80h, 0Ch, 0Ch
		db	 18h, 0Ch, 10h, 0Ah, 0Bh, 30h
		db	 47h, 20h, 08h, 0Ah, 03h, 57h
		db	0ECh, 06h, 61h, 28h, 3Eh, 60h
		db	 6Ch, 02h, 72h, 01h, 0Ch, 01h
		db	 80h, 02h
		db	'"R``uUUC'
		db	0B8h, 0Ch, 40h, 10h, 05h, 07h
		db	 53h, 80h, 07h, 80h,0D0h, 76h
		db	0C0h, 36h, 14h, 01h, 80h, 0Ch
		db	 30h, 40h, 40h,0C1h, 80h, 04h
		db	 01h,0F6h, 1Ah,0A0h, 22h, 80h
		db	 1Dh, 57h, 80h, 01h, 28h,0EFh
		db	 1Bh, 01h, 80h, 0Ch, 30h, 01h
		db	0D5h,0F6h,0A0h, 03h, 03h, 03h
		db	 55h, 55h, 53h,0CDh,0E5h, 40h
		db	 46h,0C0h, 25h, 53h, 80h,0D1h
		db	0DEh, 0Dh, 80h, 01h, 80h, 0Ch
		db	 60h, 01h, 41h, 40h, 04h, 40h
		db	 24h, 06h, 40h, 05h, 83h, 22h
		db	 80h, 88h, 80h, 35h, 5Dh, 80h
		db	 01h,0A3h,0BCh, 06h, 60h, 0Bh
		db	 80h, 0Ch,0C0h, 05h,0D4h, 32h
		db	 80h, 08h, 52h, 0Ch,0C0h, 0Dh
		db	 57h, 72h,0C6h, 40h, 45h,0D5h
		db	 73h, 03h, 56h, 03h, 18h,0AAh
		db	 01h, 80h, 0Ch, 23h, 80h, 04h
		db	 10h, 04h, 08h,0C0h, 46h, 08h
		db	 80h, 0Ah, 88h, 81h,0D5h, 6Ch
		db	 0Ch,0B8h, 02h, 16h, 50h, 04h
		db	 80h, 0Dh, 07h, 1Dh, 52h, 40h
		db	 2Bh, 51h, 80h, 02h, 21h, 15h
		db	 06h, 60h,0D5h, 98h, 30h, 60h
		db	 0Dh,0AAh, 83h, 06h, 06h, 10h
		db	 40h, 10h, 21h, 80h,0C2h, 40h
		db	 08h, 88h, 02h, 08h, 23h, 55h
		db	0F0h, 04h, 10h, 15h, 80h, 09h
		db	 18h, 75h, 57h, 0Dh, 43h,0A0h
		db	 81h, 60h, 20h, 90h, 40h, 04h
		db	 42h, 55h, 80h, 60h, 07h, 20h
		db	0A1h, 80h, 04h, 10h, 02h, 80h
		db	 40h, 01h, 01h, 44h, 01h, 01h
		db	 42h, 02h, 20h, 2Ah, 02h, 83h
		db	 55h,0C0h, 0Ch, 0Dh, 81h, 14h
		db	 80h, 0Ch, 60h, 04h, 40h, 01h
		db	 75h, 5Ch, 1Eh, 80h, 80h, 88h
		db	 40h, 40h, 07h, 55h,0D2h, 67h
		db	 05h, 05h, 36h, 29h, 80h, 04h
		db	0E0h, 08h, 20h, 10h, 10h, 05h
		db	 04h, 10h, 05h, 80h, 0Ah, 2Ah
		db	 03h, 55h, 60h,0C9h,0C0h, 08h
		db	 80h, 03h, 0Ch, 01h, 80h, 08h
		db	 80h, 54h, 10h, 07h, 80h, 05h
		db	 07h, 55h, 55h, 80h, 0Bh, 05h
		db	 40h, 0Dh, 55h,0D0h, 49h,0A4h
		db	 06h,0C0h, 02h, 80h, 0Ch,0ACh
		db	 0Bh, 80h, 0Dh, 80h, 8Ah, 08h
		db	 05h, 38h, 40h, 25h, 80h,0B6h
		db	 0Ah, 20h, 09h, 54h, 08h, 08h
		db	 88h, 60h, 80h, 1Bh, 36h, 01h
		db	 80h, 0Fh, 15h, 05h, 04h, 05h
		db	 64h, 80h, 04h, 50h, 11h, 40h
		db	 07h, 55h,0C5h,0B0h, 02h,0C0h
		db	 80h, 02h, 80h, 51h, 74h,0B6h
		db	 01h, 80h, 0Ah, 2Ah, 02h, 80h
		db	 80h, 05h, 0Fh, 18h,0C0h, 20h
		db	0A0h, 22h, 20h, 03h, 55h, 42h
		db	 72h, 28h, 42h, 05h,0DCh, 20h
		db	 56h, 01h, 80h, 01h, 05h, 01h
		db	 10h, 98h, 05h,0F0h, 06h, 60h
		db	 01h, 11h, 40h,0D5h, 60h, 40h
		db	 18h, 02h, 80h, 68h, 2Dh, 8Ch
		db	 01h, 80h, 2Ah, 02h, 80h, 29h
		db	 30h, 0Fh, 66h, 01h, 2Ch, 02h
		db	 28h, 20h,0A0h, 95h, 40h, 08h
		db	 0Ch, 03h,0C0h, 32h, 99h, 98h
		db	 01h, 80h, 51h, 01h, 40h, 16h
		db	 18h, 0Fh, 30h,0C0h, 22h, 10h
		db	 50h, 4Bh, 40h, 75h, 57h, 80h
		db	 8Ch, 01h,0E0h, 18h, 30h, 01h
		db	 80h, 02h, 0Ah,0A0h, 1Ch,0C0h
		db	 30h, 0Fh, 30h, 60h, 14h, 20h
		db	0A0h, 94h,0A0h, 35h, 55h, 55h
		db	 55h,0D8h, 02h, 80h, 0Ch, 06h
		db	0F0h, 02h, 83h, 01h, 14h, 05h
		db	 44h, 21h, 98h,0C0h, 05h, 0Dh
		db	0D0h, 14h, 54h, 01h, 41h, 23h
		db	 40h, 75h, 55h, 55h, 52h,0C0h
		db	 04h, 40h, 03h, 18h,0F0h, 14h
		db	 01h, 80h, 08h, 28h, 02h, 80h
		db	 0Bh, 18h, 50h, 07h, 80h, 0Ch
		db	0B8h,0A8h, 02h
		db	'"DP(5UUV0'
		db	 02h, 20h, 01h,0E0h,0FAh, 01h
		db	 80h, 11h, 40h, 44h, 01h, 40h
		db	 04h,0C0h, 03h, 02h, 80h, 18h
		db	0E8h, 10h, 01h, 46h,0C4h, 8Ah
		db	 08h, 14h, 0Dh, 55h, 55h, 55h
		db	 40h, 04h, 40h,0F0h, 01h, 80h
		db	 82h, 20h, 28h,0A0h, 05h,0B0h
		db	 06h, 50h, 03h,0C0h, 01h, 40h
		db	 20h, 02h, 8Dh, 89h, 10h, 22h
		db	 09h, 55h, 55h, 55h, 50h, 02h
		db	 20h,0F0h, 01h, 80h, 01h, 01h
		db	 40h, 14h, 50h, 02h, 61h, 8Ch
		db	 78h, 02h, 80h, 40h, 05h, 10h
		db	 52h, 08h, 11h, 07h, 55h, 55h
		db	 55h, 54h, 03h,0C0h, 01h,0E0h
		db	 01h, 80h, 02h, 02h, 20h, 22h
		db	 3Ch, 10h, 03h, 28h, 0Bh, 40h
		db	 20h, 02h, 8Dh,0A4h, 04h, 0Ah
		db	 03h, 55h, 55h, 55h, 50h, 01h
		db	0E0h, 01h,0E0h, 01h, 80h, 01h
		db	 01h, 40h, 14h, 1Ch, 60h, 14h
		db	 1Dh,0C0h, 04h, 50h, 05h, 1Ah
		db	 52h, 08h, 11h, 02h, 55h, 55h
		db	 55h, 54h, 02h, 80h, 03h,0C0h
		db	 01h, 80h, 02h,0A0h, 0Ah, 09h
		db	 80h,0C0h, 0Ah, 1Dh,0C0h, 08h
		db	 02h,0A5h, 04h, 04h, 08h, 81h
		db	0D5h, 55h, 55h, 50h, 04h, 40h
		db	 07h, 80h, 01h, 80h, 01h, 50h
		db	 05h, 04h, 60h, 01h, 80h, 02h
		db	 89h,0C0h, 10h, 01h, 45h, 18h
		db	0D8h, 02h, 10h, 40h,0D5h, 55h
		db	 55h, 54h, 06h, 60h, 07h,0D1h
		db	 44h, 41h, 80h, 02h,0A0h, 02h
		db	 80h, 04h,0D8h, 06h, 0Eh,0E0h
		db	 20h, 02h, 88h,0A4h, 44h, 04h
		db	 08h, 80h, 95h, 55h, 55h, 50h
		db	 03h, 60h, 07h, 02h, 09h, 01h
		db	 50h, 01h, 40h, 08h, 1Bh, 0Ch
		db	 0Eh,0E0h, 40h, 11h, 15h, 58h
		db	 28h, 02h, 04h, 40h,0ADh, 55h
		db	 55h, 40h, 0Fh, 01h, 54h, 01h
		db	 80h, 02h, 28h,0B4h, 10h, 03h
		db	 04h,0E0h, 80h, 22h, 28h, 84h
		db	 14h, 01h, 02h, 20h, 35h, 55h
		db	 55h, 0Dh, 20h, 09h, 01h, 14h
		db	 58h,0C0h, 05h,0A0h, 0Bh, 14h
		db	 44h, 51h, 08h, 80h, 01h, 10h
		db	 25h, 55h, 54h, 5Eh, 04h, 45h
		db	 14h, 80h, 0Ah, 80h, 0Ah, 01h
		db	 6Ch, 01h, 80h, 05h,0A0h, 14h
		db	0A8h,0AAh,0A9h, 40h, 88h, 1Dh
		db	 55h, 55h, 60h, 03h, 33h, 21h
		db	 05h, 40h, 05h, 9Bh, 06h, 02h
		db	0D0h, 89h, 51h, 05h, 58h,0D0h
		db	 44h, 0Dh, 55h, 54h, 18h, 03h
		db	 03h, 30h, 62h, 14h, 80h, 0Ah
		db	 80h, 02h, 81h, 03h, 60h, 18h
		db	 02h,0D0h, 01h, 10h,0A8h,0DAh
		db	0B0h, 68h, 22h, 03h, 55h, 5Ch
		db	 84h, 36h, 64h, 02h, 29h, 80h
		db	 05h, 40h, 01h, 60h, 66h, 30h
		db	 10h, 11h
		db	51h

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_88		proc	near
		add	ax,3420h
		adc	al,7
		push	bp
		or	byte ptr [bp-9],50h	; 'P'
		adc	al,44h			; 'D'
		or	byte ptr [bx+si],0A0h
		add	ax,6B0h
		or	ch,[bx+si]
		sub	byte ptr [bp+si],0AAh
		pop	bx
;*		aam	80h			; undocumented inst
		db	0D4h, 80h		;  Fixup - byte match
		add	bx,[si+8]
		mov	es,[bx+di]
		add	al,50h			; 'P'
		or	[si+3],ch
		db	 63h, 28h, 50h, 04h, 54h, 11h
		db	0A0h, 80h, 56h, 40h, 10h, 40h
		db	 18h, 60h,0AEh,0C0h, 28h, 80h
		db	 08h, 2Ch, 19h, 80h, 19h, 83h
		db	 28h, 0Dh, 80h, 08h, 8Ah,0AAh
		db	 5Bh, 20h, 54h, 08h, 06h, 01h
		db	 08h, 30h, 03h, 03h, 3Eh, 41h
		db	 01h, 04h, 3Eh, 03h, 0Ch,0CCh
		db	 01h, 80h, 14h, 44h, 40h, 01h
		db	 16h, 91h, 88h, 80h, 05h, 55h
		db	 55h, 64h, 01h, 80h, 24h, 30h
		db	 01h, 83h, 04h, 88h, 14h, 80h
		db	 08h, 4Dh, 80h, 0Ch, 60h, 01h
		db	 80h, 14h, 01h, 40h, 80h, 02h
		db	 02h, 2Ah, 51h, 0Dh, 55h, 55h
		db	 40h, 80h, 06h, 18h, 30h, 60h
		db	 67h,0B4h, 01h, 0Ch, 03h, 30h
		db	 03h, 06h, 01h, 80h, 14h, 11h
		db	 01h, 50h, 54h,0A5h, 55h, 28h
		db	 80h, 05h, 55h, 55h, 5Ch, 10h
		db	 7Dh, 0Ch, 06h, 18h, 30h, 14h
		db	 20h, 28h, 80h, 0Ch,0C3h,0C1h
		db	 80h,0C0h,0F0h, 02h,0A0h,0A9h
		db	'UiP', 0Dh, 'UUT', 8
		db	 03h, 5Ch, 03h, 03h, 18h, 03h
		db	 50h,0A1h, 11h, 45h, 60h,0C0h
		db	 0Ah, 0Fh,0A0h
		db	'UR ', 8, 'UUUUa'
		db	 07h, 52h, 60h, 01h,0B0h, 0Ch
		db	 29h,0A0h, 5Eh, 22h, 0Ch, 14h
		db	 60h, 0Ah, 3Eh, 80h,0AAh,0A4h
		db	0D5h, 55h, 55h, 55h, 40h, 80h
		db	 1Dh, 55h, 60h, 18h,0F0h, 30h
		db	 14h,0F2h, 5Ah, 80h, 04h,0A0h
		db	0AAh, 08h, 60h, 14h, 52h, 05h
		db	 55h, 55h, 55h, 55h, 5Ch, 10h
		db	 0Dh, 55h, 57h, 06h,0A0h,0C1h
		db	 77h, 20h, 01h, 80h, 08h, 50h
		db	 04h, 40h, 51h, 60h, 05h, 03h
		db	 06h, 28h,0A4h, 0Dh, 55h, 55h
		db	 55h, 55h, 54h, 08h, 1Dh, 55h
		db	 55h, 48h,0C0h, 03h, 06h, 06h
		db	0D0h, 3Ah, 09h, 80h, 0Eh, 02h
		db	 8Ah, 0Ah, 10h, 05h, 01h, 80h
		db	0C0h, 50h, 58h, 05h, 55h, 55h
		db	 55h, 55h, 55h,0D0h, 0Dh, 55h
		db	 55h, 43h, 60h, 03h, 18h, 06h
		db	0C0h,0A0h,0A4h, 80h, 08h, 01h
		db	 10h, 20h, 18h, 30h, 28h,0A4h
		db	 0Dh, 55h, 55h, 55h, 55h, 55h
		db	 48h, 1Dh, 55h, 55h, 50h, 78h
		db	 06h, 60h, 03h, 84h, 01h, 80h
		db	 04h, 10h,0C3h
		db	'PXUUUUUUp', 0Dh, 'UUT<', 0Ch
		db	0C0h, 03h,0C0h, 01h, 80h, 80h
		db	 08h, 06h, 0Ch, 28h,0A4h,0D5h
		db	'UUUUPH', 9, 'UUU'
		db	 1Eh, 19h, 80h, 03h,0C0h, 01h
		db	 80h, 40h, 04h, 18h, 30h, 16h
		db	0D8h, 05h
		db	'UUUUT0', 0Dh, 'UUU@'
		db	 96h, 03h,0C0h, 01h, 80h,0C0h
		db	 48h,0E0h,0C8h,0E4h, 01h,0C8h
		db	 03h, 27h, 4Eh, 06h, 03h,0C0h
		db	0E4h, 01h,0C8h, 1Eh, 03h,0C0h
		db	0E4h, 01h,0C8h, 1Eh, 03h,0C0h
		db	0E4h, 60h,0A0h, 0Ch, 06h, 1Dh
		db	0C2h, 80h, 0Ch, 0Ch, 0Fh, 01h
		db	 80h, 01h,0B0h, 01h,0C8h, 1Eh
		db	 03h,0C0h,0E4h,0C0h, 0Ch,0CCh
		db	 63h, 03h, 1Dh,0C7h, 80h, 0Ch
		db	 18h, 01h,0E1h, 99h, 80h, 03h
		db	 30h, 06h, 48h, 1Eh,0C0h, 24h
		db	0C0h, 0Ch, 60h, 02h,0B5h,0C6h
		db	 30h,0C0h,0C0h, 15h, 86h, 30h
		db	 06h, 48h,0E0h, 04h, 06h, 1Dh
		db	0C0h, 3Ch, 01h, 7Ch, 60h, 37h
		db	 94h, 80h,0C8h,0E4h,0C0h, 3Fh
		db	 30h, 03h,0C0h, 3Ch, 60h, 18h
		db	0F0h, 01h, 80h, 01h,0C8h,0E7h
		db	0C0h, 0Fh, 33h, 18h, 03h, 18h
		db	 78h, 60h, 18h, 3Ch, 03h, 1Fh
		db	0C8h,0E7h,0C0h, 0Fh, 06h, 7Eh
		db	 18h, 60h, 30h,0C0h, 03h, 03h
		db	 6Fh, 28h, 03h, 28h, 1Fh,0C8h
		db	0E7h,0C0h, 0Fh, 06h, 79h, 80h
		db	 03h, 06h, 60h,0C0h, 03h, 03h
		db	 6Fh,0DAh, 83h, 1Eh, 1Fh,0C8h
		db	0E7h,0C0h, 0Dh, 80h, 06h, 78h
		db	0C0h,0CAh,0C0h,0A0h, 02h, 9Fh
		db	0C8h,0E7h,0C0h, 2Fh, 80h, 10h
		db	0E0h, 01h, 9Eh,0C0h, 14h, 1Fh
		db	0C8h,0E7h,0C0h, 2Fh, 80h, 03h
		db	 01h, 88h, 20h, 03h, 3Dh, 80h
		db	0A0h, 22h, 1Fh,0C8h,0E7h,0C0h
		db	 2Fh, 80h, 07h, 8Ch,0CCh, 30h
		db	 06h, 2Bh,0A0h, 28h, 1Fh,0C8h
		db	0E7h,0C0h, 2Fh, 80h, 0Ah, 03h
		db	 6Ch, 03h, 0Ch, 57h,0E0h,0FBh
		db	 40h, 1Fh,0C8h,0E7h,0C0h, 2Fh
		db	 80h, 14h,0CDh,0BCh, 60h, 0Ch
		db	0FFh, 60h, 15h, 82h, 0Eh, 1Fh
		db	0C8h,0E7h,0C0h, 2Fh, 80h, 44h
		db	 66h,0D8h,0C0h, 18h, 30h,0BEh
		db	0C0h,0F0h, 1Fh,0C8h,0E7h,0C0h
		db	 2Fh, 80h, 02h, 08h, 3Ch,0C0h
		db	0C6h, 0Ch, 61h,0E0h,0C0h, 28h
		db	 1Fh,0C8h,0E7h,0C0h, 2Eh,0C0h
		db	 10h, 04h,0C0h, 06h,0C7h, 10h
		db	 0Fh,0C3h,0C1h, 80h, 1Fh,0C8h
		db	0E7h,0C0h, 17h, 60h, 80h, 08h
		db	 01h, 80h,0F7h, 2Ch, 39h,0C7h
		db	 83h,0A0h, 28h, 01h, 68h, 1Fh
		db	0C8h,0E7h,0C0h, 17h, 61h, 04h
		db	 03h, 31h, 26h, 73h, 9Bh, 06h
		db	 11h, 01h, 40h, 0Ah, 02h, 80h
		db	 1Fh,0C8h,0E7h,0C0h, 16h, 82h
		db	 8Ch, 0Dh, 23h,0E7h, 6Ch, 06h
		db	 0Bh, 14h,0B2h, 80h, 0Ah, 1Fh
		db	0C8h,0E7h,0C0h, 16h, 84h, 10h
		db	 10h, 08h,0C0h, 30h, 03h, 63h
		db	 8Eh,0F5h, 0Ch, 9Dh, 55h, 40h
		db	 05h, 14h, 1Fh,0C8h,0E7h,0C0h
		db	 0Ah,0A8h, 80h, 08h, 05h, 80h
		db	 03h, 01h, 05h,0EAh, 18h, 1Eh
		db	 17h, 3Ch, 95h, 1Eh, 02h, 80h
		db	 02h, 80h, 3Ch, 1Fh,0C8h,0E7h
		db	0C0h, 05h,0AAh, 04h, 10h, 10h
		db	 10h, 60h, 01h,0DBh,0BCh, 3Fh
		db	 14h, 12h, 1Ah,0ECh, 0Ah, 01h
		db	 40h, 28h, 14h, 3Ch, 1Fh,0C8h
		db	0E7h,0C0h, 05h,0A0h, 20h, 02h
		db	 24h, 03h, 0Ch,0C1h,0F8h, 7Bh
		db	 37h, 39h,0FDh,0D8h, 11h, 01h
		db	 7Ah, 01h, 45h, 0Dh, 08h, 78h
		db	 1Fh,0C8h,0E7h,0C0h, 05h,0A0h
		db	 04h,0E0h, 01h,0E1h, 80h,0D5h
		db	 64h, 06h, 3Ch, 9Fh, 77h, 04h
		db	 1Eh,0BCh,0A0h,0F5h, 39h, 55h
		db	 01h, 40h, 77h,0D8h, 1Fh,0C8h
		db	0E7h,0C0h, 11h,0A0h, 50h,0C6h
		db	 0Ch, 30h, 60h,0DEh, 48h, 0Ch
		db	 0Fh, 75h, 7Ch, 03h,0A8h, 80h
		db	0EEh, 14h, 14h, 02h, 20h, 05h
		db	0D9h, 40h, 1Fh,0C8h,0E7h,0C0h
		db	0A0h, 6Dh,0E0h, 61h, 87h, 83h
		db	 1Bh,0F0h, 7Eh, 9Ah, 18h, 02h
		db	 80h,0E8h, 29h, 1Ah, 32h, 20h
		db	 28h, 75h, 85h, 0Ch, 64h, 20h
		db	 0Ch, 11h, 14h, 01h,0B1h, 54h
		db	 1Fh,0C8h,0E7h,0C0h, 14h, 7Fh
		db	 9Eh, 48h, 7Eh, 3Fh, 1Bh,0F0h
		db	 7Fh, 1Ch, 30h, 05h,0EAh, 94h
		db	 3Ah, 2Eh,0DBh, 6Bh,0EAh,0F0h
		db	0C3h, 60h,0F5h, 01h,0B0h,0A0h
		db	 1Fh,0C8h,0E7h,0C0h, 0Ah, 65h
		db	 0Ch, 60h, 1Eh, 1Bh,0F0h, 7Eh
		db	0ACh, 60h, 14h, 6Ch, 0Eh,0D7h
		db	 10h, 50h, 75h, 80h, 36h,0B8h
		db	 12h, 10h, 80h,0C5h, 03h, 60h
		db	0A0h, 28h, 1Fh,0C8h,0E7h,0C0h
		db	 05h
		db	30h
data_689	dw	0C00Ch			; Data table (indexed access)
		db	 03h, 2Bh,0F0h,0F7h, 65h,0F8h
		db	 17h,0BDh,0F0h,0A0h, 1Eh, 74h
		db	0AFh,0D2h, 04h, 02h, 2Eh, 60h
		db	 5Eh, 40h, 1Fh,0C8h,0E7h,0C0h
		db	 02h,0ABh,0F0h, 18h,0C0h, 07h
		db	0E3h,0F0h,0FCh,0B8h, 30h, 04h
		db	0B1h, 7Dh, 40h, 0Ah, 1Bh, 22h
		db	 06h, 50h, 20h, 41h, 16h,0C0h
		db	 2Fh, 80h, 1Fh,0C8h,0E7h,0C0h
		db	 01h, 6Bh,0F0h, 30h, 30h, 07h
		db	0FEh, 31h,0FAh,0E0h, 74h, 78h
		db	 01h, 40h, 19h, 80h, 0Dh, 81h
		db	 20h, 04h, 27h, 80h, 17h, 26h
		db	 80h, 1Fh,0C8h,0E7h,0C0h, 17h
		db	0F0h, 30h, 0Ch, 07h,0F8h, 01h
		db	 81h, 81h, 58h, 05h, 14h, 11h
		db	 0Ch,0E0h, 01h, 71h, 57h, 80h
		db	 0Ah, 50h, 1Fh,0C8h,0E7h,0C0h
		db	 01h, 6Bh,0F0h, 18h, 0Ch, 07h
		db	0F8h, 01h, 83h, 60h, 0Ah, 0Ch
		db	 70h, 20h, 32h, 85h, 0Ah, 02h
		db	0E4h, 9Fh,0C8h,0E7h,0C0h, 25h
		db	 80h,0B7h,0F0h, 09h, 48h, 07h
		db	0F8h, 01h, 8Ah, 63h, 08h, 80h
		db	 06h, 68h, 47h, 80h, 03h,0D9h
		db	 45h, 0Ah, 02h, 9Fh,0C8h,0E7h
		db	0C0h, 19h, 6Eh,0A3h,0F0h, 07h
		db	0F8h, 03h, 01h, 8Fh, 60h,0D8h
		db	 10h, 40h, 06h, 34h, 13h,0F6h
		db	 0Ah, 28h, 05h, 1Fh,0C8h,0E7h
		db	0C0h, 02h, 20h, 17h,0F0h, 0Fh
		db	 6Ch, 07h,0F8h, 03h, 18h, 29h
		db	 80h, 18h,0D8h,0C8h, 20h, 06h
		db	 1Ah, 26h, 6Fh,0C0h, 3Fh, 0Ah
		db	 02h, 9Fh,0C8h,0E7h,0CAh, 05h
		db	 03h,0F0h, 37h, 09h, 80h, 0Dh
		db	0F8h, 03h,0FCh, 0Ch, 01h, 83h
		db	 60h, 35h, 06h, 0Dh, 46h, 36h
		db	0F0h, 37h, 80h, 14h, 05h, 1Fh
		db	0C8h,0E7h,0C4h, 83h, 17h,0F0h
		db	 78h, 01h, 98h, 0Fh,0D8h, 02h
		db	 8Ah, 7Bh, 01h, 9Bh, 06h, 03h
		db	 0Ch, 80h, 86h, 33h,0CCh, 01h
		db	0ECh, 28h, 1Fh,0C8h,0E7h,0C0h
		db	 09h, 0Ch, 03h,0D8h, 28h, 28h
		db	 0Fh,0F0h, 02h, 80h, 18h, 05h
		db	 18h, 19h, 81h, 80h, 03h, 0Ch
		db	 06h, 31h,0E3h,0F6h, 50h, 1Fh
		db	0C8h,0E7h,0C0h, 12h, 30h, 31h
		db	 95h,0F8h, 02h, 20h, 0Fh,0F0h
		db	 07h, 80h,0C0h,0C0h, 79h,0B0h
		db	 60h, 03h, 06h, 03h, 31h, 41h
		db	 80h, 7Bh,0A0h, 1Fh,0C8h,0E7h
		db	0C0h, 24h, 60h,0C0h, 61h,0F8h
		db	 0Ch, 06h, 0Fh,0F0h, 05h, 0Ah
		db	 30h, 01h, 83h, 60h, 36h, 18h
		db	 03h, 06h, 01h,0B0h,0A0h, 60h
		db	 6Dh,0ECh, 01h, 40h, 1Fh,0C8h
		db	0E7h,0C0h, 01h, 26h, 03h, 07h
		db	0B1h,0F8h, 02h, 08h, 0Fh,0F0h
		db	 05h, 06h, 01h, 9Bh, 07h, 8Ch
		db	 02h, 80h, 03h, 0Ch, 07h, 81h
		db	 10h, 50h, 30h, 36h,0F1h, 82h
		db	 80h, 1Fh,0C8h,0E7h,0C0h, 12h
		db	 30h, 0Ch, 60h,0ACh, 1Fh,0B0h
		db	 05h, 17h, 28h, 0Ah, 18h, 01h
		db	0E3h, 04h, 40h, 03h, 18h, 36h
		db	0A0h,0A0h, 18h, 32h,0B0h, 30h
		db	 1Fh,0C8h,0E7h,0C0h, 90h,0C0h
		db	 33h, 30h, 0Ch,0A6h, 1Fh,0E0h
		db	 0Dh, 9Fh, 80h, 1Eh,0C0h, 01h
		db	 80h, 08h, 08h, 03h, 30h,0D8h
		db	 01h, 40h, 50h, 24h, 31h, 70h
		db	 0Ch, 1Fh,0C8h,0E7h,0C0h, 01h
		db	0E0h, 08h, 46h, 65h, 18h, 01h
		db	 80h, 67h,0E0h, 19h,0DCh, 36h
		db	0C4h, 04h, 66h,0ACh, 10h, 04h
		db	 03h,0C1h,0E0h, 02h, 80h,0A0h
		db	 12h, 32h,0B0h, 03h, 1Fh,0C8h
		db	0E7h,0C0h, 19h, 55h, 80h, 42h
		db	 60h,0C0h, 78h, 18h, 30h, 03h
		db	 07h,0E0h, 35h,0AAh, 18h,0F6h
		db	0C0h, 1Bh, 84h, 20h, 02h, 07h
		db	0A8h, 05h, 09h, 61h, 70h, 01h
		db	 80h, 01h, 40h, 1Fh,0C8h
data_690	db	0E7h
		db	0C0h, 01h,0D5h, 55h, 5Ch, 04h
		db	 26h,0C0h, 06h, 0Ch, 30h, 0Fh
		db	 60h, 3Fh, 50h, 18h,0C0h,0C0h
		db	 06h, 61h, 90h, 04h, 1Eh, 41h
		db	 10h, 12h,0B0h,0C0h, 1Fh,0C8h
		db	0E7h,0C0h, 07h, 55h, 55h, 57h
		db	 45h, 80h, 48h, 0Fh,0C0h,0CFh
		db	 01h, 80h, 03h, 66h, 20h, 08h
		db	 3Eh, 02h, 08h, 20h, 60h, 60h
		db	 02h, 70h, 1Fh,0C8h,0E7h,0C0h
		db	 09h, 55h, 55h, 54h, 80h, 01h
		db	 80h, 0Fh,0C0h, 0Fh,0C3h, 05h
		db	0D8h, 01h, 04h,0C0h, 03h,0B4h
		db	 40h, 10h, 50h,0F4h, 04h, 10h
		db	 7Ch,0C0h, 30h, 1Fh,0C8h,0E7h
		db	0C0h
		db	0Dh, '_UU$'
		db	'C<`_'
		db	0CCh, 20h, 02h,0C0h, 03h,0F0h
		db	 02h,0A0h, 20h, 51h,0E8h, 02h
		db	 08h,0FBh, 18h, 1Fh,0C8h,0E7h
		db	0C0h, 09h, 60h, 35h, 54h, 21h
		db	 13h, 50h, 03h,0A0h, 06h, 30h
		db	 02h, 80h, 44h, 40h, 40h, 60h
		db	 03h,0CCh, 05h, 40h, 40h, 2Bh
		db	0D0h, 04h, 11h,0F6h, 0Ch, 1Fh
		db	0C8h,0E7h,0C0h, 0Dh,0A0h, 22h
		db	 50h, 09h, 16h,0A0h, 2Fh,0E0h
		db	 60h, 4Ah, 9Eh, 08h, 20h, 0Ch
		db	 07h, 83h, 22h, 80h, 81h,0DEh
		db	0A0h, 08h, 23h,0BCh, 0Ch, 0Ah
		db	 1Fh,0C8h,0E7h,0C0h, 35h, 55h
		db	 48h, 20h, 09h, 4Ch, 01h, 40h
		db	 33h, 60h, 60h, 4Eh,0C0h, 01h
		db	 10h, 17h, 02h, 26h,0C6h, 40h
		db	 43h, 5Ch, 40h, 10h, 56h, 0Ch
		db	 01h,0BAh, 1Fh,0C8h,0E7h,0C0h
		db	 75h, 55h, 52h, 02h, 08h, 0Ch
		db	 05h, 31h, 43h,0F6h, 18h, 3Ch
		db	 30h, 02h,0C1h, 88h,0B4h, 18h
		db	 0Ch, 6Eh, 08h, 80h, 0Ah,0D1h
		db	0DCh, 80h, 2Ah,0B8h, 19h, 12h
		db	0F8h, 05h, 1Fh,0C8h,0E7h,0C0h
		db	 95h, 55h, 54h, 80h,0A0h, 18h
		db	0CAh, 0Ch, 3Dh,0A4h, 78h, 03h
		db	 20h, 20h, 44h, 96h, 01h,0B2h
		db	 21h, 15h,0A0h, 3Dh, 54h, 60h
		db	 3Ch, 0Fh,0F5h,0C2h, 9Fh,0C8h
		db	0E7h,0C0h,0D5h, 55h, 55h, 20h
		db	 30h, 7Bh, 03h, 0Dh, 80h,0F0h
		db	 24h, 04h, 04h, 22h,0BEh, 36h
		db	 03h,0C8h, 88h, 03h, 10h, 3Eh
		db	 80h, 01h, 80h, 07h, 1Ah, 14h
		db	 1Fh,0C8h,0E7h,0C0h, 03h, 55h
		db	 55h, 54h, 20h, 30h, 6Fh, 33h
		db	 19h, 10h, 03h,0C0h, 04h, 82h
		db	 02h, 14h,0BEh, 20h, 90h, 40h
		db	0A0h, 29h, 40h, 60h, 30h, 30h
		db	 06h,0E0h,0B0h, 1Fh,0C8h,0E7h
		db	0C0h, 07h, 55h, 55h, 55h, 08h
		db	 02h, 98h, 6Fh,0D8h,0C0h, 09h
		db	 01h, 01h, 0Ah,0BEh, 02h, 02h
		db	 20h, 2Bh, 10h, 2Ah, 80h, 0Ch
		db	 03h, 0Ch, 0Ch, 29h, 1Fh, 1Fh
		db	0C8h,0E7h,0C0h, 09h, 55h, 55h
		db	 54h, 08h, 04h, 58h,0E6h, 01h
		db	 0Ch, 03h,0A0h, 04h, 10h, 80h
		db	 85h,0BEh, 88h, 40h, 40h,0A0h
		db	 54h, 42h, 67h, 63h, 05h, 30h
		db	 2Dh, 1Fh,0C8h,0E7h,0C0h, 0Dh
		db	 55h, 55h, 55h, 08h, 08h, 2Ch
		db	 01h,0F2h, 80h, 02h, 0Bh, 64h
		db	 10h, 20h, 40h, 40h,0BEh, 05h
		db	 80h, 0Ah, 2Bh, 11h,0E2h, 80h
		db	0C9h,0C0h, 19h, 83h,0C0h, 03h
		db	 1Fh,0C8h,0E7h,0C0h, 35h, 55h
		db	 55h, 54h, 08h, 54h, 13h, 04h
		db	0F3h, 02h, 42h, 06h,0C0h, 05h
		db	0BEh, 0Bh, 05h, 40h,0A0h, 10h
		db	 40h, 49h,0A4h, 18h,0C1h,0E2h
		db	 80h, 0Ch,0A0h, 0Dh, 9Fh,0C8h
		db	0E7h,0C0h, 75h, 77h, 55h, 55h
		db	 20h, 8Ah, 09h, 80h, 09h, 72h
		db	 80h, 55h, 20h, 30h, 60h, 02h
		db	 05h, 50h, 80h, 1Fh, 80h, 18h
		db	0B6h, 0Ah, 21h, 10h, 58h, 80h
		db	 08h, 80h,0E4h, 63h, 60h, 1Bh
		db	 30h, 1Fh,0C8h,0E7h,0C0h, 95h
		db	0C9h, 55h, 54h, 95h, 05h, 04h
		db	 61h, 40h, 48h, 73h, 08h, 53h
		db	 01h,0D0h, 05h, 90h, 1Eh, 80h
		db	 24h, 50h, 11h, 40h,0A0h, 2Ch
		db	 40h, 02h, 80h, 36h,0C2h, 80h
		db	 51h, 74h,0B0h, 1Fh,0C8h,0E7h
		db	0C0h,0D2h, 0Dh, 55h, 57h, 2Ah
		db	 02h, 80h, 87h, 12h, 10h, 72h
		db	 80h, 04h, 30h, 20h, 05h, 54h
		db	 42h,0B4h, 20h,0A0h, 22h, 35h
		db	 10h, 16h, 20h, 28h, 44h, 01h
		db	 85h,0DCh, 20h, 50h, 1Fh,0C8h
		db	0E7h,0C3h, 5Ch, 03h, 55h, 61h
		db	 05h, 01h, 10h, 98h, 05h, 73h
		db	 02h, 02h, 0Dh, 50h, 03h,0B4h
		db	 01h, 11h, 4Ah, 88h, 23h, 10h
		db	 01h, 82h, 81h, 88h, 20h, 1Fh
		db	0C8h,0E7h,0CDh, 58h, 27h, 2Ah
		db	 02h, 80h, 29h, 30h, 0Ah, 78h
		db	 80h, 01h, 40h, 40h, 03h,0AAh
		db	 02h, 28h, 20h,0B0h, 10h, 11h
		db	 80h, 08h, 01h, 83h,0C1h, 82h
		db	 80h, 1Fh,0C8h,0E7h,0C9h,0C1h
		db	0B0h, 51h, 01h, 40h, 16h, 18h
		db	 11h, 78h, 40h, 80h, 20h, 70h
		db	 03h,0B4h, 10h, 50h, 41h, 48h
		db	 08h, 08h,0C0h, 55h, 54h,0C1h
		db	0E3h, 1Fh,0C8h,0E7h,0CAh, 0Ch
		db	 0Ch, 02h, 0Ah,0A0h, 1Ch,0C0h
		db	 30h, 08h,0F8h, 80h, 01h, 10h
		db	 01h, 03h, 96h, 20h,0A0h, 80h
		db	0A4h, 10h, 11h, 20h, 80h,0C2h
		db	 83h, 06h,0C0h, 1Fh,0C8h,0E7h
		db	0C0h, 63h, 01h, 14h, 05h, 44h
		db	 21h, 98h,0C0h, 11h, 72h, 40h
		db	 80h, 08h,0D0h, 03h, 3Ch, 54h
		db	 01h, 41h, 29h, 48h, 08h, 08h
		db	0C0h, 05h, 40h, 64h, 40h, 60h
		db	 18h,0C0h, 1Fh,0C8h,0E7h,0C3h
		db	 30h, 08h, 28h, 02h, 80h, 0Bh
		db	 18h, 14h, 08h,0ECh, 20h, 40h
		db	 04h
		db	 55h, 43h
data_691	dw	0A882h
		db	 02h, 22h, 44h, 04h, 04h, 04h
		db	 60h, 02h, 62h, 20h, 01h,0E0h
		db	0C0h, 1Fh,0C8h,0E7h,0CDh, 91h
		db	 40h, 44h, 01h, 40h, 04h,0C0h
		db	 03h, 28h, 05h, 69h, 40h, 20h
		db	 08h, 0Dh, 53h, 28h, 10h, 01h
		db	 44h, 44h, 88h, 08h, 08h, 02h
		db	 30h, 10h, 64h, 40h,0C0h, 1Fh
		db	0C8h,0E7h,0CAh, 82h, 20h, 28h
		db	0A0h, 05h,0B0h, 06h, 44h, 08h
		db	0E9h, 20h, 10h, 04h, 43h,0A0h
		db	 20h, 02h, 88h, 89h, 44h, 04h
		db	 01h, 18h, 08h, 62h, 20h,0C0h
		db	 1Fh,0C8h,0E7h,0C1h, 01h, 40h
		db	 14h, 50h, 02h, 61h, 8Ch, 82h
		db	 05h, 69h, 10h, 08h, 02h, 23h
		db	 88h, 40h, 05h, 10h, 52h, 0Ah
		db	 02h, 8Ch, 04h, 63h,0C0h, 01h
		db	 80h, 1Fh,0C8h,0E7h,0C2h, 02h
		db	 20h, 22h, 3Ch, 10h, 03h, 01h
		db	 01h, 02h,0BEh,0A0h, 04h, 01h
		db	 16h,0A0h, 20h, 02h, 88h,0A4h
		db	 05h, 01h, 46h, 08h, 61h,0E0h
		db	 01h, 80h, 1Fh,0C8h,0E7h,0C1h
		db	 01h, 40h, 14h, 1Ch, 62h, 02h
		db	 01h, 68h, 10h, 80h, 02h, 04h
		db	0A4h, 50h, 05h, 10h, 52h, 0Ah
		db	 02h, 23h, 04h, 62h, 80h, 03h
		db	 1Fh,0C8h,0E7h,0C2h,0A0h, 0Ah
		db	 09h, 80h,0C1h, 01h, 29h, 60h
		db	 15h, 04h, 02h, 08h, 02h,0A0h
		db	 04h, 05h, 01h, 14h, 80h, 08h
		db	 64h, 40h, 06h, 1Fh,0C8h,0E7h
		db	0C1h, 50h, 05h, 04h, 60h, 01h
		db	 80h, 80h, 80h, 3Ch, 10h, 8Ah
		db	 80h, 04h, 10h, 01h, 45h, 1Ah
		db	 58h, 02h, 80h, 80h, 23h, 04h
		db	0C6h, 60h, 06h, 1Fh,0C8h,0E7h
		db	0C2h,0A0h, 02h, 80h, 04h,0D8h
		db	 06h, 28h, 40h, 40h, 11h,0A8h
		db	 08h, 20h, 02h, 88h,0A5h, 04h
		db	 05h, 40h, 22h, 80h, 20h,0C3h
		db	 60h, 06h, 1Fh,0C8h,0E7h,0C1h
		db	 50h, 01h, 40h, 08h, 1Bh, 0Ch
		db	0A0h, 20h, 20h, 14h, 10h, 01h
		db	 40h, 10h, 40h, 11h, 10h, 58h
		db	 28h, 02h, 80h, 20h, 11h, 10h
		db	 40h,0C0h, 0Ch, 1Fh,0C8h,0E7h
		db	0C2h, 28h,0B4h, 10h, 03h, 10h
		db	 10h, 1Eh, 08h, 02h, 20h, 20h
		db	 80h, 22h, 20h, 04h, 14h, 01h
		db	 40h, 10h, 08h,0A0h, 02h, 18h
		db	 0Ch, 1Fh,0C8h,0E7h,0C1h, 14h
		db	 58h,0CAh, 08h, 08h, 1Ah, 44h
		db	 01h, 40h, 4Bh, 14h, 44h, 40h
		db	 08h,0A0h, 08h, 04h, 50h, 04h
		db	0C0h, 5Ch, 1Fh,0C8h,0E7h,0CAh
		db	 80h, 0Ah, 01h, 6Ch, 01h, 82h
		db	 80h, 01h, 01h, 0Bh, 48h, 02h
		db	 20h, 02h, 14h,0A8h, 82h, 81h
		db	 50h, 04h, 02h, 28h, 08h, 03h
		db	 30h, 1Fh,0C8h,0E7h,0C5h, 40h
		db	 05h, 9Bh, 06h, 22h, 80h, 8Fh
		db	0A4h, 10h, 10h, 10h, 89h, 51h
		db	 05h, 08h, 88h, 02h, 01h, 1Eh
		db	 04h, 30h, 03h, 30h, 60h, 1Fh
		db	0C8h,0E7h,0CAh, 80h, 02h, 81h
		db	 03h, 60h, 18h,0AAh, 10h, 45h
		db	0A0h, 80h, 80h, 02h, 81h, 10h
		db	0A8h,0DAh, 10h, 41h, 01h, 8Ah
		db	 20h, 18h, 36h, 60h, 1Fh,0C8h
		db	0E7h,0C5h, 40h, 01h, 60h, 66h
		db	 30h, 88h, 02h, 0Fh, 70h, 10h
		db	 10h, 10h, 11h, 51h, 05h, 20h
		db	 20h, 80h, 21h, 14h, 03h, 8Ch
		db	 0Ch, 66h,0FFh, 1Fh,0C8h,0E7h
		db	0C8h,0A0h, 05h,0B0h, 06h, 14h
		db	 28h, 47h, 90h, 02h, 08h, 80h
		db	 2Ah,0AAh, 5Bh,0C2h, 10h, 10h
		db	 8Ah, 09h, 80h, 01h, 80h, 0Ch
		db	0C0h, 1Fh,0C8h,0E7h,0C4h, 50h
		db	 08h, 6Ch, 03h, 03h,0B8h, 55h
		db	 50h, 04h, 54h, 11h,0A0h, 80h
		db	 01h, 81h, 08h, 02h, 44h, 0Ch
		db	0C0h, 01h, 40h, 18h, 60h,0F2h
		db	 80h, 28h, 1Fh,0C8h,0E7h,0C8h
		db	 2Ch, 19h, 80h, 18h, 03h,0B8h
		db	 15h, 55h, 54h, 08h, 8Ah,0AAh
		db	 5Bh, 21h, 81h, 01h, 22h, 30h
		db	 18h, 30h, 03h, 2Dh, 14h, 41h
		db	 1Fh,0C8h,0E7h,0C4h, 3Eh, 03h
		db	 0Ch,0C0h, 03h,0AEh, 80h, 16h
		db	0D5h, 55h, 55h, 40h, 01h, 14h
		db	 11h, 88h, 80h, 05h, 56h, 40h
		db	 20h, 94h,0C0h,0C0h, 30h, 01h
		db	 94h, 44h, 88h, 1Fh,0C8h,0E7h
		db	0C8h, 4Dh, 80h, 0Ch, 20h, 83h
		db	 48h, 01h, 55h, 55h, 54h, 80h
		db	 02h, 0Ah, 51h, 0Ch, 08h, 04h
		db	 62h,0C6h, 30h, 61h, 67h,0B4h
		db	 1Fh,0C8h,0E7h,0CCh, 03h, 30h
		db	 03h, 41h, 01h,0C9h, 01h, 05h
		db	 55h, 51h, 50h, 54h, 05h, 28h
		db	 80h, 0Ch, 04h,0B4h,0D8h, 50h
		db	 18h, 30h, 94h, 20h, 28h, 1Fh
		db	0C8h
data_692	dw	0CCE7h, 0C0C3h
data_693	dw	0AB22h, 80AEh
data_694	dw	102h, 5655h
data_695	dw	0A9A0h, 4155h
data_696	dw	0C50h, 0A80h
data_697	dw	8A2h, 0C030h
data_698	dw	318h, 151h
data_699	dw	4411h, 0C81Fh
data_700	dw	0C0E7h, 5501h
data_701	dw	40A5h, 5005h
data_702	dw	5255h, 820h
data_703	dw	8001h, 440h
data_704	dw	4005h, 300Ch
data_705	dw	0C30h, 7429h
data_706	dw	220Ah, 0C89Fh
data_707	dw	0C0E7h, 0A03Ch
		db	 23h,0A4h, 80h, 02h, 14h,0AAh
		db	0A4h, 01h, 80h, 08h, 08h, 20h
		db	 03h, 0Ch, 30h, 30h, 15h,0D0h
		db	 2Ah, 79h, 1Fh,0C8h,0E7h,0CCh
		db	0F5h,0BFh, 58h, 01h, 51h,0EEh
		db	 40h, 10h, 14h, 52h, 06h, 04h
		db	 01h,0F0h, 01h,0C3h, 60h,0C1h
		db	 76h, 81h, 34h, 10h, 1Fh,0C8h
		db	0E7h,0C6h, 02h, 8Ah, 58h, 8Eh
		db	0C8h,0F1h, 20h, 02h, 20h, 22h
		db	0D2h, 80h, 20h, 03h, 06h, 28h
		db	0A4h, 0Ch, 81h,0E8h, 08h, 31h
		db	0E3h, 06h, 07h, 7Ah, 3Ah, 28h
		db	 1Fh,0C8h,0E7h,0C6h, 03h,0DBh
		db	 0Ah, 05h, 30h, 04h, 10h, 05h
		db	 72h, 40h, 40h, 01h, 80h,0C0h
		db	 50h, 58h, 06h, 43h,0D0h, 10h
		db	 18h, 03h, 18h, 06h, 05h,0A0h
		db	0A0h, 1Fh,0C8h,0C0h, 28h,0A1h
		db	 10h, 30h, 08h, 82h, 80h, 77h
		db	 80h, 02h, 55h, 18h, 30h, 28h
		db	0A4h, 0Ch, 23h,0C8h, 08h, 18h
		db	 06h, 60h, 03h, 6Ch, 01h, 80h
		db	 48h, 80h, 68h, 01h, 40h, 18h
		db	 05h, 01h, 7Bh,0C0h, 11h, 54h
		db	0C3h, 50h, 58h, 60h, 17h, 84h
		db	 04h, 0Ch, 0Ch,0C0h, 03h, 01h
		db	0C0h, 08h,0E4h,0C0h, 18h, 02h
		db	0A0h,0BBh,0A0h, 85h, 56h, 0Ch
		db	 28h,0A4h,0C0h, 10h, 4Fh, 88h
		db	 02h, 06h, 19h, 80h, 03h, 01h
		db	0C8h, 03h,0C0h,0E4h,0C0h, 01h
		db	 4Ch, 01h, 74h,0C5h, 55h, 58h
		db	 30h, 14h, 58h, 04h, 80h, 02h
		db	 3Fh, 04h, 43h, 96h, 03h, 01h
		db	0CAh, 9Eh, 03h,0C0h,0E4h, 01h
		db	0C8h, 1Eh, 03h,0C0h,0E4h, 01h
		db	0C8h, 1Eh, 03h, 27h, 4Eh, 06h
		db	0E4h, 01h,0C8h,0C0h, 48h, 80h
		db	 08h,0C0h, 48h,0E0h,0C8h,0E4h
		db	 01h,0C8h, 03h, 27h, 4Eh, 06h
		db	 03h,0C0h,0E4h, 01h,0C8h, 1Eh
		db	 03h,0C0h,0E4h, 01h,0C8h, 1Eh
		db	 03h,0CEh,0A4h,0C0h, 28h, 1Dh
		db	0C0h, 08h, 82h,0A8h, 07h,0B4h
		db	 02h,0A8h, 02h,0A0h,0A8h, 82h
		db	 02h, 80h, 28h,0A0h, 20h, 4Ah
		db	 9Eh, 03h,0C0h,0E4h,0C0h, 11h
		db	 01h, 40h, 1Dh,0C0h, 04h, 45h
		db	 05h, 0Fh, 3Dh, 45h, 04h, 04h
		db	 04h, 10h, 45h, 40h, 10h, 50h
		db	 05h, 05h, 14h, 14h, 55h, 55h
		db	 04h, 4Ah, 9Eh,0C0h, 24h,0C0h
		db	 02h, 80h, 2Ah, 20h, 1Dh,0C2h
		db	 80h,0A8h, 22h, 80h, 1Eh, 3Ch
		db	 22h, 08h, 28h, 2Ah, 20h, 82h
		db	 08h, 28h, 28h

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_333:
		dec	ax
		loopnz	locloop_334		; Loop if zf=0, cx>0

		test	ax,[di]
		adc	ax,1D44h
		xchg	cx,ax
		adc	[di],dl
		adc	ax,3C50h
		js	$+42h			; Jump if sign=1
		add	[bx+si+54h],ax
		inc	cx
		push	bp
		adc	al,50h			; 'P'
		add	ax,8005h
		db	0C8h,0E4h,0E0h, 08h, 80h, 80h
		db	 3Fh,0E0h,0A2h, 0Ah, 2Ah,0A8h
		db	 3Ch, 78h, 0Ah, 82h,0A0h, 20h
		db	 08h, 80h, 0Ah,0A0h, 28h, 20h
		db	 01h, 80h, 01h,0C8h,0E7h,0C0h
		db	 94h, 15h, 10h, 14h, 7Fh, 94h
		db	 50h, 50h, 58h, 03h, 50h, 50h
		db	 78h, 68h, 11h, 14h, 14h, 50h
		db	 01h, 11h, 40h, 15h, 54h, 15h
		db	 01h

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_335:
		sbb	byte ptr [bx],0C8h
		out	0CCh,ax			; port 0CCh, DMA-2 bas&add ch 3
		or	byte ptr [bx+si],0AAh
		sub	byte ptr [bp+si],80h
		and	al,[bp+si]
		lahf				; Load ah from flags
		inc	dx
		xor	byte ptr ds:[88FFh][bx+di],8
		and	byte ptr ds:[0D270h][bx+si],ah
		mov	byte ptr ss:[0A00Ah][bp+si],ah
		mov	al,byte ptr ds:[802h]
		and	cl,[bp+si]
		stosb				; Store al to es:[di]
		test	al,1
		lahf				; Load ah from flags
		db	0C8h,0E7h,0C8h, 2Fh,0D1h, 51h
		db	 04h, 30h,0B9h, 04h, 41h, 01h
		db	 51h, 10h,0E0h,0E0h, 14h, 05h
		db	 01h, 40h, 15h, 14h, 14h, 01h
		db	 45h, 01h, 9Fh,0C8h,0E7h,0C4h
		db	 22h, 28h,0A2h, 80h, 0Ah, 28h
		db	0A0h,0EDh,0C2h, 80h,0AAh,0B0h
		db	0B8h, 80h, 01h,0CAh,0DAh, 02h
		db	 80h,0A0h, 28h,0A2h, 80h,0A8h
		db	 20h, 08h, 20h,0A0h, 2Ah, 01h
		db	 9Fh,0C8h,0E7h,0C9h, 40h, 05h
		db	 01h, 45h, 44h, 50h,0AFh,0A0h
		db	 51h, 42h, 14h, 94h, 44h, 55h
		db	 45h, 57h, 9Eh,0CDh, 01h, 40h
		db	 05h, 05h, 01h, 10h, 14h, 14h
		db	 51h, 40h, 55h, 05h, 01h, 41h
		db	 50h, 15h, 9Fh,0C8h,0E7h,0CEh
		db	0A0h, 8Ah, 8Ah,0A8h,0EFh,0C0h
		db	 2Ah, 84h, 2Fh, 80h, 1Ah,0A0h
		db	0A0h,0A0h, 07h, 3Dh, 92h, 80h
		db	 02h, 82h, 80h, 28h, 0Ah,0A2h
		db	 80h, 88h,0AAh,0A0h, 02h,0AAh
		db	 08h, 82h, 0Ah,0A2h, 28h,0A2h
		db	 03h, 9Fh,0C8h,0E7h,0CCh, 40h
		db	 44h, 50h, 14h, 50h,0AFh,0A0h
		db	 41h, 80h, 01h, 40h,0A3h, 15h
		db	 44h, 05h, 5Eh, 2Bh,0A8h, 01h
		db	 40h, 50h, 01h, 11h
		db	54h			; Data table (indexed access)
		db	 50h, 05h, 04h, 04h, 14h, 14h
		db	 15h, 40h, 9Fh,0C8h,0E7h,0C4h
		db	 28h,0A0h, 88h, 02h, 8Ah, 0Ah
		db	0A0h, 02h,0EFh,0E8h, 04h,0A0h
		db	 87h, 48h, 80h,0BCh, 57h,0F0h
		db	 28h, 0Ah, 88h, 0Ah,0AAh, 8Ah
		db	0A2h,0AAh, 89h, 1Fh,0C8h,0E7h
		db	0CCh, 51h, 05h, 50h, 01h, 10h
		db	0AFh,0B4h, 08h,0CCh, 50h, 81h
		db	 7Dh, 51h, 2Ch,0FFh, 69h, 40h
		db	 01h, 10h, 01h, 40h, 50h, 05h
		db	 15h, 40h, 50h, 04h, 40h, 51h
		db	 10h, 11h, 15h, 04h, 9Fh,0C8h
		db	0E7h,0C4h, 28h, 02h, 20h, 6Fh
		db	0C0h,0B0h, 66h, 20h, 56h, 02h
		db	0A2h, 70h,0BEh,0D2h, 80h, 0Ah
		db	0A0h, 28h,0A0h, 22h, 02h, 22h
		db	0A8h, 28h, 02h, 02h, 88h, 02h
		db	 83h, 9Fh,0C8h,0E7h,0C9h, 41h
		db	 40h, 51h, 40h, 45h, 40h,0AFh
		db	0B4h, 20h, 9Ch, 02h, 1Ch
		db	 20h, 08h
data_708	db	61h			; Data table (indexed access)
		db	0E0h,0E4h, 10h, 01h, 04h, 04h
		db	 40h, 05h, 50h, 11h, 9Fh,0C8h
		db	0E7h,0C4h, 02h, 82h,0A8h, 20h
		db	 82h,0A8h, 0Ah,0A0h, 6Eh,0F9h
		db	 01h,0A4h, 28h, 82h, 06h, 3Fh
		db	0C3h,0C1h,0C0h, 80h, 28h, 02h
		db	 8Ah, 20h, 28h, 0Ah, 08h, 82h
		db	 8Ah, 22h, 80h, 27h, 22h, 80h
		db	 01h, 1Fh,0C8h,0E7h,0C8h, 05h
		db	 55h, 01h, 45h, 51h, 10h, 97h
		db	 60h, 03h, 12h, 3Ch, 22h, 03h
		db	0F9h,0C7h, 83h,0C0h, 04h, 40h
		db	 41h, 40h, 28h, 05h, 04h, 41h
		db	 54h, 55h, 0Ah, 51h, 45h, 9Fh
		db	0C8h,0E7h,0C4h,0A2h, 80h,0A0h
		db	 22h, 57h, 60h, 01h,0A4h, 3Ch
		db	 14h, 73h, 9Bh, 07h, 20h,0A0h
		db	 82h, 80h, 02h, 82h,0ECh, 82h
		db	 2Ah, 08h, 28h, 8Ah, 20h,0A0h
		db	 28h, 22h,0BBh, 20h, 0Ah, 0Ah
		db	 03h, 1Fh,0C8h,0E7h,0C8h, 15h
		db	 11h, 15h, 50h, 04h, 11h, 51h
		db	 36h, 80h, 3Ch,0F0h, 27h,0E7h
		db	 6Ch, 06h,0C0h, 04h, 96h, 11h
		db	 51h, 54h, 01h, 51h, 50h, 50h
		db	 2Ah, 80h, 9Fh,0C8h,0E7h,0CEh
		db	0AAh, 02h, 80h, 80h,0AAh,0A8h
		db	0F6h, 80h,0D8h, 05h, 8Eh,0F5h
		db	 0Ch,0C0h, 0Ah,0AAh, 80h, 28h
		db	 66h, 8Ah, 08h, 88h, 28h, 02h
		db	 08h, 82h, 20h, 75h,0AAh,0A2h
		db	 20h, 01h, 1Fh,0C8h,0E7h,0C9h
data_709	dw	4544h, 5441h
data_710	dw	5015h, 0A02Ah
data_711	dw	7D8h, 0EA05h
data_712	dw	0C018h, 115h
data_713	dw	9301h, 440h
		db	 04h, 45h, 04h, 11h, 01h, 15h
		db	0FCh, 81h, 51h, 40h, 01h, 9Fh
		db	0C8h,0E7h,0CCh,0A0h, 28h, 08h
		db	0A2h, 02h, 82h,0A0h,0A2h, 65h
		db	0A0h, 2Fh, 0Ah,0DBh,0BCh, 3Fh
		db	0C0h, 02h,0A0h, 80h,0E3h, 20h
		db	 80h, 88h, 08h,0A8h,0AAh, 88h
		db	 7Ch, 4Ah,0A2h, 03h, 1Fh,0C8h
		db	0E7h,0CCh, 04h, 15h, 11h, 11h
		db	 55h, 50h, 65h,0A0h, 04h, 10h
		db	 06h, 91h, 41h,0F8h, 7Bh,0C0h
		db	 05h, 10h, 40h,0D5h, 70h, 40h
		db	 05h, 02h, 01h,0C5h, 10h, 01h
		db	0F8h, 94h, 01h, 51h, 44h, 9Fh
		db	0C8h,0E7h,0C4h, 28h,0A2h, 02h
		db	0AAh, 88h,0AAh,0E5h,0A0h, 01h
		db	 68h, 15h, 64h, 07h, 80h, 0Ah
		db	 02h, 80h,0E2h,0E8h,0A9h, 01h
		db	 50h, 22h,0ADh, 81h,0DDh, 4Ah
		db	 29h, 1Fh,0C8h,0E7h,0C8h, 15h
		db	 01h, 55h, 40h, 05h, 14h, 71h
		db	0A0h, 05h, 01h, 5Eh, 48h, 0Fh
		db	44h
loc_336:
		push	ax
		adc	[bx+di-3Ch],al
		call	sub_41
		add	[bx+si],cx
		xchg	bx,ax
;*		fsub	qword ptr [bx+di+40h]	; st = st - memory
		db	0DCh, 61h, 40h		;  Fixup - byte match
		lahf				; Load ah from flags
		db	0C8h,0E7h,0C4h, 08h, 80h, 0Ah
		db	 8Ah, 80h, 08h,0C0h,0A0h, 01h
		db	0E0h, 07h, 82h, 20h, 1Eh, 9Ah
		db	 1Eh, 28h, 28h, 01h,0A2h, 74h
		db	 1Ch, 20h, 0Ch, 30h,0D7h, 07h
		db	0BEh, 52h, 80h, 01h, 1Fh,0C8h
		db	0E7h,0C8h, 01h, 45h, 01h, 44h
		db	 55h, 10h, 44h, 04h, 74h, 07h
		db	 9Eh, 4Eh, 1Eh, 3Dh, 10h, 1Fh
		db	 1Ch, 33h, 50h, 01h, 10h, 01h
		db	0C4h, 6Ah,0C3h, 60h,0FCh, 19h
		db	0BDh, 28h, 55h, 50h, 9Fh,0C8h
		db	0E7h,0C4h, 8Ah, 08h, 8Ah, 82h
		db	 0Ah, 02h, 82h, 28h, 1Ah, 03h
		db	 0Ch, 66h, 84h, 1Ah, 08h, 1Eh
		db	0ACh, 66h, 0Ah, 0Ah, 08h, 22h
		db	 80h, 80h, 88h, 81h,0A8h, 35h
		db	 06h, 10h, 80h,0F2h, 13h, 6Dh
		db	 30h, 80h, 02h, 81h, 9Fh,0C8h
		db	0E7h,0C8h, 10h, 05h, 50h, 51h
		db	 25h, 01h, 10h,0C2h, 01h, 37h
		db	 65h,0FEh, 51h, 01h, 04h, 15h
		db	 01h, 41h, 40h, 45h,0D0h, 1Fh
		db	 80h, 0Fh,0D2h, 04h, 02h, 36h
		db	 2Eh, 6Ch, 9Ch, 51h, 9Fh,0C8h
		db	0E7h,0CCh, 22h,0A2h, 20h, 88h
		db	 20h,0AAh, 80h, 02h, 12h, 80h
		db	 08h, 20h,0C1h, 04h, 12h, 3Ch
		db	0B8h, 34h, 20h, 08h,0A0h, 28h
		db	 02h, 2Bh, 28h, 1Bh, 66h, 06h
		db	 50h, 20h, 41h, 16h,0CCh,0EEh
		db	 89h, 9Fh,0C8h,0E7h,0C8h, 05h
		db	'A@@UUQI@'
		db	 10h, 40h, 30h,0A0h, 06h, 7Ah
		db	0E0h, 76h, 11h, 14h, 05h, 55h
		db	 10h, 51h, 55h, 11h,0D0h, 0Dh
		db	 81h, 20h, 04h, 2Dh, 8Ch,0D7h
		db	 05h, 10h, 9Fh,0C8h,0E7h,0CEh
		db	 0Ah, 28h, 02h, 02h, 82h,0A0h
		db	 88h, 08h, 84h, 20h, 80h, 0Ch
		db	 06h, 14h, 01h, 81h, 5Ch, 02h
		db	 80h,0A0h, 0Ah, 28h, 28h, 0Ah
		db	 03h, 80h, 0Ch,0E0h, 01h, 71h
		db	 49h, 8Ch, 6Bh,0AAh, 08h, 23h
		db	 9Fh,0C8h,0E7h,0C8h, 08h,0D1h
		db	 44h, 14h, 44h, 43h, 40h, 10h
		db	 40h, 06h, 06h, 3Ch, 03h, 68h
		db	 05h, 08h,0D0h, 11h, 52h, 50h
		db	 0Ch, 70h, 20h, 32h,0B3h, 0Ch
		db	0CBh, 91h, 50h, 01h, 9Fh,0C8h
		db	0E7h,0C0h, 05h, 85h, 80h, 01h
		db	0A2h, 88h, 8Bh,0A0h, 20h, 20h
		db	 0Ch, 06h, 01h, 04h, 0Ah, 63h
		db	 18h, 80h, 41h, 40h, 3Ah, 8Ah
		db	0A0h,0A1h,0A0h, 06h, 68h, 47h
		db	 80h, 03h,0D9h, 73h, 0Dh, 8Bh
		db	 28h, 8Ah,0ABh, 9Fh,0C8h,0E7h
		db	0C0h, 01h, 09h, 6Eh, 0Ch, 04h
		db	 05h, 07h,0A0h, 10h, 08h, 06h
		db	 02h, 52h, 01h, 8Fh, 69h, 48h
		db	 50h, 08h, 44h, 02h, 50h, 06h
		db	 34h, 13h,0F6h, 66h, 07h, 8Ah
		db	0D1h, 44h, 15h, 9Fh,0C8h,0E7h
		db	0C0h, 0Ah, 02h, 20h,0EAh, 22h
		db	 03h, 80h, 20h, 1Eh, 8Ch, 06h
		db	 04h, 86h, 18h, 29h, 91h, 10h
		db	 58h,0C0h, 10h,0A0h, 04h,0A0h
		db	 06h, 1Ah, 26h, 6Fh,0C0h, 3Fh
		db	 66h, 0Bh, 2Ah,0ABh, 9Fh,0C8h
		db	0E7h,0CAh, 05h, 08h, 41h, 80h
		db	 10h, 10h,0C0h, 0Ch, 09h, 06h
		db	0FCh, 0Ch,0D2h, 82h, 24h, 30h
		db	 08h, 01h, 15h, 01h, 43h, 10h
		db	 06h, 0Dh, 46h, 36h,0F0h, 37h
		db	0E3h, 14h,0D0h, 40h, 45h, 9Fh
		db	0C8h,0E7h,0C4h, 83h, 01h, 40h
		db	 20h, 2Ch, 09h, 18h, 0Ch, 04h
		db	 8Dh, 8Ah, 7Bh, 45h, 11h, 20h
		db	 06h, 40h, 08h,0AAh, 20h, 04h
		db	 88h, 03h, 06h, 80h, 86h, 33h
		db	0CCh, 01h,0ECh, 1Bh, 29h, 08h
		db	 80h, 03h, 9Fh,0C8h,0E7h,0C0h
		db	 09h, 0Ch, 84h, 30h, 10h, 08h
		db	 28h, 0Ch, 08h, 53h, 80h, 19h
		db	 98h, 08h, 09h, 81h,0A5h, 14h
		db	 01h, 40h, 03h, 01h, 03h, 01h
		db	 80h, 06h, 3Bh,0F7h,0F6h, 53h
		db	 54h, 01h, 54h, 9Fh,0C8h,0E7h
		db	0C0h, 12h, 30h, 30h,0E5h, 80h
		db	 08h, 02h, 21h, 0Ch, 04h, 2Dh
		db	 80h,0C6h, 18h, 40h, 53h,0B0h
		db	 6Eh, 20h,0A0h,0A8h, 2Ch, 80h
		db	 83h, 0Ch, 03h, 31h, 4Bh, 80h
		db	 7Bh,0A4h, 08h,0ABh, 9Fh,0C8h
		db	0E7h,0C0h, 24h, 60h, 0Ah,0E0h
		db	0E0h, 10h, 04h, 04h, 80h, 0Ch
		db	 8Bh, 0Ah, 3Ch, 18h, 82h, 48h
		db	 36h, 1Ah, 40h, 50h, 18h, 40h
		db	 43h, 06h, 01h,0BAh,0A5h, 60h
		db	 6Dh,0ECh, 01h, 5Bh, 80h, 01h
		db	 10h, 9Fh,0C8h,0E7h,0C0h, 01h
		db	 26h, 02h, 02h,0F0h, 08h, 02h
		db	 0Ch, 0Ch, 6Fh, 06h, 18h, 19h
		db	 12h, 10h, 07h, 8Dh, 20h, 32h
		db	0A0h, 23h, 37h,0A3h, 15h, 58h
		db	0B0h, 36h,0F1h, 82h,0E8h, 0Ah
		db	 2Bh, 9Fh,0C8h,0E7h,0C0h, 12h
		db	 30h, 0Eh, 40h, 04h, 08h, 18h
		db	0DBh, 17h,0D4h, 30h, 10h, 20h
		db	 01h,0E3h,0C0h, 64h, 44h, 13h
		db	0F7h, 04h,0AAh,0A4h, 58h, 32h
		db	0B0h, 30h, 95h, 40h, 44h, 9Fh
		db	0C8h,0E7h,0C0h, 90h,0C0h, 22h
		db	 08h, 20h, 02h, 40h, 18h, 79h
		db	 9Fh,0E0h, 60h, 80h, 04h, 01h
		db	0B0h, 68h, 0Ah, 0Bh, 03h,0DAh
		db	 53h, 79h, 58h,0A4h, 31h, 70h
		db	 0Dh, 80h, 08h, 09h, 9Fh,0C8h
		db	0E7h,0C0h, 08h, 46h, 45h, 10h
		db	 01h, 80h, 60h, 51h,0DCh, 60h
		db	0D4h, 44h, 04h, 80h, 6Ch, 70h
		db	 05h, 07h, 0Dh,0E3h, 0Eh,0E6h
		db	0BAh, 52h, 32h,0B0h, 03h,0C1h
		db	 55h, 9Fh,0C8h,0E7h,0CFh, 42h
		db	 60h, 80h, 28h, 40h, 60h, 20h
		db	 40h, 03h,0A0h,0ABh, 80h,0E8h
		db	0C0h, 1Bh,0E0h, 02h, 8Bh, 1Fh
		db	0BDh, 9Dh,0C3h, 19h, 29h, 6Bh
		db	 70h, 01h, 92h,0A0h,0A3h, 1Fh
		db	0C8h,0E7h,0C9h, 60h, 04h, 26h
		db	0E0h, 08h, 08h, 10h, 04h, 08h
		db	 30h, 51h, 80h,0C0h, 60h, 07h
		db	 80h,0D0h, 04h, 45h,0FEh,0D7h
		db	0DBh, 06h, 30h,0D0h, 18h,0B0h
		db	0D8h, 15h, 41h, 9Fh,0C8h,0E7h
		db	0CEh, 04h, 44h, 80h, 08h, 18h
		db	 0Ch, 90h, 03h, 30h, 03h, 20h
		db	 08h, 0Ah, 3Fh, 57h,0ECh, 06h
		db	 61h, 28h, 3Eh, 60h, 6Ch, 02h
		db	 01h, 1Fh,0C8h,0E7h,0CDh, 05h
		db	 80h, 01h, 06h, 04h, 04h, 80h
		db	0C0h, 61h, 04h, 40h, 20h, 03h
		db	0B8h, 0Ch, 40h, 10h, 55h,0F7h
		db	 53h, 80h, 07h, 80h,0D0h, 76h
		db	0C0h, 36h, 14h, 29h, 9Fh,0C8h
		db	0E7h,0CEh, 28h,0B0h, 02h, 28h
		db	 40h, 60h, 50h,0C1h,0A0h, 02h
		db	 84h, 03h,0F6h, 1Ah,0A0h, 20h
		db	 51h,0FDh, 57h, 80h, 01h, 28h
		db	0EFh, 1Bh, 01h, 9Fh,0C8h,0E7h
		db	0C8h, 11h, 20h, 01h, 50h, 80h
		db	0F6h,0A0h, 02h, 20h, 02h, 83h
		db	 03h, 44h, 40h, 40h, 42h, 03h
		db	0CDh,0E5h, 40h, 40h, 2Bh,0E5h
		db	 53h, 80h,0D1h,0DEh, 0Dh, 80h
		db	 51h, 9Fh,0C8h,0E7h,0C4h,0E0h
		db	 02h,0A1h, 61h,0E0h, 10h, 40h
		db	 30h, 84h, 08h, 20h, 08h, 40h
		db	 07h, 83h, 22h, 80h, 81h,0DEh
		db	0B5h, 5Dh, 80h, 01h,0A3h,0BCh
		db	 06h, 60h, 01h, 9Fh,0C8h,0E7h
		db	0C9h, 51h, 80h, 04h, 01h, 40h
		db	 80h, 32h, 80h, 21h, 04h, 22h
		db	 88h, 80h, 01h, 10h, 01h, 08h
		db	 02h, 26h,0C6h, 40h, 43h, 5Ch
		db	0D5h, 73h, 03h, 56h, 03h, 18h
		db	 01h, 9Fh,0C8h,0E7h,0C4h, 01h
		db	 08h, 04h, 02h, 10h, 12h,0C4h
		db	0B0h, 88h, 08h, 08h, 6Eh, 08h
		db	 80h, 0Ah, 81h,0DDh,0D5h, 6Ch
		db	 0Ch,0B8h, 02h, 16h, 01h, 9Fh
		db	0C8h,0E7h,0C8h, 02h, 10h, 08h
		db	 02h, 40h, 04h, 40h, 24h, 01h
		db	 28h, 46h, 44h, 0Ah,0A2h, 21h
		db	 15h, 3Ch,0D5h, 98h, 30h, 60h
		db	 0Fh, 01h, 9Fh,0C8h,0E7h,0C6h
		db	 84h, 08h, 10h, 02h, 40h, 02h
		db	 20h, 9Ah,0D0h, 08h, 24h, 22h
		db	 0Ah, 96h, 01h, 48h, 88h, 02h
		db	 3Fh, 55h,0F0h, 05h, 01h, 9Fh
		db	0C8h,0E7h,0C8h, 08h, 10h, 20h
		db	 02h, 40h, 14h, 18h, 03h, 80h
		db	 80h, 14h, 29h, 40h, 20h, 90h
		db	 40h, 2Ah, 55h, 80h, 60h, 07h
		db	 80h, 01h, 9Fh,0C8h,0E7h,0C4h
		db	 10h, 02h, 88h, 40h, 09h, 09h
		db	 20h, 01h, 0Ah, 55h, 02h, 02h
		db	 20h, 2Ah, 2Bh, 55h,0C0h, 0Ch
		db	 0Dh, 20h, 01h, 9Fh,0C8h,0E7h
		db	0C8h, 20h, 04h, 50h, 20h, 08h
		db	 40h, 04h, 0Bh,0A0h, 01h, 10h
		db	 05h, 0Ah, 88h, 40h, 40h, 57h
		db	 55h,0D2h, 67h, 05h, 05h, 37h
		db	 05h, 41h, 9Fh,0C8h,0E7h,0C4h
		db	 40h, 08h, 28h, 10h, 10h, 80h
		db	 0Bh, 64h, 10h, 20h, 0Ah, 05h
		db	 80h, 0Ah, 2Ah, 01h,0E3h, 55h
		db	 60h,0C9h,0C0h, 08h, 80h, 03h
		db	 0Eh, 20h, 01h, 9Fh,0C8h,0E7h
		db	0C8h, 80h, 54h, 11h, 02h, 84h
		db	 06h,0C0h, 05h, 0Bh, 05h, 40h
		db	 0Dh, 55h,0D0h, 49h,0A4h, 06h
		db	0C0h, 02h, 80h, 0Ch,0A9h, 10h
		db	 11h, 9Fh,0C8h,0E7h,0CDh, 80h
		db	 8Ah, 08h, 80h, 08h, 02h, 20h
		db	 30h, 60h, 25h,0DAh, 01h, 80h
		db	 18h,0B6h, 0Ah, 20h, 09h, 54h
		db	 08h, 08h, 88h, 60h, 80h, 1Bh
		db	 34h, 28h, 03h, 9Fh,0C8h,0E7h
		db	0CFh, 15h, 05h, 04h, 41h, 40h
		db	 40h, 33h, 0Eh, 84h, 80h, 80h
		db	 24h, 50h, 11h, 40h, 07h, 55h
		db	0C4h, 02h,0C0h, 80h, 02h, 80h
		db	 51h, 74h,0B2h, 50h, 9Fh,0C8h
		db	0E7h,0CAh, 2Ah, 02h, 80h, 82h
		db	 8Ah, 30h, 30h, 02h, 40h, 48h
		db	 20h,0A0h, 22h, 20h, 03h, 55h
		db	 42h, 28h, 42h, 05h,0DCh, 20h
		db	 56h,0A8h, 0Bh, 1Fh,0C8h,0E7h
		db	0C0h, 01h, 05h, 01h, 10h, 98h
		db	 06h, 06h, 90h, 0Ch, 01h, 11h
data_714	db	40h			; Data table (indexed access)
		db	0D5h, 60h, 40h, 18h, 02h, 80h
		db	 68h, 20h, 09h, 40h, 9Fh,0C8h
		db	0E7h,0C0h, 2Ah, 02h, 80h, 29h
		db	 30h, 01h, 81h, 80h, 48h, 06h
		db	 0Ah, 02h, 28h, 20h,0A0h, 95h
		db	 40h, 08h, 0Ch, 03h,0C0h, 32h
		db	 80h, 12h, 22h, 81h, 1Fh,0C8h
		db	0E7h,0C0h, 01h, 10h, 51h, 01h
		db	 40h, 16h, 18h, 02h, 40h, 60h
		db	 81h, 03h, 10h, 50h, 4Bh, 40h
		db	 75h, 57h, 80h, 8Ch, 01h,0E0h
		db	 18h, 20h, 9Fh,0C8h,0E7h,0C0h
		db	 08h, 08h, 02h, 0Ah,0A0h, 1Ch
		db	0C0h, 30h, 60h, 30h, 10h, 83h
		db	 0Ah, 20h,0A0h, 94h,0A0h, 35h
		db	 55h, 55h, 55h,0D8h, 02h, 80h
		db	 0Ch, 06h,0D0h, 28h, 0Bh, 1Fh
		db	0C8h,0E7h,0C0h, 41h, 01h, 14h
		db	 05h, 44h, 21h, 98h,0C0h,0C1h
		db	 58h,0C3h, 54h, 01h, 41h, 23h
		db	 40h, 75h, 55h, 55h, 52h,0C0h
		db	 04h, 40h, 03h, 18h,0E0h, 50h
		db	 50h, 9Fh,0C8h,0E7h,0C2h, 20h
		db	 08h, 28h, 02h, 80h, 0Bh, 18h
		db	 60h, 0Ch, 33h, 0Ah,0A8h, 02h
		db	'"DP(5UUV0'
		db	 02h, 20h, 01h,0E0h,0D0h, 01h
		db	 1Fh,0C8h,0E7h,0C5h, 11h, 40h
		db	 44h, 01h, 40h, 04h,0C0h, 03h
		db	 18h,0ACh, 1Bh, 10h, 01h, 46h
		db	0C4h, 8Ah, 08h, 14h, 0Dh, 55h
		db	 55h, 55h, 40h, 04h, 40h,0E5h
		db	 9Fh,0C8h,0E7h,0CAh, 82h, 20h
		db	 28h,0A0h, 05h
data_715	dw	6B0h			; Data table (indexed access)
		db	 04h, 92h, 1Eh, 20h, 02h, 8Dh
		db	 89h, 10h, 22h, 09h, 55h, 55h
		db	 55h, 50h, 02h, 20h,0D0h, 01h
		db	 1Fh,0C8h,0E7h,0C1h, 01h, 40h
		db	 14h, 50h, 02h, 61h, 8Ch, 01h
		db	0C2h, 40h, 05h, 10h, 52h, 08h
		db	 11h, 07h, 55h, 55h, 55h, 54h
		db	 03h,0C0h, 01h,0A0h, 9Fh,0C8h
		db	0E7h,0C2h, 02h, 20h, 22h, 3Ch
		db	 10h, 03h, 55h, 20h, 02h, 8Dh
		db	0A4h, 04h, 0Ah, 03h, 55h, 55h
		db	 55h, 50h, 01h,0E0h, 01h,0C0h
		db	 28h, 01h, 1Fh,0C8h,0E7h,0C1h
		db	 01h, 40h, 14h, 1Ch, 60h, 05h
		db	 04h, 50h, 05h, 1Ah, 52h, 08h
		db	 11h, 02h, 55h, 55h, 55h, 54h
		db	 02h, 80h, 03h, 85h, 05h, 9Fh
		db	0C8h,0E7h,0C2h,0A0h, 0Ah, 09h
		db	 80h,0C0h, 01h, 40h, 02h, 80h
		db	 08h, 02h,0A5h, 04h, 04h, 08h
		db	 81h,0D5h, 55h, 55h, 50h, 04h
		db	 40h, 07h, 01h, 1Fh,0C8h,0E7h
		db	0C1h, 50h, 05h, 04h, 60h, 01h
		db	 80h, 02h, 80h, 10h, 01h, 45h
		db	 18h,0D8h, 02h, 10h, 40h,0D5h
		db	 55h, 55h, 54h, 06h, 60h, 06h
		db	 80h, 50h, 11h, 9Fh,0C8h,0E7h
		db	0C2h,0A0h, 02h, 80h, 04h,0D8h
		db	 06h, 05h,0A0h, 20h, 02h, 88h
		db	0A4h, 44h, 04h, 08h, 80h, 95h
		db	 55h, 55h, 50h, 03h, 60h, 07h
		db	 02h, 09h, 1Fh,0C8h,0E7h,0C1h
		db	 50h, 01h, 40h, 08h, 1Bh, 0Ch
		db	 40h, 11h, 15h, 58h, 28h, 02h
		db	 04h, 40h,0ADh, 55h, 55h, 40h
		db	 0Fh, 54h, 50h, 9Fh,0C8h,0E7h
		db	0C2h, 28h,0B4h, 10h, 03h, 80h
		db	 22h, 28h, 84h, 14h, 01h, 02h
		db	 20h, 35h, 55h, 55h, 0Dh, 8Ah
		db	 21h, 1Fh,0C8h,0E7h,0C1h, 14h
		db	 58h,0C0h, 05h, 0Bh, 14h, 44h
		db	 51h, 08h, 80h, 01h, 10h, 25h
		db	 55h, 54h, 5Eh, 05h, 14h, 9Fh
		db	0C8h,0E7h,0CAh, 80h, 0Ah, 01h
		db	 6Ch, 01h, 80h, 14h,0A8h,0AAh
		db	0A9h, 40h, 88h, 1Dh, 55h, 55h
		db	 60h, 03h, 31h,0A8h, 22h, 21h
		db	 1Fh,0C8h,0E7h,0C5h, 40h, 05h
		db	 9Bh, 06h, 89h, 51h, 05h, 58h
		db	0D0h, 44h, 0Dh, 55h, 54h, 18h
		db	 03h, 03h, 30h, 62h, 14h, 9Fh
		db	0C8h,0E7h,0CAh, 80h, 02h, 81h
		db	 03h, 60h, 18h, 01h, 10h,0A8h
		db	0DAh,0B0h, 68h, 22h, 03h, 55h
		db	 5Ch, 84h, 36h, 64h, 02h, 83h
		db	 9Fh,0C8h,0E7h,0C5h, 40h, 01h
		db	 60h, 66h, 30h, 10h, 11h, 51h
		db	 05h, 20h, 34h, 14h, 07h, 55h
		db	 80h, 4Eh,0FDh, 50h, 9Fh,0C8h
		db	0E7h,0C8h,0A0h, 05h,0B0h, 06h
		db	 1Eh, 80h, 2Ah,0AAh, 5Bh,0D4h
		db	 80h, 03h, 5Ch, 08h, 8Eh, 01h
		db	 1Fh,0C8h,0E7h,0C4h, 50h, 08h
		db	 6Ch, 03h, 63h, 28h, 04h, 54h
		db	 11h,0A0h, 80h, 56h, 40h, 10h
		db	 40h, 18h, 60h,0ACh, 40h, 9Fh
		db	0C8h,0E7h,0C8h, 2Ch, 19h, 80h
		db	 19h, 83h, 28h, 08h, 8Ah,0AAh
		db	 5Bh, 20h, 54h, 08h, 06h, 01h
		db	 08h, 30h, 03h, 06h, 2Ah, 01h
		db	 1Fh,0C8h,0E7h,0C4h, 3Eh, 03h
		db	 0Ch,0CCh, 01h, 80h, 14h, 40h
		db	 01h, 16h, 91h, 88h, 80h, 05h
		db	 55h, 55h, 64h, 01h, 80h, 24h
		db	 30h, 01h, 82h, 44h, 14h, 9Fh
		db	0C8h,0E7h,0C8h, 4Dh, 80h, 0Ch
		db	 60h, 01h, 80h, 80h, 02h, 02h
		db	 2Ah, 51h, 0Dh, 55h, 55h, 40h
		db	 80h, 06h, 18h, 30h, 61h, 22h
		db	0A0h, 01h, 1Fh,0C8h,0E7h,0CCh
		db	 03h, 30h, 03h, 06h, 01h, 80h
		db	 01h, 50h, 54h,0A5h, 55h, 28h
		db	 80h, 05h, 55h, 55h, 5Ch, 10h
		db	 7Dh, 0Ch, 06h, 18h, 30h, 94h
		db	 9Fh,0C8h,0E7h,0CCh,0C3h,0C1h
		db	 80h,0C0h, 02h,0A0h,0A9h
		db	'UiP', 0Dh, 'UUT', 8
		db	 03h, 5Ch, 03h, 03h, 18h, 03h
		db	 51h,0A0h, 01h, 1Fh,0C8h,0E7h
		db	0C0h, 60h, 01h, 80h
		db	'UR ', 8, 'UUUUa'
		db	 07h, 52h, 60h, 01h,0B0h, 0Ch
		db	 29h,0D0h, 54h, 9Fh,0C8h,0E7h
		db	0CCh, 60h,0AAh,0A4h,0D5h, 55h
		db	 55h, 55h, 40h, 80h, 1Dh, 55h
		db	 60h, 18h,0F0h, 30h, 15h, 80h
		db	 0Bh, 9Fh,0C8h,0E7h,0CCh, 60h
		db	 14h, 52h, 05h, 55h, 55h, 55h
		db	 55h, 5Ch, 10h, 0Dh, 55h, 57h
		db	 06h,0A0h,0C1h, 77h,0D0h, 01h
		db	 9Fh,0C8h,0E7h,0CCh, 60h, 03h
		db	 06h, 28h,0A4h, 0Dh, 55h, 55h
		db	 55h, 55h, 54h, 08h, 1Dh, 55h
		db	 55h, 48h,0C0h, 03h, 06h, 07h
		db	 80h, 2Ah, 21h, 9Fh,0C8h,0E7h
		db	0CCh, 30h, 01h, 80h,0C0h, 50h
		db	 58h, 05h, 55h, 55h, 55h, 55h
		db	 55h,0D0h, 0Dh, 55h, 55h, 43h
		db	 60h, 03h, 18h, 06h,0C1h, 04h
		db	 10h, 9Fh,0C8h,0C0h, 28h, 30h
		db	 18h, 30h, 28h,0A4h, 0Dh, 55h
		db	 55h, 55h, 55h, 55h, 48h, 1Dh
		db	 55h, 55h, 50h, 78h, 06h, 60h
		db	 03h,0C2h,0A8h, 48h, 80h, 68h
		db	 18h,0C3h
		db	'PXUUUUUUp', 0Dh, 'UUT<', 0Ch
		db	0C0h, 03h, 94h, 01h, 40h, 08h
		db	0E4h,0C0h, 18h, 06h, 0Ch, 28h
		db	0A4h,0D5h
		db	'UUUUPH', 9, 'UUU'
		db	 1Eh, 19h, 80h, 03h, 40h,0C8h
		db	 03h,0C0h,0E4h,0C0h, 0Ch, 18h
		db	 30h, 16h,0D8h, 05h
		db	'UUUUT0', 0Dh, 'U'
		db	55h			; Data table (indexed access)
		db	 55h, 40h, 96h, 03h, 81h, 41h
		db	 4Ah, 9Eh, 03h,0C0h,0E4h, 01h
		db	0C8h, 1Eh, 03h,0C0h,0E4h, 01h
		db	0C8h, 1Eh, 03h, 27h, 4Eh, 06h
		db	0E4h, 01h,0C8h,0C0h, 48h, 80h
		db	 08h,0DCh, 2Ch, 00h, 00h, 00h
		db	 07h,0D3h,0DCh, 0Ch,0D3h, 00h
		db	 27h, 01h, 7Fh,0D3h,0FFh, 02h
		db	0F8h,0D3h,0FFh, 03h,0FEh, 1Fh
		db	0D3h,0FFh, 02h,0FEh, 0Fh,0D3h
		db	0FFh, 03h, 07h
		db	0F9h			; Data table (indexed access)
		db	0D3h,0FFh, 02h, 83h,0D3h,0FFh
		db	 03h,0C7h,0FEh, 7Fh,0D3h,0FFh
		db	 01h,0F3h,0FFh
loc_337:
		jg	$-2Bh			; Jump if >
		inc	word ptr [bx+di]
		stc				; Set carry flag
		push	word ptr ds:[0FFD3h][bx]
;*		add	sp,di
		db	 01h,0FCh		;  Fixup - byte match
		db	0FFh,0DBh,0D3h,0FFh, 01h,0FEh
		db	 7Fh,0EDh,0D3h,0FFh, 02h, 3Fh
		db	0F4h,0D3h,0FFh, 02h, 9Fh,0FAh
		db	 6Fh,0D3h,0FFh, 01h,0CFh,0FDh
		db	 3Fh,0D3h,0FFh, 01h,0E7h,0FEh
		db	0DBh,0D3h,0FFh, 01h
loc_338:
		db	0F3h,0FFh, 6Dh,0D3h,0FFh, 01h
		db	0F9h,0FFh,0AAh,0D3h,0FFh, 01h
		db	0FCh,0FFh,0D7h, 7Fh,0D3h,0FFh
		db	 00h,0FEh, 7Dh,0EAh, 9Fh,0D3h
		db	0FFh, 01h, 3Fh,0F5h, 5Fh,0D3h
		db	0FFh, 01h, 9Fh, 73h,0AFh,0D3h
		db	0FFh, 01h,0CFh,0B9h,0F7h,0D3h
		db	0FFh, 01h,0E7h,0D8h,0FBh,0D3h
		db	0FFh, 01h,0F3h,0ECh,0FDh,0FDh
		db	0D3h,0FFh, 00h,0F9h,0EEh
		db	7Eh
loc_339:
		sar	di,cl			; Shift w/sign fill
;*		add	sp,di
		db	 01h,0FCh		;  Fixup - byte match
		db	0FEh, 3Fh, 7Fh,0D3h,0FFh, 00h
		db	0FEh, 7Fh, 1Fh,0BFh,0D3h,0FFh
		db	 01h, 3Fh, 8Fh,0D9h,0EFh,0C6h
		db	 4Fh, 7Fh, 9Fh, 87h,0EDh
data_716	db	0F0h			; Data table (indexed access)
		db	 66h, 20h, 3Fh,0CFh,0C3h,0FEh
		db	 08h, 60h, 00h, 03h,0E7h,0E1h
		db	0FEh, 0Ch, 10h, 00h, 00h,0F3h
		db	0E0h,0FFh, 02h, 1Ch, 00h, 3Eh
		db	 19h,0F0h, 6Fh, 83h, 04h, 00h
		db	 7Fh, 8Ch,0F8h, 37h,0D0h, 86h
		db	 00h, 1Fh,0F2h, 74h, 1Bh,0FCh
		db	 63h, 00h, 03h,0FDh, 3Ah, 6Dh
		db	0FAh, 31h, 80h, 00h, 3Fh, 99h
		db	 36h,0F8h, 1Eh,0C0h, 00h, 07h
		db	0CFh, 9Bh, 7Ch, 07h,0D0h, 00h
		db	 00h,0E7h,0C7h, 9Eh, 47h,0E8h
		db	 7Ch, 00h, 32h,0E3h,0CFh, 23h
		db	 94h, 00h, 00h, 09h,0F3h,0E7h
		db	 91h,0D2h, 00h, 00h, 34h,0F1h
		db	0E3h, 88h,0EBh,0FCh, 7Ch, 0Eh
		db	 78h,0F1h,0C4h, 75h,0B7h,0FCh
		db	 07h, 38h, 70h,0E2h,0B9h,0C6h
		db	 73h,0E1h, 9Ch, 38h, 31h, 5Fh
		db	 6Fh, 34h, 10h, 4Ah, 1Dh,0D8h
		db	0AFh,0FBh, 86h,0D6h, 25h, 0Eh
		db	0ECh, 57h,0DFh,0CFh,0EBh,0D2h
		db	 87h,0BEh, 23h,0FDh,0FFh,0FCh
		db	 09h,0C3h, 5Dh, 11h,0FFh, 00h
		db	 38h, 5Ch,0E1h,0DFh,0E8h,0FFh
		db	 80h, 0Ah, 9Ah, 30h,0DFh, 14h
		db	 7Fh,0C2h, 03h,0BFh, 38h, 6Fh
		db	 82h, 3Fh,0E6h, 03h,0DFh, 9Ch
		db	 3Fh,0C9h, 1Fh,0F7h, 7Dh,0F0h
		db	0CEh, 1Dh,0FEh, 8Fh,0FFh,0C0h
		db	0FFh,0A7h, 0Fh,0F2h, 47h,0FFh
		db	 00h, 3Fh,0F2h, 83h, 78h,0A3h
		db	0FEh, 00h, 7Fh,0F9h, 83h
		db	3Ch

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_89:
		xchg	cx,ax
		inc	word ptr ds:[0BC0Eh][bx+si]
		db	0C1h, 9Eh, 2Ah,0FFh, 80h, 0Fh
		db	0DEh, 40h, 9Fh, 25h, 7Fh,0E0h
		db	 01h, 9Fh, 00h, 4Fh, 8Ah,0BCh
		db	0F0h, 00h,0FDh, 80h, 2Fh,0C9h
		db	 5Fh, 60h, 00h,0F3h,0C0h, 17h
		db	0E2h, 8Fh,0B4h, 00h, 01h,0E0h
		db	 0Fh,0F2h, 47h,0FFh, 00h, 00h
		db	0D0h, 07h,0F8h,0A3h,0FDh, 80h
		db	 04h,0F8h, 03h,0D0h, 11h,0FCh
		db	0C0h, 00h,0C4h, 01h,0CFh,0F8h
		db	0FEh, 70h, 00h, 16h, 00h,0CCh
		db	 0Ch, 7Fh, 38h, 00h, 01h, 00h
		db	 66h, 06h, 3Fh, 9Ch, 00h, 01h
		db	 80h, 05h,0FFh, 1Fh,0EEh, 00h
		db	 00h, 40h, 05h, 80h, 8Fh, 97h
		db	 00h, 00h, 20h, 0Dh,0FFh,0C7h
		db	 7Bh, 80h, 0Ch, 10h, 0Dh,0A0h
		db	 63h,0E5h,0CCh, 01h, 08h, 0Ah
		db	 9Fh,0F1h,0FBh,0E6h, 18h, 04h
		db	 05h, 8Fh,0F8h,0FCh,0F3h
loc_340:
		add	byte ptr [bp+si],5
		test	cl,[si]
		jg	loc_340			; Jump if >
		inc	ax
		adc	[si],ax
		retn	3F06h
sub_88		endp

			                        ;* No entry point to code
		cld				; Clear direction
		mov	al,data_580
		loopz	$+5			; Loop if zf=1, cx>0

		pop	ds
		db	0FEh, 60h, 42h, 42h,0F0h, 81h
		db	 8Fh,0FDh, 30h, 00h, 22h,0F8h
		db	 40h,0C7h,0FFh, 98h, 00h,0D2h
		db	 7Ch, 20h, 63h,0FFh,0CCh, 00h
		db	 09h, 7Ah, 10h, 31h,0FEh,0E6h
		db	 00h, 04h,0FAh, 08h, 18h,0FFh
		db	 53h, 00h, 02h, 7Ah, 04h, 0Ch
		db	 7Fh,0F9h, 80h, 01h, 3Eh, 02h
		db	 06h, 3Fh,0F4h,0C0h, 01h, 9Eh
		db	 01h, 05h, 1Fh,0FEh, 60h, 00h
		db	 4Eh, 00h, 84h, 8Fh,0FFh, 30h
		db	 00h, 26h, 00h, 42h, 27h,0FFh
		db	 98h, 00h, 12h, 00h, 21h,0BFh
		db	0FFh,0FCh, 00h, 09h, 00h, 1Dh
		db	 4Bh,0FBh,0CFh, 70h, 04h, 80h
		db	 0Eh,0A1h,0FFh,0F5h, 06h, 02h
		db	 40h, 07h, 8Ah, 7Eh,0FBh, 81h
		db	 01h, 20h, 03h, 5Ch, 2Fh, 7Dh
		db	0C0h, 04h, 90h, 01h, 04h, 13h
		db	0BEh,0E0h, 20h, 48h, 00h,0C0h
		db	 0Bh, 9Fh, 7Eh, 00h,0E4h, 00h
		db	 40h, 0Ch,0CFh,0BBh,0D6h,0F2h
		db	 00h, 20h, 10h, 66h,0DDh, 70h
		db	0D9h, 00h,0F0h, 01h, 3Bh,0EFh
		db	0FCh, 0Ch, 80h, 64h, 0Ch,0A9h
		db	0B7h,0FFh,0AAh, 41h,0D2h, 00h
		db	 06h,0FBh,0FFh,0F1h, 20h,0F0h
		db	 00h, 07h,0FDh,0EFh,0F0h, 90h
		db	 70h, 07h, 11h,0BEh,0FFh,0EFh
		db	 48h, 20h, 00h, 80h, 5Fh, 7Bh
		db	0FEh, 24h, 20h, 00h, 00h, 5Fh
		db	0BFh,0FEh, 12h, 10h, 00h, 23h
		db	 1Fh,0D7h,0FFh, 09h, 08h, 00h
		db	 11h,0EDh,0EFh,0FFh, 04h, 98h
		db	 00h, 00h, 03h,0F7h,0FFh, 3Eh
		db	 48h, 00h, 00h, 16h, 1Bh,0FFh
		db	0DFh, 28h, 00h, 06h, 01h, 7Dh
		db	0FFh,0FFh, 9Ch, 00h, 00h,0C0h
		db	0F6h,0FFh,0FFh,0C8h, 00h, 00h
		db	 04h, 2Fh,0FAh,0FFh,0C2h,0D3h
		db	 00h, 00h, 94h,0FDh,0FFh,0A1h
		db	 00h, 00h, 01h,0E1h,0FFh,0FFh
		db	0F0h,0D3h, 00h, 00h,0A0h, 0Fh
		db	0FFh,0FCh, 50h, 00h, 00h, 40h
		db	0BFh,0FFh,0F6h, 30h,0D3h, 00h
		db	 00h, 43h,0FEh,0BBh,0D3h, 00h
		db	 00h, 40h, 67h,0FFh, 51h, 9Eh
		db	 00h, 00h, 02h, 00h, 6Dh, 80h
		db	 06h, 00h, 00h, 01h, 09h,0ECh
		db	0C0h, 07h, 80h, 00h, 00h, 80h
		db	 0Eh, 00h, 03h, 40h,0D3h, 00h
		db	 00h, 6Dh, 80h, 01h,0F0h,0D3h
		db	 00h, 00h, 03h,0C0h, 00h,0F0h
		db	0D3h, 00h, 01h,0F8h, 00h, 7Ch
		db	0D3h, 00h, 01h, 20h, 00h, 18h
		db	0D3h, 00h, 01h, 7Fh, 80h, 1Eh
		db	0D3h, 00h, 00h, 03h,0FFh,0E0h
		db	 0Eh,0D3h, 00h, 00h, 07h,0FFh
		db	0FFh, 87h, 80h, 00h, 40h, 1Fh
		db	0FFh,0E6h,0E3h,0E0h, 00h, 02h
		db	 1Fh,0FFh, 00h, 61h,0E0h, 00h
		db	 03h,0FBh,0FFh, 00h, 00h,0C0h
		db	 00h, 01h,0FFh,0FFh, 00h, 00h
		db	 58h, 00h, 01h,0FFh,0FFh,0D3h
		db	 00h, 02h,0FFh,0FCh,0D3h, 00h
		db	 01h, 03h,0FFh,0FCh,0D3h, 00h
		db	 00h, 58h, 07h,0FFh,0FCh,0D3h
		db	 00h, 01h, 0Fh,0FFh,0FCh,0D3h
		db	 00h, 01h, 0Fh,0FFh,0FCh,0D3h
		db	 00h, 01h, 3Fh,0FFh,0F0h,0D3h
		db	 00h, 01h, 7Fh,0FFh,0F0h,0D3h
		db	 00h, 01h, 7Fh,0FFh,0E0h,0D3h
		db	 00h, 01h, 7Fh,0FFh,0F0h,0D3h
		db	 00h, 01h, 3Fh,0FFh,0F0h,0D3h
		db	 00h, 01h, 7Fh,0FFh,0E0h,0D3h
		db	 00h, 2Bh, 08h,0D3h, 00h, 03h
		db	 84h,0D3h, 00h, 03h, 42h,0D3h
		db	 00h, 03h, 25h,0D3h, 00h, 03h
		db	 1Fh, 80h,0D3h, 00h, 02h, 0Fh
		db	0C0h,0D3h, 00h, 02h, 07h,0E0h
		db	 08h,0D3h, 00h, 01h, 03h,0F0h
		db	 04h,0D3h, 00h, 01h, 01h,0E8h
		db	 02h,0D3h, 00h, 02h,0B4h, 01h
		db	0D3h, 00h, 02h, 58h, 00h,0B0h
		db	0D3h, 00h, 01h, 0Eh, 00h, 58h
		db	0D3h, 00h, 01h, 0Fh, 00h, 3Dh
		db	0D3h, 00h, 01h, 07h, 80h, 16h

locloop_341:
		adc	bl,0
		add	[bp+di],al
		db	0C0h, 0Fh, 60h,0D3h, 00h, 00h
		db	 01h,0E0h, 07h,0B0h,0D3h, 00h
		db	 01h,0F0h, 03h,0D8h,0D3h, 00h
		db	 01h, 78h, 01h,0ECh,0D3h, 00h
		db	 01h, 3Ch, 20h,0F6h,0D3h, 00h
		db	 01h, 1Eh, 10h, 6Bh,0D3h, 00h
		db	 01h, 0Fh, 08h, 3Ch, 80h,0D3h
		db	 00h, 00h, 07h, 84h, 1Eh, 40h
		db	0D3h, 00h, 00h, 03h,0C2h, 0Fh
		db	 20h,0D3h, 00h, 00h, 01h,0E1h
		db	 07h, 90h,0D3h, 00h, 01h,0F0h
		db	 83h,0E8h,0D3h, 00h, 01h, 78h
		db	 41h,0F4h, 08h,0D3h, 00h, 00h
		db	 3Ch, 20h,0FAh, 04h,0D3h, 00h
		db	 00h, 1Eh, 18h, 7Dh, 02h,0D3h
		db	 00h, 00h, 0Fh, 0Ch, 3Eh, 81h
		db	0D3h, 00h, 00h, 07h, 82h, 1Fh
		db	 40h, 80h, 00h, 00h, 03h,0C3h
		db	 0Fh,0A0h, 40h, 00h, 00h, 01h
		db	0E1h, 87h,0F0h, 20h,0D3h, 00h
		db	 00h,0F0h,0C3h,0F8h, 10h,0D3h
		db	 00h, 00h, 78h, 61h,0FCh, 08h
		db	0D3h, 00h, 00h, 3Ch, 20h,0FEh
loc_342:
		add	al,10h
		add	[bx+si],al
		push	ds
		adc	[bx+2],bh
		or	[bx+si],al
		add	[bx],cl
		add	[bx],bh
;*		add	word ptr [si],0
		db	 81h, 04h, 00h, 00h	;  Fixup - byte match
		pop	es
		sbb	byte ptr [bx],0C0h
		add	word ptr [bx+si],0
		add	ax,ax
;*		pop	cs			; Dangerous-8088 only
		db	0Fh			;  Fixup - byte match
		loopnz	locloop_345		; Loop if zf=0, cx>0

		add	[bx+si],al
;*		add	ax,sp
		db	 01h,0E0h		;  Fixup - byte match
		pop	es
;*                         lock	add	ds:data_1e[bx+si],al
		db	0F0h, 00h, 80h, 00h, 00h	;  Fixup - byte match
                           lock	add	di,cx
                           lock	inc	ax
		add	[bx+si],al
		js	loc_343			; Jump if sign=1
		cld				; Clear direction
		cld				; Clear direction
		and	[bx+si],al
		add	[si],bh
		or	al,0BEh
		push	es
		adc	[bx+si],al
		add	byte ptr ds:[7F06h],bl
		add	[si],cx
		add	[bx+si],al
;*		pop	cs			; Dangerous-8088 only
		db	0Fh			;  Fixup - byte match
		add	word ptr ds:[0C69Fh][bx],bp
		add	[bx+si],al
		pop	es
		sbb	bh,0CFh
		jcxz	$+2			; delay for I/O
		add	[bp+di],al
		db	0C0h,0F3h,0C7h,0F0h, 80h, 00h
loc_344:
;*		add	ax,sp
		db	 01h,0E0h		;  Fixup - byte match
		jnp	$-1Bh			; Jump if not parity
		clc				; Clear carry flag
		db	0C0h
		db	 00h, 00h,0F0h, 3Ch,0B1h,0FCh
		db	 60h, 00h, 00h, 78h, 1Ch, 78h
		db	0FEh, 30h, 00h, 00h, 3Ch, 0Eh
		db	 3Ch, 7Fh, 18h, 00h, 00h, 1Eh
		db	 07h, 1Eh, 3Fh, 80h, 00h, 00h
		db	 0Fh, 03h, 87h, 1Fh,0C6h, 00h
		db	 00h, 07h, 81h,0C3h, 8Dh,0F3h
		db	 00h, 00h, 03h,0C0h,0C0h,0C7h
		db	0F9h, 80h, 00h, 01h,0E0h, 60h
		db	 03h,0FCh,0C0h, 00h, 00h,0F0h
		db	 30h, 01h,0FEh, 60h, 00h, 00h
		db	 78h, 18h, 00h,0FFh, 30h, 00h
		db	 00h, 3Ch, 0Ch, 00h, 7Fh, 98h
		db	 00h, 00h, 1Eh, 06h, 00h, 3Fh
		db	0CCh, 00h, 00h, 0Fh, 03h, 00h

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_346:
		pop	ds
		out	0,al			; port 0, DMA-1 bas&add ch 0
		add	[bx],al
		add	byte ptr [bx+si],0Fh
		db	0F3h, 00h, 00h, 03h,0C0h, 00h
		db	 07h,0F9h, 80h, 00h, 01h,0E0h
		db	 40h, 03h,0FEh,0C0h, 00h, 00h
		db	0F0h, 60h, 01h,0FEh, 60h, 00h
		db	 00h, 78h, 30h, 00h,0FFh, 30h
		db	 00h, 00h, 3Ch, 38h, 00h, 7Fh
		db	0D8h, 00h, 00h, 1Eh, 3Ch, 00h
		db	 37h,0EDh, 00h, 00h, 0Fh, 1Eh
		db	 00h, 1Fh,0FEh,0C0h, 00h, 07h
		db	 9Fh, 00h, 0Fh,0FFh, 60h, 00h
		db	 03h,0CFh, 80h, 07h,0FFh, 30h
		db	 00h, 01h,0EFh,0C0h, 03h,0FFh
		db	 98h, 00h, 00h,0F7h,0E0h, 01h
		db	0FFh,0CEh, 06h, 00h, 7Fh,0F0h
		db	 00h,0FFh,0E7h, 01h, 80h, 3Fh
		db	0F0h, 00h, 7Fh,0FBh, 80h,0C0h
		db	 1Fh,0F0h, 00h, 3Fh,0E5h,0C0h
		db	 00h, 0Fh,0F0h, 00h, 1Fh,0DFh
		db	0E0h, 03h, 07h,0F8h, 00h, 0Fh
		db	0F8h,0F3h, 00h, 43h,0F8h, 00h
		db	 07h,0FEh, 79h, 86h, 01h,0FCh
		db	 00h, 03h,0FFh, 3Ch,0E0h, 00h
		db	0F8h, 00h, 01h,0FFh,0DEh, 70h
		db	 04h, 7Ch, 00h, 00h,0FFh,0EFh
		db	 18h, 03h, 3Ch, 00h, 00h, 7Fh
		db	0F7h, 98h, 10h, 9Eh, 00h, 00h
		db	 3Fh,0FFh, 4Ch, 00h, 0Fh, 00h
		db	 00h, 1Fh,0FFh,0E6h, 00h, 37h
		db	 80h, 00h, 0Fh,0FFh,0F3h, 00h
		db	 03h,0C0h, 00h, 07h,0FFh,0B9h
		db	 80h, 01h,0E0h, 00h, 03h,0FFh
		db	0D4h,0C0h, 00h,0F0h, 00h, 01h
		db	0FFh,0FEh, 20h, 00h, 78h, 00h
		db	 00h,0FFh,0FDh, 30h, 00h, 7Ch
		db	 00h, 00h, 3Fh,0FFh, 88h, 00h
		db	 1Eh, 00h, 00h, 3Fh,0FFh,0CCh
		db	 00h, 0Fh, 00h, 00h, 0Fh,0FFh
		db	0E2h, 00h, 07h, 80h, 00h, 6Dh
		db	0FFh,0F1h, 80h, 03h,0C0h, 00h
data_717	dw	0FE12h			; Data table (indexed access)
		db	0F2h,0DCh, 01h,0E0h, 00h, 88h
		db	 7Fh, 7Dh, 61h, 80h,0F0h, 00h
		db	 42h, 9Fh,0BEh,0E8h, 40h, 78h
		db	 00h, 07h, 0Bh,0DFh, 7Eh, 01h
		db	 3Ch, 00h, 01h, 04h,0EFh,0BFh
		db	 08h, 1Eh, 00h, 00h, 02h,0E7h
		db	0DFh, 98h, 3Fh, 00h, 00h, 03h
		db	 33h,0EFh,0F5h,0BFh, 80h, 00h
		db	 04h, 19h,0B7h,0DEh, 37h,0C0h
		db	 00h, 00h, 4Eh,0DBh,0FFh, 83h
		db	0E0h, 01h, 03h, 2Ah, 7Dh,0FFh
		db	0EAh,0F0h, 00h, 80h, 01h,0B6h
		db	0F3h,0FCh, 78h, 00h, 00h, 01h
		db	0DFh, 7Ah,0FCh, 3Ch, 00h, 01h
		db	0C4h, 6Fh,0BFh, 7Bh,0DEh, 00h
		db	 00h, 20h, 17h,0D9h, 3Fh, 8Fh
		db	0D3h, 00h, 00h, 17h,0EFh, 9Fh
		db	 87h, 80h, 00h, 08h,0C7h,0F4h
		db	0CBh,0C3h,0C0h, 00h, 04h, 7Bh
		db	 7Bh, 41h,0E1h,0E0h,0D3h, 00h
		db	 00h,0FDh,0E0h, 70h,0F0h, 00h
		db	 00h, 05h, 86h,0F0h, 10h, 78h
		db	 00h, 01h, 80h, 5Fh, 68h, 0Ch
		db	 3Ch, 00h, 00h, 30h, 3Dh,0B4h
		db	 00h, 1Eh, 00h, 00h, 01h, 0Bh
		db	0FEh, 00h, 0Fh, 80h, 00h, 00h
		db	 25h, 3Dh, 00h, 07h,0C0h, 00h
		db	 00h, 78h, 7Fh, 80h, 03h,0C0h
		db	 00h, 00h, 28h, 03h,0C0h, 01h
		db	0F4h, 00h, 00h, 10h, 2Fh,0E0h
		db	 00h,0FCh,0D3h, 00h, 00h, 10h
		db	0E0h, 37h,0F8h, 00h, 00h, 10h
		db	 19h,0F8h, 1Bh,0BFh, 80h, 00h
		db	 00h, 80h, 1Ah, 6Fh,0FFh, 80h
		db	 00h, 00h, 42h, 7Bh, 67h,0FFh
		db	0E0h, 00h, 00h, 20h, 03h,0FDh
		db	 77h,0D0h,0D3h, 00h, 00h, 1Bh
		db	 7Ch,0FFh,0FCh,0D3h, 00h, 01h
		db	0FFh,0FFh,0FCh,0D3h, 00h, 01h
		db	 3Fh, 7Fh,0FFh,0D3h, 00h, 01h
		db	 08h, 3Ch, 7Eh

locloop_347:
		rol	word ptr [bx+si],cl	; Rotate
		add	[bx],bx
		out	dx,al			; port 0, DMA-1 bas&add ch 0
		inc	word ptr ds:[0D3h][bx+si]
;*		add	bh,bh
		db	 00h,0FFh		;  Fixup - byte match
		stc				; Set carry flag
		aas				; Ascii adjust
		add	byte ptr [bx+si],0
;*		add	di,di
		db	 01h,0FFh		;  Fixup - byte match
		db	0FFh,0EFh,0E0h, 00h, 10h, 07h
		db	0FFh,0F9h,0BFh,0F8h, 00h, 00h
		db	 87h,0FFh,0C0h, 1Bh,0F8h, 00h
		db	 00h,0FEh,0FFh,0C0h, 01h,0F0h
		db	 00h, 00h, 7Fh,0FFh,0C0h, 00h
		db	0F6h, 00h, 00h, 7Fh,0FFh,0C0h
		db	 00h, 78h, 00h, 00h, 3Fh,0FFh
		db	 00h, 00h, 3Ch, 00h, 00h,0FFh
		db	0FFh, 00h, 00h, 1Eh, 16h, 01h
		db	0FFh,0FFh, 00h, 00h, 0Fh, 00h
		db	 03h,0FFh,0FFh, 00h, 00h, 07h
		db	 80h, 03h,0FFh,0FFh, 00h, 00h
		db	 03h,0C0h, 0Fh,0FFh,0FCh, 00h
		db	 00h, 01h,0E0h, 1Fh,0FFh,0FCh
		db	0D3h, 00h, 00h,0E8h, 1Fh,0FFh
		db	0F8h,0D3h, 00h, 00h,0B4h, 1Fh
		db	0FFh,0FCh,0D3h, 00h, 00h, 52h
		db	 0Fh,0FFh,0FCh,0D3h, 00h, 00h
		db	 27h, 1Fh,0FFh,0F8h,0D3h, 00h
		db	 00h, 1Fh, 80h,0D3h, 00h, 02h
		db	 0Fh,0C0h,0D3h, 00h, 02h, 07h
		db	0A0h,0D3h, 00h, 02h, 03h, 90h
		db	0D3h, 00h, 02h, 01h, 08h,0D3h
		db	 00h, 03h, 80h,0D3h, 00h, 03h
		db	 02h,0D3h, 00h, 03h, 21h,0D3h
		db	 00h, 03h, 10h, 80h,0D3h, 00h
		db	 02h, 09h, 40h,0D3h, 00h, 02h
		db	 07h,0E0h,0D3h, 00h, 02h, 03h
		db	0F0h,0D3h, 00h, 02h, 01h,0F8h
		db	0D3h, 00h, 03h,0FCh,0D3h, 00h
		db	 03h, 7Ah,0D3h, 00h, 03h, 2Dh
		db	0D3h, 00h, 03h, 16h,0D3h, 00h
		db	 03h, 03h, 80h,0D3h, 00h, 02h
		db	 03h,0C0h,0D3h, 00h, 02h, 01h
		db	0E0h, 04h,0D3h, 00h, 02h,0F0h
		db	 03h,0D3h, 00h, 02h, 78h, 01h
		db	 80h,0D3h, 00h, 01h, 3Ch, 00h
		db	0C0h,0D3h, 00h, 01h, 1Eh, 00h
		db	 60h,0D3h, 00h, 01h, 0Fh, 00h
		db	 30h,0D3h, 00h, 01h, 07h, 80h
		db	 18h,0D3h, 00h, 01h, 03h,0C0h
		db	 0Ch,0D3h, 00h, 01h, 01h,0E0h
		db	 06h,0D3h, 00h, 02h,0F0h, 03h
		db	 80h,0D3h, 00h, 01h, 78h, 01h
		db	0C0h,0D3h, 00h, 01h, 3Ch, 00h
		db	0E0h,0D3h, 00h, 01h, 1Eh, 00h
		db	 71h, 02h,0D3h, 00h, 00h, 0Fh
		db	 00h, 3Ah, 81h,0D3h, 00h, 00h
		db	 07h, 80h, 1Fh, 40h, 80h, 00h
		db	 00h, 03h,0C0h, 0Fh,0A0h, 40h
		db	 00h, 00h, 01h,0E0h, 07h,0D0h
		db	 20h,0D3h, 00h, 00h,0F0h,0C3h
		db	0E8h, 10h,0D3h, 00h, 00h, 78h
		db	 61h,0F4h, 08h,0D3h, 00h, 00h
		db	 3Ch, 30h,0FAh, 04h,0D3h, 00h
		db	 00h, 1Eh, 18h, 7Dh, 02h,0D3h
		db	 00h, 00h, 0Fh, 08h, 3Eh, 81h
		db	 04h, 00h, 00h, 07h, 84h, 1Fh
		db	0C0h, 82h, 00h, 00h, 03h,0C0h
		db	 0Fh,0E0h, 41h, 00h, 00h, 01h
		db	0E0h, 07h,0F0h, 20h, 80h, 00h
		db	 00h,0F0h, 03h,0F8h, 10h, 40h
		db	 00h, 00h, 78h, 01h,0FCh,0D3h
		db	 00h, 01h, 3Ch, 00h,0BEh, 7Ch
		db	 10h, 00h, 00h, 1Eh, 06h, 5Fh
		db	 3Fh,0D3h, 00h, 00h, 0Fh, 03h
		db	 2Fh, 81h, 84h, 00h, 00h, 07h
		db	 81h, 97h,0C0h, 42h, 00h, 00h
		db	 03h,0C0h, 69h,0E7h,0F1h, 80h
		db	 00h, 01h
loc_348:
		loopnz	$+36h			; Loop if zf=0, cx>0

		db	0F3h,0F8h,0C0h, 00h, 00h,0F0h
		db	 3Ch, 71h,0FCh, 20h, 00h, 00h
		db	 78h, 1Eh, 38h,0FEh, 30h, 00h
		db	 00h, 3Ch, 0Fh, 1Ch, 7Fh, 18h
		db	 00h, 00h, 1Eh, 07h, 0Eh, 3Fh
		db	 8Ch, 00h, 00h, 0Fh, 03h, 83h
		db	 1Fh,0C6h, 00h, 00h, 07h, 81h
		db	0C1h, 8Fh,0E0h, 00h, 00h, 03h
		db	0C0h,0E0h,0C7h,0F1h, 80h, 00h
		db	 01h,0E0h, 70h, 63h, 7Ch,0C0h
		db	 00h, 00h,0F0h, 30h, 11h,0FEh
		db	 60h, 00h, 00h, 78h, 18h, 00h
		db	0FFh, 30h, 00h, 00h, 3Ch, 0Ch
		db	 00h, 7Fh, 99h, 00h, 00h, 1Eh
		db	 06h, 00h, 3Fh,0CCh, 00h, 00h
		db	 0Fh, 03h, 00h, 1Fh,0E6h, 00h
		db	 00h, 07h, 81h, 80h, 0Fh,0F3h
		db	 00h, 60h, 03h,0C0h,0C0h, 07h
		db	0F9h, 80h, 10h, 01h,0E0h, 00h
		db	 03h,0FCh,0C0h, 04h, 00h,0F0h
		db	 00h, 01h,0FEh, 6Bh,0B8h, 00h
		db	 78h, 00h, 00h,0FFh,0BCh, 20h
		db	 00h, 3Ch, 00h, 00h, 7Fh, 9Eh
		db	0EAh, 80h, 1Eh
data_718	db	0			; Data table (indexed access)
		db	 00h, 3Fh,0CCh,0FEh,0E0h, 0Fh
		db	 00h, 00h, 1Fh,0F7h,0FFh,0F3h
		db	 87h, 80h, 00h, 0Dh,0FBh,0FFh
		db	0FFh,0FBh,0C0h, 00h, 07h,0FFh
		db	0BFh,0FEh,0A1h,0E0h, 00h, 03h
		db	0FFh,0DFh,0FFh,0FBh,0F0h, 00h
		db	 01h,0FFh,0CFh,0FFh,0F7h,0F8h
		db	 00h, 00h,0FFh
loc_349:
		out	7Fh,ax			; port 7Fh ??I/O Non-standard
		std				; Set direction flag
		mov	sp,0
		jg	$-0Bh			; Jump if >
		db	 8Fh,0FFh, 5Eh, 00h, 00h, 3Fh
		db	0F9h,0E8h, 3Fh,0BFh, 00h, 00h
		db	 1Fh,0FEh,0E0h, 0Fh,0FFh, 80h
		db	 00h, 0Fh,0F9h, 7Fh, 86h,0F7h
		db	0C0h, 00h, 07h,0F7h,0FFh, 81h
		db	0F9h,0E0h, 00h

locloop_350:
		add	di,si
		aas				; Ascii adjust
		loopnz	locloop_352		; Loop if zf=0, cx>0

                           lock	add	[bx+di],al

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_351:
		call	dword ptr ds:[77F8h][bx]	;*
		clc				; Clear carry flag
		add	[bx+si],al
;*		dec	di
		db	0FFh,0CFh		;  Fixup - byte match
		db	 68h, 33h,0FCh
		db	 00h, 00h, 7Fh,0F7h,0B4h,0DFh
		db	0FEh, 00h, 00h
		db	3Fh
data_720	db	0FBh
		db	0DBh,0BFh, 3Fh, 00h, 00h, 1Fh
data_721	db	0FDh
		db	0EEh, 3Fh,0DFh, 80h, 00h, 0Fh
		db	0FFh,0DFh,0FFh,0E7h
data_722	dw	0C0h
		db	 07h,0D3h,0FFh, 00h, 7Bh,0E0h
		db	 00h, 03h,0FFh,0FFh,0F7h,0EFh
		db	0F0h, 00h, 01h,0FFh,0EFh,0FFh
		db	0FFh,0F8h, 00h, 00h,0FFh,0F5h
		db	0FDh,0BFh,0BCh, 00h, 00h, 7Fh
		db	0FFh,0FFh,0FEh,0FEh
data_723	dw	0
		db	 3Fh,0FFh, 7Eh, 1Fh, 3Fh, 00h
		db	 00h, 1Fh,0D3h,0FFh, 00h,0DFh
		db	 80h, 00h, 1Fh,0FFh,0FFh,0B9h
		db	0D7h,0C0h, 00h, 07h,0D3h,0FFh
		db	 00h,0FBh,0E0h, 00h, 1Fh, 7Fh
		db	0FFh,0C7h, 76h,0F0h, 00h
data_724	db	0Dh
		db	0BFh,0BCh,0B7h,0FFh,0F8h, 00h
		db	 27h,0DFh,0DFh
data_725	dw	0FF5Bh			; Data table (indexed access)
		db	0FCh, 00h, 17h,0EFh,0EFh,0BEh
		db	 3Eh,0FEh, 00h, 09h,0F7h,0F7h
		db	0DCh, 37h,0FFh, 00h, 04h,0FFh
		db	 7Bh,0EEh, 1Dh,0FFh, 80h, 03h
		db	 3Fh,0B9h,0F7h, 01h,0FFh,0C0h
		db	 01h, 1Fh,0FCh,0FBh, 80h,0BFh
		db	0E0h, 01h,0FBh,0FEh, 6Dh,0E0h
		db	 0Fh,0F0h, 01h,0AFh,0EFh,0B6h
		db	0F0h, 1Bh,0F8h, 01h
data_726	dw	0FFC7h
data_727	dw	789Bh
		db	 01h,0FCh, 08h,0E7h,0FFh,0EDh
		db	0BCh,0C0h,0BEh, 01h,0F7h,0DEh
		db	0F6h,0DEh,0A0h, 3Fh, 02h,0EBh
		db	0FFh,0FBh, 6Fh,0D0h, 1Fh, 81h
		db	0BFh,0F5h
data_728	dw	0B6FDh, 768h
		db	0C0h,0BEh
		dw	0FF2Eh			; Data table (indexed access)
		db	0DBh,0E6h, 01h,0E0h, 7Fh,0D6h
		db	 7Fh,0EDh, 33h, 81h,0F0h, 3Eh
		db	 23h, 3Fh,0F6h,0D8h
data_729	db	40h
		db	 78h, 36h, 7Fh, 7Fh,0FBh, 78h
		db	 23h,0FCh, 10h,0D5h,0B7h,0F9h
		db	0BCh, 0Ah,0FEh
		db	0Ch
data_730	dw	0FFFEh			; Data table (indexed access)
		db	0EFh
		db	0DAh

seg_a		ends


data_731	db	3
		db	 1Fh, 0Bh,0ACh, 2Fh, 7Fh, 6Dh
		db	 00h, 0Fh, 8Dh
data_732	db	0D6h			; Data table (indexed access)
		db	 3Fh,0FFh, 9Fh, 80h, 03h,0E6h
		db	0F5h
data_733	dw	0FF03h			; Data table (indexed access)
		db	0EFh, 40h, 01h,0F3h, 9Fh, 81h
		db	0FFh,0F3h,0E0h, 00h,0F1h, 51h
		db	0C0h,0FFh
data_734	db	0D8h			; Data table (indexed access)
		db	0F0h, 00h, 7Dh,0DCh
loc_353:
		cld				; Clear direction
		cmp	di,ss:data_175[bp]
		aas				; Ascii adjust
		xor	ds:data_905e,cl
		sub	al,0
		push	ds
		pop	ds
		push	cs
		ja	loc_353			; Jump if above
		into				; Int 4 on overflow
		add	[bx],cl
		loop	$-7Bh			; Loop if cx > 0

		cmp	sp,[bx-59h]
		add	byte ptr [bx],0E0h
		iret				; Interrupt return
;*		db	0DFh,0F7h,0D2h,0C0h, 03h,0F9h
		db	0DFh,0F7h,0D2h,0C0h, 03h,0F9h	;  Fixup - byte match
		db	 32h,0FBh,0DDh,0DEh,0D0h, 01h
		db	0F4h,0FFh,0FEh,0EEh, 6Fh,0E8h
		db	 00h,0FFh, 7Ch, 7Eh, 35h, 95h
		db	0FAh, 00h, 7Fh, 1Fh, 37h,0C3h
		db	 07h,0FCh, 80h, 3Fh,0C2h,0D9h
		db	0E0h, 01h,0F7h,0C0h, 1Fh, 85h
		db	0F1h,0FEh, 00h, 7Ch, 08h, 0Fh
		db	0E0h, 90h, 78h, 01h,0A0h, 01h
		db	 07h,0E0h, 7Fh,0FCh, 00h
		db	40h
data_738	dw	0FB43h, 6F8h		; Data table (indexed access)
		db	0F4h, 0Dh, 30h, 1Bh
data_739	db	0E7h			; Data table (indexed access)
		db	0FEh, 00h, 78h, 31h, 81h, 0Eh
		db	 48h,0FEh, 00h,0B4h, 30h, 60h
		db	 1Bh, 80h, 7Ch, 00h,0E0h, 10h
		db	 00h, 1Ch, 00h, 3Dh, 80h, 00h
		db	 30h, 00h
data_740	db	7Ch			; Data table (indexed access)
		db	 00h, 1Fh, 30h, 00h
data_741	db	8			; Data table (indexed access)
		db	 00h, 7Ch
data_742	db	0			; Data table (indexed access)
		db	 0Fh,0D8h, 00h, 40h, 00h, 7Ch
		db	 00h, 07h,0DDh,0A0h, 40h, 10h
		db	 68h, 00h, 03h,0FEh,0F0h, 40h
		db	 00h, 7Ch, 00h, 01h,0FFh,0F0h
		db	 80h, 01h, 68h, 00h, 00h

locloop_354:
		db	0FEh,0F3h, 80h, 01h,0F4h, 00h
		db	 00h, 7Fh,0F4h, 0Ch, 02h,0E4h
		db	 00h, 00h, 3Bh,0B4h, 00h, 03h
		db	0E4h, 00h, 00h, 2Dh, 04h, 00h
		db	 27h,0E8h, 00h, 00h

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_92		proc	near
		adc	al,86h
		add	[bp+di],dl
		les	ax,dword ptr [bx+si]	; Load seg:offset ptr
		add	[bx+di],cl
		hlt				; Halt processor
		add	[bx+di],al
		in	al,0			; port 0, DMA-1 bas&add ch 0
		add	[bx],al
		loopnz	locloop_354		; Loop if zf=0, cx>0

		add	[bp+si],al
		add	si,ax
		rol	word ptr [bx+si],cl	; Rotate

locloop_355:
		add	al,[bx+di]
		call	sub_93
		add	sp,sp
		rol	word ptr [bx+si],cl	; Rotate
		add	ax,[bp+si-2Dh]
		add	[bp+di],al
;*		and	bl,dl
		db	 20h,0D3h		;  Fixup - byte match
		add	[si],al
		or	dl,bl
		stosb				; Store al to es:[di]
		add	ax,0AA0h
		shr	ss:data_591[bp+si],cl	; Shift w/zeros fill
		add	al,ds:data_48e[bx+si]
		stosb				; Store al to es:[di]
		add	al,80h
		add	dl,bl
		stosb				; Store al to es:[di]
		sub	byte ptr es:[bx+si],0D3h
		stosb				; Store al to es:[di]
		add	ax,0AA0h
		shr	ss:data_591[bp+si],cl	; Shift w/zeros fill
		sub	dl,bl
		stosb				; Store al to es:[di]
		add	al,80h
		add	dl,bl
		stosb				; Store al to es:[di]
		db	 26h, 80h,0D3h,0AAh, 2Eh,0A0h
		db	 2Ah,0D3h,0AAh, 04h
data_748	db	80h			; Data table (indexed access)
		db	 02h,0AAh,0A8h, 2Ah,0D3h,0AAh
		db	 23h,0A8h, 0Ah,0D3h,0AAh, 07h
		db	0A0h,0AAh,0AAh,0A0h,0D3h,0AAh
		db	 22h,0A0h, 02h,0D3h,0AAh, 05h
		db	0A8h, 77h, 2Ah, 80h, 2Ah,0D3h
		db	0AAh, 24h,0A8h, 0Ah,0D3h,0AAh
		db	 06h, 75h, 2Ah,0AAh,0AAh,0A0h
		db	0D3h,0AAh, 22h,0A0h, 02h,0D3h
		db	0AAh, 05h,0A8h, 77h, 28h, 2Ah
		db	0AAh, 80h, 2Ah,0D3h,0AAh, 21h
		db	0A8h, 0Ah,0D3h,0AAh, 06h, 77h
		db	0A0h,0AAh,0AAh,0A0h,0D3h,0AAh
		db	 22h,0A0h, 02h,0D3h,0AAh, 05h
		db	0A8h, 77h, 2Ah,0AAh, 80h, 2Ah
		db	0D3h,0AAh, 21h,0A8h, 0Ah,0D3h
		db	0AAh, 01h, 0Ah,0D3h,0AAh, 01h
		db	 77h, 0Ah,0AAh, 0Ah,0D3h,0AAh
		db	 21h,0A0h, 02h,0D3h,0AAh, 05h
		db	0A8h, 77h, 2Ah,0AAh, 80h, 2Ah
		db	0D3h,0AAh, 21h,0A8h, 0Ah,0D3h
		db	0AAh, 01h, 0Ah,0D3h,0AAh, 01h
		db	 75h, 80h, 0Ah,0AAh, 0Ah,0D3h
		db	0AAh, 21h,0A0h, 02h,0D3h,0AAh
		db	 00h,0A8h, 02h,0D3h,0AAh, 00h
		db	0A8h, 85h, 80h

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_93:
		add	ch,ds:data_46e[bx+si]
		stosb				; Store al to es:[di]
		and	ds:data_47e[bx+si],bp
		stosb				; Store al to es:[di]
		add	[bp+si],cx
		shr	ss:data_585[bp+si],cl	; Shift w/zeros fill
		adc	al,0AAh
		or	dl,bl
		stosb				; Store al to es:[di]
		and	ds:data_46e[bx+si],sp
		stosb				; Store al to es:[di]
		add	ds:data_46e[bx+si],ch
		stosb				; Store al to es:[di]
		add	ds:data_19e[bx+si],ch
		add	ch,ds:data_46e[bx+si]
		stosb				; Store al to es:[di]
		and	ds:data_47e[bx+si],bp
		stosb				; Store al to es:[di]
		add	ds:data_42e[bx+si],ah
		add	ds:data_31e[bx+si],ah
		mov	al,ds:data_42e
		and	ds:data_46e[bx+si],sp
		stosb				; Store al to es:[di]
		add	ds:data_46e[bx+si],ch
		stosb				; Store al to es:[di]
		add	ds:data_41e[bx+si],al
		sub	[bp+si-2Dh],bh
		stosb				; Store al to es:[di]
		add	bx,[bp+si-2Dh]
		stosb				; Store al to es:[di]
		sbb	ch,ds:data_47e[bx+si]
		stosb				; Store al to es:[di]
		add	ds:data_42e[bx+si],ah
;*		add	bh,dl
		db	 00h,0D7h		;  Fixup - byte match
                           lock	retn
sub_92		endp

			                        ;* No entry point to code
		mov	al,ds:data_900e
		stosb				; Store al to es:[di]
		and	ds:data_898e[bx+si],sp
		stosb				; Store al to es:[di]
		add	ds:data_892e[bx+si],al
		test	al,0D7h
		int	3			; Debug breakpoint
		xchg	si,ax
;*		add	ax,sp
		db	 01h,0E0h		;  Fixup - byte match
		jo	$-2Bh			; Jump if overflow=1
		stosb				; Store al to es:[di]
		add	bx,[bp+si-2Dh]
		stosb				; Store al to es:[di]
		sbb	ch,ds:data_899e[bx+si]
		stosb				; Store al to es:[di]
		add	ds:data_890e[bx+si],ah
		xlat				; al=[al+[bx]] table
		db	 6Ch,0C1h, 83h, 90h, 72h,0D3h
		db	0AAh, 03h,0FAh,0D3h,0AAh, 1Ah
		db	0A0h, 02h,0D3h,0AAh, 00h, 80h
		db	 2Ah,0A8h, 01h, 97h, 44h, 93h
		db	 04h,0B0h, 70h,0D3h,0AAh, 20h
		db	0A8h, 0Ah,0D3h,0AAh, 00h, 1Dh
		db	0CAh,0A0h, 01h, 97h, 44h,0C3h
		db	 06h, 18h, 72h,0D3h,0AAh, 03h
		db	0FAh,0D3h,0AAh, 1Ah,0A0h, 02h
		db	0D3h,0AAh, 00h, 80h, 1Dh, 48h
		db	 01h, 92h,0E4h, 93h,0A4h,0B0h
		db	 70h,0D3h,0AAh
loc_356:
		add	dx,[bx+si-2Dh]
		stosb				; Store al to es:[di]
		sbb	ch,ds:data_899e[bx+si]
		stosb				; Store al to es:[di]
		add	data_828[bx+si],ah
		add	ss:data_680[bp+si],dx
		cmpsb				; Cmp [si] to es:[di]
		or	al,72h			; 'r'
		stosw				; Store ax to es:[di]
		sbb	dl,bl
		stosb				; Store al to es:[di]
		add	ds:data_894e[bx],bp
		sbb	ah,ds:data_898e[bx+si]
		stosb				; Store al to es:[di]
		add	[bx+si],ah
		sbb	ax,160h
		xchg	dx,ax
		int	3			; Debug breakpoint
		xchg	bx,ax
		movsb				; Mov [si] to es:[di]
		cbw				; Convrt byte to word
		jo	loc_356			; Jump if overflow=1
		stosb				; Store al to es:[di]
		add	data_769[bx+si],ah
		stosb				; Store al to es:[di]
		or	cl,[bp+di]
		dec	dx
		stosb				; Store al to es:[di]
		stosb				; Store al to es:[di]
		mov	al,ds:data_893e
		or	ah,ds:data_901e[bx+si]
		stosb				; Store al to es:[di]
		add	al,0A8h
		or	dl,bl
		stosb				; Store al to es:[di]
		add	byte ptr ds:[11Eh][bx+si],ah
		xchg	di,ax
		int	3			; Debug breakpoint
		retn
			                        ;* No entry point to code
		cmpsb				; Cmp [si] to es:[di]
		sbb	ax,0AB78h
		push	cx
		or	ch,ss:data_718[bp+si]
		mov	al,data_757
		inc	ax
		inc	sp
		add	[bp+si+5Ah],bx
		stosb				; Store al to es:[di]
		mov	cl,0AAh
		stosb				; Store al to es:[di]
		mov	al,ds:data_898e
		stosb				; Store al to es:[di]
		add	byte ptr ds:[11Eh][bx+si],al
		xchg	di,ax
;*		fcom	dword ptr ss:[9EA4h][bp+di]	; Compare with st
		db	0D8h, 93h,0A4h, 9Eh	;  Fixup - byte match
		db	0C0h, 7Ah,0A0h, 55h
data_752	dw	0E803h			; Data table (indexed access)
		db	 0Ah,0D3h,0AAh, 00h,0A8h, 0Ah
		db	0D3h,0AAh, 00h,0A0h, 14h, 01h
		db	 97h,0F0h,0C3h,0A6h, 33h, 30h
		db	 73h, 01h,0FEh,0E1h, 4Ah,0AAh
		db	0AAh,0A0h, 02h,0D3h,0AAh, 00h
		db	 20h, 01h, 97h,0A0h, 96h,0A4h
		db	0B2h, 20h, 70h, 55h, 03h,0C8h
		db	 20h,0AAh,0AAh,0A0h,0AAh, 0Ah
		db	0AAh,0A8h, 0Ah,0AAh
data_753	db	5Ah			; Data table (indexed access)
		db	0AAh,0A0h, 01h, 97h,0C6h,0A6h
		db	 32h, 70h, 73h, 01h,0FEh,0F0h
		db	 1Ah,0D3h,0AAh, 03h,0ABh, 04h
		db	0A0h, 02h,0AAh,0AAh,0A0h, 20h
		db	 01h, 97h, 36h,0A4h,0B7h, 20h
		db	 75h,0D3h, 02h, 00h, 08h, 0Ah
		db	0AAh, 0Ah,0D3h,0AAh, 02h,0A0h
		db	0A8h, 0Ah,0AAh,0B0h,0E0h, 01h
		db	 97h, 36h,0A6h, 36h, 30h, 73h
		db	 4Ah,0A0h, 80h, 0Dh, 40h, 04h
		db	 04h, 01h, 55h, 5Bh, 4Ah,0D3h
		db	0AAh, 00h,0B0h, 10h, 02h,0AAh
		db	0A0h, 20h, 03h,0C0h, 01h, 92h
		db	 1Bh,0A4h, 9Eh, 60h, 70h,0A8h
		db	 80h, 0Ch, 42h, 08h, 02h, 0Ah
		db	0D3h,0AAh, 01h,0A0h
		db	8
data_754	db	0Ah			; Data table (indexed access)
		db	0ABh,0E0h, 07h, 70h, 01h, 98h
		db	 0Fh,0A6h, 1Eh, 30h, 72h, 01h
		db	 98h,0AAh,0A4h, 10h, 01h, 04h
		db	0D3h,0AAh, 00h,0A0h, 02h,0AAh
		db	 0Ah,0A0h, 20h, 03h, 56h, 01h
		db	 98h, 02h, 24h, 9Eh, 60h, 72h
		db	0C3h, 2Ah,0AAh,0A0h, 20h, 80h
		db	0AAh,0AAh,0A8h, 14h, 40h, 4Ah
		db	0ABh,0E0h,0D5h, 20h, 01h,0B0h
		db	0A6h, 1Eh, 30h, 72h, 80h, 08h
		db	 18h,0D0h, 04h,0B0h, 40h, 40h
		db	 82h, 28h,0A2h,0A8h,0AAh, 04h
		db	0A0h, 02h,0AAh,0ABh, 60h, 1Dh
		db	 5Ch, 01h,0E0h, 04h, 9Eh, 60h
		db	 72h, 80h, 0Ah, 83h, 38h, 80h
		db	 20h,0A8h, 10h, 4Ah,0AAh
data_755	db	59h			; Data table (indexed access)
		db	 60h, 07h, 80h,0D5h
data_756	db	81h			; Data table (indexed access)
		db	 40h, 06h, 1Eh, 30h, 50h, 80h
		db	 0Fh, 20h, 79h, 01h, 10h, 04h
		db	 40h, 10h
data_757	db	2			; Data table (indexed access)
		db	0AAh,0A0h, 02h, 03h, 48h, 35h
		db	 60h, 04h, 9Eh, 60h, 80h, 0Bh
		db	 5Ch, 16h, 02h, 1Ch, 89h, 14h
		db	 04h, 04h, 05h, 11h, 10h, 05h
		db	 01h, 45h, 05h, 50h, 0Ah,0AAh
		db	 08h, 0Ah,0AAh, 40h, 10h, 07h
		db	 57h, 02h, 80h, 06h, 1Eh, 30h
		db	 80h, 0Fh, 55h, 81h, 01h, 1Ch
		db	 90h, 02h, 20h, 02h, 28h,0A8h
		db	 22h,0A8h, 20h, 88h,0AAh,0A0h
		db	 04h,0AAh, 50h, 02h,0AAh, 02h
		db	 02h,0B5h

locloop_357:
		db	 60h, 01h, 9Eh, 60h, 80h, 88h
		db	 0Bh, 55h, 62h, 80h, 1Ch,0A0h
		db	 01h, 54h, 11h, 04h, 04h, 01h
		db	 01h, 15h, 55h, 40h, 0Ah,0A8h
		db	 05h,0B0h, 10h, 07h,0A5h, 58h
		db	0DEh, 30h, 80h, 88h, 0Fh, 55h
		db	 48h, 02h, 21h, 06h, 80h, 82h
		db	0A2h, 02h,0A8h, 20h, 80h, 02h
		db	 0Ah, 40h, 08h, 20h, 03h, 4Bh
		db	 48h, 02h, 0Bh, 60h, 3Ah, 60h
		db	 80h, 88h, 0Bh, 55h, 5Ch, 08h
		db	 14h, 80h, 01h, 74h, 55h, 40h
		db	 51h, 41h, 10h, 55h, 04h, 05h
		db	 54h, 01h, 50h, 08h, 10h, 40h
		db	 07h, 5Ah, 20h, 23h, 13h, 06h
		db	 06h, 30h, 80h, 88h, 0Fh, 55h
		db	 4Ch, 06h, 81h, 0Fh, 4Ah,0AAh
		db	 0Ah, 28h, 28h, 20h, 88h, 22h
		db	0AAh, 0Ah, 22h, 2Ah, 80h, 20h
		db	 28h, 08h, 02h, 28h, 10h, 08h
		db	 20h, 03h, 54h, 80h, 02h, 0Ah
		db	0E1h, 80h, 03h, 60h, 80h, 0Bh
		db	 55h, 24h, 57h, 01h,0C0h, 11h
		db	 85h, 10h, 14h, 50h, 54h, 40h
		db	 05h, 01h, 10h, 05h, 51h, 11h
		db	 40h, 01h, 41h, 50h, 08h, 10h
		db	 14h, 40h, 07h, 57h, 8Ch, 12h
		db	0DDh, 80h,0F0h, 80h, 0Fh, 55h
		db	 4Ch,0F3h, 02h, 40h, 39h,0E8h
		db	 28h, 02h,0AAh, 80h, 82h,0A0h
		db	 08h, 10h, 08h, 0Ah,0A8h, 03h
		db	 5Ch, 08h, 20h, 2Bh, 3Dh,0D3h
		db	0AAh, 01h, 80h, 80h, 0Bh, 55h
		db	 0Dh, 6Bh, 50h,0C0h, 39h,0D4h
		db	 05h, 14h, 14h, 05h, 01h, 05h
		db	 08h,0ABh, 10h, 07h, 21h, 04h
		db	 11h, 03h, 01h,0C0h, 40h, 80h
		db	 0Fh, 55h, 4Fh, 19h, 20h,0C0h
		db	 39h,0E8h, 22h,0AAh, 0Ah, 02h
		db	 88h, 82h,0AAh, 80h, 22h, 80h
		db	 10h, 02h,0A0h, 08h, 03h,0E0h
		db	 82h, 02h, 2Bh, 01h, 80h, 80h
		db	 0Bh, 55h, 72h, 0Dh, 85h,0C0h
		db	 39h,0D1h, 55h, 04h, 45h, 01h
		db	 41h, 54h, 50h, 04h, 11h, 40h
		db	 05h, 41h, 18h, 0Ah,0B0h, 10h
		db	 07h,0C0h, 40h, 40h, 01h, 03h
		db	 01h, 90h, 01h, 80h, 0Fh, 54h
		db	 22h, 0Ch,0E8h,0C0h, 39h,0C2h
		db	 80h, 28h,0A0h, 28h, 02h,0A8h
		db	0A0h,0A2h, 80h,0A2h, 82h, 2Ah
		db	 88h,0A0h, 02h, 10h, 02h,0A0h
		db	 08h, 02h,0D0h, 20h, 02h, 2Bh
		db	 01h,0D3h,0AAh, 01h, 80h, 80h
		db	 0Bh, 55h, 0Ch, 66h,0D6h, 40h
		db	 39h, 85h, 14h, 11h, 54h,0D3h
		db	 44h, 00h, 51h, 55h, 51h, 40h
		db	 50h, 10h, 14h, 14h, 50h, 18h
		db	 14h, 40h, 10h, 07h, 81h, 01h
		db	 40h, 01h, 03h, 01h, 90h, 01h
		db	 80h, 0Fh, 55h, 4Bh,0B6h, 6Ah
		db	0C0h, 39h,0E0h, 02h,0AAh,0A0h
		db	 02h, 22h, 82h, 80h, 02h, 08h
		db	 88h,0A2h, 80h, 18h, 08h, 20h
		db	 20h, 28h, 02h, 2Bh, 01h,0A0h
		db	 80h, 80h, 0Bh, 55h, 27h, 3Fh
		db	 60h,0C0h, 39h, 81h, 05h, 50h
		db	 14h, 14h, 44h, 44h, 54h, 15h
		db	 45h, 40h, 14h, 05h, 18h, 1Ah
		db	 04h, 01h, 05h, 01h, 03h, 01h
		db	 90h, 01h, 80h, 0Fh, 54h, 2Bh
		db	 63h, 30h,0C0h, 39h,0E8h, 22h
		db	 0Ah, 0Ah, 08h, 8Ah, 20h, 02h
		db	 8Ah
data_758	db	2			; Data table (indexed access)
		db	 18h, 1Ch, 20h, 02h,0A0h, 08h
		db	 2Bh, 01h,0A0h, 80h
data_759	db	80h			; Data table (indexed access)
		db	 88h, 0Bh, 55h, 04h, 8Dh, 98h
		db	0C0h, 69h, 95h, 55h, 05h, 01h
		db	 55h, 11h, 40h, 14h, 01h, 11h
		db	 40h, 18h, 14h, 01h, 01h, 50h
		db	 03h, 01h, 90h, 01h, 80h, 88h
		db	 0Fh, 55h, 41h, 70h, 06h,0C0h
		db	 69h, 48h, 02h, 80h,0AAh, 88h
		db	 28h, 8Ah, 8Ah,0A2h, 98h, 02h
		db	0A8h, 50h, 2Bh, 01h,0A0h, 80h
		db	 80h, 88h, 0Bh, 55h, 2Dh, 56h
		db	 69h, 61h, 41h, 40h, 04h, 40h
		db	 05h, 04h, 40h, 14h, 55h, 48h
		db	 01h, 04h, 28h, 50h, 03h, 01h
		db	 90h, 01h, 80h, 88h, 0Fh, 54h
		db	 29h, 54h,0C0h, 69h, 60h, 0Ah
		db	 28h, 22h, 28h,0AAh, 02h, 22h
		db	 98h, 02h, 94h
		db	28h
data_760	db	50h
		db	 2Bh, 01h,0A0h, 80h, 80h, 0Bh
		db	 55h, 05h, 55h, 5Ch, 41h,0C5h
		db	 66h, 15h, 55h, 50h, 08h, 01h
		db	 4Ah, 14h, 28h, 50h, 03h, 01h
		db	 90h, 01h, 80h, 0Fh, 55h, 41h
		db	 55h, 55h, 80h, 41h,0CAh, 18h
		db	 07h, 40h,0A2h,0A8h,0B8h, 02h
		db	 8Ah, 14h, 28h, 50h, 03h, 01h
		db	0A0h, 80h, 80h, 0Bh, 55h, 05h
		db	 55h, 55h, 60h, 69h,0CCh, 06h
		db	 78h, 55h, 01h, 40h, 01h, 41h
		db	 58h, 02h, 8Ah, 14h, 28h, 14h
		db	 80h, 0Fh, 55h, 11h, 55h, 55h
		db	 52h, 44h, 01h, 8Ah, 02h, 80h
		db	 18h, 02h, 8Ah, 14h, 02h, 28h
		db	0A2h, 8Ah, 28h,0A2h, 8Ah, 08h
		db	 80h, 0Bh, 55h, 05h, 55h, 55h
		db	 50h,0C0h, 0Ah, 33h,0C0h, 14h
		db	 01h, 08h, 02h, 8Ah, 01h, 14h
		db	 04h, 80h, 0Fh, 55h, 41h, 55h
		db	 55h, 54h, 18h, 0Dh, 2Ch,0D8h
		db	 90h, 02h, 80h, 80h, 0Ah, 08h
		db	 80h, 0Bh
		db	'U_UUPS', 9, 'I'
		db	0BCh, 05h, 18h, 10h, 15h,0D3h
		db	 55h, 03h, 50h, 80h, 0Fh
		db	'T\uUUT`', 0Dh, 'CH'
		db	 18h, 08h, 07h, 88h, 80h, 0Bh
		db	'U', 0Ch, 9, 'U', 0Ch, 9, 'zp'
		db	 18h, 44h, 04h, 03h,0C0h, 05h
		db	0D3h, 55h, 03h, 40h, 80h, 0Fh
		db	 55h, 43h,0D5h, 41h, 54h, 06h
		db	 0Dh, 3Eh, 60h, 01h, 04h, 18h
		db	8
loc_358:
		or	al,[bx+di]
		loopnz	$+0Ch			; Loop if zf=0, cx>0

		or	data_824[bx+si],al
		sub	ax,1D60h
		or	al,9
		pop	es
		and	[bp+di],al
		db	0C0h,0A0h, 18h, 04h, 05h,0F0h
		db	 05h, 3Ch,0F3h,0CFh, 3Ch,0F3h
		db	0CFh, 10h, 80h, 0Fh, 55h, 41h
		db	 52h, 02h, 40h, 02h, 40h, 0Dh
		db	 45h,0A0h, 03h, 0Ch, 14h, 44h
		db	 18h, 80h, 22h, 78h, 0Ah, 0Ah
		db	 28h,0A2h, 8Ah, 28h,0A2h, 88h
		db	 80h, 0Bh, 55h, 05h, 55h, 60h
		db	 35h,0C0h, 09h, 52h, 20h, 03h
		db	 01h, 9Eh, 18h, 10h, 01h, 01h
		db	 05h, 10h, 80h, 0Fh, 54h, 29h
		db	 55h, 52h, 07h, 40h, 01h, 80h
		db	 0Dh, 55h,0E0h, 03h, 0Ch, 11h
		db	 18h, 08h, 85h, 02h, 0Ah, 08h
		db	 80h, 0Bh, 55h, 05h, 55h, 55h
		db	0C0h,0C0h, 01h, 80h, 09h, 50h
		db	0A0h, 03h,0C0h,0A0h,0A0h, 18h
		db	 01h, 4Ah, 05h, 01h, 05h, 10h
		db	 80h, 0Fh, 55h, 41h, 55h, 55h
		db	 58h, 0Ch, 01h, 80h, 0Dh, 42h
		db	 20h, 02h, 4Ch, 05h, 14h, 18h
		db	 20h, 2Ah, 0Ah, 05h, 02h, 0Ah
		db	 08h, 80h, 0Bh, 55h, 05h, 55h
		db	 55h, 54h, 81h, 80h,0C0h, 09h
		db	0A0h, 02h, 80h, 18h, 10h, 01h
		db	 0Ah, 0Ah, 05h, 01h, 05h, 10h
		db	 80h, 0Fh, 54h, 89h,0D3h, 55h
		db	 00h, 58h, 30h,0C0h
		db	0Dh
data_761	db	54h
		db	0A0h, 02h, 80h, 01h, 40h, 18h
		db	 02h, 8Ah, 0Ah, 0Ah, 05h, 02h
		db	 0Ah, 08h, 80h, 0Bh, 55h, 2Dh
		db	0D3h, 55h, 00h, 51h, 83h,0C0h
		db	 09h, 52h, 20h, 06h,0C0h, 18h
		db	 10h, 45h,0D3h, 0Ah, 00h, 10h
		db	 05h, 10h, 80h, 0Fh, 55h, 69h
		db	0D3h, 55h, 00h, 54h, 30h, 0Dh
		db	 54h,0A0h, 06h,0C0h, 18h
		db	8, 9, 'E', 0Ah, 0Ah, 8, 0Ah, 8
		db	 80h, 0Bh, 55h, 05h, 55h, 55h
		db	 50h, 50h, 03h, 09h,0A0h, 0Ch
		db	 60h, 18h, 11h
		db	51h
data_762	db	45h
		db	 0Ah, 04h, 05h, 10h, 80h, 0Fh
		db	 55h, 69h,0D3h, 55h, 00h, 54h
		db	 04h, 70h, 0Dh, 4Bh,0E0h, 0Ch
		db	 60h, 18h, 14h, 51h, 45h, 0Ah
		db	 08h, 0Ah, 80h, 08h, 0Bh, 55h
		db	 05h,0D3h, 55h, 00h, 50h, 06h
		db	 66h, 09h,0A0h, 18h, 30h, 0Ah
		db	 18h, 14h, 51h, 40h, 04h
data_763	db	5			; Data table (indexed access)
		db	 10h, 02h, 0Fh, 54h, 01h, 55h
		db	 55h, 41h, 40h,0A3h, 0Ch,0CDh
		db	 56h, 20h, 30h, 18h, 18h, 14h
		db	 50h, 02h, 0Ah, 02h, 02h, 0Bh
		db	 50h,0A5h,0D3h, 55h, 00h, 50h
		db	 03h,0A1h, 99h
data_764	db	0D0h
		db	0A0h, 60h, 0Ch, 18h, 14h, 01h
		db	 05h, 10h, 08h, 0Fh, 54h, 01h
		db	 55h, 55h, 54h, 14h, 03h,0D8h
		db	 27h, 24h,0A0h,0C0h, 06h, 18h
		db	 02h, 0Ah, 22h, 08h, 08h,0A8h
		db	0A0h, 80h, 0Bh, 55h, 2Dh, 55h
		db	 50h, 55h, 50h, 01h, 08h, 06h
		db	 63h,0A0h, 18h, 0Dh, 81h,0CEh
		db	 18h, 10h, 05h, 01h, 04h, 04h
		db	 14h,0A0h, 20h, 0Fh, 54h, 29h
		db	 55h, 55h, 54h, 15h, 58h, 72h
		db	 66h,0A2h, 80h, 80h, 40h, 14h
		db	 55h, 50h, 18h, 08h, 0Ah, 08h
		db	 8Ah, 80h, 0Ah, 08h, 0Bh, 69h
		db	 05h,0D3h, 55h, 00h, 02h, 81h
		db	 08h, 65h, 6Ch,0C0h, 9Ch, 81h
		db	0AAh,0A0h, 18h, 10h, 05h, 10h
		db	 15h, 04h, 50h, 0Ah, 8Dh, 01h
		db	 17h, 55h, 55h, 40h,0E5h, 58h
		db	0D4h, 0Ch,0F0h,0D5h, 80h
loc_359:
		push	es
		adc	al,18h
		or	[bp+si],cl
		and	data_873[bx+si],cl
		sub	byte ptr [bx+si],3
		push	bp
		add	ax,350h
		mov	[bx+di+54h],cx
		mov	sp,6095h
		or	al,0Ah
		sbb	[bx+si],dl
		add	al,14h
;*		mov	ch,dl
		db	 88h,0D5h		;  Fixup - byte match
		push	bp
		push	sp
		add	bx,dx
		add	dh,0F0h
		and	ax,7452h
		add	ax,818h
		or	al,byte ptr ds:[888h][bx+si]
		mov	al,50h			; 'P'
		mov	ax,data_874
		or	[bx+si+3],cx
		push	bp
		int	3			; Debug breakpoint
		add	al,data_772[bx+si]
		mov	al,data_778
		add	al,1
		adc	[di],cl
		push	sp
		add	[bp+si+1],dx
		dec	ax
		pop	ax
;*		fadd	st,st(1)
		db	0D8h,0C1h		;  Fixup - byte match
		jns	loc_361			; Jump if not sign
		push	cx
		inc	cx
		inc	ax
		sub	data_821[bx+si],ah
		inc	ax
		inc	bp
		pop	ax
		or	[bx+si],cl
		or	ah,byte ptr ss:[1755h][bp+di]	; ('rcel to me! Oh, if only ')
		xchg	si,ax
		add	cx,[bx+si-6Ch]
		popf				; Pop flags
;*		jp	loc_360			;*Jump if parity=1
		db	 7Ah,0C4h		;  Fixup - byte match
		add	ax,8002h
		add	al,data_795[bx+si]
		adc	[si],al
		inc	ax
		adc	[bx+si+14h],ax
		push	dx
		push	bp
		inc	ax
		adc	ax,0A58h
		and	ax,0D558h
		jno	loc_359			; Jump if not overflw
		inc	si
		or	ax,[si]
		inc	ax
		mov	al,data_794
		adc	[bx+si+8],bl
		add	ss:data_188[bp+si],80h
		mov	al,data_754
		add	[si],bx
		sbb	ax,9548h
		push	si
		xor	ax,0F46Fh
		mov	ah,0F2h
		sub	ax,20Fh
		rcl	byte ptr [si],1		; Rotate thru carry
		push	ax
		or	bh,byte ptr ds:[110h][bx+si]
		add	al,1
		inc	sp
		adc	al,5
		xor	[si],al
		pop	ax
		add	cl,ds:data_902e[di]
		inc	cx
		db	 26h, 66h,0B2h, 22h, 6Ch,0FEh
		db	0D1h,0CDh, 28h, 02h, 82h, 80h
		db	 18h, 08h, 02h, 02h, 0Ah, 80h
		db	0A0h, 02h, 2Ch, 03h,0C3h, 9Ch
		db	 02h, 9Dh, 48h, 95h, 55h, 3Ah
		db	 74h, 51h, 80h, 23h,0A9h, 42h
		db	 08h, 08h, 80h, 18h, 10h, 10h
		db	 01h, 10h, 01h, 40h, 05h, 11h
		db	 04h, 16h, 03h,0D8h, 02h, 8Dh
		db	58h
data_765	db	0D4h			; Data table (indexed access)
		db	15h
data_766	dw	0C52h			; Data table (indexed access)
		db	 14h, 08h
data_767	dw	510h			; Data table (indexed access)
		db	0A0h, 12h, 55h, 28h,0B4h, 01h
		db	 40h, 18h, 08h, 80h, 0Ah, 2Bh
		db	 01h, 1Ch, 02h, 9Dh, 48h, 95h
		db	 55h, 01h,0B5h, 10h, 20h, 0Fh
		db	 02h, 2Eh, 77h, 85h, 50h, 05h
data_768	db	18h			; Data table (indexed access)
		db	 10h, 04h, 44h, 06h, 04h, 58h
		db	 03h,0CDh, 58h,0D4h, 01h, 45h
		db	0F0h,0A0h, 08h, 11h, 5Dh, 63h
		db	 46h, 35h, 8Dh, 40h, 18h, 08h
		db	 08h, 22h, 02h, 80h, 02h, 08h
		db	 31h, 1Ch, 03h,0DDh, 48h, 95h
		db	 2Ah,0D0h, 01h
data_769	db	50h			; Data table (indexed access)
		db	 08h,0A7h, 02h,0EDh, 28h, 0Ah
		db	 05h, 18h, 10h, 40h, 50h, 04h
		db	 40h, 01h, 40h, 01h, 54h,0D8h
		db	 03h,0CDh, 58h,0D5h, 45h, 02h
		db	0D0h, 02h,0A0h, 05h, 1Ch, 86h
		db	 8Dh, 45h,0A0h, 18h, 08h, 02h
		db	 22h, 0Ah, 02h,0A8h, 02h, 9Dh
		db	 48h, 95h
		db	 50h, 50h, 45h
data_770	db	0E5h
		db	 40h, 02h,0A5h,0AAh,0F6h, 14h
		db	 06h
data_771	db	0C0h			; Data table (indexed access)
		db	 07h, 80h, 18h, 10h, 40h, 50h
		db	 04h, 40h, 0Dh, 58h,0D5h, 54h
		db	 15h,0B9h,0E0h,0A5h, 01h, 50h
		db	 54h, 2Ch, 30h, 0Ah, 84h, 0Ch
		db	 0Ch, 30h, 18h, 08h, 08h, 02h
		db	 20h, 0Ah,0A2h,0A8h, 04h, 40h
		db	 88h, 95h, 52h, 85h, 43h,0C1h
		db	4Ah
data_772	db	28h			; Data table (indexed access)
		db	 80h, 8Ah, 28h, 80h, 61h, 41h
		db	0A8h, 8Eh, 10h, 2Ch, 18h, 11h
		db	 01h, 10h
data_773	db	1			; Data table (indexed access)
		db	 40h, 14h, 01h, 44h, 04h, 01h
		db	 10h,0D5h, 54h, 28h,0FFh, 80h
		db	 05h, 14h, 10h, 5Ah, 54h, 41h
		db	 41h, 88h, 51h, 06h, 20h, 69h
		db	 98h, 0Ah, 88h,0A0h, 0Ah, 2Ah
		db	0AAh,0A0h, 80h, 95h, 55h, 55h
		db	0EFh, 0Ah, 02h, 28h, 0Ah, 88h
		db	 08h,0A0h, 88h,0AAh, 0Ah, 80h
		db	 0Ah, 0Ah, 50h, 11h, 01h, 01h
		db	0A0h, 0Ch, 50h,0F7h, 11h, 14h
		db	 06h, 94h, 14h, 46h, 80h, 05h
		db	 04h,0E1h, 40h, 22h, 2Ah, 80h
		db	 02h,0A8h, 02h,0D3h,0AAh, 00h
		db	 0Ah,0ABh, 05h,0E0h, 0Ah, 08h
		db	 8Ah, 03h,0E0h, 22h, 0Ah, 5Ah
		db	0AAh, 80h, 58h,0A8h, 34h, 0Ah
		db	 14h, 40h,0EAh, 0Dh, 18h, 11h
		db	 11h, 06h,0C6h,0C1h, 02h, 25h
		db	 08h,0AAh, 85h, 0Ah, 04h, 10h
		db	 28h, 28h,0A0h, 28h,0A0h, 02h
		db	0AAh,0AAh,0A0h, 0Ah, 80h, 94h
		db	 22h, 08h, 83h, 62h, 0Ah, 0Ah
		db	 82h, 07h, 88h, 80h, 0Fh,0A1h
		db	 68h, 0Ah,0A0h, 14h, 04h, 01h
		db	 0Ah, 04h, 4Bh, 41h, 04h,0B0h
		db	 6Dh, 14h, 0Fh,0F0h, 05h, 02h
		db	0A8h, 22h, 0Ah, 28h, 02h,0AAh
		db	0AAh,0A0h, 0Ah,0A8h, 2Ah, 80h
		db	0A8h, 8Ah, 5Ah, 88h, 50h, 02h
		db	 80h, 08h, 82h, 94h,0A0h, 50h
		db	 10h, 04h,0A0h,0F0h, 50h, 05h
		db	 08h, 80h,0A0h, 88h, 02h,0D3h
		db	0AAh, 00h, 0Ah,0A8h,0A0h, 0Ah
		db	 0Ah, 20h, 80h,0A0h, 14h, 40h
		db	 10h, 0Ah, 0Ah, 22h, 88h, 02h
		db	0A8h, 28h, 20h,0AAh,0A8h, 0Ah
		db	 28h, 28h, 88h,0A0h, 04h,0A0h
		db	 4Ah,0A0h, 0Ah, 28h,0A0h,0A0h
		db	 02h, 0Ah,0AAh,0AAh,0A8h, 0Ah
		db	 88h,0A8h, 20h, 22h, 44h, 88h
		db	0AAh, 2Ah,0D3h,0AAh, 03h,0A8h
		db	 0Ah, 88h, 20h, 80h, 0Ah,0D3h
		db	0AAh, 09h, 02h, 08h, 28h, 02h
		db	0D3h,0AAh, 04h, 82h,0D3h,0AAh
		db	 01h,0A8h, 2Ah, 82h,0AAh, 82h
		db	 80h, 28h, 02h, 08h, 20h, 80h
		db	 05h,0AAh, 0Ah,0D3h,0AAh, 08h
		db	 0Ah,0AAh,0A0h,0AAh,0A0h,0A0h
		db	 0Ah,0A0h, 02h, 20h, 02h, 20h
		db	0A0h, 28h, 28h, 2Ah,0D3h,0AAh
		db	 07h,0A8h, 2Ah, 80h, 08h, 80h
		db	0A2h, 2Ah, 0Ah, 0Ah,0D3h,0AAh
		db	 0Bh,0A0h, 08h, 80h, 02h,0D3h
		db	0AAh, 0Ch, 80h, 0Ah, 02h, 8Ah
		db	 0Ah,0D3h,0AAh, 0Bh, 0Ah,0A0h
		db	 02h,0D3h,0AAh, 09h, 80h,0D3h
		db	0AAh, 0Ch,0A0h, 28h, 02h, 80h
		db	 2Ah,0D3h,0AAh, 06h, 82h,0D3h
		db	0AAh, 02h, 80h,0A0h, 0Ah,0D3h
		db	0AAh, 0Ch,0A0h, 2Ah,0D3h,0AAh
		db	 0Bh, 82h,0AAh,0A8h, 0Ah,0A0h
		db	 0Ah,0D3h,0AAh, 0Ch, 2Ah,0D3h
		db	0AAh, 03h,0A8h, 2Ah,0D3h,0AAh
		db	 05h, 82h,0A8h,0D3h,0AAh, 08h
		db	 0Ah,0D3h,0AAh, 03h, 02h,0D3h
		db	0AAh, 0Ch,0A8h, 2Ah, 80h, 0Ah
		db	0D3h,0AAh, 0Ch,0A0h,0A0h, 02h
		db	0D3h,0AAh, 0Dh,0A8h,0C0h, 09h
		db	0E0h, 29h,0E4h, 39h, 03h, 27h
		db	 09h,0C0h,0C0h, 03h,0C0h,0E4h
		db	 39h, 03h,0C0h, 03h,0C0h,0E4h
		db	 39h, 03h,0C0h, 03h,0C0h,0E4h
		db	0A0h, 39h, 03h,0C0h, 03h,0C0h
		db	0E4h, 50h, 39h, 03h,0C0h,0C0h
		db	 24h, 78h, 30h, 09h,0E0h, 04h
		db	 3Ch, 20h, 19h,0E4h, 36h, 02h
		db	 80h, 39h,0E7h,0C0h, 1Bh, 02h
		db	 80h, 03h,0F9h,0E7h,0C0h, 08h
		db	 80h, 07h, 80h, 05h, 03h,0F9h
		db	0E7h,0C0h, 2Dh, 07h, 80h, 05h
		db	 03h,0F9h,0E7h,0C0h, 2Fh, 80h
		db	 0Ch,0C0h, 07h, 80h, 03h,0F9h
		db	0E7h,0C0h, 2Fh, 80h, 18h,0C0h
		db	 02h, 80h, 03h,0F9h,0E7h,0C0h
		db	 2Fh, 80h, 30h,0C0h, 03h,0C0h
		db	 03h,0F9h,0E7h,0C0h, 2Fh, 80h
		db	 60h, 60h, 03h,0C0h, 03h,0F9h
		db	0E7h,0C0h, 50h, 2Fh, 80h,0C0h
		db	 60h, 01h,0E0h, 03h,0F9h,0E7h
		db	0C0h, 50h, 2Fh, 83h, 30h, 01h
		db	0E0h, 03h,0F9h,0E7h,0C0h, 50h
		db	 2Fh, 8Ch, 0Ah, 18h,0F0h, 03h
		db	0F9h,0E7h,0C0h, 78h, 2Fh,0B0h
		db	 36h, 0Ch,0D8h, 03h,0F9h,0E7h
		db	0C0h, 28h, 2Fh, 40h,0D7h, 06h
		db	 6Ch, 03h,0F9h,0E7h,0C0h, 6Ch
		db	 2Fh, 43h, 3Fh, 03h, 36h, 03h
		db	0F9h,0E7h,0C0h, 3Ch, 2Fh,0B3h
		db	 73h, 81h, 80h, 0Fh, 03h,0F9h
		db	0E7h,0C0h, 36h, 2Fh, 85h, 97h
		db	 81h, 80h, 22h, 50h, 03h,0F9h
		db	0E7h,0C0h, 33h, 7Fh, 70h,0C3h
		db	0C6h,0A0h, 27h, 50h, 03h,0F9h
		db	0E7h,0C0h, 19h, 80h, 7Fh, 4Ch
		db	 93h,0D9h,0E0h, 27h, 50h, 03h
		db	0F9h,0E7h,0C0h, 06h,0C0h, 7Fh
		db	0ECh,0C1h,0FBh, 84h, 27h, 50h
		db	 03h,0F9h,0E7h,0C0h,0A0h, 7Fh
		db	0C4h, 91h,0ACh,0BAh, 27h, 55h
		db	 03h,0F9h,0E7h,0C0h, 0Bh, 40h
		db	0DFh,0C4h,0C1h, 86h, 17h, 27h
		db	 55h, 03h,0F9h,0E7h,0C0h, 0Bh
		db	0E0h,0DFh, 64h, 91h, 24h, 9Fh
		db	 80h, 27h, 55h, 03h,0F9h,0E7h
		db	0C0h, 0Bh,0E0h,0DFh, 4Ch,0C1h
		db	 26h, 0Ah,0C0h, 27h, 55h, 03h
		db	0F9h,0E7h,0C0h, 0Bh
data_774	db	0E0h
		db	0DFh, 4Ch, 91h, 24h, 8Dh,0E0h
		db	 27h, 55h, 03h,0F9h,0E7h,0C0h
		db	 0Ah, 7Fh, 49h,0C1h, 26h, 09h
		db	 28h, 27h, 55h,0A0h, 03h,0F9h
		db	0E7h,0C0h, 0Ah,0DFh, 5Dh, 91h
		db	 24h, 8Ah,0C0h, 27h, 55h, 88h
		db	 03h,0F9h,0E7h,0C0h,0DFh, 77h
		db	 41h, 26h, 0Fh, 30h, 27h, 55h
		db	0E1h, 03h,0F9h,0E7h,0C0h

locloop_362:
		jg	$+25h			; Jump if >
		push	cx
		and	al,8Eh
		and	[bx],ah
		push	bp
		test	al,20h			; ' '
		add	di,cx
		out	0C0h,ax			; port 0C0h, DMA-2 bas&add ch 0
;*		fild	ss:data_317[bp+di]	; Push integer to stk
		db	0DFh, 83h, 01h, 26h	;  Fixup - byte match
		push	cs
		jo	$+29h			; Jump if overflow=1
		push	bp
                           lock	add	di,cx
		out	0C0h,ax			; port 0C0h, DMA-2 bas&add ch 0
;*		fild	ss:data_312[bp+di]	; Push integer to stk
		db	0DFh, 83h, 51h, 24h	;  Fixup - byte match
		mov	sp,[bx+si]
		daa				; Decimal adjust
		mov	[bp+di],al
		stc				; Set carry flag
		out	0C0h,ax			; port 0C0h, DMA-2 bas&add ch 0
;*		fld	qword ptr [bp+di]	; Push onto stack
		db	0DDh, 03h		;  Fixup - byte match
		add	word ptr ds:[300Ah],sp
		daa				; Decimal adjust
		shr	word ptr ss:[0A501h][bp+si],cl	; Shift w/zeros fill
		db	 6Ch, 03h,0F9h,0E7h,0C0h, 03h
		db	0C0h, 78h, 02h, 41h, 24h, 8Ah
		db	 60h, 27h, 2Ah,0D3h,0AAh, 00h
		db	0ACh, 40h, 82h, 03h,0F9h,0E7h
		db	0C0h, 07h, 70h, 78h,0C1h, 26h
		db	 0Ah, 30h, 27h, 01h, 98h, 4Bh
		db	 03h,0F9h,0E7h,0C0h, 03h, 56h
		db	 78h, 02h,0E1h, 24h, 8Ah, 60h
		db	 27h,0C3h, 0Dh, 80h, 03h,0F9h
		db	0E7h,0C0h,0D5h, 20h,0F0h, 91h
		db	 26h, 0Ah, 30h, 27h,0D3h,0AAh
		db	 01h,0A0h, 18h,0C0h, 2Eh,0C0h
		db	 03h,0F9h,0E7h,0C0h, 1Dh, 5Ch
		db	0A0h, 02h,0B0h, 64h, 8Ah, 60h
		db	 28h, 2Ah,0D3h,0AAh, 01h, 83h
		db	 18h, 17h, 60h, 03h,0F9h,0E7h
		db	0C0h, 07h, 80h,0D5h, 80h,0B8h
		db	 36h, 0Ah, 30h,0D3h,0AAh, 01h
		db	0A7h, 20h, 66h,0F0h, 03h,0F9h
		db	0E7h,0C0h, 03h, 48h, 35h, 60h
		db	 02h,0A6h, 88h, 8Ah, 60h, 2Ah
		db	0D3h,0AAh, 00h,0ABh, 5Ch, 1Eh
		db	 08h,0F8h, 03h,0F9h,0E7h,0C0h
		db	 07h, 57h, 02h, 80h,0ACh, 0Ah
		db	 30h,0AAh,0AAh, 82h,0AAh,0A7h
		db	 55h, 80h, 09h,0C0h, 03h,0F9h
		db	0E7h,0C0h, 02h,0B5h, 60h, 2Bh
		db	 50h, 0Ah, 60h, 2Ah,0AAh, 88h
		db	0AAh,0ABh, 55h, 60h, 09h,0C0h
		db	 03h,0F9h,0E7h,0C0h, 07h,0A5h
		db	 58h, 0Bh,0A8h, 0Ah, 30h,0AAh
		db	0A8h, 8Ah,0AAh,0A7h, 55h, 4Ch
		db	 01h, 40h, 03h,0F9h,0E7h,0C0h
		db	 03h, 4Bh, 48h, 02h,0FEh, 0Ah
		db	 60h, 2Ah,0AAh, 88h,0AAh,0ABh
		db	 55h, 0Ch, 03h,0F9h,0E7h,0C0h
		db	 07h, 5Ah, 20h,0B7h, 0Ah, 30h
		db	0AAh,0A8h, 8Ah,0AAh,0A7h
		db	55h
data_775	db	4Ch			; Data table (indexed access)
		db	 07h, 80h, 03h,0F9h,0E7h,0C0h
		db	 03h, 54h, 80h, 0Ah,0C0h, 60h
		db	 2Ah,0AAh,0AAh,0ABh, 55h, 0Ch
		db	 50h, 07h, 80h, 03h,0F9h,0E7h
		db	0C0h, 07h, 57h, 30h, 30h,0D3h
		db	0AAh, 01h,0A7h, 55h, 4Ch,0F0h
		db	 13h, 80h, 03h,0F9h,0E7h,0C0h
		db	 03h, 5Ch, 2Ah,0D3h,0AAh, 00h
		db	0ABh, 55h, 0Dh, 68h, 13h, 80h
		db	 03h,0F9h,0E7h,0C0h, 07h, 20h
		db	0D3h,0AAh, 01h,0A7h, 55h, 4Fh
		db	 18h, 13h, 80h, 03h,0F9h,0E7h
		db	0C0h, 03h,0C0h, 2Ah,0D3h,0AAh
		db	 00h,0ABh, 55h, 0Ah, 0Ch, 13h
		db	 80h, 03h,0F9h,0E7h,0C0h, 07h
		db	 80h,0D3h,0AAh, 01h,0A7h, 54h
		db	 0Ah, 0Ch, 13h, 80h, 03h,0F9h
		db	0E7h,0C0h, 02h, 80h, 2Ah,0D3h
		db	0AAh, 00h,0ABh, 55h, 0Ch, 66h
		db	 13h, 80h, 03h,0F9h,0E7h,0C0h
		db	 07h, 80h,0D3h,0AAh, 01h,0A7h
		db	 55h, 4Bh,0B6h, 13h, 80h, 03h
		db	0F9h,0E7h,0C0h, 2Ah,0D3h,0AAh
		db	 00h,0ABh, 55h, 0Fh, 3Fh, 13h
		db	 80h, 03h,0F9h,0E7h,0C0h,0AAh
		db	0A8h, 02h,0AAh,0A7h, 54h, 03h
		db	 63h, 13h, 80h, 03h,0F9h,0E7h
		db	0C0h, 28h, 2Ah,0AAh, 88h,0AAh
		db	0ABh, 55h, 04h, 8Dh, 80h, 13h
		db	 80h, 03h,0F9h,0E7h,0C0h, 0Ah
		db	0A0h,0AAh,0A8h, 8Ah,0AAh,0A7h
		db	 55h, 41h, 70h, 13h, 80h, 03h
		db	0F9h,0E7h,0C0h, 2Ah,0A8h, 2Ah
		db	0AAh, 88h,0AAh,0ABh, 55h, 05h
		db	 56h, 13h, 80h, 03h,0F9h,0E7h
		db	0C0h, 0Ah,0AAh,0A0h,0AAh,0A8h
		db	 8Ah,0AAh,0A7h, 54h, 01h, 54h
		db	0C0h, 13h, 80h, 03h,0F9h,0E7h
		db	0C0h, 02h,0AAh,0AAh,0A8h, 2Ah
		db	0AAh,0AAh,0ABh, 55h, 05h, 55h
		db	 5Ch, 13h, 80h, 05h, 03h,0F9h
		db	0E7h,0C0h,0D3h,0AAh, 00h,0A0h
		db	0D3h,0AAh, 01h,0A7h, 55h, 41h
		db	 55h, 55h, 80h, 07h, 80h, 07h
		db	 80h, 03h,0F9h,0E7h,0C0h, 02h
		db	0D3h,0AAh, 00h,0A8h, 2Ah,0D3h
		db	0AAh, 00h,0ABh, 55h, 05h, 55h
		db	 55h, 60h, 13h, 80h, 06h, 60h
		db	 03h,0F9h,0E7h,0C0h,0D3h,0AAh
		db	 01h,0A0h,0D3h,0AAh, 01h,0A7h
		db	 55h, 41h, 55h, 55h, 52h, 14h
		db	 01h
data_776	db	8Ch			; Data table (indexed access)
		db	 03h,0F9h,0E7h,0C0h, 2Ah,0D3h
		db	0AAh
data_777	db	1			; Data table (indexed access)
		db	0A8h, 2Ah,0D3h,0AAh, 00h,0ABh
		db	 55h, 05h, 55h, 55h, 50h,0C0h
		db	 0Ah, 33h, 03h
data_778	db	0F9h
		db	0E7h,0C0h,0D3h,0AAh, 02h,0A0h
		db	0D3h,0AAh, 01h,0A7h, 55h, 41h
		db	 55h, 55h, 54h, 18h, 0Dh, 2Ch
		db	 60h, 01h, 40h, 03h,0F9h,0E7h
		db	0C0h, 2Ah,0D3h,0AAh, 02h, 80h
		db	 2Ah,0D3h,0AAh, 00h,0ABh
		db	'U_UUPS', 9, 'I'
		db	 98h, 82h,0A0h, 03h,0F9h,0E7h
		db	0CAh,0D3h,0AAh, 02h,0A0h,0D3h
		db	0AAh, 01h,0A7h
		db	'T', 0Ch, 'uUUT`', 0Dh, 'CxE@'
		db	 03h,0F9h,0E7h,0C2h,0D3h,0AAh
		db	 01h,0A8h, 2Ah,0D3h,0AAh, 00h
		db	0ABh, 55h, 0Ch, 09h, 55h, 0Ch
		db	 09h, 78h,0C0h, 03h,0F9h,0E7h
		db	0CAh,0D3h,0AAh, 05h,0A7h, 55h
		db	 43h,0D5h, 41h, 54h, 01h, 80h
		db	 0Dh, 3Fh,0B0h, 01h, 04h, 03h
		db	0F9h,0E7h,0C2h,0D3h,0AAh, 00h
		db	 80h, 2Ah,0D3h,0AAh, 00h,0ABh
		db	 55h, 05h, 60h, 1Dh, 60h, 09h
		db	 07h,0B0h, 03h,0C0h,0A0h, 03h
		db	0F9h,0E7h,0CAh,0AAh,0AAh,0A0h
		db	0D3h,0AAh, 01h,0A7h, 55h, 41h
		db	 52h, 02h, 40h, 60h, 0Dh, 40h
		db	 30h, 01h, 8Ch, 14h, 44h, 03h
		db	0F9h,0E7h,0C2h,0AAh,0AAh, 80h
		db	 2Ah,0D3h,0AAh, 00h,0ABh, 55h
		db	 05h, 55h, 60h, 35h, 60h, 09h
		db	 50h, 30h, 01h, 21h, 9Eh, 03h
		db	0F9h,0E7h,0CAh,0D3h,0AAh, 02h
		db	0A7h, 54h, 01h, 55h, 52h, 07h
		db	 40h, 60h, 0Dh, 54h, 30h, 01h
		db	 08h, 0Ch, 11h, 03h,0F9h,0E7h
		db	0C2h,0A8h, 2Ah,0D3h,0AAh, 00h
		db	0ABh, 55h, 05h, 55h, 55h,0C0h
		db	0C0h, 60h, 09h, 50h, 30h, 42h
		db	0C0h,0A0h,0A0h, 03h,0F9h,0E7h
		db	0CAh,0D3h,0AAh, 01h,0A7h
		db	 55h, 41h
		db	'UUX', 0Ch, '`', 0Dh, '@0'
		db	 01h, 40h, 05h, 14h, 03h,0F9h
		db	0E7h,0C0h, 2Ah,0D3h,0AAh, 00h
		db	0ABh, 55h, 05h, 55h, 55h, 54h
		db	 81h
data_780	dw	6080h			; Data table (indexed access)
		db	 09h, 30h, 01h
data_781	db	40h
		db	 03h,0F9h,0E7h,0C0h,0D3h,0AAh
		db	 01h,0A7h, 54h, 01h,0D3h, 55h
		db	 00h, 58h, 30h, 60h, 0Dh, 54h
		db	 30h, 01h, 40h, 01h, 40h, 03h
		db	0F9h,0E7h,0C0h, 2Ah,0D3h,0AAh
		db	 00h,0ABh, 55h, 05h,0D3h, 55h
		db	 00h, 51h, 83h, 60h, 09h, 50h
		db	 30h, 01h,0E0h, 03h,0F9h,0E7h
		db	0C0h,0D3h,0AAh, 01h,0A7h, 55h
		db	 41h,0D3h, 55h, 00h, 54h, 30h
		db	 0Dh, 54h, 30h, 01h,0E0h, 03h
		db	0F9h,0E7h,0C0h, 2Ah,0D3h,0AAh
		db	 00h,0ABh, 55h, 05h, 55h, 55h
		db	 50h, 50h, 03h, 09h, 18h, 01h
		db	0B0h, 03h,0F9h
data_782	db	0E7h
		db	0C0h,0D3h,0AAh, 01h,0A7h, 55h
		db	 41h,0D3h, 55h, 00h, 54h, 01h
		db	 70h, 0Dh, 40h, 18h,0F0h, 03h
		db	0F9h,0E7h,0C0h, 02h,0D3h,0AAh
		db	 00h,0ABh, 55h, 05h,0D3h, 55h
		db	 00h, 50h, 01h,0E6h, 09h, 30h
		db	 01h, 98h, 0Ah, 03h,0F9h,0E7h
		db	0C0h,0D3h,0AAh, 00h,0A7h, 54h
		db	 01h, 55h, 55h, 41h, 40h, 01h
		db	 8Ch,0CDh, 54h, 30h,0CCh, 03h
		db	0F9h,0E7h,0C0h, 02h,0D3h,0AAh
		db	 00h,0ABh, 50h, 05h,0D3h, 55h
		db	 00h, 50h, 01h, 21h, 99h,0D0h
		db	 30h, 0Bh,0D6h, 03h,0F9h,0E7h
		db	0C0h, 0Ah,0AAh,0AAh,0A7h, 54h
		db	 01h, 55h, 55h, 54h, 14h, 01h
		db	 58h, 27h, 24h, 30h, 0Fh, 03h
		db	0F9h,0E7h,0C0h, 02h, 08h, 08h
		db	0A8h, 2Ah,0ABh, 55h, 05h, 55h
		db	 50h, 55h, 50h, 01h, 08h, 06h
		db	 63h, 30h, 91h, 80h, 03h,0F9h
		db	0E7h,0C0h, 14h,0A0h
data_783	dw	0A70Ah			; Data table (indexed access)
		db	 54h, 01h, 55h, 55h, 54h
data_784	db	1			; Data table (indexed access)
		db	 58h, 72h, 66h,0A0h, 24h,0C0h
		db	 14h, 55h, 50h, 03h,0F9h,0E7h
		db	0C0h, 88h, 0Ah, 02h,0ABh, 69h
		db	 05h,0D3h, 55h, 00h, 01h
data_785	db	8			; Data table (indexed access)
		db	 65h, 6Ch,0C0h, 9Ch, 25h, 80h
		db	0AAh,0A0h, 03h,0F9h,0E7h,0C0h
		db	 14h, 50h, 0Ah,0A5h, 01h, 17h
		db	 55h, 55h, 40h, 01h, 58h,0D4h
		db	 0Ch,0F0h,0D5h, 80h, 05h, 0Ah
		db	 14h, 03h,0F9h,0E7h,0C0h, 08h
		db	 88h, 80h, 28h, 03h, 55h, 05h
		db	 50h, 01h, 09h, 49h, 54h,0BCh
		db	 95h, 60h, 0Dh, 20h, 56h,0C0h
		db	 0Ah, 03h,0F9h,0E7h,0C0h, 14h
		db	0A0h,0D5h, 55h, 54h, 01h, 5Ah
		db	 80h,0C6h,0F0h, 25h, 52h, 27h
		db	 28h, 07h, 80h, 05h, 03h,0F9h
		db	0E7h,0C0h, 88h, 08h,0B0h, 50h
		db	 01h, 0Dh, 88h, 09h, 48h, 03h
		db	 55h,0CAh, 02h,0D0h,0B4h, 7Bh
		db	0C0h, 0Ah,0A0h, 03h,0F9h,0E7h
		db	0C0h, 01h, 10h, 0Dh, 54h, 01h
		db	 52h, 01h, 48h, 58h,0D8h,0C1h
		db	 50h, 80h, 05h, 51h, 41h, 40h
		db	 28h,0A0h,0A0h, 51h, 40h, 45h
		db	 43h,0F9h,0E7h,0C0h, 0Ah,0A3h
		db	 55h, 01h, 16h
data_786	db	3			; Data table (indexed access)
		db	 48h, 94h, 9Dh
data_787	db	2			; Data table (indexed access)
		db	 24h,0C4h, 05h, 02h, 80h, 0Fh
		db	 02h, 80h,0A0h, 03h,0F9h,0E7h
		db	0C0h, 14h, 52h, 55h, 40h, 01h
		db	 58h, 25h, 58h,0D5h, 71h, 80h
		db	 28h,0A3h, 04h, 40h,0A0h,0A0h
		db	 14h, 66h, 10h, 43h,0F9h,0E7h
		db	0C0h, 88h, 02h, 80h,0A0h,0A0h
		db	 03h, 01h, 1Ch,0A0h, 1Dh, 48h
		db	 95h, 56h, 35h, 14h,0A4h,0B4h
		db	0F2h, 2Dh, 0Fh
data_788	db	2
		db	0D0h
data_789	db	14h
		db	 50h, 0Ah,0A3h,0F9h,0E7h,0C0h
		db	 14h, 05h, 30h, 01h, 58h, 0Dh
		db	 58h,0D5h, 41h, 26h, 14h, 60h
		db	 3Eh,0D1h,0CDh, 2Eh, 1Ah, 82h
		db	 80h, 03h,0F9h,0E7h,0C0h,0A0h
		db	 02h, 2Ch, 01h, 1Ch, 28h, 1Dh
		db	 48h, 95h, 55h, 12h, 74h, 30h
		db	 43h,0A9h, 42h, 0Ah, 88h, 80h
		db	 03h,0F9h,0E7h,0C0h, 01h, 40h
		db	 05h, 11h, 04h, 16h, 01h, 58h
		db	 28h, 0Dh, 58h,0D4h, 14h, 02h
		db	 58h, 01h, 80h, 35h,0A0h, 12h
		db	 55h, 28h,0B4h, 01h, 40h, 03h
		db	0F9h,0E7h,0C0h, 0Ah, 2Bh, 01h
		db	 1Ch, 28h, 1Dh, 48h, 95h, 55h
		db	 03h, 3Fh, 02h, 2Eh, 77h, 85h
		db	 50h, 05h, 03h,0F9h,0E7h,0C0h
		db	 44h, 06h, 01h, 58h, 28h, 0Dh
		db	 58h,0D4h, 01h, 40h, 14h, 0Ch
		db	 05h, 06h, 86h, 35h, 8Dh, 40h
		db	 03h,0F9h,0E7h,0C0h, 22h, 02h
		db	 80h, 02h, 08h, 31h, 1Ch, 28h
		db	 1Dh, 48h, 95h, 1Eh, 18h, 0Ah
		db	 2Ch, 6Eh, 9Ah, 05h, 03h,0F9h
		db	0E7h,0C0h, 50h, 04h, 40h, 01h
		db	 40h, 01h, 54h,0D8h, 28h, 0Dh
		db	 58h,0D5h, 40h, 18h, 15h,0E5h
		db	0A0h, 44h, 03h,0F9h,0E7h,0C0h
		db	 0Ah, 02h,0A8h, 28h, 1Dh, 48h
		db	 95h, 50h, 50h, 18h, 19h, 83h
		db	0C0h, 03h,0F9h,0E7h,0C0h, 50h
		db	 04h, 40h, 0Dh, 58h,0D5h, 54h
		db	 14h, 18h, 0Ah, 03h,0F9h,0E7h
		db	0C0h, 02h, 20h, 0Ah,0A2h,0A8h
		db	 04h, 40h, 88h, 95h, 50h, 18h
		db	 01h, 40h, 03h,0F9h,0E7h,0C0h
		db	 01h, 40h, 14h, 01h, 44h, 04h
		db	 01h, 10h,0D5h, 54h, 18h, 03h
		db	0F9h,0E7h,0C0h, 88h,0A0h, 0Ah
		db	 2Ah,0AAh,0A0h, 80h, 95h, 55h
		db	 50h, 18h, 03h,0F9h,0E7h,0C0h
		db	 0Ah, 0Ah, 50h, 11h, 01h, 01h
		db	0A0h, 0Ch, 18h, 03h,0F9h,0E7h
		db	0C0h, 22h, 2Ah, 80h, 02h,0A8h
		db	 02h,0D3h,0AAh, 00h, 0Ah,0ABh
		db	 05h, 18h, 03h,0F9h,0E7h,0C0h
		db	0Ah
data_790	db	14h
		db	 40h,0EAh, 0Dh, 58h, 03h,0F9h
		db	0E7h,0C0h, 28h,0A0h, 28h,0A0h
		db	 02h,0AAh,0AAh
data_791	dw	0AA0h			; Data table (indexed access)
		db	 80h,0CCh
data_792	dw	0F903h			; Data table (indexed access)
		db	0E7h,0C0h, 0Ah,0A0h, 14h, 04h
		db	 01h, 0Ah, 01h
		db	40h
data_793	dw	4004h			; Data table (indexed access)
		db	 44h, 14h, 03h,0F9h,0E7h,0C0h
		db	 22h, 0Ah, 28h, 02h,0AAh,0AAh
		db	0A0h, 0Ah,0A8h, 02h, 20h, 08h
		db	 20h,0A0h, 03h,0F9h,0E7h,0C8h
		db	 82h, 80h,0A0h, 50h, 10h, 04h
		db	0A0h, 01h, 40h, 04h, 40h, 14h
		db	 45h, 45h, 51h, 10h, 03h,0F9h
		db	0E7h,0C0h, 08h, 80h,0A0h, 88h
		db	 02h,0D3h,0AAh, 00h, 0Ah,0A8h
		db	0A0h, 0Ah, 20h, 80h, 22h, 22h
		db	 0Ah, 22h, 28h, 2Bh,0F9h,0E7h
		db	0CAh, 20h, 80h,0A0h, 14h, 40h
		db	 10h, 0Ah, 01h, 10h, 15h, 45h
		db	 05h, 14h, 15h, 44h, 51h, 53h
		db	0F9h,0E7h,0CAh, 22h, 88h, 02h
		db	0A8h, 28h, 20h,0AAh,0A8h, 22h
		db	 88h,0A0h, 02h, 88h, 22h, 82h
		db	 0Ah, 80h, 8Bh,0F9h,0E7h,0CAh
		db	 28h, 28h, 88h,0A0h, 04h,0A0h
		db	 4Ah,0A0h, 01h, 04h, 01h, 10h
		db	 14h, 15h, 11h
		db	 50h, 40h, 50h
data_794	db	5			; Data table (indexed access)
		db	 53h,0F9h,0E7h,0CAh, 28h,0A0h
		db	0A0h, 02h, 0Ah,0D3h,0AAh, 00h
		db	0A8h, 22h, 2Ah, 82h, 28h, 80h
		db	 88h, 28h, 8Bh,0F9h,0E7h,0CAh
		db	 88h,0A8h, 20h, 22h, 44h, 04h
		db	 41h, 41h, 54h, 03h,0F9h,0E7h
		db	0C0h, 88h,0AAh, 2Ah,0D3h,0AAh
		db	 03h,0A8h, 02h, 2Ah,0A0h, 28h
		db	 02h, 0Bh,0F9h,0E7h,0CAh, 88h
		db	 20h, 80h, 0Ah,0D3h,0AAh, 09h
		db	 0Ah, 11h, 53h,0F9h,0E7h,0C2h
		db	 08h, 28h, 02h,0D3h,0AAh, 04h
		db	 82h,0D3h,0AAh, 01h,0A8h, 2Ah
		db	 82h,0AAh, 82h, 80h, 28h, 03h
		db	0F9h,0E7h,0C2h, 08h, 20h, 80h
		db	 05h,0AAh, 0Ah,0D3h,0AAh, 08h
		db	 0Ah,0AAh,0A0h,0AAh,0A0h,0A0h
		db	 0Ah,0A0h, 03h,0F9h,0E7h,0C2h
		db	 20h, 02h, 20h,0A0h, 28h, 28h
		db	 2Ah,0D3h,0AAh, 07h,0A8h, 2Ah
		db	 80h, 03h,0F9h,0E7h,0C8h, 80h
		db	0A2h, 2Ah, 0Ah, 0Ah,0D3h,0AAh
		db	 0Bh,0A0h, 03h,0F9h,0E7h,0C8h
		db	 80h, 02h,0D3h,0AAh, 0Ch, 80h
		db	 03h,0F9h,0E7h,0CAh, 02h, 8Ah
		db	 0Ah,0D3h,0AAh, 0Bh, 0Ah,0A0h
		db	 03h,0F9h,0E7h,0C0h, 02h,0D3h
		db	0AAh, 09h, 80h, 03h,0F9h,0E7h
		db	0C0h,0D3h,0AAh, 0Ch,0A0h, 03h
		db	0F9h,0E7h,0C0h, 28h, 02h, 80h
		db	 2Ah,0D3h,0AAh, 06h, 82h,0D3h
		db	0AAh, 02h, 80h, 03h,0F9h,0E7h
		db	0C0h,0A0h, 0Ah,0D3h,0AAh, 0Ch
		db	0A0h, 03h,0F9h,0E7h,0C0h, 2Ah
		db	0D3h,0AAh, 0Bh, 82h,0AAh,0A8h
		db	 03h,0F9h,0E7h,0C0h, 0Ah,0A0h
		db	 0Ah,0D3h,0AAh, 0Ch, 03h,0F9h
		db	0E7h,0C0h, 2Ah,0D3h,0AAh, 03h
		db	0A8h, 2Ah,0D3h,0AAh, 05h, 82h
		db	0A8h, 03h,0F9h,0C0h, 24h,0D3h
		db	0AAh, 08h, 0Ah,0D3h,0AAh, 03h
		db	 30h, 09h, 80h, 64h, 02h,0D3h
		db	0AAh, 0Ch,0A8h, 2Ah, 80h, 38h
		db	 01h,0E4h, 0Ah,0D3h,0AAh, 0Ch
		db	0A0h,0A0h, 39h, 03h,0C0h,0E4h
		db	 02h,0D3h,0AAh, 0Dh,0A8h, 39h
		db	 03h,0C0h, 03h,0C0h,0E4h, 39h
		db	 03h,0C0h, 03h,0C0h,0E4h, 39h
		db	 03h,0C0h, 03h, 27h, 09h,0C0h
		db	0C0h,0E4h, 39h,0C0h, 09h,0C0h
		db	 09h,0E0h, 29h,0E4h, 39h, 03h
		db	 27h, 09h,0C0h,0C0h, 03h,0C0h
		db	0E4h, 39h, 03h,0C0h, 03h,0C0h
		db	0E4h, 39h, 03h,0C0h, 03h,0C0h
		db	0E4h, 39h, 03h,0C0h, 03h,0C0h
		db	0E4h, 39h, 03h,0C0h,0C0h, 24h
		db	 30h, 09h,0E0h, 04h, 20h, 19h
		db	0E4h, 39h,0E7h,0C0h, 03h,0F9h
		db	0E7h,0C0h, 03h,0F9h,0E7h,0C0h
		db	 2Dh, 03h,0F9h,0E7h,0C0h, 2Fh
		db	 80h, 03h,0F9h,0E7h,0C0h, 2Fh
		db	 80h, 03h,0F9h,0E7h,0C0h, 2Fh
		db	 80h, 03h,0F9h,0E7h,0C0h, 2Fh
		db	 80h, 03h,0F9h,0E7h,0C0h, 2Fh
		db	 80h, 03h,0F9h,0E7h,0C0h, 2Fh
		db	 80h, 03h,0F9h,0E7h,0C0h, 2Fh
		db	 80h, 03h,0F9h,0E7h,0C0h, 2Fh
		db	 80h, 03h,0F9h,0E7h,0C0h, 2Fh
		db	 80h, 14h, 03h,0F9h,0E7h,0C0h
		db	 2Fh, 80h, 3Ch, 03h,0F9h,0E7h
		db	0C0h, 2Fh, 80h, 72h, 03h,0F9h
		db	0E7h,0C0h, 2Fh, 80h, 96h, 22h
		db	 50h, 03h,0F9h,0E7h,0C0h, 7Fh
		db	 70h,0C3h,0A0h, 27h, 50h, 03h
		db	0F9h,0E7h,0C0h, 7Fh, 4Ch, 93h
		db	 01h,0E0h, 27h, 50h, 03h,0F9h
		db	0E7h,0C0h, 7Fh,0ECh,0C1h, 83h
		db	 90h, 27h, 50h, 03h,0F9h,0E7h
		db	0C0h, 7Fh,0C4h, 91h, 84h,0B0h
		db	 27h, 55h, 03h,0F9h,0E7h,0C0h
		db	 0Bh, 40h,0DFh,0C4h,0C1h, 86h
		db	 18h, 27h, 55h, 03h,0F9h,0E7h
		db	0C0h, 0Bh,0E0h,0DFh, 64h, 91h
		db	 24h, 98h, 27h, 55h, 03h,0F9h
		db	0E7h,0C0h, 0Bh,0E0h,0DFh, 4Ch
		db	0C1h, 26h, 0Ch, 27h, 55h, 03h
		db	0F9h,0E7h,0C0h, 0Bh,0E0h,0DFh
		db	 4Ch, 91h, 24h, 8Ch, 27h, 55h
		db	 03h,0F9h,0E7h,0C0h, 0Ah, 7Fh
		db	 4Ch,0C1h, 26h, 09h, 27h, 55h
		db	0A0h, 03h,0F9h,0E7h,0C0h, 0Ah
		db	0DFh, 58h, 91h, 24h, 8Ah,0C0h
		db	 27h, 55h,0A0h, 03h,0F9h,0E7h
		db	0C0h,0DFh, 70h,0C1h, 26h, 0Fh
		db	 30h, 27h, 55h,0A0h, 03h,0F9h
		db	0E7h,0C0h, 7Fh, 20h, 91h, 24h
		db	 8Eh, 20h, 27h, 55h,0A0h, 03h
		db	0F9h,0E7h,0C0h,0DFh, 80h,0C1h
		db	 26h, 0Eh, 70h, 27h, 55h,0A0h
		db	 03h,0F9h,0E7h,0C0h,0DFh, 80h
		db	 31h, 24h, 8Bh, 20h, 27h, 03h
		db	0F9h,0E7h,0C0h,0DDh, 31h, 26h
		db	 0Ah, 30h, 27h,0D3h,0AAh, 01h
		db	0A5h, 28h, 03h,0F9h,0E7h,0C0h
		db	 03h,0C0h, 78h, 19h, 24h, 8Ah
		db	 60h, 27h, 2Ah,0D3h,0AAh, 00h
		db	0ACh, 40h, 03h,0F9h,0E7h,0C0h
		db	 07h, 70h, 78h, 0Dh, 26h, 0Ah
		db	 30h, 27h, 01h, 98h, 0Ah, 03h
		db	0F9h,0E7h,0C0h, 03h, 56h, 78h
		db	 02h, 24h, 8Ah, 60h, 27h,0C3h
		db	 05h, 03h,0F9h,0E7h,0C0h,0D5h
		db	 20h,0F0h,0A6h, 0Ah, 30h, 27h
		db	0D3h,0AAh, 01h,0A0h, 18h,0C0h
		db	 02h, 80h, 03h,0F9h,0E7h,0C0h
		db	 1Dh, 5Ch,0A0h, 04h, 8Ah, 60h
		db	 28h, 2Ah,0D3h,0AAh, 01h, 83h
		db	 18h, 01h, 40h, 03h,0F9h,0E7h
		db	0C0h, 07h, 80h,0D5h, 80h, 06h
		db	 0Ah, 30h,0D3h,0AAh, 01h,0A7h
		db	 20h, 66h,0A0h, 03h,0F9h,0E7h
		db	0C0h, 03h, 48h, 35h, 60h, 04h
		db	 8Ah, 60h, 2Ah,0D3h,0AAh, 00h
		db	0ABh, 5Ch, 1Eh, 08h, 80h, 03h
		db	0F9h,0E7h,0C0h, 07h, 57h, 02h
		db	 80h, 06h, 0Ah, 30h,0AAh,0AAh
		db	 82h,0AAh,0A7h, 55h, 80h, 09h
		db	0C0h, 03h,0F9h,0E7h,0C0h, 02h
		db	0B5h, 60h, 01h, 8Ah, 60h, 2Ah
		db	0AAh, 88h,0AAh,0ABh, 55h, 60h
		db	 09h,0C0h, 03h,0F9h,0E7h,0C0h
		db	 07h,0A5h, 58h,0CAh, 30h,0AAh
		db	0A8h, 8Ah,0AAh,0A7h, 55h, 4Ch
		db	 01h, 40h, 03h,0F9h,0E7h,0C0h
		db	 03h, 4Bh, 48h, 3Ah, 60h, 2Ah
		db	0AAh, 88h,0AAh,0ABh, 55h, 0Ch
		db	 03h,0F9h,0E7h,0C0h, 07h, 5Ah
		db	 20h, 06h, 30h,0AAh,0A8h, 8Ah
		db	0AAh,0A7h, 55h, 4Ch, 07h, 80h
		db	 03h,0F9h,0E7h,0C0h, 03h, 54h
		db	 80h, 03h, 60h, 2Ah,0AAh,0AAh
		db	0ABh, 55h, 0Ch, 50h, 07h, 80h
		db	 03h,0F9h,0E7h,0C0h, 07h, 57h
		db	0F0h,0D3h,0AAh, 01h,0A7h, 55h
		db	 4Ch,0F0h, 13h, 80h, 03h,0F9h
		db	0E7h,0C0h, 03h, 5Ch, 2Ah,0D3h
		db	0AAh, 00h,0ABh, 55h, 0Dh, 68h
		db	 13h, 80h, 03h,0F9h,0E7h,0C0h
		db	 07h, 20h,0D3h,0AAh, 01h,0A7h
		db	 55h, 4Fh, 18h, 13h, 80h, 50h
		db	 03h,0F9h,0E7h,0C0h, 03h,0C0h
		db	 2Ah,0D3h,0AAh, 00h,0ABh, 55h
		db	 0Ah, 0Ch, 13h, 80h, 03h,0F9h
		db	0E7h,0C0h, 07h, 80h,0D3h,0AAh
		db	 01h,0A7h, 54h, 0Ah, 0Ch, 13h
		db	 80h, 03h,0F9h,0E7h,0C0h, 02h
		db	 80h, 2Ah,0D3h,0AAh, 00h,0ABh
		db	 55h, 0Ch, 66h, 13h, 80h, 02h
		db	 80h, 03h,0F9h,0E7h,0C0h, 07h
		db	 80h,0D3h,0AAh, 01h,0A7h, 55h
		db	 4Bh,0B6h, 13h, 80h, 14h, 03h
		db	0F9h,0E7h,0C0h, 2Ah,0D3h,0AAh
		db	 00h,0ABh, 55h, 0Fh, 3Fh, 13h
		db	 80h, 0Ah, 03h,0F9h,0E7h,0C0h
		db	0AAh,0A8h, 02h,0AAh,0A7h, 54h
		db	 03h, 63h, 13h, 80h, 50h, 50h
		db	 14h, 0Ah, 01h, 10h, 14h, 03h
		db	0F9h,0E7h,0C0h, 2Ah,0AAh, 88h
		db	0AAh,0ABh, 55h, 04h, 8Dh, 80h
		db	 13h, 80h, 02h, 80h, 28h, 03h
		db	0F9h,0E7h,0C0h
data_795	db	0AAh			; Data table (indexed access)
		db	0A8h, 8Ah,0AAh,0A7h, 55h, 41h
		db	 70h, 13h, 81h, 41h, 40h, 05h
		db	 05h, 50h, 28h, 05h,0A0h, 03h
		db	0F9h,0E7h,0C0h, 2Ah,0AAh, 88h
		db	0AAh,0ABh, 55h, 05h, 56h, 13h
		db	 80h,0A2h,0A8h,0A0h, 02h,0A8h
		db	 02h, 8Ah, 0Ah, 02h, 80h, 03h
		db	0F9h,0E7h,0C0h,0AAh,0A8h, 8Ah
		db	0AAh,0A7h, 54h, 01h, 54h,0C0h
		db	 13h, 80h, 01h, 40h, 05h,0D3h
		db	0AAh, 02h,0D3h,0A0h, 00h, 14h
		db	 55h, 01h, 40h, 14h, 03h,0F9h
		db	0E7h,0C0h, 2Ah,0AAh,0AAh,0ABh
		db	 55h, 05h, 55h, 5Ch, 13h,0AAh
		db	 82h, 27h,0A8h, 2Ah,0D3h,0AAh
		db	 04h, 80h, 28h,0A2h, 80h,0A0h
		db	 05h, 02h, 80h, 02h, 80h, 03h
		db	0F9h,0E7h,0C0h,0D3h,0AAh, 01h
		db	0A7h, 55h, 41h, 55h, 55h, 80h
		db	 13h, 85h, 07h, 2Ah,0D3h,0AAh
		db	 01h, 0Ah,0D3h,0AAh, 01h,0B4h
		db	 05h, 0Ah, 50h, 03h,0F9h,0E7h
		db	0C0h, 2Ah,0D3h,0AAh, 00h,0ABh
		db	 55h, 05h, 55h, 55h, 60h, 13h
		db	 20h, 06h, 62h,0D3h,0AAh, 07h
		db	0A8h, 2Ah,0AAh, 80h, 0Ah, 28h
		db	 22h, 0Ah, 03h,0F9h,0E7h,0C0h
		db	0D3h,0AAh, 01h,0A7h, 55h, 41h
		db	 55h, 55h, 52h, 14h, 01h, 8Ch
		db	0D3h,0AAh, 09h, 0Ah, 28h, 51h
		db	 54h, 01h, 40h, 03h,0F9h,0E7h
		db	0C0h, 2Ah,0D3h,0AAh, 00h,0ABh
		db	 55h, 05h, 55h, 55h, 50h,0C0h
		db	 0Ah, 33h, 2Ah,0D3h, 0Ah, 00h
		db	0AAh,0A0h,0D3h,0AAh, 03h, 80h
		db	0A0h,0A2h,0D0h, 03h,0F9h,0E7h
		db	0C0h,0D3h,0AAh, 01h,0A7h, 55h
		db	 41h, 55h, 55h, 54h, 18h, 0Dh
		db	 2Ch, 70h, 1Ah,0AAh,0A5h,0ABh
		db	 4Ah,0D3h,0AAh, 02h, 01h, 40h
		db	 05h, 03h,0F9h,0E7h,0C0h, 2Ah
		db	0D3h,0AAh, 00h,0ABh
		db	'U_UUPS', 9, 'I'
		db	 90h, 0Ah, 28h, 0Ah,0D3h,0AAh
		db	 01h,0A8h, 28h, 88h,0A0h, 03h
		db	0F9h,0E7h,0C0h,0D3h,0AAh, 01h
		db	0A7h
		db	'T', 0Ch, 'uUUT`', 0Dh, 'C|J'
		db	0D3h,0AAh, 01h,0B1h,0A1h, 42h
		db	 94h, 03h,0F9h,0E7h,0C0h, 2Ah
		db	0D3h,0AAh, 00h,0ABh, 55h, 0Ch
		db	 09h, 55h, 0Ch, 09h, 78h,0C8h
		db	 0Ah,0AAh,0A0h,0A2h, 80h, 0Ah
		db	0A0h, 0Ah,0AAh,0AAh, 80h, 28h
		db	0A3h,0F9h,0E7h,0C0h,0D3h,0AAh
		db	 01h,0A7h, 55h, 43h,0D5h, 41h
		db	 54h, 01h, 80h, 0Dh, 3Fh,0BAh
		db	0D3h,0AAh, 00h,0B0h, 51h, 40h
		db	 01h,0D3h,0AAh, 00h, 03h,0F9h
		db	0E7h,0C0h, 2Ah,0D3h,0AAh, 00h
		db	0ABh, 55h, 05h, 60h, 1Dh, 60h
		db	 09h, 07h,0B2h,0AAh,0AAh,0ABh
		db	0EAh,0D3h,0AAh, 01h, 8Ah,0A3h
		db	0F9h,0E7h,0C0h,0D3h,0AAh, 01h
		db	0A7h, 55h, 41h, 52h, 02h, 40h
		db	 60h, 0Dh, 40h, 3Ah,0B0h, 0Ah
		db	 0Eh, 0Ah,0AAh, 45h, 01h,0B0h
		db	 50h, 1Ah,0AAh,0AAh, 50h, 03h
		db	0F9h,0E7h,0C0h, 2Ah,0D3h,0AAh
		db	 00h,0ABh, 55h, 05h, 55h, 60h
		db	 35h, 60h, 09h, 50h, 1Ah, 50h
		db	 52h,0DAh,0AAh,0AAh, 0Ah,0AAh
		db	0AAh, 82h,0ABh,0F9h,0E7h,0C0h
		db	0D3h,0AAh, 01h,0A7h, 54h, 01h
		db	 55h, 52h, 07h, 40h, 60h, 0Dh
		db	 54h, 20h, 0Ah, 01h, 04h, 02h
		db	 20h, 10h,0AAh,0AAh, 10h, 01h
		db	0AAh,0AAh,0A5h, 03h,0F9h,0E7h
		db	0C0h, 2Ah,0D3h,0AAh, 00h,0ABh
		db	55h
data_796	dw	5505h, 0C055h
		db	0C0h, 60h, 09h, 50h, 10h, 01h
		db	 12h, 81h, 01h, 11h, 04h, 11h
		db	 40h,0AAh,0AAh,0A0h,0AAh,0AAh
		db	 83h,0F9h,0E7h,0C0h,0D3h,0AAh
		db	 01h,0A7h
		db	'UAUUX', 0Ch, '`', 0Dh, '@ '
		db	 02h,0A8h, 4Eh, 2Ah, 80h, 08h
		db	 80h, 4Ah,0AAh,0AAh, 40h, 1Ah
		db	0AAh,0A3h,0F9h,0E7h,0C0h, 2Ah
		db	0D3h,0AAh, 00h,0ABh, 55h, 05h
		db	 55h, 55h, 54h, 81h, 80h, 60h
		db	 09h, 10h, 50h, 50h, 47h, 90h
		db	 54h, 51h, 01h,0D3h, 55h, 00h
		db	 50h, 40h, 0Ah,0AAh,0A0h,0AAh
		db	0ABh,0F9h,0E7h,0C0h,0D3h,0AAh
		db	 01h,0A7h, 54h, 01h,0D3h, 55h
		db	 00h, 58h, 30h, 60h, 0Dh, 54h
		db	 20h,0A0h,0A9h, 48h, 8Ah, 80h
		db	 09h, 55h, 69h, 55h, 55h, 60h
		db	 28h, 1Ah,0AAh,0A4h, 4Ah,0A3h
		db	0F9h,0E7h,0C0h, 2Ah,0D3h,0AAh
		db	 00h,0ABh, 55h, 05h,0D3h, 55h
		db	 00h, 51h, 83h
		db	 60h, 09h, 50h
data_797	db	10h			; Data table (indexed access)
		db	 51h, 55h, 57h, 94h, 51h, 15h
		db	0D3h, 55h, 00h, 51h, 51h, 40h
		db	 0Ah,0AAh,0A0h, 0Ah,0ABh,0F9h
		db	0E7h,0C0h,0D3h,0AAh, 01h,0A7h
		db	 55h, 41h,0D3h, 55h, 00h, 54h
		db	 30h, 0Dh, 54h, 22h,0B5h, 55h
		db	 52h,0D5h, 41h, 41h, 55h, 55h
		db	 54h, 15h, 54h, 08h, 88h, 28h
		db	 1Ah,0AAh,0B0h, 05h, 43h,0F9h
		db	0E7h,0C0h, 2Ah,0D3h,0AAh, 00h
		db	0ABh, 55h, 05h, 55h, 55h, 50h
		db	 50h, 03h, 09h, 05h, 55h, 55h
		db	 5Ch,0C5h, 55h, 55h, 05h, 55h
		db	 05h, 44h, 11h, 40h, 1Eh,0AAh
		db	0AAh, 23h,0F9h,0E7h,0C0h,0D3h
		db	0AAh, 01h,0A7h, 55h, 41h,0D3h
		db	 55h, 00h, 54h, 01h, 70h, 0Dh
		db	 40h, 01h, 55h, 55h, 58h, 61h
		db	 55h, 54h, 01h, 54h, 01h, 54h
		db	 15h, 42h, 08h, 08h,0EAh,0AAh
		db	0B0h, 13h,0F9h,0E7h,0C0h, 02h
		db	0D3h,0AAh, 00h,0ABh, 55h, 05h
		db	0D3h, 55h, 00h, 50h, 01h,0E6h
		db	 09h, 05h, 55h, 50h, 48h, 65h
		db	 50h, 05h, 55h, 54h, 55h, 41h
		db	0AAh,0A0h, 0Bh,0F9h,0E7h,0C0h
		db	0D3h,0AAh, 01h,0A7h, 54h, 01h
		db	 55h, 55h, 41h, 40h, 01h, 8Ch
		db	0CDh, 54h, 29h, 54h, 02h,0B0h
		db	 30h, 15h, 54h, 15h, 41h, 40h
		db	 14h, 15h, 55h, 42h,0A2h, 02h
		db	 1Ah,0AAh, 53h,0F9h,0E7h,0C0h
		db	 02h,0A4h,0EAh,0AAh,0AAh,0ABh
		db	 50h, 05h,0D3h, 55h, 00h, 50h
		db	 01h, 21h, 99h,0D0h, 05h, 50h
		db	 45h, 20h, 18h, 05h, 55h, 50h
		db	0D3h, 55h, 00h, 41h, 40h,0AAh
		db	0ABh,0F9h,0E7h,0C0h,0A9h, 3Ah
		db	0AAh,0AAh,0A7h, 54h, 01h, 55h
		db	 55h, 54h, 14h, 01h, 58h, 27h
		db	 24h, 3Dh, 4Ah, 28h,0C0h, 06h
		db	 14h, 15h, 41h, 55h, 54h, 28h
		db	 01h, 55h, 55h, 54h,0A2h, 88h
		db	 1Ah,0A3h,0F9h,0E7h,0C0h, 03h
		db	 48h, 02h,0A4h, 18h, 2Ah,0ABh
		db	 55h, 05h, 55h, 50h, 55h, 50h
		db	 01h, 08h, 06h, 63h, 2Ch, 08h
		db	 08h, 80h, 90h, 55h, 45h, 10h
		db	 05h, 55h, 54h, 40h, 10h,0ABh
		db	0F9h,0E7h,0C0h, 0Ah, 41h,0AAh
		db	 66h, 0Ah,0A7h, 54h, 01h, 55h
		db	 55h, 54h, 01h, 58h, 72h, 66h
		db	0A0h, 24h, 0Ah, 02h, 20h, 22h
		db	 0Ah, 01h, 69h, 55h, 54h, 22h
		db	 82h,0A2h,0A0h, 13h,0F9h,0E7h
		db	0C0h,0D8h, 02h,0A0h,0A8h, 2Ah
		db	 08h,0CEh,0ABh, 69h, 05h,0D3h
		db	 55h, 00h, 01h, 08h, 65h, 6Ch
		db	0C0h, 9Ch, 24h, 50h, 05h, 04h
		db	 41h, 15h, 44h, 55h, 50h, 50h
		db	 54h, 50h, 15h, 10h, 0Bh,0F9h
		db	0E7h,0C0h, 1Eh, 0Ah, 0Ah,0AAh
		db	0F0h, 0Ah,0B4h,0E9h, 25h, 0Bh
		db	0BDh, 55h, 55h, 40h, 01h, 58h
		db	0D4h, 0Ch,0F0h,0D5h, 80h, 06h
		db	 01h, 40h, 02h, 2Ah, 01h, 55h
		db	 54h, 88h, 82h, 20h, 13h,0F9h
		db	0E7h,0C0h, 28h, 20h,0B4h, 80h
		db	 2Ah,0A8h, 81h,0EAh, 82h,0ABh
		db	 55h, 05h, 50h, 01h, 09h, 49h
		db	 54h,0BCh, 95h, 60h, 0Ch, 05h
		db	 14h, 41h,0D3h, 55h, 00h, 40h
		db	 15h, 14h, 4Bh,0F9h,0E7h,0C0h
		db	0AAh, 28h, 96h,0A0h,0BEh, 82h
		db	 0Ah, 48h, 90h, 08h, 55h, 55h
		db	 54h, 01h, 5Ah, 80h,0C6h,0F0h
		db	 25h, 52h, 24h,0A0h,0A0h, 0Ah
		db	 02h, 80h,0ABh, 68h, 02h, 08h
		db	 33h,0F9h,0E7h,0C0h, 2Ah, 80h
		db	 2Ah, 80h, 20h, 0Ah,0AAh,0A1h
		db	 0Ch, 0Ch, 50h, 50h, 01h, 0Dh
		db	 88h, 09h, 48h, 03h, 55h,0CCh
		db	 01h, 40h, 50h, 55h, 54h, 44h
		db	 01h, 4Bh,0F9h,0E7h,0C0h, 0Ah
		db	0AAh, 0Ah, 0Fh,0AAh,0EAh, 5Ah
		db	0A5h, 40h,0A6h, 9Dh, 54h, 01h
		db	 52h, 01h, 48h, 58h,0D8h,0C1h
		db	 51h,0A0h, 0Ah, 15h, 7Ch, 02h
		db	0A0h,0B3h,0F9h,0E7h,0C0h,0A0h
		db	 2Ah, 80h, 02h, 82h, 80h, 2Fh
		db	0A0h,0A0h,0A1h, 01h, 82h,0A0h
		db	 5Bh, 55h, 01h, 16h, 03h, 48h
		db	 94h, 9Dh, 02h, 20h, 50h, 55h
		db	 50h, 54h, 0Bh,0F9h,0E7h,0C0h
		db	 01h, 10h,0AAh,0A0h, 0Ah,0AAh
		db	0BFh,0EAh,0AAh,0B2h,0D4h,0FAh
		db	 70h, 55h, 40h, 01h, 58h, 25h
		db	 58h,0D5h, 71h, 80h, 28h,0A0h
		db	0A0h, 15h, 54h, 08h, 13h,0F9h
		db	0E7h,0C0h, 28h, 02h, 08h, 2Ah
		db	0AAh,0AAh,0B0h,0E8h, 2Ah, 01h
		db	 45h,0A1h, 1Ah,0AAh, 83h, 01h
		db	 1Ch, 1Dh, 48h, 95h, 56h, 35h
		db	 14h, 01h, 44h, 14h, 0Bh,0F9h
		db	0E7h,0C0h, 0Ah,0AAh, 01h, 04h
		db	 0Ah, 0Ah,0AAh, 0Ah,0EBh,0AAh
		db	 1Eh, 51h, 1Bh, 5Fh,0C2h,0BEh
		db	 0Fh, 30h, 01h, 58h, 0Dh, 58h
		db	0D5h, 41h, 26h, 14h, 48h,0C0h
		db	 0Ah, 01h, 73h,0F9h,0E7h,0C0h
		db	 02h, 80h, 2Ah, 82h,0A8h, 02h
		db	0AAh, 82h, 80h, 20h,0A8h, 20h
		db	0ABh, 1Ah, 08h,0D0h, 82h, 2Ch
		db	 01h, 1Ch, 1Dh, 48h, 95h, 55h
		db	 12h, 74h, 2Eh, 60h, 01h, 15h
		db	 1Bh,0F9h,0E7h,0C0h, 0Ah, 0Ah
		db	0A0h,0AAh,0AAh,0A0h,0AAh, 0Ah
		db	 01h, 50h, 1Fh,0A0h, 01h, 5Bh
		db	 63h,0FEh, 10h, 0Ah, 5Eh, 3Eh
		db	 01h, 58h, 0Dh, 58h,0D4h, 14h
		db	 02h, 58h, 01h,0A8h, 30h,0A0h
		db	 02h, 3Bh,0F9h,0E7h,0C0h, 2Ah
		db	 80h, 02h,0AAh, 82h,0A8h, 02h
		db	 80h, 2Ah,0AAh, 82h, 82h, 80h
		db	 2Ah, 10h,0EBh, 4Ah, 82h,0A0h
		db	 0Bh, 01h, 1Ch, 1Dh, 48h, 95h
		db	 55h, 03h, 50h, 30h, 05h, 1Bh
		db	0F9h,0E7h,0C0h,0AAh, 0Ah,0A0h
		db	 0Ah,0A0h,0AAh,0AAh, 04h, 38h
		db	 0Ah, 0Ah, 59h, 20h, 1Ah,0A0h
		db	0C3h, 0Ah, 06h, 01h, 58h, 0Dh
		db	 58h,0D4h, 01h, 40h, 14h, 0Ch
		db	 1Ah, 46h, 93h,0F9h,0E7h,0C0h
		db	 2Ah, 80h, 2Ah, 80h, 02h,0A8h
		db	 28h, 02h,0A8h, 28h, 02h, 52h
		db	 02h,0A0h, 0Ah,0AAh, 82h,0A5h
		db	 10h, 06h, 31h, 1Ch, 1Dh, 48h
		db	 95h, 1Eh, 18h, 08h, 80h,0C0h
		db	 11h, 1Bh,0F9h,0E7h,0C0h,0AAh
		db	 0Ah,0A0h,0A0h, 0Ah,0AAh,0A5h
		db	0F0h, 0Ah, 0Eh, 4Ah,0B5h,0E0h
		db	0B8h, 88h, 28h,0C0h,0D8h, 0Dh
		db	 58h,0D5h, 40h, 19h, 10h, 18h
		db	 1Bh,0F9h,0E7h,0C0h, 02h, 80h
		db	 02h,0A8h, 02h, 80h, 2Ah,0AAh
		db	 80h, 02h, 80h, 28h, 02h, 22h
		db	0A0h, 0Ah,0AAh,0AAh,0AFh,0A0h
		db	 45h, 01h,0A8h, 1Dh, 48h, 95h
		db	 50h, 50h, 18h, 06h,0C0h,0C0h
		db	 31h, 80h, 1Bh,0F9h,0E7h,0C0h
		db	 0Ah,0A0h, 0Ah,0A0h,0AAh, 0Bh
		db	 45h,0A0h, 05h, 0Ah,0A0h, 5Ah
		db	 0Eh,0ECh, 12h,0FCh, 9Fh, 0Dh
		db	 58h,0D5h, 54h, 14h, 18h, 30h
		db	 06h, 0Dh, 80h, 30h, 1Bh,0F9h
		db	0E7h,0C0h, 02h,0A8h, 02h,0AAh
		db	 80h, 02h,0A8h, 02h, 80h, 02h
		db	0A0h, 22h, 86h, 5Ch, 02h, 82h
		db	 82h,0AAh, 44h, 05h,0AAh, 26h
		db	0FEh, 04h, 60h, 88h, 95h, 50h
		db	 18h, 60h, 30h, 0Ch, 1Bh,0F9h
		db	0E7h,0C0h, 0Ah,0AAh, 0Ah,0A0h
		db	0A0h, 01h,0B0h,0B1h,0A3h, 6Fh
		db	0F0h, 0Ah,0A0h,0EBh, 0Ah,0C1h
		db	 81h, 8Ah, 07h, 08h, 30h,0D5h
		db	 54h, 18h, 01h, 9Bh,0F9h,0E7h
		db	0C0h, 02h, 80h, 28h, 02h,0A8h
		db	 28h, 02h, 08h, 28h, 22h, 02h
		db	0AAh,0AAh, 80h,0D3h, 02h, 00h
		db	 04h, 62h,0AEh, 60h, 7Ah,0F0h
		db	 11h, 80h, 95h, 55h, 50h, 18h
		db	 03h,0F9h,0E7h,0C0h,0D3h, 0Ah
		db	 00h,0A0h, 0Ah,0AAh, 0Ah, 0Ah
		db	0F0h,0A8h, 2Ah,0A0h,0A3h, 95h
		db	 0Bh, 3Eh, 30h,0B0h,0BAh, 82h
		db	0BBh, 54h, 02h, 03h, 44h, 0Ch
		db	 18h, 03h,0F9h,0E7h,0C0h, 22h
		db	 02h, 82h, 80h, 2Ah, 80h, 02h
		db	 80h, 2Ah,0A8h, 3Eh, 82h, 80h
		db	 06h, 10h, 0Ah, 01h, 48h, 21h
		db	 1Ah,0AAh,0ADh, 80h, 04h, 10h
		db	0ABh, 05h, 18h, 03h,0F9h,0E7h
		db	0C0h, 0Ah,0A0h, 0Ah,0A0h,0AAh
		db	0AAh, 0Ah, 0Ah,0ABh, 23h, 40h
		db	0F4h, 90h, 8Eh, 0Ah,0A0h,0AAh
		db	 15h, 80h, 80h, 4Dh, 58h, 03h
		db	0F9h,0E7h,0C0h, 28h,0A0h, 02h
		db	0A8h, 28h, 02h, 80h, 02h,0A8h
		db	 28h, 02h,0AAh, 80h, 02h,0AAh
		db	 5Ah,0A8h, 2Ah,0A8h, 22h, 03h
		db	 1Ah, 10h, 68h, 10h, 10h, 20h
		db	0CCh, 03h,0F9h,0E7h,0C0h, 0Ah
		db	0A0h,0AAh,0AAh, 0Ah, 88h,0A0h
		db	 0Ah,0A0h,0BEh,0AAh,0AAh, 5Eh
		db	 10h,0B4h, 01h,0D6h,0B8h, 61h
		db	 02h, 80h, 40h, 03h,0F9h,0E7h
		db	0C0h, 02h, 82h, 80h, 02h, 80h
		db	 28h, 2Ah,0A8h, 2Ah, 82h,0A8h
		db	 36h, 28h, 28h, 02h, 82h, 80h
		db	 2Ah,0A4h,0EAh, 51h, 7Ah, 48h
		db	 40h, 10h, 08h, 03h,0F9h,0E7h
		db	0C8h, 82h, 80h,0D3h,0A0h, 00h
		db	0AAh,0BEh, 0Ah, 0Ah,0AAh, 0Ah
		db	0A0h,0AAh, 78h,0AAh, 0Ah,0EEh
		db	0AAh, 04h, 08h, 02h, 01h,0A0h
		db	 03h,0F9h,0E7h,0C0h, 08h, 80h
		db	 2Ah, 80h, 02h,0A8h, 02h,0AFh
		db	 82h,0A8h, 2Ah, 82h, 80h, 2Ah
		db	0AAh, 80h, 2Ah,0A8h,0A0h, 02h
		db	0AAh, 82h, 5Ah, 80h, 02h, 01h
		db	 40h, 08h, 03h,0F9h,0E7h,0CAh
		db	 20h, 80h,0A0h
data_798	db	0Ah			; Data table (indexed access)
		db	0AAh
data_799	db	0A0h
		db	0AAh,0AAh, 0Ah
data_800	db	0AEh
		db	0F4h
data_801	db	0Ah			; Data table (indexed access)
		db	0A0h, 0Ah,0A0h,0A0h, 08h, 11h
		db	 2Ah, 0Ah, 0Ah,0AAh, 0Ah,0A4h
		db	 04h, 04h, 80h, 08h, 10h, 03h
		db	0F9h,0E7h,0CAh, 22h, 88h
data_802	db	2			; Data table (indexed access)
		db	82h
data_803	dw	2A80h			; Data table (indexed access)
		db	0AAh,0A8h, 02h,0AAh, 82h,0A8h
		db	 02h,0D3h,0AAh, 00h, 80h, 02h
		db	0AAh,0A8h, 2Ah,0AEh, 48h, 02h
		db	 80h, 02h, 88h, 08h, 2Ah, 02h
		db	 30h, 04h, 02h, 03h,0F9h,0E7h
		db	0CAh, 28h, 28h, 88h,0A0h, 0Ah
		db	 0Ah,0A0h, 0Ah,0A0h, 0Ah,0A0h
		db	 0Ah,0A8h, 2Ah, 0Ah,0A0h,0A0h
		db	 0Ah,0A0h, 0Ah,0A0h,0AAh, 0Ah
		db	 0Ah, 50h,0ACh,0A0h, 80h, 04h
		db	 03h,0F9h,0E7h,0CAh, 28h,0A0h
		db	0A0h, 28h, 02h, 82h, 82h, 80h
		db	 02h, 80h, 2Bh,0E0h,0A8h, 02h
		db	 80h, 2Ah, 80h, 28h, 2Ah, 80h
		db	 28h, 02h,0A8h, 2Ah,0EAh, 10h
		db	 08h, 03h,0F9h,0E7h,0CAh, 88h
		db	0A8h, 20h, 22h,0A0h,0AAh,0A0h
		db	 0Ah,0A0h,0B0h, 5Eh,0A0h,0A0h
		db	 0Bh, 4Ah, 0Ah, 0Ah,0AAh, 2Ch
		db	 28h, 55h, 11h, 45h, 03h,0F9h
		db	0E7h,0C0h, 88h,0AAh, 28h, 28h
		db	 02h,0AAh,0AAh, 80h, 02h,0AAh
		db	0AAh, 82h,0A8h, 02h, 80h, 28h
		db	 2Ah,0A8h, 02h, 20h, 80h, 02h
		db	 03h,0F9h,0E7h,0CAh, 88h, 20h
		db	 80h, 0Ah,0D3h,0AAh, 00h, 0Ah
		db	0A0h, 0Ah,0AAh, 10h, 51h, 03h
		db	0F9h,0E7h,0C2h, 08h, 28h, 02h
		db	 82h, 80h, 2Ah, 80h, 02h, 82h
		db	 80h, 02h,0F8h, 02h, 82h, 80h
		db	 02h, 28h, 08h, 80h, 82h,0AAh
		db	 82h, 20h, 88h, 03h,0F9h,0E7h
		db	0C2h, 08h, 20h, 80h, 0Ah,0A0h
		db	 0Ah,0AAh, 0Ah,0AAh,0AFh, 01h
		db	 40h, 40h, 01h, 10h, 01h,0B0h
		db	 15h, 05h, 01h, 04h, 10h, 01h
		db	 41h, 03h,0F9h,0E7h,0C2h, 20h
		db	 02h, 20h,0A0h, 02h,0A8h, 02h
		db	0A8h, 22h,0A0h, 88h, 80h, 0Ah
		db	 0Ah, 82h,0A8h, 80h, 88h, 0Bh
		db	0F9h,0E7h,0C8h, 80h,0A2h, 2Ah
		db	 0Ah, 0Ah,0A0h,0A0h, 11h, 40h
		db	 40h, 10h, 1Ah,0A0h,0BEh, 0Fh
		db	0FBh, 13h,0F9h,0E7h,0C8h, 80h
		db	 28h, 2Ah, 80h, 02h, 0Ah,0A8h
		db	 20h, 0Bh,0F9h,0E7h,0CAh, 02h
		db	 8Ah, 01h, 50h, 01h,0B0h, 0Eh
		db	0A0h, 0Eh, 13h,0F9h,0E7h,0C2h
		db	0A8h, 02h, 80h, 02h,0AAh,0AAh
		db	 82h, 80h, 02h, 0Bh,0F9h,0E7h
		db	0CAh,0A0h, 0Ah, 0Ah,0A0h, 04h
		db	 1Fh, 0Ah,0AAh,0AFh,0A1h, 13h
		db	0F9h,0E7h,0C2h,0A8h, 28h, 2Ah
		db	0A8h, 2Ah, 80h, 28h, 20h, 28h
		db	0AAh,0A8h, 02h, 0Bh,0F9h,0E7h
		db	0CAh,0AAh, 0Ah,0A0h, 0Ah,0AAh
		db	0AAh,0A0h,0AAh,0AAh, 10h, 1Ah
		db	0AAh, 04h, 11h, 50h, 13h,0F9h
		db	0E7h,0C2h,0D3h,0AAh, 01h,0A8h
		db	 02h,0AAh,0AAh,0A8h, 20h, 28h
		db	 0Ah,0A8h, 08h, 0Bh,0F9h,0E7h
		db	0CAh,0AAh, 0Ah,0D3h,0AAh, 01h
		db	0A0h, 04h, 10h, 04h, 04h, 0Ah
		db	0AAh,0AAh,0A0h, 40h, 13h,0F9h
		db	0E7h,0C2h,0A8h, 2Ah,0AAh, 82h
		db	0AAh,0AAh,0A8h, 20h, 02h, 80h
		db	 22h,0A8h, 2Ah, 80h, 80h, 0Bh
		db	0F9h,0C0h, 24h, 0Ah,0AAh, 0Ah
		db	0A0h, 04h, 01h, 0Ah,0AAh,0A0h
		db	0BEh, 04h, 20h, 09h, 80h, 64h
		db	 08h, 0Ah, 08h, 80h,0AAh, 82h
		db	0AAh, 80h, 08h, 18h, 01h,0E4h
		db	 0Ah,0E0h, 14h, 40h, 4Eh, 0Ah
		db	0AAh, 40h, 29h, 03h,0C0h,0E4h
		db	 02h, 80h, 08h, 82h,0A8h, 2Ah
		db	0A8h, 20h, 19h, 03h,0C0h, 03h
		db	0C0h,0E4h, 39h, 03h,0C0h, 03h
		db	0C0h,0E4h, 39h, 03h,0C0h, 03h
		db	 27h, 09h,0C0h,0C0h,0E4h, 39h
		db	0C0h, 09h, 93h, 2Bh, 00h, 00h
		db	 00h, 00h,0DAh, 07h
		db	35 dup (0)
		db	 1Eh, 73h, 9Bh, 3Eh, 40h, 07h
		db	 0Ch,0FFh,0F9h,0B5h, 00h, 0Eh
		db	 1Fh,0CFh,0FFh
		db	0A1h, 80h, 18h, 3Bh,0FBh,0FFh
		db	0D6h, 00h, 30h, 77h,0D7h,0ECh
		db	 80h, 00h, 20h,0EBh,0EFh,0BFh
		db	 80h, 00h, 47h,0FBh,0FFh,0CFh
		db	 80h, 00h,0CFh, 9Fh,0D7h, 9Dh
		db	 00h, 01h, 9Fh, 7Bh, 2Eh,0FBh
		db	 00h, 03h, 1Bh,0FEh,0B7h,0F6h
		db	 00h, 06h, 7Bh,0EFh, 8Fh, 9Eh
		db	 00h, 0Ch,0E7h,0BFh,0EFh,0BCh
		db	 60h, 19h, 67h,0BFh,0FBh,0F4h
		db	0FCh, 31h,0CFh,0ECh,0AFh,0F4h
		db	 5Ch, 66h,0AFh,0CDh,0ECh, 58h
		db	 0Fh,0CDh, 9Fh,0F7h, 39h, 95h
		db	 0Fh, 9Dh, 77h,0DEh, 61h,0BEh
		db	 83h, 13h, 7Eh, 74h,0C3h,0F9h
		db	 06h, 3Bh, 3Ch, 59h, 07h,0FAh
		db	 0Ch, 2Bh, 7Ch,0A2h, 0Fh,0FAh
		db	0D8h, 26h, 79h,0C5h,0FFh,0AFh
		db	0B0h, 47h,0F2h,0DBh,0FFh, 03h
		db	 60h, 4Ch,0EFh,0D7h,0FBh, 06h
		db	0C0h, 4Fh,0F3h,0EFh,0EEh, 1Fh
		db	 80h, 9Dh,0BCh, 8Fh,0FCh, 1Fh
		db	 00h, 9Bh,0F5h, 01h,0B8h, 26h
		db	 00h,0BFh,0F2h, 13h, 20h, 0Ch
		db	 01h, 3Fh,0E4h, 26h, 30h, 18h
		db	 01h, 3Eh, 9Ch, 2Ch, 63h, 30h
		db	 00h,0F1h, 3Bh,0F9h, 86h, 66h
		db	 0Fh,0E0h, 27h,0F0h, 00h,0C6h
		db	 1Bh,0C0h,0CFh,0E0h, 17h, 9Ch
		db	 37h, 11h, 5Fh,0E0h, 3Fh, 1Ch
		db	 4Eh, 22h,0BDh,0C0h, 06h, 54h
		db	 3Ch, 57h, 79h, 80h, 18h, 84h
		db	0F0h, 3Eh,0F3h, 00h, 39h, 04h
		db	0E0h, 2Dh,0F6h, 0Dh, 72h, 07h
		db	 80h, 71h,0E4h,0F1h,0E4h, 0Bh
		db	 00h,0E3h,0C8h, 00h, 84h, 9Eh
		db	 01h,0D7h, 90h, 63h, 85h,0BCh
		db	 06h,0ADh, 6Ch, 03h, 06h, 78h
		db	 5Ch, 63h,0F7h,0A6h, 38h,0F0h
		db	 1Ch, 85h,0CEh,0FCh,0F1h,0F0h
		db	0F9h, 1Fh,0FEh,0D9h,0E5h,0E1h
		db	0F2h, 7Bh, 1Dh, 30h, 6Bh,0F8h
		db	0E4h,0FFh, 38h, 60h,0DFh, 83h
		db	0C2h,0FCh,0E1h,0C3h, 7Fh,0F5h
		db	 87h,0FDh,0CDh, 86h,0BEh, 36h
		db	 1Ah,0D8h, 03h, 1Fh, 7Fh, 3Eh
		db	 3Fh,0F6h, 06h, 1Ch,0FAh, 38h
		db	 77h, 2Ch,0CCh, 79h,0FFh,0E0h
		db	0FFh,0FEh, 18h,0FFh
loc_364:
		db	 67h,0C1h,0BEh,0F8h, 30h,0EEh
		db	0DFh, 8Fh,0FFh,0BDh
loc_365:
		loopz	$-51h			; Loop if zf=1, cx>0

		out	dx,ax			; port 0F000h ??I/O Non-standard
		pop	ds
		jnp	$-0Fh			; Jump if not parity
		db	0C7h,0BAh, 7Eh, 3Ch,0FEh,0F9h
		db	 07h,0F7h,0FCh, 7Fh,0EFh,0B3h
		db	 1Eh, 7Fh,0F9h,0FFh
loc_366:
		jg	loc_366			; Jump if >
		cmp	bl,bh
		db	0F2h,0FDh, 5Fh,0ECh, 39h,0FFh
		db	0E7h,0FAh,0F7h, 70h, 7Fh,0FFh
		db	0EBh,0F7h,0E7h,0F0h,0CFh,0FFh
		db	0DFh,0BFh,0E1h, 61h,0BFh,0EEh
		db	0B6h, 7Fh,0C1h,0C3h,0FFh
		db	4Bh
data_805	db	6Eh			; Data table (indexed access)
		db	 7Fh, 81h, 87h,0FEh,0C2h,0A8h
		db	 75h, 03h, 0Dh,0FFh, 47h, 80h
		db	 77h, 06h, 1Fh,0FEh, 0Dh, 1Dh
		db	0F6h, 0Ch, 3Fh,0FEh, 1Eh, 3Dh
		db	0DEh, 18h, 7Fh, 7Eh, 34h, 7Dh
		db	 4Ch, 30h,0FFh,0E0h
loc_367:
;*		cmp	bh,dh
		db	 38h,0F7h		;  Fixup - byte match
		cmp	al,61h			; 'a'
		mov	di,5180h
		hlt				; Halt processor
		clc				; Clear carry flag
		db	0C7h,0FBh, 01h,0E1h,0D3h,0FFh
		db	 0Fh,0FEh, 03h, 81h, 5Dh, 67h
		db	 0Eh,0ECh, 07h, 05h, 4Fh,0ECh
		db	 3Eh,0D8h, 0Ch, 15h,0FDh,0E4h
		db	 79h,0B0h, 3Ch, 54h,0FFh,0D0h
		db	0F3h,0E0h, 7Dh,0DBh,0FFh, 91h
		db	0E6h,0C0h,0FFh, 7Fh,0F7h,0C3h
		db	0CFh, 81h,0FDh

locloop_369:
		std				; Set direction flag
		ja	loc_367			; Jump if above
		lahf				; Load ah from flags
loc_370:
		add	si,di
		db	0FFh,0FFh, 0Fh
loc_371:
		db	 3Eh, 07h, 9Fh,0EDh
loc_372:
		call	dword ptr data_796
		jg	loc_371			; Jump if >
		cld				; Clear direction
		cmp	al,0F8h

locloop_373:
		jns	locloop_373		; Jump if not sign
		rcr	ah,cl			; Rotate thru carry
;*		cmp	cx,si
		db	 39h,0F1h		;  Fixup - byte match
		jmp	short loc_372
			                        ;* No entry point to code
;*		jcxz	loc_368			;*Jump if cx=0
		db	0E3h,0B0h		;  Fixup - byte match
		db	0F3h,0E7h,0BFh,0FBh, 6Dh,0E1h
		db	0EFh,0DEh,0AFh,0E8h,0EFh,0E3h
		db	0CFh,0FBh,0FFh,0E1h,0B7h,0C7h
		db	 9Fh,0EBh,0FFh, 81h,0EFh, 0Fh
		db	0BFh,0AFh,0D5h, 81h,0FFh, 1Eh
		db	 7Eh,0FEh,0F7h,0C7h, 0Eh, 3Ch
		db	0BBh,0FFh,0FEh,0CEh, 38h, 71h
		db	0CFh,0FFh, 7Ah, 7Ch, 18h,0F7h
		db	 3Bh,0E8h,0B3h,0B8h, 71h,0DCh
		db	0F6h,0E1h,0E6h, 70h, 03h,0F7h
		db	0EFh, 80h,0EAh,0F0h
loc_374:
		db	0C7h,0DFh,0FCh, 03h,0EFh,0F0h
		db	 0Fh, 7Fh,0F7h,0C7h, 2Fh,0F0h
		db	 0Ch,0FDh,0DFh,0CCh,0CFh,0F0h
		db	 37h,0FFh, 0Eh, 5Eh,0DFh,0F0h
		db	 0Fh,0D8h, 2Dh, 3Dh,0BFh,0E0h
		db	 7Fh,0E0h, 38h,0FBh, 7Fh, 80h
		db	0FFh, 80h,0E1h,0FEh,0FBh, 80h
		db	 00h, 00h
		db	33 dup (0)
		db	 80h, 00h, 00h, 00h, 00h, 21h
		db	 00h, 00h, 00h, 00h, 00h, 42h
		db	 00h, 00h, 00h, 00h, 01h, 94h
		db	 00h, 00h, 00h, 00h, 01h,0B8h
		db	 00h, 00h, 00h, 00h, 07h, 70h
		db	 00h, 00h, 00h, 00h, 0Eh,0E0h
		db	 9Ch,0FCh,0F9h, 00h, 1Dh,0C1h
		db	0FBh,0FFh,0D4h, 00h, 3Ah, 83h
		db	0E7h,0FFh, 06h, 00h, 6Dh, 4Fh
		db	0EFh,0FFh, 58h, 00h, 99h, 9Fh
		db	0FFh,0BAh, 00h, 00h, 7Bh, 3Fh
		db	0FFh, 7Ch, 00h, 00h,0FEh,0EFh
		db	0FEh,0A8h, 00h, 01h,0FEh,0FFh
		db	 5Ch, 70h, 00h, 03h,0FDh,0ECh
		db	0F8h, 78h, 00h, 07h,0E9h,0F8h
		db	0E0h,0F0h, 00h, 0Fh,0EFh,0B0h
		db	 01h,0E0h, 00h, 1Fh, 9Eh, 70h
		db	 07h,0E0h, 00h, 3Dh, 9Eh,0C0h
		db	 0Fh,0C0h
loc_375:
		add	[bx+29h],bh
		sbb	byte ptr [bx],80h
;*		add	dl,bh
		db	 00h,0FAh		;  Fixup - byte match
		mov	data_812,ax
		add	[bx+di],al
		test	byte ptr [bp],7Eh	; '~'
		add	[bp+di],al
		cmc				; Complement carry
		db	0C0h, 00h,0CCh, 80h, 07h,0CDh
		db	 98h, 03h, 9Eh, 00h, 0Fh,0ECh
		db	0B0h, 07h,0BEh, 60h, 1Eh,0ADh
		db	 62h, 8Fh,0FFh,0C0h, 3Ch, 99h
		db	0C5h, 3Fh,0B7h, 80h
		db	79h
loc_376:
		pop	ds
		iret				; Interrupt return
			                        ;* No entry point to code
		jg	loc_376			; Jump if >
;*		add	cl,dh
		db	 00h,0F1h		;  Fixup - byte match
		xor	si,[bx+7Fh]
		cld				; Clear direction
;*		add	cx,sp
		db	 01h,0E1h		;  Fixup - byte match
		aas				; Ascii adjust
		db	0FEh,0FFh,0FCh, 03h,0C2h, 76h
		db	0FBh,0FFh,0FCh, 07h, 82h, 6Fh
		db	0F7h,0FFh,0E0h, 0Fh, 02h,0FFh
		db	0EFh,0FCh,0C0h, 1Eh, 04h,0FFh
		db	 9Fh,0F8h,0C0h, 3Ch, 04h,0FEh
		db	 7Fh,0F9h, 80h, 78h, 03h,0C4h
		db	0FDh,0E6h, 00h,0F8h, 3Fh, 80h
		db	0FBh,0C2h, 01h,0F8h, 6Eh, 01h
		db	0F3h, 80h, 03h,0F0h,0DCh, 07h
		db	0DFh, 20h, 07h,0F1h, 38h, 0Fh
		db	0BEh, 00h, 0Fh, 50h,0E0h, 1Fh
		db	 3Ch, 00h, 1Eh, 13h, 80h, 36h
		db	0FCh, 00h, 3Ch, 13h, 00h,0DCh
		db	0F8h, 00h, 78h, 1Eh, 01h, 9Fh
		db	0F0h, 00h,0F0h, 2Ch, 03h, 3Bh
		db	0E0h, 01h,0F2h, 78h, 06h, 77h
		db	0C0h, 03h,0D6h,0F0h, 0Ch,0FEh
		db	 80h, 07h, 99h,0E0h, 19h,0DDh
		db	 00h, 0Fh,0E3h,0C0h, 63h,0FDh
		db	 00h, 1Fh,0C7h, 80h,0E7h,0FAh
		db	 00h, 3Fh, 97h, 00h,0CEh,0E4h
		db	 00h, 79h,0AEh, 01h, 3Dh,0C8h
		db	 00h,0F3h, 7Ch, 02h, 7Bh, 90h
		db	 01h,0EDh, 78h, 04h,0F7h, 20h
		db	 03h,0DAh,0F0h, 09h,0EDh, 66h
		db	 07h,0F9h,0E0h, 33h,0FAh, 4Ch
		db	 8Fh, 73h,0E0h,0E7h,0F4h, 93h
		db	 1Fh,0E7h,0C1h,0CFh, 69h, 3Eh
		db	 3Fh, 8Dh, 8Fh, 9Eh, 5Fh,0FCh
		db	 7Bh, 1Bh, 5Fh, 3Dh,0BEh,0FFh
		db	0F6h, 36h, 7Eh, 7Fh, 7Fh,0FFh
		db	0FCh, 6Ch,0FDh,0FEh,0CBh,0E7h
		db	0D8h,0D9h,0FBh,0DDh, 9Fh,0E7h
		db	0F1h,0F7h,0F7h,0FFh, 3Fh,0EFh
		db	0E3h, 7Fh,0EBh,0F6h, 7Fh,0BEh
		db	0C7h,0FFh,0D7h,0EFh, 9Dh,0FDh
		db	 9Fh,0FFh,0AFh,0DFh, 9Fh, 7Bh
		db	 1Fh,0F7h, 5Fh,0BFh, 76h,0F6h
		db	0FFh,0BBh,0BFh, 7Fh, 15h,0EFh
		db	0FDh, 6Fh, 6Eh,0FEh, 03h,0DBh
		db	0FFh, 0Eh,0DEh, 90h, 07h,0B7h
		db	0FFh, 1Bh,0F7h
loc_377:
;*		fmul	dword ptr [bx]		; st = st * memory
		db	0D8h, 0Fh		;  Fixup - byte match
		jg	loc_377			; Jump if >
		aaa				; Ascii adjust
		neg	ax
		push	ds
		db	0FFh,0D8h, 2Eh,0F5h, 70h, 3Dh
		db	0FDh,0E0h, 5Fh,0BDh, 30h, 7Bh
		db	0FFh, 00h,0AFh,0FCh,0E0h,0F7h
		db	0FEh, 01h, 5Fh,0D3h,0E3h,0FFh
		db	0ECh, 02h,0EFh, 4Fh,0FFh,0FFh
		db	0F8h, 05h,0FDh, 75h,0FFh,0B3h
		db	0B0h, 0Fh,0D5h, 3Fh,0BFh,0E1h
		db	 60h, 17h, 57h,0F7h,0BFh,0E2h
		db	0C0h, 7Dh, 53h,0FFh, 7Fh,0C7h
		db	 80h,0F7h, 6Fh,0FFh,0FFh, 0Bh
		db	 03h,0FDh,0FFh,0DFh,0FEh, 1Eh
		db	 07h,0F7h,0F5h,0DFh,0FCh, 3Ch
		db	 0Fh,0DFh,0FFh,0FFh,0F8h, 78h
		db	 1Eh, 7Fh,0B7h,0FFh,0F0h,0F0h
		db	 29h,0FFh,0DBh,0FFh,0E1h,0E0h
		db	0E7h,0FBh, 4Bh, 7Eh,0C3h,0C3h
		db	0AFh,0BFh, 8Eh,0FFh, 9Fh, 8Eh
		db	0FFh,0EDh,0B7h,0FFh, 6Fh, 3Ah
		db	0BFh,0A3h,0BFh,0FFh, 1Eh,0EFh
		db	0FFh, 86h,0DFh,0FCh, 3Fh,0AFh
		db	0FEh, 07h,0BFh,0FEh,0FEh,0BFh
		db	 56h, 07h,0FFh,0F9h,0FBh,0FBh
		db	0DFh, 1Ch, 3Fh,0FAh,0EFh,0FFh
		db	0FBh, 38h,0FFh,0EFh, 3Fh,0FDh
		db	0E9h,0F0h, 7Fh,0DCh,0EFh,0A2h
		db	0CEh,0E1h,0FFh,0F3h,0DBh, 87h
		db	 99h,0C0h,0FFh,0DFh,0BEh, 03h
		db	0BBh, 83h,0FFh, 7Fh,0F0h, 0Fh
		db	0BFh,0C3h,0FDh,0FFh,0DFh, 1Dh
		db	0FFh,0C7h,0B3h,0F7h, 7Fh, 3Fh
		db	0FFh,0CEh,0DFh,0FCh, 39h, 7Dh
		db	0FFh,0EDh, 3Fh, 60h,0B4h,0FFh
		db	0FFh,0D3h,0FFh, 80h,0E3h,0FFh
		db	0FFh, 9Fh,0FEh, 03h, 87h,0FFh
		db	0EFh,0B8h, 00h, 00h, 00h, 00h
		db	 07h, 70h, 00h, 00h, 00h, 00h
		db	 0Eh,0A0h, 00h, 00h, 00h, 00h
		db	 0Ch, 40h, 00h, 00h, 00h, 00h
		db	 30h, 80h, 00h, 00h, 00h, 00h
		db	 21h, 00h, 00h, 00h, 00h, 00h
		db	 42h, 00h, 00h, 00h, 00h, 00h
		db	 84h, 00h, 00h, 00h, 00h, 01h
		db	 08h, 00h, 00h, 00h, 00h, 06h
		db	 50h, 00h, 00h, 00h, 00h, 06h
		db	0E0h, 00h, 00h, 00h, 00h, 1Dh
		db	0C0h, 00h, 00h, 00h, 00h, 3Bh
		db	0E5h,0D8h, 30h,0FAh,0FBh, 37h
		db	0CCh, 30h, 11h,0FBh,0EBh,0EBh
		db	0FCh, 60h, 07h,0FFh,0FFh, 37h
		db	0B4h, 61h,0FFh,0FFh,0FFh, 67h
		db	 0Ch, 4Fh,0FDh,0FFh,0FFh,0EEh
		db	 03h,0FCh,0DDh,0FFh,0BFh,0FFh
		db	 3Fh,0FFh,0FFh,0E7h,0FFh,0FFh
		db	0FFh,0FFh,0DFh,0FFh,0FFh,0FFh
		db	0B3h,0F3h,0FFh,0AFh,0FFh,0BEh
		db	0FFh,0DFh,0FFh,0DBh,0FFh,0BFh
		db	0D7h, 2Fh,0EFh,0FFh,0FEh, 7Dh
		db	0F8h, 9Fh,0FFh,0FFh,0F6h, 6Fh
		db	 63h,0BFh,0FCh, 7Bh,0FCh,0F6h
		db	0CBh,0FFh,0F3h, 2Fh,0EAh,0ECh
		db	 85h,0FFh,0FEh,0EFh,0D9h,0DFh
		db	 5Fh,0FBh,0C5h,0FFh,0D7h, 7Dh
		db	0EFh, 3Fh,0F3h, 3Fh, 37h,0FFh
		db	 4Eh, 7Fh, 8Eh,0FFh,0B3h,0C7h
		db	 9Eh,0EFh, 2Fh,0FAh,0B7h,0C3h
		db	 3Fh,0DDh,0ABh,0F2h
		db	67h

locloop_378:
		test	bh,[bp-76h]
		out	0E4h,ax			; port 0E4h ??I/O Non-standard
		jg	$+2			; delay for I/O
		jmp	word ptr [bx+di]	;*
			                        ;* No entry point to code
		test	sp,1CEh
		inc	byte ptr [bp+di]
		mov	di,0FE84h
		pop	es
		cld				; Clear direction
loc_379:
;*		xor	di,di			; Zero register
		db	 31h,0FFh		;  Fixup - byte match
;*		or	sp,bx
		db	 09h,0DCh		;  Fixup - byte match
;*		pop	cs			; Dangerous-8088 only
		db	0Fh			;  Fixup - byte match
		cld				; Clear direction
		jc	$+80h			; Jump if carry Set
		or	ds:data_913e[bx+si],si
		aas				; Ascii adjust
		cld				; Clear direction
		or	sp,ax
		mov	di,0D7F3h
		clc				; Clear carry flag
		adc	ax,bx
		db	0FFh,0EEh, 4Dh,0F0h, 13h, 87h
		db	0FFh,0FFh, 7Fh,0E0h, 0Fh,0AFh
		db	0DFh,0CDh,0BFh,0E0h,0FFh, 77h
		db	0EFh,0FFh,0CFh,0E1h,0BFh,0BFh
		db	0CFh, 7Fh
data_807	db	0FFh			; Data table (indexed access)
		db	0C3h, 7Ch,0FFh, 7Fh,0D7h,0BFh
		db	0C4h,0FBh,0FEh,0FFh,0FFh,0FDh
		db	 43h, 9Dh,0FCh,0FFh,0BFh,0F8h
		db	 4Fh, 73h,0DBh,0FFh,0FFh,0F0h
		db	 4Fh, 97h, 7Fh,0E0h, 47h,0E0h
		db	 78h,0EEh, 7Fh,0CDh,0FFh,0C0h
		db	0B3h, 3Ch,0FFh, 4Fh, 7Fh,0C9h
		db	0F3h,0B9h,0DFh, 3Fh,0BFh, 5Bh
		db	0C1h,0F3h,0FEh, 3Fh,0FEh, 67h
		db	0B3h, 66h, 77h, 2Fh,0FFh, 8Fh
		db	 01h, 8Ch,0F4h,0FFh,0FFh, 1Fh
		db	 3Bh, 9Fh,0EBh
loc_380:
		sar	dh,cl			; Shift w/sign fill
		pop	si
		jnc	$+41h			; Jump if carry=0
		xchg	cx,ax
		jmp	si			;*
			                        ;* No entry point to code
		mov	si,0FFBCh
		aas				; Ascii adjust
		mov	di,0FFCDh
		db	0C9h,0EEh, 4Fh,0FFh,0B7h,0FBh
		db	 93h,0DCh,0DFh,0EFh, 6Bh,0DFh
		db	 67h,0B5h, 90h, 7Fh,0F7h,0F3h
		db	 4Fh,0E9h,0E9h,0FDh,0FFh,0E2h
		db	 9Fh,0D2h,0C9h,0FFh,0BFh,0FBh
		db	 3Dh,0A7h, 83h,0FFh,0B7h,0BEh
		db	 79h, 78h, 37h,0EEh, 6Dh,0FCh
		db	0FEh,0FEh, 0Fh,0DDh,0DFh,0F9h
		db	0FDh,0F4h, 0Fh,0FDh,0A3h,0F7h
		db	0FBh, 20h, 7Fh, 7Fh, 6Fh,0EFh
		db	 76h, 42h, 3Fh,0FFh,0EFh,0DFh
		db	0DCh, 80h, 7Fh,0ADh, 8Fh,0AFh
		db	0B9h,0A8h,0FBh, 9Fh,0FFh, 5Fh
		db	 7Fh, 01h,0F6h, 7Fh, 9Eh,0F6h
		db	0BFh, 83h,0ECh,0FEh, 3Dh, 60h
		db	 7Fh, 27h,0D9h,0F8h,0BFh,0C0h
		db	0FCh, 3Fh,0B7h,0F3h, 1Fh, 81h
		db	0F8h, 1Fh, 77h,0E0h, 7Fh, 03h
		db	 50h, 3Eh,0DFh,0CBh,0EEh, 07h
		db	 70h, 7Dh, 9Fh, 8Fh,0DCh, 1Fh
		db	 60h,0FBh, 3Fh, 9Fh,0B8h, 3Dh
		db	0E9h,0F6h,0F7h, 6Fh, 79h, 14h
		db	0D3h,0EEh, 7Fh, 7Eh,0B7h, 73h
		db	0C7h,0D9h,0FFh,0FDh, 69h, 4Fh
		db	 8Fh,0FFh,0BFh,0FBh, 85h, 3Fh
		db	 9Fh,0FBh,0FFh,0FFh, 95h,0D7h
		db	 3Eh,0FEh,0D7h,0FFh, 54h,0FEh
		db	 7Fh, 9Dh,0BFh,0DDh, 5Fh,0DEh
		db	0FFh,0BBh,0CFh,0F5h, 4Fh,0FDh
		db	0FFh,0BFh, 7Fh,0DDh,0BFh,0FFh
		db	0FFh,0EDh,0FFh,0F7h,0FFh, 7Fh
		db	0FFh,0FFh,0FFh,0DFh,0D7h, 7Fh
		db	0FFh,0F7h, 3Fh, 7Fh,0FFh,0FFh
		db	0F7h,0F8h, 79h,0FEh,0DFh,0FFh
		db	0FFh,0E3h,0A7h,0FFh
loc_381:
		db	 6Fh,0FFh,0DFh, 87h, 9Fh,0EDh
		db	 2Dh,0FBh,0FFh,0DEh,0BEh,0FEh
		db	 3Bh,0FFh, 3Fh, 7Bh,0FFh,0B6h
		db	0DFh,0FEh, 7Dh,0EAh,0FEh, 8Eh
		db	0FFh,0FCh,0FFh,0BFh,0FEh, 1Bh
		db	 7Fh,0F9h,0FEh,0BFh,0F8h, 1Eh
		db	0FFh,0F3h,0FAh,0FDh, 58h, 1Fh
		db	0FFh,0E7h,0EFh,0EFh, 7Ch, 70h
		db	0FFh,0CBh,0BFh,0FFh,0ECh,0E3h
		db	0FFh, 9Ch,0FFh,0F7h,0A7h,0C1h
		db	0FFh, 73h,0BEh, 8Bh, 3Bh, 87h
		db	0FFh,0CFh, 6Eh, 1Eh, 67h, 03h
		db	0FFh, 7Eh,0F8h, 0Eh, 8Fh, 0Fh
		db	0FDh,0FFh,0C0h, 3Eh, 3Fh, 0Fh
		db	0F7h,0FFh, 7Ch, 70h, 7Fh, 1Eh
		db	0CFh,0DDh,0FCh,0C4h,0FBh, 3Bh
		db	 7Fh,0F0h,0E5h,0CDh,0F3h,0B4h
		db	0FDh, 82h,0D3h, 9Bh,0E3h, 4Fh
		db	0FEh, 03h, 8Fh, 37h,0CEh, 7Fh
		db	0F8h, 0Eh, 1Eh, 2Fh, 9Eh,0E0h
		db	 00h, 00h, 00h, 00h, 1Dh,0C0h
		db	 00h, 00h, 00h, 00h, 3Ah, 80h
		db	 00h, 00h, 00h, 00h, 31h, 00h
		db	 00h, 00h, 00h, 00h,0C2h, 00h
		db	 00h, 00h, 00h, 00h, 84h, 00h
		db	 00h, 00h, 00h, 01h, 00h, 0Ch
		db	0C0h,0C0h, 20h, 08h, 94h, 80h
		db	 01h, 42h, 02h, 01h, 40h, 04h
		db	 55h, 50h, 10h, 03h,0C0h,0A0h
		db	 50h, 01h, 82h, 80h,0C0h, 40h
		db	 05h, 86h, 02h, 80h, 02h, 28h
		db	 81h, 04h, 08h, 82h, 82h, 22h
		db	 80h, 20h, 22h, 08h, 11h, 50h
		db	 50h, 01h, 82h, 80h,0C2h, 08h
		db	 08h, 02h, 08h, 21h, 40h, 44h
		db	 02h, 02h, 04h, 15h, 54h, 44h
		db	 05h, 45h, 51h, 50h, 05h, 54h
		db	 36h, 02h, 80h, 01h, 80h,0D0h
		db	 40h, 05h, 04h, 42h, 80h, 13h
		db	 8Ah,0A2h, 20h, 20h,0A0h, 22h
		db	 28h,0AAh,0A8h, 28h, 22h,0A8h
		db	 80h, 88h,0C3h, 05h, 01h, 40h
		db	 01h, 80h, 01h, 70h, 28h, 01h
		db	 51h, 45h, 60h, 95h, 40h, 04h
		db	 14h, 14h, 45h, 14h, 14h, 14h
		db	 55h, 63h,0C0h,0D8h, 60h, 44h
		db	 02h, 0Ah,0A8h, 2Ah, 02h, 22h
		db	 08h, 20h, 0Ah,0A0h, 0Ah, 45h
		db	 4Fh,0BEh, 71h,0C0h,0C1h, 80h
		db	 60h, 08h, 6Ah, 94h,0CEh, 20h
		db	 05h, 10h, 05h, 15h, 54h, 14h
		db	 04h, 14h, 01h, 40h, 05h, 51h
		db	 44h, 40h,0A0h, 50h, 14h,0C1h
		db	 8Dh, 80h, 01h, 80h, 08h, 6Ah
		db	 94h, 0Ch,0E8h, 28h, 8Ah, 08h
		db	 08h, 88h, 20h,0A0h, 0Ah,0A0h
		db	 02h, 20h, 55h,0F6h,0A2h, 94h
		db	 30h, 01h, 80h, 08h, 6Ah, 80h
		db	 28h,0C9h, 05h, 44h, 50h, 55h
		db	 51h, 10h, 41h, 01h, 41h, 40h
		db	 02h, 80h, 08h,0E0h, 1Eh, 0Ch
		db	0A0h, 01h, 80h, 4Ah, 94h, 0Ch
		db	0C3h, 30h, 28h,0A2h, 82h, 81h
		db	 40h, 28h, 14h, 1Eh, 28h, 55h
		db	 40h, 15h, 44h, 10h, 80h, 1Bh
		db	 03h, 44h, 01h, 80h, 05h, 10h
		db	 94h, 28h,0C1h, 46h, 11h
data_808	db	51h
		db	 40h, 56h, 24h, 80h, 2Ah, 28h
		db	 80h, 0Ah, 80h, 88h, 0Ch, 02h
		db	 80h, 48h, 88h, 01h, 80h, 02h
		db	 08h,0C0h, 0Ch,0DBh, 28h, 0Ah
		db	 04h,0F8h,0E0h,0D1h, 40h, 44h
		db	 01h, 51h, 04h, 15h, 54h, 50h
		db	 08h, 1Eh, 01h, 40h, 24h, 11h
		db	 01h, 45h, 01h, 80h, 01h, 4Ch
		db	 28h,0C3h, 01h, 45h, 05h,0BAh
		db	 68h, 8Ah, 02h, 02h, 8Ah, 80h
		db	 82h,0AAh, 80h, 02h, 10h, 3Bh
		db	 9Bh, 05h,0A0h, 12h, 0Ah, 02h
		db	 28h, 88h, 88h, 88h, 80h, 01h
		db	 80h,0A8h, 08h, 48h, 0Ch, 20h
		db	 10h, 51h, 15h, 19h, 90h, 01h
		db	 05h, 15h, 40h, 40h, 20h, 7Bh
		db	0D1h, 3Dh, 38h, 09h, 50h, 05h
		db	 05h, 05h, 11h, 14h, 01h, 80h
		db	 05h, 40h, 46h, 0Ah, 66h, 8Ah
		db	 88h, 08h, 92h, 56h, 22h, 80h
		db	 08h, 02h, 2Ah, 80h, 6Eh, 2Ch
		db	 06h, 02h, 80h, 22h, 28h, 28h
		db	 8Ah, 2Bh, 80h, 02h, 28h, 02h
		db	 30h, 06h, 34h, 04h, 40h, 71h
		db	 2Eh, 04h, 01h, 50h, 04h, 04h
		db	 54h, 15h, 95h,0E0h, 02h,0ABh
		db	 05h, 10h, 01h, 44h, 44h, 51h
		db	 55h, 80h, 01h, 14h, 14h, 13h
		db	0A0h, 28h, 64h, 02h, 18h, 06h
		db	 8Ah,0A8h, 82h, 20h, 82h, 80h
		db	 03h, 11h, 79h, 80h, 50h, 28h
		db	0A0h, 2Ah, 02h,0AAh, 01h, 80h
		db	 20h, 02h, 1Dh,0A0h, 06h, 20h
		db	 10h, 19h, 25h, 04h, 01h, 01h
		db	 10h, 06h, 0Ah, 6Ch,0E0h, 80h
		db	 55h, 54h, 40h, 01h, 10h, 01h
		db	 80h, 01h, 50h, 11h, 11h, 80h
		db	 64h, 08h, 32h,0E5h, 88h, 02h
		db	 08h, 0Ch, 36h, 65h, 50h, 50h
		db	 80h, 02h, 03h, 40h, 08h, 01h
		db	 80h, 08h,0A0h, 8Ch,0A0h, 06h
		db	 30h, 32h,0E2h, 80h, 02h, 85h
		db	 18h, 1Bh, 30h, 80h, 80h, 88h
		db	 02h, 80h,0EAh, 14h, 45h, 01h
		db	 40h, 01h, 80h, 54h, 04h, 90h
		db	 66h, 32h,0E2h, 80h, 01h, 55h
		db	 40h, 30h, 07h, 81h, 42h, 80h
		db	 19h, 99h, 55h, 55h, 44h, 45h
		db	 70h, 0Ah, 88h, 8Ah, 02h, 20h
		db	 01h, 80h, 02h, 86h, 05h, 14h
		db	 06h, 52h,0E3h,0C0h, 08h, 08h
		db	 50h, 80h,0E0h, 0Fh, 01h,0E3h
		db	0C0h, 0Ch, 6Ch, 80h, 22h,0A0h
		db	 02h, 10h, 10h, 01h, 80h, 10h
		db	 04h, 74h, 60h, 62h, 08h, 55h
		db	 05h, 55h, 50h, 05h, 50h,0C0h
		db	 0Fh, 03h,0C3h,0C5h, 03h, 36h
		db	 05h, 05h, 50h, 50h, 80h, 08h
		db	 01h, 80h, 20h, 23h, 02h, 80h
		db	 06h, 32h, 82h, 80h, 20h, 20h
		db	 28h, 88h, 01h, 80h, 05h, 03h
		db	0C3h, 63h,0C0h,0D9h, 88h, 20h
		db	 80h, 02h, 01h, 10h, 05h, 50h
		db	 01h, 80h, 01h, 01h, 32h, 94h
		db	 61h,0D0h, 01h, 55h, 41h, 40h
		db	 12h, 01h, 40h,0A0h,0A0h, 3Ch
		db	0D5h, 55h, 44h, 41h, 40h, 82h
		db	 80h, 08h, 01h, 80h, 08h, 21h
		db	0A8h, 06h,0C2h, 80h, 08h,0A0h
		db	 0Ah,0A8h, 84h, 14h,0E8h, 28h
		db	 02h,0A8h, 41h, 01h, 80h, 40h
		db	 01h, 18h, 02h, 81h, 40h, 55h
		db	 55h, 55h, 55h, 05h, 30h, 28h
		db	 14h, 60h, 05h, 01h, 80h, 02h
		db	 08h,0C0h, 01h, 40h, 0Ah, 8Ah
		db	 0Ah, 82h, 20h,0C0h, 1Bh, 0Ah
		db	 30h, 02h, 20h, 01h, 80h, 04h
		db	 4Ch, 15h, 40h, 01h, 40h, 14h
		db	 06h, 15h, 40h, 3Ch, 0Fh, 18h
		db	 01h, 40h, 02h,0A8h, 01h, 80h
		db	 80h, 08h, 61h, 40h,0AAh, 61h
		db	0B6h,0C0h, 01h,0E4h, 0Dh, 6Eh
		db	0B0h, 0Dh, 8Ch, 02h, 80h, 45h
		db	 40h, 10h, 80h, 04h, 40h, 02h
		db	0D9h,0B6h, 44h, 05h, 47h, 40h
		db	0DBh, 0Ah,0CEh,0EAh,0C6h, 90h
		db	 06h,0C6h, 01h, 80h, 20h, 80h
		db	 04h,0D8h, 99h,0CAh, 02h,0C0h
		db	 01h,0BCh, 1Eh, 38h, 22h,0AAh
		db	0E0h, 06h, 63h, 14h, 05h, 01h
		db	 41h, 80h, 04h, 44h, 04h, 29h
		db	 40h, 63h, 54h, 16h,0A0h, 06h
		db	 28h, 2Eh,0AEh,0FEh,0BEh,0C0h
		db	 03h, 61h, 80h, 08h, 88h, 28h
		db	 88h, 03h, 80h, 82h, 80h, 08h
		db	 14h, 0Dh,0AAh,0B0h, 50h, 18h
		db	 78h, 01h,0AAh, 4Eh,0A4h, 01h
		db	0E1h, 80h, 01h, 80h, 04h, 05h
		db	 10h, 20h, 27h,0D1h, 80h, 02h
		db	 02h, 60h, 01h,0E0h, 03h,0AAh
		db	0AAh,0B8h,0F0h,0C0h, 22h, 2Bh
		db	 08h, 20h, 05h, 40h, 3Dh, 18h
		db	 11h, 54h, 80h, 07h, 80h, 01h
		db	0AAh,0EEh,0A1h,0F0h,0C0h, 50h
		db	 04h, 80h, 04h, 40h, 81h,0FCh
		db	0C0h, 03h, 1Fh, 40h, 01h, 2Ah
		db	0AAh,0ACh, 05h,0A0h,0C0h, 22h
		db	0A8h, 88h, 02h, 01h, 80h, 08h
		db	 80h, 0Bh, 09h, 1Fh, 06h, 28h
		db	 3Ch,0EAh, 44h,0AEh, 05h, 60h
		db	 05h, 54h, 54h, 44h, 04h, 40h
		db	 01h, 80h, 01h, 40h, 90h, 55h
		db	 18h,0F0h, 78h, 12h, 6Ch,0B8h
		db	 0Fh, 60h, 03h, 02h, 0Ah, 20h
		db	 15h, 20h, 55h, 32h, 80h,0F0h
		db	 05h, 0Bh,0AAh,0E0h, 0Fh, 30h
		db	 01h, 40h, 05h, 10h, 80h, 10h
		db	 01h, 40h, 40h, 16h, 45h, 55h
		db	 0Ah, 6Fh,0A0h, 0Ah, 01h, 29h
		db	 0Fh, 91h, 01h, 80h, 20h, 01h
		db	 80h, 80h, 28h, 80h, 08h, 45h
		db	 7Dh, 14h, 05h, 44h,0DEh, 08h
		db	 80h, 1Bh, 06h,0A0h, 09h,0C0h
		db	 04h, 44h, 11h, 44h, 40h, 50h
		db	 01h, 80h, 20h, 14h
loc_382:
		nop
		inc	ax
		and	[di+2Dh],al
;*		add	si,sp
		db	 01h,0E6h		;  Fixup - byte match
		add	ax,0F05h
		add	word ptr [bx+di],2B2h
		add	byte ptr [bp+si],8Ah
		add	byte ptr [bp+si],0A2h
		add	data_766[bx+si],ax
		xor	byte ptr [bp+si],80h
		and	[di+2Ah],dx
		add	byte ptr [di],14h
;*		adc	al,bh
		db	 10h,0F8h		;  Fixup - byte match
		or	al,[di]
                           lock	daa				; Decimal adjust
		or	bp,ss:data_398[bp+si]
		adc	al,45h			; 'E'
		adc	al,41h			; 'A'
		adc	[si],al
		add	ax,114h
		adc	data_760,0Dh
		add	[bx+di+55h],si
		sub	al,data_801[bx+si]
;*		xor	byte ptr [bx+si],14h
		db	 82h, 30h, 14h		;  Fixup - byte match
		add	ax,2002h
		push	ds
		add	al,[si]
		dec	sp
		mov	byte ptr ss:data_331+29h[bp+si],al	; ('ple in the')
		add	data_836[bx+si],ax
		test	al,71h			; 'q'
		push	ax
		sub	al,data_756[bx+si]
		inc	ax
		inc	ax
		and	[bx+si],ch
		add	ax,0C03Ah
		adc	al,6
		stosb				; Store al to es:[di]
		stosb				; Store al to es:[di]
		or	al,[bx+di+50h]
		adc	ax,140h
		sbb	byte ptr [bx],55h	; 'U'
		inc	si
		retn	50F1h
			                        ;* No entry point to code
		sub	al,data_765[bx+si]
		inc	ax
		js	loc_383			; Jump if sign=1
		adc	byte ptr [si],20h	; ' '
		or	al,[bx+di]
		adc	cx,data_803[bx+si]
		sub	[bx+di],al
		add	byte ptr [bx+di],56h	; 'V'
		mov	ah,[bx+si-3Eh]
		db	0F1h, 50h, 2Ah, 85h, 01h, 54h
		db	 50h, 50h, 10h, 80h, 50h, 47h
		db	 2Ah, 40h, 28h,0EAh,0B4h,0AAh
		db	 83h, 81h
		db	40h
loc_384:
		adc	[bx+si+1],ax
		adc	ax,8001h
		add	[si],dx
		inc	si
		retn	50F1h
			                        ;* No entry point to code
		db	 3Eh, 80h, 20h, 28h, 28h, 40h
		db	 0Fh, 08h, 20h, 80h, 22h, 14h
		db	 40h, 01h, 80h, 01h, 40h,0F8h
		db	 02h, 30h,0C2h,0F1h, 50h, 16h
		db	0D1h, 41h, 05h, 05h, 01h, 03h
		db	 01h, 40h, 3Bh, 80h, 6Ah,0C0h
		db	 03h,0A0h,0C3h,0AAh,0AAh,0E4h
		db	 54h, 68h, 01h, 80h, 14h, 8Ch
		db	 13h,0C2h,0F1h, 50h, 15h, 40h
		db	 02h, 07h, 04h, 80h, 20h,0A0h
		db	0A2h, 02h, 41h, 22h, 38h, 08h
		db	 80h, 01h, 40h, 01h, 80h, 02h
		db	0A2h, 80h, 98h,0C2h,0F1h, 50h
		db	 15h, 54h, 50h, 01h, 04h, 41h
		db	 40h, 02h, 22h, 4Ah, 4Eh,0AAh
		db	0AEh, 1Ah, 82h,0B1h,0AAh,0AAh
		db	0A8h, 01h, 44h, 4Fh, 28h,0A0h
		db	 01h, 80h, 02h,0C4h, 79h, 88h
		db	 8Ah, 28h,0D6h,0F1h, 1Fh, 40h
		db	 80h, 09h,0B8h,0CEh, 56h, 08h
		db	 22h, 02h, 09h, 01h, 70h, 8Ah
		db	 0Fh, 54h, 14h, 05h, 14h, 01h
		db	 80h, 22h, 46h, 41h, 04h,0C2h
		db	0F1h, 1Fh, 40h,0A4h, 10h, 06h
		db	 21h, 2Bh, 0Fh, 02h, 80h, 2Eh
		db	 93h,0ABh, 1Ch, 12h,0A0h, 90h
		db	 2Ch, 2Ah,0A7h,0A8h,0A0h, 88h
		db	 08h,0A8h, 88h, 0Ah, 23h, 80h
		db	 41h, 42h,0AAh,0C2h,0F1h, 1Ah
		db	 48h,0A0h, 80h, 02h, 5Ah,0C3h
		db	 40h, 08h, 80h, 08h, 09h, 68h
		db	 20h, 04h, 48h, 02h, 11h,0E5h
		db	 10h, 5Fh, 40h, 01h, 15h, 01h
		db	 50h, 50h, 80h, 05h, 22h, 43h
		db	 40h, 10h, 96h,0F1h, 1Fh, 01h
		db	 0Ah, 04h,0BAh, 5Ch, 4Bh, 4Ah
		db	 40h, 0Eh,0ABh, 1Ah,0A8h, 90h
		db	 04h,0AAh,0A8h, 78h,0D3h, 42h
		db	 8Ah, 08h, 08h, 03h, 4Bh, 68h
		db	0A2h, 88h, 82h,0C2h,0F1h, 1Eh
		db	 80h, 0Ah, 02h, 01h, 1Ch, 47h
		db	 08h,0C2h, 80h, 20h, 08h, 05h
		db	 80h, 66h, 52h, 10h,0C0h, 02h
		db	 01h, 4Eh, 01h, 51h, 14h, 04h
		db	 10h, 01h, 80h, 05h, 33h, 43h
		db	 10h,0C2h,0F1h,0A0h, 1Bh,0B0h
		db	 40h, 28h,0AAh, 84h, 17h, 84h
		db	 69h, 01h, 2Ah, 90h, 06h,0A1h
		db	 98h, 2Eh, 10h, 29h, 01h, 2Ah
		db	0AAh,0AFh, 21h, 4Ah, 08h,0B6h
		db	 28h, 8Ah,0A8h, 20h, 01h, 80h
		db	 05h, 33h, 68h,0A0h, 6Ah,0E5h
		db	 1Eh,0D2h, 01h, 45h, 05h, 4Fh
		db	 5Bh, 57h, 0Eh, 02h, 20h, 0Ch
		db	 42h, 08h, 1Ch, 42h, 18h, 80h
		db	 8Ah, 87h,0C1h, 40h, 55h, 51h
		db	 54h, 05h, 15h, 80h, 63h, 6Ah
		db	 51h, 82h,0F1h,0AAh, 1Ch, 18h
		db	 2Ch, 20h, 28h, 0Ah, 69h, 8Ah
		db	0A9h, 04h,0AAh,0B0h, 0Ch,0B5h
		db	 8Fh, 50h, 0Ch, 48h, 4Ah,0ABh
		db	 44h, 18h, 08h, 82h, 8Ah,0A2h
		db	 9Ch, 89h, 33h, 68h, 88h,0A0h
		db	 2Bh, 82h,0F0h,0E0h, 1Ch, 70h
		db	 0Ah, 50h, 04h, 45h, 52h, 5Ah
		db	0AFh, 40h, 02h, 20h, 01h, 86h
		db	 01h, 40h, 0Ch, 60h, 05h, 20h
		db	 02h, 96h,0FCh,0A0h, 01h, 45h
		db	 50h, 14h, 01h
		dw	6380h
		db	 6Eh, 01h,0C2h,0E4h,0E0h, 1Ch
		db	 48h,0B2h, 80h, 82h, 0Ah, 40h
		db	0E0h, 0Bh, 80h, 06h,0AAh,0C0h
		db	 12h, 49h, 10h, 2Ah, 41h, 20h
		db	 07h, 92h,0B8h, 41h, 50h, 60h
		db	0A0h, 01h, 80h, 63h, 38h, 50h
		db	 0Dh,0C2h,0F0h,0E0h, 4Ch, 61h
		db	 51h, 04h, 51h, 04h, 50h, 60h
		db	 08h, 02h, 0Ah, 0Fh, 04h, 0Bh
		db	 3Ch,0A6h, 68h, 20h,0D7h, 9Dh
		db	 4Ch, 0Ah, 01h, 80h, 61h,0B4h
		db	 02h, 09h,0F2h, 42h,0F1h,0A0h
		db	 1Eh, 8Ah, 08h,0A0h,0A0h, 30h
		db	0EAh,0ABh, 04h, 05h, 40h, 04h
		db	 45h, 06h, 31h,0E0h, 41h, 4Eh
		db	0A6h, 01h, 80h, 31h,0B7h,0A0h
		db	 44h, 82h, 42h,0F1h,0A0h, 4Bh
		db	0E0h, 51h, 50h, 18h, 80h, 80h
		db	0A0h, 88h, 0Ch, 0Ch, 36h, 03h
		db	 01h, 80h, 61h,0B4h,0B7h, 9Bh
		db	0EAh,0F1h,0A0h, 4Bh, 82h,0A0h
		db	 88h, 28h, 0Ch, 03h,0AAh,0A9h
		db	 0Ch, 32h, 20h, 18h, 59h, 90h
		db	 01h, 80h, 61h,0B7h, 50h, 10h
		db	0A3h,0EAh,0F1h,0A0h, 4Bh,0FBh
		db	 40h, 14h, 06h, 02h, 02h, 29h
		db	 41h, 42h, 21h, 64h, 72h,0C0h
		db	 1Dh, 1Eh, 22h, 01h, 80h, 31h
		db	0B4h, 8Ah, 22h, 13h,0AAh,0F1h
		db	0A0h, 1Bh,0B0h, 40h, 28h,0A0h
		db	 03h, 0Eh,0AAh,0AEh, 52h, 80h
		db	 88h, 84h,0C6h,0C0h, 30h, 04h
		db	 81h, 87h, 20h, 01h, 80h, 61h
		db	0B7h, 11h,0E8h, 14h, 82h,0F1h
		db	 33h, 88h,0A2h, 80h,0A2h, 80h
		db	 01h, 88h, 08h, 05h, 14h, 4Bh
		db	 04h, 26h, 30h, 1Dh, 18h, 44h
		db	 01h, 80h, 61h,0B6h, 68h, 01h
		db	 38h, 42h,0F1h, 50h, 1Bh,0E5h
		db	 10h,0D2h,0AAh,0B8h, 0Ah,0AAh
		db	 12h, 60h, 25h, 40h, 09h, 05h
		db	 01h, 8Eh, 40h, 01h, 80h, 61h
		db	 9Dh, 10h, 04h,0C2h,0F1h, 50h
		db	 1Bh,0A0h,0E0h, 20h, 14h,0A5h
		db	 04h,0E0h, 48h, 06h, 40h, 64h
		db	 30h, 30h, 88h, 40h, 80h, 05h
		db	 60h,0DFh,0C1h, 70h, 2Ah,0C2h
		db	0F1h, 1Bh,0A0h, 01h, 9Ah,0AAh
		db	0E0h,0A7h, 80h, 60h, 24h, 80h
		db	 50h, 0Eh, 03h, 03h, 1Ch, 0Ah
		db	 28h, 08h, 81h, 05h,0C0h,0DAh
		db	 94h, 14h, 04h, 82h,0F1h,0A0h
		db	 1Bh,0A0h, 03h, 02h, 02h, 48h
		db	 84h, 01h, 10h, 40h, 34h, 60h
		db	 61h, 01h, 40h, 80h,0C0h,0DAh
		db	 80h, 8Ah, 42h,0FBh, 1Bh,0A0h
		db	 06h, 88h,0EEh, 74h, 48h, 02h
		db	 82h,0F0h, 0Eh, 14h, 06h, 06h
		db	 31h, 22h, 01h, 05h, 60h,0DAh
		db	 02h,0A0h,0C0h, 7Bh, 1Bh,0A0h
		db	 60h, 6Ch, 95h, 90h, 04h, 01h
		db	 01h,0A0h, 11h, 79h, 24h, 05h
		db	 60h, 63h, 20h, 80h, 05h,0C0h
		db	0DAh, 80h,0C0h, 53h, 1Bh,0A0h
		db	 01h, 8Ah, 82h, 0Fh,0C0h, 30h
		db	 02h, 88h,0FDh, 82h, 22h, 8Eh
		db	 50h, 03h,0CCh, 0Ch, 70h, 01h
		db	 05h, 60h,0DAh,0D0h,0C0h, 53h
		db	 05h, 1Bh,0A0h, 03h, 11h, 4Eh
		db	 08h, 80h,0EAh, 87h,0E0h, 05h
		db	 10h, 41h, 14h, 09h,0C1h, 51h
		db	 64h, 78h, 01h, 10h,0C0h,0C4h
		db	 80h, 05h,0C1h, 9Ah, 80h,0C0h
		db	 03h, 1Bh,0A0h, 0Fh,0E2h, 82h
		db	 11h, 01h,0AAh, 8Ah,0C0h, 08h
		db	0A2h, 80h, 02h, 36h, 8Ah, 01h
		db	0E0h,0AAh, 81h, 8Ah, 50h, 0Ch
		db	 18h,0C4h, 01h, 05h, 60h,0DAh
		db	 80h,0C0h, 03h, 0Ah, 1Bh,0A0h
		db	 38h,0CEh, 6Ch, 01h, 80h, 01h
		db	 80h, 11h, 4Bh, 56h, 90h, 01h
		db	 0Bh, 45h,0F1h, 9Eh, 99h, 40h
		db	 01h, 81h, 8Ch, 80h, 80h, 05h
		db	0C0h,0DAh, 80h,0C0h, 51h, 90h
		db	 5Bh,0A0h, 7Bh,0D8h, 01h, 20h
		db	 54h, 80h, 08h, 88h,0B6h, 85h
		db	 28h,0AAh, 05h,0A2h, 82h, 01h
		db	 20h, 05h, 19h, 80h, 28h, 04h
		db	0F8h, 19h,0C1h, 04h, 20h,0DAh
		db	 80h,0C0h, 51h, 94h,0BBh,0A0h
		db	0E8h, 02h, 40h, 03h, 04h, 51h
		db	 1Ah, 5Bh, 38h, 45h, 41h, 41h
		db	 04h,0D0h, 0Fh, 01h, 8Ch, 51h
		db	 68h, 01h, 83h, 10h, 80h, 05h
		db	0C0h,0DAh, 80h,0C0h, 01h, 8Ah
		db	 1Bh,0A0h, 03h, 03h, 06h, 58h
		db	 8Bh,0C2h, 94h, 2Ah, 70h, 22h
		db	 88h, 80h, 10h,0D0h, 22h,0E1h
		db	 0Ch,0C2h, 80h, 14h, 30h, 33h
		db	 05h, 60h,0DAh, 80h,0C0h, 02h
		db	 4Ah, 1Bh,0A0h, 06h, 02h, 40h
		db	 42h, 82h,0B1h, 17h, 91h, 0Ah
		db	 15h, 40h, 54h, 2Fh, 40h, 5Ch
		db	 0Ch,0CBh, 20h, 03h, 07h, 80h
		db	0C1h, 9Ah, 80h,0C0h, 52h, 68h
		db	 1Bh,0A0h, 06h, 04h, 80h, 0Ch
		db	 01h, 10h,0D0h,0AFh, 22h,0A0h
		db	0A0h, 80h,0D5h,0E0h, 2Dh, 90h
		db	 0Ah, 60h, 0Ch, 42h, 50h, 30h
		db	 05h, 60h,0DAh, 80h,0C0h, 02h
		db	 10h, 1Bh,0A0h, 06h, 04h,0D0h
		db	 48h, 02h, 08h, 94h, 21h,0A0h
		db	 44h, 11h, 16h, 84h, 01h, 34h
		db	 2Ch, 80h, 01h, 7Ah, 30h, 03h
		db	 64h, 82h, 80h, 06h, 07h, 40h
		db	0DAh, 80h,0A0h,0C0h, 02h,0F1h
		db	 1Bh,0A0h, 0Ch, 06h,0F0h, 18h
		db	 04h, 11h, 42h, 11h, 82h, 22h
		db	0A8h, 04h, 34h, 12h, 11h,0D7h
		db	0A3h, 65h, 18h, 06h, 60h, 05h
		db	 01h, 80h, 05h,0C0h,0DAh, 80h
		db	0C0h, 52h, 41h, 5Bh,0A0h, 0Ch
		db	 0Ch, 52h,0B0h, 08h, 82h, 05h
		db	 08h, 94h, 20h, 56h, 91h, 10h
		db	 09h, 44h, 0Bh, 08h, 05h, 1Dh
		db	0C6h, 0Ch,0C0h, 63h, 0Bh, 41h
		db	 80h, 13h,0E1h, 9Ah, 80h,0C0h
		db	 02h,0E0h, 4Bh,0ACh
		db	 09h, 55h
data_809	db	60h
		db	 10h, 04h, 40h,0A4h, 4Ah, 14h
		db	 56h, 80h, 26h, 20h, 08h, 40h
		db	 88h, 03h, 0Ch,0D8h, 06h, 03h
		db	 30h, 09h, 11h, 60h,0DAh, 81h
		db	 50h, 80h, 02h, 04h, 30h, 08h
		db	0F5h, 20h, 08h, 8Dh, 02h, 20h
		db	 52h, 20h, 20h, 74h, 21h,0AAh
		db	 88h, 30h,0CAh,0A0h, 05h, 46h
		db	0C8h, 33h, 01h, 80h, 13h, 40h
		db	0DAh,0A0h, 40h, 02h,0D0h, 0Eh
		db	0DAh,0C0h, 10h, 08h, 81h, 10h
		db	 44h, 50h, 01h, 01h, 35h, 43h
		db	0CCh, 15h, 14h, 50h, 50h, 40h
		db	 2Fh, 40h, 0Ch,0C3h, 19h, 80h
		db	 11h, 90h,0DAh, 90h, 80h, 16h
		db	 1Bh, 80h, 28h, 02h, 01h, 42h
		db	 94h, 80h, 08h, 58h, 04h, 2Ah
		db	 1Ch,0E0h, 01h, 2Bh, 44h, 8Ah
		db	 80h, 28h, 80h, 0Bh, 80h, 18h
		db	 5Fh, 8Eh, 18h, 11h,0C0h,0DAh
		db	 40h, 08h, 57h, 40h, 14h, 10h
		db	 40h,0A4h, 4Bh, 45h, 40h, 0Eh
		db	0A8h, 8Ch, 80h, 2Ch,0C0h, 10h
		db	 34h, 11h, 10h, 02h,0A8h,0C0h
		db	 24h, 31h, 80h, 11h, 90h,0DBh
		db	 80h, 20h, 10h, 6Dh, 15h, 6Ah
		db	 2Dh,0A1h, 12h, 82h,0A0h, 21h
		db	0B2h, 28h, 02h, 5Ah, 08h, 80h
		db	 02h, 0Bh, 80h, 12h, 0Bh,0C0h
		db	 80h, 13h, 40h,0DAh, 10h, 10h
		db	 32h, 55h, 55h, 10h, 50h, 50h
		db	0A4h, 43h, 68h, 90h, 05h, 2Eh
		db	0A6h, 29h, 50h, 01h, 0Fh,0C0h
		db	 09h, 13h, 54h,0DBh,0A0h, 21h
		db	0B8h, 01h, 54h, 14h, 44h, 2Ah
		db	 2Dh,0A2h, 01h,0ADh, 52h, 40h
		db	 06h,0C0h, 08h,0A8h, 5Ah, 50h
		db	0C0h, 21h, 88h, 16h, 80h, 13h
		db	 4Ah,0C0h, 1Fh,0F4h, 05h, 55h
		db	 50h, 55h, 7Dh, 05h, 10h,0A4h
		db	 02h, 40h, 59h, 01h, 38h,0A1h
		db	 05h, 40h, 03h,0ACh, 05h, 58h
		db	0E0h, 10h, 4Ch, 88h, 0Dh, 20h
		db	 6Bh, 08h, 01h, 54h, 01h, 55h
		db	 7Ch, 15h, 68h,0A0h, 04h, 94h
		db	 48h, 26h,0F4h, 01h, 05h, 10h
		db	 06h, 01h, 80h, 9Ch, 88h, 05h
		db	 52h,0E0h, 10h,0F4h, 37h,0A8h
		db	 76h,0E0h, 55h, 55h, 50h, 50h
		db	 55h, 05h, 18h, 51h, 20h, 02h
		db	 30h, 21h, 88h,0A0h,0AAh,0A2h
		db	 0Ch, 03h, 01h, 83h, 05h, 52h
		db	 40h, 10h,0E2h, 22h, 67h,0A0h
		db	 01h, 10h, 01h, 55h, 41h, 55h
		db	 54h, 17h,0D5h, 40h, 6Bh, 6Ch
		db	 80h, 21h, 60h, 40h, 10h, 1Dh
		db	 04h, 80h, 50h,0C0h,0C0h, 07h
		db	0C4h,0C0h, 06h, 76h,0D1h, 46h
		db	0A8h, 20h, 50h, 50h, 05h, 07h
		db	0D5h, 05h,0EAh, 04h, 50h,0F8h
		db	 0Ah, 80h,0B7h, 02h, 40h, 78h
		db	 60h, 30h, 07h,0C4h, 60h, 12h
		db	 4Ah, 08h, 25h,0D8h, 40h, 14h
		db	 01h, 41h, 55h, 41h, 41h, 2Ch
		db	 02h,0F5h, 70h, 82h, 15h, 01h
		db	 14h,0A3h, 0Bh, 20h, 36h, 18h
		db	 0Ch, 07h,0D0h,0C0h, 10h,0E0h
		db	 01h, 88h, 7Fh, 55h, 05h, 55h
		db	 05h, 55h, 50h, 02h, 15h,0C0h
		db	 0Bh, 18h, 80h, 2Bh, 77h,0AEh
		db	 20h, 1Ah, 40h, 04h, 8Ch, 02h
		db	0D2h,0E0h, 04h,0E0h, 80h,0AAh
		db	 40h,0C0h, 48h,0E0h,0C8h,0E4h
		db	 01h,0C8h, 03h, 27h, 4Eh, 06h
		db	 03h,0C0h,0E4h, 01h,0C8h, 1Eh
		db	 03h,0C0h,0E4h, 01h,0C8h, 1Eh
		db	 03h,0C0h,0E4h, 14h, 02h, 81h
		db	 40h,0A0h,0A1h,0EAh, 88h, 04h
		db	 57h,0FAh,0B8h, 03h,0C0h,0A0h
		db	 50h, 01h,0C8h, 1Eh, 03h,0C0h
		db	0E4h, 83h, 06h, 80h, 02h, 28h
		db	 80h, 18h,0C2h, 86h, 62h, 80h
		db	 50h, 11h, 31h, 62h, 50h, 5Ch
		db	 05h
		db	 50h, 50h
data_810	db	1
		db	0C8h, 1Eh,0C0h, 24h, 23h, 42h
		db	 82h, 80h, 4Eh,0ACh, 3Dh, 5Eh
		db	 64h, 25h, 6Dh,0D1h, 70h,0A5h
		db	 5Eh, 80h, 02h, 80h, 01h, 80h
		db	 48h,0E0h, 04h, 50h, 50h, 52h
		db	0C4h, 02h, 8Ah,0F6h, 71h, 30h
		db	0A0h, 77h, 78h,0FAh,0B8h, 28h
		db	 23h,0ADh,0C0h,0D8h,0B4h, 05h
		db	 01h, 40h, 01h,0C8h,0E4h, 05h
		db	 72h, 09h, 5Bh,0C5h, 40h, 1Fh
		db	0AAh, 68h, 02h, 8Ch, 14h,0BEh
		db	0C5h, 14h, 14h, 3Eh,0F7h,0A0h
		db	 14h, 01h,0C8h,0E7h,0C0h,0D8h
		db	0A0h, 07h, 04h, 1Ah,0F8h, 7Fh
		db	 13h, 36h, 14h, 0Dh, 21h, 1Eh
		db	0E1h, 0Fh, 40h, 0Ah,0FAh, 34h
		db	 80h, 22h, 1Fh,0C8h,0E7h,0C8h
		db	 6Ah, 94h,0C0h, 05h, 90h, 05h
		db	 3Fh,0FEh,0BCh, 24h, 1Eh, 03h
		db	0C0h, 27h, 51h, 46h, 60h, 0Ah
		db	 78h, 22h, 1Fh,0C8h,0E7h,0C8h
		db	 6Ah, 94h, 0Ch, 28h, 01h, 29h
		db	0CFh, 0Ch, 19h, 89h, 74h,0A0h
		db	 4Bh,0A0h, 02h, 20h,0A2h, 80h
		db	 41h, 1Fh,0C8h,0E7h,0C8h, 6Ah
		db	 80h, 28h,0C5h, 05h, 4Ch, 72h
		db	 5Dh,0F1h, 38h, 4Bh, 02h, 81h
		db	0E1h, 40h, 14h, 4Ch,0EEh,0D0h
		db	 1Fh,0C8h,0E7h,0C0h, 4Ah, 94h
		db	 0Ch, 79h,0F6h, 82h, 85h, 50h
		db	 78h, 0Ah, 29h, 40h, 20h,0D4h
		db	 7Eh,0ECh, 1Fh,0C8h,0E7h,0C5h
		db	 10h, 94h, 28h,0C1h, 40h, 1Bh
		db	0F1h,0C8h,0D8h, 14h, 2Dh,0B1h
		db	0B5h, 76h, 1Fh,0C8h,0E7h,0C2h
		db	 08h,0C0h, 0Ch,0D8h, 2Dh, 5Ah
		db	0F0h,0F8h, 80h, 02h,0D1h, 78h
		db	 14h, 0Ch, 80h, 1Fh,0C8h,0E7h
		db	0C1h, 4Ch, 28h,0C0h, 01h, 45h
		db	 0Fh, 02h, 70h, 0Ah, 91h,0C9h
		db	 2Ch, 4Ah, 80h, 1Fh,0C8h,0E7h
		db	0C0h,0A8h, 08h, 48h, 0Ch, 05h
		db	 01h, 98h, 10h, 2Ah, 89h, 18h
		db	 96h, 40h, 1Fh,0C8h,0E7h,0C5h
		db	 40h, 46h, 0Ah, 60h, 02h, 58h
		db	 0Eh, 26h, 29h, 40h, 08h,0F8h
		db	 1Fh,0C8h,0E7h,0C2h, 28h, 02h
		db	 30h, 06h, 01h, 2Ch, 1Dh, 67h
		db	 30h, 75h, 0Eh,0ECh, 1Fh,0C8h
		db	0E7h,0C1h, 14h, 14h, 13h,0A0h
		db	 28h, 60h,0BAh, 26h, 0Eh, 26h
		db	 50h, 1Fh,0C8h,0E7h,0C0h, 20h
		db	 02h, 1Dh,0A0h, 06h, 01h, 26h
		db	 01h,0E9h, 64h, 06h,0E3h, 30h
		db	0C0h, 1Fh,0C8h,0E7h,0C0h, 01h
		db	 50h, 11h, 11h, 80h, 60h, 02h
		db	0E6h, 03h, 71h, 42h, 28h, 09h
		db	0C1h,0B0h, 06h, 6Ch, 01h, 40h
		db	 1Fh,0C8h,0E7h,0C0h, 08h,0A0h
		db	 8Ch,0A0h, 06h, 02h,0E3h, 06h
		db	0C0h, 06h, 3Bh, 20h, 78h, 28h
		db	0A2h, 80h,0C0h,0C0h, 90h,0DDh
		db	 02h, 80h,0AAh, 1Fh,0C8h,0E7h
		db	0C0h, 54h, 04h, 90h, 60h, 02h
		db	0E3h, 0Ch,0C0h,0D5h, 8Ch, 1Ah
		db	 38h,0D8h, 78h,0A0h, 61h, 80h
		db	 1Ch,0BFh, 02h,0D0h, 1Fh,0C8h
		db	0E7h,0C0h, 02h, 86h, 05h, 14h
		db	 06h, 02h,0E2h, 40h, 0Ch, 50h
		db	 18h, 50h, 85h, 9Dh, 11h,0F1h
		db	 98h, 6Ch,0F1h,0E0h, 31h, 80h
		db	 27h,0F5h, 06h, 1Fh,0C8h,0E7h
		db	0C0h, 10h, 04h, 74h, 60h, 63h
		db	 02h, 40h, 50h,0B8h, 06h, 18h
		db	 3Ah, 01h,0B1h, 8Ch, 6Ch,0D9h
		db	 04h, 18h, 06h, 50h, 7Dh, 06h
		db	0C6h, 1Fh,0C8h,0E7h,0C0h, 20h
		db	 23h, 02h, 80h, 06h, 33h, 02h
		db	 81h, 20h, 01h, 50h, 70h, 38h
		db	 98h, 74h, 5Bh,0B1h,0DCh, 4Eh
		db	 6Ch,0ECh, 8Eh, 98h, 50h, 30h
		db	0C0h, 07h, 40h, 1Fh,0C8h,0E7h
		db	0C0h, 01h, 01h, 32h, 94h, 60h
		db	 50h, 03h, 2Dh, 14h,0C0h,0D7h
		db	 97h,0A8h,0EFh, 99h,0AEh, 5Fh
		db	 63h, 4Dh,0C7h, 80h,0A0h,0BCh
		db	 9Bh, 18h,0A0h,0A0h, 1Fh,0C8h
		db	0E7h,0C0h, 08h, 21h,0A8h, 06h
		db	 02h, 80h, 5Ch,0F0h, 0Ah, 50h
		db	0B8h, 9Ah,0F0h,0EBh,0C7h,0BFh
		db	 57h,0B0h,0A5h, 93h, 39h, 50h
		db	 28h, 02h,0A8h, 1Fh,0C8h,0E7h
		db	0C0h, 40h, 01h, 18h, 02h, 81h
		db	 81h,0ABh, 61h,0E0h, 14h, 4Fh
		db	 20h, 1Bh, 60h,0E8h,0B5h, 5Fh
		db	0D3h, 7Fh,0DBh,0D4h, 80h, 05h
		db	 0Ah, 1Fh,0C8h,0E7h,0C0h, 02h
		db	 08h,0C0h, 01h, 81h, 5Ah,0DFh
		db	 5Bh, 82h, 20h, 79h, 82h, 54h
		db	 1Eh,0B9h,0C9h, 81h, 43h, 7Ah
		db	 40h, 02h, 20h, 1Fh,0C8h,0E7h
		db	0C0h, 04h, 4Ch, 15h, 80h, 01h
		db	 40h, 0Ah, 36h, 02h, 23h, 03h
		db	 02h,0A8h, 18h, 6Fh, 3Ch,0A9h
		db	0D9h, 20h, 28h, 01h, 68h, 1Fh
		db	0C8h,0E7h,0C0h, 80h, 08h, 61h
		db	 80h,0AAh, 41h, 0Ch, 51h, 80h
		db	 51h,0ECh, 6Eh,0ACh,0B0h, 90h
		db	 02h, 80h, 1Fh,0C8h,0E7h,0C4h
		db	 40h, 02h,0D9h,0B6h, 44h, 05h
		db	 47h, 80h, 31h,0E0h,0C2h,0F2h
		db	0C0h,0C6h, 2Eh,0C0h,0E8h,0A0h
		db	 1Fh,0C8h,0E7h,0C0h, 20h, 80h
		db	 04h,0D8h, 99h,0CAh, 02h,0CDh
		db	 82h,0E2h,0E6h, 30h, 5Eh, 40h
		db	 74h, 1Fh,0C8h,0E7h,0C4h, 44h
		db	 04h, 29h, 40h, 63h, 54h, 10h
		db	 03h, 36h, 02h, 9Ah,0F4h, 14h
		db	 14h, 0Eh, 54h, 3Ah, 28h, 1Fh
		db	0C8h,0E7h,0C0h, 82h, 80h, 08h
		db	 14h, 0Dh,0AAh, 80h, 0Dh, 98h
		db	 03h, 65h,0D2h,0CCh, 0Ah, 37h
		db	0F4h, 3Ah, 1Fh,0C8h,0E7h,0C4h
		db	 05h, 10h, 20h, 27h,0D0h, 36h
		db	 30h, 01h, 81h,0DFh, 06h, 12h
		db	0BEh, 1Dh, 1Fh,0C8h,0E7h,0C8h
		db	 20h, 05h, 40h, 3Dh,0D8h,0C0h
		db	 60h,0DEh, 50h, 01h,0A4h,0BBh
		db	 0Bh, 80h, 1Fh,0C8h,0E7h,0C4h
		db	 40h, 81h,0FCh, 03h, 63h, 01h
		db	 4Dh, 46h, 03h, 48h,0FCh,0CEh
		db	 80h, 1Fh,0C8h,0E7h,0C8h, 80h
		db	 0Bh, 09h, 1Ch, 07h, 86h, 62h
		db	 71h, 80h, 6Ch, 06h, 90h, 7Bh
		db	 1Ch, 80h, 1Fh,0C8h,0E7h,0C1h
		db	 40h, 90h, 56h, 1Eh, 18h, 08h
		db	 8Ch, 60h, 19h, 20h, 66h,0CBh
		db	 40h, 1Fh,0C8h,0E7h,0C0h, 02h
		db	 0Ah, 20h, 15h, 20h, 56h, 3Ch
		db	 30h, 1Ch, 8Ch, 0Ch, 62h,0E0h
		db	 60h, 79h, 40h, 1Fh,0C8h,0E7h
		db	0C0h, 10h, 01h, 40h, 40h, 16h
		db	 45h, 56h, 50h,0D4h, 39h, 0Ch
		db	 01h, 83h, 05h,0C0h, 50h, 18h
		db	 1Fh,0C8h,0E7h,0C0h, 80h, 28h
		db	 80h, 08h, 45h, 7Eh,0A1h,0D0h
		db	 39h, 0Ch,0A0h, 72h,0C0h, 50h
		db	 03h, 1Fh,0C8h,0E7h,0C0h, 20h
		db	 14h, 90h, 40h, 20h, 45h, 2Eh
		db	 01h, 46h, 72h, 19h, 48h, 01h
		db	 25h, 82h,0D2h, 80h,0C0h, 1Fh
		db	0C8h,0E7h,0C4h, 0Ah, 80h, 32h
		db	 80h, 21h, 55h, 2Bh, 01h, 4Dh
		db	 40h,0FAh, 1Ch,0E4h, 08h, 25h
		db	 80h, 57h, 80h, 30h, 1Fh,0C8h
		db	0E7h,0D6h, 80h, 06h, 0Dh, 01h
		db	 71h, 55h, 2Bh, 1Ah, 80h,0E4h
		db	 3Eh,0BCh, 49h, 85h,0BBh, 18h
		db	 1Fh,0C8h,0E7h,0C0h, 66h, 80h
		db	0A8h, 71h, 50h, 2Bh, 35h, 01h
		db	0F4h, 7Ah, 9Eh, 4Bh, 22h,0CCh
		db	 0Ch, 1Fh,0C8h,0E7h,0C0h, 1Fh
		db	 55h, 40h, 02h,0F1h, 50h, 2Bh
		db	 6Ah, 01h,0C8h, 52h, 80h, 93h
		db	 23h,0E0h, 06h, 1Fh,0C8h,0E7h
		db	0C0h, 01h, 56h, 8Ah, 02h,0F1h
		db	 50h, 2Bh,0D4h, 01h,0C8h,0FDh
		db	 80h, 93h, 46h, 80h, 03h, 1Fh
		db	0C8h,0E7h,0C0h, 01h, 14h, 40h
		db	 02h,0F1h, 50h, 3Fh,0E8h, 03h
		db	 5Ch,0A3h, 90h, 61h,0C1h, 44h
		db	 01h, 80h, 02h, 80h, 1Fh,0C8h
		db	0E7h,0C0h, 01h, 40h,0F8h, 02h
		db	 02h,0F1h
		db	50h

locloop_385:
		pop	ss
		push	es
		js	$+8			; Jump if sign=1
		pop	bp
		loopz	locloop_385		; Loop if zf=1, cx>0

		add	cl,0F2h
		inc	sp
		db	0C0h, 29h, 40h, 50h, 1Fh,0C8h
		db	0E7h,0C0h, 14h, 8Ch, 10h, 02h
		db	0F1h, 50h, 15h, 80h, 07h, 86h
		db	 50h, 0Fh,0EFh,0E1h,0E1h,0B3h
		db	0C6h,0ACh, 22h, 60h, 28h, 03h
		db	0C0h, 1Fh,0C8h,0E7h,0C0h, 02h
		db	0A2h, 80h, 80h, 02h,0F1h, 50h
		db	 15h, 80h, 02h, 23h,0F0h, 1Eh
		db	 76h,0E0h,0F0h, 03h, 48h, 1Bh
		db	 24h, 0Fh, 28h,0A0h, 01h, 40h
		db	 1Fh,0C8h,0E7h,0C0h, 02h,0C4h
		db	 78h, 16h,0F1h, 1Fh, 80h, 01h
		db	 10h, 64h, 7Dh,0E0h, 3Ch, 31h
		db	 20h, 78h,0D8h, 0Ch,0C1h, 40h
		db	 19h, 56h, 94h,0A5h, 9Eh, 08h
		db	0A0h, 0Ah, 1Fh,0C8h,0E7h,0C0h
		db	 22h, 44h, 02h,0F1h, 1Fh, 80h
		db	0A0h, 02h, 20h, 3Bh, 0Fh,0E0h
		db	 78h, 06h, 60h, 3Ch, 03h, 30h
		db	 2Eh, 62h, 20h, 06h, 78h,0A4h
		db	0C8h, 09h,0EDh, 14h,0D8h, 1Bh
		db	 33h, 1Fh,0C8h,0E7h,0C0h, 41h
		db	 44h, 02h,0F1h, 1Ah, 80h,0A0h
		db	 28h, 50h, 4Bh, 43h, 40h,0F0h
		db	 03h,0C0h, 0Dh, 80h, 18h,0C0h
		db	 17h, 19h, 40h, 01h, 85h, 10h
		db	0FFh, 42h, 80h, 2Bh,0BDh, 89h
		db	0F0h,0F3h, 9Fh,0C8h,0E7h,0C0h
		db	 05h, 22h, 44h, 16h,0F1h, 1Fh
		db	 80h, 0Bh, 04h,0AEh, 18h, 49h
		db	0C0h, 01h,0E0h, 03h, 60h, 03h
		db	 34h, 1Ch,0C0h, 0Bh, 98h, 60h
		db	0C7h, 52h, 9Ah, 19h, 58h, 02h
		db	 9Fh,0C8h,0E7h,0C0h, 4Bh, 6Ch
		db	 02h,0F1h, 1Eh,0C0h, 23h, 3Ch
		db	 45h,0A0h,0C3h,0C0h, 03h,0C0h
		db	 03h, 30h, 88h, 03h, 60h, 01h
		db	 2Ch, 1Ah, 23h, 73h, 36h, 02h
		db	0ACh, 32h, 80h, 1Fh,0C8h,0E7h
		db	0C0h, 05h, 33h, 44h, 02h,0F1h
		db	0A0h, 1Bh,0C0h, 28h,0ABh, 84h
		db	 17h, 84h, 39h, 40h, 07h, 80h
		db	 03h, 18h, 01h, 58h, 32h,0F0h
		db	 80h, 04h, 86h, 07h, 70h, 0Ah
		db	 1Ch,0F7h, 3Dh,0DAh,0A8h, 20h
		db	 1Fh,0C8h,0E7h,0C0h, 05h, 33h
		db	 6Ch, 2Ah,0E5h, 1Eh, 90h,0A1h
		db	 4Fh,0A5h, 6Fh,0F9h,0DDh, 2Dh
		db	0C0h, 0Fh, 06h,0B8h, 03h,0E0h
		db	 26h,0C0h, 04h, 83h,0CFh, 6Fh
		db	 69h,0C0h, 57h,0DBh,0DCh, 05h
		db	 14h, 1Fh,0C8h,0E7h,0C0h, 63h
		db	 6Ch, 02h,0F1h,0AAh, 1Ch, 68h
		db	 2Dh, 20h, 6Ch, 0Fh, 28h,0DFh
		db	0F8h,0E0h, 1Eh, 0Dh,0D0h, 01h
		db	0F8h,0D9h, 80h, 06h, 01h, 80h
		db	 03h,0CCh, 1Ch, 82h, 8Ah,0F7h
		db	 9Ch, 88h, 9Fh,0C8h,0E7h,0C0h
		db	 33h, 6Ch, 03h,0C2h,0F0h,0E0h
		db	 1Ch, 1Ah, 02h, 78h, 06h, 45h
		db	 50h, 5Ah, 05h, 60h, 33h, 0Fh
		db	0A0h, 03h,0B2h,0D4h,0C0h, 04h
		db	 80h,0C0h, 06h,0C7h,0B0h,0A2h
		db	 23h,0EDh,0F0h, 14h, 1Fh,0C8h
		db	0E7h,0C0h, 63h, 6Ch, 02h,0E4h
		db	0E0h, 1Ch, 68h,0A2h,0C5h, 86h
		db	 4Bh,0A0h, 0Ah, 30h, 6Ch, 1Eh
		db	0A0h, 0Fh, 30h, 05h, 24h, 12h
		db	 88h, 30h, 0Ch,0C3h,0D8h, 01h
		db	 11h, 40h,0A1h, 40h, 1Fh,0C8h
		db	0E7h,0C0h, 63h, 3Ch, 50h, 05h
		db	 02h,0F0h,0E0h, 4Ch, 21h, 53h
		db	0A4h, 79h, 8Eh,0D0h, 18h, 01h
		db	0B0h, 14h,0F0h, 78h, 7Eh, 50h
		db	 90h, 0Eh, 70h, 18h, 1Dh,0C3h
		db	0CFh,0D4h,0A0h, 0Ah, 1Fh,0C8h
		db	0E7h,0C0h, 61h,0B6h, 02h, 08h
		db	0A2h, 82h,0F1h,0A0h, 1Eh,0AAh
		db	 18h, 50h,0F0h,0A0h, 0Ch, 03h
		db	0C0h, 28h,0F0h,0ACh, 44h, 09h
		db	0D8h, 48h, 06h, 60h,0C3h, 67h
		db	0E0h, 1Fh,0C8h,0E7h,0C0h, 31h
		db	0B6h, 44h, 88h, 02h,0F1h,0A0h
		db	 4Bh, 8Ah, 80h, 79h,0D0h, 06h
		db	 07h, 80h,0F0h, 78h, 1Dh, 58h
		db	 80h, 42h, 60h, 63h, 1Fh,0C8h
		db	0E7h,0C0h, 61h,0B6h,0B7h, 9Ah
		db	 2Ah,0F1h,0A0h, 4Bh,0A2h,0E0h
		db	0CCh, 05h, 28h, 03h, 0Fh, 01h
		db	0E0h, 34h, 81h, 2Eh, 35h, 40h
		db	 03h, 50h, 03h, 30h, 18h, 59h
		db	 1Fh,0C8h,0E7h,0C0h, 61h,0B6h
		db	 50h, 10h,0A1h, 2Ah,0F1h,0A0h
		db	 4Bh, 9Bh, 4Ah,0B6h, 80h, 01h
		db	 9Eh, 01h,0E0h, 0Dh, 32h, 35h
		db	0BEh, 28h, 41h, 48h, 18h,0C0h
		db	 1Dh, 1Eh, 30h, 1Fh,0C8h,0E7h
		db	0C0h, 31h,0B6h, 8Ah, 22h, 07h
		db	 2Ah,0F1h,0A0h, 1Bh,0D4h, 28h
		db	0F0h, 5Ch, 03h,0C0h, 03h,0D1h
		db	0FAh, 08h, 80h, 60h, 30h, 04h
		db	 81h, 86h, 1Fh,0C8h,0E7h,0C0h
		db	 61h,0B6h, 11h, 40h,0BCh,0C2h
		db	0F1h, 33h,0E8h, 02h, 80h, 18h
		db	 07h, 80h, 08h, 49h, 46h,0D5h
		db	 82h, 04h, 80h, 30h, 1Dh, 18h
		db	 60h, 1Fh,0C8h,0E7h,0C0h, 61h
		db	0B4h, 79h, 50h, 29h, 82h,0F1h
		db	 50h, 1Bh,0C0h, 18h, 0Fh, 10h
		db	 80h, 95h, 53h,0C0h, 20h, 40h
		db	 25h, 40h, 09h, 05h, 01h, 8Ch
		db	 1Fh,0C8h,0E7h,0C0h, 61h, 9Eh
		db	 20h,0B2h, 06h, 82h,0F1h, 50h
		db	 1Bh,0C0h, 30h, 1Eh, 21h,0A1h
		db	 8Ah, 78h,0F0h, 60h, 48h, 06h
		db	 40h, 64h, 30h, 30h,0C0h, 6Bh
		db	 9Fh,0C8h,0E7h,0C0h, 05h, 60h
		db	0DEh, 51h, 71h, 7Ah, 02h,0F1h
		db	 1Bh,0C0h, 60h, 3Ch, 02h,0C2h
		db	 59h, 28h,0C0h, 60h, 24h, 80h
		db	 50h, 0Eh, 03h, 03h, 1Ch, 8Ah
		db	 3Ch, 4Dh,0C4h, 9Fh,0C8h,0E7h
		db	0C0h, 05h,0C0h,0DBh, 14h, 16h
		db	 86h,0C2h,0F1h,0A0h, 1Bh,0C0h
		db	 06h, 78h, 05h, 85h, 40h, 17h
		db	 60h, 48h, 84h, 01h, 10h, 40h
		db	 34h, 60h, 61h, 12h, 80h, 01h
		db	 43h, 1Fh,0C8h,0E7h,0C0h,0C0h
		db	0DBh,0DBh,0C2h,0FBh, 1Bh,0C0h
		db	0CCh,0C3h, 30h, 0Bh, 0Ah, 80h
		db	 74h, 48h, 02h, 82h,0F0h, 0Eh
		db	 14h, 06h, 06h, 39h, 22h, 15h
		db	 9Fh,0C8h,0E7h,0C0h, 05h, 60h
		db	0DBh, 7Bh, 1Bh,0C0h,0C6h, 60h
		db	 16h, 15h, 95h, 90h, 04h, 01h
		db	 01h,0A0h, 11h, 79h, 24h, 05h
		db	 60h, 62h, 20h, 0Bh, 9Fh,0C8h
		db	0E7h,0C0h, 05h,0C0h,0DBh, 50h
		db	 53h, 1Bh,0C0h, 1Bh,0C7h,0ECh
		db	0F0h, 3Ah,0C0h, 30h, 02h, 88h
		db	0FDh, 82h, 22h, 8Eh, 50h, 03h
		db	0CCh, 0Ch, 72h, 01h, 9Fh,0C8h
		db	0E7h,0C0h, 05h, 60h,0DBh, 50h
		db	 53h, 05h, 1Bh,0C0h, 33h,0C6h
		db	0B8h,0F6h,0EAh, 87h,0E0h, 05h
		db	 10h, 41h, 14h, 09h,0C1h, 51h
		db	 64h, 78h, 01h, 10h,0C0h,0C4h
		db	 40h, 01h, 9Fh,0C8h,0E7h,0C0h
		db	 05h,0C1h, 9Bh, 03h, 1Bh,0C0h
		db	 03h,0A6h,0C7h, 59h, 81h,0AAh
		db	 8Ah,0C0h, 08h,0A2h, 80h, 02h
		db	 36h, 8Ah, 01h,0E0h,0AAh, 81h
		db	 8Ah, 50h, 0Ch, 18h,0E4h, 01h
		db	 9Fh,0C8h,0E7h,0C0h, 05h, 60h
		db	0DBh, 03h, 0Ah, 1Bh,0C0h, 0Dh
		db	 46h,0CCh, 01h, 80h, 01h, 80h
		db	 11h, 4Bh, 56h, 90h, 01h, 0Bh
		db	 45h,0F1h, 9Eh, 99h, 40h, 01h
		db	 81h, 88h, 81h, 9Fh,0C8h,0E7h
		db	0C0h, 05h,0C0h,0DBh, 51h, 90h
		db	 5Bh,0C0h, 1Ah, 8Ch, 01h, 20h
		db	 54h, 80h, 08h, 88h,0B6h, 85h
		db	 28h,0AAh, 05h,0A2h, 82h, 01h
		db	 20h, 05h, 19h, 80h, 28h, 04h
		db	0F8h, 19h,0C9h, 9Fh,0C8h,0E7h
		db	0C0h, 04h, 20h,0DBh, 51h, 94h
		db	0BBh,0C0h, 3Ch, 02h, 40h, 03h
		db	 04h, 51h, 1Ah, 5Bh, 38h, 45h
		db	 41h, 41h, 04h,0D0h, 0Fh, 01h
		db	 8Ch, 51h, 68h, 01h, 83h, 18h
		db	 1Fh,0C8h,0E7h,0C0h, 05h,0C0h
		db	0DBh, 01h, 8Ah, 1Bh,0C0h, 03h
		db	 06h, 58h, 8Bh,0C2h, 94h, 2Ah
		db	 70h, 22h, 88h, 80h, 10h,0D0h
		db	 22h,0E1h, 0Ch,0C2h, 80h, 14h
		db	 30h, 33h, 1Fh,0C8h,0E7h,0C0h
		db	 05h, 60h,0DBh, 02h, 4Ah, 1Bh
		db	0C0h, 02h, 40h, 42h, 82h,0B1h
		db	 17h, 91h, 0Ah, 15h, 40h, 54h
		db	 2Fh, 40h, 5Ch, 0Ch,0CBh, 20h
		db	 03h, 07h, 9Fh,0C8h,0E7h,0C0h
		db	0C1h, 9Bh, 52h, 68h, 1Bh,0C0h
		db	 04h, 80h, 0Ch, 01h, 10h,0D0h
		db	0AFh, 22h,0A0h,0A0h, 80h,0D5h
		db	0E0h, 2Dh, 90h, 0Ah, 60h, 0Ch
		db	 42h, 50h, 30h, 1Fh,0C8h,0E7h
		db	0C0h, 05h, 60h,0DBh, 02h, 80h
		db	 02h, 10h, 1Bh,0C0h, 04h,0D0h
		db	 48h, 02h, 08h, 94h, 21h,0A0h
		db	 44h, 11h, 16h, 84h, 01h, 34h
		db	 2Ch, 80h, 01h, 7Ah, 30h, 03h
		db	 64h, 82h, 80h, 06h, 1Fh,0C8h
		db	0E7h,0C0h, 07h, 40h,0DBh, 15h
		db	0F4h, 02h,0F1h, 1Bh,0C0h, 06h
		db	0F0h, 18h, 04h, 11h, 42h, 11h
		db	 82h, 22h,0A8h, 04h, 34h, 12h
		db	 11h,0D7h,0A3h, 65h, 18h, 06h
		db	 60h, 05h, 01h, 9Fh,0C8h,0E7h
		db	0C0h, 05h,0C0h,0DBh,0A0h, 52h
		db	 41h, 5Bh,0C0h, 0Ch, 52h,0B0h
		db	 08h, 82h, 05h, 08h, 94h, 20h
		db	 56h, 91h, 10h, 09h, 44h, 0Bh
		db	 08h, 05h, 1Dh,0C6h, 0Ch,0C0h
		db	 63h, 0Bh, 41h, 9Fh,0C8h,0E7h
		db	0C0h, 13h,0E1h, 9Bh, 02h,0E0h
		db	 4Bh,0C0h, 09h, 55h, 60h, 10h
		db	 04h, 40h,0A4h, 4Ah, 14h, 56h
		db	 80h, 26h, 20h, 08h, 40h, 88h
		db	 03h, 0Ch,0D8h, 06h, 03h, 30h
		db	 09h, 1Fh,0C8h,0E7h,0C0h, 11h
		db	 60h,0DBh, 01h,0D0h,0C0h, 02h
		db	 04h, 30h, 08h,0F5h, 20h, 08h
		db	 8Dh, 02h, 20h, 52h, 20h, 20h
		db	 74h, 21h,0AAh, 88h, 30h,0CAh
		db	0A0h, 05h, 46h,0C8h, 33h, 01h
		db	 9Fh,0C8h,0E7h,0C0h, 13h, 40h
		db	0DAh, 34h,0C0h, 02h,0D0h, 0Eh
		db	0DAh,0C0h, 10h, 08h, 81h, 10h
		db	 44h, 50h, 01h, 01h, 35h, 43h
		db	0CCh, 15h, 14h, 50h, 50h, 40h
		db	 2Fh, 40h, 0Ch,0C3h, 19h, 9Fh
		db	0C8h,0E7h,0C0h, 11h, 90h,0DBh
		db	 90h, 28h,0C0h, 16h, 1Bh, 80h
		db	 28h, 02h, 01h, 42h, 94h, 80h
		db	 08h, 58h, 04h, 2Ah, 1Ch,0E0h
		db	 01h, 2Bh, 44h, 8Ah, 80h, 28h
		db	 80h, 0Bh, 80h, 18h, 5Fh, 8Eh
		db	 18h, 1Fh,0C8h,0E7h,0C0h, 11h
		db	0C0h,0DAh, 80h, 01h
data_811	dw	880h
		db	 57h, 40h, 14h, 10h, 40h,0A4h
		db	 4Bh, 45h, 40h, 0Eh,0A8h, 8Ch
		db	 80h, 2Ch,0C0h, 10h, 34h, 11h
		db	 10h, 02h,0A8h,0C0h, 24h, 31h
		db	 9Fh,0C8h,0E7h,0C0h, 11h, 90h
		db	0DAh, 80h

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_94		proc	near
		xor	[bx+si],dl
		db	 6Dh, 15h, 6Ah, 2Dh,0A1h, 12h
		db	 82h,0A0h, 21h,0B2h, 28h, 02h
		db	 5Ah, 08h, 80h, 02h, 0Bh, 80h
		db	 12h, 0Bh,0C0h, 9Fh,0C8h,0E7h
		db	0C0h, 13h, 40h,0DAh, 80h, 30h
		db	 10h, 32h, 55h, 55h, 10h, 50h
		db	 50h,0A4h, 43h, 68h, 90h, 05h
		db	 2Eh,0A6h, 29h, 50h, 01h, 0Fh
		db	0C0h, 09h, 1Fh,0C8h,0E7h,0C0h
		db	 13h, 54h,0DAh,0B0h, 21h,0B8h
		db	 01h, 54h, 14h, 44h, 2Ah, 2Dh
		db	0A2h, 01h,0ADh, 52h, 40h, 06h
		db	0C0h, 08h,0A8h, 01h, 86h, 50h
		db	0C0h, 21h, 16h, 9Fh,0C8h,0E7h
		db	0C0h, 13h, 4Ah,0C0h, 1Fh,0F4h
		db	 05h, 55h, 50h, 55h, 7Dh, 05h
		db	 10h
data_812	dw	2A4h
		db	 40h, 59h, 01h, 38h,0A1h, 05h
		db	 40h,0B2h, 0Ch, 05h, 58h,0E0h
		db	 10h, 93h, 80h, 1Fh,0C8h,0E7h
		db	0C0h, 0Dh, 20h, 6Bh, 08h, 01h
		db	 54h, 01h, 55h, 7Ch, 15h, 68h
		db	0A0h, 04h, 94h, 48h, 26h,0F4h
		db	 01h, 05h, 10h, 06h, 01h, 80h
		db	 18h, 0Ch, 74h, 0Ch, 05h, 52h
		db	0E0h, 10h, 94h, 22h, 88h, 1Fh
		db	0C8h,0E7h,0C0h, 76h,0E0h, 55h
		db	 55h, 50h, 50h, 55h, 05h, 18h
		db	 51h, 20h, 02h, 30h, 21h, 88h
		db	0A0h,0AAh,0A2h, 0Ch, 03h, 08h
		db	 70h, 90h, 03h, 09h, 30h, 05h
		db	 52h, 40h, 10h,0D2h, 23h, 32h
		db	 80h, 1Fh,0C8h,0C0h, 25h, 10h
		db	 01h, 55h, 41h, 55h, 54h, 17h
		db	0D5h, 40h, 6Bh, 6Ch, 80h, 21h
		db	 60h, 40h, 10h, 1Dh, 04h, 90h
		db	 9Ah,0C8h,0C4h, 2Ch, 07h,0C4h
		db	0C0h, 06h, 1Ch,0D1h, 6Eh, 84h
		db	 01h, 80h, 48h, 80h, 64h, 50h
		db	 50h, 05h, 07h,0D5h, 05h,0EAh
		db	 04h, 50h,0F8h, 0Ah, 80h,0B7h
		db	 02h, 48h, 46h, 0Eh, 80h, 30h
		db	0B4h, 07h,0C4h, 60h, 12h, 3Bh
		db	 1Ch, 31h,0DDh, 81h,0C0h, 08h
		db	0E4h, 14h, 01h, 41h, 55h, 41h
		db	 41h, 2Ch, 02h,0F5h, 70h, 82h
		db	 15h, 01h, 14h,0A3h, 0Bh, 24h
		db	 20h,0D2h,0F0h, 0Dh, 68h, 07h
		db	0D0h,0C0h, 10h, 80h,0A3h, 02h
		db	 77h, 41h,0C8h, 03h,0C0h,0E4h
		db	 55h, 05h, 55h, 05h, 55h, 50h
		db	 02h, 15h,0C0h, 0Bh, 18h, 80h
		db	 2Bh, 77h,0AEh, 20h, 90h, 6Bh
		db	 08h, 0Ch, 14h, 02h,0D2h,0E0h
		db	 04h, 80h, 81h,0FCh, 01h,0C8h
		db	 1Eh, 03h,0C0h,0E4h, 01h,0C8h
		db	 1Eh, 03h,0C0h,0E4h, 01h,0C8h
		db	 1Eh, 03h, 27h, 4Eh, 06h,0E4h
		db	 01h,0C8h,0C0h, 48h, 80h, 08h
		db	0C0h, 48h,0E0h,0C8h,0E4h, 01h
		db	0C8h
data_813	db	3			; Data table (indexed access)
		db	 27h, 4Eh, 06h, 03h
data_814	db	0C0h			; Data table (indexed access)
		db	0E4h, 01h,0C8h, 1Eh, 03h,0C0h
		db	0E4h, 01h,0C8h, 1Eh, 03h,0C4h
		db	0A4h, 48h, 80h, 0Ah, 80h, 22h
		db	 22h, 02h, 02h, 08h, 20h, 28h
		db	 8Ah, 8Ah, 22h, 0Ah, 22h,0A0h
		db	 08h, 88h,0A8h,0A0h,0A2h, 80h
		db	 4Ah, 9Eh, 03h,0C0h,0E4h,0D4h
		db	 40h, 05h, 04h, 01h, 01h, 50h
		db	 14h, 51h, 51h, 41h, 15h, 10h
		db	 05h, 50h, 04h, 51h, 54h, 54h
		db	 40h, 05h, 45h, 4Ah, 9Eh,0C0h
		db	 24h, 68h, 0Ah, 28h, 02h,0A8h
		db	 20h,0A0h, 02h, 02h, 22h, 36h
		db	 2Ah,0A8h, 08h, 02h, 88h, 02h
		db	 0Ah,0A0h, 02h, 20h, 20h,0A0h
		db	0A0h, 80h, 88h, 22h,0A8h, 48h
		db	0E0h, 04h, 80h, 40h, 05h, 04h
		db	 40h, 11h, 05h, 50h, 04h, 44h
		db	 04h, 05h, 10h, 41h, 36h, 40h
		db	 01h
		db	'EDADDAA@A'
		db	 15h, 10h, 51h, 05h, 01h, 40h
		db	 80h,0C8h,0E4h
data_815	db	4
		db	 20h, 28h, 20h,0A8h, 28h, 02h
		db	 80h, 88h, 0Ah, 0Ah, 02h,0A0h
		db	 82h, 57h, 28h, 88h,0AAh, 82h
		db	 2Ah, 08h,0AAh,0A8h, 02h, 80h
		db	0A2h, 82h, 28h, 2Ah, 80h, 20h
		db	 40h, 01h,0C8h,0E7h,0C0h,0D8h
		db	0C0h, 44h, 01h, 45h, 15h, 45h
		db	 14h, 11h, 05h, 51h, 50h, 14h
		db	0A3h, 90h, 15h, 54h, 41h, 14h
		db	 50h, 05h, 45h, 01h, 44h, 55h
		db	 01h, 05h, 54h, 10h, 60h, 1Fh
		db	0C8h,0E7h,0C8h, 6Ah, 94h,0CEh
		db	 20h, 02h, 80h, 28h, 02h, 80h
		db	 02h, 0Ah, 2Ah, 08h, 22h, 02h
		db	 88h, 22h,0AAh, 28h, 22h,0AAh
		db	 94h, 63h,0A5h, 88h, 82h, 88h
		db	0A0h, 28h,0A2h
		db	 08h, 28h, 22h, 0Ah
data_816	db	28h			; Data table (indexed access)
data_817	dw	0AA02h
		db	0A8h, 09h, 9Fh,0C8h,0E7h,0C8h
		db	 6Ah, 94h, 0Ch, 90h, 41h, 55h
		db	 01h, 45h, 04h, 40h, 44h, 54h
		db	 01h, 10h, 40h, 41h, 45h, 55h
		db	 01h, 40h, 50h, 51h, 40h, 22h
		db	0D5h, 31h, 15h, 11h, 11h, 54h
		db	 01h, 51h, 01h, 04h, 51h, 15h
		db	 04h, 40h, 44h, 15h, 05h, 01h
		db	 9Fh,0C8h,0E7h,0C8h, 6Ah, 80h
		db	 28h,0CCh, 2Ah, 22h, 08h, 28h
		db	 08h,0A0h, 22h, 22h,0A2h, 88h
		db	 20h, 2Ah, 20h, 28h,0F4h, 52h
		db	0EEh,0DEh, 28h, 02h, 08h, 80h
		db	 82h, 02h, 28h,0A0h, 08h, 88h
		db	0A0h, 8Ah, 20h, 09h, 1Fh,0C8h
		db	0E7h,0C0h, 4Ah, 94h, 0Ch,0C6h
		db	 20h, 51h, 54h, 05h, 50h, 50h
		db	 01h, 40h, 01h, 45h, 04h, 01h
		db	 14h, 15h, 45h, 50h,0A0h,0CFh
		db	 7Eh,0EFh, 45h, 04h, 10h, 11h
		db	 55h, 01h, 40h, 05h, 04h, 44h
		db	 45h, 11h, 11h, 14h, 9Fh,0C8h
		db	0E7h,0C5h, 10h, 94h, 28h,0C1h
		db	 44h, 20h, 22h, 5Fh, 87h, 06h
		db	 1Ah, 28h, 07h,0A0h, 8Ah, 88h
		db	 04h, 2Dh,0B1h,0B7h,0F6h, 48h
		db	 80h, 08h, 20h, 08h, 8Ah, 08h
		db	0A0h, 82h, 82h, 80h, 80h,0A2h
		db	 28h, 03h, 9Fh,0C8h,0E7h,0C2h
		db	 08h,0C0h, 0Ch,0DAh, 05h, 55h
		db	 50h, 58h,0F8h, 14h, 01h, 45h
		db	 50h, 14h, 0Ah,0CFh, 69h, 15h
		db	 4Ch,0A1h, 10h, 15h, 45h, 41h
		db	 11h, 14h, 04h, 15h, 05h, 01h
		db	 11h, 54h, 14h, 50h, 05h, 9Fh
		db	0C8h,0E7h,0C1h, 4Ch, 28h,0C1h
		db	 0Fh, 0Ah, 80h,0EAh, 60h, 02h
		db	 08h, 0Ah, 02h,0A2h, 1Ah,0AAh
		db	 4Eh,0A9h,0EAh, 92h, 82h, 22h
		db	0A0h, 8Ah, 88h, 28h, 02h, 08h
		db	 20h, 80h,0A1h, 1Fh,0C8h,0E7h
		db	0C0h,0A8h, 08h, 48h, 0Ch, 20h
		db	 04h, 51h, 59h, 90h, 01h, 10h
		db	 55h, 11h, 54h, 40h, 30h, 51h
		db	 50h,0A5h,0AEh, 49h, 50h, 44h
		db	 41h, 10h, 05h, 04h, 04h, 44h
		db	 50h, 14h, 9Fh,0C8h,0E7h,0C5h
		db	 40h, 46h, 0Ah, 66h, 80h, 88h
		db	 12h, 5Ch, 28h, 0Ah,0A2h,0C0h
		db	 0Ah, 29h, 40h, 08h,0FCh,0A2h
		db	 20h,0A2h,0A8h,0A2h, 80h, 0Ah
		db	 08h, 0Ah, 80h,0A0h, 0Ah, 01h
		db	 1Fh,0C8h,0E7h,0C2h, 28h, 02h
		db	 30h, 06h, 20h, 05h, 71h, 2Eh
		db	 04h, 01h, 50h, 05h, 50h, 54h
		db	 14h, 10h, 88h, 87h, 30h, 75h
		db	 0Ch, 6Fh, 05h, 04h, 10h, 10h
		db	 01h, 10h, 05h, 01h, 45h, 05h
		db	 9Fh,0C8h,0E7h,0C1h, 14h, 14h
		db	 13h,0A0h, 28h, 64h, 02h, 18h
		db	 06h, 8Ah,0A8h, 87h, 70h,0D2h
		db	 20h, 28h, 09h,0ABh, 26h, 0Eh
		db	 27h, 82h, 2Ah, 0Ah, 22h,0A0h
		db	 80h, 02h, 80h,0A2h, 82h, 23h
		db	 9Fh,0C8h,0E7h,0C0h, 20h, 02h
		db	 1Dh,0A0h, 06h, 20h, 10h, 19h
		db	 24h, 55h, 40h, 04h, 01h, 01h
		db	 10h, 13h,0E3h, 64h, 06h,0E3h
		db	0C0h, 01h, 15h, 54h, 41h, 50h
		db	 01h, 11h, 14h, 14h, 01h, 9Fh
		db	0C8h,0E7h,0C0h, 01h, 50h, 11h
		db	 11h, 80h, 64h, 08h, 32h,0E5h
		db	 88h, 28h,0A2h, 08h, 0Fh, 71h
		db	 42h, 28h, 09h,0C1h,0E0h, 0Ah
		db	 80h, 02h, 8Ah, 0Ah, 08h, 80h
		db	 2Ah, 80h, 21h, 9Fh,0C8h,0E7h
		db	0C0h, 08h,0A0h, 8Ch,0A0h, 06h
		db	 24h, 32h,0E2h, 80h, 04h, 40h
		db	 1Eh, 3Bh, 20h, 78h, 28h,0A2h
		db	 80h,0F0h, 05h, 01h, 51h, 40h
		db	 14h, 44h, 14h, 10h, 01h, 9Fh
		db	0C8h,0E7h,0C0h, 54h, 04h, 90h
		db	 66h, 92h,0E2h, 80h,0A0h, 6Ch
		db	 1Ah, 38h,0D8h, 78h,0A0h, 78h
		db	 28h, 80h, 0Ah,0A0h,0A0h, 80h
		db	 01h, 9Fh,0C8h,0E7h,0C0h, 02h
		db	 86h, 05h, 14h, 06h, 52h,0E2h
		db	 85h, 7Dh, 11h,0F1h, 98h, 6Ch
		db	0F1h,0E0h, 3Ch, 05h, 01h, 40h
		db	 10h, 50h, 04h, 01h, 9Fh,0C8h
		db	0E7h,0C0h, 10h, 04h, 74h, 60h
		db	 62h, 02h,0FAh, 01h,0B1h, 8Ch
		db	 6Ch,0D9h, 04h, 1Eh, 22h, 02h
		db	 82h, 02h, 02h, 8Bh, 9Fh,0C8h
		db	0E7h,0C0h, 20h, 23h, 02h, 80h
		db	 06h, 33h, 90h, 14h, 01h,0F4h
		db	 5Bh,0B1h, 8Ch, 66h, 6Ch,0ECh
		db	 8Fh, 05h, 41h, 51h, 10h, 55h
		db	 55h, 04h, 9Fh,0C8h,0E7h,0C0h
		db	 01h, 01h, 32h, 94h, 61h, 80h
		db	 0Ah, 07h,0A8h,0EFh, 99h, 86h
		db	 4Bh, 63h, 4Dh,0C7h, 80h, 02h
		db	0A0h,0A8h, 02h, 08h, 01h, 9Fh
		db	0C8h,0E7h,0C0h, 08h, 21h,0A8h
		db	 06h,0C0h, 0Ah,0F0h,0EBh,0C7h
		db	0ABh, 75h,0B0h,0A5h, 93h,0C0h
		db	 10h, 44h, 01h, 54h, 05h, 44h
		db	 01h, 55h, 11h, 01h, 9Fh,0C8h
		db	0E7h,0C0h, 40h, 01h, 18h, 02h
		db	 81h, 40h, 22h, 2Bh, 60h,0E8h
		db	0A1h, 55h,0C2h, 7Ah,0DBh,0D4h
		db	0E0h, 02h, 0Ah, 02h,0A2h,0A0h
		db	 88h, 80h,0A0h, 03h, 1Fh,0C8h
		db	0E7h,0C0h, 02h, 08h,0C0h, 01h
		db	 40h, 01h, 51h, 51h,0F9h, 82h
		db	 54h, 14h,0A8h,0CBh, 01h, 43h
		db	 7Ah, 60h, 40h, 54h, 44h, 14h
		db	 40h, 05h, 54h, 9Fh,0C8h,0E7h
		db	0C0h, 04h, 4Ch, 15h, 40h, 02h
		db	 02h, 2Ch, 37h, 03h, 02h, 80h
		db	 1Ah, 4Fh, 14h,0A9h,0D9h, 32h
		db	 02h,0AAh, 22h,0A2h,0AAh,0A8h
		db	 02h, 80h, 02h, 8Ah, 08h, 29h
		db	 9Fh,0C8h,0E7h,0C0h, 80h, 08h
		db	 61h, 40h, 14h, 10h, 11h, 45h
		db	 20h,0BCh, 51h, 80h,0ACh, 05h
		db	 64h,0ACh,0B0h, 9Ch, 50h, 50h
		db	 40h, 14h, 44h, 01h, 01h, 41h
		db	 50h, 9Fh,0C8h,0E7h,0C4h, 40h
		db	 02h,0D9h,0B6h, 44h, 05h, 47h
		db	 40h,0A0h, 20h, 28h, 28h,0A0h
		db	 71h,0E0h,0C2h,0DAh, 60h,0C6h
		db	 2Eh,0C0h,0ECh,0A0h,0AAh,0AAh
		db	 82h,0A0h, 0Ah,0A0h, 02h, 8Ah
		db	 28h, 01h, 1Fh,0C8h,0E7h,0C0h
		db	 20h, 80h, 04h,0D8h, 99h,0CAh
		db	 02h, 81h, 55h, 10h, 55h, 44h
		db	 04h, 04h, 4Dh, 82h,0E2h,0B6h
		db	 30h, 5Eh, 40h, 76h, 04h, 40h
		db	 50h, 01h, 41h, 11h, 14h, 44h
		db	 10h, 51h, 45h, 14h, 9Fh,0C8h
		db	0E7h,0C4h, 44h, 04h, 29h, 40h
		db	 63h, 54h, 14h,0A0h,0AAh, 02h
		db	0A0h,0A2h, 2Fh, 36h, 02h, 9Ah
		db	0F4h, 14h, 14h, 0Eh, 54h, 3Bh
		db	 02h,0AAh, 08h, 88h, 28h, 2Ah
		db	 80h,0A0h, 28h, 03h, 9Fh,0C8h
		db	0E7h,0C0h, 82h, 80h, 08h, 14h
		db	 0Dh,0AAh,0A5h, 55h, 05h, 14h
		db	 45h, 04h, 01h, 45h, 98h, 03h
		db	 65h,0D2h,0CCh, 0Ah, 37h,0F4h
		db	 3Ah,0C4h, 10h, 40h, 50h, 15h
		db	 01h, 05h, 45h, 04h, 54h, 10h
		db	 50h, 50h, 9Fh,0C8h,0E7h,0C4h
		db	 05h, 10h, 20h, 27h,0D1h,0A2h
		db	 80h,0AAh, 02h,0AAh, 56h, 30h
		db	 01h, 81h,0DFh, 06h, 12h,0BEh
		db	 1Dh, 40h, 28h, 0Ah, 28h, 88h
		db	0AAh, 28h, 80h,0A0h, 08h,0A2h
		db	 2Bh, 1Fh,0C8h,0E7h,0C8h, 20h
		db	 05h, 40h, 3Dh, 08h, 15h, 40h
		db	 50h, 01h, 40h, 58h,0C0h, 60h
		db	0DBh, 6Ch, 01h,0A4h,0BBh, 0Bh
		db	 05h, 05h, 05h, 50h, 45h, 11h
		db	 40h, 40h, 51h, 54h, 51h, 04h
		db	 04h, 9Fh,0C8h,0E7h,0C4h, 40h
		db	 81h,0FCh, 60h,0AAh, 08h,0A0h
		db	 8Ah,0AAh, 63h, 01h, 4Dh, 44h
		db	 81h,0EFh, 03h, 48h,0FCh,0CEh
		db	0C0h, 28h, 02h, 03h, 1Fh,0C8h
		db	0E7h,0C8h, 80h, 0Bh, 09h, 1Eh
		db	 51h, 11h, 40h, 15h
data_818	db	1			; Data table (indexed access)
		db	0AEh, 62h, 70h,0C1h, 83h, 06h
		db	 90h, 7Bh, 1Ch,0A0h, 45h, 40h
		db	 01h, 01h, 44h, 10h, 04h, 54h
		db	 01h, 9Fh,0C8h,0E7h,0C1h, 40h
		db	 90h, 57h,0A8h, 80h, 2Ah, 80h
		db	 0Eh,0E8h, 08h, 8Ch, 48h,0C6h
		db	 19h, 20h, 66h,0CBh, 28h, 02h
		db	0A0h,0A0h,0A0h, 20h,0A0h,0A8h
		db	 03h, 1Fh,0C8h,0E7h,0C0h, 02h
		db	 0Ah, 20h, 15h, 20h, 54h, 05h
		db	 54h, 45h, 55h, 01h, 5Eh,0B0h
		db	 1Ch, 8Ch, 09h, 62h,0E0h, 60h
		db	 79h, 60h, 05h, 10h, 05h, 10h
		db	 10h, 45h, 55h, 01h, 10h, 9Fh
		db	0C8h,0E7h,0C0h, 10h, 01h, 40h
		db	 40h, 16h, 45h, 57h, 02h, 8Ah
		db	 02h, 9Fh,0D4h, 39h, 0Ch, 01h
		db	 23h, 05h,0C0h, 70h, 80h, 19h
		db	0A2h, 20h, 02h, 02h, 02h,0A8h
		db	 0Ah,0A0h, 29h, 1Fh,0C8h,0E7h
		db	0C0h, 80h, 28h, 80h, 08h, 45h
		db	 7Ch, 55h, 41h, 05h, 50h, 2Bh
		db	0D0h, 39h, 0Ch, 22h,0C0h, 44h
		db	 03h, 81h, 10h, 14h, 15h, 50h
		db	 41h, 40h, 44h, 55h, 9Fh,0C8h
		db	0E7h,0C0h, 20h, 14h, 90h, 40h
		db	 20h, 45h, 2Fh, 02h, 88h, 72h
		db	 18h,0B5h, 82h,0D2h, 80h,0D0h
		db	 02h, 80h, 02h, 22h, 8Ah, 88h
		db	 88h,0A2h, 0Bh, 9Fh,0C8h,0E7h
		db	0C4h, 0Ah, 80h, 32h, 80h, 21h
		db	 55h, 2Bh, 80h, 45h, 11h, 54h
		db	 01h,0E5h, 40h,0FAh, 19h, 40h
		db	 02h, 65h, 80h, 57h, 80h, 38h
		db	 45h, 14h, 40h, 50h, 05h, 11h
		db	 9Fh,0C8h,0E7h,0D6h, 80h, 06h
		db	 0Dh, 01h, 71h, 55h, 2Ah,0A0h
		db	0A0h, 82h, 28h,0AAh, 80h,0E4h
		db	 30h, 01h, 02h, 49h, 85h,0BBh
		db	 1Ch,0A0h, 0Ah, 28h, 0Ah,0A2h
		db	 20h,0A0h,0A1h, 1Fh,0C8h,0E7h
		db	0C0h, 66h, 80h,0A8h, 71h, 50h
		db	 2Bh, 91h, 50h, 50h, 44h, 54h
		db	 40h, 15h, 01h,0F4h, 64h, 42h
		db	 10h, 4Bh, 22h,0CCh, 0Ah, 41h
		db	 14h, 05h, 44h, 10h, 51h, 04h
		db	 14h, 14h, 05h, 9Fh,0C8h,0E7h
		db	0C0h, 1Fh, 55h, 44h, 42h,0F1h
		db	 50h, 2Ah,0AAh, 02h, 22h, 02h
		db	 08h, 02h, 2Ah, 01h,0C8h, 6Bh
		db	0CEh, 93h, 23h,0E0h, 07h, 88h
		db	 22h, 20h, 0Ah, 22h, 88h,0A0h
		db	 20h, 23h, 1Fh,0C8h,0E7h,0C0h
		db	 01h, 56h, 8Ah, 20h, 82h,0F1h
		db	 50h, 2Ah, 91h, 15h, 10h, 45h
		db	 14h, 54h, 01h,0C8h,0D5h, 8Fh
		db	 93h, 46h, 80h, 03h, 81h, 40h
		db	 11h, 40h, 10h, 40h, 01h, 15h
		db	 10h, 9Fh,0C8h,0E7h,0C0h, 01h
		db	 14h, 44h, 42h,0F1h, 50h, 3Eh
		db	 02h, 08h, 08h, 20h, 28h, 28h
		db	0A8h, 03h, 5Ch,0F3h,0B8h, 61h
		db	0C1h, 44h, 01h,0C8h,0A0h, 22h
		db	 21h, 1Fh,0C8h,0E7h,0C0h, 01h
		db	 40h,0F8h, 02h, 20h, 82h,0F1h
		db	 50h, 17h, 80h, 55h, 05h, 05h
		db	 01h, 78h, 06h, 5Dh,0B1h,0A8h
		db	0C0h,0C1h,0F2h, 44h,0E4h, 05h
		db	 54h, 40h, 50h, 55h, 04h, 05h
		db	 9Fh,0C8h,0E7h,0C0h, 14h, 8Ch
		db	 11h, 02h, 80h, 42h,0F1h, 50h
		db	 15h, 48h, 02h,0A8h, 02h, 50h
		db	 0Dh, 6Fh,0B1h,0E1h,0B3h, 44h
		db	0ACh, 22h, 78h, 08h, 80h, 28h
		db	 88h, 09h, 1Fh,0C8h,0E7h,0C0h
		db	 02h,0A2h, 80h, 88h, 05h, 82h
		db	0F1h, 50h, 15h, 05h, 10h, 01h
		db	 04h, 41h, 40h, 01h,0F0h, 1Ah
		db	 36h,0E0h,0F0h, 06h, 48h, 1Bh
		db	 28h, 01h, 44h, 04h, 50h, 01h
		db	 9Fh,0C8h,0E7h,0C0h, 02h,0C4h
		db	 79h,0A0h, 28h, 56h,0F1h, 1Fh
		db	 60h,0A8h, 80h, 08h, 80h, 80h
		db	 01h,0E0h, 34h, 11h, 08h, 72h
		db	0D8h, 0Ch,0C1h, 40h, 1Eh, 02h
		db	 80h, 08h, 81h, 9Fh,0C8h,0E7h
		db	0C0h, 22h, 46h, 41h, 82h,0F1h
		db	 1Fh, 40h, 10h, 10h, 04h, 01h
		db	 01h, 05h,0E0h, 68h, 08h, 24h
		db	 36h, 01h, 13h, 30h, 2Eh, 76h
		db	 20h, 07h, 80h, 01h, 40h, 50h
		db	 01h, 9Fh,0C8h,0E7h,0C0h, 41h
		db	 40h, 28h,0AAh, 42h,0F1h, 1Ah
		db	 48h,0A0h, 80h, 0Ah, 08h, 0Ah
		db	 82h, 03h, 40h,0D8h, 84h, 48h
		db	 0Dh, 88h, 40h,0C0h, 17h, 0Dh
		db	 40h, 01h,0E0h, 28h, 01h, 9Fh
		db	0C8h,0E7h,0C0h, 05h, 22h, 46h
		db	 11h, 44h, 96h,0F1h, 1Fh, 10h
		db	 04h, 04h, 04h, 43h,0C0h, 01h
		db	0E0h, 12h, 24h, 03h, 20h, 1Ch
		db	0C0h, 0Bh, 8Ch, 78h, 01h, 40h
		db	 01h, 9Fh,0C8h,0E7h,0C0h, 4Bh
		db	 68h,0A0h, 02h, 82h,0C2h,0F1h
		db	 1Eh, 80h, 02h, 02h, 88h, 02h
		db	 08h, 83h,0C0h, 03h,0C0h, 09h
		db	 18h, 88h, 03h, 24h, 04h, 26h
		db	 1Eh, 28h, 0Bh, 9Fh,0C8h,0E7h
		db	0C0h, 05h, 33h, 46h, 11h, 10h
		db	 54h, 82h,0F1h,0A0h, 1Bh,0B0h
		db	 40h, 14h, 04h, 15h, 04h, 41h
		db	 40h, 07h, 80h, 12h, 18h, 01h
		db	 58h, 33h, 10h, 7Eh, 86h, 05h
		db	 01h, 9Fh,0C8h,0E7h,0C0h, 05h
		db	 33h, 68h,0A0h, 6Ah,0E5h, 1Eh
		db	 82h, 0Ah,0AAh, 08h, 29h,0C0h
		db	 0Fh, 0Ch,0B8h, 06h,0E0h, 26h
		db	 84h, 90h, 03h,0CFh,0C0h,0A0h
		db	 05h, 01h, 9Fh,0C8h,0E7h,0C0h
		db	 63h, 6Eh, 05h, 82h,0F1h,0AAh
		db	 1Ch, 60h, 05h, 40h, 01h, 54h
		db	 41h, 01h, 41h,0E0h, 1Eh, 19h
		db	0F8h, 90h, 78h,0D8h, 43h, 20h
		db	 01h, 80h, 03h,0CCh, 18h, 01h
		db	 9Fh,0C8h,0E7h,0C0h, 33h, 68h
		db	 2Ah,0C2h,0F0h,0E0h, 1Ch, 20h
		db	 0Ah, 28h, 02h, 0Ah,0AAh, 20h
		db	 32h, 40h, 27h,0C5h, 12h,0C0h
		db	0Ah
data_819	dw	0C005h
		db	 06h,0C7h,0BCh, 28h, 28h, 01h
		db	 9Fh,0C8h,0E7h,0C0h, 63h, 6Eh
		db	 01h,0C2h,0E4h,0E0h, 1Ch, 60h
		db	 10h, 40h, 40h, 15h,0B0h, 6Ch
		db	 1Eh,0C0h, 07h,0B0h, 0Ch,0C3h
		db	0D8h, 74h, 44h, 50h, 01h, 9Fh
		db	0C8h,0E7h,0C0h, 63h, 38h, 08h
		db	0C2h,0F0h,0E0h, 4Ch, 20h, 0Ah
		db	 01h, 40h, 78h, 01h,0B0h, 02h
		db	 1Ch,0C0h, 06h, 78h, 18h,0C3h
		db	0CFh,0D8h, 05h, 50h, 01h, 9Fh
		db	0C8h,0E7h,0C0h, 61h,0B4h, 01h
		db	 50h,0C2h,0F1h,0A0h, 1Eh,0A0h
		db	 01h, 40h, 3Ch, 03h,0C0h, 01h
		db	 98h,0C0h, 06h, 36h, 60h,0C3h
		db	 67h,0E6h, 01h, 9Fh,0C8h,0E7h
		db	0C0h, 31h,0B7h,0A0h, 88h, 42h
		db	0F1h,0A0h, 4Bh,0A0h, 02h, 9Eh
		db	 07h, 80h, 01h,0B0h, 60h, 0Ch
		db	 0Ch, 63h, 03h, 01h, 9Fh,0C8h
		db	0E7h,0C0h, 61h,0B4h, 15h, 11h
		db	0EAh,0F1h,0A0h, 4Bh,0A0h, 14h
		db	 14h, 14h, 14h, 0Fh, 0Fh, 01h
		db	0E0h, 30h, 0Ch, 33h, 30h, 18h
		db	 59h, 90h, 01h, 9Fh,0C8h,0E7h
		db	0C0h, 61h,0B7h,0A2h,0EAh,0F1h
		db	0A0h, 4Bh, 88h,0A0h, 55h, 08h
		db	 82h, 05h, 9Eh, 03h, 60h, 0Ch
		db	 01h, 4Ch, 78h,0C0h, 1Dh, 1Eh
		db	 22h, 01h, 9Fh,0C8h,0E7h,0C0h
		db	 31h,0B4h, 11h,0AAh,0F1h,0A0h
		db	 1Bh,0A4h, 54h, 40h, 11h, 04h
		db	 40h, 52h, 5Ch, 06h,0C0h, 03h
		db	 5Ah, 06h,0C0h, 30h, 04h, 81h
		db	 87h, 20h, 14h, 01h, 9Fh,0C8h
		db	0E7h,0C0h, 61h,0B7h,0A8h, 28h
		db	0C2h,0F1h, 33h,0A0h,0A0h, 8Ah
		db	0A2h, 20h,0A2h,0A3h, 0Ch, 0Dh
		db	 80h, 08h, 40h, 0Ah, 30h, 1Dh
		db	 18h, 44h, 0Ah, 01h, 9Fh,0C8h
		db	0E7h,0C0h, 61h,0B4h, 40h,0C2h
		db	0F1h, 50h, 1Bh,0E5h, 01h, 14h
		db	 11h, 50h, 55h, 41h, 54h, 98h
		db	 1Bh, 10h, 80h, 0Ah, 03h,0C0h
		db	 25h, 40h, 09h, 05h, 01h, 8Eh
		db	 40h, 01h, 9Fh,0C8h,0E7h,0C0h
		db	 61h, 9Dh, 28h,0C2h,0F1h, 50h
		db	 1Bh,0A2h, 80h,0A0h, 2Ah, 22h
		db	 82h, 2Ah, 82h,0A2h, 70h, 36h
		db	 21h,0A0h, 05h, 48h, 06h, 40h
		db	 64h, 30h, 30h, 88h, 01h, 9Fh
		db	0C8h,0E7h,0C0h, 05h, 60h,0DFh
		db	 91h, 50h, 01h, 82h,0F1h, 1Bh
		db	0B0h, 55h, 44h, 05h, 41h, 51h
		db	 40h, 14h, 11h,0E0h, 6Ch, 02h
		db	0C2h, 60h, 24h, 80h, 50h, 0Eh
		db	 03h, 03h, 1Ch, 80h, 01h, 9Fh
		db	0C8h,0E7h,0C0h, 05h,0C0h,0DAh
		db	 20h, 82h,0C2h,0F1h,0A0h, 1Bh
		db	0A8h,0A0h, 2Ah, 8Ah, 8Ah, 20h
		db	 08h,0AAh, 2Bh, 06h, 02h, 58h
		db	 05h, 85h, 40h, 48h, 84h, 01h
		db	 10h, 40h, 34h, 60h, 61h, 10h
		db	 01h, 9Fh,0C8h,0E7h,0C0h,0C0h
		db	0DAh,0C4h, 55h, 05h,0C2h,0FBh
		db	 1Bh,0B0h, 14h, 14h, 41h, 45h
		db	 55h, 06h,0D8h,0C6h, 30h, 0Bh
		db	 0Ah, 80h, 74h, 48h, 02h, 82h
		db	0F0h, 0Eh, 14h, 06h, 06h, 39h
		db	 01h, 9Fh,0C8h,0E7h,0C0h, 05h
		db	 60h,0DAh,0A0h, 40h, 7Bh, 1Bh
		db	0A8h, 0Ah, 8Ah, 28h,0AAh, 08h
		db	 20h, 60h,0CCh, 60h, 16h, 15h
		db	 95h, 90h, 04h, 01h, 01h,0A0h
		db	 11h, 79h, 24h, 05h, 60h, 62h
		db	 20h, 01h, 9Fh,0C8h,0E7h,0C0h
		db	 05h,0C0h,0DBh,0C4h, 04h,0C0h
		db	 53h, 1Bh,0E0h, 15h, 44h, 05h
		db	 14h, 01h, 9Bh,0C6h, 0Dh,0B0h
		db	 3Ah,0C0h, 30h, 02h, 88h,0FDh
		db	 82h, 22h, 8Eh, 50h, 03h,0CCh
		db	 0Ch, 72h, 01h, 9Fh,0C8h,0E7h
		db	0C0h, 05h, 60h,0DAh,0A0h, 0Ah
		db	 40h, 53h, 05h, 1Bh,0A0h, 8Ah
		db	 02h, 28h, 80h
		db	20h
data_820	db	3			; Data table (indexed access)
		db	 1Bh,0C6h, 18h,0F6h,0EAh, 87h
		db	0E0h, 05h, 10h, 41h, 14h, 09h
		db	0C1h, 51h, 64h, 78h, 01h, 10h
		db	0C0h,0C4h, 40h, 01h, 9Fh,0C8h
		db	0E7h,0C0h, 05h,0C1h, 9Ah, 90h
		db	 51h, 45h, 80h, 03h, 1Bh,0B5h
		db	 01h, 51h, 10h, 15h, 50h, 5Bh
		db	0F6h,0C6h, 1Bh, 01h,0AAh, 8Ah
		db	0C0h, 08h,0A2h, 80h, 02h, 36h
		db	 8Ah, 01h,0E0h,0AAh, 81h, 8Ah
		db	 50h, 0Ch, 18h,0E4h, 01h, 9Fh
		db	0C8h,0E7h,0C0h, 05h, 60h,0DAh
		db	 08h, 80h, 0Ah, 40h, 03h, 0Ah
		db	 1Bh,0AAh, 2Ah,0A2h, 2Ah, 20h
		db	 0Ah,0A0h, 3Dh,0E6h,0CCh, 01h
		db	 80h, 01h, 80h, 11h, 4Bh, 56h
		db	 90h, 01h, 0Bh, 45h,0F1h, 9Eh
		db	 99h, 40h, 01h, 81h, 88h, 81h
		db	 9Fh,0C8h,0E7h,0C0h, 05h,0C0h
		db	0DBh,0C5h, 01h, 15h,0C0h, 51h
		db	 90h, 5Bh,0A0h, 15h, 41h, 40h
		db	 7Bh,0CCh, 01h, 20h, 54h, 80h
		db	 08h, 88h,0B6h, 85h, 28h,0AAh
		db	 05h,0A2h, 82h, 01h, 20h, 05h
		db	 19h, 80h, 28h, 04h,0F8h, 19h
		db	0C9h, 9Fh,0C8h,0E7h,0C0h, 04h
		db	 20h,0DAh, 88h, 08h,0C0h, 51h
		db	 94h,0BBh,0A0h, 2Ah, 20h,0FCh
		db	 02h, 40h, 03h, 04h, 51h, 1Ah
		db	 5Bh, 38h, 45h, 41h, 41h, 04h
		db	0D0h, 0Fh, 01h, 8Ch, 51h, 68h
		db	 01h, 83h, 10h, 9Fh,0C8h,0E7h
		db	0C0h, 05h,0C0h,0DAh, 84h, 55h
		db	 05h, 80h, 01h, 8Ah, 1Bh,0F1h
		db	 40h, 50h, 03h, 03h, 06h, 58h
		db	 8Bh,0C2h, 94h, 2Ah, 70h, 22h
		db	 88h, 80h, 10h,0D0h, 22h,0E1h
		db	 0Ch,0C2h, 80h, 14h, 30h, 33h
		db	 1Fh,0C8h,0E7h,0C0h, 05h, 60h
		db	0DAh, 80h, 50h,0C0h, 02h, 4Ah
		db	 1Bh, 88h, 0Ch, 02h, 40h, 42h
		db	 82h,0B1h, 17h, 91h, 0Ah, 15h
		db	 40h, 54h, 2Fh, 40h, 5Ch, 0Ch
		db	0CBh, 20h, 03h, 07h, 9Fh,0C8h
		db	0E7h,0C0h,0C1h, 9Ah, 94h, 01h
		db	 42h, 40h, 52h, 68h, 1Bh,0B0h
		db	 41h, 40h, 06h, 04h, 80h, 0Ch
		db	 01h, 10h,0D0h,0AFh, 22h,0A0h
		db	0A0h, 80h,0D5h,0E0h, 2Dh, 90h
		db	 0Ah, 60h, 0Ch, 42h, 50h, 30h
		db	 1Fh,0C8h,0E7h,0C0h, 05h, 60h
		db	0DAh, 85h,0C0h, 02h, 10h, 1Bh
		db	 8Ah,0A8h, 06h, 04h,0D0h, 48h
		db	 02h, 08h, 94h, 21h,0A0h, 44h
		db	 11h, 16h, 84h, 01h, 34h, 2Ch
		db	 80h, 01h, 7Ah, 30h, 03h, 64h
		db	 82h, 80h, 06h, 1Fh,0C8h,0E7h
		db	0C0h, 07h, 40h,0DAh, 80h,0C0h
		db	 02h,0F1h, 1Bh,0A0h, 0Ch, 06h
		db	0F0h, 18h, 04h, 11h, 42h, 11h
		db	 82h, 22h,0A8h, 04h, 34h, 12h
		db	 11h,0D7h,0A3h, 65h, 18h, 06h
		db	 60h, 05h, 01h, 9Fh,0C8h,0E7h
		db	0C0h, 05h,0C0h,0DAh, 80h,0C0h
		db	 52h, 41h, 5Bh,0A0h, 0Ch, 0Ch
		db	 52h,0B0h, 08h, 82h, 05h, 08h
		db	 94h, 20h, 56h, 91h, 10h, 09h
		db	 44h, 0Bh, 08h, 05h, 1Dh,0C6h
		db	 0Ch,0C0h, 63h, 0Bh, 41h, 9Fh
		db	0C8h,0E7h,0C0h, 13h,0E1h, 9Ah
		db	 80h,0C0h, 02h,0E0h, 4Bh,0ACh
		db	 09h, 55h, 60h, 10h, 04h, 40h
		db	0A4h, 4Ah, 14h, 56h, 80h, 26h
		db	 20h, 08h, 40h, 88h, 03h, 0Ch
		db	0D8h, 06h, 03h, 30h, 09h, 1Fh
		db	0C8h,0E7h,0C0h, 11h, 60h,0DAh
		db	 80h,0C0h, 02h, 04h, 30h, 08h
		db	0F5h, 20h, 08h, 8Dh, 02h, 20h
		db	 52h, 20h, 20h, 74h, 21h,0AAh
		db	 88h, 30h,0CAh,0A0h, 05h, 46h
		db	0C8h, 33h, 01h, 9Fh,0C8h,0E7h
		db	0C0h, 13h, 40h,0DAh, 80h,0C0h
		db	 02h,0D0h, 0Eh,0DAh,0C0h, 10h
		db	 08h, 81h, 10h, 44h, 50h, 01h
		db	 01h, 35h, 43h,0CCh, 15h, 14h
		db	 50h, 50h, 40h, 2Fh, 40h, 0Ch
		db	0C3h, 19h, 9Fh,0C8h,0E7h,0C0h
		db	 11h, 90h,0DAh, 80h,0C0h, 16h
		db	 1Bh, 80h, 28h, 02h, 01h, 42h
		db	 94h, 80h, 08h, 58h, 04h, 2Ah
		db	 1Ch,0E0h, 01h, 2Bh, 44h, 8Ah
		db	 80h, 28h, 80h, 0Bh, 80h, 18h
		db	 5Fh, 8Eh, 18h, 1Fh,0C8h,0E7h
		db	0C0h, 11h,0C0h,0DAh, 80h,0C0h
		db	 08h, 57h, 40h, 14h, 10h, 40h
		db	0A4h, 4Bh, 45h, 40h, 0Eh,0A8h
		db	 8Ch, 80h, 2Ch,0C0h, 10h, 34h
		db	 11h, 10h, 02h,0A8h,0C0h, 24h
		db	 31h, 9Fh,0C8h,0E7h,0C0h, 11h
		db	 90h,0DAh, 80h, 30h, 10h, 6Dh
		db	 15h, 6Ah, 2Dh,0A1h, 12h, 82h
		db	0A0h, 21h,0B2h, 28h, 02h, 5Ah
		db	 08h, 80h, 02h, 0Bh, 80h, 12h
		db	 0Bh,0C0h, 9Fh,0C8h,0E7h,0C0h
		db	 13h, 40h,0DAh, 80h, 30h, 10h
		db	 32h, 55h, 55h, 10h, 50h, 50h
		db	0A4h, 43h, 68h, 90h, 05h, 2Eh
		db	0A6h, 29h, 50h, 01h, 0Fh,0C0h
		db	 09h, 1Fh,0C8h,0E7h,0C0h, 13h
		db	 54h,0DAh,0B0h, 21h,0B8h, 01h
		db	 54h, 14h, 44h, 2Ah, 2Dh,0A2h
		db	 01h,0ADh, 52h, 40h, 06h,0C0h
		db	 08h,0A8h, 50h,0C0h, 21h, 88h
		db	 16h, 9Fh,0C8h,0E7h,0C0h, 13h
		db	 4Ah,0C0h, 1Fh,0F4h, 05h, 55h
		db	 50h, 55h, 7Dh, 05h, 10h,0A4h
		db	 02h, 40h, 59h, 01h, 38h,0A1h
		db	 05h, 40h, 05h, 58h,0E0h, 10h
		db	 4Bh, 08h, 1Fh,0C8h,0E7h,0C0h
		db	 0Dh, 20h, 6Bh, 08h, 01h, 54h
		db	 01h, 55h, 7Ch, 15h, 68h,0A0h
		db	 04h, 94h, 48h, 26h,0F4h, 01h
		db	 05h, 10h, 06h, 01h, 80h, 05h
		db	 52h,0E0h, 10h,0E0h, 15h, 08h
		db	 1Fh,0C8h,0E7h,0C0h, 76h,0E0h
		db	 55h, 55h, 50h, 50h, 55h, 05h
		db	 18h, 51h, 20h, 02h, 30h, 21h
		db	 88h,0A0h,0AAh,0A2h, 0Ch, 03h
		db	 1Eh, 05h, 52h, 40h, 10h,0E0h
		db	 15h, 20h, 1Fh,0C8h,0C0h, 25h
		db	 10h, 01h, 55h, 41h, 55h, 54h
		db	 17h,0D5h, 40h, 6Bh, 6Ch, 80h
		db	 21h, 60h, 40h, 10h, 1Dh, 04h
		db	 80h, 0Dh, 80h, 07h,0C4h,0C0h
		db	 06h, 60h, 2Ch, 21h, 80h, 48h
		db	 80h, 64h, 50h, 50h, 05h, 07h
		db	0D5h, 05h,0EAh, 04h, 50h,0F8h
		db	 0Ah, 80h,0B7h, 02h, 40h, 06h
		db	 60h, 07h,0C4h, 60h, 12h, 60h
		db	0C1h,0C0h, 08h,0E4h, 14h, 01h
		db	 41h, 55h, 41h, 41h, 2Ch, 02h
		db	0F5h, 70h, 82h, 15h, 01h, 14h
		db	0A3h, 0Bh, 20h, 01h, 98h, 07h
		db	0D0h,0C0h, 10h,0E0h, 02h, 41h
		db	0C8h, 03h,0C0h,0E4h, 55h, 05h
		db	 55h, 05h, 55h, 50h, 02h, 15h
		db	0C0h, 0Bh, 18h, 80h, 2Bh, 77h
		db	0AEh, 20h, 28h, 02h,0D2h,0E0h
		db	 04h,0E0h, 02h, 41h,0C8h, 1Eh
		db	 03h,0C0h,0E4h, 01h,0C8h, 1Eh
		db	 03h,0C0h,0E4h, 01h,0C8h, 1Eh
		db	 03h, 27h, 4Eh, 06h,0E4h, 01h
		db	0C8h,0C0h, 48h, 80h, 08h, 09h
		db	 2Dh, 00h, 00h, 00h, 05h, 78h
		db	 0Ah,0FFh,0FFh, 08h, 80h, 00h
		db	 00h, 43h, 78h, 1Fh,0B7h,0F7h
		db	0FDh, 00h, 00h, 02h, 04h, 18h
		db	 6Fh,0DAh,0B3h,0F6h, 80h, 00h
		db	 00h, 01h, 04h, 1Eh, 28h, 5Eh
		db	 40h, 31h, 80h, 00h, 00h, 01h
		db	 04h, 1Eh, 1Ch, 01h,0C2h, 35h
		db	 80h, 00h, 00h, 01h, 04h, 1Eh
		db	 18h, 00h,0EEh, 0Bh, 80h, 00h
		db	 00h, 01h, 04h, 1Ch, 78h, 09h
		db	 77h,0EEh,0E0h, 20h, 00h, 20h
		db	 04h, 78h,0F8h,0A4h, 1Dh,0C7h
		db	 40h, 00h, 40h, 80h, 02h, 61h
		db	0BDh, 40h,0C6h,0FEh, 78h, 01h
		db	 00h, 00h, 00h, 06h, 67h, 7Eh
		db	0ECh, 0Eh, 51h, 78h, 00h, 00h
		db	 01h, 02h, 5Eh,0BFh,0E3h,0BDh
loc_386:
		clc				; Clear carry flag
		jl	$+2			; delay for I/O
		add	[bx+di],al
		push	es
		jg	loc_386			; Jump if >
		db	0F3h,0FDh,0C0h, 24h, 00h, 00h
		db	 01h, 06h, 7Fh,0FFh,0F6h, 19h
		db	0FBh, 37h, 80h, 00h, 00h, 00h
		db	 0Ah, 6Fh,0FDh,0FFh,0FCh, 5Dh
		db	0FDh, 00h, 00h, 01h, 0Eh, 4Fh
		db	0EFh,0AFh,0FFh, 76h,0F4h, 00h
		db	 00h, 01h, 0Eh, 7Bh, 3Eh, 46h
		db	0FFh, 66h,0B5h,0ACh, 00h, 30h
		db	 0Ah, 48h,0FFh,0CBh,0FFh, 77h
		db	0E7h,0F4h, 00h, 10h, 1Ah, 5Fh
		db	0EFh,0AFh,0FFh,0C7h,0A7h, 79h
		db	 00h, 00h, 00h, 6Ah, 7Fh, 6Fh
		db	0FBh, 7Fh,0D7h, 37h,0FDh, 80h
		db	 10h,0A2h, 6Fh,0EEh,0F5h
loc_387:
		mov	bx,0B3BFh
		retn	80h
sub_94		endp

			                        ;* No entry point to code
		add	ch,[bp+si-12h]
		idiv	di			; ax,dx rem=dx:ax/reg
		inc	word ptr [bx+si]
		jg	loc_387			; Jump if >
		loopnz	locloop_388		; Loop if zf=0, cx>0


locloop_388:
		add	dl,[di+57h]
		ja	loc_390			; Jump if above
		call	sp			;*
		pop	sp
		loopnz	locloop_389		; Loop if zf=0, cx>0


locloop_389:
		add	bl,[bx+di-12h]
		jnz	$-100h			; Jump if not zero
		sub	al,0CFh
		db	0FEh, 38h, 00h, 06h, 73h,0EFh
		db	0F7h,0FDh, 9Eh, 44h,0B6h, 1Fh
		db	 80h, 0Eh, 53h,0EBh,0FFh,0F9h
		db	0BEh, 30h, 0Bh, 07h, 40h, 1Eh
		db	 67h,0C7h,0FFh, 6Eh, 9Fh,0D0h
		db	0DFh, 00h, 00h, 00h, 3Ah, 6Fh
		db	0CFh,0FFh,0FDh, 02h,0EDh,0CFh
		db	 80h, 00h,0DEh, 5Dh,0BFh, 5Fh
		db	0FBh, 8Bh,0D1h,0E7h,0C0h, 00h
		db	0FEh, 6Dh, 3Fh,0DFh,0AFh, 82h
		db	0D0h, 58h,0C0h, 03h, 42h, 69h
		db	 8Fh,0FEh,0FFh, 8Bh,0DCh, 60h
		db	 40h, 01h, 82h, 59h, 1Fh,0D7h
		db	0F7h,0BBh, 19h, 60h, 00h, 07h
		db	 82h, 4Dh, 0Fh,0F1h,0FFh,0DCh
		db	0F4h, 30h, 00h, 00h, 00h, 02h
		db	 5Eh, 0Fh, 7Fh,0FFh,0B4h, 2Fh
		db	 18h, 00h, 00h, 00h, 02h, 5Fh
		db	 0Fh, 72h, 3Fh,0E0h
loc_390:
		sub	cl,byte ptr ds:[0C00h]
		push	es
		pop	sp
;*		pop	cs			; Dangerous-8088 only
		db	0Fh			;  Fixup - byte match
		jnp	$+81h			; Jump if not parity
		loop	$+41h			; Loop if cx > 0

		xchg	dx,ax
		add	[si],al
		push	es
		pop	sp
		and	di,[bp+si-41h]
;*		jmp	far ptr loc_7		;*
		db	0EAh
		dw	0D61Fh, 880h		;  Fixup - byte match
			                        ;* No entry point to code
		add	dh,[si+6Fh]
		sti				; Enable interrupts
		mov	di,0F53h
		clc				; Clear carry flag
		test	al,[bx+si]
		add	bh,[bp+si+37h]
		cld				; Clear direction
		popf				; Pop flags
		jmp	$+7DD2h
			                        ;* No entry point to code
		xchg	[bx+si],ah
		push	ds
;*		adc	bh,bl
		db	 10h,0DFh		;  Fixup - byte match
		db	0F1h, 9Fh,0F8h,0E7h, 7Ch,0C6h
		db	 00h, 12h, 40h, 3Fh,0FFh,0E1h
		db	0DCh, 41h, 16h
loc_393:
		out	0,al			; port 0, DMA-1 bas&add ch 0
		jle	$+2			; delay for I/O
		cmc				; Complement carry
		jmp	word ptr [bx+di-8]	;*
		db	 60h, 0Fh,0A6h, 00h, 3Eh, 40h
		db	0FFh,0FDh,0E3h,0FBh, 7Ch, 3Bh
		db	 96h,0D3h,0EAh, 10h,0FFh,0FFh
		db	 00h,0E7h,0B0h, 19h,0EFh,0F7h
		db	0F5h, 22h, 00h, 5Fh,0FFh,0F7h
		db	0E8h, 45h,0EFh,0FFh,0FFh, 00h
		db	0C2h, 00h,0DFh,0FFh,0F0h, 50h
		db	 00h,0E7h,0FCh,0FFh,0A2h, 00h
		db	0DBh, 7Eh, 58h, 70h, 01h,0A7h
		db	0CCh, 9Ch, 4Eh, 00h,0DFh,0AFh
		db	0F7h, 19h, 80h, 8Dh,0CCh, 0Eh
		db	 9Eh, 00h,0CFh, 7Fh, 9Bh,0CBh
		db	 01h,0B3h,0FCh, 00h, 6Eh, 00h
		db	 8Fh,0FFh,0F3h,0EBh,0C0h,0F8h
		db	0F5h,0FCh,0EEh, 01h, 8Eh,0FFh
		db	 97h,0FFh,0C0h, 7Ch,0C7h,0DFh
		db	0DAh, 01h, 8Fh,0FFh,0E7h,0B9h
		db	0BCh, 3Dh,0CFh,0C3h, 92h, 00h
		db	 9Fh, 7Fh,0FFh,0F7h,0BFh, 3Eh
		db	0F8h,0DEh,0F2h, 01h, 1Fh,0FFh
		db	0FFh, 00h,0FCh, 7Bh, 06h,0C8h
		db	0CEh,0DAh, 01h, 2Fh,0EFh,0FFh
		db	0FBh, 8Fh, 06h,0CEh, 07h,0E2h
		db	 01h, 3Fh,0FFh,0EEh,0EFh,0AFh
		db	0ACh, 8Ch, 07h, 22h, 00h, 15h
		db	0FFh,0F9h,0FBh,0E2h,0FFh,0CAh
		db	 3Ch, 02h, 00h, 37h,0FFh,0F3h
		db	0FFh,0FFh, 01h, 82h,0F0h, 06h
		db	 00h, 05h,0FBh, 7Fh, 7Fh, 00h
		db	0DDh, 8Eh, 01h,0FFh,0F6h, 00h
		db	 27h,0FFh,0F7h,0FBh,0FFh,0CCh
		db	 00h, 7Fh,0DEh, 00h, 0Bh,0DFh
		db	 7Ah, 78h, 6Eh,0FFh, 83h,0FFh
		db	 5Ah, 00h, 2Fh, 3Fh,0FFh,0E4h
		db	0FFh, 7Fh, 03h, 7Eh, 42h, 00h
		db	 23h,0EFh,0DFh,0D6h,0FEh, 5Dh
		db	 03h
loc_394:
		mov	bh,7Ah			; 'z'
		add	[bx],cl
		out	dx,ax			; port 0FE31h ??I/O Non-standard
		mov	di,8EC7h
		cmp	ax,0AF03h
		cli				; Disable interrupts
		add	byte ptr ds:[0FFE7h][bx],ch
;*		mov	si,379h
		db	0C7h,0C6h, 79h, 03h	;  Fixup - byte match
		db	0FFh,0D8h, 01h,0AFh,0E7h,0FFh
		db	0C7h,0D8h,0DBh, 03h, 73h,0F6h
		db	 00h, 0Fh,0F7h,0FFh,0FEh,0F1h
		db	0DBh, 81h,0FDh,0BAh, 01h, 2Fh
		db	0F7h,0FFh,0FDh,0BDh,0FFh,0C1h
		db	0F9h,0BEh, 00h, 27h, 4Fh,0EFh
		db	0EFh, 00h, 9Fh, 7Bh,0C3h,0F9h
		db	0F2h, 00h, 2Fh,0F8h,0F7h,0E3h
		db	0FFh, 37h,0C1h, 6Eh, 1Ah, 00h
		db	 07h, 8Bh,0F6h,0F0h,0DEh, 1Ah
		db	 80h, 10h
loc_395:
		sahf				; Store ah into flags
		add	[bx],al
		jnp	loc_395			; Jump if not parity
		std				; Set direction flag
		push	word ptr [bx-37h]
		jmp	dword ptr [bp]		;*
			                        ;* No entry point to code
		pop	es
;*		jmp	short loc_396		;*
		db	0EBh,0F5h		;  Fixup - byte match
			                        ;* No entry point to code
;*		fdivr	qword ptr [bx+0]	; st = memory / st
		db	0DCh, 7Fh, 00h		;  Fixup - byte match
		db	0EFh,0F1h, 42h, 08h, 07h,0FBh
		db	0FCh,0BFh,0F8h, 08h, 67h,0FBh
		db	 70h, 00h, 0Fh,0E2h, 7Fh,0B1h
		db	0F0h, 00h, 61h,0D3h, 08h, 00h
		db	 5Fh, 60h, 6Fh, 07h,0F0h,0DFh
		db	0A1h, 1Dh,0FEh, 00h, 36h, 80h
		db	 4Fh, 13h,0BDh,0FCh, 80h, 74h
		db	0FEh, 00h, 4Fh, 44h, 67h,0EFh
		db	0FEh, 1Eh, 81h,0EFh, 7Eh, 00h
		db	 77h, 80h, 06h, 13h,0FFh,0DEh
		db	 01h, 70h, 7Ch, 00h, 7Ch,0C0h
		db	 03h,0FFh,0F7h, 9Eh, 39h,0F1h
		db	0BEh, 00h,0DCh, 00h, 00h, 00h
		db	 0Fh, 9Fh, 9Eh, 39h, 64h, 10h
		db	 00h
loc_397:
		pushf				; Push flags
		add	[si],al
		stc				; Set carry flag
		std				; Set direction flag
		aas				; Ascii adjust
		jg	loc_397			; Jump if >
		push	es
;*		add	[si+0],bl
		db	 00h, 5Ch, 00h		;  Fixup - byte match
		db	 00h, 01h, 7Ch, 0Ah, 7Fh,0F9h
		db	 08h, 00h, 90h, 00h, 00h, 00h
		db	0EFh,0FFh,0FCh,0FFh,0FFh, 00h
		db	0FEh, 00h,0D0h, 00h, 00h, 00h
		db	 01h,0FAh,0A8h,0FDh, 00h, 00h
		db	 00h, 07h, 90h, 00h, 01h,0FFh
		db	0FFh, 00h,0FCh,0FFh,0BFh, 06h
		db	 00h, 00h, 02h, 31h,0DAh, 19h
		db	0FFh, 08h, 00h, 02h,0A0h, 00h
		db	 00h, 00h,0FFh,0E9h,0F8h,0FCh
		db	0F6h, 46h, 06h, 10h, 00h, 02h
		db	 9Fh, 80h, 0Ah,0FFh, 04h, 1Ah
		db	 04h, 00h, 00h, 00h, 01h,0FFh
		db	 83h,0D5h,0FCh, 3Fh,0FCh, 00h
		db	 00h, 02h, 3Ah, 06h, 4Bh, 7Eh
		db	 27h, 80h, 10h, 60h, 00h, 1Fh
		db	0FFh,0FDh,0FFh,0FEh, 7Fh, 90h
		db	 14h, 50h, 00h, 20h, 04h, 82h
		db	 19h,0FCh, 80h, 28h, 00h, 30h
		db	 0Ch, 07h,0FFh,0FFh, 01h,0FCh
		db	 5Fh,0D8h, 00h, 20h, 00h, 02h
		db	 00h, 80h, 01h,0FCh, 02h, 40h
		db	 00h,0FFh, 0Ch, 1Fh,0DFh,0FCh
		db	 71h,0EDh,0BBh,0E0h, 0Eh, 29h
		db	 02h, 9Ch, 00h, 00h, 00h, 01h
		db	0ECh, 1Ah,0A0h, 07h, 3Eh, 00h
		db	0DFh, 81h,0B0h, 45h,0ECh, 31h
		db	0A0h, 47h,0AFh, 00h, 32h, 90h
		db	0C0h, 11h,0FEh, 80h, 30h, 0Eh
		db	 7Bh, 82h, 7Eh, 33h, 81h,0F9h
		db	0FDh, 07h, 00h, 28h, 07h, 00h
		db	 00h, 02h, 01h,0FEh, 40h, 00h
		db	 3Fh, 7Dh,0E0h, 3Ch,0CDh,0BCh
		db	0C1h,0FCh,0DFh, 80h, 1Eh
data_821	db	0ABh			; Data table (indexed access)
		db	 00h, 00h, 02h, 01h,0EEh, 40h
		db	 00h
data_822	db	7Eh			; Data table (indexed access)
		db	 7Ch, 9Bh,0CFh, 80h, 1Eh,0CFh
		db	0EEh,0B7h,0B8h, 1Bh,0FEh, 00h
		db	 00h, 02h, 01h,0ECh, 60h, 00h
		db	 1Fh,0BEh, 1Fh, 80h, 07h, 84h
		db	 75h,0EDh, 80h, 78h, 3Fh,0CCh
		db	 00h, 00h, 02h, 01h,0E4h, 20h
		db	 00h, 3Ch, 20h, 38h, 00h,0E0h
		db	 00h, 01h,0F6h, 60h, 7Eh, 4Dh
		db	 96h, 00h, 00h, 02h, 01h,0C0h
		db	 20h, 00h, 00h, 00h, 0Fh, 00h
		db	0E0h, 40h, 00h, 00h, 00h,0FCh
		db	 02h,0FCh, 00h, 00h, 05h,0F4h
		db	 00h, 00h, 00h, 3Fh, 00h, 0Eh
		db	 80h, 00h, 00h, 01h,0FDh,0FCh
		db	 5Eh, 00h, 00h, 05h,0FEh, 00h
		db	 00h, 00h, 01h,0E8h, 00h, 00h
		db	 00h,0C6h,0BEh,0D3h,0FEh, 00h
		db	 7Eh, 00h, 00h, 05h,0FEh, 00h
		db	 00h, 01h, 10h, 60h,0D8h, 0Fh
		db	0C0h, 0Fh,0F6h, 00h,0FCh, 00h
		db	 00h, 05h,0F6h, 00h, 00h, 04h
		db	 06h, 00h, 00h, 00h,0FEh, 00h
		db	 00h, 07h,0E6h, 00h, 00h, 03h
		db	 70h, 00h, 00h, 01h,0EEh, 00h
		db	 00h, 07h,0EEh, 00h, 00h, 07h
		db	0EEh, 00h, 00h, 46h, 20h, 00h
		db	 00h, 06h, 06h, 20h, 00h, 00h
		db	 06h, 06h, 20h, 00h, 00h, 06h
		db	 06h,0A0h, 00h, 00h, 06h, 07h
		db	0E0h, 00h, 00h, 06h, 07h,0E0h
		db	 00h, 00h, 06h, 07h,0F0h, 00h
		db	 00h, 06h, 07h,0F8h, 1Fh,0B7h
		db	0F7h,0FDh, 00h, 00h, 02h, 07h
		db	0B8h, 6Fh,0DAh,0B3h,0F6h, 80h
		db	 00h, 00h, 01h, 05h,0BEh, 28h
		db	 5Eh, 40h, 31h, 80h, 00h, 00h
		db	 01h, 05h, 9Eh, 1Ch, 01h,0C2h
		db	 35h, 80h, 00h, 00h, 01h, 05h
		db	0DEh, 18h, 00h,0EEh, 0Bh, 80h
		db	 00h, 00h, 01h, 01h,0DCh, 78h
		db	 09h, 77h,0EEh,0E0h, 20h, 00h
		db	 20h, 07h,0F8h,0F8h, 00h,0A5h
		db	 9Fh,0C7h, 40h, 00h, 40h, 80h
		db	 01h,0E1h,0BDh, 41h,0C6h,0FEh
		db	 78h, 01h, 00h, 00h, 00h, 07h
		db	0E7h, 7Eh,0ECh, 0Eh, 51h, 78h
		db	 00h, 00h, 01h, 03h,0DEh,0BFh
		db	0E3h,0BDh,0F8h, 7Ch, 00h, 00h
		db	 01h, 07h,0FFh,0F9h,0F3h,0FDh
		db	0C0h, 24h, 00h, 00h, 01h, 07h
		db	0FFh,0FFh, 00h,0F6h, 19h,0FBh
		db	 37h, 80h, 00h, 00h, 00h, 0Bh
		db	0EFh,0FDh,0FFh,0FCh, 5Dh,0FDh
		db	 00h, 00h, 01h, 0Fh,0CFh,0FFh
		db	 8Fh,0FFh, 76h,0F4h, 00h, 00h
		db	 01h, 0Fh,0FBh, 3Eh,0E6h,0FFh
		db	 66h,0B5h,0ACh, 00h, 30h, 0Bh
		db	0C8h,0FFh,0CBh,0FFh, 77h,0E7h
		db	0F4h, 00h, 10h, 19h,0DFh,0EFh
		db	0FFh,0FFh, 00h,0C7h,0A7h, 79h
		db	 00h, 00h, 00h, 69h,0FFh, 6Fh
		db	0FFh, 7Fh,0D7h, 37h,0FDh, 80h
		db	 10h,0A1h,0EFh,0EFh, 00h,0F7h
loc_398:
		mov	bx,0B3BFh
		retn	80h
			                        ;* No entry point to code
		add	bp,dx
		out	dx,al			; port 0, DMA-1 bas&add ch 0
		idiv	di			; ax,dx rem=dx:ax/reg
		inc	word ptr [bx+si]
		jg	loc_398			; Jump if >
		loopnz	$+2			; Loop if zf=0, cx>0

;*		add	bp,dx
		db	 01h,0D5h		;  Fixup - byte match
		pop	di
		db	0FFh,0FCh,0FFh,0D4h, 5Ch,0E0h
		db	 00h, 03h,0D9h,0EFh,0FFh,0EEh
		db	 2Ch,0CFh,0FEh, 38h, 00h, 07h
		db	0F3h,0EFh,0F7h,0FFh, 9Eh, 44h
		db	0B6h, 1Fh, 80h, 0Fh,0D3h,0EBh
		db	0FFh,0F9h,0BEh, 30h, 0Bh, 07h
		db	 40h, 1Fh,0E7h,0C7h,0FFh,0A7h
		db	 9Fh,0D0h,0DFh, 00h, 00h, 00h
		db	 3Bh,0EFh,0CFh,0EFh,0BFh, 02h
		db	0EDh,0CFh, 80h, 00h,0DDh,0DFh
		db	0BFh,0EFh,0BBh, 8Bh,0D1h,0E7h
		db	0C0h, 00h,0FFh,0EDh,0BFh,0FDh
		db	0EFh, 82h,0D0h, 58h,0C0h, 03h
		db	 41h,0E9h, 8Fh,0F7h,0FFh, 8Bh
		db	0DCh, 60h, 40h, 01h, 81h,0D9h
		db	 1Fh,0F7h,0FFh,0BBh, 19h, 60h
		db	 00h, 07h, 81h,0CEh, 0Eh,0E7h
		db	0FFh,0DCh,0F4h, 30h, 00h, 00h
		db	 00h
loc_399:
;*		add	bp,bx
		db	 01h,0DDh		;  Fixup - byte match
;*		pop	cs			; Dangerous-8088 only
		db	0Fh			;  Fixup - byte match
		ja	loc_399			; Jump if above
		mov	ah,2Fh			; '/'
		sbb	[bx+si],al
		add	[bx+si],al
;*		add	si,bx
		db	 01h,0DEh		;  Fixup - byte match
;*		pop	cs			; Dangerous-8088 only
		db	0Fh			;  Fixup - byte match
		jno	$+81h			; Jump if not overflw
		shr	byte ptr [bp+si],1	; Shift w/zeros fill
		push	cs
		add	[si],cl
		pop	es
;*		fimul	word ptr [bx]		; st = st * memory
		db	0DEh, 0Fh		;  Fixup - byte match
		js	loc_401			; Jump if sign=1
		loop	locloop_402		; Loop if cx > 0

		xchg	dx,ax
		add	[si],al
		pop	es
;*		fisub	word ptr [bp+di]	; st = st - memory
		db	0DEh, 23h		;  Fixup - byte match
		js	$+41h			; Jump if sign=1
;*		jmp	far ptr loc_7		;*
		db	0EAh
		dw	0D61Fh, 880h		;  Fixup - byte match
			                        ;* No entry point to code
;*		add	sp,di
		db	 01h,0FCh		;  Fixup - byte match
		db	 6Fh,0F8h, 39h,0D3h, 0Fh,0F8h
		db	 84h, 00h, 01h,0FEh, 36h, 78h
		db	 17h,0E9h,0CFh, 7Dh, 84h, 20h
		db	 1Fh,0FCh,0DFh,0F8h, 17h
		db	78h
loc_400:
		out	7Ch,ax			; port 7Ch ??I/O Non-standard
		les	ax,dword ptr [bx+si]	; Load seg:offset ptr
		adc	di,sp
;*		cmp	ax,di
		db	 39h,0F8h		;  Fixup - byte match
		inc	cx
;*		fadd	qword ptr [bx+di+16h]
		db	0DCh, 41h, 16h		;  Fixup - byte match
		in	al,0			; port 0, DMA-1 bas&add ch 0
		jg	loc_400			; Jump if >
		cmc				; Complement carry
		clc				; Clear carry flag
loc_401:
		add	[bx+si+60h],di
;*		pop	cs			; Dangerous-8088 only
		db	0Fh			;  Fixup - byte match
		cmpsb				; Cmp [si] to es:[di]
		add	[bx],bh
		loopnz	$+81h			; Loop if zf=0, cx>0

		mov	ax,0FB03h
		jl	loc_403			; Jump if <
		xchg	si,ax
		shr	bx,cl			; Shift w/zeros fill
		db	0F0h,0FFh,0F8h, 07h,0B0h, 19h
		db	0EFh,0B7h,0F5h, 21h,0C0h
data_823	db	4Bh
		db	0BEh, 07h, 68h, 45h,0EFh,0F7h
		db	0FFh,0C1h,0C0h,0DFh,0FCh, 08h
		db	 50h, 00h,0E7h,0FCh,0FFh,0A3h
		db	0C0h,0C5h, 7Ch, 18h, 30h, 01h
		db	0A7h,0FCh, 9Ch, 4Fh,0C0h,0DFh
		db	0AEh, 06h, 19h, 80h, 8Dh,0FCh
		db	 0Eh, 9Fh,0C0h,0CFh, 7Ch, 03h
		db	0FBh, 01h
loc_403:
		mov	bl,0FCh
		add	[bx-40h],ch
		db	 8Fh,0FCh, 43h,0EBh,0C0h,0F8h
		db	 75h,0FCh,0EFh,0C1h, 82h, 3Fh
		db	 63h,0FFh,0C0h, 7Ch,0F7h,0DFh
		db	0DBh,0C1h, 8Fh,0FFh, 03h,0FDh
		db	0BCh, 3Dh,0EFh,0C3h, 93h,0C0h
		db	 1Fh, 3Fh,0BFh,0F7h,0BFh, 3Eh
		db	0FCh,0DEh,0F3h,0C1h, 1Fh,0FFh
		db	0CBh,0F3h, 7Bh, 06h,0F8h,0CEh
		db	0DBh,0C0h, 0Fh,0FFh,0E7h,0F1h
		db	 8Fh, 06h,0FEh, 07h,0E3h,0C1h
		db	 3Fh,0FFh,0C1h,0A1h,0AFh,0ACh
		db	0FAh, 07h, 23h,0C0h, 07h, 7Fh
		db	0E3h, 7Bh, 72h,0FFh,0FAh, 3Ch
		db	 03h,0C0h, 37h,0FFh,0F3h, 58h
		db	 7Fh,0F7h, 6Ah,0FCh, 07h,0C0h
		db	 05h,0DBh, 7Bh, 60h, 6Fh, 87h
		db	 6Fh,0FDh,0F7h,0C0h, 27h,0FDh
		db	0FEh, 60h, 6Eh,0CFh,0FBh,0EBh
		db	0DFh,0C0h, 03h,0DFh,0BCh, 20h
		db	 0Eh, 7Fh,0FCh, 03h, 5Bh,0C0h
		db	 2Fh, 3Fh,0F8h, 00h, 0Ch, 7Dh
		db	0EEh, 01h, 63h,0C0h, 01h,0EDh
		db	0FFh, 00h, 04h, 38h,0E6h, 01h
		db	 7Bh,0C0h, 0Fh,0EFh,0FFh, 00h
		db	 00h, 00h, 31h,0FEh, 00h,0DBh
		db	0C0h,0AEh,0E7h, 7Bh, 80h, 00h
		db	 01h,0F6h, 00h, 1Fh,0C1h,0AFh
		db	0E7h,0FFh, 00h, 00h, 01h,0F0h
		db	 00h, 0Fh,0C0h, 0Fh,0F3h,0FFh
		db	 80h, 00h, 00h, 00h,0E0h, 00h
		db	 01h,0C1h, 2Fh,0F7h,0FFh,0FCh
		db	 0Eh, 00h,0E0h, 00h, 01h,0C0h
		db	 23h, 4Bh,0EEh,0FFh
data_824	db	1Eh			; Data table (indexed access)
		db	 00h,0E0h,0C0h, 01h,0C0h, 2Fh
		db	0F8h,0FFh,0F3h, 7Eh, 00h,0C3h
		db	0BEh, 01h,0C0h, 07h, 8Bh, 77h
		db	0FFh,0FCh, 06h,0DBh,0E0h
loc_404:
;*		add	ax,ax
		db	 01h,0C0h		;  Fixup - byte match
		pop	es
		jnp	loc_404			; Jump if not parity
		std				; Set direction flag
		jg	$+81h			; Jump if >
;*		add	bl,bl
		db	 00h,0DBh		;  Fixup - byte match
		db	0C7h, 61h,0C0h, 07h,0EBh,0F5h
		db	0FDh,0FCh, 1Fh,0FFh,0C0h, 01h
		db	0C8h, 07h,0FBh,0FCh,0BFh,0F8h
		db	 0Fh,0FFh,0E3h, 01h,0C0h, 0Eh
		db	0E3h,0FFh, 81h,0ECh, 04h, 60h
		db	 00h, 01h,0C0h, 5Fh, 71h,0FFh
		db	 07h,0F0h, 0Fh,0E1h, 04h,0E3h
		db	0D0h, 06h,0FFh,0DFh, 03h, 00h
data_825	db	7			; Data table (indexed access)
		db	0E1h, 40h, 01h,0C0h, 4Fh, 7Fh
		db	0FFh,0EFh,0FEh
loc_405:
		push	ds
		sub	bp,0C471h
		aaa				; Ascii adjust
		db	0FFh,0EFh,0F7h,0E5h,0E0h, 01h
		db	0C0h, 01h,0C4h, 7Dh,0EFh,0FBh
		db	0FBh, 00h,0F7h, 9Eh, 39h,0F1h
		db	0BFh,0FCh, 05h,0EFh,0FEh, 01h
		db	 97h,0C2h,0B9h,0C2h, 01h,0CFh
		db	 9Ch, 37h,0FFh,0FBh,0FDh, 3Fh
		db	 7Fh,0F8h, 07h,0C0h, 05h,0BFh
		db	0FFh, 00h, 38h, 1Eh,0FFh,0C0h
		db	 01h,0CBh, 9Dh, 9Eh,0FEh,0EFh
		db	0FFh,0FCh,0FFh,0FFh, 02h, 4Eh
		db	0FEh, 6Ch, 01h,0FCh,0CCh,0FCh
		db	 3Fh, 01h,0FFh, 9Fh, 7Eh, 39h
		db	0FFh,0FFh, 00h,0FCh,0FFh,0BFh
		db	 07h,0FFh, 0Fh,0BFh,0E3h, 09h
		db	0E0h, 3Ch,0FFh, 00h, 41h,0FFh
		db	0A7h, 8Ch, 80h,0FFh,0E9h,0F9h
		db	0FFh,0F6h, 47h,0CEh, 19h, 8Dh
		db	 00h,0DFh, 00h, 01h,0FFh, 8Dh
		db	0B1h,0ECh, 0Fh, 84h,0C1h,0FFh
		db	 83h,0D5h,0FDh, 3Fh,0FDh,0F8h
		db	 03h,0C4h, 00h,0FEh, 01h,0E1h
		db	 7Eh, 00h, 01h,0F8h, 61h,0B0h
		db	 1Fh,0FFh,0FDh,0FFh, 7Fh, 7Fh
		db	 00h, 91h,0F8h, 00h, 00h, 00h
		db	 03h,0FCh, 00h, 01h, 7Ch, 00h
		db	 01h,0E8h, 30h, 1Ch, 07h,0FFh
		db	0FFh, 01h, 7Ch, 5Fh,0D9h,0E0h
		db	 00h, 00h, 00h, 01h, 80h, 00h
		db	 01h, 7Ch, 00h, 01h,0E0h,0FFh
		db	 0Ch, 1Fh,0DFh,0FCh, 71h, 6Dh
		db	0BBh,0E1h,0C0h, 00h, 00h, 00h
		db	 1Bh, 80h, 00h, 01h,0ECh, 00h
		db	 01h,0C7h, 3Eh, 00h,0DFh, 81h
		db	0B0h, 45h,0ECh, 31h,0A1h,0C0h
		db	 00h, 00h, 00h, 1Fh, 80h, 00h
		db	 01h,0FEh, 00h, 01h,0CEh, 7Bh
		db	 82h, 7Eh, 33h, 81h,0F9h,0FDh
		db	 07h, 01h,0C0h, 00h, 00h, 03h
		db	 01h,0FEh, 00h, 01h,0FFh, 7Dh
		db	0E0h, 3Ch,0CDh,0BCh,0C1h,0FCh
		db	0DFh, 81h,0C0h, 00h, 00h, 03h
		db	 01h,0EEh, 00h, 01h,0FEh, 7Ch
		db	 9Bh,0CFh, 80h, 1Eh,0CFh,0EEh
		db	0B7h,0B9h,0C0h, 00h, 0Bh, 80h
		db	 00h, 00h, 00h, 01h,0ECh, 00h
		db	 01h,0DFh,0BEh, 1Fh, 80h, 07h
		db	 84h, 75h,0EDh, 80h, 79h,0C0h
		db	 00h, 00h, 03h, 01h,0E4h, 00h
		db	 01h,0FCh, 20h, 38h, 00h,0E0h
		db	 00h, 01h,0E6h, 60h, 7Fh,0C0h
		db	 08h, 00h, 00h, 02h, 01h,0FCh
		db	 00h, 01h,0C0h, 0Fh, 00h,0E0h
		db	 40h, 00h, 00h, 00h,0FCh, 02h
		db	0FDh,0C0h, 00h, 00h, 04h,0F4h
		db	 00h, 01h,0FFh, 00h, 0Eh, 80h
		db	 00h, 00h, 01h,0FDh,0FCh, 5Fh
		db	0C0h, 00h, 00h, 04h,0FEh, 00h
		db	 01h,0C1h,0E8h, 00h, 00h, 00h
		db	0C6h,0BEh,0D3h,0FEh, 00h, 7Fh
		db	0C0h, 00h, 00h, 04h,0FEh, 00h
		db	 01h,0C0h, 10h, 60h,0D8h, 0Fh
		db	0C0h, 0Fh,0F6h, 00h,0FDh,0C0h
		db	 00h, 00h, 04h,0F6h, 00h, 01h
		db	0C0h, 00h, 00h, 01h, 06h, 00h
		db	 00h, 00h,0FEh, 00h, 01h,0A0h
		db	 00h, 00h, 04h,0E6h, 00h, 05h
		db	0A0h, 00h, 00h, 00h, 70h, 00h
		db	 00h, 01h,0EEh, 00h, 04h,0A0h
		db	 00h, 00h, 04h,0EEh, 00h, 06h
		db	0E0h, 00h, 00h, 04h,0EEh, 00h
		db	 07h,0E0h, 00h, 00h, 06h, 07h
		db	0E0h, 00h, 00h, 06h, 07h,0A0h
		db	 00h, 00h, 06h, 07h, 20h, 00h
		db	 00h, 06h, 06h, 20h, 00h, 00h
		db	 06h, 06h, 20h, 00h, 00h, 06h
		db	 02h, 35h,0F2h, 72h, 72h, 4Bh
		db	 4Eh, 40h, 0Ch,0C0h,0C1h, 40h
		db	 50h, 51h, 11h, 51h, 41h, 10h
		db	 50h, 14h, 51h, 14h, 40h, 40h
		db	 00h, 14h, 01h, 14h, 11h, 14h
		db	 51h, 40h, 10h, 15h, 10h, 55h
		db	 55h, 00h, 14h, 0Ch, 4Ah, 20h
		db	 02h, 08h, 0Ah, 20h,0A2h, 82h
		db	 80h,0AAh, 8Ah, 80h, 28h, 0Ah
		db	 02h, 80h, 02h, 82h, 20h, 0Ah
		db	0A8h, 80h, 08h, 22h,0A0h, 0Ch
		db	 80h, 14h, 11h, 10h, 44h, 51h
		db	 50h, 50h, 00h, 05h, 51h, 40h
		db	 14h, 05h, 44h, 05h, 40h, 0Ch
		db	 68h, 28h, 02h, 88h,0A0h,0A8h
		db	0A0h, 0Ah, 08h, 80h, 0Ah, 02h
		db	 80h, 0Ah,0AAh, 20h, 0Ch, 80h
		db	 50h, 50h, 00h, 10h, 40h, 14h
		db	 04h, 45h, 14h, 50h, 50h, 00h
		db	 05h, 05h, 00h, 54h, 04h, 40h
		db	 03h,0E0h, 0Ah, 20h, 02h, 2Ah
		db	 2Bh, 62h, 0Ah,0A0h, 02h, 20h
		db	 28h, 20h,0A0h, 80h, 08h, 0Ah
		db	 80h, 08h, 82h, 20h, 2Ah, 80h
		db	 80h, 00h, 0Ah,0A0h, 03h, 08h
		db	 04h, 01h, 04h, 11h, 45h, 51h
		db	 15h, 14h, 14h, 00h, 11h, 05h
		db	 55h, 14h, 54h, 40h, 15h, 10h
		db	 01h, 10h, 55h, 01h, 14h, 05h
		db	 0Ch, 0Ch, 00h,0A0h,0A2h, 88h
		db	 02h, 23h,0C0h,0A0h,0A0h, 01h
		db	 08h, 20h, 02h,0A0h, 08h, 88h
		db	 88h, 00h, 02h, 82h, 82h, 00h
		db	 80h, 0Ah, 02h, 80h, 20h,0A0h
		db	 02h, 8Ch, 08h, 10h, 11h, 45h
		db	 14h, 50h, 15h, 03h,0C0h, 54h
		db	 11h,0A0h, 10h, 10h, 00h, 01h
		db	 10h, 02h,0D0h, 15h, 54h, 14h
		db	 50h, 01h, 51h, 41h, 54h, 18h
		db	 06h, 28h, 0Ah, 80h,0A8h, 20h
		db	0A0h, 2Ch, 40h, 28h,0A0h
data_826	db	5			; Data table (indexed access)
		db	 50h, 5Ah, 28h, 01h, 40h,0A0h
		db	 0Ah, 28h, 01h, 42h, 0Ah, 22h
		db	 80h,0A0h, 0Ah, 28h, 02h, 20h
		db	 0Ah,0A8h,0A0h,0A8h, 04h, 0Ch
		db	 14h, 01h, 45h, 44h, 01h, 14h
		db	 05h, 01h, 54h, 4Ch, 2Ah, 3Ch
		db	 55h, 04h, 40h, 0Ah, 15h, 41h
		db	 04h, 15h, 54h, 13h, 80h, 04h
		db	 40h, 11h, 14h, 10h, 40h, 1Ch
		db	 0Ch, 22h, 08h, 20h, 02h, 80h
		db	 80h, 00h,0A8h,0A8h, 00h,0A1h
		db	 50h, 01h, 82h, 03h,0C1h, 05h
		db	 6Ah, 80h,0A0h, 28h, 39h, 08h
		db	0A8h, 02h, 20h, 02h, 80h, 0Ah
		db	0A0h,0A0h, 00h, 28h, 0Ah,0A0h
		db	 02h, 80h, 28h, 80h, 02h,0A4h
		db	 0Ch, 01h, 40h, 04h, 10h, 50h
		db	 41h, 10h, 52h, 28h,0D8h,0D0h
		db	 47h,0C0h, 54h, 40h, 01h, 40h
		db	 44h, 02h, 80h, 50h, 01h, 44h
		db	 41h, 2Ah,0C0h, 01h, 50h, 14h
		db	 40h, 51h, 04h, 54h, 01h, 50h
		db	 51h, 14h, 05h, 04h, 15h, 48h
		db	 0Eh, 22h, 28h, 2Ah, 80h, 02h
		db	 8Ah, 04h, 3Ch, 48h, 80h, 88h
		db	 55h,0A0h, 0Ah,0A9h, 5Ah, 60h
		db	0A0h, 02h, 82h, 81h,0F6h, 80h
		db	 2Ah, 80h, 2Ah, 80h, 08h, 28h
		db	0AAh, 20h, 2Ah, 88h, 80h, 20h
		db	 2Ah, 08h, 24h, 0Dh, 55h, 51h
		db	 10h, 01h, 40h, 2Ah,0F0h, 37h
		db	 90h, 28h,0A0h, 01h, 45h, 01h
		db	 44h, 55h, 46h, 80h, 44h, 14h
		db	 10h, 50h, 04h, 10h, 50h, 50h
		db	 00h, 04h, 51h, 45h, 45h, 01h
		db	 14h, 04h, 40h, 15h, 40h, 14h
		db	'\', 0Ch, ' ', 0Ah, '(EPJ'
		db	0A8h, 64h,0AAh, 01h, 2Ch,0A0h
		db	0D9h, 40h,0A0h, 52h, 80h,0C5h
		db	0D6h, 8Ah, 02h, 8Ah,0A0h,0AAh
		db	 20h, 20h, 00h, 2Ah,0A8h, 22h
		db	 02h, 20h, 02h, 88h, 8Ah, 28h
		db	 8Ah, 08h, 80h, 22h, 0Ah, 2Ah
		db	 20h, 0Ch, 0Ch, 00h, 01h, 14h
		db	 40h, 40h, 00h, 50h, 01h, 05h
		db	0DEh, 91h, 41h, 82h, 55h, 01h
		db	0A4h, 05h, 50h, 54h, 11h, 40h
		db	 02h, 84h, 28h, 05h, 15h, 51h
		db	 40h, 40h, 01h, 04h, 44h, 55h
		db	 40h, 05h, 14h, 51h, 50h, 11h
		db	 05h, 01h, 41h, 40h, 14h, 01h
		db	 40h, 0Ch, 06h, 02h, 0Ah, 28h
		db	 88h,0A0h, 22h, 22h, 00h, 5Bh
		db	 3Bh, 48h, 4Ch,0A0h, 80h, 02h
		db	 22h,0AAh, 8Ah, 91h, 20h, 22h
		db	 23h, 1Dh, 02h,0A0h, 8Ah, 20h
		db	0A0h, 0Ah, 28h, 08h, 88h,0A8h
		db	0A2h, 80h, 02h, 2Ah,0A0h, 2Ah
		db	 02h, 80h, 02h, 20h, 20h, 00h
		db	 2Ah, 88h, 28h, 0Ah,0A0h, 0Ch
		db	 0Ch, 00h, 10h, 44h, 14h, 05h
		db	 11h, 41h, 50h, 80h, 3Bh,0E0h
		db	0CCh, 10h, 0Ah,0A0h, 14h, 04h
		db	 44h, 45h, 03h, 82h,0C5h, 51h
		db	 50h, 54h, 04h, 45h, 51h, 01h
		db	 01h, 00h, 41h, 40h, 01h, 01h
		db	 00h, 15h, 01h, 50h, 51h, 10h
		db	 01h, 18h, 0Ch, 0Ah, 20h, 80h
		db	 20h, 08h,0C0h, 13h, 40h,0CCh
		db	 08h, 08h, 01h, 28h, 0Ah, 80h
		db	0F0h, 80h, 01h,0C4h, 12h, 0Ah
		db	 2Ah, 02h, 22h, 8Ah, 28h, 20h
		db	 28h, 80h, 8Ah, 02h,0AAh, 2Ah
		db	 08h,0AAh,0AAh, 00h,0A8h, 28h
		db	 28h, 00h,0A0h,0A0h, 00h, 28h
		db	 80h, 0Ah, 82h,0A8h, 80h, 0Ch
		db	 0Ch, 00h, 40h, 40h, 00h, 10h
		db	 58h, 14h,0B8h,0CEh, 80h, 10h
		db	 28h, 11h, 40h, 36h, 10h, 02h
		db	 9Ch,0E8h, 41h, 01h, 04h, 14h
		db	 15h, 44h, 11h, 50h, 50h, 00h
		db	 54h, 50h, 44h, 01h, 44h, 41h
		db	 10h, 50h, 05h, 01h, 15h, 44h
		db	 18h, 0Ch, 80h, 20h, 22h, 8Ah
		db	 04h, 50h, 05h, 18h,0CEh, 22h
		db	 0Fh, 0Ah, 08h, 22h, 20h, 17h
		db	 2Bh, 7Ah, 22h, 80h, 0Ah, 28h
		db	 08h, 8Ah, 02h, 28h, 80h, 82h
		db	 28h, 28h, 00h,0A0h, 2Ah, 20h
		db	0A0h, 02h,0A2h, 80h, 28h, 88h
		db	0A0h, 0Ah, 84h, 0Ch, 04h, 01h
		db	 15h, 51h, 4Ah,0A8h, 50h, 93h
		db	 18h,0C1h, 80h, 75h, 5Ch, 50h
		db	 14h, 06h,0A0h,0D4h, 44h, 4Ah
		db	 29h, 05h, 41h, 05h, 28h, 28h
		db	 00h, 44h, 04h, 51h, 14h, 04h
		db	 14h, 50h, 55h, 54h, 55h, 04h
		db	 51h, 10h, 11h, 04h, 41h, 10h
		db	 05h, 01h, 08h, 04h, 80h, 88h
		db	 80h, 11h, 7Ch,0A0h, 0Ch, 33h
		db	 02h, 05h, 02h, 0Ah, 50h, 2Ah
		db	 0Ah,0C5h, 4Ah,0AAh, 41h,0E4h
		db	 08h,0A0h, 05h, 14h, 28h, 28h
		db	 00h, 0Ah,0A8h, 08h, 22h, 80h
		db	 8Ah, 08h,0A0h, 0Ah, 02h, 80h
		db	 22h, 0Ah,0A2h, 88h,0A4h, 08h
		db	 01h, 44h, 51h, 14h, 20h, 22h
		db	 02h, 20h, 6Ch,0B4h, 91h, 07h
		db	 9Fh, 01h, 56h, 3Ah, 01h, 2Ah
		db	 20h, 01h, 02h, 80h, 05h, 50h
		db	 14h, 15h, 51h, 41h, 40h, 40h
		db	 00h, 04h, 01h, 10h, 05h, 01h
		db	 54h, 40h, 51h, 01h, 50h, 14h
		db	 08h, 06h,0A0h, 0Ah, 28h, 80h
		db	 01h, 50h, 14h, 04h,0E3h, 60h
		db	 6Eh,0F8h, 48h, 8Ch, 62h,0A2h
		db	 02h, 19h,0A0h, 97h, 8Dh,0E8h
		db	 80h, 02h, 80h, 44h,0A8h, 88h
		db	 08h,0A0h, 02h, 02h, 00h, 08h
		db	 02h, 20h, 80h,0A8h, 02h, 02h
		db	 00h, 82h, 08h, 22h, 08h, 02h
		db	0A8h, 0Ch, 0Ch, 00h, 10h, 01h
		db	 01h, 00h, 82h, 20h, 07h, 80h
		db	 04h,0ECh, 61h, 38h, 25h, 15h
		db	 40h, 45h, 88h, 05h, 08h, 51h
		db	0D1h, 41h, 45h, 10h, 42h, 80h
		db	 50h, 05h, 01h, 44h, 10h, 50h
		db	 15h, 01h, 10h, 05h, 50h, 41h
		db	 05h, 01h, 40h, 14h, 11h, 41h
		db	 14h, 05h, 04h, 1Ch, 0Ch,0A2h
		db	 20h, 80h, 40h, 02h, 80h, 09h
		db	 6Ch, 61h, 2Dh, 10h, 68h, 20h
		db	 88h, 89h, 05h, 42h, 84h,0FEh
		db	 0Ah,0A0h,0A8h, 51h,0EAh,0A0h
		db	0A0h, 01h, 88h, 08h,0A8h, 80h
		db	 8Ah, 20h, 0Ah,0A8h, 80h, 0Ch
		db	 08h, 50h, 44h, 82h, 20h, 12h
		db	 6Ch, 61h, 7Ah, 32h, 4Fh, 40h
		db	 04h, 14h, 07h, 80h, 80h, 00h
		db	0A2h, 05h, 51h, 05h, 40h,0A0h
		db	 96h, 54h, 55h, 01h, 54h, 04h
		db	 10h, 01h, 51h, 05h, 10h, 14h
		db	 14h, 00h, 01h, 40h, 0Ch, 04h
		db	 02h, 20h, 40h,0B3h,0E2h, 8Fh
		db	 60h, 34h,0D2h, 48h, 02h, 07h
		db	0C1h
		db	0Ah, 'E}a@/<', 8, 0Ah
		db	 02h, 02h, 00h, 28h, 02h, 80h
		db	 0Ah, 0Ah, 00h,0A0h, 02h, 82h
		db	 02h,0AAh, 80h, 0Ah, 0Ch, 08h
		db	 80h, 80h, 01h, 01h, 07h, 30h
		db	 06h, 30h,0C0h, 42h, 8Eh, 14h
		db	 88h, 36h, 1Bh, 05h, 54h, 6Dh
		db	0B5h,0A8h,0D0h, 01h, 54h, 01h
		db	 40h, 15h, 54h, 14h, 41h, 44h
		db	 04h, 14h, 0Ch, 04h,0A1h, 14h
		db	 01h, 01h, 00h, 06h, 06h, 01h
		db	0DEh,0C1h,0D4h, 8Fh, 50h, 05h
		db	 50h, 0Ah,0A5h, 02h, 20h, 31h
		db	 7Eh, 3Ch, 40h, 02h, 88h, 02h
		db	 02h, 00h, 0Ah, 02h, 20h,0A0h
		db	0A2h, 80h, 02h, 88h, 0Ch, 08h
		db	 20h, 02h, 82h,0A0h, 80h, 04h
		db	 9Fh, 40h, 12h,0C0h, 2Ch, 04h
		db	 22h, 0Ah, 9Eh, 0Ah,0D1h, 04h
		db	 54h, 51h, 40h, 05h, 54h, 01h
		db	 05h, 04h, 10h, 40h, 01h, 40h
		db	 05h, 18h, 04h, 11h, 50h, 45h
		db	 03h,0A1h,0E0h, 12h,0C0h,0A1h
		db	0B1h, 04h, 16h, 80h, 70h, 0Bh
		db	0CAh,0A0h,0D8h, 2Ah, 02h, 82h
		db	 88h, 20h,0A0h,0A2h, 08h, 80h
		db	0A2h, 22h, 02h, 20h,0A0h, 08h
		db	0A0h, 0Ah, 24h, 08h, 22h,0A0h
		db	 80h,0A0h, 10h, 38h, 60h, 44h
		db	0CEh, 8Ah, 28h, 28h, 00h, 0Ah
		db	0A0h, 1Dh, 81h, 15h, 41h, 04h
		db	 42h, 20h, 05h, 50h, 14h, 04h
		db	 45h, 10h, 41h, 10h, 14h, 05h
		db	 05h, 01h, 40h, 50h, 0Ch, 04h
		db	 45h, 15h, 40h, 10h, 51h, 01h
		db	 15h, 15h, 00h, 45h, 01h, 80h
		db	 10h, 9Ah, 91h, 44h, 01h, 04h
		db	 72h,0ABh, 62h, 22h,0A8h,0AAh
		db	 04h, 10h,0A0h, 22h,0A8h, 20h
		db	 8Ah, 20h, 80h,0A2h, 08h,0A2h
		db	 28h, 20h, 05h, 0Ch, 08h, 80h
		db	0A2h, 8Ah, 50h, 72h, 78h,0A2h
		db	0A8h, 05h, 05h, 00h,0C0h, 14h
		db	0DAh, 82h, 0Ah, 20h, 01h,0F1h
		db	 14h, 50h, 05h, 19h, 6Ah,0A0h
		db	 01h, 40h, 50h, 10h, 55h, 40h
		db	 40h, 00h, 04h, 40h, 04h, 45h
		db	 40h, 01h,0B4h, 07h, 80h, 50h
		db	 15h, 14h, 10h, 18h, 50h, 01h
		db	 41h, 41h, 00h, 14h, 58h, 20h
		db	 11h, 89h, 19h, 8Fh, 19h, 22h
		db	 10h,0A0h,0A0h, 00h, 02h, 8Ah
		db	0D8h,0B1h,0B8h, 1Fh
		db	'Q@(', 8, ' ', 8, '* '
		db	 02h, 2Ah, 08h, 88h, 88h, 00h
		db	 28h, 80h, 07h, 80h, 80h, 00h
		db	 04h, 0Ah, 28h, 0Fh, 2Ah, 58h
		db	 52h, 08h,0A5h,0A0h, 24h, 01h
		db	0C0h, 50h, 04h, 04h, 00h, 02h
		db	 80h,0A8h, 28h,0C8h, 2Ah, 2Ah
		db	 00h, 1Eh, 14h, 05h, 14h, 45h
		db	 50h, 04h,0B4h, 04h, 11h, 0Dh
		db	 80h, 14h, 50h, 40h, 01h, 45h
		db	 4Ch, 14h, 04h, 10h, 01h, 27h
		db	 54h, 48h, 2Bh, 55h,0C1h, 40h
		db	0C8h, 02h, 08h, 01h, 44h, 70h
		db	 08h, 24h, 14h, 45h, 14h, 02h
		db	 80h, 80h, 00h, 88h,0A0h, 81h
		db	 92h, 2Ah, 0Eh, 40h, 8Ah, 08h
		db	0AAh,0A2h, 04h, 0Ah, 50h, 02h
		db	 80h,0A2h,0A0h, 8Ah, 7Fh,0A8h
		db	 72h, 08h, 88h, 07h, 63h,0E0h
		db	 04h, 10h, 26h,0C0h, 2Dh, 07h
		db	 30h,0D2h, 02h,0D0h,0A0h, 14h
		db	 05h, 10h, 44h, 45h, 10h, 40h
		db	 08h, 08h, 00h, 44h, 40h, 10h
		db	 69h, 40h, 1Dh,0C5h, 50h, 05h
		db	 44h, 14h, 45h, 45h, 00h, 40h
		db	 01h, 11h, 5Ch, 14h, 01h, 44h
		db	 10h, 01h, 50h, 04h, 38h, 04h
		db	 15h, 88h, 44h, 0Eh, 29h,0FCh
		db	 40h, 55h,0A4h, 46h,0D4h, 53h
		db	 41h, 40h, 28h, 08h, 80h,0A2h
		db	 80h, 80h, 00h, 20h, 08h, 80h
		db	 21h, 48h, 20h, 08h, 34h, 80h
		db	 01h, 40h,0BBh, 88h, 80h, 88h
		db	 08h, 80h, 28h, 0Ah,0A2h, 08h
		db	 0Ch, 28h, 05h, 72h, 50h, 58h
		db	0D0h, 07h, 28h, 22h, 03h, 34h
		db	0F0h, 61h,0A8h, 08h, 02h,0BDh
		db	0E2h, 14h, 01h,0E3h, 61h, 50h
		db	 14h, 50h, 05h, 50h, 44h, 05h
		db	 04h, 40h, 04h, 47h,0D0h, 45h
		db	 5Ah, 40h, 08h, 08h, 00h, 01h
		db	 76h, 01h, 01h, 00h, 40h, 04h
		db	 40h, 11h, 05h, 54h, 05h, 04h
		db	 11h, 14h, 0Ch, 01h, 04h, 01h
		db	 55h, 41h, 82h, 10h, 01h, 0Ah
		db	 11h, 02h, 54h, 88h, 58h, 2Bh
		db	0EAh, 02h, 35h, 14h, 08h, 88h
		db	 82h, 02h, 08h,0A0h, 14h, 80h
		db	0F0h, 20h, 40h, 01h, 08h,0C1h
		db	 20h, 02h, 80h,0AAh, 08h, 80h
		db	0A2h, 22h, 80h, 02h, 8Ch, 02h
		db	 20h, 05h, 55h, 02h, 20h, 72h
		db	0A0h, 80h,0B0h,0C1h,0A4h, 02h
		db	 41h, 40h, 40h, 00h, 04h, 40h
		db	 04h, 04h, 00h, 50h, 51h, 41h
		db	 01h, 62h, 12h, 27h, 57h, 14h
		db	 05h, 01h, 14h, 10h, 01h, 41h
		db	 5Ch, 01h, 10h, 01h, 04h, 10h
		db	 8Dh, 40h, 01h, 05h,0ADh,0C0h
		db	 80h, 14h, 9Fh, 0Ah, 82h,0A2h
		db	 2Ah,0A0h, 80h, 0Ah, 80h, 01h
		db	 40h, 88h, 28h,0A0h, 80h, 11h
		db	 0Ch, 14h, 01h,0A2h, 82h,0A8h
		db	0A0h, 82h, 80h, 20h, 04h,0A2h
		db	 80h, 28h, 20h,0D5h,0F0h, 5Ah
		db	0A0h, 80h, 8Ch,0C1h, 03h, 68h
		db	 0Ah, 40h, 10h, 05h, 2Eh, 96h
		db	 18h, 40h,0A0h,0A0h, 00h, 44h
		db	 50h, 10h, 10h, 00h, 50h, 04h
		db	 08h, 98h, 03h, 60h, 01h, 56h
		db	 14h, 40h, 54h, 55h, 4Ch, 11h
		db	 55h, 40h, 73h, 14h, 14h, 00h
		db	 15h, 0Eh, 40h, 2Ah,0C0h, 80h
		db	 88h, 02h,0C8h, 02h,0AAh, 28h
		db	 32h,0CAh,0A0h, 01h, 6Dh, 51h
		db	 50h, 11h, 10h, 28h, 28h, 00h
		db	 0Ah, 28h,0A0h, 24h, 58h, 02h
		db	 20h, 26h,0A0h, 0Ah, 0Ah, 00h
		db	 08h, 22h, 22h, 00h, 20h, 08h
		db	 02h, 80h, 80h, 00h,0A0h, 04h
		db	 02h, 8Ah, 50h, 55h,0F5h, 05h
		db	 05h, 00h, 22h, 20h, 5Fh, 80h
		db	 78h, 05h, 46h, 40h, 04h, 40h
		db	 0Eh,0E4h, 02h, 80h, 0Ah, 20h
		db	 80h,0A0h, 08h, 0Ah, 80h, 14h
		db	 05h, 14h, 50h, 14h, 14h, 00h
		db	 1Ch, 90h, 40h, 40h, 00h, 44h
		db	 01h, 50h, 01h, 45h, 51h, 55h
		db	 40h, 40h, 00h, 05h, 40h, 08h
		db	 04h, 54h, 50h, 45h, 50h, 40h
		db	 14h, 01h, 51h, 54h, 0Ah, 10h
		db	 01h, 03h,0A4h, 0Ah,0A0h, 1Dh
		db	0F9h, 08h, 88h, 88h, 00h, 52h
		db	 20h, 01h, 40h, 04h, 04h, 00h
		db	 15h, 40h, 08h, 02h, 80h, 80h
		db	 00h, 20h, 80h,0DCh, 02h,0C0h
		db	 08h, 0Ah, 02h, 82h, 02h, 80h
		db	 02h, 20h, 04h, 50h, 02h, 80h
		db	 20h,0DFh,0A0h, 50h,0F2h, 02h
		db	0A8h, 82h, 78h, 22h,0AEh,0A1h
		db	 40h, 10h, 0Eh, 23h, 3Dh,0A4h
		db	 44h, 0Ah, 41h, 2Ch, 4Ah,0A5h
		db	 02h,0A8h, 02h, 80h, 08h, 20h
		db	 02h, 80h, 05h, 11h, 41h, 0Bh
		db	 10h, 11h, 08h, 1Eh, 55h, 08h
		db	 50h, 05h, 04h, 10h, 51h, 45h
		db	 51h, 51h, 00h, 01h, 40h, 08h
		db	 05h, 04h, 40h, 40h, 00h, 78h
		db	 40h, 01h, 41h, 0Ah, 11h, 73h
		db	 51h, 05h, 70h,0B0h, 35h, 50h
		db	 28h, 27h, 02h, 5Ah, 82h,0DAh
		db	0A0h, 20h, 88h,0A2h, 05h, 0Ah
		db	 01h, 40h, 05h, 45h, 40h, 1Dh
		db	 48h, 80h, 84h, 38h, 2Ah, 8Ah
		db	0A0h, 20h, 80h, 2Ah, 8Ah, 0Ah
		db	 0Ah, 00h, 04h, 05h, 05h, 00h
		db	 78h, 2Dh, 5Dh, 22h, 87h, 85h
		db	 28h, 7Ah, 02h,0D8h,0A0h,0A1h
		db	 41h,0FDh, 10h, 50h, 04h, 14h
		db	 01h, 10h, 40h, 42h, 08h, 04h
		db	0B4h, 52h, 08h, 02h, 82h, 28h
		db	0A8h,0A8h, 00h,0D0h, 44h, 02h
		db	 24h, 40h, 50h, 05h, 14h, 44h
		db	 10h, 50h, 10h, 08h, 14h, 15h
		db	 41h, 40h, 15h, 45h, 04h, 55h
		db	 54h, 12h, 24h, 07h, 91h, 05h
		db	 1Ah,0B4h, 45h, 4Ah, 28h, 22h
		db	0F2h, 80h, 82h, 20h, 08h, 05h
		db	 14h, 82h, 05h, 50h, 02h, 80h
		db	 15h, 55h, 40h, 11h, 14h, 41h
		db	 32h, 02h, 81h, 02h, 82h, 80h
		db	 88h, 04h, 50h, 2Dh,0A0h, 55h
		db	0F0h, 52h,0D8h, 80h, 78h,0A0h
		db	 87h, 88h, 0Ah, 16h, 29h, 40h
		db	 41h, 03h, 81h, 78h, 40h, 10h
		db	 01h, 04h, 02h, 80h, 44h, 0Ah
		db	0A0h, 02h
data_827	dw	8828h			; Data table (indexed access)
		db	0A2h, 5Ah,0A0h, 24h, 86h, 05h
		db	 50h, 08h, 17h, 62h, 80h, 05h
		db	 08h, 14h, 05h, 45h, 44h, 41h
		db	 05h, 10h, 01h, 2Dh, 10h, 10h
		db	 00h, 04h
data_828	db	60h			; Data table (indexed access)
		db	 6Bh, 41h, 54h,0C8h, 5Ah,0AAh
		db	 01h, 48h, 13h, 80h, 20h, 05h
		db	 02h, 20h, 14h, 52h, 2Fh, 11h
		db	 02h, 81h, 40h, 51h, 14h, 51h
		db	 10h, 55h, 50h, 39h, 15h, 49h
		db	 84h, 01h, 01h, 00h, 54h, 24h
		db	 84h, 5Ah, 04h, 28h,0A2h, 5Dh
		db	0D8h, 05h, 50h, 22h, 08h, 80h
		db	 7Fh,0ACh, 80h, 04h, 01h, 28h
		db	 15h, 3Bh, 03h, 05h, 40h, 02h
		db	 81h, 40h, 0Ah, 23h, 42h, 03h
		db	0DEh, 96h, 28h, 28h, 02h,0A8h
		db	 80h, 08h,0E5h,0CAh,0A9h, 42h
		db	 80h, 08h,0D0h,0A0h,0A1h,0E0h
		db	 8Ah, 88h, 05h, 11h, 01h, 11h
		db	 05h, 04h, 01h, 50h, 04h, 15h
		db	 14h, 40h, 10h, 94h, 82h, 14h
		db	 20h, 8Ah, 80h, 01h, 50h, 30h
		db	 88h, 80h, 02h, 80h, 05h, 02h
		db	 22h, 80h, 55h, 40h, 18h, 08h
		db	 40h, 41h, 01h,0A1h, 44h,0C5h
		db	 90h, 10h, 45h, 11h, 54h, 5Fh
		db	 4Eh, 11h,0A0h, 40h, 14h, 05h
		db	 57h, 80h, 20h, 07h, 58h, 88h
		db	 80h, 05h, 82h, 22h, 28h, 2Bh
		db	 3Ch, 01h,0A9h, 21h, 04h, 40h
		db	 10h, 51h, 2Ah, 27h,0C1h, 02h
		db	0A2h,0A2h, 00h, 07h, 0Bh, 04h
		db	 20h, 02h, 80h, 80h, 00h, 02h
		db	 08h, 02h, 64h, 8Ah, 21h, 10h
		db	 08h, 50h,0A0h,0A0h, 00h, 0Ah
		db	 28h, 14h, 01h, 40h, 15h, 11h
		db	 40h, 01h, 0Ah, 55h, 55h, 00h
		db	0A0h, 40h, 10h, 59h, 4Ah, 91h
		db	 88h, 0Ah, 14h, 01h, 41h, 62h
		db	 05h, 44h, 28h, 2Ah, 80h, 11h
		db	 20h, 0Ah, 80h, 44h, 40h,0B0h
		db	0B6h, 20h, 01h, 11h, 01h, 50h
		db	 05h, 2Dh, 45h, 14h, 40h, 01h
		db	 05h, 14h, 05h, 05h, 00h, 78h
		db	 28h, 08h, 20h, 05h,0D7h, 50h
		db	 52h, 34h, 22h, 8Ah,0A8h, 2Ah
		db	 16h,0A2h, 02h, 20h, 05h, 02h
		db	 80h, 0Ah, 14h, 03h,0C0h, 02h
		db	 90h, 45h, 08h, 5Ah, 30h, 40h
		db	 20h, 08h, 80h, 2Ah, 44h, 2Ah
		db	 8Ah, 28h, 80h, 71h, 18h, 0Ah
		db	0A0h,0D8h, 15h, 40h, 15h, 40h
		db	 40h, 00h, 7Dh, 04h, 15h, 01h
		db	 15h, 08h, 81h, 87h,0E0h, 82h
		db	 24h, 94h, 01h, 01h, 00h, 10h
		db	 04h, 40h, 11h, 05h, 50h, 28h
		db	 0Ah, 40h, 04h, 2Ah, 80h, 04h
		db	 01h, 54h, 40h, 2Ch, 01h, 11h
		db	 11h, 00h, 10h, 51h, 8Ah, 81h
		db	 15h, 10h, 44h, 28h,0F0h, 02h
		db	 20h, 0Fh, 05h, 2Dh, 58h, 02h
		db	 58h, 72h, 8Ah, 70h, 80h, 2Ah
		db	0D7h,0BBh, 20h, 15h, 40h, 82h
		db	 20h, 02h, 80h, 02h, 82h, 94h
		db	 50h, 14h,0A0h, 02h, 0Ah, 85h
		db	 08h, 28h, 22h, 02h, 02h, 00h
		db	 70h, 02h, 02h, 00h,0A0h, 02h
		db	 20h, 26h, 01h, 22h, 2Ah, 07h
		db	 20h, 14h, 04h, 10h, 10h, 00h
		db	 40h, 51h, 0Ah, 01h, 14h, 45h
		db	 07h, 0Dh, 01h, 15h, 19h,0C5h
		db	 67h, 0Fh, 98h, 41h, 01h, 15h
		db	 11h, 50h, 41h, 10h, 01h, 54h
		db	 14h, 50h, 41h, 0Ah, 14h, 10h
		db	 14h, 41h, 10h, 11h, 40h, 11h
		db	 04h, 08h, 02h, 05h, 04h, 41h
		db	 14h, 02h, 0Dh, 2Ah, 80h, 2Dh
		db	 82h, 82h, 00h, 0Ah, 50h, 2Fh
		db	0D5h, 05h, 22h,0A0h,0AAh, 58h
		db	 07h, 50h,0A1h,0E2h, 80h, 22h
		db	 22h, 00h, 88h,0A2h, 8Ah, 22h
		db	 0Ah, 80h, 80h, 00h, 08h, 0Ah
		db	 0Ah, 00h, 08h, 80h, 28h, 22h
		db	 80h,0A8h, 08h, 28h, 88h, 80h
		db	 82h, 80h,0A0h, 91h, 02h, 80h
		db	 22h, 80h, 0Fh, 50h, 01h, 04h
		db	 10h, 40h, 54h, 02h, 80h, 40h
		db	 01h, 41h, 05h, 08h, 20h, 54h
		db	 05h, 01h, 50h, 02h, 53h, 9Dh
		db	 40h, 44h, 11h, 14h, 14h, 00h
		db	 01h, 45h, 04h, 10h, 28h,0B0h
		db	 40h, 51h, 04h, 40h, 10h, 10h
		db	 00h, 01h, 05h, 04h, 40h, 78h
		db	 01h, 04h, 14h, 14h, 00h, 04h
		db	 45h, 44h, 40h, 10h, 41h, 5Ch
		db	 20h, 10h, 88h, 05h, 0Dh, 85h
		db	 20h, 80h, 05h, 28h, 88h, 24h
		db	0C2h, 52h, 83h, 40h, 44h,0F0h
		db	0A7h, 70h, 28h, 28h, 00h, 02h
		db	 20h, 2Ah, 80h, 05h, 40h, 17h
		db	 80h, 50h, 88h, 08h, 2Ah,0A8h
		db	0A8h, 00h, 02h, 8Dh, 70h,0A0h
		db	 02h, 80h, 28h,0A0h,0A8h, 80h
		db	0A0h, 02h, 20h,0A0h, 02h, 08h
		db	 14h, 05h, 01h, 44h, 54h, 01h
		db	 05h
loc_406:
		stosb				; Store al to es:[di]
		add	[si],dx
		adc	ax,6AD1h
		adc	[bx+si+13h],dl
		xchg	si,ax
		xor	ax,60B3h
		adc	al,1
		inc	ax
		and	ax,922h
		std				; Set direction flag
		test	dx,[di+54h]
		add	ax,1450h
		push	ax
		add	ax,2019h
		adc	al,4
		inc	ax
		adc	ax,5441h
		add	ax,5401h
		mov	al,ds:data_897e
		add	al,data_801[bx+si]
		push	ax
		mov	[bx+si-7Eh],dl
		mov	ch,ds:data_879e[bx+si]
		push	ax
		push	ax
		add	[di],al
		push	cx
		add	[di+41h],dx
		push	bp
		and	cl,data_797[bx+si]
		or	dh,ch
		sub	al,[bp+si]
		and	byte ptr [bx+si],14h
		add	al,40h			; '@'
		inc	ax
		add	[bp+si],cl
		adc	al,10h
		adc	ax,1645h
		test	si,[bx+di+20h]
		add	al,1
		inc	dx
		and	byte ptr ss:[2A8Ah][bp+si],9Fh	; ('t do that kind of thing ')
		inc	ax
		add	al,[si]
		cmp	byte ptr ss:[7D55h][bp+di],cl
		jge	$+2			; delay for I/O
		inc	cx
		push	sp
		add	[bx+di+40h],ax
		push	ax
		push	ax
		add	data_815,dl
		or	al,data_825[bx+di]
		inc	ax
		inc	ax
		add	[si],dx
		add	[bx+si+40h],ax
		add	[bx+di],dx
		adc	[bx+si+0Ah],al
		add	dh,[bx+si+5Ah]
		sub	byte ptr data_738[bx+si],al
		add	cl,data_805[bx+si]
		dec	bp
		or	ax,0A008h
		add	ah,[bx+si]
		push	bp
		adc	[di+18h],dx
		rol	word ptr [bx+di+51h],1	; Rotate
		inc	ax
		mov	al,data_762
		add	byte ptr [di],1
		inc	ax
		add	ax,5050h
		add	[di+5],dl
		add	ax,0A001h
		mov	al,data_790
		add	ax,5504h
		push	bp
		add	[bx+si+1],dl
		inc	bp
		adc	[di],dl
		push	bp
		adc	[bx+di+40h],dl
		dec	di
		dec	bx
		add	[bx+si],bp
		mov	al,data_830
		or	ah,data_820[bx+si]
		db	0C6h, 8Ah, 8Ah, 00h, 88h, 50h
		db	 05h, 14h, 01h,0EAh, 81h,0EAh
		db	 34h, 15h, 41h, 51h, 01h, 40h
		db	 15h, 14h, 01h, 50h, 2Ah, 80h
		db	 50h,0A0h, 80h, 02h, 28h, 02h
		db	 20h, 14h, 1Ch, 78h,0A8h, 02h
		db	0F8h, 05h, 50h, 05h, 50h, 05h
		db	 55h, 50h,0AFh, 28h, 05h, 05h
		db	 00h, 55h, 50h, 02h, 80h, 05h
		db	 14h, 01h, 40h, 14h, 01h, 04h
		db	 14h, 50h, 44h, 44h, 00h, 15h
		db	 68h, 04h, 51h, 14h, 15h, 55h
		db	 40h, 15h, 41h, 7Ch, 01h, 54h
		db	 01h, 11h, 40h, 17h, 60h, 0Ah
		db	 28h, 1Eh, 14h, 15h, 54h, 01h
		db	 55h, 05h, 55h, 55h, 02h, 54h
		db	 50h, 05h, 02h, 82h, 02h, 0Ah
		db	 01h, 11h, 40h, 88h, 05h, 05h
		db	 00h, 50h, 50h, 01h, 55h, 50h
		db	 05h, 05h, 00h, 55h, 55h, 00h
		db	 05h, 55h, 55h, 01h, 05h, 05h
		db	 02h, 50h, 05h, 55h, 55h, 03h
		db	 50h, 14h, 78h, 05h, 01h, 55h
		db	 40h, 14h, 01h, 40h,0A2h, 82h
		db	 94h, 14h,0A1h, 40h, 01h, 55h
		db	 41h, 54h, 15h, 55h, 5Fh,0F5h
		db	 5Fh, 41h,0E0h, 1Ch, 9Fh,0E9h
		db	 42h, 05h, 28h,0B5h, 4Bh, 68h
		db	 01h, 55h, 40h, 14h, 15h, 54h
		db	 14h, 15h, 55h, 54h, 05h, 02h
		db	 85h, 02h, 82h, 80h, 22h, 02h
		db	 20h, 05h, 14h, 54h, 15h, 40h
		db	 40h, 00h, 55h, 55h, 01h, 05h
		db	 05h, 00h, 55h, 05h, 05h, 00h
		db	 50h, 05h, 50h, 05h, 50h, 50h
		db	 00h, 05h, 05h, 00h, 55h, 05h
		db	 05h, 00h, 55h, 15h, 40h, 14h
		db	 14h, 00h, 44h, 15h, 40h, 01h
		db	 41h,0C8h, 0Ah,0B4h, 01h, 55h
		db	 55h, 01h, 7Dh,0DFh,0C0h, 15h
		db	 54h, 14h, 22h, 08h, 80h, 3Ch
		db	 17h,0D5h,0DCh, 0Bh, 3Ah, 80h
		db	 22h, 1Eh, 96h, 15h, 40h, 22h
		db	 28h, 01h, 40h, 01h, 55h, 54h
		db	 05h, 50h, 50h, 00h, 05h, 22h
		db	 05h, 55h, 55h, 01h, 50h, 55h
		db	 50h, 55h, 50h, 05h, 05h, 00h
		db	 55h, 05h, 05h, 00h, 11h, 24h
		db	0D8h, 90h, 55h, 55h, 00h, 50h
		db	 50h, 01h, 14h, 01h, 54h, 41h
		db	 14h, 01h, 55h, 40h, 01h, 40h
		db	0A1h, 55h, 55h, 00h, 48h, 08h
		db	 14h,0A0h, 28h, 0Ah,0AAh,0A2h
		db	0A2h, 00h, 9Dh, 40h, 14h, 91h
		db	0BCh,0D8h, 02h, 81h, 54h, 9Dh
		db	 7Dh, 41h, 41h, 00h, 40h, 14h
		db	 14h, 00h, 50h, 55h, 50h, 0Ah
		db	 50h, 05h, 50h, 50h, 00h, 55h
		db	 14h, 05h, 0Bh, 27h, 9Bh,0DBh
		db	 07h, 80h, 05h, 50h, 50h, 00h
		db	 05h, 50h, 55h, 05h, 05h, 00h
		db	 14h, 14h, 00h, 15h, 41h, 40h
		db	 01h, 41h, 55h, 55h, 03h,0D5h
		db	0D6h, 80h, 0Bh, 68h, 14h, 28h
		db	 3Dh, 74h,0A0h, 08h, 03h,0C7h
		db	 54h, 3Dh,0EEh, 9Bh, 01h, 55h
		db	 55h, 00h, 41h, 55h, 55h, 00h
		db	 54h, 14h, 8Ah, 80h, 0Ah, 15h
		db	 54h, 15h, 55h, 40h, 14h, 50h
		db	 0Fh, 05h, 14h, 50h, 11h, 14h
		db	 44h, 50h, 55h, 50h, 55h, 05h
		db	 06h,0C7h, 54h, 3Dh,0EEh, 9Bh
		db	 05h, 08h, 80h, 01h, 54h, 14h
		db	 01h, 55h, 54h, 15h, 54h, 37h
		db	0DEh,0B4h, 01h, 41h,0DDh,0D7h
		db	0DDh, 54h, 80h,0B5h, 41h, 7Dh
		db	 5Fh, 5Dh, 57h, 63h, 40h, 13h
		db	0D6h, 9Ch, 29h,0E0h,0F3h, 02h
		db	 21h, 40h,0B4h, 28h, 01h, 54h
		db	 01h, 40h, 01h, 40h, 05h, 05h
		db	 00h, 54h, 14h, 01h, 50h, 50h
		db	 00h, 55h, 05h, 05h, 00h, 50h
		db	 27h,0A1h,0F9h, 40h, 3Dh,0E4h
		db	 80h, 14h, 05h,0A0h
loc_407:
		adc	al,0A0h
		add	[di+42h],dx
		xchg	si,ax
		aaa				; Ascii adjust
		ja	$+60h			; Jump if above
loc_408:
		adc	al,22h			; '"'
		and	al,[bx+si]
		xchg	sp,ax
		adc	al,1
		inc	cx
		pop	bp
		jge	loc_408			; Jump if > or =
		cld				; Clear direction
		jno	loc_407			; Jump if not overflw
		movsw				; Mov [si] to es:[di]
;*		sub	dh,9Dh
		db	 82h,0EEh, 9Dh		;  Fixup - byte match
		add	[bx+si+1],ax
		inc	ax
		db	 3Eh,0A8h, 28h,0A2h, 20h, 1Ch
		db	 20h, 22h, 05h, 05h, 00h, 14h
		db	 50h, 50h, 00h, 11h, 50h, 50h
		db	 01h, 55h,0DEh, 30h,0D9h, 97h
		db	 0Dh, 6Eh,0A0h, 50h, 50h, 01h
		db	 05h, 50h,0A0h, 01h, 41h, 43h
		db	0C0h, 15h, 76h,0B7h,0E0h,0A0h
		db	 20h, 15h, 55h, 55h, 00h, 54h
		db	 14h, 0Ah, 01h, 80h,0C0h,0C7h
		db	 38h,0C1h, 80h, 14h, 14h, 00h
		db	 15h, 40h, 0Ah, 01h, 42h,0AAh
		db	0AAh, 00h, 80h, 01h, 40h, 14h
		db	 50h, 50h, 01h, 05h, 50h, 50h
		db	 02h, 03h,0C0h,0C7h, 38h,0C1h
		db	 82h, 80h, 05h, 05h, 01h, 55h
		db	 05h, 14h, 01h, 54h, 01h, 40h
		db	 01h, 55h, 54h, 15h, 55h, 54h
		db	 01h,0DCh, 82h, 36h, 01h, 40h
		db	 01h, 40h, 14h, 15h, 40h, 01h
		db	 4Ah, 89h, 55h, 40h, 01h, 41h
		db	 55h, 46h, 03h, 19h,0E1h, 1Fh
		db	 50h,0E8h, 14h, 01h, 41h, 41h
		db	 00h, 54h, 15h, 40h, 01h, 40h
		db	 14h, 50h, 50h, 00h, 55h, 50h
		db	 50h, 00h, 05h, 05h, 00h, 50h
		db	 05h
		db	50h
loc_409:
		push	es
		push	es
		add	[bx+di],dh
		hlt				; Halt processor
		daa				; Decimal adjust
                           lock	mov	ax,5005h
		push	ax
		add	[bx+di],al
		inc	ax
		adc	ax,1554h
		push	sp
		or	[bx-21h],si
		std				; Set direction flag
		jge	loc_409			; Jump if > or =
		adc	ax,5541h
		push	sp
		adc	ax,5555h
		add	[bx+si+15h],ax
		push	bp
		push	bp
		add	[bx+di+55h],al
		push	bp
		add	[si+1],dl
		inc	ax
		or	al,6
		db	 36h, 90h, 15h,0A4h,0A6h, 14h
		db	 01h, 55h, 41h, 41h, 00h, 40h
		db	 14h, 14h, 02h, 05h, 50h, 05h
		db	 0Ch, 0Ch, 00h, 51h, 20h, 0Dh
		db	 1Dh,0E6h, 50h, 05h, 15h, 55h
		db	 41h, 41h, 00h, 40h, 01h, 41h
		db	 40h, 15h, 54h, 0Ah, 97h,0C0h
		db	 37h, 74h, 29h, 40h, 01h, 55h
		db	 55h, 06h, 54h, 14h, 01h, 41h
		db	 40h, 18h, 0Ch, 57h, 40h,0D4h
		db	0C3h, 01h, 40h, 01h, 41h, 40h
		db	 01h, 40h, 14h, 15h, 40h, 05h
		db	 55h, 05h, 55h, 05h, 50h, 05h
		db	 50h, 05h, 05h, 00h, 50h, 18h
		db	 0Ch,0FCh,0CCh, 61h,0E0h, 50h
		db	 50h, 00h, 05h, 50h, 05h, 15h
		db	 55h, 40h, 01h, 41h, 40h, 15h
		db	 54h, 28h,0A0h, 01h, 40h, 15h
		db	 54h, 01h, 40h, 15h, 40h, 01h
		db	 40h, 14h, 14h, 00h, 18h, 0Ch
		db	0FCh,0CCh, 61h,0E0h, 01h, 40h
		db	 01h, 40h, 14h
loc_410:
		add	ax,5050h
		add	[di],al
		push	ax
		add	ax,555h
		push	bp
		add	ax,5
		push	ax
		push	ax
		add	ax,[di]
		push	ax
		sbb	[si],cl
		mul	byte ptr [bx+di-80h]	; ax = data * al
		dec	dx
		add	byte ptr [di],50h	; 'P'
		push	ax
		add	[di+1],dl
		inc	cx
		push	sp
		add	[si+1],dx
		push	sp
		adc	al,1
		inc	ax
		adc	al,2
		test	al,1
		dec	bx
		inc	cx
		inc	ax
		adc	al,14h
		add	[bx+di],al
		inc	cx
		inc	ax
		add	[si+14h],dx
		add	[di+54h],dx
		sbb	byte ptr ss:[60DEh][bp],ah
		iret				; Interrupt return
			                        ;* No entry point to code
		add	bx,data_792
		add	[bx+di],al
		inc	ax
		add	ax,5050h
		add	[di],ax
		or	al,8Eh
		jns	loc_410			; Jump if not sign
		inc	di
		and	al,28h			; '('
		add	ax,5
		add	[di+41h],dx
		push	bp
		push	sp
		adc	al,1
		inc	ax
		add	[bx+di+40h],ax
		add	[bx+si+1],ax
		inc	ax
		add	[di+41h],dx
		inc	ax
		add	[bx+si+1],ax
		inc	ax
		add	[si+15h],dx
		push	sp
		adc	ax,1554h
		inc	ax
		or	al,53h			; 'S'
		db	 6Ch,0C0h,0D8h, 1Bh, 18h, 01h
		db	 54h, 01h, 54h, 15h, 55h, 55h
		db	 00h, 40h, 55h, 55h, 00h, 05h
		db	 50h, 05h, 05h, 00h, 55h, 05h
		db	 50h, 06h, 44h,0F6h, 60h, 22h
		db	 18h, 0Ah, 50h, 01h, 40h, 15h
		db	 54h, 15h, 40h, 15h, 55h, 40h
		db	 14h, 14h, 01h, 2Ah,0A8h, 01h
		db	 5Eh, 17h,0C0h, 01h, 40h, 14h
		db	 14h, 01h, 15h, 41h, 41h, 00h
		db	 40h, 01h, 40h, 15h, 55h, 40h
		db	 06h, 16h, 76h, 60h, 28h, 18h
		db	 0Ah, 14h, 01h, 40h, 15h, 55h
		db	 54h, 14h, 01h, 40h, 14h, 55h
		db	 55h, 00h, 05h, 50h, 05h, 05h
		db	 00h, 50h, 05h, 05h, 01h, 50h
		db	 06h, 0Bh, 7Dh,0B0h, 28h, 30h
		db	 05h, 50h, 01h, 41h, 41h, 01h
		db	 54h, 14h, 01h, 41h, 41h, 00h
		db	 55h, 54h, 01h, 55h, 43h,0D4h
		db	 02h, 8Ah, 14h, 01h, 40h, 14h
		db	 14h, 01h, 01h, 40h, 14h, 03h
		db	 07h, 46h,0D8h, 28h, 30h, 01h
		db	 40h, 01h, 40h, 15h, 40h, 05h
		db	 50h, 55h, 55h, 00h, 50h, 05h
		db	 05h, 02h, 55h, 09h, 03h, 50h
		db	0ACh, 30h, 05h, 14h, 14h, 03h
		db	 15h, 41h, 40h, 14h, 15h, 54h
		db	 15h, 80h, 60h, 01h, 80h, 60h
		db	 50h, 15h, 40h, 15h, 55h, 41h
		db	 55h, 55h, 00h, 40h, 05h, 05h
		db	 00h, 55h, 05h, 05h, 00h, 55h
		db	 50h, 50h, 00h, 01h, 80h, 18h
		db	 50h, 02h,0AAh, 80h,0A0h, 01h
		db	 41h, 40h, 14h,0C0h, 06h, 28h
		db	 0Eh,0F6h, 20h, 14h, 01h, 40h
		db	 14h, 15h, 55h, 54h,0C0h, 06h
		db	 28h,0C0h, 60h, 01h, 55h, 55h
		db	 02h, 40h, 22h, 0Ah, 28h, 28h
		db	 00h, 60h, 01h, 80h,0C0h, 14h
		db	 30h, 01h, 40h, 14h, 15h, 41h
		db	 40h, 14h, 14h, 00h, 15h, 55h
		db	 55h, 00h, 40h, 60h, 07h, 40h
		db	0C7h, 81h,0D0h, 14h, 15h, 54h
		db	 01h, 40h, 14h, 01h, 40h, 01h
		db	 54h, 14h, 15h, 41h, 54h, 01h
		db	 54h, 01h, 40h, 14h, 01h, 40h
		db	 30h, 01h, 20h,0C6h,0C3h,0F0h
		db	 14h, 15h, 54h, 15h, 41h, 41h
		db	 00h, 40h, 30h, 07h, 10h, 60h
		db	0A5h, 60h, 14h, 14h, 00h, 01h
		db	 40h, 01h, 40h, 01h, 40h, 15h
		db	 55h, 55h, 00h, 54h, 14h, 14h
		db	 00h, 01h, 41h, 41h, 00h, 55h
		db	 70h, 01h, 20h, 60h,0C0h, 14h
		db	 15h, 40h, 14h, 15h, 40h, 14h
		db	 18h, 01h, 20h, 30h,0C0h, 14h
		db	 01h, 54h, 18h, 07h, 40h, 0Ch
		db	 17h, 28h, 28h, 00h, 18h, 07h
		db	 40h, 88h, 28h, 01h, 41h, 40h
		db	 0Ch, 0Bh, 80h, 2Bh, 48h, 28h
		db	 0Ch, 0Bh, 80h, 5Ch, 90h, 50h
		db	 0Ch, 0Bh, 80h, 5Ch, 90h, 50h
		db	0C0h, 02h, 40h,0E0h, 0Ah, 40h
		db	0E4h, 0Eh, 40h, 03h, 27h, 02h
		db	 70h, 30h, 03h,0C0h,0E4h, 0Eh
		db	 40h,0F0h, 03h,0C0h,0E4h, 0Eh
		db	 40h,0F0h, 03h,0C0h,0E4h, 40h
		db	 0Ah, 40h,0F0h, 03h,0C5h,0E4h
		db	 01h, 40h, 50h, 51h, 11h, 51h
		db	 41h, 10h, 50h, 14h, 51h, 14h
		db	 40h, 40h, 00h, 14h, 01h, 14h
		db	 11h, 14h, 51h, 40h, 10h, 15h
		db	 10h, 55h, 55h, 00h, 14h, 0Eh
		db	 40h,0F0h,0C0h, 24h, 8Ah, 20h
		db	 02h, 08h, 0Ah, 20h,0A2h, 82h
		db	 80h,0AAh, 8Ah, 80h, 28h, 0Ah
		db	 02h, 80h, 02h, 82h, 20h, 0Ah
		db	0A8h, 80h, 08h, 22h,0A0h, 0Ch
		db	 02h,0A0h, 04h, 40h, 14h, 11h
		db	 10h, 44h, 51h, 50h, 50h, 00h
		db	 05h, 51h, 40h, 14h, 05h, 44h
		db	 05h, 40h, 08h, 06h,0A4h,0A8h
		db	 28h, 02h, 88h,0A0h,0A8h,0A0h
		db	 0Ah, 08h, 80h, 0Ah, 02h, 80h
		db	 0Ah,0AAh, 20h, 0Ah, 0Eh,0A7h
		db	0C0h, 40h, 50h, 50h, 00h, 10h
		db	 40h, 14h, 04h, 45h, 14h, 50h
		db	 50h, 00h, 05h, 05h, 00h, 54h
		db	 04h, 40h,0FEh,0A7h,0C4h, 60h
		db	 0Ah, 20h, 02h, 2Ah, 2Ah, 00h
		db	 22h, 0Ah,0A0h, 02h, 20h, 28h
		db	 20h,0A0h, 80h, 08h, 0Ah, 80h
		db	 08h, 82h, 20h, 2Ah, 80h, 80h
		db	 00h, 0Ah,0A0h, 01h, 04h,0FEh
		db	0A7h,0C4h, 04h, 01h, 04h, 11h
		db	 45h, 51h, 14h, 54h, 14h, 11h
		db	 05h, 02h, 80h, 55h, 14h, 54h
		db	 28h, 40h,0B5h, 10h, 01h, 10h
		db	 55h, 01h, 14h, 05h,0FEh,0A7h
		db	0C0h,0A0h,0A2h, 88h, 02h, 22h
		db	 80h,0A0h,0A0h, 01h, 05h, 58h
		db	 20h, 02h,0A0h, 08h, 88h, 88h
		db	 00h, 02h, 82h, 82h, 00h, 80h
		db	 0Ah, 02h, 80h, 20h,0A0h, 02h
		db	 80h,0FEh,0A7h,0C4h, 10h, 11h
		db	 45h, 14h, 50h, 15h, 01h, 40h
		db	 54h, 11h,0A0h, 10h, 10h, 00h
		db	 01h, 10h, 02h,0D0h, 15h, 54h
		db	 14h, 50h, 01h, 51h, 41h, 54h
		db	 14h,0FEh,0A7h,0CAh, 28h, 0Ah
		db	 80h,0A8h, 20h,0A0h, 2Bh,0C0h
		db	 28h,0A0h, 05h, 50h, 5Ah, 28h
		db	 01h, 40h,0A0h, 0Ah, 28h, 01h
		db	 42h, 0Ah, 22h, 80h,0A0h, 0Ah
		db	 28h, 02h, 20h, 0Ah,0A8h,0A0h
		db	0A8h, 08h,0FEh,0A7h,0C0h, 14h
		db	 01h, 45h, 44h, 01h, 14h, 05h
		db	 01h, 55h, 01h,0A0h, 28h, 36h
		db	 55h, 04h, 40h, 0Ah, 15h, 41h
		db	 04h, 15h, 54h, 13h, 80h, 0Eh
		db	 40h, 11h, 14h, 10h, 40h, 10h
		db	0FEh,0A7h,0C0h, 22h, 08h, 20h
		db	 02h, 80h, 80h, 00h,0A8h,0A8h
		db	 00h,0A0h, 08h,0DFh, 82h, 03h
		db	0C4h, 05h, 6Ah, 80h,0A0h, 28h
		db	 11h, 09h,0C0h, 02h, 20h, 02h
		db	 80h, 0Ah,0A0h,0A0h, 00h, 28h
		db	 0Ah,0A0h, 02h, 80h, 28h, 80h
		db	 02h,0A8h,0FEh,0A7h,0C0h, 01h
		db	 40h, 04h, 10h, 50h, 41h, 10h
		db	 51h,0E4h,0DEh,0D0h, 6Fh,0CAh
		db	 54h, 40h, 01h, 40h, 44h, 02h
		db	 80h, 50h, 01h, 44h, 40h, 7Eh
		db	0C0h, 01h, 50h, 14h, 40h, 51h
		db	 04h, 54h, 01h, 50h, 51h, 14h
		db	 05h, 04h, 15h, 44h,0FEh,0A7h
		db	0C2h, 22h, 28h, 2Ah, 80h, 02h
		db	 8Ah, 02h,0D8h, 3Fh, 48h, 80h
		db	 88h, 41h, 0Ah,0A9h, 5Ah, 60h
		db	0A0h, 02h, 82h, 81h,0F6h, 80h
		db	 2Ah, 80h, 2Ah, 80h, 08h, 28h
		db	0AAh, 20h, 2Ah, 88h, 80h, 20h
		db	 2Ah, 08h, 28h,0FEh,0A7h,0C1h
		db	 55h, 51h, 10h, 01h, 40h, 04h
		db	0D8h, 37h, 50h, 14h, 08h, 2Ah
		db	0A0h, 0Bh, 45h, 01h, 44h, 55h
		db	 47h,0D4h, 44h, 14h, 10h, 50h
		db	 04h, 10h, 50h, 50h, 00h, 04h
		db	 51h, 45h, 45h, 01h, 14h, 04h
		db	 40h, 15h, 40h, 14h, 50h,0FEh
		db	0A7h,0C0h, 20h, 0Ah, 28h, 16h
		db	 50h, 4Ah,0C8h, 08h,0AAh, 54h
		db	 04h,0A0h,0CDh, 40h,0A0h, 52h
		db	 80h,0EFh, 56h, 8Ah, 02h, 8Ah
		db	0A0h,0AAh, 20h, 20h, 00h, 2Ah
		db	0A8h, 22h, 02h, 20h, 02h, 88h
		db	 8Ah, 28h, 8Ah, 08h, 80h, 22h
		db	 0Ah, 2Ah, 20h,0FEh,0A7h,0C0h
		db	 01h, 14h, 40h, 40h, 00h, 50h
		db	 01h, 05h, 11h, 91h, 21h, 4Eh
		db	 7Fh, 89h, 05h, 0Ch,0A0h, 05h
		db	 50h, 51h, 11h, 40h, 02h, 84h
		db	 3Ah,0D3h,0C5h, 51h, 40h, 40h
		db	 01h, 04h, 44h, 55h, 40h, 05h
		db	 14h, 51h, 50h, 11h, 05h, 01h
		db	 41h, 40h, 14h, 01h, 40h,0FEh
		db	0A7h,0C0h, 02h, 0Ah, 28h, 88h
		db	0A0h, 22h, 22h, 00h, 9Eh, 3Bh
		db	 28h, 8Fh,0A0h, 80h, 05h, 02h
		db	0D2h, 9Eh, 05h, 9Bh, 20h, 22h
		db	 37h, 0Ah,0D6h,0F0h, 8Ah, 20h
		db	0A0h, 0Ah, 28h, 08h, 88h,0A8h
		db	0A2h, 80h, 02h, 2Ah,0A0h, 2Ah
		db	 02h, 80h, 02h, 20h, 20h, 00h
		db	 2Ah, 88h, 28h, 0Ah,0A0h,0FEh
		db	0A7h,0C0h, 10h, 44h, 14h, 05h
		db	 11h, 41h, 50h, 40h, 3Bh,0D0h
		db	 0Fh, 08h, 98h, 28h, 08h, 3Ch
		db	 01h,0BBh, 44h, 45h, 02h,0BBh
		db	 85h, 51h, 50h, 54h, 04h, 45h
		db	 51h, 01h, 01h, 00h, 41h, 40h
		db	 01h, 01h, 00h, 15h, 01h, 50h
		db	 51h, 10h, 01h, 3Ch,0FEh,0A7h
		db	0C0h, 0Ah, 20h, 80h, 20h, 08h
		db	0A0h, 13h, 64h, 0Fh, 34h, 18h
		db	 81h, 28h, 1Ah,0DBh,0D8h, 80h
		db	 01h, 88h, 1Bh, 4Ah, 2Ah, 02h
		db	 22h, 8Ah, 28h, 20h, 28h, 80h
		db	 8Ah, 02h,0AAh, 2Ah, 08h,0AAh
		db	0AAh, 00h,0A8h, 28h, 28h, 00h
		db	0A0h,0A0h, 00h, 28h, 80h, 0Ah
		db	 82h,0A8h, 80h,0FEh,0A7h,0C0h
		db	 40h, 40h, 00h, 10h, 54h, 14h
		db	 01h,0F0h, 4Eh, 40h, 70h, 12h
		db	 80h, 22h, 80h, 40h, 32h,0D8h
		db	0A0h, 02h,0A0h, 08h, 28h, 41h
		db	 04h, 14h, 15h, 44h, 11h, 50h
		db	 50h, 00h, 54h, 50h, 44h, 01h
		db	 44h, 41h, 10h, 50h, 05h, 01h
		db	 15h, 44h, 14h,0FEh,0A7h,0C0h
		db	 80h, 20h, 22h, 8Ah, 08h, 50h
		db	 05h, 10h, 4Ch,0A2h, 90h, 33h
		db	 55h, 1Ah, 40h, 03h, 70h, 55h
		db	0E0h, 42h, 20h,0E3h,0C0h, 0Ah
		db	 28h, 08h, 8Ah, 02h, 28h, 80h
		db	 82h, 28h, 28h, 00h,0A0h, 2Ah
		db	 20h,0A0h, 02h,0A2h, 80h, 28h
		db	 88h,0A0h, 0Ah, 88h,0FEh,0A7h
		db	0C0h, 04h, 01h, 15h, 51h, 45h
		db	 0Eh, 50h, 93h, 1Fh, 41h,0C7h
		db	0C7h, 00h, 8Ah, 28h, 08h,0ACh
		db	 10h, 3Ch,0F8h, 71h,0E0h,0A0h
		db	0D5h, 07h, 80h, 28h, 28h, 00h
		db	 44h, 04h, 51h, 14h, 04h, 14h
		db	 50h, 55h, 54h, 55h, 04h, 51h
		db	 10h, 11h, 04h, 41h, 10h, 05h
		db	 01h, 04h,0FEh,0A7h,0C8h, 80h
		db	 88h, 80h, 08h, 22h,0A0h, 0Ch
		db	 33h, 36h, 57h,0D2h, 08h, 02h
		db	 8Fh, 5Eh, 40h, 9Eh,0D6h,0C1h
		db	 4Ah, 9Dh,0B4h, 05h, 14h, 28h
		db	 28h, 00h, 0Ah,0A8h, 08h, 22h
		db	 80h, 8Ah, 08h,0A0h, 0Ah, 02h
		db	 80h, 22h, 0Ah,0A2h, 88h,0A8h
		db	0FEh,0A7h,0C4h, 01h, 44h, 51h
		db	 14h, 10h, 3Ch, 02h, 20h, 74h
		db	 1Bh, 8Fh, 08h, 02h,0E3h, 77h
		db	 50h, 8Bh, 2Eh, 50h, 82h, 80h
		db	 28h, 05h, 50h, 14h, 15h, 51h
		db	 41h, 40h, 40h, 00h, 04h, 01h
		db	 10h, 05h, 01h, 54h, 40h, 51h
		db	 01h, 50h, 14h, 04h,0FEh,0A7h
		db	0CAh,0A0h, 0Ah, 28h, 80h, 01h
		db	 60h, 1Eh, 04h,0E6h, 60h, 76h
		db	0E3h, 0Ch,0CAh, 41h, 41h, 00h
		db	 50h, 10h, 38h,0F0h, 54h, 02h
		db	 80h, 11h, 44h,0A8h, 88h, 08h
		db	0A0h, 02h, 02h, 00h, 08h, 02h
		db	 20h, 80h,0A8h, 02h, 02h, 00h
		db	 82h, 08h, 22h, 08h, 02h,0A8h
		db	0FEh,0A7h,0C0h, 10h, 01h, 01h
		db	 01h, 0Eh, 10h, 07h, 80h, 04h
		db	0ECh, 61h, 20h, 31h,0AFh, 8Ah
		db	0A0h, 44h, 01h, 55h, 29h,0FBh
		db	 61h, 45h, 1Ch, 82h, 80h, 50h
		db	 05h, 01h, 44h, 10h, 50h, 15h
		db	 01h, 10h, 05h, 50h, 41h, 05h
		db	 01h, 40h, 14h, 11h, 41h, 14h
		db	 05h, 04h, 10h,0FEh,0A7h,0C0h
		db	0A2h, 20h, 80h, 98h, 30h, 02h
		db	 80h, 09h, 6Ch, 61h, 35h, 20h
		db	 58h, 01h, 78h, 05h, 44h, 10h
		db	 54h,0A0h, 55h, 01h, 29h, 14h
		db	 11h,0EAh,0A0h,0A0h, 01h, 88h
		db	 08h,0A8h, 80h, 8Ah, 20h, 0Ah
		db	0A8h, 80h,0FEh,0A7h,0C4h, 50h
		db	 44h, 5Ah, 40h, 12h, 6Ch, 61h
		db	 77h, 42h, 57h,0E2h, 28h, 15h
		db	 40h, 51h, 45h,0A5h,0BDh, 79h
		db	 05h,0ECh, 01h, 46h, 40h, 5Ah
		db	 01h, 54h, 04h, 10h, 01h, 51h
		db	 05h, 10h, 14h, 14h, 00h, 01h
		db	 40h,0FEh,0A7h,0C8h, 02h, 20h
		db	 80h,0B3h,0E2h, 8Fh, 60h, 38h
		db	0E2h, 50h, 05h, 04h, 1Fh, 40h
		db	 01h, 45h, 0Dh, 31h, 41h, 41h
		db	 00h, 14h, 01h, 6Ch, 44h, 04h
		db	 4Fh, 44h, 02h, 80h, 0Ah, 0Ah
		db	 00h,0A0h, 02h, 82h, 02h,0AAh
		db	 80h, 0Ah,0FEh,0A7h,0C4h, 80h
		db	 80h, 00h, 01h, 01h, 00h, 07h
		db	 30h,0A0h,0C0h, 28h, 15h, 40h
		db	 05h, 14h, 56h,0B8h,0CFh, 62h
		db	 82h, 87h,0A8h,0F2h, 01h, 54h
		db	 01h, 40h, 15h, 54h, 14h, 41h
		db	 44h, 04h, 14h,0FEh,0A7h,0C8h
		db	0A1h, 15h, 82h, 80h, 06h, 06h
		db	 01h,0DEh,0C0h, 01h, 04h, 01h
		db	 4Ah, 05h, 14h, 28h, 3Bh, 81h
		db	 68h, 06h,0E6h, 88h, 02h, 02h
		db	 00h, 0Ah, 02h, 20h,0A0h,0A2h
		db	 80h, 02h, 88h,0FEh,0A7h,0C4h
		db	 20h, 03h, 01h,0A1h, 04h, 9Fh
		db	 40h, 12h,0C1h, 10h,0A5h, 05h
		db	 14h, 50h, 50h, 01h, 13h, 26h
		db	0F4h, 51h, 40h,0A0h, 54h, 01h
		db	 05h, 04h, 10h, 40h, 01h, 40h
		db	 05h, 14h,0FEh,0A7h,0C8h, 11h
		db	 50h, 83h, 30h, 03h,0A1h,0E0h
		db	 12h,0C1h, 11h,0B1h, 40h, 50h
		db	 02h,0D0h, 0Eh, 02h, 82h, 90h
		db	 04h,0A0h,0A2h, 08h, 80h,0A2h
		db	 22h, 02h, 20h,0A0h, 08h,0A0h
		db	 0Ah, 28h,0FEh,0A7h,0C4h, 22h
		db	0A0h, 46h,0C0h,0A0h, 10h, 38h
		db	 60h, 14h,0CEh, 80h, 11h, 01h
		db	 40h, 28h, 08h, 27h, 04h, 42h
		db	 20h, 05h, 50h, 14h, 04h, 45h
		db	 10h, 41h, 10h, 14h, 05h, 05h
		db	 01h, 40h, 50h,0FEh,0A7h,0C8h
		db	 45h, 15h,0A0h, 80h, 10h, 51h
		db	 01h, 15h, 15h, 00h, 45h, 01h
		db	 85h, 14h,0DAh, 80h, 02h, 80h
		db	 01h,0E5h, 54h, 54h, 00h, 10h
		db	0A0h, 22h,0A8h, 20h, 8Ah, 20h
		db	 80h,0A2h, 08h,0A2h, 28h, 08h
		db	 0Ah,0FEh,0A7h,0C4h, 80h,0A2h
		db	 8Bh, 80h, 88h, 22h, 28h,0A2h
		db	0A8h,0C0h, 14h,0DAh,0D0h, 50h
		db	 2Eh,0C4h, 78h, 2Fh,0B9h, 42h
		db	0A0h, 01h, 40h, 50h, 10h, 55h
		db	 40h, 40h, 00h, 04h, 40h, 04h
		db	 45h, 40h, 01h, 6Ch, 0Ah, 50h
		db	 15h, 14h, 10h, 14h,0FEh,0A7h
		db	0CDh, 40h, 50h, 01h, 85h, 01h
		db	 41h, 41h, 00h, 14h, 58h, 20h
		db	 11h, 89h, 19h, 8Fh, 19h, 40h
		db	 05h, 55h,0C8h, 51h, 78h, 1Fh
		db	'Q@(', 8, ' ', 8, '* '
		db	 02h, 2Ah, 08h, 88h, 88h, 00h
		db	0E4h, 80h, 1Eh, 80h, 08h,0FEh
		db	0A7h,0C2h, 42h, 80h, 1Fh, 80h
		db	 28h, 0Ah, 2Ah, 08h, 82h,0A0h
		db	 84h, 01h, 54h, 05h, 42h,0CAh
		db	0AAh, 2Ah, 1Eh, 14h, 05h, 14h
		db	 45h, 50h, 04h, 78h, 04h, 11h
		db	 14h, 14h, 00h, 50h, 40h, 01h
		db	 45h, 40h,0FEh,0A7h,0CEh, 82h
		db	 40h, 14h, 04h, 10h, 01h, 27h
		db	 54h, 48h, 2Bh, 55h,0C1h, 40h
		db	 04h, 54h, 14h, 45h, 14h, 02h
		db	 80h, 80h, 00h, 88h,0A0h, 80h
		db	 14h, 2Ah, 3Eh, 80h, 8Ah, 08h
		db	0AAh,0A2h, 08h,0FEh,0A7h,0C6h
		db	 0Ch, 02h, 80h,0A2h,0A0h,0A2h
		db	 2Ah,0A8h, 20h,0A0h, 07h, 48h
		db	0BCh, 09h, 12h,0D0h, 82h,0D0h
		db	0A0h, 14h, 05h, 10h, 44h, 45h
		db	 10h, 40h, 08h, 08h, 00h, 44h
		db	 40h, 11h,0EAh, 40h, 7Dh, 05h
		db	 50h, 05h, 44h, 14h, 45h, 45h
		db	 00h, 40h, 01h, 11h, 50h,0FEh
		db	0A7h,0CAh,0F0h, 14h, 01h, 44h
		db	 10h, 01h, 50h, 04h, 38h, 04h
		db	 15h, 88h, 44h, 0Eh,0C0h, 05h
		db	 55h, 54h, 14h, 08h, 80h,0A2h
		db	 80h, 80h, 00h, 20h, 08h, 80h
		db	 21h, 48h, 20h, 08h,0F5h, 01h
		db	0E0h, 7Ah, 08h, 80h, 88h, 08h
		db	 80h, 28h, 0Ah,0A2h, 08h,0FEh
		db	0A7h,0C0h, 28h, 22h, 20h, 80h
		db	 02h, 22h, 03h, 22h, 96h, 80h
		db	 8Ah, 22h,0A8h, 70h, 14h, 50h
		db	 05h, 50h, 44h, 05h, 04h, 40h
		db	 04h, 47h,0D0h, 45h, 9Ah, 80h
		db	 0Ah, 50h,0F7h, 81h, 01h, 40h
		db	 04h, 40h, 11h, 05h, 54h, 05h
		db	 04h, 11h, 14h,0FEh,0A7h,0C0h
		db	 01h, 04h, 01h, 55h, 41h, 82h
		db	 10h, 01h, 0Ah, 11h, 02h, 50h
		db	 6Ch, 1Eh, 7Ch, 88h, 82h, 02h
		db	 08h,0A0h, 14h, 80h, 90h, 40h
		db	 42h, 47h, 0Bh,0C2h, 20h, 02h
		db	 80h,0AAh, 08h, 80h,0A2h, 22h
		db	 80h, 02h, 80h,0FEh,0A7h,0C0h
		db	 02h, 20h, 02h, 20h, 20h, 01h
		db	 80h,0B0h,0FAh, 08h, 3Eh, 84h
		db	 40h, 04h, 04h, 00h, 50h, 51h
		db	 41h, 01h, 02h, 0Fh,0F5h, 61h
		db	 5Bh, 54h, 14h, 05h, 01h, 14h
		db	 10h, 01h, 41h, 50h,0FEh,0A7h
		db	0C0h, 01h, 10h, 01h, 04h, 10h
		db	 8Dh, 40h, 01h, 05h,0A8h,0F0h
		db	 28h, 01h, 15h, 14h, 40h, 01h
		db	 40h, 88h, 28h,0A0h, 80h, 71h
		db	 0Ah,0F5h, 61h, 54h, 02h,0A2h
		db	 82h,0A8h,0A0h, 82h, 80h, 20h
		db	 08h,0FEh,0A7h,0C0h,0A2h, 80h
		db	 28h, 20h, 02h,0A0h
		db	0Ah
data_829	dw	80A0h			; Data table (indexed access)
		db	0A4h,0E4h, 71h, 3Ah, 1Eh, 10h
		db	 14h, 0Ah,0E8h,0A0h,0A0h, 00h
		db	 44h, 50h, 10h, 10h, 00h, 50h
		db	 04h, 10h, 9Eh,0D3h,0C5h, 41h
		db	 50h, 14h, 40h, 54h, 55h, 40h
		db	0FEh,0A7h,0C0h, 11h, 55h, 40h
		db	 73h, 14h, 14h, 00h, 15h, 0Eh
		db	 40h, 2Ah,0D8h, 05h, 5Eh, 12h
		db	 9Ah,0A0h, 01h, 29h, 51h, 50h
		db	 11h, 10h, 28h, 28h, 00h, 0Ah
		db	 28h,0A0h, 54h, 03h, 22h, 20h
		db	0A0h, 0Ah, 0Ah, 00h, 08h, 22h
		db	 22h, 00h, 20h, 08h, 02h, 80h
		db	 80h, 00h,0A0h, 08h,0FEh,0A7h
		db	0C0h, 02h, 8Ah, 82h, 82h, 00h
		db	 20h, 50h, 84h,0CEh, 14h, 2Ah
		db	 80h,0C7h, 06h,0E4h, 08h, 80h
		db	 0Ah, 24h, 90h,0A0h, 08h, 0Ah
		db	 80h, 14h, 05h, 14h, 50h, 14h
		db	 03h, 1Bh, 82h, 20h,0B4h, 40h
		db	 40h, 00h, 44h, 01h, 50h, 01h
		db	 45h, 51h, 55h, 40h, 40h, 00h
		db	 05h, 40h, 04h,0FEh,0A7h,0C0h
		db	 04h, 54h, 50h, 45h, 50h, 40h
		db	 14h, 01h, 51h, 54h, 0Ah, 10h
		db	 06h,0A0h,0F0h, 98h,0B5h, 45h
		db	 88h, 53h, 40h, 08h, 01h, 40h
		db	 04h, 04h, 00h, 15h, 40h, 08h
		db	 02h, 80h, 80h, 00h, 20h, 85h
		db	 1Fh,0C0h, 02h, 50h, 08h, 0Ah
		db	 02h, 82h, 02h, 80h, 02h, 20h
		db	 08h,0FEh,0A7h,0C0h, 02h, 80h
		db	 20h, 8Ah,0A0h, 80h, 02h, 80h
		db	 82h, 2Dh, 0Ah, 68h, 02h, 80h
		db	 28h, 46h, 37h, 84h, 9Eh, 0Ah
		db	 41h, 29h, 04h,0A5h, 02h,0A8h
		db	 02h, 80h, 08h, 20h, 02h, 80h
		db	 05h, 11h, 41h, 0Bh, 10h, 11h
		db	0CBh, 8Bh, 7Dh, 09h, 80h, 50h
		db	 05h, 04h, 10h, 51h, 45h, 51h
		db	 51h, 00h, 01h, 40h, 04h,0FEh
		db	0A7h,0C0h, 05h, 04h, 40h, 40h
		db	 00h, 78h, 40h, 01h, 41h, 0Ah
		db	 11h, 72h, 11h, 05h, 70h,0A0h
		db	 14h, 01h, 50h, 04h, 1Ah,0A0h
		db	 70h, 8Dh, 80h, 22h, 0Ah, 01h
		db	 40h, 05h, 45h, 40h, 1Dh, 48h
		db	 80h, 81h, 88h, 95h, 08h, 2Ah
		db	 8Ah,0A0h, 20h, 80h, 2Ah, 8Ah
		db	 0Ah, 0Ah, 00h, 08h,0FEh,0A7h
		db	0C0h, 28h, 28h, 00h, 08h, 22h
		db	 82h, 80h, 2Ah, 80h, 20h, 02h
		db	0D8h, 80h, 29h, 46h, 80h, 09h
		db	0E2h, 02h, 8Ch, 42h, 4Ah, 02h
		db	 78h, 04h, 02h, 82h, 28h,0A8h
		db	0A8h, 00h,0D0h, 44h, 05h, 0Eh
		db	 05h, 14h, 40h, 50h, 05h, 14h
		db	 44h, 10h, 50h, 10h, 04h,0FEh
		db	0A7h,0C0h, 14h, 15h, 41h, 40h
		db	 15h, 45h, 04h, 55h, 54h, 12h
		db	 24h, 07h, 91h, 10h, 0Ah,0B4h
		db	 20h, 11h,0D6h, 25h,0D8h, 02h
		db	 50h, 02h, 80h, 15h, 55h, 40h
		db	 11h, 14h, 41h, 80h, 97h, 1Dh
		db	 85h, 1Eh, 80h, 02h, 82h, 80h
		db	 88h, 08h,0FEh,0A7h,0C0h, 28h
		db	 08h, 20h,0A0h, 02h, 28h, 80h
		db	 82h,0A0h, 85h, 08h,0D1h, 44h
		db	 03h,0E4h,0B8h,0A8h, 1Ah,0A0h
		db	 01h, 40h, 44h, 69h, 10h, 0Ah
		db	0A0h, 02h, 28h, 88h,0A2h, 5Ah
		db	0A0h, 2Dh, 10h, 73h, 13h, 65h
		db	 27h, 10h, 10h, 00h,0E2h, 80h
		db	 55h, 04h,0FEh,0A7h,0C0h, 14h
		db	 05h, 45h, 44h, 41h, 05h, 10h
		db	 01h, 2Dh, 10h, 10h, 00h, 04h
		db	 60h, 7Fh, 1Eh,0AEh, 0Ch, 02h
		db	 40h, 32h, 11h, 40h, 2Bh,0DEh
		db	 02h, 16h, 81h, 40h,0D3h, 14h
		db	 51h, 10h, 55h, 39h, 15h, 20h
		db	 5Ah, 14h, 2Dh, 02h, 01h, 54h
		db	 34h, 34h, 00h, 02h, 02h, 00h
		db	 5Ah, 08h,0FEh,0A7h,0C0h, 28h
		db	0A2h, 08h, 88h, 08h,0A2h, 08h
		db	 82h, 0Ah, 04h, 60h, 0Ch, 1Fh
		db	 80h, 09h, 06h, 01h,0E0h,0C2h
		db	 9Eh, 10h, 80h, 18h, 69h, 29h
		db	 08h,0F0h,0BBh, 07h, 80h, 08h
		db	0E8h, 80h, 4Ch,0F4h, 12h,0B8h
		db	 01h, 08h,0D0h,0A0h,0A1h,0E0h
		db	 8Ah, 84h,0FEh,0A7h,0C0h, 05h
		db	 11h, 01h, 11h, 05h, 04h, 01h
		db	 50h, 04h, 15h, 41h, 50h, 80h
		db	 82h, 06h, 17h, 85h, 40h, 0Ch
		db	 24h, 02h, 80h, 24h, 22h, 95h
		db	 06h, 41h, 03h,0F0h, 30h, 41h
		db	 01h, 3Fh,0D0h, 30h, 2Ah, 02h
		db	 01h, 88h, 41h, 40h, 50h, 09h
		db	 54h, 5Fh, 4Eh, 11h,0A0h, 40h
		db	 18h,0FEh,0A7h,0C0h, 02h, 80h
		db	 20h, 02h, 08h, 88h, 80h, 02h
		db	 02h, 01h, 0Ah, 01h, 18h, 05h
		db	0F0h, 12h, 62h, 8Ah, 62h,0A2h
		db	 05h, 07h, 40h, 01h, 81h,0F2h
		db	 37h, 80h,0C4h, 68h, 05h, 03h
		db	 50h,0A0h,0A0h, 00h, 0Ah, 24h
		db	0FEh,0A7h,0C0h, 14h, 01h, 40h
		db	 15h, 11h, 40h, 01h, 0Ah, 55h
		db	 55h, 00h,0A0h, 40h, 10h, 58h
		db	 0Ah, 81h, 06h,0CAh, 02h, 40h
		db	0B1h, 86h, 80h, 20h, 48h, 23h
		db	 63h, 55h, 13h, 80h, 60h, 0Dh
		db	 08h, 18h,0FEh,0A7h,0C0h, 28h
		db	 28h, 00h, 20h, 20h, 00h, 02h
		db	 02h, 00h, 20h, 1Ch, 20h, 28h
		db	 0Ah,0A0h, 02h, 07h, 80h, 14h
		db	 60h, 5Ah, 60h,0C4h,0AAh, 80h
		db	 25h, 80h, 0Ch, 60h, 01h, 8Ah
		db	0A0h,0D4h,0FEh,0A7h,0C0h, 15h
		db	 40h, 15h, 40h, 40h, 00h, 7Dh
		db	 04h, 15h, 01h, 15h, 08h, 81h
		db	 01h,0C6h,0A0h, 82h, 20h, 9Ch
		db	 18h, 06h, 0Ch, 01h, 84h, 98h
		db	 03h, 60h,0C0h, 24h,0C0h, 31h
		db	 80h, 75h, 10h, 48h,0FEh,0A7h
		db	0C0h, 28h,0A0h, 02h, 20h, 0Ah
		db	 28h, 08h, 02h, 20h, 22h, 88h
		db	 80h, 2Ah,0F5h, 11h, 17h,0CAh
		db	 80h, 01h, 4Fh, 24h, 42h, 88h
		db	 01h, 40h, 04h, 2Ah, 41h, 0Ch
		db	0FEh,0A7h,0C0h, 07h, 20h, 14h
		db	 04h, 10h, 10h, 00h, 40h, 51h
		db	 0Ah, 01h, 14h, 45h, 07h, 0Dh
		db	 01h, 15h, 08h, 80h, 22h, 0Ah
		db	 8Ch, 31h, 8Dh, 08h,0A0h, 0Eh
		db	 40h, 28h,0FEh,0A7h,0C0h, 02h
		db	 08h, 2Ah, 80h, 28h, 80h, 02h
		db	 0Ah, 2Ah, 80h, 22h, 22h, 00h
		db	0A0h,0AAh, 70h, 02h, 20h, 0Bh
		db	 60h, 60h, 00h,0C2h, 20h,0FEh
		db	0A7h,0C0h, 0Fh, 50h, 01h, 04h
		db	 10h, 40h, 54h, 02h, 80h, 40h
		db	 01h, 41h, 05h, 08h, 20h, 54h
		db	 05h, 04h, 50h, 02h, 02h, 00h
		db	 8Dh, 46h,0C7h,0D0h, 07h, 80h
		db	 2Ch,0A0h, 01h, 6Dh, 26h,0A0h
		db	0FEh,0A7h,0C0h, 88h, 08h, 80h
		db	 20h, 80h, 28h, 88h, 24h, 40h
		db	 52h, 83h, 40h, 6Eh, 27h, 53h
		db	 4Dh, 05h, 8Ch,0B2h, 78h, 4Eh
		db	0A7h,0B0h,0B5h, 80h, 25h, 41h
		db	 80h,0A0h,0A0h, 00h,0FEh,0A7h
		db	0C0h, 14h, 05h, 01h, 44h, 54h
		db	 01h, 05h,0AAh, 01h, 14h, 15h
		db	0D1h, 6Ah, 10h, 01h, 10h, 43h
		db	0C6h, 30h,0A2h, 32h,0B0h, 1Dh
		db	0C3h, 20h, 23h, 0Dh,0ADh, 85h
		db	 54h, 31h, 49h,0F3h,0CFh,0A0h
		db	0F7h, 80h, 15h, 41h, 54h,0FEh
		db	0A7h,0C0h,0A0h, 02h, 80h, 02h
		db	 80h, 08h, 20h, 80h, 50h, 02h
		db	 8Ah,0AAh, 28h, 25h,0A8h, 88h
		db	 80h, 2Eh, 6Ch,0A7h, 73h, 0Dh
		db	 51h, 02h,0F3h,0A8h, 14h, 0Bh
		db	0E0h, 1Bh,0CCh, 06h, 30h,0D7h
		db	 13h, 58h,0A1h, 40h,0FEh,0A7h
		db	0C0h, 14h, 04h, 40h, 40h, 00h
		db	 0Ah, 14h, 10h, 15h, 45h, 12h
		db	0D0h, 34h, 20h, 04h, 01h, 12h
		db	0C5h,0E2h, 8Bh, 6Ah, 9Fh, 40h
		db	 02h, 3Dh, 8Ah, 55h, 7Dh, 7Dh
		db	 00h, 41h, 40h, 01h, 41h, 4Ah
		db	0B4h, 2Ch,0D1h, 5Dh, 10h, 40h
		db	 0Ch, 12h,0C3h, 81h, 5Dh, 5Eh
		db	 14h, 01h, 40h, 01h, 40h,0FEh
		db	0A7h,0C0h, 0Ah, 02h, 20h, 0Ah
		db	 28h, 80h, 80h, 00h, 02h, 88h
		db	0A0h, 23h, 47h, 85h, 08h,0A0h
		db	 2Ah, 28h,0A0h,0A2h, 9Ch, 0Ah
		db	0A2h, 02h, 98h,0D3h, 6Ch, 5Bh
		db	 40h, 07h, 6Dh, 4Fh, 47h,0D0h
		db	 40h, 80h, 0Dh, 84h, 99h, 40h
		db	 0Ah, 80h,0A0h, 08h,0FEh,0A7h
		db	0C0h, 14h, 05h, 04h, 55h, 55h
		db	 00h, 50h, 01h, 45h, 10h, 45h
		db	 55h, 10h, 51h, 45h, 4Fh, 0Fh
		db	 01h, 28h,0A0h, 81h, 74h, 0Ah
		db	0A0h, 04h, 4Ah, 83h, 8Eh, 8Ah
		db	 88h, 53h,0C7h, 20h,0DDh,0F0h
		db	 2Fh,0B6h,0A1h, 98h, 01h,0EAh
		db	 95h,0EAh, 34h, 14h, 01h, 40h
		db	0FEh,0A7h,0C0h
		db	50h
data_830	db	2Ah
		db	 80h,0A0h, 80h, 02h,0D8h, 28h
		db	 05h, 02h, 08h,0BEh, 1Ch, 78h
		db	0A8h, 02h,0A8h, 05h, 50h, 08h
		db	 80h, 0Ah,0A0h, 0Fh,0FCh,0FCh
		db	 00h,0FEh,0A7h,0C0h, 14h, 01h
		db	 40h, 14h, 01h, 04h, 10h, 86h
		db	 0Ah, 3Ch, 0Dh,0C4h, 44h, 05h
		db	 15h, 38h, 04h, 51h, 14h, 15h
		db	 55h, 40h, 10h, 55h, 7Ch, 01h
		db	 40h, 17h, 60h, 0Ah,0FCh,0FCh
		db	 00h, 1Eh, 14h, 15h, 54h, 14h
		db	 14h, 00h,0FEh,0A7h,0C0h, 05h
		db	 02h, 82h, 02h, 02h, 00h, 88h
		db	 9Bh, 06h,0C0h,0F0h, 63h, 0Dh
		db	 8Ah, 0Fh, 01h, 1Bh, 40h, 88h
		db	 8Ah, 80h, 02h, 8Ah,0A0h, 05h
		db	 07h, 8Ah, 28h, 0Ah,0FEh,0A7h
		db	0C0h, 14h, 78h, 05h, 01h, 55h
		db	 47h, 84h,0EEh, 50h,0F5h, 98h
		db	 1Bh, 0Dh, 81h, 40h, 06h,0C0h
		db	0F7h, 87h, 94h, 14h,0A1h, 40h
		db	 01h, 55h, 41h, 54h, 15h, 55h
		db	 5Fh,0F5h, 5Fh, 41h,0E0h, 1Ch
		db	 9Fh,0E9h, 42h, 05h, 28h,0B5h
		db	 4Bh, 68h, 01h, 40h, 14h, 15h
		db	 40h, 14h,0FEh,0A7h,0C0h, 50h
		db	 02h, 80h, 02h, 82h, 80h, 22h
		db	 03h, 93h, 62h, 89h, 03h, 28h
		db	 0Ah,0D8h, 3Ch, 3Ch, 00h, 28h
		db	 02h, 20h, 02h, 80h, 02h, 82h
		db	 20h, 28h,0B4h, 29h,0C7h, 98h
		db	 40h, 88h, 2Ah, 88h,0AAh, 80h
		db	 80h, 00h, 20h,0A0h,0FEh,0A7h
		db	0C0h, 14h, 15h, 40h, 14h, 14h
		db	 00h, 44h,0A0h,0B0h, 44h, 68h
		db	 15h,0F5h, 42h, 21h, 98h, 66h
		db	 66h, 00h, 03h, 24h, 51h, 41h
		db	0C8h, 0Ah,0B4h, 01h, 55h, 55h
		db	 00h, 78h,0DFh, 84h, 15h, 54h
		db	 14h, 22h, 08h, 80h, 3Ch, 17h
		db	0D5h,0DCh, 0Bh, 3Ah, 80h, 22h
		db	 1Eh, 96h, 15h, 40h, 22h, 28h
		db	 01h, 40h, 01h, 55h, 40h,0FEh
		db	0A7h,0C0h, 02h, 80h, 28h, 0Ah
		db	 22h, 29h, 10h, 02h,0BCh, 01h
		db	 4Ah, 01h, 12h, 14h,0E3h,0C3h
		db	 04h, 13h, 60h,0D8h, 50h, 50h
		db	 00h, 05h, 02h,0A8h, 8Ah,0A2h
		db	0A0h, 11h, 05h, 24h,0D8h, 90h
		db	 8Ah,0A0h, 20h, 28h,0FEh,0A7h
		db	0C0h, 52h, 82h, 82h, 00h,0D0h
		db	 14h, 01h, 54h, 41h, 66h, 05h
		db	 11h, 05h, 6Ch, 9Ch,0CDh,0D3h
		db	0DCh, 5Dh, 5Fh, 07h, 38h, 01h
		db	 55h, 40h, 01h, 40h, 01h,0B4h
		db	 55h, 55h, 00h, 48h, 08h, 14h
		db	0A0h, 28h, 0Ah,0AAh,0A2h,0A2h
		db	 00h,0CDh, 40h, 14h, 91h,0BCh
		db	0D8h, 02h, 81h, 54h, 9Dh, 7Dh
		db	 41h, 41h, 00h, 40h, 14h, 14h
		db	 00h,0FEh,0A7h,0C0h, 0Ah, 28h
		db	0A0h, 6Ch,0F7h, 81h, 42h, 82h
		db	 80h, 2Fh,0EFh, 2Eh, 19h, 9Ah
		db	 55h, 8Fh,0ACh, 02h,0AAh, 8Ah
		db	 02h, 34h, 20h, 20h, 00h, 28h
		db	 0Bh, 27h, 9Bh,0DBh, 07h, 80h
		db	 02h, 80h, 28h,0FEh,0A7h,0C0h
		db	 28h, 07h,0ADh, 14h, 14h, 00h
		db	 01h, 40h, 55h, 50h,0DEh, 60h
		db	 06h,0C0h, 2Dh, 17h, 3Bh, 44h
		db	 5Ah, 43h,0D4h, 15h, 41h, 40h
		db	 01h, 41h, 55h, 55h, 02h, 50h
		db	0D5h,0D6h, 80h, 0Bh, 68h, 14h
		db	 28h, 3Dh, 74h,0A0h, 19h, 03h
		db	0C7h, 54h, 3Dh,0EEh, 9Bh, 01h
		db	 55h, 55h, 00h, 41h, 55h, 55h
		db	 00h, 54h, 14h, 8Ah, 80h, 0Ah
		db	 15h, 54h, 15h, 55h, 40h, 14h
		db	0FEh,0A7h,0C0h, 0Eh, 54h, 31h
		db	 80h, 57h, 8Fh, 0Fh, 01h, 10h
		db	 1Eh, 01h, 10h, 50h, 7Ch,0E0h
		db	 0Ch, 60h, 14h,0FAh,0E4h, 28h
		db	 1Ch, 22h, 9Ch, 1Ch,0E4h, 58h
		db	0A8h, 0Ah, 02h, 28h, 2Ah, 06h
		db	0C7h, 54h, 3Dh,0EEh, 9Bh, 08h
		db	 82h, 20h, 0Ah, 02h, 80h,0FEh
		db	0A7h,0C8h, 20h, 39h,0E4h, 5Dh
		db	 82h, 86h,0D4h, 14h, 03h, 18h
		db	 2Fh, 80h, 50h, 28h, 28h, 00h
		db	0A0h, 54h,0EAh, 36h, 02h, 80h
		db	 01h, 55h, 54h, 15h, 55h, 77h
		db	0DFh,0F4h, 51h, 05h,0D8h,0D7h
		db	 8Dh, 54h, 80h,0B5h, 41h, 7Dh
		db	 5Fh, 5Dh, 57h, 63h, 40h, 13h
		db	0D6h, 9Ch, 29h,0E0h,0F3h, 16h
		db	 21h, 40h,0B4h, 28h, 01h, 54h
		db	 01h, 40h, 01h, 40h,0FEh,0A7h
		db	0C2h, 80h, 89h, 38h,0AAh,0A1h
		db	 40h, 05h,0E4h, 74h,0D6h, 80h
		db	 1Eh, 05h, 0Bh,0A6h, 82h, 80h
		db	 02h, 80h, 05h, 01h, 10h, 20h
		db	 04h,0E1h,0D1h,0A0h, 20h,0A0h
		db	0AAh, 80h, 27h,0A1h,0F9h, 40h
		db	 3Dh,0E4h, 85h, 14h,0A0h,0FEh
		db	0A7h,0C0h, 14h, 13h,0D4h, 8Ch
		db	0D2h, 50h, 14h,0A0h, 3Ch, 10h
		db	0E3h,0C0h, 03h, 17h, 05h, 01h
		db	 55h, 42h, 96h, 37h, 77h, 5Eh
		db	 40h, 26h, 22h, 94h, 14h, 01h
		db	 41h, 5Dh, 7Dh,0F5h,0FCh, 01h
		db	 31h,0E9h,0A5h, 82h,0EEh, 9Dh
		db	 02h, 80h, 01h, 40h, 01h, 40h
		db	 3Eh,0A8h, 28h,0A2h, 20h,0FEh
		db	0A7h,0C0h,0C9h, 4Ch, 02h, 22h
		db	 28h,0D9h, 38h, 03h, 5Ch, 14h
		db	 02h, 80h, 14h, 50h, 50h, 00h
		db	 1Bh, 50h, 05h,0DEh, 0Ch,0D9h
		db	 97h, 0Dh, 6Eh,0A1h, 40h,0A0h
		db	 02h, 80h,0AAh, 28h, 02h, 80h
		db	0FEh,0A7h,0C2h,0CBh,0F0h, 88h
		db	 0Ah,0A0h, 03h, 91h,0C8h, 41h
		db	 02h, 80h, 01h, 41h, 43h,0C0h
		db	 15h, 76h,0B2h,0B4h,0B0h, 20h
		db	 15h, 55h, 55h, 00h, 54h, 14h
		db	 0Ah, 1Fh, 80h, 06h,0C7h, 38h
		db	0C1h, 80h,0A0h, 14h, 14h, 00h
		db	 15h, 40h, 0Ah, 01h, 42h,0AAh
		db	0AAh, 00h, 80h, 01h, 40h,0FEh
		db	0A7h,0C5h, 62h,0A3h, 80h, 02h
		db	 81h, 10h, 14h, 50h, 20h, 8Ah
		db	 34h,0D0h, 50h, 0Ah, 5Ah, 20h
		db	 80h, 82h, 22h, 35h, 06h,0C7h
		db	 38h,0C1h, 82h, 80h,0FEh,0A7h
		db	0C1h, 16h, 8Fh,0E0h, 01h, 54h
		db	 01h, 40h, 14h, 0Ah, 01h, 40h
		db	 01h, 55h, 54h, 15h, 55h, 54h
		db	 01h,0DCh, 97h, 73h, 01h, 40h
		db	 01h, 40h, 14h, 15h, 40h, 01h
		db	 4Ah, 89h, 55h, 40h, 01h, 41h
		db	 55h, 2Ah, 19h, 21h, 1Fh, 50h
		db	0E8h, 14h, 50h, 01h, 41h, 41h
		db	 00h, 54h, 15h, 40h, 01h, 40h
		db	 14h,0FEh,0A7h
loc_411:
		lds	sp,dword ptr [bp-78h]	; Load seg:offset ptr
		sub	ss:data_586[bp+si],ah
		mov	[bp+si],al
;*		add	byte ptr [bp+si],2Fh	; '/'
		db	 82h, 02h, 2Fh		;  Fixup - byte match
;*		fimul	word ptr [bx+di+34h]	; st = st * memory
		db	0DEh, 49h, 34h		;  Fixup - byte match
		daa				; Decimal adjust
                           lock	mov	ax,0A7FEh
		lds	di,dword ptr ss:[1A0h][bp]	; Load seg:offset ptr
		inc	ax
;*		add	bp,si
		db	 01h,0F5h		;  Fixup - byte match
		push	sp
		adc	ax,954h
		ja	loc_411			; Jump if above
		std				; Set direction flag
		jge	$-16h			; Jump if > or =
		adc	ax,5541h
		push	sp
		adc	ax,5555h
		add	[bx+si+15h],ax
		push	bp
		push	bp
		add	[bx+di+55h],al
		push	bp
		add	[si+1],dl
		inc	ax
;*		aam	67h			; 'g' undocumented inst
		db	0D4h, 67h		;  Fixup - byte match
		adc	[di],dl
		movsb				; Mov [si] to es:[di]
		cmpsb				; Cmp [si] to es:[di]
		adc	al,1
		push	bp
		inc	cx
		inc	cx
		add	[bx+si+14h],al
		adc	al,2
		db	0FEh,0A7h,0CAh, 50h, 8Ah, 80h
		db	0FCh, 8Fh, 20h, 0Dh, 1Dh,0E6h
		db	0FEh,0A7h,0C1h, 40h, 15h, 55h
		db	 41h, 41h, 00h, 40h, 01h, 41h
		db	 40h, 15h, 54h, 0Ah, 97h,0C0h
		db	 37h, 74h, 29h, 40h, 01h, 55h
		db	 55h, 06h, 54h, 14h, 01h, 41h
		db	 40h, 48h, 97h, 40h,0D4h,0C3h
		db	 01h, 40h, 01h, 41h, 40h, 01h
		db	 40h, 14h, 15h, 40h,0FEh,0A7h
		db	0C0h, 08h, 80h, 2Ah, 22h, 8Ah
		db	 18h, 03h,0E8h,0CCh
		db	61h

locloop_412:
		loopnz	locloop_412		; Loop if zf=0, cx>0

		cmpsw				; Cmp [si] to es:[di]
		db	0C0h, 15h, 55h, 40h, 01h, 41h
		db	 40h, 15h, 54h, 28h,0A0h, 01h
		db	 40h, 15h, 54h, 01h, 40h, 15h
		db	 40h, 01h, 40h, 14h, 14h, 00h
		db	 18h, 03h,0E8h,0CCh, 61h,0E0h
		db	 01h, 40h, 01h, 40h, 14h,0FEh
		db	0A7h,0C0h, 0Ah,0A0h, 02h, 88h
		db	 08h,0A0h, 18h, 03h,0FCh, 61h
		db	 80h, 4Ah, 80h, 05h,0FEh,0A7h
		db	0C0h, 01h, 41h, 54h, 01h, 54h
		db	 01h, 54h, 14h, 01h, 40h, 14h
		db	 02h,0A8h, 01h, 4Bh, 41h, 40h
		db	 14h, 14h, 00h, 01h, 41h, 40h
		db	 01h, 54h, 14h, 01h, 55h, 54h
		db	 18h,0A3h,0D4h, 60h,0CFh, 03h
		db	 1Eh, 14h, 14h, 00h, 01h, 40h
		db	0FEh,0A7h,0C0h, 0Ch, 88h,0BEh
		db	 30h, 47h, 24h, 28h, 05h,0FEh
		db	0A7h,0C0h, 01h, 55h, 41h, 55h
		db	 54h, 14h, 01h, 40h, 01h, 41h
		db	 40h, 01h, 40h, 01h, 40h, 01h
		db	 55h, 41h, 40h, 01h, 40h, 01h
		db	 40h, 01h, 54h, 15h, 54h, 15h
		db	 54h, 15h, 40h, 0Ch, 50h,0ADh
		db	 80h,0D8h, 1Bh, 18h, 01h, 54h
		db	 01h, 54h, 15h, 55h, 55h, 00h
		db	 40h,0FEh,0A7h,0C0h, 06h, 44h
		db	 56h,0C0h, 22h, 18h, 0Ah,0FEh
		db	0A7h,0C1h, 40h, 15h, 54h, 15h
		db	 40h, 15h, 55h, 40h, 14h, 14h
		db	 01h, 2Ah,0A8h, 01h, 5Eh, 17h
		db	0C0h, 01h, 40h, 14h, 14h, 01h
		db	 15h, 41h, 41h, 00h, 40h, 01h
		db	 40h, 15h, 55h, 40h, 06h, 16h
		db	0D6h,0C0h, 28h, 18h, 0Ah, 14h
		db	 01h, 40h, 15h, 55h, 54h, 14h
		db	 01h, 40h, 14h,0FEh,0A7h,0C0h
		db	 20h, 8Ah, 2Ah,0A8h, 06h, 0Bh
		db	 7Dh,0E0h, 28h, 30h,0FEh,0A7h
		db	0C0h, 01h, 41h, 41h, 01h, 54h
		db	 14h, 01h, 41h, 41h, 00h, 55h
		db	 54h, 01h, 55h, 43h,0D4h, 02h
		db	 8Ah, 14h, 01h, 40h, 14h, 14h
		db	 01h, 01h, 40h, 14h, 03h, 07h
		db	 46h,0F0h, 28h, 30h, 01h, 40h
		db	 01h, 40h, 15h, 40h,0FEh,0A7h
		db	0C0h, 09h, 03h, 50h,0B8h, 30h
		db	0FEh,0A7h,0C0h, 14h, 14h, 03h
		db	 15h, 41h, 40h, 14h, 15h, 54h
		db	 1Fh, 80h, 60h, 0Ch, 60h, 50h
		db	 15h, 40h, 15h, 55h, 41h, 55h
		db	 55h, 00h, 40h,0FEh,0A7h,0C0h
		db	0A0h, 1Fh, 80h, 18h, 01h, 64h
		db	 0Eh, 70h,0FEh,0A7h,0C0h, 02h
		db	0AAh, 80h,0A0h, 01h, 41h, 40h
		db	 14h,0C0h, 06h, 28h, 0Eh,0F6h
		db	 20h, 14h, 01h, 40h, 14h, 15h
		db	 55h, 54h,0FEh,0A7h,0C0h,0C0h
		db	 00h, 06h, 28h,0C0h, 60h,0FEh
		db	0A7h,0C0h, 01h, 55h, 55h, 02h
		db	 40h, 22h, 0Ah, 28h, 28h, 00h
		db	 60h, 01h, 80h,0C0h, 14h, 30h
		db	 01h, 40h, 14h, 15h, 41h, 40h
		db	 14h, 14h, 00h, 15h, 55h, 55h
		db	 00h, 40h,0FEh,0A7h,0C0h, 60h
		db	 07h, 40h,0C7h, 81h,0D0h, 14h
		db	0FEh,0A7h,0C0h, 15h, 54h, 01h
		db	 40h, 14h, 01h, 40h, 01h, 54h
		db	 14h, 15h, 41h, 54h, 01h, 54h
		db	 01h, 40h, 14h, 01h, 40h, 30h
		db	 01h, 20h,0C6h,0C3h,0F0h, 14h
		db	 15h, 54h, 15h, 41h, 41h, 00h
		db	 40h,0FEh,0A7h,0C0h, 30h, 07h
		db	 10h, 60h,0A5h, 60h, 14h,0FEh
		db	0A7h,0C0h, 14h, 01h, 40h, 01h
		db	 40h, 01h, 40h, 15h, 55h, 55h
		db	 00h, 54h, 14h, 14h, 00h, 01h
		db	 41h, 41h, 00h, 55h, 70h, 01h
		db	 20h, 60h,0C0h, 14h, 15h, 40h
		db	 14h, 15h, 40h, 14h,0FEh,0A7h
		db	0C0h, 18h, 01h, 20h, 30h,0C0h
		db	 14h,0FEh,0A7h,0C0h, 01h, 54h
		db	 18h, 07h, 40h, 0Ch, 17h, 28h
		db	 28h, 00h,0FEh, 80h, 24h, 18h
		db	 07h, 40h, 88h, 28h, 0Ch, 02h
		db	0C0h, 64h, 01h, 41h, 40h, 0Ch
		db	 0Bh, 80h, 2Bh, 48h, 28h, 0Eh
		db	 40h,0E4h, 0Ch, 0Bh, 80h, 5Ch
		db	 90h, 50h, 0Eh, 40h, 03h,0C0h
		db	0E4h, 0Ch, 0Bh, 80h, 5Ch, 90h
		db	 50h, 0Eh, 40h,0F0h, 03h,0C0h
		db	0E4h, 0Eh, 40h,0F0h, 03h,0C0h
		db	0E4h, 0Eh, 40h,0F0h, 03h, 27h
		db	 02h, 70h, 30h,0E4h, 0Eh, 40h
		db	0C0h, 02h, 40h,0E0h, 40h, 85h
		db	 08h, 00h, 00h, 00h, 07h,0FBh
		db	0F8h, 01h,0FBh, 00h, 02h, 3Ch
		db	 00h, 3Fh, 00h, 71h,0F8h, 09h
		db	0FCh, 01h,0C7h, 70h, 67h,0F0h
		db	 07h, 39h,0C3h,0BFh,0E0h, 1Ch
		db	0E3h, 8Ch,0FFh, 80h,0F3h, 0Fh
		db	 77h,0FEh, 03h,0CCh, 1Fh,0DFh
		db	0F8h, 0Fh, 36h, 3Eh, 7Fh, 60h
		db	 3Ch,0C8h,0F9h,0FDh,0C0h,0B3h
		db	 20h,0CDh,0D7h, 07h,0CCh, 83h
		db	36h
loc_413:
		pop	sp
		sbb	si,word ptr ds:[0F81Ch]
		jo	$+6Eh			; Jump if overflow=1
;*		fdiv	dword ptr [bp+di-1Fh]	; st = st / memory
		db	0D8h, 73h,0E1h		;  Fixup - byte match
		db	0C1h, 83h,0E1h, 8Fh, 87h, 86h
		db	 0Fh, 86h, 3Eh, 1Eh, 18h, 3Ch
		db	 18h,0F8h, 78h, 60h, 70h,0E2h
		db	0E1h,0E1h, 01h,0C3h, 8Bh, 87h
		db	 8Ch, 00h, 0Eh, 2Eh, 1Eh, 30h
		db	 00h, 30h,0F0h, 7Ch,0C0h, 00h
		db	0C3h,0C1h,0F3h, 00h, 07h
		db	6Fh

locloop_414:
		pop	es
		int	3			; Debug breakpoint
		add	[di],bl
		mov	di,301Fh
		add	[bp-4],dh
		jl	loc_413			; Jump if <
;*		pop	cs			; Dangerous-8088 only
		db	0Fh			;  Fixup - byte match
;*		fndisi				; Disable Interrupts
		db	0DBh,0E1h		;  Fixup - byte match
		mov	bl,0
		jg	loc_419			; Jump if >
		xchg	cl,ah
		add	word ptr ds:[1BBEh][bx],di
		mov	al,6
		jl	$-6			; Jump if <
		dec	si
		db	0C0h, 1Bh,0F1h,0E3h, 3Bh

locloop_415:
		add	byte ptr ds:[0CCEh],cl
		cld				; Clear direction
		add	[bp+di],bh
		cmp	[bp+di],dh
;*                         lock	add	ah,ch
		db	0F0h, 00h,0ECh		;  Fixup - byte match
		loopnz	locloop_414		; Loop if zf=0, cx>0


locloop_416:
		add	ss:data_578[bp+di],73Eh
		push	cs
		push	cs
		or	al,0F8h
		sbb	al,38h			; '8'
		cmp	[bp+di],dh
		loopnz	locloop_416		; Loop if zf=0, cx>0

		loopnz	locloop_415		; Loop if zf=0, cx>0

		mov	ss:data_579[bp+di],1E83h

locloop_417:
;*		pop	cs			; Dangerous-8088 only
		db	0Fh			;  Fixup - byte match
		push	ds
		push	cs
		or	al,78h			; 'x'
		cmp	al,70h			; 'p'
		js	$+63h			; Jump if sign=1
		loopnz	$-0Dh			; Loop if zf=0, cx>0

		db	0C1h,0C1h, 87h, 82h,0C7h, 07h
		db	 06h, 1Eh, 08h, 1Ch, 1Ch, 18h
		db	 78h, 30h,0F0h, 7Ch, 61h,0E0h
		db	0C3h,0C1h,0F3h, 87h, 83h, 0Eh
		db	 0Fh,0CCh, 1Eh, 0Ch, 79h,0BFh
		db	 30h, 78h, 31h,0E6h,0EDh,0C1h

locloop_418:
		loopnz	locloop_417		; Loop if zf=0, cx>0

		sbb	si,word ptr ds:[8107h][bx]
		mov	sp,0F83Eh
		push	ds
loc_419:
		pop	es
		loopnz	locloop_418		; Loop if zf=0, cx>0

		loopnz	$+7Ah			; Loop if zf=0, cx>0

;*		pop	cs			; Dangerous-8088 only
		db	0Fh			;  Fixup - byte match
;*		add	di,ax
		db	 01h,0C7h		;  Fixup - byte match
;*		add	ax,sp
		db	 01h,0E0h		;  Fixup - byte match
		sti				; Enable interrupts
		add	[bp+si],al
		cmp	al,0
		aas				; Ascii adjust
		add	[bx+di-68h],dh
		or	word ptr ds:[4401h][si],si
		xor	[si-70h],ah
		add	ax,4336h
		mov	byte ptr ds:[1420h],al
		mov	ch,8Ah
		cbw				; Convrt byte to word
		xor	byte ptr ss:data_454+13h[bp+si],62h	; (''('7<(p/1116<'q02227<') 'b'
		add	cx,dx
		db	 26h, 75h,0E8h, 0Fh, 3Eh,0C1h
		db	 77h,0B0h, 3Ch,0D9h, 0Dh,0DEh
		db	 40h,0F3h, 62h,0AFh, 79h, 05h
		db	0CDh, 8Eh,0ADh,0D4h, 1Dh, 36h
		db	 1Eh,0E5h,0D0h, 74h,0D8h, 53h
		db	0B5h, 41h,0B3h,0E1h, 4Eh, 84h
		db	 86h,0CBh, 87h, 3Ah, 12h, 18h
		db	 22h, 18h,0E8h, 68h, 60h, 88h
		db	0A3h,0A1h,0A1h, 83h, 62h, 8Eh
		db	 86h, 8Ah, 05h, 0Ah, 3Ah, 1Bh
		db	 38h, 1Ch, 28h,0C8h, 74h,0E0h
		db	 00h,0A3h, 21h,0D3h, 80h, 07h
		db	0EDh, 87h, 4Ch, 00h, 15h,0B7h
		db	 1Dh, 30h, 00h, 56h,0DCh, 74h
		db	0C0h, 0Fh, 5Bh, 71h,0D3h, 00h
		db	 6Dh, 69h,0C7h, 6Ch, 01h, 07h
		db	0A7h, 1Ah,0B0h, 07h, 82h, 9Ch
		db	0AAh,0C0h, 1Ah, 1Ah, 22h,0ADh
		db	 00h, 68h,0C8h, 8Ah,0B4h, 01h
		db	0A7h, 2Eh, 3Ah,0D0h, 00h,0BCh
		db	0B0h,0EBh, 41h, 82h,0F2h,0C3h
		db	0ADh, 07h, 0Ah,0CAh, 0Ch,0B4h
		db	 14h, 2Bh, 28h, 32h,0D0h, 90h
		db	0A0h,0A0h,0C9h,0C2h, 44h, 82h
		db	 83h, 27h, 0Fh, 12h
		db	0Ah, 0Ch, '\:HHQ '
		db	0F9h, 21h, 21h, 44h, 83h,0C5h
		db	 84h, 87h, 12h, 0Fh, 14h, 16h
		db	 18h, 48h, 3Ch, 90h, 5Ch, 61h
		db	 20h,0C2h, 41h, 72h, 84h, 83h
		db	 09h, 09h,0AAh, 12h, 0Ch, 6Dh
		db	0A7h,0B8h, 48h, 31h, 26h, 9Dh
		db	 41h, 20h,0ECh, 9Ah,0F5h, 04h
		db	 82h,0A2h, 72h,0B4h, 12h, 0Fh
		db	 99h, 4Ah, 30h, 4Ch, 10h, 42h
		db	 28h, 81h, 30h, 67h, 09h,0B6h
		db	 04h,0C0h,0F0h, 1Ch, 70h, 1Fh
		db	 00h, 3Fh,0FFh,0FFh,0F8h, 03h
		db	0FFh,0E0h, 1Fh,0FFh, 80h, 01h
		db	0FFh,0C0h, 07h,0FBh,0FFh, 01h
		db	0F8h, 70h, 07h,0FFh,0FFh,0C0h
		db	0FFh,0FFh,0F8h, 0Fh,0FFh,0F0h
		db	 7Fh,0FFh,0C0h,0FFh,0FFh,0E0h
		db	 07h,0F0h,0FBh,0FFh, 00h, 01h
		db	0FBh,0FFh, 00h, 7Fh,0FFh,0F8h
		db	 01h,0FFh,0F8h, 07h,0FFh,0FEh
		db	 03h,0FFh,0E0h, 1Fh,0FFh,0FFh
		db	0FEh, 03h,0FBh,0FFh, 00h, 80h
		db	0FFh,0C7h,0F8h, 07h,0FFh,0C0h
		db	 7Fh,0FFh,0E0h,0FBh,0FFh, 00h
		db	0F9h,0FFh,0FCh, 07h,0FBh,0FFh
		db	 00h,0E0h, 03h,0FEh, 03h,0FCh
		db	 0Fh,0FFh, 0Fh,0FFh,0FFh,0E0h
		db	0FFh,0FFh,0F8h, 01h,0FFh, 83h
		db	0FFh,0F8h, 07h,0F0h, 0Fh,0FFh
		db	0F8h, 07h,0F8h, 01h,0FCh, 1Fh
		db	0FEh, 7Fh,0FBh,0FFh, 02h, 80h
		db	 07h,0FCh, 07h,0FFh,0F0h, 0Fh
		db	0C0h, 03h,0FFh,0FCh, 1Fh,0E0h
		db	 01h,0FCh, 3Fh,0FCh, 01h,0C0h
		db	0FBh,0FFh, 01h,0F8h, 3Fh,0E0h
		db	 1Fh,0FFh,0E0h, 07h,0E0h,0FFh
		db	0FFh, 7Fh,0C0h, 03h,0FCh, 7Fh
		db	0F8h,0E0h, 0Fh,0FFh, 0Fh,0FFh
		db	0C0h, 7Fh, 80h, 3Fh,0FFh,0C0h
		db	 03h,0F0h,0FFh,0FFh,0C0h,0FFh
		db	0E7h,0F8h, 7Fh,0F8h,0F0h, 1Fh
		db	0FFh, 01h,0FFh, 7Fh,0FFh, 80h
		db	0FCh, 7Fh,0FFh,0F0h, 01h,0FEh
		db	 01h,0FFh,0F8h, 7Fh,0FCh,0F0h
		db	 7Fh,0FCh, 03h,0FEh,0FFh,0FFh
		db	 1Eh, 7Fh,0FFh,0F8h, 07h,0FCh
		db	0FFh,0E0h, 3Fh,0FCh, 01h,0F0h
		db	 01h,0FFh,0E0h, 07h,0F8h, 01h
		db	0FFh,0FEh, 7Fh,0FFh,0FCh, 0Fh
		db	0F8h, 1Fh,0C0h, 3Fh,0FEh, 03h
		db	0F0h, 07h,0FFh, 80h, 07h,0F0h
		db	 03h,0FFh,0FCh, 7Fh,0FFh,0FFh
		db	 1Fh,0F0h, 1Fh,0FFh,0C0h, 0Fh
		db	0E0h, 1Fh,0FEh, 0Fh,0E0h, 07h
		db	0FFh,0F8h, 3Fh,0FFh,0FFh, 80h
		db	 3Fh,0E0h, 07h,0FBh,0FFh, 00h
		db	0C0h, 7Fh,0FCh, 1Fh, 80h, 0Fh
		db	0FFh,0F0h, 3Fh,0EFh,0FFh,0E0h
		db	 3Fh,0C0h, 01h,0FBh,0FFh, 01h
		db	0F8h, 1Fh, 80h, 1Fh,0FFh,0F0h
		db	 3Fh,0E3h,0FFh,0F8h, 7Fh, 80h
		db	 7Fh,0FFh,0FCh, 03h,0FFh,0E0h
		db	 3Fh, 3Fh,0FFh,0E0h, 3Fh,0C1h
		db	0FFh,0FCh,0FFh, 07h,0FFh, 80h
		db	 07h,0FFh,0C0h, 3Fh, 7Fh,0FFh
		db	0C0h, 3Fh,0C0h,0FFh,0FEh, 01h
		db	0FEh, 1Fh,0FFh, 80h, 3Fh,0FFh
		db	0FFh, 80h, 3Fh,0C0h, 7Fh,0FFh
		db	 03h,0FEh, 3Fh,0FFh, 3Eh, 01h
		db	0FFh,0FFh, 3Fh,0C0h, 3Fh,0FFh
		db	 80h, 07h,0FCh, 7Fh,0FEh, 3Eh
		db	 03h,0FFh,0FEh, 3Fh,0C0h, 1Fh
		db	0FFh,0E0h, 07h,0FCh, 01h,0FFh
		db	0FCh, 07h,0F0h, 3Fh, 03h,0FFh
		db	0FCh, 3Fh,0C0h, 07h,0FFh,0F0h
		db	 0Fh,0F8h, 03h,0FFh,0F8h, 0Fh
		db	0F0h, 3Fh, 87h,0FFh,0F8h, 03h
		db	 80h, 3Fh,0C0h, 03h,0FFh,0F8h
		db	 1Fh,0F0h, 07h,0FFh,0F0h, 1Fh
		db	0F0h, 3Fh,0EFh,0FFh,0F8h, 07h
		db	 80h, 3Fh, 80h, 01h,0FFh,0FCh
		db	 3Fh,0F0h, 07h,0FFh,0E0h, 0Fh
		db	0FFh,0E0h, 3Fh,0E0h, 1Fh,0FFh
		db	0FFh,0F0h, 0Fh, 7Fh, 80h,0FFh
		db	0FEh, 3Fh,0E0h, 01h,0FBh,0FFh
		db	 02h,0E0h, 7Fh,0C0h, 0Fh,0FFh
		db	0FFh,0E0h, 3Fh, 7Fh, 80h, 7Fh
		db	0FFh, 7Fh,0E0h, 03h,0FEh, 3Fh
		db	0FBh,0FFh, 02h, 80h, 07h,0FFh
		db	0FFh,0C0h,0FCh,0FFh, 80h, 7Fh
		db	0FFh, 80h, 7Fh,0C0h, 07h,0C0h
		db	0FBh,0FFh, 01h,0FEh, 03h,0FBh
		db	0FFh, 00h,0F0h,0FFh, 3Fh,0FFh
		db	0C0h,0FFh,0C0h, 07h, 80h, 01h
		db	0FBh,0FFh, 00h,0E1h,0F8h,0FBh
		db	0FFh, 00h, 80h, 01h,0FFh, 1Fh
		db	0FFh,0E0h,0FFh,0C0h, 03h,0FFh
		db	0FFh, 03h,0E0h, 01h,0FFh,0FEh
		db	 03h,0FEh, 0Fh,0FFh,0F0h, 01h
		db	0FFh, 80h, 07h,0FFh,0FEh, 07h
		db	0C0h, 03h,0FFh,0FEh, 03h,0FEh
		db	 07h,0FFh,0F8h, 01h,0FFh, 80h
		db	 0Fh,0FFh,0FCh, 0Fh,0F0h, 07h
		db	0FFh,0FCh, 07h,0FCh, 03h,0FFh
		db	0FCh, 03h,0FFh, 01h,0FCh, 1Fh
		db	0FFh,0F8h, 0Fh,0F0h, 07h,0FFh
		db	0FCh, 0Fh,0F8h, 03h,0FFh,0FEh
		db	 03h,0FFh, 3Fh,0FFh,0C0h, 3Fh
		db	0FFh,0F8h, 0Fh,0FFh,0F8h, 0Fh
		db	0F0h, 01h,0FFh,0FEh, 03h,0FBh
		db	0FFh, 00h,0F0h, 7Fh,0FFh,0F0h
		db	 1Fh,0FFh,0F0h, 1Fh,0F0h, 01h
		db	0FFh,0FFh, 07h,0FEh, 03h,0FFh
		db	0FFh,0FCh,0FFh,0FFh,0E0h, 3Fh
		db	0FFh,0E0h, 3Fh,0E0h,0FFh,0FFh
		db	 87h,0FEh, 07h,0F8h, 0Fh,0FEh
		db	 01h,0FFh,0FFh,0C0h, 7Fh,0FFh
		db	0E0h, 7Fh,0C0h, 7Fh,0FFh,0CFh
		db	0FCh, 0Fh,0E0h, 07h,0FFh, 03h
		db	0FFh,0FFh, 80h,0FFh,0FFh,0C0h
		db	0FFh, 80h, 7Fh,0FFh,0FFh,0FCh
		db	 1Fh, 80h, 03h,0FCh, 07h,0FFh
		db	0FFh, 01h,0FFh,0FFh, 80h, 01h
		db	0FFh, 3Fh,0FFh,0FFh,0FCh, 1Fh
		db	 80h, 07h,0E0h, 0Fh,0FFh,0FEh
		db	 07h,0FFh,0FFh, 07h,0FEh, 3Fh
		db	0FFh,0FFh,0FCh, 1Fh, 07h, 80h
		db	 3Fh,0FFh,0FCh, 0Fh,0FFh,0FEh
		db	 1Fh,0FCh, 1Fh,0FFh,0FFh,0FCh
		db	 3Fh,0FFh,0FFh,0F0h, 1Fh,0FFh
		db	0FCh, 3Fh,0F0h, 1Fh,0FFh,0FFh
		db	0FCh, 3Fh, 80h, 03h,0FFh,0FFh
		db	0E0h, 3Fh,0FFh,0F8h, 03h,0E0h
		db	0FFh,0E0h, 0Fh,0FFh,0FFh,0FCh
		db	 1Fh,0C0h, 1Fh,0FFh,0FFh, 80h
		db	0FFh,0FFh,0E0h, 0Fh,0FFh, 03h
		db	0FFh, 80h, 07h,0FFh,0FFh,0FCh
		db	 1Fh,0E0h, 7Fh,0FFh,0FEh, 01h
		db	0FFh,0FFh,0C0h, 0Fh,0FEh, 1Fh
		db	0FEh, 07h,0FFh,0FFh,0FCh, 0Fh
		db	0F0h, 03h,0FFh,0FFh,0F8h, 03h
		db	0C0h, 07h,0FFh,0FFh, 80h, 1Fh
		db	0FCh,0FFh,0F8h, 07h,0FFh,0FFh
		db	0FCh, 07h,0FCh, 3Fh,0FFh,0FFh
		db	0E0h, 03h,0C0h, 3Fh,0FFh,0FEh
		db	 1Fh,0FCh, 03h,0FFh,0E0h, 07h
		db	0FFh,0FFh,0FCh, 01h,0FFh, 01h
		db	0FBh,0FFh, 00h, 01h,0F0h,0FFh
		db	0FFh,0F8h, 1Fh,0FFh, 3Fh,0FFh
		db	 80h, 03h,0FFh,0FFh,0FCh, 7Fh
		db	0FCh, 7Fh,0FFh,0FFh,0F8h,0FFh
		db	 8Fh,0FFh,0FFh,0E0h, 0Fh,0FBh
		db	0FFh, 00h,0FCh, 03h,0FFh,0FFh
		db	0FEh, 0Fh,0FBh,0FFh, 02h, 3Fh
		db	0FBh,0FFh, 00h, 03h,0FBh,0FFh
		db	 00h
data_831	db	0E0h			; Data table (indexed access)
		db	 03h,0FFh,0FFh,0FEh, 0Fh,0FFh
		db	0FFh,0F8h,0FFh,0FFh
data_832	db	0C0h
		db	 3Fh,0FFh,0F0h, 03h,0FFh,0FFh
		db	0FEh
data_833	db	3Fh
		db	0FFh,0FFh,0FCh, 03h,0FFh,0F0h
		db	 1Fh,0FFh, 80h, 01h,0FFh,0C0h
		db	 07h,0C0h, 07h,0F8h, 78h, 07h
		db	0FCh
data_834	db	18h			; Data table (indexed access)
		db	0E0h
data_835	db	78h			; Data table (indexed access)
		db	 0Eh, 30h, 78h, 07h,0E0h, 07h
		db	 8Ch,0F8h, 31h, 07h, 70h, 0Ch
		db	 01h, 80h, 3Fh,0FFh, 1Eh, 03h
		db	0F8h, 0Ch, 1Fh,0E2h,0C0h, 80h
		db	 04h, 06h, 07h,0E0h,0F8h, 01h
		db	0E0h,0FCh, 18h,0E0h, 01h,0C4h
		db	 60h, 03h, 38h, 06h, 08h, 3Ch
		db	 07h, 80h, 1Fh,0E0h,0FFh,0F0h
		db	 01h, 06h, 03h, 08h, 18h, 04h
		db	 01h,0E4h, 03h, 10h,0E0h
data_836	dw	1F70h			; Data table (indexed access)
		db	0FFh, 07h, 80h, 06h, 7Ch, 06h
		db	 08h, 0Fh,0F0h, 06h, 18h, 07h
		db	 82h, 03h, 20h, 01h, 80h, 03h
		db	0E0h, 0Fh, 80h, 7Ch, 38h, 03h
		db	0D8h
		db	0Ch
data_837	db	10h
		db	 38h, 0Ch, 03h, 80h, 60h, 1Ch
		db	 02h, 03h, 40h, 03h, 02h, 30h
		db	 7Fh, 07h,0C0h, 40h, 1Eh, 20h
		db	 18h, 08h, 18h, 03h,0E0h, 80h
		db	 38h,0F4h, 03h, 80h, 06h, 01h
		db	 18h,0F0h,0F0h, 3Ch, 01h, 80h
		db	 70h, 40h, 30h, 04h, 0Ch, 01h
		db	 30h, 01h,0E1h, 18h, 06h, 80h
		db	 06h, 01h, 0Ch, 0Fh,0FFh,0E0h
		db	0E0h, 02h,0C0h, 80h, 60h, 03h
		db	 03h, 80h, 0Ch, 06h, 01h,0C2h
		db	 06h, 80h, 03h, 01h, 0Ch, 01h
		db	 80h, 03h, 80h, 04h, 01h, 81h
		db	0C0h,0E1h, 80h, 80h, 06h, 08h
		db	 03h, 81h, 1Ch, 40h, 03h, 02h
		db	 0Ch, 06h, 1Eh, 08h, 07h, 02h
		db	 01h, 80h, 1Fh, 80h, 03h, 10h
		db	 07h,0E0h, 30h, 40h, 01h,0E0h
		db	 1Ch
data_838	dw	180Ch, 870h, 40Ch	; Data table (indexed access)
		dw	8003h
		db	0C0h, 20h, 0Eh, 3Fh,0E0h, 20h
		db	 3Fh,0F0h, 18h, 60h, 01h,0C0h
		db	 10h, 18h, 08h, 07h, 40h, 60h
		db	 40h, 1Ch, 18h, 30h, 80h, 03h
		db	 20h, 70h, 10h, 0Eh, 40h, 10h
		db	 18h, 40h, 38h, 06h,0E0h, 03h
		db	 06h, 20h, 60h, 20h, 0Ch, 40h
		db	 1Ch, 06h, 80h, 70h, 01h, 80h
		db	 03h, 80h, 0Ch, 1Ch, 40h,0E0h
		db	 40h, 18h, 40h, 3Ah, 03h, 01h
		db	0E0h, 78h, 7Eh, 18h, 30h, 40h
		db	0C0h, 80h, 30h, 40h, 31h, 01h
		db	 80h, 02h, 01h,0C0h, 0Fh,0FFh
		db	0C0h, 60h, 60h, 40h,0C1h, 70h
		db	 40h, 30h, 80h,0C0h, 04h, 01h
		db	 80h,0C0h,0C0h, 41h, 82h,0E0h
		db	 40h, 30h, 40h, 60h, 08h, 03h
		db	 80h, 01h, 80h, 01h, 80h, 07h
		db	0FCh, 41h,0C4h, 01h,0C0h, 40h
		db	 30h, 20h, 18h, 08h, 03h, 06h
		db	 03h, 08h, 0Ch, 40h,0C4h, 03h
		db	 83h, 80h, 40h, 30h, 18h, 0Ch
		db	 10h, 07h, 0Ch, 06h, 10h, 0Ch
		db	 40h, 78h, 07h, 04h, 60h, 40h
		db	 30h, 04h, 06h, 20h, 0Eh, 07h
		db	0FFh,0E0h, 18h, 0Ch, 20h, 0Ch
		db	 40h, 10h, 06h, 08h, 60h, 40h
		db	 70h, 02h, 03h, 40h, 0Ch, 01h
		db	0F8h, 1Fh,0F0h, 18h, 40h, 18h
		db	 20h, 0Ch, 30h,0C0h, 80h, 60h
		db	 01h, 01h, 80h, 40h, 1Ch, 02h
		db	 1Fh,0FFh, 80h, 30h, 10h, 18h
		db	0C0h,0C0h, 80h, 60h, 80h,0C0h
		db	 80h, 18h, 04h, 01h,0FFh,0C0h
		db	 60h, 08h, 3Fh, 03h, 80h, 01h
		db	 60h, 80h, 60h, 80h, 38h, 08h
		db	 3Fh, 3Fh, 01h,0C0h, 04h, 0Eh
		db	 01h,0E0h, 40h, 30h, 01h, 30h
		db	 08h, 60h, 02h, 1Eh, 07h, 03h
		db	 7Ch, 02h,0E0h, 20h, 18h, 01h
		db	 30h, 0Fh,0C0h, 04h,0FFh,0F4h
		db	 1Ch, 02h, 01h,0FFh,0C0h, 04h
		db	 01h,0C0h, 10h, 0Ch, 02h, 70h
		db	 08h, 01h,0C0h, 08h, 38h, 04h
		db	 01h, 80h, 04h, 01h, 80h, 08h
		db	 06h, 02h, 60h, 01h,0FCh, 10h
		db	 03h, 80h, 10h, 0Ch, 08h, 03h
		db	 80h, 08h, 03h, 80h, 04h, 03h
		db	 04h,0E0h, 3Eh, 03h,0C0h, 20h
		db	 07h, 10h, 0Ch, 08h, 03h, 10h
		db	 07h, 04h, 01h, 84h,0C0h,0C0h
		db	 30h, 40h, 06h, 0Fh,0F8h, 10h
		db	 06h, 10h, 0Eh, 02h, 01h, 84h
		db	0C0h, 03h, 0Ch, 80h, 0Ch, 20h
		db	 0Eh, 20h, 0Ch, 02h,0C8h, 01h
		db	0C0h, 04h, 02h, 01h, 18h, 40h
		db	 1Ch, 40h, 18h, 01h, 68h, 01h
		db	 80h, 08h, 07h,0F0h, 01h, 02h
		db	 30h, 80h, 18h, 80h, 30h, 80h
		db	 30h, 03h, 80h, 10h, 1Ch, 08h
		db	 80h, 04h, 60h, 01h, 30h, 01h
		db	 60h, 80h, 03h, 20h, 70h, 04h
		db	 03h, 80h, 08h,0C0h, 06h, 60h
		db	 06h,0C0h, 40h, 03h, 20h, 60h
		db	 08h, 1Eh, 30h, 01h, 80h, 08h
		db	0C0h, 18h, 01h, 80h, 40h, 03h
		db	 20h,0E0h, 08h, 70h,0C0h, 03h
		db	 10h, 01h, 80h, 20h, 03h, 20h
		db	 03h, 40h,0C0h, 07h,0C0h, 03h
		db	 0Eh, 20h, 03h, 03h,0E0h,0C0h
		db	 0Eh, 20h, 03h, 40h, 40h, 1Ch
		db	 18h,0C0h, 06h, 0Ch, 1Fh, 03h
		db	 1Ch, 10h, 03h, 20h, 20h, 60h
		db	 70h, 01h, 1Ch, 10h,0C0h, 1Ch
		db	 70h, 08h, 03h, 20h, 18h, 03h
		db	 80h, 01h,0C0h, 03h,0E0h, 06h
		db	 30h, 10h, 01h, 80h,0E0h, 01h
		db	0C0h, 08h, 03h, 10h, 0Ch, 3Ch
		db	 07h, 04h, 30h, 38h, 60h, 20h
		db	 03h, 03h, 07h, 08h, 03h, 08h
		db	 03h, 80h, 01h,0C0h, 1Ch, 04h
		db	 38h,0C0h, 01h,0C0h, 20h, 03h
		db	 3Ch, 1Ch, 08h, 03h, 06h,0FCh
		db	 7Eh,0F0h, 02h, 0Fh, 8Fh, 07h
		db	 20h,0FFh,0C0h, 70h, 0Ch, 03h
		db	 01h, 80h, 03h,0FFh, 80h, 07h
		db	 80h, 01h, 70h, 1Ch, 10h, 03h
		db	0C0h, 04h, 01h, 80h, 70h,0FCh
		db	0C0h,0F0h, 0Ch, 1Eh, 04h, 01h
		db	 80h, 0Fh,0F0h, 07h,0FFh, 80h
		db	 3Fh, 3Fh, 80h, 03h,0C0h, 0Fh
		db	0F0h, 04h, 01h, 80h, 0Fh,0FFh
		db	0FFh,0FCh,0FFh,0FFh,0E0h, 3Fh
		db	0FFh,0F8h, 07h,0FBh,0FFh, 00h
		db	 80h,0CCh, 12h, 00h, 00h, 00h
		db	 06h, 12h, 00h, 16h, 01h, 17h
		db	 10h, 18h, 40h, 19h, 04h, 1Ah
		db	0C0h, 1Bh, 03h, 1Dh,0F0h, 1Eh
		db	 0Fh, 24h, 30h, 25h, 02h, 26h
		db	 08h, 27h, 0Ch, 29h, 20h, 43h
		db	0BBh, 45h, 80h, 46h, 22h, 47h
		db	 0Bh, 49h,0ABh, 4Ah, 83h, 4Bh
		db	0AAh, 4Dh,0C2h, 4Eh, 0Ah, 51h
		db	 3Ah, 52h,0AEh, 53h, 0Eh, 57h
		db	0EAh, 59h,0AFh, 5Ah, 88h, 5Bh
		db	0BCh, 5Dh,0EEh, 5Eh,0FCh, 61h
		db	0B3h, 62h, 23h, 64h,0ACh, 65h
		db	 3Ch, 67h,0A0h, 68h,0E0h, 69h
		db	 8Ah, 6Ah,0B0h, 6Bh,0FAh, 6Dh
		db	 82h, 6Eh,0F3h
		db	'o,qPr/u8v?w'
		db	0FFh, 78h, 3Eh, 79h, 55h, 7Ah
		db	0B2h, 7Bh, 8Eh, 7Dh,0A2h, 7Eh
		db	0C3h, 81h,0CEh, 84h,0E2h, 86h
		db	 2Ah, 89h, 44h, 8Dh,0BAh, 90h
		db	0C8h, 91h,0E8h, 92h, 2Bh, 93h
		db	0A8h, 94h,0CFh, 95h,0E3h, 96h
		db	 11h, 97h, 8Bh, 98h,0F8h, 9Ah
		db	 41h, 9Bh,0CBh, 9Dh,0ECh, 9Eh
		db	0FDh,0A1h, 05h,0A4h, 3Bh,0A5h
		db	 8Ch,0A7h, 14h,0A9h,0B8h,0ADh
		db	0EFh,0B1h, 32h,0B4h,0A3h,0B5h
		db	0CAh,0B6h, 3Dh,0B7h,0EBh,0B9h
		db	0F2h,0C5h, 28h,0C7h, 2Eh,0C9h
		db	 33h,0CDh, 15h,0D0h, 54h,0D1h
		db	0BFh,0D2h,0F4h,0D3h, 60h,0D4h
		db	 8Fh,0D6h,0CCh,0D7h,0F5h,0D8h
		db	0FBh,0D9h,0FEh,0DDh, 66h,0DEh
		db	 7Fh,0DFh, 99h,0E4h, 48h,0E5h
		db	 6Ch,0E6h, 73h,0E7h,0BEh,0E9h
		db	0F7h,0EDh, 1Ch,0F9h, 21h,0FFh
		db	0FFh, 12h, 2Eh,0FDh, 3Fh, 55h
		db	 85h, 00h, 05h,0F5h, 3Dh,0F1h
		db	 5Ch, 00h, 1Ch,0FDh, 3Fh,0FDh
		db	 9Fh, 00h, 1Fh, 55h, 15h, 79h
		db	 00h, 00h, 15h, 12h, 00h,0DFh
		db	 00h, 12h, 00h,0FFh,0F4h, 15h
		db	 56h, 15h
		db	54h
loc_420:
		push	word ptr [si+7Fh]
		xor	ax,347Fh
		div	sp			; ax,dx rem=dx:ax/reg
		jnc	loc_420			; Jump if carry=0
		jnc	loc_420			; Jump if carry=0
		std				; Set direction flag
		aas				; Ascii adjust
		push	bp
;*		test	dx,[di+0]
		db	 85h, 55h, 00h		;  Fixup - byte match
		db	0FDh, 3Fh,0FDh, 5Fh,0FDh, 00h
		db	0FDh, 3Dh,0FDh, 9Ch,0FDh, 00h
		db	 55h, 15h, 79h, 01h, 12h, 01h
		db	0DFh, 00h, 12h
loc_421:
;*		add	bh,bh
		db	 00h,0FFh		;  Fixup - byte match
		hlt				; Halt processor
		adc	ax,1256h
;*		add	bh,dh
		db	 00h,0F7h		;  Fixup - byte match
		hlt				; Halt processor
		jnc	loc_421			; Jump if carry=0
		adc	al,[bx+si]
		push	word ptr [si+7Fh]
		adc	al,ss:[bx+si]
		push	bp
		push	sp
		jns	$+3			; Jump if not sign
		push	sp
		adc	al,[bx+si]
;*		fld	qword ptr [bx+si]	; Push onto stack
		db	0DDh, 00h		;  Fixup - byte match
		adc	al,[bp+si]
;*		fadd	dword ptr [bx+si]	; st = st + memory
		db	0D8h, 00h		;  Fixup - byte match
		mov	word ptr ds:[12A2h],ax
;*		add	bh,ch
		db	 00h,0EFh		;  Fixup - byte match
		scasw				; Scan es:[di] for ax
		mov	cl,[bp+si]
		adc	al,[bx+si]
		out	dx,al			; port 0, DMA-1 bas&add ch 0
		stosw				; Store ax to es:[di]
		db	0C8h, 02h, 12h, 00h,0AAh,0EBh
		db	 00h, 82h, 12h, 00h,0AEh,0EAh
		db	 08h, 80h, 12h, 00h,0AAh,0BBh
		db	 00h, 22h, 55h, 54h, 79h, 00h
		db	 12h, 02h,0DDh, 00h, 12h, 02h
		db	0BEh,0FDh, 28h,0A8h, 12h, 00h
		db	0EBh,0EFh, 82h, 8Bh, 12h, 00h
		db	0BBh,0BAh, 22h, 30h, 12h, 00h
		db	0AEh,0EEh, 08h, 88h, 12h, 00h
		db	0AEh,0BAh, 08h, 20h, 12h, 00h
		db	0BAh,0AEh, 20h, 08h, 12h, 00h
		db	0BAh,0BBh, 20h, 22h, 12h, 00h
		db	0ABh,0AAh, 02h, 12h, 01h,0EAh
		db	0AAh, 80h, 12h, 01h,0BAh,0AEh
		db	 20h, 08h, 12h, 00h,0AEh,0AAh
		db	 08h, 12h, 01h,0AAh,0BAh, 00h
		db	 20h, 12h, 00h, 4Bh, 00h, 12h
		db	 02h, 4Bh, 00h, 12h, 02h,0EBh
		db	0AEh, 82h, 08h, 12h, 00h,0AAh
		db	0EAh, 00h, 80h, 12h, 00h,0EEh
		db	0BAh, 88h, 20h, 12h, 00h, 4Bh
		db	 00h, 12h, 02h,0ABh,0AAh, 02h
		db	 12h, 01h,0AAh,0AEh, 00h, 08h
		db	 12h, 00h,0ABh,0AAh, 02h, 12h
		db	 01h, 4Bh, 00h, 12h, 04h, 0Ah
		db	0AFh, 12h, 01h, 03h, 02h,0EFh
		db	 12h, 01h, 10h, 22h,0BCh, 12h
		db	 02h, 0Ah,0F0h, 12h, 02h, 2Ah
		db	0C0h, 12h, 00h, 04h, 00h,0AEh
		db	0C0h, 12h, 01h,0C0h,0ABh,0C0h
		db	 12h, 02h,0ABh, 0Ah, 12h, 02h
		db	0C0h,0B3h, 12h, 02h, 02h,0F3h
		db	 12h, 02h, 0Bh,0CBh, 12h, 02h
		db	 2Fh, 0Ch, 12h, 00h, 03h, 00h
		db	0AFh, 2Ch, 12h, 02h,0BBh, 30h
		db	 12h, 02h,0BBh, 30h, 12h, 02h
		db	0FCh,0B2h, 12h, 01h, 10h, 0Bh
		db	0F0h, 12h, 01h,0C0h, 03h,0C2h
		db	 12h, 00h, 01h, 00h, 23h, 08h
		db	 12h, 01h, 40h, 0Bh,0C2h, 12h
		db	 00h, 01h, 00h, 0Bh,0C0h, 12h
		db	 01h, 40h,0ACh,0C2h, 12h, 00h
		db	 11h, 00h,0BBh,0C0h, 12h, 00h
		db	 04h, 00h,0AFh, 0Ah, 12h, 02h
		db	 08h,0B3h, 12h, 00h, 01h, 00h
		db	 23h,0F3h, 12h, 02h, 8Bh,0CBh
		db	 12h, 00h, 0Ch, 00h, 2Fh,0CCh
		db	 12h, 02h,0AFh, 2Ch, 12h, 02h
		db	0BBh, 30h, 12h, 02h,0BBh, 30h
		db	 12h, 02h,0FCh,0B2h, 12h, 02h
		db	 0Bh,0F0h, 12h, 02h, 03h,0C2h
		db	 12h, 02h, 23h, 08h, 12h, 02h
		db	 0Bh,0C2h, 12h, 02h, 0Bh,0C0h
		db	 12h, 02h,0ACh,0C2h, 12h, 02h
		db	0BBh,0C0h, 12h, 02h,0AFh, 0Ah
		db	 12h, 02h, 08h,0B3h, 12h, 02h
		db	 23h,0F3h, 12h, 02h, 8Bh,0CBh
		db	 12h, 02h, 2Fh,0CCh, 12h, 02h
		db	0AFh, 2Ch, 12h, 02h,0BBh, 30h
		db	 12h, 02h,0BBh, 30h, 12h, 02h
		db	0FCh,0B2h, 12h, 02h,0AEh, 2Bh
		db	 12h, 02h,0BCh,0AEh, 12h, 00h
		db	 04h, 00h,0FCh,0ACh, 12h, 00h
		db	 30h, 00h,0F2h,0F3h, 12h, 01h
		db	 40h, 0Fh,0C2h, 12h, 00h, 04h
		db	 01h, 3Ch, 8Bh, 12h, 02h, 32h
		db	 2Fh, 12h, 00h, 10h, 01h,0F0h
		db	0FFh, 12h, 01h, 10h,0E2h,0B8h
		db	 12h, 01h, 44h, 0Ah,0FCh, 12h
		db	 02h, 8Ah,0E2h, 12h, 01h, 50h
		db	0ABh,0F3h, 12h, 01h, 40h,0AFh
		db	0CBh, 12h, 00h, 01h, 00h,0FFh
		db	 0Bh, 12h, 00h, 04h, 00h,0FCh
		db	 3Ch, 12h, 00h, 40h, 00h,0C0h
		db	0B3h, 12h, 02h,0AEh, 2Bh, 12h
		db	 02h,0BCh,0AEh, 12h, 02h,0F0h
		db	0ACh, 12h, 02h,0C2h,0F0h, 12h
		db	 00h, 01h, 00h, 0Fh, 02h, 12h
		db	 02h, 30h, 8Ah, 12h, 01h, 01h
		db	 32h, 2Bh, 12h, 02h,0C0h,0ABh
		db	 12h, 02h

locloop_422:
		loop	$-46h			; Loop if cx > 0

		adc	al,[bp+si]
		or	dh,al
		adc	al,[bx+si]
		add	[bx+si],ax
		mov	ax,dx
		adc	al,[bp+si]
		stosw				; Store ax to es:[di]
		db	0F3h, 12h, 00h, 10h, 00h,0BBh
		db	0CBh, 12h, 00h,0C0h, 00h,0FCh
		db	 0Bh, 12h, 02h,0F0h, 3Ch, 12h
		db	 02h,0F0h,0B3h, 12h, 02h,0AEh
		db	 2Bh, 12h, 02h,0BCh,0AEh, 12h
		db	 02h,0FCh,0ACh, 12h, 02h,0F2h
		db	0F3h, 12h, 02h, 0Fh,0C2h, 12h
		db	 02h, 3Ch, 8Bh, 12h, 02h, 32h
		db	 2Fh, 12h, 02h,0F0h,0FFh, 12h
		db	 02h,0E2h,0B8h, 12h, 02h, 0Ah
		db	0FCh, 12h, 02h, 8Ah,0E2h, 12h
		db	 02h,0ABh,0F3h, 12h, 02h,0AFh
		db	0CBh, 12h, 02h,0FFh, 0Bh, 12h
		db	 02h,0FCh, 3Ch, 12h, 02h,0C0h
		db	0B3h, 12h, 02h,0AEh, 2Bh, 12h
		db	 00h, 01h, 00h,0BDh,0AEh, 12h
		db	 02h,0F0h,0ACh, 12h, 01h, 03h
		db	0C2h,0F3h, 12h, 01h, 40h, 0Fh
		db	 42h, 12h, 00h, 01h, 00h, 31h
		db	 8Ah, 12h, 02h, 32h, 2Fh, 12h
		db	 02h,0C0h,0FCh, 12h, 02h,0E2h
		db	0B8h, 12h, 02h, 0Ah,0F0h, 12h
		db	 02h, 8Ah,0E2h, 12h, 02h
data_839	dw	0C3ABh, 112h
data_840	dw	0AF10h, 12DBh
data_841	dw	0FF02h, 120Bh
data_842	dw	400h, 0F400h
data_843	dw	123Ch, 1000h
data_844	dw	1000h, 12B3h
data_845	dw	0C001h, 0C00Bh
data_846	dw	12h, 10h
data_847	dw	213h, 212h
data_848	dw	823h, 112h
data_849	dw	0B04h, 1206h
data_850	dw	0A02h, 12C0h
data_851	dw	1900h, 0A600h
data_852	dw	12C6h, 0AA02h
data_853	dw	12C0h, 0AB02h
data_854	dw	120Ah, 802h
data_855	dw	12B3h, 2202h
data_856	dw	12F3h, 1001h
data_857	dw	0DB8Bh, 112h
data_858	dw	2F40h, 124Ch
data_859	dw	4001h, 6CAFh
data_860	dw	212h, 30BBh
data_861	dw	212h, 30BBh
data_862	dw	1000h, 1000h
data_863	dw	0B2FCh, 212h
data_864	dw	2BACh, 212h
data_865	dw	0ACBCh, 212h
data_866	dw	0ACF0h, 212h
data_867	dw	0F0C2h, 212h
data_868	dw	20Fh, 212h
data_869	dw	8A30h, 212h
data_870	dw	2F32h, 5000h
data_871	dw	5000h, 0FCC0h
		db	 00h, 10h, 00h, 10h,0C2h,0B0h
		db	 00h, 10h, 00h, 10h, 0Ah,0F0h
		db	 12h, 02h, 8Ah,0C2h, 00h, 40h
		db	 00h, 40h,0ABh,0C3h, 00h, 40h
		db	 00h, 40h,0AFh,0CBh, 05h, 00h
		db	 05h, 00h,0FFh, 0Bh, 50h, 00h
		db	 50h, 00h,0F0h, 3Ch, 12h, 03h
		db	0B3h, 00h, 40h, 00h, 40h, 0Bh
		db	0C0h, 01h, 00h, 01h, 00h, 03h
		db	 02h, 01h, 00h, 01h, 00h, 23h
		db	 08h, 12h, 02h, 0Bh, 02h, 12h
		db	 02h, 2Ah,0C0h, 00h, 40h, 00h
		db	 40h,0BBh,0C2h, 04h, 00h, 04h
		db	 00h,0EFh, 30h, 10h, 00h, 10h
		db	 00h,0BCh, 30h, 12h, 02h, 0Bh
		db	 12h, 03h, 03h, 02h, 12h, 02h
		db	 23h, 08h, 12h, 02h, 0Bh, 02h
data_872	db	12h			; Data table (indexed access)
		db	 02h, 2Ah,0C0h, 12h, 02h,0ABh
		db	0C2h, 12h, 02h,0AEh,0C0h, 12h
		db	 02h,0ABh, 08h, 00h, 01h, 00h
		db	 01h, 09h, 5Fh, 04h, 00h, 04h
		db	 00h, 0Dh,0DCh, 12h, 02h
data_873	db	21h			; Data table (indexed access)
		db	 7Ch, 17h, 02h, 39h
data_874	dw	12F0h
		db	 02h, 0Bh,0C0h, 00h, 40h, 00h
		db	 40h, 2Eh,0C0h, 00h, 40h, 00h
		db	 40h,0ABh,0C0h, 01h, 00h, 01h
		db	 00h, 2Bh, 08h, 12h, 02h, 0Bh
		db	 12h, 03h, 03h, 02h, 12h, 02h
		db	 23h, 08h, 12h, 02h, 0Bh, 02h
		db	 12h, 02h, 08h,0C0h, 00h, 41h
		db	 00h, 41h,0A2h,0C3h, 00h, 40h
		db	 00h, 40h, 88h,0C0h, 16h, 02h
		db	 23h, 0Bh, 12h, 02h,0CEh, 03h
		db	 12h, 00h, 88h, 00h,0CFh, 80h
		db	 12h, 02h,0E3h,0E0h, 12h, 00h
		db	 20h, 00h, 30h,0F8h, 12h, 02h
		db	 38h,0FAh, 12h, 01h, 80h, 0Ch
		db	0EEh, 12h, 01h,0C8h, 0Ch,0EEh
		db	 12h, 00h, 08h, 02h, 8Eh, 3Fh
		db	 12h, 01h, 02h,0F5h, 63h, 12h
		db	 00h,0C0h, 00h,0F7h, 40h, 12h
		db	 02h, 3Dh, 48h, 12h, 02h
data_875	db	0Fh			; Data table (indexed access)
		db	 60h, 12h, 02h, 03h,0A8h, 12h
		db	 00h, 0Ch, 00h, 0Fh,0AAh, 12h
		db	 00h, 02h, 00h, 03h,0EAh, 12h
		db	 01h, 30h,0A0h,0FAh, 12h, 00h
		db	 08h, 00h,0CEh, 20h, 12h, 02h
		db	0CFh, 88h, 12h, 00h, 82h, 00h
		db	0E3h,0EAh, 12h, 01h, 80h, 30h
		db	0F8h, 12h, 00h, 02h,0E0h, 3Bh
		db	0FAh, 12h, 01h, 80h, 0Ch,0EEh
		db	 12h, 01h, 80h, 0Ch,0EEh, 12h
		db	 00h, 26h, 00h, 8Eh, 3Fh, 12h
		db	 00h, 02h, 08h, 03h,0ECh, 12h
		db	 01h, 02h, 80h,0C3h, 12h, 00h
		db	 02h, 00h, 23h,0C8h, 12h, 02h
		db	 80h,0E0h, 12h, 02h, 03h,0A8h
		db	 12h, 00h, 02h, 20h, 83h,0BAh
		db	 12h, 00h,0C0h, 88h,0C3h,0EEh
		db	 12h, 01h, 20h,0A0h,0FAh, 12h
		db	 00h, 82h, 02h,0CFh, 83h, 12h
		db	 00h, 28h, 00h, 3Fh,0A0h, 12h
		db	 00h, 22h, 00h,0B3h,0A2h, 12h
		db	 00h, 08h, 80h,0CFh,0EAh, 12h
		db	 00h, 02h, 00h,0E3h,0FAh, 12h
		db	 00h, 30h, 88h,0F0h,0FFh, 12h
		db	 01h, 02h, 3Ch, 0Fh, 12h, 02h
		db	0CEh, 12h, 01h, 20h, 00h,0F8h
		db	 3Ah, 12h, 00h, 80h, 20h,0FAh
		db	 3Eh, 12h, 01h, 08h, 3Ah, 0Fh
		db	 12h, 00h, 02h, 00h, 0Fh, 83h
		db	 12h, 01h, 20h, 80h,0F0h, 12h
		db	 02h,0A2h, 0Ch, 12h, 02h,0F8h
		db	 8Ch, 12h, 00h, 88h, 02h,0FFh
		db	 03h, 12h, 00h, 20h, 0Ch, 3Eh
		db	 8Fh, 12h, 00h, 02h, 00h, 0Fh
		db	0A0h, 12h, 02h, 83h,0A2h, 12h
		db	 01h, 80h,0CFh,0EAh, 12h, 00h
		db	 03h, 00h,0E3h,0DAh, 12h, 01h
		db	 80h,0E0h,0FDh, 12h, 02h, 3Ch
		db	 0Fh, 12h, 02h,0CEh, 0Fh, 12h
		db	 02h,0E8h, 3Ah, 12h, 00h, 30h
		db	 00h, 3Ah, 3Eh, 12h, 02h, 3Ah
		db	 0Fh, 12h, 02h, 0Fh, 83h, 12h
		db	 02h, 80h,0F0h, 12h, 01h, 08h
		db	0A2h, 0Ch, 12h, 02h, 58h, 8Ch
		db	 12h, 02h,0D5h, 03h, 12h, 02h
		db	0E8h, 3Ah, 12h, 02h, 3Ah, 3Eh
		db	 12h, 02h, 3Ah, 0Fh, 12h, 02h
		db	 0Fh, 83h, 12h, 02h, 80h,0F0h
		db	 12h, 02h,0A2h, 0Ch, 12h, 02h
		db	 58h, 8Ch, 12h, 02h,0D5h, 03h
		db	 12h, 02h,0E8h, 3Ah, 12h, 02h
		db	 3Ah, 3Eh, 12h, 02h, 3Ah, 0Fh
		db	 12h, 02h, 0Fh, 83h, 12h, 02h
		db	 80h,0F0h, 12h, 02h,0A2h, 0Ch
		db	 12h, 02h,0F8h, 8Ch, 10h, 00h
		db	 10h, 00h, 3Fh, 03h, 12h, 02h
		db	0F5h, 60h, 12h, 02h, 37h, 40h
		db	 10h, 00h, 10h, 00h, 3Dh, 48h
		db	 12h, 02h, 0Fh, 60h, 04h, 40h
		db	 04h, 40h, 2Fh,0E8h, 12h, 02h
		db	 03h,0AAh, 01h, 00h, 01h, 00h
		db	 03h,0EAh, 00h, 40h, 00h, 40h
		db	0A0h,0EAh, 04h, 00h, 04h, 00h
		db	 0Eh, 83h, 12h, 02h, 0Fh,0A0h
		db	 00h, 40h, 00h, 40h, 83h,0E2h
		db	 12h, 02h,0C3h,0EAh, 01h, 00h
		db	 01h, 00h,0E3h,0FAh, 00h, 54h
		db	 00h, 54h,0E0h,0FFh, 10h, 05h
		db	 10h, 05h, 3Ch, 0Fh, 04h, 00h
		db	 04h, 00h, 0Eh, 12h, 03h, 0Eh
		db	 83h, 12h, 02h, 0Fh,0A0h, 12h
		db	 02h, 83h,0A2h, 01h, 00h, 01h
		db	 00h,0C3h,0EAh
loc_423:
		add	[bx+si],ax
		add	[bx+si],ax
		jcxz	loc_423			; Jump if cx=0
;*		add	[bx+si+0],al
		db	 00h, 40h, 00h		;  Fixup - byte match
		db	 40h,0E0h,0FFh, 00h, 05h, 00h
		db	 05h, 3Ch, 0Fh, 12h, 02h, 0Eh
		db	 12h, 03h, 0Eh, 83h, 12h, 02h
		db	 0Fh,0A0h, 12h, 02h, 83h,0A2h
		db	 12h, 02h,0CFh,0EAh, 12h, 02h
		db	0E3h,0DAh, 12h, 02h,0E0h, 3Dh
		db	 12h, 02h, 3Ch, 0Fh, 12h, 02h
		db	0CEh, 0Fh, 12h, 02h, 0Eh, 83h
		db	 12h, 02h, 0Fh,0A0h, 12h, 02h
		db	 83h
loc_424:
		mov	byte ptr ds:[212h],al
		retn
			                        ;* No entry point to code
;*		jmp	far ptr loc_436		;*
		db	0EAh
		dw	212h, 0FAE3h		;  Fixup - byte match
		db	 12h, 02h,0E0h
data_876	db	0FFh			; Data table (indexed access)
		db	 12h, 02h, 3Ch, 0Fh, 12h, 02h
		db	0CEh, 12h, 03h,0CEh, 03h, 12h
		db	 02h,0CFh, 80h, 12h, 02h,0E3h
		db	0E0h, 12h, 02h, 30h,0F8h, 12h
		db	 02h, 38h,0FAh, 12h, 02h, 0Ch
		db	0EEh, 12h, 02h, 0Ch,0EEh, 12h
		db	 02h, 8Eh, 3Fh, 12h, 03h,0E0h
		db	 12h, 02h, 80h,0C0h, 12h, 02h
		db	 20h,0C8h, 12h, 02h, 80h,0E0h
		db	 12h, 02h, 03h,0A8h, 12h, 02h
		db	 83h,0BAh, 12h, 02h, 03h,0EAh
		db	 12h, 02h,0A0h,0FAh, 12h, 02h
		db	0F5h, 60h, 12h, 02h, 37h, 40h
		db	 12h, 02h, 3Dh, 48h, 12h, 02h
		db	 0Fh, 60h, 12h, 02h, 03h,0A8h
		db	 12h, 02h, 03h,0AAh, 12h, 02h
		db	 03h,0EAh, 12h, 02h,0A0h,0EAh
		db	 12h, 02h,0CEh, 03h, 12h, 02h
		db	0CFh, 80h, 12h, 02h,0E3h,0E0h
		db	 10h, 00h, 10h, 00h, 30h,0F8h
		db	 10h, 00h, 10h, 00h, 38h,0FAh
		db	 00h, 40h, 00h, 40h, 0Ch,0EEh
		db	 00h, 40h, 00h, 40h, 0Ch,0EEh
		db	 00h, 14h, 00h, 14h, 8Eh, 3Fh
		db	 12h, 02h,0E8h, 3Ah, 12h, 02h
		db	 3Ah, 3Eh, 10h, 00h, 10h, 00h
		db	 3Ah, 0Fh, 01h, 00h, 01h, 00h
		db	 0Fh, 83h, 12h, 02h, 80h,0F0h
		db	 12h, 02h,0A2h, 0Ch, 00h, 04h
		db	 00h, 04h,0F8h, 8Ch, 14h, 00h
		db	 14h, 00h, 3Fh, 03h, 40h, 00h
		db	 40h, 00h,0CEh, 20h, 44h, 00h
		db	 44h, 00h,0CFh, 88h, 01h, 00h
		db	 01h, 00h, 23h,0EAh, 12h, 02h
		db	 30h,0F8h, 00h, 40h, 00h, 40h
		db	 38h,0FAh, 00h, 40h, 00h, 40h
		db	 0Ch,0ECh, 00h, 40h, 00h, 40h
		db	 0Ch,0EEh, 12h, 02h, 8Eh, 3Fh
		db	 12h, 03h,0E0h, 12h, 02h, 80h
		db	 12h, 03h, 20h,0C8h, 12h, 02h
		db	 80h, 20h, 12h, 02h, 03h, 20h
		db	 12h, 02h, 80h, 88h, 12h, 02h
		db	 03h,0A2h, 12h, 02h,0A0h,0E8h
		db	 12h, 02h,0ABh, 22h, 12h, 02h
		db	0ABh, 2Ah, 41h, 00h, 41h, 00h
		db	0EFh, 0Ah, 01h, 00h, 01h, 00h
		db	0AFh, 2Ah, 04h, 00h, 04h, 00h
		db	0ACh, 23h, 04h, 00h, 04h, 00h
		db	0ECh, 0Eh, 10h, 00h, 10h, 00h
		db	0F0h, 0Eh, 40h, 01h, 40h, 01h
		db	0C0h, 03h, 12h, 02h, 08h,0B3h
		db	 12h, 02h, 22h,0F3h, 12h, 02h
		db	0ABh,0CBh, 00h, 04h, 00h, 04h
		db	 2Fh, 0Ch, 00h, 04h, 00h, 04h
		db	0AFh, 2Ch, 12h, 02h,0BBh, 30h
		db	 00h, 10h, 00h, 10h,0BBh, 30h
		db	 00h, 10h, 00h, 10h,0FCh,0B0h
		db	 12h, 02h, 08h,0B3h, 00h, 10h
		db	 00h, 10h, 22h,0F3h, 00h, 41h
		db	 00h, 41h,0ABh,0CBh, 12h, 02h
		db	 2Fh, 0Ch, 01h, 04h, 01h, 04h
		db	0AFh, 2Ch, 05h, 00h, 05h, 00h
		db	0BFh, 30h, 01h, 10h, 01h, 10h
		db	0BBh, 30h, 04h, 00h, 04h, 00h
		db	0FCh
data_877	db	12h			; Data table (indexed access)
		db	 03h,0BBh, 80h, 00h, 01h, 00h
		db	 01h,0BCh, 03h, 12h, 02h,0BCh
		db	 08h, 10h, 00h, 10h, 00h,0F0h
		db	 22h, 10h, 00h, 10h, 00h,0B0h
		db	 0Ah, 40h, 01h, 40h, 01h,0C0h
		db	 2Bh, 40h, 00h, 40h, 00h,0C0h
		db	 0Ch, 12h, 08h,0ABh, 2Ah, 04h
		db	 00h, 04h, 00h,0AEh, 0Ah, 01h
		db	 00h, 01h, 00h,0BBh, 23h, 41h
		db	 01h, 41h, 01h,0EBh, 0Bh, 00h
		db	 01h, 00h, 01h,0BCh, 0Bh, 19h
		db	 02h,0ACh, 1Ch, 10h, 00h, 10h
		db	 00h,0F0h, 0Ch, 40h, 00h, 40h
		db	 00h,0C0h, 12h, 03h,0AEh, 22h
		db	 12h, 02h,0FEh, 08h, 12h, 02h
		db	0C2h, 22h, 12h, 02h,0C3h, 0Ah
		db	 12h, 02h, 0Ah, 82h, 12h, 02h
		db	 22h,0CAh, 12h, 02h, 0Ah,0C2h
		db	 12h, 02h, 2Ah,0CAh, 12h, 02h
		db	0ABh, 22h, 12h, 02h,0ABh, 0Ah
		db	 12h, 02h,0A8h, 2Ah, 12h
data_878	db	2
		db	0A8h, 8Ah, 12h, 02h,0B8h, 2Ah
		db	 12h, 02h,0AEh, 0Ah, 12h, 02h
		db	0AEh, 2Ah, 12h, 02h,0BAh, 0Ah
		db	 00h, 40h, 00h, 40h,0AEh,0C2h
		db	 12h, 02h,0AFh, 12h, 03h,0BEh
		db	0C0h, 12h, 02h,0EBh, 12h, 03h
		db	0EBh, 08h, 12h, 02h,0FBh, 22h
		db	 12h, 02h,0EFh, 02h, 12h, 02h
		db	0BBh, 02h, 12h, 02h,0AFh, 08h
		db	 01h, 00h, 01h, 00h,0BFh, 3Ah
		db	 01h, 00h, 01h, 00h,0EFh, 3Ah
		db	 00h, 01h, 00h, 01h,0BBh, 0Fh
		db	 04h, 00h, 04h, 00h,0ECh, 17h
		db	 00h, 00h, 10h, 00h,0B0h, 04h
		db	 12h, 02h,0C1h, 10h, 40h, 00h
		db	 40h, 00h,0C0h, 44h, 40h, 00h
		db	 40h, 00h,0C1h, 12h, 03h,0C4h
		db	 40h, 12h, 02h, 01h, 12h, 21h
		db	 0Ah, 3Bh, 00h, 40h, 00h, 40h
		db	 22h,0E0h, 12h, 02h,0AAh,0A3h
		db	 12h, 02h, 23h, 8Fh, 01h, 00h
		db	 01h, 00h,0A3h, 2Fh, 01h, 00h
		db	 01h, 00h, 8Bh, 88h, 12h, 02h
		db	0BBh, 03h, 10h, 00h, 10h, 00h
		db	0FCh, 82h, 01h, 00h, 01h, 00h
		db	0B3h, 02h, 01h, 00h, 01h, 00h
		db	0B3h, 08h, 12h, 02h,0CFh, 02h
		db	 12h, 02h,0CFh, 08h, 12h, 02h
		db	 2Ch, 28h, 04h, 00h, 04h, 00h
		db	0ACh, 80h, 12h, 02h,0BCh, 22h
		db	 00h, 01h, 00h, 01h,0BBh, 03h
		db	 12h, 02h, 8Ah, 22h, 00h, 10h
		db	 00h, 10h, 22h, 32h, 00h, 01h
		db	 00h, 01h, 8Ah, 0Bh, 00h, 04h
		db	 00h, 04h, 22h, 0Eh, 12h, 02h
		db	 5Ah, 00h, 12h, 02h, 28h,0B2h
		db	 00h, 01h, 00h, 01h, 82h,0B3h
		db	 12h, 02h, 2Bh,0E1h, 12h, 02h
		db	0EEh,0C0h, 00h, 11h, 00h, 11h
		db	 3Fh, 33h, 00h, 10h, 00h, 10h
		db	 82h,0B0h, 01h, 40h, 01h, 40h
		db	0ABh,0C0h, 10h, 00h, 10h, 00h
		db	0FCh, 12h, 11h, 04h, 00h, 04h
		db	 00h, 6Ch, 00h, 04h, 00h, 04h
		db	 00h, 6Ch, 00h, 10h, 00h, 10h
		db	 00h, 70h, 12h, 03h, 10h, 12h
		db	 03h, 10h, 12h, 11h, 40h, 00h
		db	 40h, 00h,0C0h, 88h, 18h, 02h
		db	0C2h,0E3h, 12h, 02h, 8Ah,0ABh
		db	 00h, 04h, 00h, 04h, 2Bh,0BCh
		db	 12h, 02h,0ACh,0F0h, 04h, 10h
		db	 04h, 10h, 2Ch,0F0h, 04h, 10h
		db	 04h, 10h,0ACh, 30h, 12h, 02h
		db	 2Ch, 12h, 03h,0EEh, 22h, 12h
		db	 02h,0BEh, 0Ah, 12h, 02h,0ABh
		db	 22h, 12h, 02h,0AEh, 0Ah, 00h
		db	 01h, 00h, 01h,0ABh, 23h, 11h
		db	 01h, 11h, 01h,0BBh, 0Bh, 01h
		db	 00h, 01h, 00h,0ABh, 22h, 00h
		db	 04h, 00h, 04h,0ACh, 0Eh, 14h
		db	 00h, 14h, 00h,0BCh, 28h, 12h
		db	 02h, 80h,0A3h, 00h, 01h, 00h
		db	 01h,0C8h, 0Bh, 00h, 01h, 00h
		db	 01h, 02h, 8Fh, 00h, 01h, 00h
		db	 01h, 08h, 83h, 12h, 02h, 22h
		db	 8Bh, 00h, 04h, 00h, 04h, 8Ah
		db	 0Ch, 12h, 02h, 22h, 30h, 19h
		db	 02h,0AEh, 3Ch, 10h, 00h, 10h
		db	 00h,0B3h, 30h, 00h, 10h, 00h
		db	 10h,0C0h,0F0h, 18h, 02h, 1Ah
		db	 00h, 12h, 16h, 40h, 00h, 40h
		db	 00h,0C0h,0B0h, 00h, 10h, 00h
		db	 10h, 02h,0F0h, 00h, 40h, 00h
		db	 40h, 0Bh,0C3h, 12h, 02h, 2Fh
		db	 0Ch, 12h, 02h,0AFh, 20h, 01h
		db	 00h, 01h, 00h,0BBh, 00h, 01h
		db	 00h, 01h, 00h,0BBh, 30h, 04h
		db	 00h, 04h, 00h,0FCh, 82h, 10h
		db	 00h, 10h, 00h, 3Ah, 20h, 10h
		db	 00h, 10h, 00h,0B2h, 80h, 40h
		db	 00h, 40h, 00h,0CAh, 82h, 12h
		db	 02h, 02h, 88h, 12h, 02h,0A0h
		db	 82h, 00h, 01h, 00h, 01h, 20h
		db	 0Bh, 12h, 02h, 30h, 2Ch, 00h
		db	 04h, 00h, 04h, 30h, 8Ch, 00h
		db	 44h, 00h, 44h,0C0h,0ECh, 12h
		db	 02h, 08h,0B0h, 00h, 10h, 00h
		db	 10h, 22h,0B0h, 17h, 02h, 38h
		db	0B0h, 12h, 02h, 02h, 00h, 04h
		db	 40h, 04h, 40h, 0Ch,0C0h, 01h
		db	 40h, 01h, 40h, 03h,0C0h, 12h
		db	 08h,0AFh,0C2h, 12h, 02h,0BBh
		db	 0Ah, 01h, 00h, 01h, 00h,0AFh
		db	 22h, 01h, 00h, 01h, 00h,0BFh
		db	 0Ah, 04h, 00h, 04h, 00h,0BCh
		db	 2Ah, 50h, 00h, 50h, 00h,0F8h
		db	 8Bh, 12h, 02h, 02h, 2Eh, 12h
		db	 02h, 2Ch,0ABh, 12h, 02h,0BCh
		db	0BBh, 00h, 01h, 00h, 01h,0F3h
		db	0AFh, 00h, 04h, 00h, 04h,0CAh
		db	0BCh, 12h, 02h, 0Eh,0B0h, 00h
		db	 10h, 00h, 10h,0AAh,0F2h, 00h
		db	 10h, 00h, 10h, 2Eh,0F0h, 12h
		db	 02h, 8Ah,0B2h, 12h, 02h, 2Eh
		db	0F0h, 12h, 02h, 8Ah,0C2h, 10h
		db	 00h, 10h, 00h,0BAh,0CAh, 10h
		db	 00h, 10h, 00h, 3Bh, 83h, 12h
		db	 02h,0AAh,0E3h, 44h, 01h, 44h
		db	 01h,0FFh,0B3h, 12h, 02h, 3Ah
		db	0B0h, 01h, 00h, 01h, 00h, 3Bh
		db	0C0h, 01h, 00h, 01h, 00h, 0Fh
		db	0C0h, 00h, 40h, 00h, 40h, 0Eh
		db	0C0h, 04h, 40h, 04h, 40h, 0Eh
		db	0C0h, 01h, 00h, 01h, 00h, 03h
		db	 12h, 1Dh, 01h, 00h, 01h, 00h
		db	 2Fh, 02h, 12h, 02h,0AFh, 00h
		db	 01h, 00h, 01h, 00h,0BBh, 22h
		db	 04h, 00h, 04h, 00h,0ACh, 88h
		db	 12h, 02h,0F8h, 2Ah, 04h, 00h
		db	 04h, 00h,0ECh, 8Bh, 00h, 01h
		db	 00h, 01h,0B2h, 2Fh, 00h, 10h
		db	 00h, 10h,0C8h,0B0h, 40h, 10h
		db	 40h, 10h,0C2h,0B0h, 40h, 00h
		db	 40h, 00h,0CAh,0C0h, 12h, 02h
		db	 22h,0C0h, 00h, 40h, 00h, 40h
		db	 8Ah,0C0h, 00h, 40h, 00h, 40h
		db	 2Ah,0C0h, 00h, 40h, 00h, 40h
		db	0AFh,0C0h, 05h, 00h, 05h, 00h
		db	0BFh, 12h, 03h,0F0h, 00h, 10h
		db	 00h, 10h, 00h,0F0h, 00h, 10h
		db	 00h, 10h, 00h,0F0h, 00h, 40h
		db	 00h, 40h, 00h,0C0h, 00h, 40h
		db	 00h, 40h, 00h,0C0h, 12h, 18h
		db	 04h, 00h, 04h,0EFh, 2Eh, 04h
		db	 10h, 04h, 10h,0BCh, 38h, 10h
		db	 40h, 10h, 40h,0F0h,0E2h, 40h
		db	 00h, 40h, 00h,0C0h, 8Ah, 12h
		db	 02h, 82h, 23h, 12h, 02h, 80h
		db	 8Bh, 01h, 00h, 01h, 00h,0A3h
		db	0ABh, 12h, 02h, 82h, 8Bh, 10h
		db	 00h, 10h, 00h,0B2h, 2Bh, 10h
		db	 01h, 10h, 01h,0B2h,0AFh, 00h
		db	 04h, 00h, 04h, 82h, 3Ch, 00h
		db	 04h, 00h, 04h, 8Ah,0BCh, 00h
		db	 04h, 00h, 04h, 28h,0BCh, 12h
		db	 02h, 22h,0FCh, 12h, 02h, 88h
		db	0F0h, 12h, 02h, 20h,0E0h, 12h
		db	 02h, 22h, 82h, 12h, 02h,0B2h
		db	 20h, 00h, 01h, 00h, 01h,0B0h
		db	 83h, 12h, 02h,0B2h, 20h, 10h

locloop_425:
		add	[bx+si],dl
;*		add	al,dh
		db	 00h,0F0h		;  Fixup - byte match
		mov	dl,40h			; '@'
;*		add	[bx+si+0],al
		db	 00h, 40h, 00h		;  Fixup - byte match
		db	0C2h, 30h, 12h, 02h, 02h,0C2h
		db	 12h, 03h,0C0h, 12h, 03h,0C3h
		db	 12h, 03h, 0Ch, 12h, 03h, 20h
		db	 12h, 03h, 3Ch, 12h, 03h, 0Ch
		db	 12h, 14h, 08h,0B3h, 00h, 10h
		db	 00h, 10h, 22h,0F3h, 00h, 40h
		db	 00h, 40h,0ABh,0CBh, 01h, 00h
		db	 01h, 00h, 2Fh, 0Ch, 01h, 00h
		db	 01h, 00h,0AFh, 2Ch, 12h, 02h
		db	0BBh, 30h, 01h, 00h, 01h, 00h
		db	0BBh, 30h, 12h, 02h,0CFh,0B3h
		db	 00h, 40h, 00h, 40h,0BBh,0E3h
		db	 01h, 40h, 01h, 40h,0BFh,0C2h
		db	 04h, 00h, 04h, 00h,0BCh, 2Ch
		db	 10h, 00h, 10h, 00h,0F2h,0ACh
		db	 40h, 10h, 40h, 10h,0C2h,0FCh
		db	 40h, 00h, 40h, 00h,0CAh,0C3h
		db	 18h, 02h,0C3h,0CCh, 12h, 02h
		db	 2Bh, 0Ch, 01h, 00h, 01h, 00h
		db	 23h, 2Ch, 12h, 02h, 0Ch, 30h
		db	 12h, 02h, 2Ch, 80h, 04h, 00h
		db	 04h, 00h, 8Ch, 30h, 12h, 02h
		db	 32h,0B0h, 12h, 02h,0B0h,0C0h
		db	 10h, 00h, 10h, 00h, 32h,0C0h
		db	 10h, 00h, 10h, 00h,0B0h,0C0h
		db	 10h, 00h, 10h, 00h,0F2h,0C0h
		db	 40h, 00h, 40h, 00h,0C3h,0C0h
		db	 12h, 02h, 0Fh,0C0h, 00h, 40h
		db	 00h, 40h, 2Bh,0C0h, 00h, 40h
		db	 00h, 40h, 2Fh,0C0h, 12h, 02h
		db	0AFh, 12h, 03h, 3Bh, 00h, 01h
		db	 00h, 01h, 00h,0BBh, 00h, 01h
		db	 00h, 01h, 00h, 2Fh, 12h, 03h
		db	0BBh, 00h, 04h, 00h, 04h, 00h
		db	0BCh, 12h, 03h,0ACh, 12h, 03h
		db	 2Ch, 00h, 04h, 00h, 04h, 00h
		db	 0Ch, 12h, 03h, 20h, 12h, 06h
		db	 01h, 00h, 01h,0AEh, 23h, 12h
		db	 02h,0BBh, 02h, 12h, 02h,0AFh
		db	 0Ah, 12h, 02h,0ABh, 08h, 00h
		db	 04h, 00h, 04h,0BFh, 2Ch, 12h
		db	 02h,0AFh, 0Ah, 00h, 01h, 00h
		db	 01h,0BBh, 2Bh, 00h, 01h, 00h
		db	 01h,0AFh, 0Bh, 00h, 10h, 00h
		db	 10h,0EBh, 38h, 00h, 01h, 00h
		db	 01h,0BCh,0CBh, 00h, 10h, 00h
		db	 10h,0FCh,0F2h, 12h, 02h,0BCh
		db	0C2h, 00h, 01h, 00h, 01h,0FCh
		db	 33h, 04h, 01h, 04h, 01h,0BCh
		db	 33h, 04h, 01h, 04h, 01h,0FCh
		db	 33h, 12h, 02h,0FCh, 33h, 10h
		db	 04h, 10h, 04h, 3Ch, 0Fh, 00h
		db	 04h, 00h, 04h, 30h, 0Ch, 00h
		db	 01h, 00h, 01h, 00h, 83h, 12h
		db	 02h, 02h, 80h, 00h, 01h, 00h
		db	 01h, 00h, 83h, 00h, 01h, 00h
		db	 01h, 00h,0A3h, 00h, 01h, 00h
		db	 01h, 00h, 23h, 12h, 03h, 03h
		db	 12h, 02h,0BCh, 08h, 00h, 04h
		db	 00h, 04h,0BCh, 8Eh, 00h, 01h
		db	 00h, 01h,0B0h, 23h, 12h, 02h
		db	0C0h, 8Ah, 00h, 10h, 00h, 10h
		db	 0Ah,0B0h, 40h, 00h, 40h, 00h
		db	0E0h, 0Ah, 12h, 02h, 88h,0BAh
		db	 12h, 02h, 82h, 80h, 12h, 02h
		db	 28h, 3Ah, 12h, 02h, 20h, 2Eh
		db	 40h, 00h, 40h, 00h,0CCh,0BBh
		db	 40h, 11h, 40h, 11h,0E0h, 3Bh
		db	 14h, 44h, 14h, 44h, 3Ch,0CEh
		db	 01h, 00h, 01h, 00h, 23h,0BAh
		db	 00h, 01h, 00h, 01h, 22h,0FBh
		db	 00h, 40h, 00h, 40h, 08h,0FFh
		db	 00h, 50h, 00h, 50h, 8Ah,0F3h
		db	 00h, 04h, 00h, 04h, 0Eh, 0Ch
		db	 01h, 10h, 01h, 10h, 83h,0F0h
		db	 00h, 40h, 00h, 40h, 23h,0C2h
		db	 12h, 02h, 88h, 08h, 12h, 02h
		db	 2Ah, 82h, 12h, 02h,0EEh,0C2h
		db	 00h, 40h, 00h, 40h,0CBh,0C8h
		db	 12h, 02h, 8Eh,0C3h, 12h, 02h
		db	0CEh,0C8h, 00h, 40h, 00h, 40h
		db	0F3h,0C2h, 11h, 00h, 11h, 00h
		db	0F3h, 0Bh, 12h, 02h,0F3h, 2Dh
		db	 12h, 02h,0EBh, 20h, 12h, 02h
		db	0EFh, 30h, 04h, 00h, 04h, 00h
		db	0ACh,0A0h, 12h, 02h,0ECh, 80h
		db	 44h, 00h, 44h, 00h,0ECh,0C0h
		db	 12h, 02h,0B3h, 12h, 03h,0F2h
		db	 00h, 50h, 00h, 50h, 00h,0F3h
		db	 00h, 10h, 00h, 10h, 00h,0B0h
		db	 00h, 10h, 00h, 10h, 00h,0F0h
		db	 12h, 03h, 30h, 12h, 00h, 01h
		db	 00h, 01h,0C2h, 03h, 12h, 02h
		db	 33h, 80h, 12h, 02h, 22h, 20h
		db	 12h, 02h, 88h, 38h, 12h, 02h
		db	0B8h,0CAh, 12h, 02h, 3Ch,0EEh
		db	 12h, 02h, 8Ch,0CEh, 12h, 02h
		db	 8Eh, 3Fh, 12h, 02h, 0Eh, 83h
		db	 12h, 02h, 07h,0A0h, 12h, 02h
		db	 87h,0A2h, 01h, 00h, 01h, 00h
		db	 03h,0EAh, 00h, 40h, 00h, 40h
		db	 21h,0FAh, 00h, 10h, 00h, 10h
		db	0E0h, 7Fh, 00h, 04h, 00h, 04h
		db	 3Ch, 4Fh, 12h, 02h,0CEh, 44h
		db	 12h, 02h, 0Eh, 20h, 12h, 02h
		db	 0Fh, 88h, 12h, 02h,0AEh,0EAh
		db	 12h, 02h, 2Ch,0B8h, 12h, 02h
		db	 38h,0BAh, 12h, 02h, 2Ch,0AEh
		db	 12h, 02h, 2Ch,0AEh, 12h, 02h
		db	 0Ch, 3Fh, 12h, 02h, 0Bh, 38h
		db	 12h, 02h, 0Fh, 32h, 12h, 02h
		db	 8Fh, 38h, 04h, 00h, 04h, 00h
		db	 0Ch,0EAh, 00h, 40h, 00h, 40h
		db	 82h,0EAh, 00h, 40h, 00h, 40h
		db	0A2h,0FAh, 12h, 02h, 20h, 3Eh
		db	 00h, 10h, 00h, 10h,0E0h, 3Eh
		db	 00h, 10h, 00h, 10h,0BCh, 3Bh
		db	 12h, 02h,0F0h, 3Ah, 00h, 04h
		db	 00h, 04h,0BCh, 0Eh, 00h, 04h
		db	 00h, 04h,0ACh, 0Eh, 00h, 04h
		db	 00h, 04h,0FCh, 0Eh, 00h, 04h
		db	 00h, 04h,0ECh, 0Eh, 12h, 02h
		db	0F0h, 03h, 12h, 02h, 30h, 03h
		db	 12h, 02h, 82h, 0Eh, 12h, 02h
		db	 23h,0A2h, 12h, 02h, 83h, 88h
		db	 12h, 02h, 20h,0E8h, 12h, 02h
		db	 88h,0E8h, 12h, 02h,0A0h,0EAh
		db	 12h, 02h, 88h,0AAh, 12h, 02h
		db	0A3h,0AAh, 12h, 02h, 83h,0A8h
		db	 12h, 02h,0A3h,0AAh, 11h, 00h
		db	 11h, 00h,0B3h,0EAh, 12h, 02h
		db	0A0h,0F8h, 40h, 00h, 40h, 00h
		db	0C8h,0FAh, 12h, 02h,0E0h,0E8h
		db	 10h, 40h, 10h, 40h,0B8h,0FAh
		db	 10h, 00h, 10h, 00h,0B2h, 3Eh
		db	 00h, 10h, 00h, 10h,0A8h, 3Bh
		db	 04h, 10h, 04h, 10h,0ACh, 3Eh
		db	 00h, 10h, 00h, 10h,0ACh, 3Fh
		db	 10h, 00h, 10h, 00h,0FCh, 0Eh
		db	 12h, 02h,0F0h, 0Fh, 50h, 00h
		db	 50h, 00h,0F0h, 0Fh, 40h, 04h
		db	 40h, 04h,0F0h, 0Fh, 40h, 01h
		db	 40h, 01h,0C0h, 03h, 00h, 01h
		db	 00h, 01h, 00h, 03h, 00h, 01h
		db	 00h, 01h, 00h, 03h, 00h, 01h
		db	 00h, 01h, 00h, 03h, 12h, 20h
		db	 8Ah, 0Ch, 19h, 02h, 2Eh, 8Eh
		db	 00h, 44h, 00h, 44h, 82h,0CEh
		db	 12h, 02h,0A0h, 8Fh, 00h, 01h
		db	 00h, 01h, 8Eh, 33h, 00h, 01h
		db	 00h, 01h,0A8h,0C3h, 12h, 02h
		db	0EEh, 03h, 41h, 00h, 41h, 00h
		db	0FBh, 03h, 12h, 02h,0E0h,0EEh
		db	 12h, 02h,0E8h,0FAh, 12h, 02h
		db	 38h,0FEh, 12h, 02h, 3Ah, 3Eh
		db	 12h, 02h, 8Eh, 3Eh, 00h, 01h
		db	 00h, 01h,0EEh, 83h, 12h, 02h
		db	0AEh,0A0h, 04h, 00h, 04h, 00h
		db	0EEh,0A8h, 04h, 00h, 04h, 00h
		db	0FEh,0AAh, 12h, 02h,0B3h,0A8h
		db	 01h, 00h, 01h, 00h,0F3h,0E8h
		db	 00h, 40h, 00h, 40h,0C0h,0EAh
		db	 40h, 00h, 40h, 00h,0C0h,0EAh
		db	 40h, 00h, 40h, 00h,0C0h,0EAh
		db	 12h, 02h,0C0h,0EAh, 00h, 04h
		db	 00h, 04h, 00h, 3Eh, 00h, 04h
		db	 00h, 04h, 00h, 3Dh, 12h, 03h
		db	 35h, 00h, 14h, 00h, 14h, 00h
		db	 3Dh, 12h, 03h, 03h, 00h, 01h
		db	 00h, 01h, 00h, 03h, 12h, 11h
		db	 04h, 00h, 04h,0AEh, 8Eh, 12h
		db	 02h,0AEh, 83h, 10h, 00h, 10h
		db	 00h,0B2h,0A0h, 12h, 02h,0B3h
		db	0A0h, 12h, 02h,0B0h,0E8h, 40h
		db	 00h, 40h, 00h,0C0h,0E8h, 12h
		db	 03h, 38h, 12h, 08h,0E8h, 2Ah
		db	 12h, 02h,0EAh, 0Ah, 12h, 02h
		db	0CEh, 8Ah, 12h, 02h, 0Fh, 02h
		db	 12h, 02h, 20h,0E2h, 12h, 02h
		db	 88h,0E2h, 12h, 02h, 20h,0E2h
		db	 12h, 02h,0C8h,0E2h, 12h, 02h
		db	 20h,0EEh, 00h, 50h, 00h, 50h
		db	 8Ch,0FAh, 12h, 02h, 2Ch, 3Ah
		db	 00h, 10h, 00h, 10h, 80h, 3Ah
		db	 00h, 10h, 00h, 10h, 30h, 3Ah
		db	 12h, 02h,0C0h, 3Bh, 00h, 04h
		db	 00h, 04h,0C0h, 0Ch, 12h, 08h
		db	0C8h,0EAh, 12h, 02h,0A3h, 3Ah
		db	 12h, 02h, 8Ch, 3Ah, 18h, 02h
		db	0E8h,0EEh, 10h, 00h, 10h, 00h
		db	 30h, 3Ah, 17h, 02h, 30h, 3Ah
		db	 00h, 10h, 00h, 10h, 00h, 3Ah
		db	 12h, 03h, 0Eh, 12h, 02h, 0Eh
		db	 0Bh, 00h, 04h, 00h, 04h, 7Bh
		db	 00h, 00h, 04h, 00h, 04h, 0Eh
		db	0CFh, 12h, 02h, 83h, 0Fh, 00h
		db	 04h, 00h, 04h, 20h, 0Eh, 40h
		db	 04h, 40h, 04h,0CCh, 0Fh, 50h
		db	 04h, 50h, 04h,0F0h, 0Eh, 40h
		db	 00h, 40h, 00h,0C0h, 03h, 00h
		db	 01h, 00h, 01h,0CEh, 23h, 12h
		db	 02h,0CFh, 88h, 12h, 02h,0E3h
		db	0E2h, 12h, 02h, 30h,0C8h, 12h
		db	 02h, 38h,0F2h, 12h, 02h, 0Ch
		db	0ECh, 12h, 02h, 0Ch,0EEh, 12h
		db	 02h, 8Eh, 3Ch, 12h, 03h,0E0h
		db	 40h, 00h, 40h, 00h, 1Ah, 00h
		db	 40h, 00h, 40h, 00h,0E0h,0C8h
		db	 12h, 02h, 80h,0ECh, 01h, 00h
		db	 01h, 00h, 03h,0BBh, 11h, 00h
		db	 11h, 00h,0B3h,0B2h, 00h, 40h
		db	 00h, 40h, 03h,0E2h, 12h, 02h
		db	0A0h,0E2h, 12h, 02h, 83h,0EAh
		db	 12h, 02h,0A0h,0FAh, 12h, 02h
		db	0AAh
		db	3Eh

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_95		proc	near
		add	[bx+si],ax
		add	[bx+si],ax
		stosw				; Store ax to es:[di]
		aas				; Ascii adjust
		add	[si],al
		add	[si],al
		lodsb				; String [si] to al
;*		pop	cs			; Dangerous-8088 only
		db	0Fh			;  Fixup - byte match
		adc	[si],al
		adc	[si],al
		mov	al,0Eh
		inc	ax
;*		add	[bx+si+0],al
		db	 00h, 40h, 00h		;  Fixup - byte match
		db	0F0h, 3Eh, 40h, 00h, 40h, 00h
		db	0C0h, 3Ah, 00h, 10h, 00h, 10h
		db	0C0h, 3Bh, 00h, 10h, 00h, 10h
		db	 00h, 38h, 00h, 10h, 00h, 10h
		db	 00h, 3Ch, 12h, 03h, 0Ch, 00h
		db	 04h, 00h, 04h, 00h, 0Ch, 12h
		db	 03h, 0Ch, 12h, 0Eh, 20h,0ACh
		db	 12h, 02h, 83h, 38h, 00h, 40h
		db	 00h, 40h, 20h,0EFh, 00h, 10h
		db	 00h, 10h, 88h, 3Bh, 01h, 10h
		db	 01h, 10h,0ABh, 3Ah, 00h, 04h
		db	 00h, 04h,0CAh, 3Fh, 00h, 04h
		db	 00h, 04h,0BAh, 0Eh, 00h, 01h
		db	 00h, 01h,0EEh, 83h, 10h, 00h
		db	 10h, 00h, 3Ah,0A8h, 00h, 10h
		db	 00h, 10h, 0Eh,0B8h, 01h, 00h
		db	 01h, 00h, 03h,0AAh, 12h, 02h
		db	 03h,0AAh, 00h, 50h, 00h, 50h
		db	 00h,0FEh, 12h, 03h, 03h, 12h
		db	 0Eh,0C0h,0FAh, 00h, 10h, 00h
		db	 10h, 8Ch, 3Eh, 00h, 04h, 00h
		db	 04h, 30h, 0Fh, 12h, 02h,0C8h
		db	 80h, 12h, 02h,0C2h, 22h, 12h
		db	 02h,0B3h,0A8h, 12h, 02h,0ECh
		db	0FEh, 12h, 02h,0BBh, 0Bh, 12h
		db	 02h,0EEh,0FAh, 41h, 00h, 41h
		db	 00h,0F3h,0FFh, 00h, 40h, 00h
		db	 40h, 00h,0FCh, 00h, 40h, 00h
		db	 40h, 1Ah, 00h, 12h, 1Ah,0B2h
		db	 38h, 12h, 02h,0B8h, 38h, 12h
		db	 02h,0EEh, 3Eh, 10h, 00h, 10h
		db	 00h, 3Ch, 83h, 04h, 00h, 04h
		db	 00h, 0Eh, 20h, 12h, 02h, 03h
		db	 8Eh, 01h, 00h, 01h, 00h, 03h
		db	0AAh, 01h, 00h, 01h, 00h, 03h
		db	0F8h
sub_95		endp


seg_a		ends



		end	start

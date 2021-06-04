Reset: equ $0000

org $0800

CartridgeStart: LR   $5,A                ; 0800 55
                INS  10                  ; 0801 aa
CartridgeEntry: JMP  A09e6               ; 0802 29 09 e6
A0805:          LR   A,KL                ; 0805 01
                DS   $6                  ; 0806 36
                LIS  $f                  ; 0807 7f
                LR   A,KU                ; 0808 00
                LR   A,KU                ; 0809 00
                LR   A,KU                ; 080a 00
                BT   1,63                ; 080b 81 3f
                LR   A,QU                ; 080d 02
                LR   A,KU                ; 080e 00
                LIS  $d                  ; 080f 7d
                LR   A,KU                ; 0810 00
                LR   A,QL                ; 0811 03
                LR   KL,A                ; 0812 05
                LR   A,(IS)              ; 0813 4c
                DS   $6                  ; 0814 36
                LR   Q,DC                ; 0815 0e
                LR   A,KU                ; 0816 00
A0817:          LR   A,QL                ; 0817 03
                LR   KL,A                ; 0818 05
                DS   $0                  ; 0819 30
                LR   K,P                 ; 081a 08
                POP                      ; 081b 1c
                LR   A,KU                ; 081c 00
A081d:          BT   2,A0823             ; 081d 82 05
                CI   $08                 ; 081f 25 08
                OI   $6f                 ; 0821 22 6f
A0823:          LR   A,KL                ; 0823 01
                LR   KL,A                ; 0824 05
                LR   A,$a                ; 0825 4a
                DS   $6                  ; 0826 36
                LR   Q,DC                ; 0827 0e
                LR   A,KU                ; 0828 00
A0829:          BT   3,A0833             ; 0829 83 09
                LR   A,QU                ; 082b 02
                DS   $6                  ; 082c 36
                LIS  $d                  ; 082d 7d
                LR   A,KU                ; 082e 00
                LR   A,QL                ; 082f 03
                LR   P,K                 ; 0830 09
                LR   A,QU                ; 0831 02
                DS   $6                  ; 0832 36
A0833:          LIS  $d                  ; 0833 7d
                LR   A,KU                ; 0834 00
A0835:          LR   A,QL                ; 0835 03
                JMP  $640d               ; 0836 29 64 0d
A0839:          LR   A,KU                ; 0839 00
A083a:          LR   A,KU                ; 083a 00
                NS   $6                  ; 083b f6
                ASD  (IS)-               ; 083c de
                LR   $9,A                ; 083d 59
                db   $2e                 
                XS   $7                  ; 083f e7
A0840:          AS   (IS)-               ; 0840 ce
                XS   $5                  ; 0841 e5
A0842:          BF   $e,-73              ; 0842 9e b7
                BF   $2,-13              ; 0844 92 f3
                BF   $e,A083a            ; 0846 9e f3
                ASD  (IS)-               ; 0848 de
                XS   $4                  ; 0849 e4
                BF   $2,A0842            ; 084a 92 f7
A084c:          ASD  (IS)-               ; 084c de
                NS   $7                  ; 084d f7
                BF   $e,A0867            ; 084e 9e 18
                DS   (IS)                ; 0850 3c
                LIS  $e                  ; 0851 7e
                db   $ff                 
A0853:          LR   DC,H                ; 0853 10
                LIS  $1                  ; 0854 71
                NS   $2                  ; 0855 f2
                LI   $00                 ; 0856 20 00
                LR   A,KU                ; 0858 00
                LR   A,$1                ; 0859 41
                LR   A,$1                ; 085a 41
                LR   A,KU                ; 085b 00
                LR   A,KU                ; 085c 00
                LR   A,KU                ; 085d 00
                LI   $a2                 ; 085e 20 a2
                OI   $82                 ; 0860 22 82
                LR   A,KU                ; 0862 00
                LR   A,KU                ; 0863 00
                LR   $1,A                ; 0864 51
                LR   DC,H                ; 0865 10
                LR   KU,A                ; 0866 04
A0867:          LR   A,$5                ; 0867 45
                LR   A,KU                ; 0868 00
                LR   A,KU                ; 0869 00
                LR   A,KU                ; 086a 00
                LR   A,KU                ; 086b 00
                LR   A,KU                ; 086c 00
                LR   A,KU                ; 086d 00
                LR   A,KU                ; 086e 00
                NS   $7                  ; 086f f7
                LR   (IS)-,A             ; 0870 5e
                LR   W,J                 ; 0871 1d
                ASD  $3                  ; 0872 d3
                INS  12                  ; 0873 ac
                db   $a2                 
                LR   $0,A                ; 0875 50
                AM                       ; 0876 88
                AMD                      ; 0877 89
A0878:          LIS  $d                  ; 0878 7d
                ASD  $2                  ; 0879 d2
                OUTS 7                   ; 087a b7
                LIS  $4                  ; 087b 74
                db   $4f                 
                LR   A,$8                ; 087d 48
                BF   $4,A0889            ; 087e 94 0a
                OI   $5b                 ; 0880 22 5b
                LIS  $5                  ; 0882 75
                XS   $1                  ; 0883 e1
                ASD  (IS)+               ; 0884 dd
                ASD  $2                  ; 0885 d2
                BT   0,0                 ; 0886 80 00
                NS   $8                  ; 0888 f8
A0889:          INS  0                   ; 0889 a0
                LR   KL,A                ; 088a 05
                db   $4f                 
                BT   0,0                 ; 088c 80 00
                LIS  $1                  ; 088e 71
                NS   $1                  ; 088f f1
                LR   A,$5                ; 0890 45
                db   $4f                 
                BT   0,0                 ; 0892 80 00
                LI   $e2                 ; 0894 20 e2
                INS  7                   ; 0896 a7
                db   $cf                 
                BT   0,0                 ; 0898 80 00
                LIS  $1                  ; 089a 71
                NS   $1                  ; 089b f1
                LR   A,$5                ; 089c 45
                db   $4f                 
                BT   0,0                 ; 089e 80 00
                NS   $1                  ; 08a0 f1
                LIS  $3                  ; 08a1 73
                XS   $2                  ; 08a2 e2
                LR   A,(IS)+             ; 08a3 4d
                BT   0,0                 ; 08a4 80 00
                NS   $9                  ; 08a6 f9
                LR   $3,A                ; 08a7 53
                XS   $2                  ; 08a8 e2
                BT   5,0                 ; 08a9 85 00
                LR   A,KU                ; 08ab 00
                LIS  $9                  ; 08ac 79
                ASD  $3                  ; 08ad d3
                XS   $4                  ; 08ae e4
                CM                       ; 08af 8d
                BT   0,0                 ; 08b0 80 00
                NS   $9                  ; 08b2 f9
                LR   $3,A                ; 08b3 53
                XS   $2                  ; 08b4 e2
                BT   5,0                 ; 08b5 85 00
                LR   A,KU                ; 08b7 00
                INS  9                   ; 08b8 a9
                NS   $0                  ; 08b9 f0
                BT   3,A0840             ; 08ba 83 85
                LR   A,KU                ; 08bc 00
                LR   A,KU                ; 08bd 00
                INS  1                   ; 08be a1
                NS   $2                  ; 08bf f2
                INS  7                   ; 08c0 a7
                BT   1,0                 ; 08c1 81 00
                LR   A,KU                ; 08c3 00
                INS  9                   ; 08c4 a9
                NS   $0                  ; 08c5 f0
                BT   3,A084c             ; 08c6 83 85
                LR   A,KU                ; 08c8 00
                LR   A,KU                ; 08c9 00
                JMP  $f2a3               ; 08ca 29 f2 a3
                AS   $4                  ; 08cd c4
                LR   A,KU                ; 08ce 00
                LR   A,KU                ; 08cf 00
                NS   $9                  ; 08d0 f9
                BT   3,-28               ; 08d1 83 e4
                CM                       ; 08d3 8d
                BT   0,0                 ; 08d4 80 00
                NS   $9                  ; 08d6 f9
A08d7:          SL   1                   ; 08d7 13
                XS   $4                  ; 08d8 e4
                LR   A,(IS)+             ; 08d9 4d
                BT   0,0                 ; 08da 80 00
                NS   $8                  ; 08dc f8
                DS   $3                  ; 08dd 33
                XS   $2                  ; 08de e2
A08df:          LR   A,(IS)+             ; 08df 4d
                BT   0,0                 ; 08e0 80 00
                NS   $9                  ; 08e2 f9
                SL   1                   ; 08e3 13
                XS   $2                  ; 08e4 e2
                CM                       ; 08e5 8d
                BT   0,0                 ; 08e6 80 00
                LIS  $9                  ; 08e8 79
                INS  1                   ; 08e9 a1
                AS   $2                  ; 08ea c2
                AS   (IS)                ; 08eb cc
                LR   A,KU                ; 08ec 00
                LR   A,KU                ; 08ed 00
                NS   $8                  ; 08ee f8
                INS  1                   ; 08ef a1
                AS   $2                  ; 08f0 c2
                CM                       ; 08f1 8d
                BT   0,0                 ; 08f2 80 00
                NS   $0                  ; 08f4 f0
                OUTS 1                   ; 08f5 b1
                AS   $6                  ; 08f6 c6
                BT   1,A0878             ; 08f7 81 80
                LR   A,KU                ; 08f9 00
                NS   $8                  ; 08fa f8
                INS  1                   ; 08fb a1
                AS   $2                  ; 08fc c2
                CM                       ; 08fd 8d
                BT   0,0                 ; 08fe 80 00
                AS   $4                  ; 0900 c4
                INS  9                   ; 0901 a9
                LR   DC,H                ; 0902 10
                DS   $1                  ; 0903 31
                PI   $4420               ; 0904 28 44 20
                LR   A,$a                ; 0907 4a
                LR   DC,H                ; 0908 10
                LR   A,KU                ; 0909 00
                BT   4,0                 ; 090a 84 00
                LR   A,KU                ; 090c 00
                LR   A,KU                ; 090d 00
                LR   A,KU                ; 090e 00
A090f:          DS   $9                  ; 090f 39
                ADC                      ; 0910 8e
                COM                      ; 0911 18
A0912:          DS   $8                  ; 0912 38
                DS   $9                  ; 0913 39
                BR7  A092d               ; 0914 8f 18
                DS   $8                  ; 0916 38
A0917:          DS   $9                  ; 0917 39
                ADC                      ; 0918 8e
                BF   $8,56               ; 0919 98 38
A091b:          DS   $9                  ; 091b 39
                ADC                      ; 091c 8e
                COM                      ; 091d 18
                DS   $8                  ; 091e 38
                LIS  $0                  ; 091f 70
                LISU 1                   ; 0920 61
                AS   $6                  ; 0921 c6
A0922:          LIS  $0                  ; 0922 70
A0923:          LIS  $0                  ; 0923 70
                LISU 3                   ; 0924 63
                AS   $6                  ; 0925 c6
                LIS  $0                  ; 0926 70
                LIS  $0                  ; 0927 70
                LISU 5                   ; 0928 65
                AS   $6                  ; 0929 c6
A092a:          LIS  $0                  ; 092a 70
                LIS  $0                  ; 092b 70
                LISU 1                   ; 092c 61
A092d:          AS   $6                  ; 092d c6
                LIS  $0                  ; 092e 70
                LR   P,K                 ; 092f 09
                DS   $7                  ; 0930 37
                BF   $e,A0962            ; 0931 9e 30
                LR   A,$3                ; 0933 43
                OUT  $9e                 ; 0934 27 9e
                DS   $0                  ; 0936 30
                LR   A,KU                ; 0937 00
A0938:          DS   $0                  ; 0938 30
                BT   0,A092a             ; 0939 80 f0
                NS   $0                  ; 093b f0
                LR   DC,H                ; 093c 10
                LR   A,KU                ; 093d 00
                LR   A,$0                ; 093e 40
A093f:          LR   A,$0                ; 093f 40
                DS   $0                  ; 0940 30
                BT   0,A0922             ; 0941 80 e0
                XS   $0                  ; 0943 e0
                LR   DC,H                ; 0944 10
                LR   A,KU                ; 0945 00
                LR   A,$0                ; 0946 40
A0947:          LR   A,$0                ; 0947 40
                DS   $0                  ; 0948 30
                BT   0,-16               ; 0949 80 f0
                NS   $0                  ; 094b f0
                LR   DC,H                ; 094c 10
                LR   A,KU                ; 094d 00
                LR   A,$0                ; 094e 40
A094f:          LR   A,$0                ; 094f 40
                LR   $0,A                ; 0950 50
                BT   0,A0912             ; 0951 80 c0
                AS   $0                  ; 0953 c0
                LR   A,KU                ; 0954 00
A0955:          LR   A,$0                ; 0955 40
                BT   0,A08d7             ; 0956 80 80
                BT   0,A09b9             ; 0958 80 60
                BT   0,A091b             ; 095a 80 c0
                AS   $0                  ; 095c c0
                LR   A,$0                ; 095d 40
                BT   0,A08df             ; 095e 80 80
                BT   0,A09c1             ; 0960 80 60
A0962:          BT   0,A0923             ; 0962 80 c0
                AS   $0                  ; 0964 c0
                LR   A,KU                ; 0965 00
A0966:          LR   K,P                 ; 0966 08
                BT   0,4                 ; 0967 80 04
                LR   A,KL                ; 0969 01
                LR   K,P                 ; 096a 08
                BT   0,A098c             ; 096b 80 20
                LI   $08                 ; 096d 20 08
                BT   0,A0974             ; 096f 80 04
                LR   A,KL                ; 0971 01
                LR   A,KU                ; 0972 00
A0973:          LR   KU,A                ; 0973 04
A0974:          LR   A,$0                ; 0974 40
                LI   $20                 ; 0975 20 20
                LR   A,KU                ; 0977 00
                BT   0,A09b9             ; 0978 80 40
                LR   A,$0                ; 097a 40
                LR   A,KL                ; 097b 01
                LR   A,$0                ; 097c 40
                db   $ff                 
                LR   A,KL                ; 097e 01
                LR   A,KL                ; 097f 01
                LR   A,KU                ; 0980 00
                OUTS 0                   ; 0981 b0
                OUTS 0                   ; 0982 b0
                LR   A,KL                ; 0983 01
                LR   A,$0                ; 0984 40
                db   $ff                 
                LR   A,KL                ; 0986 01
                LR   A,KU                ; 0987 00
A0988:          LR   A,KL                ; 0988 01
                BT   0,A092a             ; 0989 80 a0
                LR   A,KL                ; 098b 01
A098c:          LR   A,KL                ; 098c 01
                LR   A,KU                ; 098d 00
                BT   0,A090f             ; 098e 80 80
                LR   A,KL                ; 0990 01
                BT   0,-96               ; 0991 80 a0
                LR   A,KL                ; 0993 01
                LR   A,KL                ; 0994 01
                LR   A,KU                ; 0995 00
                BT   0,A0917             ; 0996 80 80
                LR   A,KL                ; 0998 01
                BT   0,-96               ; 0999 80 a0
                LR   A,KL                ; 099b 01
                LR   A,KU                ; 099c 00
                LR   A,KL                ; 099d 01
                BT   0,A093f             ; 099e 80 a0
                LR   A,KL                ; 09a0 01
                LR   A,KL                ; 09a1 01
                LR   A,KU                ; 09a2 00
                LISU 0                   ; 09a3 60
                LISU 0                   ; 09a4 60
                LR   A,KL                ; 09a5 01
                BT   0,A0947             ; 09a6 80 a0
                LR   A,KL                ; 09a8 01
                LR   A,KL                ; 09a9 01
                LR   A,KU                ; 09aa 00
                LISU 0                   ; 09ab 60
                LISU 0                   ; 09ac 60
                LR   A,KL                ; 09ad 01
                BT   0,A094f             ; 09ae 80 a0
                LR   A,KL                ; 09b0 01
                LR   A,KU                ; 09b1 00
                LR   A,KU                ; 09b2 00
A09b3:          LR   A,KU                ; 09b3 00
                LR   A,QU                ; 09b4 02
                LR   KU,A                ; 09b5 04
                LR   A,QL                ; 09b6 03
                LR   K,P                 ; 09b7 08
                LR   KU,A                ; 09b8 04
A09b9:          PK                       ; 09b9 0c
                LR   KL,A                ; 09ba 05
                LR   DC,H                ; 09bb 10
                LR   QU,A                ; 09bc 06
                SR   4                   ; 09bd 14
                LR   QL,A                ; 09be 07
                COM                      ; 09bf 18
                LR   K,P                 ; 09c0 08
A09c1:          POP                      ; 09c1 1c
                LR   P,K                 ; 09c2 09
                DS   $0                  ; 09c3 30
                LR   A,IS                ; 09c4 0a
                DS   $4                  ; 09c5 34
                NI   $0e                 ; 09c6 21 0e
                LR   DC,Q                ; 09c8 0f
                LR   DC,Q                ; 09c9 0f
                LR   DC,Q                ; 09ca 0f
                LR   DC,Q                ; 09cb 0f
                LR   A,KL                ; 09cc 01
A09cd:          LR   A,QU                ; 09cd 02
                LR   IS,A                ; 09ce 0b
                LR   DC,Q                ; 09cf 0f
                LR   DC,Q                ; 09d0 0f
                LR   DC,Q                ; 09d1 0f
                LR   P0,Q                ; 09d2 0d
                LR   KU,A                ; 09d3 04
                LR   A,KU                ; 09d4 00
                LR   A,KU                ; 09d5 00
A09d6:          LR   QU,A                ; 09d6 06
                NS   (IS)+               ; 09d7 fd
                LR   KL,A                ; 09d8 05
                LR   A,QU                ; 09d9 02
                LR   QU,A                ; 09da 06
                LR   A,KL                ; 09db 01
                LR   QL,A                ; 09dc 07
                LR   A,KU                ; 09dd 00
A09de:          BT   0,A0a1f             ; 09de 80 40
                LI   $10                 ; 09e0 20 10
                LR   K,P                 ; 09e2 08
                LR   KU,A                ; 09e3 04
                LR   A,QU                ; 09e4 02
                LR   A,KL                ; 09e5 01
A09e6:          LIS  $c                  ; 09e6 7c
                SL   4                   ; 09e7 15
                LR   $4,A                ; 09e8 54
                LI   $3e                 ; 09e9 20 3e
                LR   $1,A                ; 09eb 51
A09ec:          LI   $66                 ; 09ec 20 66
                LR   $0,A                ; 09ee 50
A09ef:          LIS  $8                  ; 09ef 78
                SL   4                   ; 09f0 15
                XS   $4                  ; 09f1 e4
                LR   $4,A                ; 09f2 54
                PI   A1649               ; 09f3 28 16 49
                DS   $0                  ; 09f6 30
                BT   2,A09ef             ; 09f7 82 f7
                DS   $1                  ; 09f9 31
                LR   A,$1                ; 09fa 41
                CI   $35                 ; 09fb 25 35
                BF   $4,A09ec            ; 09fd 94 ee
                DCI  A0805               ; 09ff 2a 08 05
                PI   A165c               ; 0a02 28 16 5c
                LISU 4                   ; 0a05 64
                LISL 6                   ; 0a06 6e
                LIS  $0                  ; 0a07 70
                LR   (IS)+,A             ; 0a08 5d
                LI   $f0                 ; 0a09 20 f0
                LR   (IS),A              ; 0a0b 5c
                LIS  $1                  ; 0a0c 71
                LISL 3                   ; 0a0d 6b
                LR   (IS),A              ; 0a0e 5c
                LISU 5                   ; 0a0f 65
                LISL 5                   ; 0a10 6d
                LI   $f0                 ; 0a11 20 f0
                LR   (IS)+,A             ; 0a13 5d
                COM                      ; 0a14 18
                LISU 1                   ; 0a15 61
                LR   (IS),A              ; 0a16 5c
                LISU 6                   ; 0a17 66
                LISL 5                   ; 0a18 6d
                LI   $10                 ; 0a19 20 10
                LR   (IS),A              ; 0a1b 5c
                LISU 7                   ; 0a1c 67
                LR   (IS),A              ; 0a1d 5c
                LISL 3                   ; 0a1e 6b
A0a1f:          LIS  $0                  ; 0a1f 70
                LR   (IS),A              ; 0a20 5c
                PI   $13c6               ; 0a21 28 13 c6
A0a24:          PI   A122d               ; 0a24 28 12 2d
                LIS  $0                  ; 0a27 70
                XS   $8                  ; 0a28 e8
                BF   $4,A0a24            ; 0a29 94 fa
                LISU 4                   ; 0a2b 64
                LISL 1                   ; 0a2c 69
                LIS  $1                  ; 0a2d 71
                XS   (IS)                ; 0a2e ec
                LR   (IS),A              ; 0a2f 5c
                LISU 6                   ; 0a30 66
                LISL 1                   ; 0a31 69
                LIS  $2                  ; 0a32 72
                LR   (IS),A              ; 0a33 5c
                LISU 3                   ; 0a34 63
                LISL 5                   ; 0a35 6d
                COM                      ; 0a36 18
                LR   (IS),A              ; 0a37 5c
                JMP  A0bc4               ; 0a38 29 0b c4
A0a3b:          DCI  A0823               ; 0a3b 2a 08 23
                PI   A165c               ; 0a3e 28 16 5c
                LISU 3                   ; 0a41 63
                LISL 3                   ; 0a42 6b
                LR   A,(IS)              ; 0a43 4c
                LISU 4                   ; 0a44 64
                LISL 6                   ; 0a45 6e
                XS   (IS)                ; 0a46 ec
                SR   1                   ; 0a47 12
                SR   1                   ; 0a48 12
                BF   $4,A0a74            ; 0a49 94 2a
                LIS  $1                  ; 0a4b 71
                SL   4                   ; 0a4c 15
                NS   (IS)                ; 0a4d fc
                BF   $4,A0a74            ; 0a4e 94 25
                LIS  $1                  ; 0a50 71
                LR   $0,A                ; 0a51 50
                LISL 3                   ; 0a52 6b
A0a53:          LISU 6                   ; 0a53 66
                LR   A,(IS)              ; 0a54 4c
                LISU 7                   ; 0a55 67
                XS   (IS)+               ; 0a56 ed
                BF   $4,A0a5e            ; 0a57 94 06
                DS   $0                  ; 0a59 30
                BT   2,A0a53             ; 0a5a 82 f8
                BF   $0,A0a79            ; 0a5c 90 1c
A0a5e:          LR   A,(IS)-             ; 0a5e 4e
                LR   A,(IS)              ; 0a5f 4c
                COM                      ; 0a60 18
                INC                      ; 0a61 1f
                BT   4,A0a68             ; 0a62 84 05
                LISU 6                   ; 0a64 66
                AS   (IS)                ; 0a65 cc
                BF   $2,A0a79            ; 0a66 92 12
A0a68:          LIS  $1                  ; 0a68 71
                LR   $0,A                ; 0a69 50
                LISL 3                   ; 0a6a 6b
A0a6b:          LISU 6                   ; 0a6b 66
                LR   A,(IS)              ; 0a6c 4c
                LISU 7                   ; 0a6d 67
                LR   (IS)+,A             ; 0a6e 5d
                DS   $0                  ; 0a6f 30
                BT   2,A0a6b             ; 0a70 82 fa
                BF   $0,A0a79            ; 0a72 90 06
A0a74:          LISU 7                   ; 0a74 67
                LISL 3                   ; 0a75 6b
                LIS  $0                  ; 0a76 70
                LR   (IS)+,A             ; 0a77 5d
                LR   (IS),A              ; 0a78 5c
A0a79:          LISU 6                   ; 0a79 66
                LISL 3                   ; 0a7a 6b
                LIS  $0                  ; 0a7b 70
                LR   (IS)+,A             ; 0a7c 5d
                LR   (IS),A              ; 0a7d 5c
                LISU 5                   ; 0a7e 65
                LISL 5                   ; 0a7f 6d
                LIS  $f                  ; 0a80 7f
                SL   4                   ; 0a81 15
                LR   (IS)+,A             ; 0a82 5d
                LISU 1                   ; 0a83 61
                LR   A,(IS)              ; 0a84 4c
                SR   4                   ; 0a85 14
                BF   $4,A0a8a            ; 0a86 94 03
                LIS  $5                  ; 0a88 75
                LR   (IS),A              ; 0a89 5c
A0a8a:          LR   A,(IS)              ; 0a8a 4c
                SL   4                   ; 0a8b 15
                AI   $05                 ; 0a8c 24 05
                LR   (IS),A              ; 0a8e 5c
                LISU 6                   ; 0a8f 66
                LISL 1                   ; 0a90 69
                LIS  $0                  ; 0a91 70
                LR   (IS),A              ; 0a92 5c
                LISU 5                   ; 0a93 65
                LISL 2                   ; 0a94 6a
                LIS  $1                  ; 0a95 71
                LR   (IS)-,A             ; 0a96 5e
                LR   (IS)-,A             ; 0a97 5e
                LR   (IS),A              ; 0a98 5c
                LISU 7                   ; 0a99 67
                LISL 0                   ; 0a9a 68
                LIS  $3                  ; 0a9b 73
                LR   (IS)+,A             ; 0a9c 5d
                LIS  $0                  ; 0a9d 70
                LR   (IS),A              ; 0a9e 5c
                LISU 4                   ; 0a9f 64
                LISL 6                   ; 0aa0 6e
                LIS  $1                  ; 0aa1 71
                SL   4                   ; 0aa2 15
                NS   (IS)                ; 0aa3 fc
                BT   4,A0aaa             ; 0aa4 84 05
                LISU 7                   ; 0aa6 67
                LISL 1                   ; 0aa7 69
                LIS  $3                  ; 0aa8 73
                LR   (IS),A              ; 0aa9 5c
A0aaa:          LISU 2                   ; 0aaa 62
                LISL 0                   ; 0aab 68
                LIS  $0                  ; 0aac 70
                LR   (IS)+,A             ; 0aad 5d
                LR   (IS),A              ; 0aae 5c
A0aaf:          DCI  A0817               ; 0aaf 2a 08 17
                PI   A165c               ; 0ab2 28 16 5c
                DCI  A0829               ; 0ab5 2a 08 29
                PI   A165c               ; 0ab8 28 16 5c
                LISU 4                   ; 0abb 64
                LISL 6                   ; 0abc 6e
                LR   A,(IS)              ; 0abd 4c
                SR   1                   ; 0abe 12
                SR   1                   ; 0abf 12
                LR   $a,A                ; 0ac0 5a
                LISU 2                   ; 0ac1 62
                LISL 3                   ; 0ac2 6b
A0ac3:          LR   A,(IS)+             ; 0ac3 4d
                LIS  $3                  ; 0ac4 73
                LR   (IS)+,A             ; 0ac5 5d
                LIS  $7                  ; 0ac6 77
                LR   (IS),A              ; 0ac7 5c
                BR7  A0ac3               ; 0ac8 8f fa
                LISU 3                   ; 0aca 63
                LISL 7                   ; 0acb 6f
A0acc:          LIS  $7                  ; 0acc 77
                LR   (IS)-,A             ; 0acd 5e
                LIS  $3                  ; 0ace 73
                LR   (IS)-,A             ; 0acf 5e
                BR7  A0acc               ; 0ad0 8f fb
                LIS  $1                  ; 0ad2 71
                LR   $8,A                ; 0ad3 58
A0ad4:          LR   A,$8                ; 0ad4 48
                LR   IS,A                ; 0ad5 0b
                LISU 2                   ; 0ad6 62
                LR   A,(IS)              ; 0ad7 4c
                SL   1                   ; 0ad8 13
                BT   4,A0ade             ; 0ad9 84 04
                PI   A1454               ; 0adb 28 14 54
A0ade:          LIS  $4                  ; 0ade 74
                LR   $b,A                ; 0adf 5b
A0ae0:          LR   A,$b                ; 0ae0 4b
                LR   $9,A                ; 0ae1 59
                PI   A169c               ; 0ae2 28 16 9c
                DS   $b                  ; 0ae5 3b
                BF   $4,A0ae0            ; 0ae6 94 f9
                DS   $8                  ; 0ae8 38
                BT   2,A0ad4             ; 0ae9 82 ea
                LISU 5                   ; 0aeb 65
                LISL 2                   ; 0aec 6a
                LIS  $1                  ; 0aed 71
                NS   (IS)                ; 0aee fc
                LR   $b,A                ; 0aef 5b
                LISU 5                   ; 0af0 65
                LISL 0                   ; 0af1 68
                LR   A,(IS)+             ; 0af2 4d
                NS   (IS)                ; 0af3 fc
                XS   (IS)-               ; 0af4 ee
                XS   (IS)                ; 0af5 ec
                NI   $01                 ; 0af6 21 01
                BF   $4,A0b00            ; 0af8 94 07
                LISU 4                   ; 0afa 64
                LISL 1                   ; 0afb 69
                LIS  $1                  ; 0afc 71
                NS   (IS)                ; 0afd fc
                BT   4,A0b12             ; 0afe 84 13
A0b00:          LIS  $1                  ; 0b00 71
                LR   $0,A                ; 0b01 50
A0b02:          LISU 5                   ; 0b02 65
                LISL 2                   ; 0b03 6a
                LIS  $1                  ; 0b04 71
                XS   (IS)                ; 0b05 ec
                LR   (IS),A              ; 0b06 5c
                LIS  $1                  ; 0b07 71
                NS   (IS)                ; 0b08 fc
                LR   IS,A                ; 0b09 0b
                LISU 7                   ; 0b0a 67
                LIS  $3                  ; 0b0b 73
                NS   (IS)                ; 0b0c fc
                BF   $4,A0b12            ; 0b0d 94 04
                DS   $0                  ; 0b0f 30
                BT   2,A0b02             ; 0b10 82 f1
A0b12:          BF   $0,A0b4d            ; 0b12 90 3a
A0b14:          LIS  $1                  ; 0b14 71
                LR   $8,A                ; 0b15 58
A0b16:          LR   A,$8                ; 0b16 48
                LR   IS,A                ; 0b17 0b
                LISU 7                   ; 0b18 67
                LIS  $3                  ; 0b19 73
                NS   (IS)                ; 0b1a fc
                BT   4,A0b39             ; 0b1b 84 1d
                INC                      ; 0b1d 1f
                LR   $9,A                ; 0b1e 59
                LIS  $8                  ; 0b1f 78
                NS   $a                  ; 0b20 fa
                BF   $4,A0b2b            ; 0b21 94 09
                LISU 5                   ; 0b23 65
                LISL 2                   ; 0b24 6a
                LIS  $1                  ; 0b25 71
                NS   (IS)                ; 0b26 fc
                XS   $8                  ; 0b27 e8
                LIS  $0                  ; 0b28 70
                BF   $4,A0b39            ; 0b29 94 0f
A0b2b:          LR   A,$8                ; 0b2b 48
                LR   IS,A                ; 0b2c 0b
                LISU 2                   ; 0b2d 62
                LIS  $0                  ; 0b2e 70
                XS   (IS)                ; 0b2f ec
                BF   $4,A0b39            ; 0b30 94 08
                XS   $8                  ; 0b32 e8
                LI   $17                 ; 0b33 20 17
                BT   4,A0b39             ; 0b35 84 03
                LI   $4c                 ; 0b37 20 4c
A0b39:          LR   $0,A                ; 0b39 50
                LR   A,$8                ; 0b3a 48
                LR   IS,A                ; 0b3b 0b
                LISU 2                   ; 0b3c 62
                LR   A,$0                ; 0b3d 40
                LR   (IS),A              ; 0b3e 5c
                SL   1                   ; 0b3f 13
                BT   4,A0b48             ; 0b40 84 07
                PI   A1457               ; 0b42 28 14 57
                PI   A1675               ; 0b45 28 16 75
A0b48:          DS   $8                  ; 0b48 38
                BT   2,A0b16             ; 0b49 82 cc
                BF   $0,A0b85            ; 0b4b 90 39
A0b4d:          LIS  $8                  ; 0b4d 78
                NS   $a                  ; 0b4e fa
                BF   $4,A0b62            ; 0b4f 94 12
                LISU 5                   ; 0b51 65
                LISL 2                   ; 0b52 6a
                LIS  $1                  ; 0b53 71
                NS   (IS)                ; 0b54 fc
                XS   $b                  ; 0b55 eb
                BT   4,A0b62             ; 0b56 84 0b
                LISU 5                   ; 0b58 65
                LISL 5                   ; 0b59 6d
                LR   A,(IS)              ; 0b5a 4c
                OI   $f0                 ; 0b5b 22 f0
                LR   (IS),A              ; 0b5d 5c
                LISU 6                   ; 0b5e 66
                LISL 1                   ; 0b5f 69
                LIS  $0                  ; 0b60 70
                LR   (IS),A              ; 0b61 5c
A0b62:          LISU 6                   ; 0b62 66
                LISL 1                   ; 0b63 69
                LIS  $2                  ; 0b64 72
                COM                      ; 0b65 18
                NS   (IS)                ; 0b66 fc
                LR   (IS),A              ; 0b67 5c
                LISU 6                   ; 0b68 66
                LISL 1                   ; 0b69 69
                LR   A,(IS)              ; 0b6a 4c
                SR   1                   ; 0b6b 12
                SR   1                   ; 0b6c 12
                BF   $4,A0b83            ; 0b6d 94 15
                LR   A,$a                ; 0b6f 4a
                LR   $8,A                ; 0b70 58
                DCI  A0835               ; 0b71 2a 08 35
                PI   A165c               ; 0b74 28 16 5c
                LR   A,$8                ; 0b77 48
                LR   $a,A                ; 0b78 5a
                PI   $13c6               ; 0b79 28 13 c6
A0b7c:          PI   A122d               ; 0b7c 28 12 2d
                LIS  $0                  ; 0b7f 70
                XS   $8                  ; 0b80 e8
                BF   $4,A0b7c            ; 0b81 94 fa
A0b83:          BF   $0,A0b14            ; 0b83 90 90
A0b85:          DCI  A081d               ; 0b85 2a 08 1d
                LISU 5                   ; 0b88 65
                LISL 1                   ; 0b89 69
A0b8a:          LR   A,(IS)              ; 0b8a 4c
                SR   1                   ; 0b8b 12
                SL   1                   ; 0b8c 13
                LR   (IS)-,A             ; 0b8d 5e
                BR7  A0b8a               ; 0b8e 8f fb
                LISU 4                   ; 0b90 64
                LISL 3                   ; 0b91 6b
                LR   A,(IS)              ; 0b92 4c
                SR   1                   ; 0b93 12
                SL   1                   ; 0b94 13
                LR   (IS),A              ; 0b95 5c
                LISL 5                   ; 0b96 6d
                LIS  $1                  ; 0b97 71
                LR   (IS)+,A             ; 0b98 5d
                LI   $a0                 ; 0b99 20 a0
                LISU 1                   ; 0b9b 61
                XS   (IS)                ; 0b9c ec
                SR   4                   ; 0b9d 14
                BF   $4,A0ba3            ; 0b9e 94 04
                PI   A165c               ; 0ba0 28 16 5c
A0ba3:          DCI  A0817               ; 0ba3 2a 08 17
                LISU 6                   ; 0ba6 66
                LISL 1                   ; 0ba7 69
                LR   A,(IS)              ; 0ba8 4c
                SR   1                   ; 0ba9 12
                SR   1                   ; 0baa 12
                CI   $23                 ; 0bab 25 23
                LI   $a0                 ; 0bad 20 a0
                BT   4,A0bb3             ; 0baf 84 03
                LI   $f0                 ; 0bb1 20 f0
A0bb3:          LISU 4                   ; 0bb3 64
                LISL 7                   ; 0bb4 6f
                LR   (IS),A              ; 0bb5 5c
                LI   $10                 ; 0bb6 20 10
                LR   $a,A                ; 0bb8 5a
A0bb9:          LIS  $0                  ; 0bb9 70
                LR   $0,A                ; 0bba 50
                PI   A1707               ; 0bbb 28 17 07
                DS   $a                  ; 0bbe 3a
                BF   $4,A0bb9            ; 0bbf 94 f9
                PI   A165c               ; 0bc1 28 16 5c
A0bc4:          LISU 7                   ; 0bc4 67
                LISL 2                   ; 0bc5 6a
                LR   A,(IS)              ; 0bc6 4c
                INC                      ; 0bc7 1f
                CI   $c0                 ; 0bc8 25 c0
                BF   $4,A0bcd            ; 0bca 94 02
                LIS  $0                  ; 0bcc 70
A0bcd:          LR   (IS),A              ; 0bcd 5c
                LR   $1,A                ; 0bce 51
                LIS  $3                  ; 0bcf 73
                LR   $2,A                ; 0bd0 52
                PI   A16eb               ; 0bd1 28 16 eb
                LR   A,$0                ; 0bd4 40
                LR   $8,A                ; 0bd5 58
                LR   IS,A                ; 0bd6 0b
                SR   1                   ; 0bd7 12
                BF   $4,A0c19            ; 0bd8 94 40
                LISU 2                   ; 0bda 62
                XS   (IS)                ; 0bdb ec
                BT   4,A0c57             ; 0bdc 84 7a
                LI   $08                 ; 0bde 20 08
                NS   $1                  ; 0be0 f1
                LR   $4,A                ; 0be1 54
                LISU 5                   ; 0be2 65
                LIS  $1                  ; 0be3 71
                NS   (IS)                ; 0be4 fc
                LISU 2                   ; 0be5 62
                BF   $4,A0c14            ; 0be6 94 2d
                OUTS 0                   ; 0be8 b0
                OUTS 4                   ; 0be9 b4
                OUTS 1                   ; 0bea b1
                INS  4                   ; 0beb a4
                LR   $0,A                ; 0bec 50
                LIS  $0                  ; 0bed 70
                XS   $8                  ; 0bee e8
                BT   4,A0bf3             ; 0bef 84 03
                INS  1                   ; 0bf1 a1
                LR   $0,A                ; 0bf2 50
A0bf3:          LIS  $1                  ; 0bf3 71
                NS   $0                  ; 0bf4 f0
                BF   $4,A0bff            ; 0bf5 94 09
                LI   $54                 ; 0bf7 20 54
                XS   (IS)                ; 0bf9 ec
                BT   4,A0c08             ; 0bfa 84 0d
                LR   A,(IS)              ; 0bfc 4c
                INC                      ; 0bfd 1f
                LR   (IS),A              ; 0bfe 5c
A0bff:          LIS  $2                  ; 0bff 72
                NS   $0                  ; 0c00 f0
                BF   $4,A0c08            ; 0c01 94 06
                LIS  $f                  ; 0c03 7f
                XS   (IS)                ; 0c04 ec
                BT   4,A0c08             ; 0c05 84 02
                DS   (IS)                ; 0c07 3c
A0c08:          LIS  $f                  ; 0c08 7f
                LR   $4,A                ; 0c09 54
                LR   IS,A                ; 0c0a 0b
                NS   $8                  ; 0c0b f8
                BF   $4,A0c14            ; 0c0c 94 07
                XS   $0                  ; 0c0e e0
                BF   $1,A0c14            ; 0c0f 91 04
                DS   (IS)-               ; 0c11 3e
                LIS  $5                  ; 0c12 75
                LR   (IS),A              ; 0c13 5c
A0c14:          PI   A1459               ; 0c14 28 14 59
                BF   $0,A0c57            ; 0c17 90 3f
A0c19:          LIS  $1                  ; 0c19 71
                NS   $1                  ; 0c1a f1
                BF   $4,A0c20            ; 0c1b 94 04
                JMP  A0e6e               ; 0c1d 29 0e 6e
A0c20:          LISU 4                   ; 0c20 64
                LISL 2                   ; 0c21 6a
                LIS  $1                  ; 0c22 71
                NS   (IS)-               ; 0c23 fe
                BT   4,A0c30             ; 0c24 84 0b
                LISU 6                   ; 0c26 66
                LIS  $2                  ; 0c27 72
                NS   (IS)                ; 0c28 fc
                BF   $4,A0c30            ; 0c29 94 06
                LIS  $6                  ; 0c2b 76
                NS   $1                  ; 0c2c f1
                SR   1                   ; 0c2d 12
                BF   $4,A0c33            ; 0c2e 94 04
A0c30:          JMP  A0cc0               ; 0c30 29 0c c0
A0c33:          LR   $0,A                ; 0c33 50
                DS   $0                  ; 0c34 30
                LIS  $5                  ; 0c35 75
                AS   $0                  ; 0c36 c0
                SL   4                   ; 0c37 15
                SR   1                   ; 0c38 12
                LR   IS,A                ; 0c39 0b
                LISL 5                   ; 0c3a 6d
                LR   A,(IS)              ; 0c3b 4c
                SR   4                   ; 0c3c 14
                SL   4                   ; 0c3d 15
                LR   (IS)+,A             ; 0c3e 5d
                LIS  $0                  ; 0c3f 70
                LR   (IS)+,A             ; 0c40 5d
                LR   (IS),A              ; 0c41 5c
                LR   $4,A                ; 0c42 54
                LIS  $8                  ; 0c43 78
                LR   $2,A                ; 0c44 52
                LIS  $4                  ; 0c45 74
                LR   $3,A                ; 0c46 53
                LI   $31                 ; 0c47 20 31
                LR   $1,A                ; 0c49 51
                LR   A,$0                ; 0c4a 40
                SL   1                   ; 0c4b 13
                SL   1                   ; 0c4c 13
                AS   $0                  ; 0c4d c0
                SL   1                   ; 0c4e 13
                SL   1                   ; 0c4f 13
                AS   $0                  ; 0c50 c0
                AI   $1b                 ; 0c51 24 1b
                LR   $0,A                ; 0c53 50
                PI   A1600               ; 0c54 28 16 00
A0c57:          JMP  A0f57               ; 0c57 29 0f 57
A0c5a:          LISU 7                   ; 0c5a 67
                LISL 2                   ; 0c5b 6a
                LIS  $3                  ; 0c5c 73
                NS   (IS)                ; 0c5d fc
                BF   $4,A0cbd            ; 0c5e 94 5e
                LIS  $4                  ; 0c60 74
                NS   (IS)                ; 0c61 fc
                SR   1                   ; 0c62 12
                SR   1                   ; 0c63 12
                LR   $8,A                ; 0c64 58
                LR   IS,A                ; 0c65 0b
                LISU 7                   ; 0c66 67
                LIS  $3                  ; 0c67 73
                COM                      ; 0c68 18
                AS   (IS)                ; 0c69 cc
                BF   $2,A0cbd            ; 0c6a 92 52
                LR   (IS),A              ; 0c6c 5c
                LISU 5                   ; 0c6d 65
                LISL 3                   ; 0c6e 6b
                LIS  $1                  ; 0c6f 71
                NS   (IS)                ; 0c70 fc
                BF   $4,A0c7a            ; 0c71 94 08
                OUTS 5                   ; 0c73 b5
                LR   A,$8                ; 0c74 48
                INC                      ; 0c75 1f
                SL   1                   ; 0c76 13
                SL   1                   ; 0c77 13
                SL   4                   ; 0c78 15
                OUTS 5                   ; 0c79 b5
A0c7a:          LIS  $6                  ; 0c7a 76
                AS   $8                  ; 0c7b c8
                SL   4                   ; 0c7c 15
                SR   1                   ; 0c7d 12
                LR   IS,A                ; 0c7e 0b
                LISL 3                   ; 0c7f 6b
                LIS  $1                  ; 0c80 71
                LR   $0,A                ; 0c81 50
A0c82:          LIS  $f                  ; 0c82 7f
                NS   (IS)                ; 0c83 fc
                LI   $ef                 ; 0c84 20 ef
                BF   $4,A0c89            ; 0c86 94 02
                INC                      ; 0c88 1f
A0c89:          AS   (IS)                ; 0c89 cc
                LR   (IS),A              ; 0c8a 5c
                AI   $10                 ; 0c8b 24 10
                BF   $2,A0c90            ; 0c8d 92 02
                LR   (IS),A              ; 0c8f 5c
A0c90:          LR   A,(IS)+             ; 0c90 4d
                DS   $0                  ; 0c91 30
                BT   2,A0c82             ; 0c92 82 ef
                LISL 4                   ; 0c94 6c
                LI   $67                 ; 0c95 20 67
                ASD  (IS)                ; 0c97 dc
                LR   (IS)-,A             ; 0c98 5e
                LI   $66                 ; 0c99 20 66
                LNK                      ; 0c9b 19
                ASD  (IS)                ; 0c9c dc
                LR   (IS),A              ; 0c9d 5c
                LIS  $1                  ; 0c9e 71
                LR   $0,A                ; 0c9f 50
                LIS  $0                  ; 0ca0 70
                LR   $1,A                ; 0ca1 51
A0ca2:          LR   A,(IS)              ; 0ca2 4c
                SR   4                   ; 0ca3 14
                BF   $4,A0ca9            ; 0ca4 94 04
                XS   $1                  ; 0ca6 e1
                BT   4,A0cae             ; 0ca7 84 06
A0ca9:          LIS  $1                  ; 0ca9 71
                LR   $1,A                ; 0caa 51
                SL   4                   ; 0cab 15
                AS   (IS)                ; 0cac cc
                LR   (IS),A              ; 0cad 5c
A0cae:          LIS  $f                  ; 0cae 7f
                NS   (IS)                ; 0caf fc
                BF   $4,A0cb5            ; 0cb0 94 04
                XS   $1                  ; 0cb2 e1
                BT   4,A0cb9             ; 0cb3 84 05
A0cb5:          LIS  $1                  ; 0cb5 71
                LR   $1,A                ; 0cb6 51
                AS   (IS)                ; 0cb7 cc
                LR   (IS),A              ; 0cb8 5c
A0cb9:          LR   A,(IS)+             ; 0cb9 4d
                DS   $0                  ; 0cba 30
                BT   2,A0ca2             ; 0cbb 82 e6
A0cbd:          JMP  A0bc4               ; 0cbd 29 0b c4
A0cc0:          LISU 2                   ; 0cc0 62
                LISL 4                   ; 0cc1 6c
A0cc2:          LR   A,(IS)+             ; 0cc2 4d
                SR   1                   ; 0cc3 12
                SR   1                   ; 0cc4 12
                BF   $4,A0d23            ; 0cc5 94 5d
                LR   A,IS                ; 0cc7 0a
                INC                      ; 0cc8 1f
                LR   IS,A                ; 0cc9 0b
                CI   $20                 ; 0cca 25 20
                BF   $4,A0cc2            ; 0ccc 94 f5
                LISL 4                   ; 0cce 6c
A0ccf:          LISU 4                   ; 0ccf 64
                LR   A,(IS)              ; 0cd0 4c
                LISU 5                   ; 0cd1 65
                XS   (IS)-               ; 0cd2 ee
                SR   1                   ; 0cd3 12
                BF   $4,A0d23            ; 0cd4 94 4e
                BR7  A0ccf               ; 0cd6 8f f8
                LISU 4                   ; 0cd8 64
                LISL 1                   ; 0cd9 69
                LIS  $1                  ; 0cda 71
                NS   (IS)                ; 0cdb fc
                BT   4,A0d12             ; 0cdc 84 35
                LISU 5                   ; 0cde 65
                LISL 2                   ; 0cdf 6a
                LIS  $1                  ; 0ce0 71
                NS   (IS)                ; 0ce1 fc
                LR   $0,A                ; 0ce2 50
                LR   IS,A                ; 0ce3 0b
                LISU 7                   ; 0ce4 67
                LIS  $3                  ; 0ce5 73
                COM                      ; 0ce6 18
                NS   (IS)                ; 0ce7 fc
                LR   (IS),A              ; 0ce8 5c
                LISU 4                   ; 0ce9 64
                LISL 6                   ; 0cea 6e
                LIS  $2                  ; 0ceb 72
                SL   4                   ; 0cec 15
                NS   (IS)                ; 0ced fc
                BT   4,A0cf8             ; 0cee 84 09
                LIS  $1                  ; 0cf0 71
                XS   $0                  ; 0cf1 e0
                LR   IS,A                ; 0cf2 0b
                LISU 7                   ; 0cf3 67
                LIS  $3                  ; 0cf4 73
                COM                      ; 0cf5 18
                NS   (IS)                ; 0cf6 fc
                LR   (IS),A              ; 0cf7 5c
A0cf8:          LISU 2                   ; 0cf8 62
                LISL 3                   ; 0cf9 6b
                LR   A,(IS)              ; 0cfa 4c
                CI   $0f                 ; 0cfb 25 0f
                BT   2,A0d26             ; 0cfd 82 28
                DCI  A0829               ; 0cff 2a 08 29
                LIS  $2                  ; 0d02 72
                NS   $1                  ; 0d03 f1
                LIS  $6                  ; 0d04 76
                BT   4,A0d08             ; 0d05 84 02
                LIS  $0                  ; 0d07 70
A0d08:          ADC                      ; 0d08 8e
                LR   A,$1                ; 0d09 41
                LR   $8,A                ; 0d0a 58
                PI   A165c               ; 0d0b 28 16 5c
                LR   A,$8                ; 0d0e 48
                LR   $1,A                ; 0d0f 51
                BF   $0,A0d26            ; 0d10 90 15
A0d12:          LISU 5                   ; 0d12 65
                LISL 0                   ; 0d13 68
                LR   A,(IS)+             ; 0d14 4d
                NS   (IS)                ; 0d15 fc
                XS   (IS)-               ; 0d16 ee
                XS   (IS)                ; 0d17 ec
                NI   $01                 ; 0d18 21 01
                BF   $4,A0d26            ; 0d1a 94 0b
                LISU 6                   ; 0d1c 66
                LISL 1                   ; 0d1d 69
                LR   A,(IS)              ; 0d1e 4c
                SR   1                   ; 0d1f 12
                SR   1                   ; 0d20 12
                BT   4,A0d26             ; 0d21 84 04
A0d23:          JMP  A0f57               ; 0d23 29 0f 57
A0d26:          LISU 6                   ; 0d26 66
                LISL 1                   ; 0d27 69
                LR   A,(IS)              ; 0d28 4c
                OI   $02                 ; 0d29 22 02
                LR   (IS),A              ; 0d2b 5c
                LISU 3                   ; 0d2c 63
                LISL 5                   ; 0d2d 6d
                LIS  $0                  ; 0d2e 70
                XS   (IS)                ; 0d2f ec
                BF   $1,A0d66            ; 0d30 91 35
                COM                      ; 0d32 18
                LR   (IS),A              ; 0d33 5c
                LISL 7                   ; 0d34 6f
                LI   $40                 ; 0d35 20 40
                LR   (IS),A              ; 0d37 5c
                LISU 4                   ; 0d38 64
                LISL 1                   ; 0d39 69
                LIS  $1                  ; 0d3a 71
                NS   (IS)                ; 0d3b fc
                BT   4,A0d43             ; 0d3c 84 06
                DCI  A0938               ; 0d3e 2a 09 38
                BF   $0,A0d50            ; 0d41 90 0e
A0d43:          LISU 5                   ; 0d43 65
                LISL 0                   ; 0d44 68
                LR   A,(IS)+             ; 0d45 4d
                NS   (IS)                ; 0d46 fc
                XS   (IS)-               ; 0d47 ee
                XS   (IS)                ; 0d48 ec
                NI   $01                 ; 0d49 21 01
                BT   4,A0d53             ; 0d4b 84 07
                DCI  A0955               ; 0d4d 2a 09 55
A0d50:          PI   A1711               ; 0d50 28 17 11
A0d53:          LISU 4                   ; 0d53 64
                LISL 6                   ; 0d54 6e
                LIS  $3                  ; 0d55 73
                NS   (IS)+               ; 0d56 fd
                BF   $4,A0d61            ; 0d57 94 09
                LR   A,(IS)              ; 0d59 4c
                CI   $f0                 ; 0d5a 25 f0
                BF   $2,A0d61            ; 0d5c 92 04
                LI   $f0                 ; 0d5e 20 f0
                LR   (IS),A              ; 0d60 5c
A0d61:          LISL 6                   ; 0d61 6e
                LR   A,(IS)              ; 0d62 4c
                LISU 3                   ; 0d63 63
                LISL 3                   ; 0d64 6b
                LR   (IS),A              ; 0d65 5c
A0d66:          LISU 3                   ; 0d66 63
                LISL 7                   ; 0d67 6f
                LIS  $0                  ; 0d68 70
                XS   (IS)                ; 0d69 ec
                BT   4,A0d6d             ; 0d6a 84 02
                DS   (IS)                ; 0d6c 3c
A0d6d:          LISU 4                   ; 0d6d 64
                LISL 6                   ; 0d6e 6e
                LIS  $3                  ; 0d6f 73
                NS   (IS)+               ; 0d70 fd
                BF   $4,A0d23            ; 0d71 94 b1
                LR   A,(IS)              ; 0d73 4c
                CI   $f0                 ; 0d74 25 f0
                BF   $2,A0d23            ; 0d76 92 ac
                LR   A,$1                ; 0d78 41
                LR   $a,A                ; 0d79 5a
                LISU 4                   ; 0d7a 64
                LISL 1                   ; 0d7b 69
                LIS  $1                  ; 0d7c 71
                NS   (IS)                ; 0d7d fc
                BF   $4,A0d98            ; 0d7e 94 19
                LIS  $1                  ; 0d80 71
                LR   $8,A                ; 0d81 58
A0d82:          LR   A,$8                ; 0d82 48
                LR   IS,A                ; 0d83 0b
                LISU 5                   ; 0d84 65
                LIS  $1                  ; 0d85 71
                NS   (IS)                ; 0d86 fc
                BT   4,A0d95             ; 0d87 84 0d
                LISU 7                   ; 0d89 67
                LIS  $3                  ; 0d8a 73
                NS   (IS)                ; 0d8b fc
                INC                      ; 0d8c 1f
                LR   $9,A                ; 0d8d 59
                LI   $10                 ; 0d8e 20 10
                NS   $a                  ; 0d90 fa
                LR   $4,A                ; 0d91 54
                PI   A1677               ; 0d92 28 16 77
A0d95:          DS   $8                  ; 0d95 38
                BT   2,A0d82             ; 0d96 82 eb
A0d98:          LISU 7                   ; 0d98 67
                LISL 0                   ; 0d99 68
                LR   A,(IS)+             ; 0d9a 4d
                NS   (IS)                ; 0d9b fc
                XS   (IS)-               ; 0d9c ee
                XS   (IS)                ; 0d9d ec
                BT   4,A0de4             ; 0d9e 84 45
                SR   1                   ; 0da0 12
                SR   1                   ; 0da1 12
                BF   $4,A0dde            ; 0da2 94 3b
                LISU 5                   ; 0da4 65
                LISL 4                   ; 0da5 6c
                LI   $0e                 ; 0da6 20 0e
                NS   $a                  ; 0da8 fa
                BF   $4,A0dbd            ; 0da9 94 13
                INS  0                   ; 0dab a0
                SL   4                   ; 0dac 15
                BF   $1,A0dbd            ; 0dad 91 0f
                LIS  $1                  ; 0daf 71
                XS   (IS)                ; 0db0 ec
                LR   (IS),A              ; 0db1 5c
                SL   4                   ; 0db2 15
                SR   1                   ; 0db3 12
                SL   4                   ; 0db4 15
                LR   $4,A                ; 0db5 54
                LISU 3                   ; 0db6 63
                LISL 7                   ; 0db7 6f
                LI   $40                 ; 0db8 20 40
                LR   (IS),A              ; 0dba 5c
                BF   $0,A0dcf            ; 0dbb 90 13
A0dbd:          LIS  $1                  ; 0dbd 71
                NS   (IS)                ; 0dbe fc
                LISU 3                   ; 0dbf 63
                LISL 7                   ; 0dc0 6f
                BT   4,A0dd8             ; 0dc1 84 16
                LIS  $0                  ; 0dc3 70
                XS   (IS)                ; 0dc4 ec
                BF   $4,A0dca            ; 0dc5 94 04
                LI   $40                 ; 0dc7 20 40
                LR   (IS),A              ; 0dc9 5c
A0dca:          LI   $08                 ; 0dca 20 08
                NS   $a                  ; 0dcc fa
                SL   4                   ; 0dcd 15
                LR   $4,A                ; 0dce 54
A0dcf:          LI   $1f                 ; 0dcf 20 1f
                LR   $0,A                ; 0dd1 50
                LI   $0a                 ; 0dd2 20 0a
                LR   $1,A                ; 0dd4 51
                PI   A1649               ; 0dd5 28 16 49
A0dd8:          LISU 3                   ; 0dd8 63
                LISL 7                   ; 0dd9 6f
                LIS  $0                  ; 0dda 70
                XS   (IS)                ; 0ddb ec
                BT   4,A0de1             ; 0ddc 84 04
A0dde:          JMP  A0f57               ; 0dde 29 0f 57
A0de1:          JMP  A0aaf               ; 0de1 29 0a af
A0de4:          LISU 3                   ; 0de4 63
                LISL 7                   ; 0de5 6f
                LIS  $0                  ; 0de6 70
                XS   (IS)                ; 0de7 ec
                BF   $4,A0dde            ; 0de8 94 f5
                LI   $0e                 ; 0dea 20 0e
                NS   $a                  ; 0dec fa
                BF   $4,A0dde            ; 0ded 94 f0
                INS  0                   ; 0def a0
                LR   $0,A                ; 0df0 50
                COM                      ; 0df1 18
                SL   4                   ; 0df2 15
                BF   $4,A0e04            ; 0df3 94 10
                OUTS 0                   ; 0df5 b0
                OUTS 4                   ; 0df6 b4
                OUTS 1                   ; 0df7 b1
                INS  4                   ; 0df8 a4
                LR   $0,A                ; 0df9 50
                INS  1                   ; 0dfa a1
                NS   $0                  ; 0dfb f0
                SR   4                   ; 0dfc 14
                LR   $0,A                ; 0dfd 50
                NI   $fc                 ; 0dfe 21 fc
                AS   $0                  ; 0e00 c0
                OI   $04                 ; 0e01 22 04
                LR   $0,A                ; 0e03 50
A0e04:          LIS  $1                  ; 0e04 71
                NS   $0                  ; 0e05 f0
                LI   $ff                 ; 0e06 20 ff
                BT   4,A0e2c             ; 0e08 84 23
                LIS  $2                  ; 0e0a 72
                NS   $0                  ; 0e0b f0
                LIS  $1                  ; 0e0c 71
                BT   4,A0e2c             ; 0e0d 84 1e
                LIS  $4                  ; 0e0f 74
                NS   $0                  ; 0e10 f0
                BT   4,A0e1a             ; 0e11 84 08
                LIS  $8                  ; 0e13 78
                NS   $0                  ; 0e14 f0
                BF   $4,A0e2b            ; 0e15 94 15
                JMP  A0a3b               ; 0e17 29 0a 3b
A0e1a:          LISU 5                   ; 0e1a 65
                LISL 3                   ; 0e1b 6b
                LIS  $1                  ; 0e1c 71
                XS   (IS)                ; 0e1d ec
                LR   (IS),A              ; 0e1e 5c
                SL   4                   ; 0e1f 15
                SR   1                   ; 0e20 12
                SL   4                   ; 0e21 15
                LR   $4,A                ; 0e22 54
                LI   $34                 ; 0e23 20 34
                LR   $0,A                ; 0e25 50
                LIS  $6                  ; 0e26 76
                LR   $1,A                ; 0e27 51
                PI   A1649               ; 0e28 28 16 49
A0e2b:          LIS  $0                  ; 0e2b 70
A0e2c:          LR   $0,A                ; 0e2c 50
                INS  0                   ; 0e2d a0
                OI   $f0                 ; 0e2e 22 f0
                LR   $1,A                ; 0e30 51
                INS  4                   ; 0e31 a4
                NS   $1                  ; 0e32 f1
                LR   $1,A                ; 0e33 51
                INS  1                   ; 0e34 a1
                NS   $1                  ; 0e35 f1
                COM                      ; 0e36 18
                BT   4,A0e3e             ; 0e37 84 06
                LISU 4                   ; 0e39 64
                LISL 7                   ; 0e3a 6f
                LI   $f0                 ; 0e3b 20 f0
                LR   (IS),A              ; 0e3d 5c
A0e3e:          DCI  A09b3               ; 0e3e 2a 09 b3
                LIS  $0                  ; 0e41 70
                LR   $1,A                ; 0e42 51
                LISU 4                   ; 0e43 64
                LISL 6                   ; 0e44 6e
A0e45:          LR   A,(IS)              ; 0e45 4c
                CM                       ; 0e46 8d
                BT   4,A0e4f             ; 0e47 84 07
                CM                       ; 0e49 8d
                LR   A,$1                ; 0e4a 41
                INC                      ; 0e4b 1f
                LR   $1,A                ; 0e4c 51
                BF   $0,A0e45            ; 0e4d 90 f7
A0e4f:          LR   A,$0                ; 0e4f 40
                AS   $1                  ; 0e50 c1
                CI   $ff                 ; 0e51 25 ff
                BT   4,A0e5c             ; 0e53 84 08
                CI   $0a                 ; 0e55 25 0a
                BF   $4,A0e5d            ; 0e57 94 05
                LIS  $0                  ; 0e59 70
                BF   $0,A0e5d            ; 0e5a 90 02
A0e5c:          LIS  $9                  ; 0e5c 79
A0e5d:          LR   $1,A                ; 0e5d 51
                SL   1                   ; 0e5e 13
                DCI  A09b3               ; 0e5f 2a 09 b3
                ADC                      ; 0e62 8e
                LM                       ; 0e63 16
                LR   (IS),A              ; 0e64 5c
                LM                       ; 0e65 16
                LR   $9,A                ; 0e66 59
                LIS  $2                  ; 0e67 72
                LR   $8,A                ; 0e68 58
                PI   A1675               ; 0e69 28 16 75
                BF   $0,A0ec0            ; 0e6c 90 53
A0e6e:          LISU 4                   ; 0e6e 64
                LISL 6                   ; 0e6f 6e
                LIS  $3                  ; 0e70 73
                NS   (IS)+               ; 0e71 fd
                LR   $a,A                ; 0e72 5a
                BF   $4,A0e97            ; 0e73 94 23
                LR   A,(IS)              ; 0e75 4c
                CI   $f0                 ; 0e76 25 f0
                BF   $2,A0eb1            ; 0e78 92 38
                LISL 3                   ; 0e7a 6b
                LIS  $1                  ; 0e7b 71
                NS   (IS)                ; 0e7c fc
                LISL 7                   ; 0e7d 6f
                BT   4,A0e84             ; 0e7e 84 05
                LIS  $3                  ; 0e80 73
                NS   $1                  ; 0e81 f1
                BF   $4,A0e87            ; 0e82 94 04
A0e84:          DS   (IS)                ; 0e84 3c
                BF   $2,A0eaf            ; 0e85 92 29
A0e87:          LIS  $2                  ; 0e87 72
                NS   $1                  ; 0e88 f1
                SR   1                   ; 0e89 12
                LR   $8,A                ; 0e8a 58
                LIS  $c                  ; 0e8b 7c
                NS   $1                  ; 0e8c f1
                SR   1                   ; 0e8d 12
                SR   1                   ; 0e8e 12
                INC                      ; 0e8f 1f
                LR   $9,A                ; 0e90 59
                PI   A169c               ; 0e91 28 16 9c
                JMP  A0f4a               ; 0e94 29 0f 4a
A0e97:          LIS  $3                  ; 0e97 73
                XS   $a                  ; 0e98 ea
                BT   4,A0edc             ; 0e99 84 42
                LIS  $c                  ; 0e9b 7c
                NS   $1                  ; 0e9c f1
                SR   1                   ; 0e9d 12
                SR   1                   ; 0e9e 12
                LR   $5,A                ; 0e9f 55
                LIS  $1                  ; 0ea0 71
                NS   $a                  ; 0ea1 fa
                SL   1                   ; 0ea2 13
                INC                      ; 0ea3 1f
                NS   $5                  ; 0ea4 f5
                LR   $5,A                ; 0ea5 55
                LIS  $c                  ; 0ea6 7c
                NS   $1                  ; 0ea7 f1
                CI   $0c                 ; 0ea8 25 0c
                BF   $4,A0ead            ; 0eaa 94 02
                DS   $a                  ; 0eac 3a
A0ead:          BF   $0,A0f21            ; 0ead 90 73
A0eaf:          LI   $f7                 ; 0eaf 20 f7
A0eb1:          INC                      ; 0eb1 1f
                BT   2,A0ec3             ; 0eb2 82 10
                LR   (IS),A              ; 0eb4 5c
                LIS  $6                  ; 0eb5 76
                NS   (IS)                ; 0eb6 fc
                SR   1                   ; 0eb7 12
                INC                      ; 0eb8 1f
                LR   $9,A                ; 0eb9 59
                LIS  $1                  ; 0eba 71
                NS   (IS)                ; 0ebb fc
                LR   $8,A                ; 0ebc 58
                PI   A1699               ; 0ebd 28 16 99
A0ec0:          JMP  A0f57               ; 0ec0 29 0f 57
A0ec3:          LR   A,$1                ; 0ec3 41
                SR   4                   ; 0ec4 14
                LISU 6                   ; 0ec5 66
                LISL 3                   ; 0ec6 6b
                AS   (IS)                ; 0ec7 cc
                LISU 7                   ; 0ec8 67
                AS   (IS)                ; 0ec9 cc
                NI   $01                 ; 0eca 21 01
                LR   $5,A                ; 0ecc 55
                LISU 4                   ; 0ecd 64
                LISL 7                   ; 0ece 6f
                LIS  $1                  ; 0ecf 71
                BF   $4,A0ed4            ; 0ed0 94 03
                LI   $61                 ; 0ed2 20 61
A0ed4:          LR   (IS)+,A             ; 0ed4 5d
                LIS  $3                  ; 0ed5 73
                LR   $a,A                ; 0ed6 5a
                LR   A,(IS)              ; 0ed7 4c
                SR   1                   ; 0ed8 12
                SL   1                   ; 0ed9 13
                AS   $5                  ; 0eda c5
                LR   (IS),A              ; 0edb 5c
A0edc:          LISL 0                   ; 0edc 68
                LIS  $1                  ; 0edd 71
                NS   (IS)-               ; 0ede fe
                SL   1                   ; 0edf 13
                AI   $ff                 ; 0ee0 24 ff
                AS   (IS)                ; 0ee2 cc
                LR   (IS),A              ; 0ee3 5c
                XI   $61                 ; 0ee4 23 61
                BT   4,A0f1e             ; 0ee6 84 37
                LIS  $1                  ; 0ee8 71
                XS   (IS)+               ; 0ee9 ed
                BT   4,A0f1e             ; 0eea 84 33
                DCI  A0973               ; 0eec 2a 09 73
                LIS  $1                  ; 0eef 71
                NS   (IS)                ; 0ef0 fc
                SL   1                   ; 0ef1 13
                SL   1                   ; 0ef2 13
                LR   $5,A                ; 0ef3 55
                LIS  $c                  ; 0ef4 7c
                NS   $1                  ; 0ef5 f1
                SR   1                   ; 0ef6 12
                SR   1                   ; 0ef7 12
                AS   $5                  ; 0ef8 c5
                LR   $5,A                ; 0ef9 55
                LISL 6                   ; 0efa 6e
                LIS  $a                  ; 0efb 7a
                SL   4                   ; 0efc 15
                LISU 1                   ; 0efd 61
                XS   (IS)                ; 0efe ec
                SR   4                   ; 0eff 14
                BF   $4,A0f08            ; 0f00 94 07
                LR   A,$5                ; 0f02 45
                SR   1                   ; 0f03 12
                SR   1                   ; 0f04 12
                XI   $09                 ; 0f05 23 09
                LR   $5,A                ; 0f07 55
A0f08:          LIS  $8                  ; 0f08 78
                LR   $1,A                ; 0f09 51
                NS   $5                  ; 0f0a f5
                ADC                      ; 0f0b 8e
                LISU 7                   ; 0f0c 67
                LISL 0                   ; 0f0d 68
                LR   A,(IS)+             ; 0f0e 4d
                NS   (IS)                ; 0f0f fc
                XS   (IS)-               ; 0f10 ee
                XS   (IS)                ; 0f11 ec
                SR   1                   ; 0f12 12
                SR   1                   ; 0f13 12
                BF   $4,A0f19            ; 0f14 94 04
                PI   A1711               ; 0f16 28 17 11
A0f19:          DCI  A090f               ; 0f19 2a 09 0f
                BF   $0,A0f24            ; 0f1c 90 07
A0f1e:          LR   $a,A                ; 0f1e 5a
                LIS  $3                  ; 0f1f 73
                LR   $5,A                ; 0f20 55
A0f21:          DCI  $08ff               ; 0f21 2a 08 ff
A0f24:          LR   A,$5                ; 0f24 45
                SL   1                   ; 0f25 13
                SL   1                   ; 0f26 13
                ADC                      ; 0f27 8e
                LIS  $8                  ; 0f28 78
                SL   4                   ; 0f29 15
                LR   $4,A                ; 0f2a 54
                LIS  $6                  ; 0f2b 76
                LR   $2,A                ; 0f2c 52
                LIS  $5                  ; 0f2d 75
                LR   $3,A                ; 0f2e 53
                LIS  $8                  ; 0f2f 78
                LR   $1,A                ; 0f30 51
                LISU 4                   ; 0f31 64
                LISL 7                   ; 0f32 6f
                LR   A,(IS)+             ; 0f33 4d
                LR   $0,A                ; 0f34 50
                LIS  $1                  ; 0f35 71
                NS   (IS)                ; 0f36 fc
                BT   4,A0f3a             ; 0f37 84 02
                DS   $0                  ; 0f39 30
A0f3a:          PI   A1600               ; 0f3a 28 16 00
                LISL 6                   ; 0f3d 6e
                LIS  $3                  ; 0f3e 73
                COM                      ; 0f3f 18
                NS   (IS)                ; 0f40 fc
                AS   $a                  ; 0f41 ca
                LR   (IS)+,A             ; 0f42 5d
                LIS  $0                  ; 0f43 70
                XS   $a                  ; 0f44 ea
                BF   $4,A0f57            ; 0f45 94 11
                LI   $f0                 ; 0f47 20 f0
                LR   (IS),A              ; 0f49 5c
A0f4a:          LISU 6                   ; 0f4a 66
                LISL 1                   ; 0f4b 69
                LR   A,(IS)              ; 0f4c 4c
                SR   1                   ; 0f4d 12
                SR   1                   ; 0f4e 12
                BF   $4,A0f57            ; 0f4f 94 07
                LISU 4                   ; 0f51 64
                LISL 3                   ; 0f52 6b
                LR   A,(IS)              ; 0f53 4c
                OI   $01                 ; 0f54 22 01
                LR   (IS),A              ; 0f56 5c
A0f57:          LISU 7                   ; 0f57 67
                LISL 2                   ; 0f58 6a
                LIS  $1                  ; 0f59 71
                NS   (IS)                ; 0f5a fc
                LR   $a,A                ; 0f5b 5a
A0f5c:          LISU 4                   ; 0f5c 64
                LISL 6                   ; 0f5d 6e
                LR   A,(IS)              ; 0f5e 4c
                SR   1                   ; 0f5f 12
                SR   1                   ; 0f60 12
                LR   $3,A                ; 0f61 53
                LIS  $8                  ; 0f62 78
                NS   $3                  ; 0f63 f3
                LR   A,$a                ; 0f64 4a
                BF   $4,A0f6b            ; 0f65 94 05
                LISU 5                   ; 0f67 65
                LISL 2                   ; 0f68 6a
                LIS  $1                  ; 0f69 71
                NS   (IS)                ; 0f6a fc
A0f6b:          LR   $7,A                ; 0f6b 57
                LIS  $a                  ; 0f6c 7a
                AS   $a                  ; 0f6d ca
                SL   1                   ; 0f6e 13
                LR   IS,A                ; 0f6f 0b
                LR   $b,A                ; 0f70 5b
                LR   A,(IS)              ; 0f71 4c
                SR   1                   ; 0f72 12
                SR   1                   ; 0f73 12
                BF   $4,A0fc0            ; 0f74 94 4b
                LISU 4                   ; 0f76 64
                LISL 3                   ; 0f77 6b
                LIS  $1                  ; 0f78 71
                NS   (IS)                ; 0f79 fc
                BF   $4,A0fe0            ; 0f7a 94 65
                OUTS 0                   ; 0f7c b0
                OUTS 4                   ; 0f7d b4
                OUTS 1                   ; 0f7e b1
                LR   A,$b                ; 0f7f 4b
                LR   IS,A                ; 0f80 0b
                LR   A,(IS)+             ; 0f81 4d
                DS   (IS)                ; 0f82 3c
                BT   2,A0fe0             ; 0f83 82 5c
                LIS  $0                  ; 0f85 70
                LR   (IS),A              ; 0f86 5c
                LR   A,$a                ; 0f87 4a
                SR   1                   ; 0f88 12
                BF   $4,A0fc3            ; 0f89 94 39
                XS   $a                  ; 0f8b ea
                BT   4,A0f92             ; 0f8c 84 05
                LIS  $a                  ; 0f8e 7a
                NS   $3                  ; 0f8f f3
                BT   4,A0fe0             ; 0f90 84 4f
A0f92:          LR   A,$7                ; 0f92 47
                LR   IS,A                ; 0f93 0b
                LISU 2                   ; 0f94 62
                SL   1                   ; 0f95 13
                BF   $4,A0f9b            ; 0f96 94 04
                INS  4                   ; 0f98 a4
                BF   $0,A0f9c            ; 0f99 90 02
A0f9b:          INS  1                   ; 0f9b a1
A0f9c:          BF   $1,A0fe0            ; 0f9c 91 43
                LR   A,(IS)              ; 0f9e 4c
                SL   1                   ; 0f9f 13
                BT   4,A0fe0             ; 0fa0 84 3f
                LIS  $2                  ; 0fa2 72
                AS   (IS)                ; 0fa3 cc
                LR   $5,A                ; 0fa4 55
                LR   A,$b                ; 0fa5 4b
                LR   IS,A                ; 0fa6 0b
                LR   A,$5                ; 0fa7 45
                LR   (IS)+,A             ; 0fa8 5d
                LI   $37                 ; 0fa9 20 37
                LR   (IS)-,A             ; 0fab 5e
                LIS  $2                  ; 0fac 72
                NS   $3                  ; 0fad f3
                BT   4,A0fba             ; 0fae 84 0b
                LR   A,IS                ; 0fb0 0a
                XI   $02                 ; 0fb1 23 02
                LR   IS,A                ; 0fb3 0b
                LIS  $3                  ; 0fb4 73
                XS   (IS)+               ; 0fb5 ed
                BF   $4,A0fba            ; 0fb6 94 03
                LIS  $7                  ; 0fb8 77
                LR   (IS),A              ; 0fb9 5c
A0fba:          DCI  A0966               ; 0fba 2a 09 66
                PI   A1711               ; 0fbd 28 17 11
A0fc0:          JMP  A1069               ; 0fc0 29 10 69
A0fc3:          SR   1                   ; 0fc3 12
                BT   4,A0fca             ; 0fc4 84 05
                LIS  $1                  ; 0fc6 71
                NS   $3                  ; 0fc7 f3
                BT   4,A0fe0             ; 0fc8 84 17
A0fca:          INS  4                   ; 0fca a4
                LR   $5,A                ; 0fcb 55
                INS  1                   ; 0fcc a1
                AS   $5                  ; 0fcd c5
                LR   $5,A                ; 0fce 55
                LISU 7                   ; 0fcf 67
                LISL 2                   ; 0fd0 6a
                LR   A,(IS)              ; 0fd1 4c
                SR   1                   ; 0fd2 12
                SR   1                   ; 0fd3 12
                AS   $5                  ; 0fd4 c5
                LISL 4                   ; 0fd5 6c
                AS   (IS)                ; 0fd6 cc
                LISU 6                   ; 0fd7 66
                AS   (IS)                ; 0fd8 cc
                LISU 2                   ; 0fd9 62
                LISL 2                   ; 0fda 6a
                AS   (IS)                ; 0fdb cc
                NI   $07                 ; 0fdc 21 07
                BF   $4,A0fe9            ; 0fde 94 0a
A0fe0:          LI   $03                 ; 0fe0 20 03
                LR   $0,A                ; 0fe2 50
                PI   A1707               ; 0fe3 28 17 07
                JMP  A11f6               ; 0fe6 29 11 f6
A0fe9:          LR   $5,A                ; 0fe9 55
                DS   $5                  ; 0fea 35
                LISU 2                   ; 0feb 62
                LISL 2                   ; 0fec 6a
                LR   A,$5                ; 0fed 45
                SL   4                   ; 0fee 15
                SR   1                   ; 0fef 12
                AS   $5                  ; 0ff0 c5
                AS   (IS)                ; 0ff1 cc
                AI   $09                 ; 0ff2 24 09
                LR   $6,A                ; 0ff4 56
                LISL 1                   ; 0ff5 69
A0ff6:          LR   A,(IS)-             ; 0ff6 4e
                COM                      ; 0ff7 18
                INC                      ; 0ff8 1f
                AS   $6                  ; 0ff9 c6
                CI   $12                 ; 0ffa 25 12
                LIS  $1                  ; 0ffc 71
                BT   2,A1002             ; 0ffd 82 04
                BR7  A0ff6               ; 0fff 8f f6
                LIS  $0                  ; 1001 70
A1002:          LR   $4,A                ; 1002 54
                LR   A,$5                ; 1003 45
                DCI  A09de               ; 1004 2a 09 de
                ADC                      ; 1007 8e
                LM                       ; 1008 16
                LR   $5,A                ; 1009 55
                LISL 4                   ; 100a 6c
                LISU 4                   ; 100b 64
A100c:          LR   A,(IS)              ; 100c 4c
                LISU 5                   ; 100d 65
                NS   (IS)                ; 100e fc
                XS   (IS)                ; 100f ec
                LISU 4                   ; 1010 64
                XS   (IS)-               ; 1011 ee
                NS   $5                  ; 1012 f5
                BF   $4,A1019            ; 1013 94 05
                BR7  A100c               ; 1015 8f f6
                BF   $0,A0fe0            ; 1017 90 c8
A1019:          LR   A,(IS)+             ; 1019 4d
                LR   A,(IS)              ; 101a 4c
                LISU 5                   ; 101b 65
                NS   (IS)                ; 101c fc
                NS   $5                  ; 101d f5
                BT   4,A0fe0             ; 101e 84 c1
                LR   A,IS                ; 1020 0a
                NI   $07                 ; 1021 21 07
                LR   $5,A                ; 1023 55
                LISU 2                   ; 1024 62
                LISL 3                   ; 1025 6b
                LR   A,(IS)              ; 1026 4c
                CI   $10                 ; 1027 25 10
                BT   2,A103d             ; 1029 82 13
                LIS  $4                  ; 102b 74
                XS   $5                  ; 102c e5
                BF   $4,A103d            ; 102d 94 0f
                INS  4                   ; 102f a4
                LR   $8,A                ; 1030 58
                INS  1                   ; 1031 a1
                NS   $8                  ; 1032 f8
                LR   $8,A                ; 1033 58
                LIS  $3                  ; 1034 73
                NS   $8                  ; 1035 f8
                CI   $03                 ; 1036 25 03
                BT   4,A103d             ; 1038 84 04
                LIS  $0                  ; 103a 70
                BF   $0,A103e            ; 103b 90 02
A103d:          LIS  $1                  ; 103d 71
A103e:          XS   $4                  ; 103e e4
                BT   4,A1046             ; 103f 84 06
                LR   A,$b                ; 1041 4b
                LR   IS,A                ; 1042 0b
                DS   (IS)                ; 1043 3c
                BT   2,A0fe0             ; 1044 82 9b
A1046:          LR   A,$5                ; 1046 45
                SL   1                   ; 1047 13
                AS   $5                  ; 1048 c5
                SL   1                   ; 1049 13
                LR   $5,A                ; 104a 55
                LISU 2                   ; 104b 62
                LISL 3                   ; 104c 6b
                LIS  $5                  ; 104d 75
                AS   (IS)                ; 104e cc
                AS   $5                  ; 104f c5
                LR   $5,A                ; 1050 55
                LR   A,$b                ; 1051 4b
                LR   IS,A                ; 1052 0b
                LIS  $6                  ; 1053 76
                COM                      ; 1054 18
                AS   $6                  ; 1055 c6
                LR   (IS)+,A             ; 1056 5d
                LR   A,$5                ; 1057 45
                LR   (IS),A              ; 1058 5c
                LISL 7                   ; 1059 6f
A105a:          LR   A,(IS)+             ; 105a 4d
                LR   A,(IS)+             ; 105b 4d
                SR   1                   ; 105c 12
                SR   1                   ; 105d 12
                BF   $4,A1064            ; 105e 94 05
                LIS  $7                  ; 1060 77
                LR   (IS)-,A             ; 1061 5e
                LIS  $3                  ; 1062 73
                LR   (IS)+,A             ; 1063 5d
A1064:          BR7  A105a               ; 1064 8f f5
                JMP  A11e7               ; 1066 29 11 e7
A1069:          PI   A1641               ; 1069 28 16 41
                LR   A,$a                ; 106c 4a
                SR   1                   ; 106d 12
                LIS  $1                  ; 106e 71
                BF   $4,A1073            ; 106f 94 03
                LIS  $0                  ; 1071 70
                COM                      ; 1072 18
A1073:          AS   (IS)                ; 1073 cc
                LR   (IS),A              ; 1074 5c
                LR   A,$a                ; 1075 4a
                SR   1                   ; 1076 12
                BT   4,A107c             ; 1077 84 04
                JMP  A116e               ; 1079 29 11 6e
A107c:          LISL 3                   ; 107c 6b
                LR   A,(IS)-             ; 107d 4e
                COM                      ; 107e 18
                INC                      ; 107f 1f
                LR   $6,A                ; 1080 56
                LR   A,(IS)              ; 1081 4c
                COM                      ; 1082 18
                LR   $5,A                ; 1083 55
                LR   A,$b                ; 1084 4b
                LR   IS,A                ; 1085 0b
                LIS  $2                  ; 1086 72
                AS   $5                  ; 1087 c5
                AS   (IS)+               ; 1088 cd
                LR   $1,A                ; 1089 51
                LIS  $9                  ; 108a 79
                LR   $2,A                ; 108b 52
                PI   A16eb               ; 108c 28 16 eb
                LR   $5,A                ; 108f 55
                LR   A,(IS)              ; 1090 4c
                AS   $6                  ; 1091 c6
                LR   $1,A                ; 1092 51
                LIS  $6                  ; 1093 76
                LR   $2,A                ; 1094 52
                LR   A,$0                ; 1095 40
                LR   $6,A                ; 1096 56
                PI   A16eb               ; 1097 28 16 eb
                LR   A,$0                ; 109a 40
                DCI  $09c7               ; 109b 2a 09 c7
                ADC                      ; 109e 8e
                LM                       ; 109f 16
                LR   $0,A                ; 10a0 50
                DCI  A09cd               ; 10a1 2a 09 cd
                LR   A,$6                ; 10a4 46
                ADC                      ; 10a5 8e
                LR   A,$0                ; 10a6 40
                NM                       ; 10a7 8a
                LR   $0,A                ; 10a8 50
                LIS  $4                  ; 10a9 74
                COM                      ; 10aa 18
                AS   $1                  ; 10ab c1
                BT   2,A10fc             ; 10ac 82 4f
                LIS  $6                  ; 10ae 76
                COM                      ; 10af 18
                AS   $5                  ; 10b0 c5
                BT   2,A10fc             ; 10b1 82 4a
                PI   A120b               ; 10b3 28 12 0b
                COM                      ; 10b6 18
                INC                      ; 10b7 1f
                LR   $6,A                ; 10b8 56
                LR   A,$1                ; 10b9 41
                SL   4                   ; 10ba 15
                SR   1                   ; 10bb 12
                AS   $5                  ; 10bc c5
                AS   $6                  ; 10bd c6
                LIS  $8                  ; 10be 78
                BF   $1,A10c7            ; 10bf 91 07
                LIS  $1                  ; 10c1 71
                NS   $9                  ; 10c2 f9
                BF   $4,A10c7            ; 10c3 94 03
                LIS  $2                  ; 10c5 72
                AS   $9                  ; 10c6 c9
A10c7:          LR   $6,A                ; 10c7 56
                NS   $0                  ; 10c8 f0
                BT   4,A10fc             ; 10c9 84 32
                DCI  $13c6               ; 10cb 2a 13 c6
                LR   A,$5                ; 10ce 45
                COM                      ; 10cf 18
                ADC                      ; 10d0 8e
                LM                       ; 10d1 16
                LR   $5,A                ; 10d2 55
                LR   A,$1                ; 10d3 41
                LR   IS,A                ; 10d4 0b
                LISU 4                   ; 10d5 64
                LR   A,$5                ; 10d6 45
                NS   (IS)                ; 10d7 fc
                LISU 5                   ; 10d8 65
                NS   (IS)                ; 10d9 fc
                BT   4,A10fc             ; 10da 84 21
                LISU 6                   ; 10dc 66
                LISL 0                   ; 10dd 68
                LIS  $8                  ; 10de 78
                XS   $6                  ; 10df e6
                SL   1                   ; 10e0 13
                SR   4                   ; 10e1 14
                AS   (IS)                ; 10e2 cc
                SL   1                   ; 10e3 13
                SL   1                   ; 10e4 13
                NI   $08                 ; 10e5 21 08
                XI   $28                 ; 10e7 23 28
                AS   $1                  ; 10e9 c1
                LR   IS,A                ; 10ea 0b
                LR   A,$5                ; 10eb 45
                XS   (IS)                ; 10ec ec
                LR   (IS),A              ; 10ed 5c
                LIS  $5                  ; 10ee 75
                COM                      ; 10ef 18
                AS   $1                  ; 10f0 c1
                COM                      ; 10f1 18
                LR   $5,A                ; 10f2 55
                LISU 4                   ; 10f3 64
                LISL 4                   ; 10f4 6c
                LR   A,(IS)              ; 10f5 4c
                SR   1                   ; 10f6 12
                SL   1                   ; 10f7 13
                AS   $7                  ; 10f8 c7
                LR   (IS),A              ; 10f9 5c
                BF   $0,A1150            ; 10fa 90 55
A10fc:          LIS  $c                  ; 10fc 7c
                LR   $6,A                ; 10fd 56
                LISU 4                   ; 10fe 64
                LISL 6                   ; 10ff 6e
                LIS  $3                  ; 1100 73
                NS   (IS)+               ; 1101 fd
                BT   4,A115c             ; 1102 84 59
                CI   $03                 ; 1104 25 03
                BF   $4,A115a            ; 1106 94 53
                LR   A,(IS)              ; 1108 4c
                COM                      ; 1109 18
                INC                      ; 110a 1f
                LR   $5,A                ; 110b 55
                LR   A,$b                ; 110c 4b
                LR   IS,A                ; 110d 0b
                LR   A,(IS)+             ; 110e 4d
                AS   $5                  ; 110f c5
                CI   $04                 ; 1110 25 04
                BF   $2,A115a            ; 1112 92 47
                LI   $f8                 ; 1114 20 f8
                AS   (IS)                ; 1116 cc
                CI   $04                 ; 1117 25 04
                BF   $2,A115a            ; 1119 92 40
                LISU 4                   ; 111b 64
                LISL 6                   ; 111c 6e
                LIS  $1                  ; 111d 71
                XS   (IS)                ; 111e ec
                LR   (IS),A              ; 111f 5c
                LI   $19                 ; 1120 20 19
                LR   $5,A                ; 1122 55
                LISU 1                   ; 1123 61
                LI   $a0                 ; 1124 20 a0
                XS   (IS)                ; 1126 ec
                SR   4                   ; 1127 14
                BF   $4,A1150            ; 1128 94 27
                LIS  $6                  ; 112a 76
                AS   $7                  ; 112b c7
                SL   4                   ; 112c 15
                SR   1                   ; 112d 12
                LR   IS,A                ; 112e 0b
                LISL 3                   ; 112f 6b
                LIS  $f                  ; 1130 7f
                NS   (IS)                ; 1131 fc
                LI   $ef                 ; 1132 20 ef
                BF   $4,A1137            ; 1134 94 02
                INC                      ; 1136 1f
A1137:          AS   (IS)                ; 1137 cc
                LR   (IS),A              ; 1138 5c
                AI   $10                 ; 1139 24 10
                BF   $2,A113e            ; 113b 92 02
                LR   (IS),A              ; 113d 5c
A113e:          LI   $69                 ; 113e 20 69
                ASD  (IS)                ; 1140 dc
                LR   (IS),A              ; 1141 5c
                BT   4,A114c             ; 1142 84 09
                SR   4                   ; 1144 14
                LIS  $1                  ; 1145 71
                BT   4,A114a             ; 1146 84 03
                LI   $11                 ; 1148 20 11
A114a:          AS   (IS)                ; 114a cc
                LR   (IS),A              ; 114b 5c
A114c:          LI   $19                 ; 114c 20 19
                AS   $5                  ; 114e c5
                LR   $5,A                ; 114f 55
A1150:          LR   A,$7                ; 1150 47
                LR   IS,A                ; 1151 0b
                LISU 7                   ; 1152 67
                LR   A,$5                ; 1153 45
                SL   1                   ; 1154 13
                SL   1                   ; 1155 13
                AS   (IS)                ; 1156 cc
                LR   (IS),A              ; 1157 5c
                BF   $0,A1165            ; 1158 90 0c
A115a:          LIS  $7                  ; 115a 77
                LR   $6,A                ; 115b 56
A115c:          LR   A,$b                ; 115c 4b
                LR   IS,A                ; 115d 0b
                LR   A,(IS)+             ; 115e 4d
                LR   A,(IS)-             ; 115f 4e
                COM                      ; 1160 18
                INC                      ; 1161 1f
                AS   $6                  ; 1162 c6
                BF   $2,A11bf            ; 1163 92 5b
A1165:          LR   A,$b                ; 1165 4b
                LR   IS,A                ; 1166 0b
                LIS  $3                  ; 1167 73
                LR   (IS)+,A             ; 1168 5d
                LIS  $7                  ; 1169 77
                LR   (IS),A              ; 116a 5c
                JMP  A11f6               ; 116b 29 11 f6
A116e:          LI   $36                 ; 116e 20 36
                XS   (IS)                ; 1170 ec
                BF   $4,A117b            ; 1171 94 09
                LR   A,(IS)-             ; 1173 4e
                LI   $f2                 ; 1174 20 f2
                AS   (IS)+               ; 1176 cd
                CI   $4b                 ; 1177 25 4b
                BF   $2,A1165            ; 1179 92 eb
A117b:          LR   A,(IS)              ; 117b 4c
                CI   $3b                 ; 117c 25 3b
                BT   4,A1165             ; 117e 84 e6
                LISU 2                   ; 1180 62
                LISL 1                   ; 1181 69
A1182:          LR   A,(IS)              ; 1182 4c
                COM                      ; 1183 18
                INC                      ; 1184 1f
                LR   $6,A                ; 1185 56
                LR   A,IS                ; 1186 0a
                LR   $5,A                ; 1187 55
                LR   A,$b                ; 1188 4b
                LR   IS,A                ; 1189 0b
                LR   A,(IS)+             ; 118a 4d
                AS   $6                  ; 118b c6
                CI   $04                 ; 118c 25 04
                BF   $2,A11b8            ; 118e 92 29
                LI   $c9                 ; 1190 20 c9
                AS   (IS)                ; 1192 cc
                CI   $03                 ; 1193 25 03
                BF   $2,A11b8            ; 1195 92 22
                LR   A,$5                ; 1197 45
                LR   IS,A                ; 1198 0b
                LISU 5                   ; 1199 65
                LIS  $1                  ; 119a 71
                NS   (IS)                ; 119b fc
                BF   $4,A11b8            ; 119c 94 1b
                LIS  $1                  ; 119e 71
                XS   (IS)                ; 119f ec
                LR   (IS),A              ; 11a0 5c
                LISU 7                   ; 11a1 67
                DS   (IS)                ; 11a2 3c
                LISU 4                   ; 11a3 64
                LISL 3                   ; 11a4 6b
                LR   A,(IS)              ; 11a5 4c
                OI   $01                 ; 11a6 22 01
                LR   (IS),A              ; 11a8 5c
                LISL 6                   ; 11a9 6e
                LIS  $3                  ; 11aa 73
                NS   (IS)+               ; 11ab fd
                BF   $4,A1165            ; 11ac 94 b8
                LR   A,(IS)              ; 11ae 4c
                CI   $f0                 ; 11af 25 f0
                BF   $2,A1165            ; 11b1 92 b3
                LI   $f0                 ; 11b3 20 f0
                LR   (IS),A              ; 11b5 5c
A11b6:          BF   $0,A1165            ; 11b6 90 ae
A11b8:          LR   A,$5                ; 11b8 45
                LR   IS,A                ; 11b9 0b
                LR   A,(IS)-             ; 11ba 4e
                BR7  A1182               ; 11bb 8f c6
                LR   A,$b                ; 11bd 4b
                LR   IS,A                ; 11be 0b
A11bf:          LI   $e5                 ; 11bf 20 e5
                AS   (IS)+               ; 11c1 cd
                LR   $1,A                ; 11c2 51
                LI   $15                 ; 11c3 20 15
                LR   $2,A                ; 11c5 52
                PI   A16eb               ; 11c6 28 16 eb
                CI   $02                 ; 11c9 25 02
                BF   $1,A11e7            ; 11cb 91 1b
                LIS  $7                  ; 11cd 77
                COM                      ; 11ce 18
                AS   $0                  ; 11cf c0
                BT   1,A11e7             ; 11d0 81 16
                LI   $cf                 ; 11d2 20 cf
                AS   (IS)                ; 11d4 cc
                LR   $2,A                ; 11d5 52
                SR   1                   ; 11d6 12
                SR   1                   ; 11d7 12
                BF   $4,A11e7            ; 11d8 94 0e
                PI   A142e               ; 11da 28 14 2e
                BT   4,A11e7             ; 11dd 84 09
                LR   A,$3                ; 11df 43
                XS   (IS)                ; 11e0 ec
                LR   (IS),A              ; 11e1 5c
                PI   A1641               ; 11e2 28 16 41
                BF   $0,A11b6            ; 11e5 90 d0
A11e7:          LR   A,$a                ; 11e7 4a
                SR   1                   ; 11e8 12
                LIS  $8                  ; 11e9 78
                BF   $4,A11f1            ; 11ea 94 06
                LR   A,$7                ; 11ec 47
                SL   1                   ; 11ed 13
                INC                      ; 11ee 1f
                SL   1                   ; 11ef 13
                SL   1                   ; 11f0 13
A11f1:          SL   4                   ; 11f1 15
                LR   $4,A                ; 11f2 54
                PI   A1643               ; 11f3 28 16 43
A11f6:          LR   A,$a                ; 11f6 4a
                SR   1                   ; 11f7 12
                BF   $4,A1205            ; 11f8 94 0c
                LISU 7                   ; 11fa 67
                LISL 2                   ; 11fb 6a
                LIS  $2                  ; 11fc 72
                NS   (IS)                ; 11fd fc
                INC                      ; 11fe 1f
                INC                      ; 11ff 1f
                AS   $a                  ; 1200 ca
                LR   $a,A                ; 1201 5a
                JMP  A0f5c               ; 1202 29 0f 5c
A1205:          PI   A122d               ; 1205 28 12 2d
                JMP  A0c5a               ; 1208 29 0c 5a
A120b:          LISU 6                   ; 120b 66
                LISL 2                   ; 120c 6a
                LIS  $3                  ; 120d 73
                NS   (IS)                ; 120e fc
                LR   $9,A                ; 120f 59
                LR   A,(IS)              ; 1210 4c
                SR   1                   ; 1211 12
                SR   1                   ; 1212 12
                LR   $8,A                ; 1213 58
                POP                      ; 1214 1c
A1215:          LISU 6                   ; 1215 66
                LISL 2                   ; 1216 6a
                LR   A,$8                ; 1217 48
                SL   1                   ; 1218 13
                SL   1                   ; 1219 13
                AS   $9                  ; 121a c9
                LR   (IS),A              ; 121b 5c
                POP                      ; 121c 1c
A121d:          LISU 2                   ; 121d 62
                LISL 3                   ; 121e 6b
A121f:          LIS  $1                  ; 121f 71
                NS   $9                  ; 1220 f9
                AS   (IS)                ; 1221 cc
                LR   (IS)-,A             ; 1222 5e
                LIS  $3                  ; 1223 73
                XS   $9                  ; 1224 e9
                LIS  $1                  ; 1225 71
                BT   4,A1229             ; 1226 84 02
                LR   A,$9                ; 1228 49
A1229:          AS   (IS)                ; 1229 cc
                LR   (IS),A              ; 122a 5c
                DS   (IS)                ; 122b 3c
                POP                      ; 122c 1c
A122d:          LR   K,P                 ; 122d 08
                LISU 6                   ; 122e 66
                LISL 1                   ; 122f 69
                LIS  $2                  ; 1230 72
                NS   (IS)-               ; 1231 fe
                BT   4,A123b             ; 1232 84 08
                LI   $1f                 ; 1234 20 1f
                LR   $0,A                ; 1236 50
                PI   A1707               ; 1237 28 17 07
                PK                       ; 123a 0c
A123b:          LR   A,(IS)              ; 123b 4c
                LR   $3,A                ; 123c 53
                PI   A120b               ; 123d 28 12 0b
                SL   1                   ; 1240 13
                SR   4                   ; 1241 14
                LR   $6,A                ; 1242 56
                LR   IS,A                ; 1243 0b
                LIS  $7                  ; 1244 77
                NS   $8                  ; 1245 f8
                LR   $7,A                ; 1246 57
                COM                      ; 1247 18
                DCI  A13c0               ; 1248 2a 13 c0
                ADC                      ; 124b 8e
                LISU 5                   ; 124c 65
                LR   A,(IS)              ; 124d 4c
                LISU 4                   ; 124e 64
                NS   (IS)                ; 124f fc
                XS   (IS)                ; 1250 ec
                LISU 5                   ; 1251 65
                XS   (IS)                ; 1252 ec
                NM                       ; 1253 8a
                LIS  $6                  ; 1254 76
                ADC                      ; 1255 8e
                BF   $4,A125a            ; 1256 94 03
A1258:          LIS  $0                  ; 1258 70
                LR   $7,A                ; 1259 57
A125a:          DS   $7                  ; 125a 37
                BT   2,A1299             ; 125b 82 3d
                LIS  $6                  ; 125d 76
                LR   $7,A                ; 125e 57
                DS   $6                  ; 125f 36
                BT   2,A128b             ; 1260 82 2a
                LIS  $4                  ; 1262 74
                LR   $6,A                ; 1263 56
                PI   A121d               ; 1264 28 12 1d
                LISU 6                   ; 1267 66
                LISL 1                   ; 1268 69
                LIS  $1                  ; 1269 71
                NS   (IS)                ; 126a fc
                BT   4,A1284             ; 126b 84 18
                DS   (IS)                ; 126d 3c
                LIS  $1                  ; 126e 71
                AS   $9                  ; 126f c9
                NI   $03                 ; 1270 21 03
                LR   $9,A                ; 1272 59
                LISU 4                   ; 1273 64
                LIS  $1                  ; 1274 71
                NS   (IS)                ; 1275 fc
                BT   4,A127f             ; 1276 84 08
                LIS  $1                  ; 1278 71
                NS   $9                  ; 1279 f9
                BT   4,A127f             ; 127a 84 04
                LIS  $3                  ; 127c 73
                XS   $9                  ; 127d e9
                LR   $9,A                ; 127e 59
A127f:          LISL 2                   ; 127f 6a
                LR   A,(IS)              ; 1280 4c
                SR   1                   ; 1281 12
                SL   1                   ; 1282 13
                LR   (IS),A              ; 1283 5c
A1284:          LIS  $1                  ; 1284 71
                AS   $3                  ; 1285 c3
                LR   $3,A                ; 1286 53
                LISU 6                   ; 1287 66
                LISL 0                   ; 1288 68
                LR   (IS),A              ; 1289 5c
                LISL 5                   ; 128a 6d
A128b:          LR   A,(IS)-             ; 128b 4e
                LISU 5                   ; 128c 65
                DCI  $13bf               ; 128d 2a 13 bf
                LR   A,(IS)              ; 1290 4c
                LISU 4                   ; 1291 64
                NS   (IS)                ; 1292 fc
                XS   (IS)                ; 1293 ec
                LISU 5                   ; 1294 65
                XS   (IS)                ; 1295 ec
                SR   1                   ; 1296 12
                BT   4,A1258             ; 1297 84 c0
A1299:          LISU 5                   ; 1299 65
                LIS  $0                  ; 129a 70
                LR   $2,A                ; 129b 52
                LIS  $2                  ; 129c 72
                LR   $0,A                ; 129d 50
                LM                       ; 129e 16
                LR   $1,A                ; 129f 51
A12a0:          NS   (IS)                ; 12a0 fc
                BT   4,A12a6             ; 12a1 84 04
                LR   A,$2                ; 12a3 42
                AS   $0                  ; 12a4 c0
                LR   $2,A                ; 12a5 52
A12a6:          LISU 4                   ; 12a6 64
                LR   A,$1                ; 12a7 41
                DS   $0                  ; 12a8 30
                BF   $4,A12a0            ; 12a9 94 f6
                LIS  $0                  ; 12ab 70
                XS   $2                  ; 12ac e2
                BT   4,A125a             ; 12ad 84 ac
                LIS  $3                  ; 12af 73
                XS   $2                  ; 12b0 e2
                BT   4,A1312             ; 12b1 84 60
                DCI  $0857               ; 12b3 2a 08 57
                LIS  $3                  ; 12b6 73
                NS   $3                  ; 12b7 f3
                CI   $03                 ; 12b8 25 03
                BF   $4,A130b            ; 12ba 94 50
                LR   A,$1                ; 12bc 41
                XS   (IS)                ; 12bd ec
                LR   (IS),A              ; 12be 5c
                LISU 5                   ; 12bf 65
                LR   A,$1                ; 12c0 41
                COM                      ; 12c1 18
                NS   (IS)                ; 12c2 fc
                LR   (IS),A              ; 12c3 5c
                LIS  $1                  ; 12c4 71
                XS   $2                  ; 12c5 e2
                BF   $4,A130b            ; 12c6 94 44
                LISU 6                   ; 12c8 66
                LISL 1                   ; 12c9 69
                LIS  $3                  ; 12ca 73
                COM                      ; 12cb 18
                AS   (IS)                ; 12cc cc
                LR   (IS),A              ; 12cd 5c
                SR   1                   ; 12ce 12
                XI   $38                 ; 12cf 23 38
                SR   1                   ; 12d1 12
                BF   $4,A12e6            ; 12d2 94 13
                LISL 4                   ; 12d4 6c
                LISU 4                   ; 12d5 64
                LR   A,(IS)              ; 12d6 4c
                LISU 5                   ; 12d7 65
                NS   (IS)                ; 12d8 fc
                XS   (IS)                ; 12d9 ec
                LISU 4                   ; 12da 64
                XS   (IS)                ; 12db ec
                SR   1                   ; 12dc 12
                BF   $4,A12e6            ; 12dd 94 08
                LISL 6                   ; 12df 6e
                LISU 1                   ; 12e0 61
                LIS  $5                  ; 12e1 75
                AS   (IS)                ; 12e2 cc
                NI   $fa                 ; 12e3 21 fa
                LR   (IS),A              ; 12e5 5c
A12e6:          LISU 6                   ; 12e6 66
                LISL 1                   ; 12e7 69
                LR   A,(IS)              ; 12e8 4c
                SR   1                   ; 12e9 12
                SR   1                   ; 12ea 12
                BF   $4,A130b            ; 12eb 94 1f
                LR   A,(IS)              ; 12ed 4c
                OI   $02                 ; 12ee 22 02
                LR   (IS),A              ; 12f0 5c
                LISU 4                   ; 12f1 64
                LISL 6                   ; 12f2 6e
                LIS  $3                  ; 12f3 73
                NS   (IS)+               ; 12f4 fd
                BF   $4,A12ff            ; 12f5 94 09
                LR   A,(IS)              ; 12f7 4c
                CI   $f0                 ; 12f8 25 f0
                BF   $2,A12ff            ; 12fa 92 04
                LI   $f0                 ; 12fc 20 f0
                LR   (IS),A              ; 12fe 5c
A12ff:          LISL 4                   ; 12ff 6c
                LIS  $1                  ; 1300 71
                NS   (IS)                ; 1301 fc
                LR   IS,A                ; 1302 0b
                LISU 7                   ; 1303 67
                LR   A,$6                ; 1304 46
                AI   $2d                 ; 1305 24 2d
                SL   1                   ; 1307 13
                SL   1                   ; 1308 13
                AS   (IS)                ; 1309 cc
                LR   (IS),A              ; 130a 5c
A130b:          LIS  $1                  ; 130b 71
                NS   $2                  ; 130c f2
                SL   1                   ; 130d 13
                INC                      ; 130e 1f
                NS   $3                  ; 130f f3
                BF   $0,A131e            ; 1310 90 0d
A1312:          DCI  $0887               ; 1312 2a 08 87
                LR   A,$6                ; 1315 46
                SL   1                   ; 1316 13
                SL   1                   ; 1317 13
                LR   $0,A                ; 1318 50
                LIS  $f                  ; 1319 7f
                NS   $3                  ; 131a f3
                SR   1                   ; 131b 12
                SR   1                   ; 131c 12
                AS   $0                  ; 131d c0
A131e:          LR   $0,A                ; 131e 50
                SL   1                   ; 131f 13
                AS   $0                  ; 1320 c0
                SL   1                   ; 1321 13
                ADC                      ; 1322 8e
                LISU 2                   ; 1323 62
                LISL 3                   ; 1324 6b
                LR   A,$6                ; 1325 46
                SL   1                   ; 1326 13
                AS   $6                  ; 1327 c6
                SL   1                   ; 1328 13
                AS   (IS)-               ; 1329 ce
                LR   $1,A                ; 132a 51
                LR   A,$7                ; 132b 47
                SL   4                   ; 132c 15
                SR   1                   ; 132d 12
                AS   $7                  ; 132e c7
                AS   (IS)                ; 132f cc
                LR   $0,A                ; 1330 50
                LISU 0                   ; 1331 60
                LISL 1                   ; 1332 69
                PI   A121f               ; 1333 28 12 1f
                LIS  $3                  ; 1336 73
                XS   $2                  ; 1337 e2
                BF   $4,A1364            ; 1338 94 2b
                LR   A,$1                ; 133a 41
                CI   $31                 ; 133b 25 31
                BF   $4,A134a            ; 133d 94 0c
                LISU 4                   ; 133f 64
                LISL 1                   ; 1340 69
                LR   A,(IS)              ; 1341 4c
                OI   $01                 ; 1342 22 01
                LR   (IS),A              ; 1344 5c
                LISL 3                   ; 1345 6b
                LR   A,(IS)              ; 1346 4c
                OI   $01                 ; 1347 22 01
                LR   (IS),A              ; 1349 5c
A134a:          LR   A,$1                ; 134a 41
                CI   $2c                 ; 134b 25 2c
                BF   $4,A1355            ; 134d 94 07
                LISU 4                   ; 134f 64
                LISL 2                   ; 1350 6a
                LR   A,(IS)              ; 1351 4c
                OI   $01                 ; 1352 22 01
                LR   (IS),A              ; 1354 5c
A1355:          LR   A,$0                ; 1355 40
                XI   $5a                 ; 1356 23 5a
                BT   4,A135e             ; 1358 84 05
                LIS  $9                  ; 135a 79
                XS   $0                  ; 135b e0
                BF   $4,A1364            ; 135c 94 07
A135e:          LISU 6                   ; 135e 66
                LISL 1                   ; 135f 69
                LR   A,(IS)              ; 1360 4c
                OI   $01                 ; 1361 22 01
                LR   (IS),A              ; 1363 5c
A1364:          DS   $0                  ; 1364 30
                DS   $1                  ; 1365 31
                LR   A,$6                ; 1366 46
                SL   4                   ; 1367 15
                SR   1                   ; 1368 12
                AS   $7                  ; 1369 c7
                LR   $8,A                ; 136a 58
                LR   A,$2                ; 136b 42
                LR   $b,A                ; 136c 5b
                LIS  $7                  ; 136d 77
                LR   $2,A                ; 136e 52
                LIS  $6                  ; 136f 76
                LR   $3,A                ; 1370 53
                LIS  $8                  ; 1371 78
                SL   4                   ; 1372 15
                LR   $4,A                ; 1373 54
                PI   A1600               ; 1374 28 16 00
                PI   A1215               ; 1377 28 12 15
                LIS  $2                  ; 137a 72
                LR   $3,A                ; 137b 53
                LIS  $3                  ; 137c 73
                XS   $b                  ; 137d eb
                BF   $4,A13aa            ; 137e 94 2b
                LISU 4                   ; 1380 64
                LISL 3                   ; 1381 6b
                LIS  $1                  ; 1382 71
                NS   (IS)                ; 1383 fc
                BF   $4,A13aa            ; 1384 94 25
                LISL 5                   ; 1386 6d
                DS   (IS)                ; 1387 3c
                LR   A,(IS)              ; 1388 4c
                SL   1                   ; 1389 13
                SL   1                   ; 138a 13
                BF   $4,A13aa            ; 138b 94 1e
                LIS  $c                  ; 138d 7c
                SL   4                   ; 138e 15
                AS   (IS)                ; 138f cc
                LR   $2,A                ; 1390 52
                LISU 6                   ; 1391 66
                LISL 1                   ; 1392 69
                LIS  $7                  ; 1393 77
                LR   $0,A                ; 1394 50
                DCI  A09de               ; 1395 2a 09 de
A1398:          DS   $0                  ; 1398 30
                LR   A,(IS)              ; 1399 4c
                NM                       ; 139a 8a
                BT   4,A1398             ; 139b 84 fc
                LR   A,$0                ; 139d 40
                SL   4                   ; 139e 15
                SR   1                   ; 139f 12
                AS   $2                  ; 13a0 c2
                LISU 4                   ; 13a1 64
                LISL 5                   ; 13a2 6d
                LR   (IS),A              ; 13a3 5c
                NS   $2                  ; 13a4 f2
                LIS  $1                  ; 13a5 71
                BT   4,A13a9             ; 13a6 84 02
                LIS  $0                  ; 13a8 70
A13a9:          LR   $3,A                ; 13a9 53
A13aa:          LR   A,$3                ; 13aa 43
                SL   1                   ; 13ab 13
                SL   1                   ; 13ac 13
                AS   $3                  ; 13ad c3
                SL   1                   ; 13ae 13
                SL   1                   ; 13af 13
                AS   $3                  ; 13b0 c3
                DCI  A0988               ; 13b1 2a 09 88
                ADC                      ; 13b4 8e
                PI   A1711               ; 13b5 28 17 11
                PK                       ; 13b8 0c
                NS   (IS)                ; 13b9 fc
                NS   $8                  ; 13ba f8
                NS   $0                  ; 13bb f0
                XS   $0                  ; 13bc e0
                AS   $0                  ; 13bd c0
                BT   0,A13c1             ; 13be 80 02
A13c0:          LR   KU,A                ; 13c0 04
A13c1:          LR   K,P                 ; 13c1 08
                LR   DC,H                ; 13c2 10
                LI   $40                 ; 13c3 20 40
                BT   0,8                 ; 13c5 80 08
                LISU 5                   ; 13c7 65
                LISL 5                   ; 13c8 6d
                LR   A,(IS)              ; 13c9 4c
                SR   4                   ; 13ca 14
                CI   $09                 ; 13cb 25 09
                BT   4,A13d4             ; 13cd 84 06
                LIS  $1                  ; 13cf 71
                SL   4                   ; 13d0 15
                AS   (IS)                ; 13d1 cc
                LR   (IS),A              ; 13d2 5c
                SR   4                   ; 13d3 14
A13d4:          AI   $0e                 ; 13d4 24 0e
                LISU 2                   ; 13d6 62
                LISL 3                   ; 13d7 6b
                LR   (IS)-,A             ; 13d8 5e
                LIS  $9                  ; 13d9 79
                LR   (IS),A              ; 13da 5c
                LISU 6                   ; 13db 66
                LI   $a1                 ; 13dc 20 a1
                LR   (IS)-,A             ; 13de 5e
                LI   $8c                 ; 13df 20 8c
                LR   (IS),A              ; 13e1 5c
                LISU 4                   ; 13e2 64
                LISL 1                   ; 13e3 69
                LIS  $0                  ; 13e4 70
                LR   (IS),A              ; 13e5 5c
                LISL 4                   ; 13e6 6c
A13e7:          LISU 4                   ; 13e7 64
                LR   A,(IS)              ; 13e8 4c
                OI   $fe                 ; 13e9 22 fe
                LR   (IS),A              ; 13eb 5c
                LISU 5                   ; 13ec 65
                LR   A,(IS)              ; 13ed 4c
                OI   $fe                 ; 13ee 22 fe
                LR   (IS)-,A             ; 13f0 5e
                BR7  A13e7               ; 13f1 8f f5
                LISU 5                   ; 13f3 65
                LISL 5                   ; 13f4 6d
                LR   A,(IS)              ; 13f5 4c
                SR   4                   ; 13f6 14
                CI   $04                 ; 13f7 25 04
                LIS  $0                  ; 13f9 70
                BF   $2,A13fd            ; 13fa 92 02
                COM                      ; 13fc 18
A13fd:          LR   $0,A                ; 13fd 50
                LISU 5                   ; 13fe 65
A13ff:          LISL 5                   ; 13ff 6d
                LR   A,(IS)              ; 1400 4c
                SR   4                   ; 1401 14
                SL   4                   ; 1402 15
                LR   (IS),A              ; 1403 5c
                LIS  $f                  ; 1404 7f
                NS   $0                  ; 1405 f0
                AS   (IS)                ; 1406 cc
                LR   (IS)+,A             ; 1407 5d
                LR   A,$0                ; 1408 40
                LR   (IS)+,A             ; 1409 5d
                LR   (IS),A              ; 140a 5c
                LR   A,IS                ; 140b 0a
                AI   $c8                 ; 140c 24 c8
                LR   IS,A                ; 140e 0b
                BF   $2,A13ff            ; 140f 92 ef
                LIS  $8                  ; 1411 78
                NS   $0                  ; 1412 f0
                SL   4                   ; 1413 15
                LR   $4,A                ; 1414 54
                LIS  $8                  ; 1415 78
                LR   $2,A                ; 1416 52
                LI   $31                 ; 1417 20 31
                LR   $1,A                ; 1419 51
                LI   $1b                 ; 141a 20 1b
                LR   $0,A                ; 141c 50
A141d:          DCI  $084f               ; 141d 2a 08 4f
                LIS  $4                  ; 1420 74
                LR   $3,A                ; 1421 53
                PI   A1600               ; 1422 28 16 00
                LI   $15                 ; 1425 20 15
                AS   $0                  ; 1427 c0
                LR   $0,A                ; 1428 50
                CI   $5a                 ; 1429 25 5a
                BF   $4,A141d            ; 142b 94 f1
                PK                       ; 142d 0c
A142e:          DCI  $084f               ; 142e 2a 08 4f
                LR   A,$2                ; 1431 42
                ADC                      ; 1432 8e
                LM                       ; 1433 16
                LR   $3,A                ; 1434 53
                LR   A,$0                ; 1435 40
                DCI  A09de               ; 1436 2a 09 de
                ADC                      ; 1439 8e
                LR   A,$3                ; 143a 43
                NM                       ; 143b 8a
                BT   4,A1453             ; 143c 84 16
                DCI  A09d6               ; 143e 2a 09 d6
                LR   A,$2                ; 1441 42
                SL   1                   ; 1442 13
                ADC                      ; 1443 8e
                LIS  $5                  ; 1444 75
                AS   $1                  ; 1445 c1
                SL   4                   ; 1446 15
                SR   1                   ; 1447 12
                AM                       ; 1448 88
                LR   IS,A                ; 1449 0b
                LM                       ; 144a 16
                DCI  A09de               ; 144b 2a 09 de
                AS   $0                  ; 144e c0
                ADC                      ; 144f 8e
                LM                       ; 1450 16
                LR   $3,A                ; 1451 53
                NS   (IS)                ; 1452 fc
A1453:          POP                      ; 1453 1c
A1454:          LIS  $0                  ; 1454 70
                BF   $0,A1458            ; 1455 90 02
A1457:          LIS  $1                  ; 1457 71
A1458:          LR   $4,A                ; 1458 54
A1459:          LR   A,$8                ; 1459 48
                LR   IS,A                ; 145a 0b
                LISU 2                   ; 145b 62
                LIS  $0                  ; 145c 70
                XS   $4                  ; 145d e4
                BT   4,A1465             ; 145e 84 06
                LR   A,$8                ; 1460 48
                SL   1                   ; 1461 13
                INC                      ; 1462 1f
                SL   1                   ; 1463 13
                SL   1                   ; 1464 13
A1465:          SL   4                   ; 1465 15
                LR   $4,A                ; 1466 54
                LR   A,(IS)              ; 1467 4c
                LR   $0,A                ; 1468 50
                DS   $0                  ; 1469 30
                LI   $37                 ; 146a 20 37
                LR   $1,A                ; 146c 51
                LIS  $7                  ; 146d 77
                LR   $2,A                ; 146e 52
                LIS  $4                  ; 146f 74
                LR   $3,A                ; 1470 53
                DCI  A0853               ; 1471 2a 08 53
                JMP  A1600               ; 1474 29 16 00
                DCI  $2a2a               ; 1477 2a 2a 2a
                DCI  $2a2a               ; 147a 2a 2a 2a
                DCI  $2a2a               ; 147d 2a 2a 2a
                DCI  $2a2a               ; 1480 2a 2a 2a
                DCI  $2020               ; 1483 2a 20 20
                LR   A,$2                ; 1486 42
                LR   A,$5                ; 1487 45
                LR   A,$7                ; 1488 47
                LR   A,$9                ; 1489 49
                LR   A,(IS)-             ; 148a 4e
                LR   A,(IS)-             ; 148b 4e
                LR   A,$9                ; 148c 49
                LR   A,(IS)-             ; 148d 4e
                LR   A,$7                ; 148e 47
                LI   $20                 ; 148f 20 20
                DCI  $2a2a               ; 1491 2a 2a 2a
                DCI  $2a2a               ; 1494 2a 2a 2a
                DCI  $2a2a               ; 1497 2a 2a 2a
                DCI  $2a2a               ; 149a 2a 2a 2a
                DCI  $2a2a               ; 149d 2a 2a 2a
                DCI  $5343               ; 14a0 2a 53 43
                LR   $2,A                ; 14a3 52
                LR   A,$5                ; 14a4 45
                LR   A,$5                ; 14a5 45
                LR   A,(IS)-             ; 14a6 4e
                LR   $3,A                ; 14a7 53
                LR   $4,A                ; 14a8 54
                LR   A,KU                ; 14a9 00
                LR   A,KU                ; 14aa 00
                LR   A,KU                ; 14ab 00
                LR   A,KU                ; 14ac 00
                LR   A,KU                ; 14ad 00
                LR   A,KU                ; 14ae 00
                LR   A,KU                ; 14af 00
                LR   A,KU                ; 14b0 00
                LR   A,KU                ; 14b1 00
                LR   A,KU                ; 14b2 00
                LR   A,KU                ; 14b3 00
                LR   A,KU                ; 14b4 00
                LR   A,KU                ; 14b5 00
                LR   A,KU                ; 14b6 00
                LR   A,KU                ; 14b7 00
                LR   A,KU                ; 14b8 00
                LR   A,KU                ; 14b9 00
                LR   A,KU                ; 14ba 00
                LR   A,KU                ; 14bb 00
                LR   A,KU                ; 14bc 00
                LR   A,KU                ; 14bd 00
                LR   A,KU                ; 14be 00
                LR   A,KU                ; 14bf 00
                LR   A,KU                ; 14c0 00
                LR   A,KU                ; 14c1 00
                LR   A,KU                ; 14c2 00
                LR   A,KU                ; 14c3 00
                SL   4                   ; 14c4 15
                ST                       ; 14c5 17
                db   $2d                 
                DCI  $2a2a               ; 14c7 2a 2a 2a
                DCI  $2a2a               ; 14ca 2a 2a 2a
                DCI  $2a2a               ; 14cd 2a 2a 2a
                DCI  $2a2a               ; 14d0 2a 2a 2a
                DCI  $2a2a               ; 14d3 2a 2a 2a
                DCI  $2020               ; 14d6 2a 20 20
                LI   $20                 ; 14d9 20 20
                LI   $4f                 ; 14db 20 4f
                LR   A,$6                ; 14dd 46
                LI   $20                 ; 14de 20 20
                LI   $20                 ; 14e0 20 20
                LI   $20                 ; 14e2 20 20
                DCI  $2a2a               ; 14e4 2a 2a 2a
                DCI  $2a2a               ; 14e7 2a 2a 2a
                DCI  $2a2a               ; 14ea 2a 2a 2a
                DCI  $2a2a               ; 14ed 2a 2a 2a
                DCI  $2a2a               ; 14f0 2a 2a 2a
                DCI  $2c50               ; 14f3 2a 2c 50
                LR   $5,A                ; 14f6 55
                LR   $4,A                ; 14f7 54
                LR   A,(IS)              ; 14f8 4c
                LR   A,$9                ; 14f9 49
                LR   $3,A                ; 14fa 53
                LR   $4,A                ; 14fb 54
                LR   A,KU                ; 14fc 00
                LR   A,KU                ; 14fd 00
                LR   A,KU                ; 14fe 00
                LR   A,KU                ; 14ff 00
                LR   A,KU                ; 1500 00
                LR   A,KU                ; 1501 00
                LR   A,KU                ; 1502 00
                LR   A,KU                ; 1503 00
                LR   A,KU                ; 1504 00
                LR   A,KU                ; 1505 00
                LR   A,KU                ; 1506 00
                LR   A,KU                ; 1507 00
                LR   A,KU                ; 1508 00
                LR   A,KU                ; 1509 00
                LR   A,KU                ; 150a 00
                LR   A,KU                ; 150b 00
                LR   A,KU                ; 150c 00
                LR   A,KU                ; 150d 00
                LR   A,KU                ; 150e 00
                LR   A,KU                ; 150f 00
                LR   A,KU                ; 1510 00
                LR   A,KU                ; 1511 00
                LR   A,KU                ; 1512 00
                LR   A,KU                ; 1513 00
                LR   A,KU                ; 1514 00
                LR   A,KU                ; 1515 00
                LR   A,KU                ; 1516 00
                SL   4                   ; 1517 15
                LISL 2                   ; 1518 6a
                db   $2d                 
                DCI  $2a2a               ; 151a 2a 2a 2a
                DCI  $2a2a               ; 151d 2a 2a 2a
                DCI  $2a2a               ; 1520 2a 2a 2a
                DCI  $2a2a               ; 1523 2a 2a 2a
                DCI  $2a2a               ; 1526 2a 2a 2a
                DCI  $2020               ; 1529 2a 20 20
                LI   $50                 ; 152c 20 50
                LR   $2,A                ; 152e 52
                db   $4f                 
                LR   A,$7                ; 1530 47
                LR   $2,A                ; 1531 52
                LR   A,$1                ; 1532 41
                LR   A,(IS)+             ; 1533 4d
                LI   $20                 ; 1534 20 20
                LI   $2a                 ; 1536 20 2a
                DCI  $2a2a               ; 1538 2a 2a 2a
                DCI  $2a2a               ; 153b 2a 2a 2a
                DCI  $2a2a               ; 153e 2a 2a 2a
                DCI  $2a2a               ; 1541 2a 2a 2a
                DCI  $2a2a               ; 1544 2a 2a 2a
                XDC                      ; 1547 2c
                LR   $0,A                ; 1548 50
                LR   $5,A                ; 1549 55
                LR   $4,A                ; 154a 54
                LR   A,(IS)              ; 154b 4c
                LR   A,$9                ; 154c 49
                LR   $3,A                ; 154d 53
                LR   $4,A                ; 154e 54
                LR   A,KU                ; 154f 00
                LR   A,KU                ; 1550 00
                LR   A,KU                ; 1551 00
                LR   A,KU                ; 1552 00
                LR   A,KU                ; 1553 00
                LR   A,KU                ; 1554 00
                LR   A,KU                ; 1555 00
                LR   A,KU                ; 1556 00
                LR   A,KU                ; 1557 00
                LR   A,KU                ; 1558 00
                LR   A,KU                ; 1559 00
                LR   A,KU                ; 155a 00
                LR   A,KU                ; 155b 00
                LR   A,KU                ; 155c 00
                LR   A,KU                ; 155d 00
                LR   A,KU                ; 155e 00
                LR   A,KU                ; 155f 00
                LR   A,KU                ; 1560 00
                LR   A,KU                ; 1561 00
                LR   A,KU                ; 1562 00
                LR   A,KU                ; 1563 00
                LR   A,KU                ; 1564 00
                LR   A,KU                ; 1565 00
                LR   A,KU                ; 1566 00
                LR   A,KU                ; 1567 00
                LR   A,KU                ; 1568 00
                LR   A,KU                ; 1569 00
                SL   4                   ; 156a 15
                OUTS 13                  ; 156b bd
                LR   A,KL                ; 156c 01
                DCI  $2020               ; 156d 2a 20 20
                LI   $20                 ; 1570 20 20
                LI   $20                 ; 1572 20 20
                LI   $20                 ; 1574 20 20
                LR   A,$4                ; 1576 44
                LR   A,$3                ; 1577 43
                LI   $20                 ; 1578 20 20
                LI   $20                 ; 157a 20 20
                LR   A,$8                ; 157c 48
                OUT  $30                 ; 157d 27 30
                DS   $0                  ; 157f 30
                DS   $8                  ; 1580 38
                DS   $0                  ; 1581 30
                OUT  $31                 ; 1582 27 31
                DS   $7                  ; 1584 37
                DS   $3                  ; 1585 33
                OUT  $4d                 ; 1586 27 4d
                LR   $5,A                ; 1588 55
                LR   $3,A                ; 1589 53
                LR   A,$9                ; 158a 49
                LR   A,$3                ; 158b 43
                LR   A,$5                ; 158c 45
                LR   $5,A                ; 158d 55
                LR   $4,A                ; 158e 54
                LR   A,(IS)+             ; 158f 4d
                LR   A,$9                ; 1590 49
                LR   $3,A                ; 1591 53
                LR   A,(IS)              ; 1592 4c
                XDC                      ; 1593 2c
                LR   $0,A                ; 1594 50
                LR   $5,A                ; 1595 55
                LR   $4,A                ; 1596 54
                LR   A,$4                ; 1597 44
                db   $4f                 
                LR   $4,A                ; 1599 54
                XDC                      ; 159a 2c
                LR   $0,A                ; 159b 50
                LR   $5,A                ; 159c 55
                LR   $4,A                ; 159d 54
                LR   A,(IS)              ; 159e 4c
                LR   A,$9                ; 159f 49
                LR   $3,A                ; 15a0 53
                LR   $4,A                ; 15a1 54
                LR   A,KU                ; 15a2 00
                LR   A,KU                ; 15a3 00
                LR   A,KU                ; 15a4 00
                LR   A,KU                ; 15a5 00
                LR   A,KU                ; 15a6 00
                LR   A,KU                ; 15a7 00
                LR   A,KU                ; 15a8 00
                LR   A,KU                ; 15a9 00
                LR   A,KU                ; 15aa 00
                LR   A,KU                ; 15ab 00
                LR   A,KU                ; 15ac 00
                LR   A,KU                ; 15ad 00
                LR   A,KU                ; 15ae 00
                LR   A,KU                ; 15af 00
                LR   A,KU                ; 15b0 00
                LR   A,KU                ; 15b1 00
                LR   A,KU                ; 15b2 00
                LR   A,KU                ; 15b3 00
                LR   A,KU                ; 15b4 00
                LR   A,KU                ; 15b5 00
                LR   A,KU                ; 15b6 00
                LR   A,KU                ; 15b7 00
                LR   A,KU                ; 15b8 00
                LR   A,KU                ; 15b9 00
                LR   A,KU                ; 15ba 00
                LR   A,KU                ; 15bb 00
                LR   A,KU                ; 15bc 00
                LM                       ; 15bd 16
                LR   DC,H                ; 15be 10
                LR   A,KL                ; 15bf 01
                DCI  $2020               ; 15c0 2a 20 20
                LI   $20                 ; 15c3 20 20
                LI   $20                 ; 15c5 20 20
                LI   $20                 ; 15c7 20 20
                LR   A,$4                ; 15c9 44
                LR   A,$3                ; 15ca 43
                LI   $20                 ; 15cb 20 20
                LI   $20                 ; 15cd 20 20
                LR   A,$8                ; 15cf 48
                OUT  $34                 ; 15d0 27 34
                DS   $0                  ; 15d2 30
                DS   $4                  ; 15d3 34
                DS   $0                  ; 15d4 30
                OUT  $44                 ; 15d5 27 44
                DS   $8                  ; 15d7 38
                DS   $0                  ; 15d8 30
                OUT  $4d                 ; 15d9 27 4d
                LR   $5,A                ; 15db 55
                LR   $3,A                ; 15dc 53
                LR   A,$9                ; 15dd 49
                LR   A,$3                ; 15de 43
                LR   A,$5                ; 15df 45
                LR   $5,A                ; 15e0 55
                LR   $4,A                ; 15e1 54
                LR   A,(IS)+             ; 15e2 4d
                LR   A,$9                ; 15e3 49
                LR   $3,A                ; 15e4 53
                LR   A,(IS)              ; 15e5 4c
                XDC                      ; 15e6 2c
                LR   $0,A                ; 15e7 50
                LR   $5,A                ; 15e8 55
                LR   $4,A                ; 15e9 54
                LR   A,$4                ; 15ea 44
                db   $4f                 
                LR   $4,A                ; 15ec 54
                XDC                      ; 15ed 2c
                LR   $0,A                ; 15ee 50
                LR   $5,A                ; 15ef 55
                LR   $4,A                ; 15f0 54
                LR   A,(IS)              ; 15f1 4c
                LR   A,$9                ; 15f2 49
                LR   $3,A                ; 15f3 53
                LR   $4,A                ; 15f4 54
                LR   A,KU                ; 15f5 00
                LR   A,KU                ; 15f6 00
                LR   A,KU                ; 15f7 00
                LR   A,KU                ; 15f8 00
                LR   A,KU                ; 15f9 00
                LR   A,KU                ; 15fa 00
                LR   A,KU                ; 15fb 00
                LR   A,KU                ; 15fc 00
                LR   A,KU                ; 15fd 00
                LR   A,KU                ; 15fe 00
                LR   A,KU                ; 15ff 00
A1600:          LIS  $1                  ; 1600 71
                LR   $7,A                ; 1601 57
                INS  5                   ; 1602 a5
                COM                      ; 1603 18
                NI   $c0                 ; 1604 21 c0
                AS   $1                  ; 1606 c1
                COM                      ; 1607 18
A1608:          OUTS 5                   ; 1608 b5
                DS   $3                  ; 1609 33
                BF   $2,A1640            ; 160a 92 35
                LR   A,$2                ; 160c 42
                LR   $5,A                ; 160d 55
                LR   A,$0                ; 160e 40
                COM                      ; 160f 18
A1610:          OUTS 4                   ; 1610 b4
                DS   $7                  ; 1611 37
                BF   $4,A161f            ; 1612 94 0c
                LIS  $8                  ; 1614 78
                LR   $7,A                ; 1615 57
                LM                       ; 1616 16
                LR   $6,A                ; 1617 56
                LIS  $1                  ; 1618 71
                NS   $4                  ; 1619 f4
                BT   4,A161e             ; 161a 84 03
                LIS  $0                  ; 161c 70
                COM                      ; 161d 18
A161e:          ADC                      ; 161e 8e
A161f:          LR   A,$6                ; 161f 46
                AS   $6                  ; 1620 c6
                LR   $6,A                ; 1621 56
                LR   A,$4                ; 1622 44
                BT   2,A1626             ; 1623 82 02
                LIS  $0                  ; 1625 70
A1626:          COM                      ; 1626 18
                OUTS 1                   ; 1627 b1
                LIS  $6                  ; 1628 76
                SL   4                   ; 1629 15
                OUTS 0                   ; 162a b0
                SL   1                   ; 162b 13
                OUTS 0                   ; 162c b0
                BF   $0,A162f            ; 162d 90 01
A162f:          AI   $60                 ; 162f 24 60
                BF   $4,A162f            ; 1631 94 fd
                DS   $5                  ; 1633 35
                BT   4,A163b             ; 1634 84 06
                INS  4                   ; 1636 a4
                AI   $ff                 ; 1637 24 ff
                BF   $0,A1610            ; 1639 90 d6
A163b:          INS  5                   ; 163b a5
                AI   $ff                 ; 163c 24 ff
                BF   $0,A1608            ; 163e 90 c9
A1640:          POP                      ; 1640 1c
A1641:          LIS  $0                  ; 1641 70
                LR   $4,A                ; 1642 54
A1643:          LR   A,$b                ; 1643 4b
                LR   IS,A                ; 1644 0b
                LR   A,(IS)+             ; 1645 4d
                LR   $0,A                ; 1646 50
                LR   A,(IS)              ; 1647 4c
                LR   $1,A                ; 1648 51
A1649:          LR   A,$0                ; 1649 40
                COM                      ; 164a 18
                OUTS 4                   ; 164b b4
                INS  5                   ; 164c a5
                COM                      ; 164d 18
                NI   $c0                 ; 164e 21 c0
                AS   $1                  ; 1650 c1
                COM                      ; 1651 18
                OUTS 5                   ; 1652 b5
                LR   A,$4                ; 1653 44
                COM                      ; 1654 18
                OUTS 1                   ; 1655 b1
                LIS  $6                  ; 1656 76
                SL   4                   ; 1657 15
                OUTS 0                   ; 1658 b0
                SL   1                   ; 1659 13
                OUTS 0                   ; 165a b0
                POP                      ; 165b 1c
A165c:          LR   K,P                 ; 165c 08
                LISU 0                   ; 165d 60
A165e:          LISL 4                   ; 165e 6c
A165f:          LM                       ; 165f 16
                LR   (IS)-,A             ; 1660 5e
                BR7  A165f               ; 1661 8f fd
                LM                       ; 1663 16
                LR   H,DC                ; 1664 11
                DCI  CartridgeStart      ; 1665 2a 08 00
                ADC                      ; 1668 8e
                PI   A1600               ; 1669 28 16 00
                LR   DC,H                ; 166c 10
                LIS  $2                  ; 166d 72
                NS   $4                  ; 166e f4
                BT   4,A165e             ; 166f 84 ee
                PK                       ; 1671 0c
                LIS  $0                  ; 1672 70
                BF   $0,A1676            ; 1673 90 02
A1675:          LIS  $1                  ; 1675 71
A1676:          LR   $4,A                ; 1676 54
A1677:          LR   A,$8                ; 1677 48
                SL   1                   ; 1678 13
                AS   $8                  ; 1679 c8
                DCI  A168c               ; 167a 2a 16 8c
                ADC                      ; 167d 8e
                LM                       ; 167e 16
                LR   $0,A                ; 167f 50
                LM                       ; 1680 16
                LR   $1,A                ; 1681 51
                LIS  $0                  ; 1682 70
                XS   $4                  ; 1683 e4
                LM                       ; 1684 16
                BF   $4,A1689            ; 1685 94 03
                SL   4                   ; 1687 15
                SR   4                   ; 1688 14
A1689:          LR   $4,A                ; 1689 54
                BF   $0,A16ce            ; 168a 90 43
A168c:          OI   $08                 ; 168c 22 08
                LR   A,$2                ; 168e 42
                LR   A,$3                ; 168f 43
                LR   K,P                 ; 1690 08
                AS   $2                  ; 1691 c2
                DS   $5                  ; 1692 35
                LR   K,P                 ; 1693 08
                BT   0,A169e             ; 1694 80 09
                LR   K,P                 ; 1696 08
                LR   A,(IS)              ; 1697 4c
                LR   K,P                 ; 1698 08
A1699:          LIS  $0                  ; 1699 70
                BF   $0,A16aa            ; 169a 90 0f
A169c:          LISU 4                   ; 169c 64
                LISL 6                   ; 169d 6e
A169e:          LIS  $0                  ; 169e 70
                XS   $8                  ; 169f e8
                LIS  $4                  ; 16a0 74
                BT   4,A16aa             ; 16a1 84 08
                LIS  $1                  ; 16a3 71
                SL   4                   ; 16a4 15
                NS   (IS)                ; 16a5 fc
                LIS  $c                  ; 16a6 7c
                BF   $4,A16aa            ; 16a7 94 02
                LIS  $8                  ; 16a9 78
A16aa:          SL   4                   ; 16aa 15
                LR   $4,A                ; 16ab 54
                LIS  $6                  ; 16ac 76
                AS   $8                  ; 16ad c8
                SL   4                   ; 16ae 15
                AI   $06                 ; 16af 24 06
                AS   $9                  ; 16b1 c9
                SR   1                   ; 16b2 12
                LR   IS,A                ; 16b3 0b
                DCI  $1695               ; 16b4 2a 16 95
                LR   A,$8                ; 16b7 48
                SL   1                   ; 16b8 13
                ADC                      ; 16b9 8e
                LM                       ; 16ba 16
                LR   $0,A                ; 16bb 50
                LM                       ; 16bc 16
                LR   $1,A                ; 16bd 51
                LR   A,$9                ; 16be 49
                SL   1                   ; 16bf 13
                SL   1                   ; 16c0 13
                AS   $0                  ; 16c1 c0
                LR   $0,A                ; 16c2 50
                LIS  $1                  ; 16c3 71
                NS   $9                  ; 16c4 f9
                LR   A,(IS)-             ; 16c5 4e
                BF   $4,A16cd            ; 16c6 94 06
                SR   4                   ; 16c8 14
                LR   $2,A                ; 16c9 52
                LR   A,(IS)              ; 16ca 4c
                SL   4                   ; 16cb 15
                AS   $2                  ; 16cc c2
A16cd:          LR   $9,A                ; 16cd 59
A16ce:          LR   K,P                 ; 16ce 08
                LIS  $3                  ; 16cf 73
                LR   $2,A                ; 16d0 52
                LR   A,$9                ; 16d1 49
                SL   4                   ; 16d2 15
A16d3:          SR   4                   ; 16d3 14
                SL   1                   ; 16d4 13
                DCI  A0839               ; 16d5 2a 08 39
                ADC                      ; 16d8 8e
                LIS  $5                  ; 16d9 75
                LR   $3,A                ; 16da 53
                PI   A1600               ; 16db 28 16 00
                LIS  $3                  ; 16de 73
                COM                      ; 16df 18
                AS   $0                  ; 16e0 c0
                LR   $0,A                ; 16e1 50
                LIS  $2                  ; 16e2 72
                XS   $4                  ; 16e3 e4
                LR   $4,A                ; 16e4 54
                LIS  $2                  ; 16e5 72
                NS   $4                  ; 16e6 f4
                LR   A,$9                ; 16e7 49
                BF   $4,A16d3            ; 16e8 94 ea
                PK                       ; 16ea 0c
A16eb:          LIS  $0                  ; 16eb 70
                LR   $0,A                ; 16ec 50
                LIS  $8                  ; 16ed 78
                LR   $3,A                ; 16ee 53
A16ef:          LR   A,$0                ; 16ef 40
                SL   1                   ; 16f0 13
                LR   $0,A                ; 16f1 50
                LR   A,$1                ; 16f2 41
                AS   $1                  ; 16f3 c1
                LR   $1,A                ; 16f4 51
                LR   A,$0                ; 16f5 40
                LNK                      ; 16f6 19
                LR   $0,A                ; 16f7 50
                LR   A,$2                ; 16f8 42
                COM                      ; 16f9 18
                INC                      ; 16fa 1f
                AS   $0                  ; 16fb c0
                BF   $2,A1702            ; 16fc 92 05
                LR   $0,A                ; 16fe 50
                LIS  $1                  ; 16ff 71
                AS   $1                  ; 1700 c1
                LR   $1,A                ; 1701 51
A1702:          DS   $3                  ; 1702 33
                BF   $4,A16ef            ; 1703 94 eb
                LR   A,$1                ; 1705 41
                POP                      ; 1706 1c
A1707:          LI   $19                 ; 1707 20 19
                LR   $1,A                ; 1709 51
A170a:          DS   $1                  ; 170a 31
                BF   $4,A170a            ; 170b 94 fe
                DS   $0                  ; 170d 30
                BF   $4,A1707            ; 170e 94 f8
                POP                      ; 1710 1c
A1711:          LIS  $0                  ; 1711 70
                AM                       ; 1712 88
                BF   $4,A1716            ; 1713 94 02
                POP                      ; 1715 1c
A1716:          LR   $3,A                ; 1716 53
                LISU 5                   ; 1717 65
                LISL 3                   ; 1718 6b
                LIS  $1                  ; 1719 71
                NS   (IS)                ; 171a fc
                LM                       ; 171b 16
                BT   4,A171f             ; 171c 84 02
                LIS  $0                  ; 171e 70
A171f:          LR   $2,A                ; 171f 52
                LM                       ; 1720 16
                LR   $1,A                ; 1721 51
                LM                       ; 1722 16
                LR   $0,A                ; 1723 50
                LISU 0                   ; 1724 60
A1725:          LISL 1                   ; 1725 69
                LR   A,$2                ; 1726 42
A1727:          OUTS 5                   ; 1727 b5
                LR   A,(IS)-             ; 1728 4e
                LR   $4,A                ; 1729 54
A172a:          DS   $4                  ; 172a 34
                BF   $4,A172a            ; 172b 94 fe
                LIS  $0                  ; 172d 70
                BR7  A1727               ; 172e 8f f8
                DS   $3                  ; 1730 33
                BF   $4,A1725            ; 1731 94 f3
                BF   $0,A1711            ; 1733 90 dd
                LR   $4,A                ; 1735 54
                LR   A,$4                ; 1736 44
                db   $4f                 
                LR   $4,A                ; 1738 54
                XDC                      ; 1739 2c
                LR   $0,A                ; 173a 50
                LR   $5,A                ; 173b 55
                LR   $4,A                ; 173c 54
                LR   A,(IS)              ; 173d 4c
                LR   A,$9                ; 173e 49
                LR   $3,A                ; 173f 53
                LR   $4,A                ; 1740 54
                LR   A,KU                ; 1741 00
                LR   A,KU                ; 1742 00
                LR   A,KU                ; 1743 00
                LR   A,KU                ; 1744 00
                LR   A,KU                ; 1745 00
                LR   A,KU                ; 1746 00
                LR   A,KU                ; 1747 00
                LR   A,KU                ; 1748 00
                LR   A,KU                ; 1749 00
                LR   A,KU                ; 174a 00
                LR   A,KU                ; 174b 00
                LR   A,KU                ; 174c 00
                LR   A,KU                ; 174d 00
                LR   A,KU                ; 174e 00
                LR   A,KU                ; 174f 00
                LR   A,KU                ; 1750 00
                LR   A,KU                ; 1751 00
                LR   A,KU                ; 1752 00
                LR   A,KU                ; 1753 00
                LR   A,KU                ; 1754 00
                LR   A,KU                ; 1755 00
                LR   A,KU                ; 1756 00
                LR   A,KU                ; 1757 00
                LR   A,KU                ; 1758 00
                LR   A,KU                ; 1759 00
                LR   A,KU                ; 175a 00
                LR   A,KU                ; 175b 00
                ST                       ; 175c 17
                INS  15                  ; 175d af
                LR   KL,A                ; 175e 05
                DCI  $2a2a               ; 175f 2a 2a 2a
                DCI  $2a20               ; 1762 2a 2a 20
                LI   $20                 ; 1765 20 20
                LI   $44                 ; 1767 20 44
                LR   A,$3                ; 1769 43
                LI   $20                 ; 176a 20 20
                LI   $20                 ; 176c 20 20
                LR   A,$8                ; 176e 48
                OUT  $30                 ; 176f 27 30
                DS   $1                  ; 1771 31
                DS   $4                  ; 1772 34
                DS   $0                  ; 1773 30
                OUT  $39                 ; 1774 27 39
                DS   $5                  ; 1776 35
                DS   $3                  ; 1777 33
                OUT  $4d                 ; 1778 27 4d
                LR   $5,A                ; 177a 55
                LR   $3,A                ; 177b 53
                LR   A,$9                ; 177c 49
                LR   A,$3                ; 177d 43
                LR   A,$5                ; 177e 45
                LR   $5,A                ; 177f 55
                LR   $4,A                ; 1780 54
                LR   A,(IS)+             ; 1781 4d
                LR   A,$9                ; 1782 49
                LR   $3,A                ; 1783 53
                LR   A,(IS)              ; 1784 4c
                XDC                      ; 1785 2c
                LR   $0,A                ; 1786 50
                LR   $5,A                ; 1787 55
                LR   $4,A                ; 1788 54
                LR   A,$4                ; 1789 44
                db   $4f                 
                LR   $4,A                ; 178b 54
                XDC                      ; 178c 2c
                LR   $0,A                ; 178d 50
                LR   $5,A                ; 178e 55
                LR   $4,A                ; 178f 54
                LR   A,(IS)              ; 1790 4c
                LR   A,$9                ; 1791 49
                LR   $3,A                ; 1792 53
                LR   $4,A                ; 1793 54
                LR   A,KU                ; 1794 00
                LR   A,KU                ; 1795 00
                LR   A,KU                ; 1796 00
                LR   A,KU                ; 1797 00
                LR   A,KU                ; 1798 00
                LR   A,KU                ; 1799 00
                LR   A,KU                ; 179a 00
                LR   A,KU                ; 179b 00
                LR   A,KU                ; 179c 00
                LR   A,KU                ; 179d 00
                LR   A,KU                ; 179e 00
                LR   A,KU                ; 179f 00
                LR   A,KU                ; 17a0 00
                LR   A,KU                ; 17a1 00
                LR   A,KU                ; 17a2 00
                LR   A,KU                ; 17a3 00
                LR   A,KU                ; 17a4 00
                LR   A,KU                ; 17a5 00
                LR   A,KU                ; 17a6 00
                LR   A,KU                ; 17a7 00
                LR   A,KU                ; 17a8 00
                LR   A,KU                ; 17a9 00
                LR   A,KU                ; 17aa 00
                LR   A,KU                ; 17ab 00
                LR   A,KU                ; 17ac 00
                LR   A,KU                ; 17ad 00
                LR   A,KU                ; 17ae 00
                COM                      ; 17af 18
                LR   A,QU                ; 17b0 02
                LR   A,KL                ; 17b1 01
                DCI  $2020               ; 17b2 2a 20 20
                LI   $20                 ; 17b5 20 20
                LI   $20                 ; 17b7 20 20
                LI   $20                 ; 17b9 20 20
                LR   A,$4                ; 17bb 44
                LR   A,$3                ; 17bc 43
                LI   $20                 ; 17bd 20 20
                LI   $20                 ; 17bf 20 20
                LR   A,$8                ; 17c1 48
                OUT  $46                 ; 17c2 27 46
                LR   A,$6                ; 17c4 46
                DS   $0                  ; 17c5 30
                DS   $1                  ; 17c6 31
                OUT  $35                 ; 17c7 27 35
                DS   $0                  ; 17c9 30
                DS   $0                  ; 17ca 30
                OUT  $4d                 ; 17cb 27 4d
                LR   $5,A                ; 17cd 55
                LR   $3,A                ; 17ce 53
                LR   A,$9                ; 17cf 49
                LR   A,$3                ; 17d0 43
                LR   A,$5                ; 17d1 45
                LR   $5,A                ; 17d2 55
                LR   $4,A                ; 17d3 54
                LR   A,(IS)+             ; 17d4 4d
                LR   A,$9                ; 17d5 49
                LR   $3,A                ; 17d6 53
                LR   A,(IS)              ; 17d7 4c
                XDC                      ; 17d8 2c
                LR   $0,A                ; 17d9 50
                LR   $5,A                ; 17da 55
                LR   $4,A                ; 17db 54
                LR   A,$4                ; 17dc 44
                db   $4f                 
                LR   $4,A                ; 17de 54
                XDC                      ; 17df 2c
                LR   $0,A                ; 17e0 50
                LR   $5,A                ; 17e1 55
                LR   $4,A                ; 17e2 54
                LR   A,(IS)              ; 17e3 4c
                LR   A,$9                ; 17e4 49
                LR   $3,A                ; 17e5 53
                LR   $4,A                ; 17e6 54
                LR   A,KU                ; 17e7 00
                LR   A,KU                ; 17e8 00
                LR   A,KU                ; 17e9 00
                LR   A,KU                ; 17ea 00
                LR   A,KU                ; 17eb 00
                LR   A,KU                ; 17ec 00
                LR   A,KU                ; 17ed 00
                LR   A,KU                ; 17ee 00
                LR   A,KU                ; 17ef 00
                LR   A,KU                ; 17f0 00
                LR   A,KU                ; 17f1 00
                LR   A,KU                ; 17f2 00
                LR   A,KU                ; 17f3 00
                LR   A,KU                ; 17f4 00
                LR   A,KU                ; 17f5 00
                LR   A,KU                ; 17f6 00
                LR   A,KU                ; 17f7 00
                LR   A,KU                ; 17f8 00
                LR   A,KU                ; 17f9 00
                LR   A,KU                ; 17fa 00
                LR   A,KU                ; 17fb 00
                LR   A,KU                ; 17fc 00
                LR   A,KU                ; 17fd 00
                LR   A,KU                ; 17fe 00
                LR   A,KU                ; 17ff 00



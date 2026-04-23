$# LS-DYNA Keyword file created by LS-PrePost(R) 2024/R2(4.11.14)-25Feb2025
$# Created on Apr-17-2026 (14:08:34)
*KEYWORD  

*MAT_CWM_TITLE
Plates_Mech
$#     mid        ro      lcem      lcpr      lcsy      lchr      lcat      beta
         17.90000E-9       411       412       413       414       415       0.0
$# tastart     taend   tlstart     tlend    eghost    pghost    aghost
    1331.0    1773.0-1.00000E8  -1000000   10000.0     0.2841.0000E-20
$# t2phase   t1phase     anopt     postv
       0.0       0.0       0.0         0
*MAT_THERMAL_CWM_TITLE
Plates_thermal
$#    tmid       tro     tgrlc    tgmult     hdead     tdead      tlat      hlat
         1       0.0       0.0       0.0       0.0       0.0       0.0       0.0
$#    lchc      lctc   tlstart     tlend   tistart     tiend    hghost    tghost
       211       212   -1000.0   -1000.0       0.0       0.06.500000E8     0.001
*DEFINE_CURVE_TITLE
LCHC
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
       211         0       1.0       1.0       0.0       0.0         0         0
$#                a1                  o1
                 0.0    4.6200000000e+08
               273.0    4.6200000000e+08
               373.0    4.9600000000e+08
               473.0    5.1200000000e+08
               573.0    5.2500000000e+08
               673.0    5.4000000000e+08
               873.0    5.7700000000e+08
              1073.0    6.0400000000e+08
              1473.0    6.7600000000e+08
              1773.0    7.0000000000e+08
              9773.0    7.0000000000e+08
*DEFINE_CURVE_TITLE
LCHC
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
       212         0       1.0       1.0       0.0       0.0         0       200
$#                a1                  o1
                 0.0                14.6
               273.0                14.6
               373.0                15.1
               473.0                16.1
               573.0                17.9
               673.0                18.0
               873.0                20.8
              1073.0                23.9
              1473.0                32.2
              1773.0               120.0
              9773.0               120.0
*DEFINE_CURVE_TITLE
LCEM
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
       411         0       1.0       1.0       0.0       0.0         0         0
$#                a1                  o1
                 0.0            198500.0
               273.0            198500.0
               373.0            193000.0
               573.0            176000.0
               673.0            167000.0
               873.0            159000.0
              1073.0            151000.0
              1473.0             60000.0
              1773.0             10000.0
              9773.0             10000.0
*DEFINE_CURVE_TITLE
LCPR
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
       412         0       1.0       1.0       0.0       0.0         0         0
$#                a1                  o1
                 0.0               0.294
               273.0               0.294
               373.0               0.295
               573.0                0.31
               673.0               0.318
               873.0               0.326
              1073.0               0.333
              1473.0               0.339
              1773.0               0.388
              9773.0               0.388
*DEFINE_CURVE_TITLE
LCSY
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
       413         0       1.0       1.0       0.0       0.0         0         0
$#                a1                  o1
                 0.0               265.0
               273.0               265.0
               373.0               218.0
               573.0               170.0
               673.0               155.0
               873.0               149.0
              1073.0                91.0
              1473.0                25.0
              1773.0                10.0
              9773.0                10.0
*DEFINE_CURVE_TITLE
LCHR
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
       414         0       1.0       1.0       0.0       0.0         0         0
$#                a1                  o1
                 0.0               350.0
               273.0               350.0
               373.0               300.0
               473.0               250.0
               573.0               150.0
               673.0               100.0
               873.0                55.0
              1073.0                10.0
              1773.0                 1.0
              9773.0                 1.0
*DEFINE_CURVE_TITLE
LCAT
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
       415         0       1.0       1.0       0.0       0.0         0         0
$#                a1                  o1
                 0.0    1.7000000298e-05
               273.0    1.7000000298e-05
               373.0    1.7399999706e-05
               573.0    1.8599999748e-05
               673.0    1.9099999918e-05
               873.0    1.9600000087e-05
              1073.0    2.0199999199e-05
              1473.0    2.0699999368e-05
              1773.0    2.1600000764e-05
              9773.0    2.1600000764e-05
*DEFINE_CURVE_TITLE
LCLAT
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
      1001         0       1.0       1.0       0.0       0.0         0         0
$#                a1                  o1
                 0.0                0.25
              1000.0                0.25
*END

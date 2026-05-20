$# LS-DYNA Keyword file created by LS-PrePost(R) 2024/R2(4.11.14)-25Feb2025
$# Created on May-20-2026 (11:25:49)
*KEYWORD
*MAT_CWM_TITLE
DIN_JAKOB_MODEL
$#     mid        ro      lcem      lcpr      lcsy      lchr      lcat      beta
         17.80000E-9       411       412       413       414       415       0.0
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
LCHC - specific heat as function of temperature
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
       211         0       1.0       1.0       0.0       0.0         0         0
$#                a1                  o1
                 0.0    4.7000000000e+08
               273.0    4.2500000000e+08
               373.0    4.8800000000e+08
               473.0    5.3000000000e+08
               573.0    5.6500000000e+08
               673.0    6.0600000000e+08
               773.0    6.6700000000e+08
               873.0    7.6000000000e+08
               973.0    1.0100000000e+09
              1073.0    8.0300000000e+08
              1173.0    6.5000000000e+08
              1273.0    6.5000000000e+08
              1373.0    6.5000000000e+08
              1473.0    6.5000000000e+08
*DEFINE_CURVE_TITLE
LCTC - thermal conductivity
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
       212         0       1.0       1.0       0.0       0.0         0       200
$#                a1                  o1
                 0.0                54.0
               273.0                54.0
               373.0               50.67
               473.0               47.34
               573.0               44.01
               673.0               40.68
               773.0               37.35
               873.0               34.02
               973.0               30.69
              1073.0               27.36
              1173.0                27.3
              1273.0                27.3
              1373.0                27.3
              1473.0                27.3
*DEFINE_CURVE_TITLE
LCEM - Youngs modulus as temperature
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
       411         0       1.0       1.0       0.0       0.0         0         0
$#                a1                  o1
                 0.0            210000.0
               273.0            210000.0
               373.0            210000.0
               473.0            189000.0
               573.0            168000.0
               673.0            147000.0
               773.0            105000.0
               873.0             65100.0
               973.0             27300.0
              1073.0             18900.0
              1173.0             14200.0
              1273.0              9450.0
              1373.0              4730.0
              1473.0                 0.0
*DEFINE_CURVE_TITLE
LCPR - Poissons ratio as function of temperature
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
       412         0       1.0       1.0       0.0       0.0         0         0
$#                a1                  o1
                 0.0                 0.3
               273.0                 0.3
               373.0                 0.3
               473.0                 0.3
               573.0                 0.3
               673.0                 0.3
               773.0                 0.3
               873.0                 0.3
               973.0                 0.3
              1073.0                 0.3
              1173.0                 0.3
              1273.0                 0.3
              1373.0                 0.3
              1473.0                 0.3
*DEFINE_CURVE_TITLE
LCSY - yield stress to temperature
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
       413         0       1.0       1.0       0.0       0.0         0         0
$#                a1                  o1
                 0.0               355.0
               273.0               355.0
               373.0               355.0
               473.0               355.0
               573.0               355.0
               673.0               355.0
               773.0               277.0
               873.0               167.0
               973.0                81.7
              1073.0                39.1
              1173.0                21.3
              1273.0                14.2
              1373.0                 7.1
              1473.0                 0.0
*DEFINE_CURVE_TITLE
LCHR - hardening modulus
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
       414         0       1.0       1.0       0.0       0.0         0         0
$#                a1                  o1
                 0.0              2020.0
               273.0              2020.0
               373.0              2000.0
               473.0              2010.0
               573.0              2180.0
               673.0              1830.0
               773.0              1680.0
               873.0              1070.0
               973.0               707.0
              1073.0               465.0
              1173.0               302.0
              1273.0               274.0
              1373.0               170.0
              1473.0                18.6
*DEFINE_CURVE_TITLE
LCAT - thermal expansion
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
       415         0       1.0       1.0       0.0       0.0         0         0
$#                a1                  o1
                 0.0    1.2000000424e-05
               273.0    1.2000000424e-05
               373.0    1.2800000150e-05
               473.0    1.3599999875e-05
               573.0    1.4399999600e-05
               673.0    1.5200000234e-05
               773.0    1.5999999960e-05
               873.0    1.6800000594e-05
               973.0    1.7599999410e-05
              1073.0                 0.0
              1173.0    1.9999999495e-05
              1273.0    1.9999999495e-05
              1373.0    1.9999999495e-05
              1473.0    1.9999999495e-05
*END

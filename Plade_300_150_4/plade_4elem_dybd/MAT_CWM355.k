$# LS-DYNA Keyword file created by LS-PrePost(R) 2024/R2(4.11.14)-25Feb2025
$# Created on Apr-17-2026 (14:08:34)
*KEYWORD  

*MAT_CWM_TITLE
DIN_JAKOB_MODEL
$#     mid        ro      lcem      lcpr      lcsy      lchr      lcat      beta
         17.8000E-09       411       412       413       414       415       0.0
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
                 0.0            2.10e+05
               273.0            2.10e+05
               373.0            2.10e+05
               473.0            1.89e+05
               573.0            1.68e+05
               673.0            1.47e+05
               773.0            1.05e+05
               873.0            6.51e+04
               973.0            2.73e+04
              1073.0            1.89e+04
              1173.0            1.42e+04
              1273.0            9.45e+03
              1373.0            4.73e+03
              1473.0            0.00e+03
*DEFINE_CURVE_TITLE
LCPR - Poissons ratio as function of temperature
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
       412         0       1.0       1.0       0.0       0.0         0         0
$#                a1                  o1
                 0.0            3.00e-01
               273.0            3.00e-01
               373.0            3.00e-01
               473.0            3.00e-01
               573.0            3.00e-01
               673.0            3.00e-01
               773.0            3.00e-01
               873.0            3.00e-01
               973.0            3.00e-01
              1073.0            3.00e-01
              1173.0            3.00e-01
              1273.0            3.00e-01
              1373.0            3.00e-01
              1473.0            3.00e-01
*DEFINE_CURVE_TITLE
LCSY - yield stress to temperature
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
       413         0       1.0       1.0       0.0       0.0         0         0
$#                a1                  o1
                 0.0            3.55E+02
               273.0            3.55E+02
               373.0            3.55E+02
               473.0            3.55E+02
               573.0            3.55E+02
               673.0            3.55E+02
               773.0            2.77E+02
               873.0            1.67E+02
               973.0            8.17E+01
              1073.0            3.91E+01
              1173.0            2.13E+01
              1273.0            1.42E+01
              1373.0            7.10E+00
              1473.0            0.00E+00
*DEFINE_CURVE_TITLE
LCHR - hardening modulus
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
       414         0       1.0       1.0       0.0       0.0         0         0
$#                a1                  o1
                 0.0            2.02E+03
               273.0            2.02E+03
               373.0            2.00E+03
               473.0            2.01E+03
               573.0            2.18E+03
               673.0            1.83E+03
               773.0            1.68E+03
               873.0            1.07E+03
               973.0            7.07E+02
              1073.0            4.65E+02
              1173.0            3.02E+02
              1273.0            2.74E+02
              1373.0            1.70E+02
              1473.0            1.86E+01
*DEFINE_CURVE_TITLE
LCAT - thermal expansion
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
       415         0       1.0       1.0       0.0       0.0         0         0
$#                a1                  o1
                 0.0            1.20E-05
               273.0            1.20E-05
               373.0            1.28E-05
               473.0            1.36E-05
               573.0            1.44E-05
               673.0            1.52E-05
               773.0            1.60E-05
               873.0            1.68E-05
               973.0            1.76E-05
              1073.0            0.00E+00
              1173.0            2.00E-05
              1273.0            2.00E-05
              1373.0            2.00E-05
              1473.0            2.00E-05
*END

$# LS-DYNA Keyword file created by LS-PrePost(R) 2024/R2(4.11.14)-25Feb2025
$# Created on May-12-2026 (10:09:36)
$# Copyright (c) 2026 node997
$# https://github.com/node997/dyna_pladebuk
*KEYWORD
*TITLE
$#                                                                         title
LS-DYNA SIMULERING AF VARME DER BUKKER PLADE - J. G
*PARAMETER_DUPLICATION
$#   dflag
         4
*CONTROL_ACCURACY
$#     osu       inn    pidosu      iacc     exacc                        unused
         1         4         0         1       0.0
*CONTROL_BULK_VISCOSITY
$#      q1        q2      type     btype    tstype                        unused
       1.5      0.06         1         0         0
*CONTROL_CONTACT
$#  slsfac    rwpnal    islchk    shlthk    penopt    thkchg     orien    enmass
       0.0       0.0         1         1         1         0         2         0
$#  usrstr    usrfrc     nsbcs    interm     xpene     ssthk      ecdt   tiedprj
         0         0         0         0       0.0         0         0         0
$#   sfric     dfric       edc       vfc        th     th_sf    pen_sf     ptscl
       0.0       0.0       0.0       0.0       0.0       0.0       0.0       1.0
$#  ignore    frceng   skiprwg    outseg   spotstp   spotdel   spothin   dir_tie
         2         1         0         1         0         1       0.5         0
$#    isym    nserod    rwgaps    rwgdth     rwksf      icov    swradf    ithoff
         0         0         1       0.0       0.0         0       0.0         0
$#  shledg    pstiff    ithcnt    tdcnof     ftall    unused    shltrw    igactc
         1         0         0         0         1                 0.0         0
*CONTROL_ENERGY
$#    hgen      rwen    slnten     rylen     irgen     maten     drlen     disen
         2         2         2         2         2         1         1         1
*CONTROL_HOURGLASS
$#     ihq        qh
         6       0.1
*CONTROL_IMPLICIT_AUTO
$#   iauto    iteopt    itewin     dtmin     dtmax     dtexp     kfail    kcycle
         2        11         5       0.0     -7441       0.0         0         0
*CONTROL_IMPLICIT_GENERAL
$#  imflag       dt0    imform      nsbs       igs     cnstn      form    zero_v
         1       0.1         2         1         1         0         0         0
*CONTROL_IMPLICIT_SOLUTION
$#  nsolvr    ilimit    maxref     dctol     ectol     rctol     lstol    abstol
        12        11        15     0.001      0.011.00000E10       0.91.0000E-10
$#   dnorm    diverg     istif   nlprint    nlnorm   d3itctl     cpchk
         2         1         1         0         2         0         0
$#  arcctl    arcdir    arclen    arcmth    arcdmp    arcpsi    arcalf    arctim
         0         0       0.0         1         2       0.0       0.0       0.0
$#   lsmtd     lsdir      irad      srad      awgt      sred    kssize
         4         2       0.0       0.0       0.0       0.0        10
*CONTROL_IMPLICIT_SOLVER
$#  lsolvr    lprint     negev     order      drcm    drcprm   autospc   autotol
         2         1         2         0         4     100.0         11.10000E-7
$#  lcpack    mtxdmp    iparm1    rparm1    rparm2         -    rparm4    rparm5
         2         0       500       0.0     0.001               240.0       0.0
$#  emxdmp    rdcmem    absmem   isingle   iblropt         -      ispd    memlvl
         0      0.85       0.0         0         0                   0       0.0
*CONTROL_OUTPUT
$#   npopt    neecho    nrefup    iaccop     opifs    ipnint    ikedit    iflush
         1         0         0         0       0.0         0         0         0
$#   iprtf    ierode   tet10s8    msgmax    ipcurv      gmdt   ip1dblt      eocs
         0         0         2         0         0       0.0         0         0
*CONTROL_PARALLEL
$#    ncpu    numrhs     const      para                                  unused
         0         0         1         0
*CONTROL_SOLID
$#   esort   fmatrix   niptets    swlocl    psfail   t10jtol      icoh    tet13k
         1         2         4         1         0       0.0         0         0
$#   pm1     pm2     pm3     pm4     pm5     pm6     pm7     pm8     pm9    pm10
       0       0       0       0       0       0       0       0       0       0
*CONTROL_SOLUTION
$#    soln       nlq     isnan     lcint     lcacc     ncdcf    nocopy      crvp
         2         0         0         0         0         1         0         0
*CONTROL_TERMINATION
$#  endtim    endcyc     dtmin    endeng    endmas     nosol              unused
     120.0         0       0.0       0.0  100000.0         0
*CONTROL_THERMAL_NONLINEAR
$#  refmax       tol       dcp    lumpbc    thlstl    nlthpr    phchpn    unused
       1001.00000E-4       0.5         0       0.1         0       0.0
*CONTROL_THERMAL_SOLVER
$#   atype     ptype    solver         -       gpt    eqheat     fwork       sbc
         1         2        11                   0       1.0       1.0       0.0
$#  msglvl    maxitr    abstol    reltol     omega    unused    unused       tsf
         0       5001.0000E-101.00000E-6       0.0                           1.0
*CONTROL_THERMAL_TIMESTEP
$#      ts       tip       its      tmin      tmax     dtemp      tscp      lcts
         0       1.0       0.1              1.0E-9     100.0      0.95
*CONTROL_TIMESTEP
$#  dtinit    tssfac      isdo    tslimt     dt2ms      lctm     erode     ms1st
       0.1       1.0         0       0.0       0.0      7441         0         0
$#  dt2msf   dt2mslc     imscl    unused    unused     rmscl     emscl      ihdo
       0.0         0         0                           0.0       0.0         0
*DATABASE_BNDOUT
$#      dt    binary      lcur     ioopt   option1   option2   option3   option4
      0.50         3         0         1         0         0         0         0
*DATABASE_DEFORC
$# ÆNDRET fra 1-part: dt 0.03->0.50
$#      dt    binary      lcur     ioopt
      0.50         3         0         1
*DATABASE_ELOUT
$# ÆNDRET fra 1-part: dt 0.03->0.50
$#      dt    binary      lcur     ioopt   option1   option2   option3   option4
      0.50         3         0         1         0         0         0         0
*DATABASE_GLSTAT
$# ÆNDRET fra 1-part: dt 0.03->0.50
$#      dt    binary      lcur     ioopt
      0.50         3         0         1
*DATABASE_JNTFORC
$# ÆNDRET fra 1-part: dt 0.03->0.50
$#      dt    binary      lcur     ioopt
      0.50         3         0         1
*DATABASE_MATSUM
$# ÆNDRET fra 1-part: dt 0.03->0.50
$#      dt    binary      lcur     ioopt
      0.50         3         0         1
*DATABASE_NCFORC
$# ÆNDRET fra 1-part: dt 0.03->0.50
$#      dt    binary      lcur     ioopt
      0.50         3         0         1
*DATABASE_NODOUT
$# ÆNDRET fra 1-part: dt 0.03->0.50
$#      dt    binary      lcur     ioopt   option1   option2
      0.50         3         0         1       0.0         0
*DATABASE_RCFORC
$# ÆNDRET fra 1-part: dt 0.03->0.50
$#      dt    binary      lcur     ioopt
      0.50         3         0         1
*DATABASE_SPCFORC
$# ÆNDRET fra 1-part: dt 0.03->0.50
$#      dt    binary      lcur     ioopt
      0.50         3         0         1
*DATABASE_TPRINT
$#      dt    binary      lcur     ioopt
       0.5         3         0         1
*DATABASE_BINARY_D3PLOT
$#      dt      lcdt      beam     npltc    psetid                       unused1
      0.50         0         0         0         0
$#   ioopt      rate    cutoff    window      type      pset
         0       0.0       0.0       0.0         0         0
*DATABASE_BINARY_D3PROP
$#   ifile     imatl     iwall
         2         1         0
*DATABASE_BINARY_INTFOR
$#      dt      lcdt      beam     npltc    psetid                        unused
       0.5         0         0         0         0
*DATABASE_EXTENT_BINARY
$#   neiph     neips    maxint    strflg    sigflg    epsflg    rltflg    engflg
         0         0         0        10         1         1         1         1
$#  cmpflg    ieverp    beamip     dcomp      shge     stssz    n3thdt   ialemat
         0         0         0         1         1         1         2         0
$# nintsld   pkp_sen      sclp     hydro     msscl     therm    intout    nodout
         0         0       0.0         0         2         2
*DATABASE_FORMAT
$#   iform   ibinary                                                      unused
         0         0
*BOUNDARY_CONVECTION_SET
$#    ssid    pserod
    420420         0
$# ÆNDRET fra 1-part: hmult 0.02->0.10
$#   hlcid     hmult     tlcid     tmult       loc
      6969      0.10         0     295.0         0
*BOUNDARY_THERMAL_WELD_TRAJECTORY
$#     pid      ptyp     nsid1      spd1     nsid2      spd2      ncyc    relvel
         1         1        20       2.5      -569       0.0        10         0
$#   iform      lcid         q     lcrot     lcmov     lclat      disc     enfor
$         1      1010      0.80      1011      1012         0       2.0         0
$#      p1        p2        p3        p4        p5        p6        p7        p8
$      16.0       3.0      16.0      16.0       0.6       1.4       3.0       0.0
$#   iform      lcid         q     lcrot     lcmov     lclat      disc     enfor
         4      1010      0.70      1011      1012         0       2.0         0
$#      p1        p2        p3        p4        p5        p6        p7        p8
      16.0      10.0       3.5
*LOAD_BODY_Y
$#    lcid        sf    lciddr        xc        yc        zc       cid
         3       1.0         0       0.0       0.0       0.0        23
*INITIAL_TEMPERATURE_SET
$#    nsid      temp       loc                                           unused1
         0     295.0         0
*DEFINE_COORDINATE_SYSTEM
$#     cid        xo        yo        zo        xl        yl        zl      cidl
        23       0.0       0.0       0.0       1.0       0.0       0.0         0
$#      xp        yp        zp                                           unused2
       0.0       1.0       0.0
*DEFINE_CURVE
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
         3         0       0.0       0.0       0.0       0.0         0         0
$#                a1                  o1
                 0.0             9806.65
                 1.0             9806.65
                30.0             9806.65
               300.0             9806.65
*DEFINE_CURVE
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
        21         0       1.0       1.0       0.0       0.0         0         0
$#                a1                  o1
                 0.0                 0.0
                 0.1                 1.0
                20.0                 1.0
                30.1                 0.0
              1000.0                 0.0
*DEFINE_CURVE_TITLE
LCID - THERMAL WELD TRAJECTORY
$# ÆNDRET fra 1-part: aktiv periode 0.1->37.7 erstattet med 0.1->60.0 (svejsehastighed 2.5 mm/s, 150mm plade)
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
      1010         0       1.0       1.0       0.0       0.0         0         0
$#                a1                  o1
                 0.0                 0.0
                 0.1             1000000
                60.0             1000000
                60.1                 0.0
              1000.0                 0.0
*DEFINE_CURVE_TITLE
LROT - THERMAL WELD TRAJECTORY verification is needed !!!!
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
      1011         0       1.0       1.0       0.0       0.0         0         0
$#                a1                  o1
                 0.0                 0.0
              1000.0                 0.0
*DEFINE_CURVE_TITLE
LCMOV - THERMAL WELD TRAJECTORY !!!!
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
      1012         0       1.0       1.0       0.0       0.0         0         0
$#                a1                  o1
                 0.0                 0.1
              1000.0                 0.1
*DEFINE_CURVE_TITLE
DT_MAX - variabelt dt styret af svejsefase
$# ÆNDRET fra 1-part: kurve-ID 4441->7441, værdier opdateret fra 3-part
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
      7441         0       1.0       1.0       0.0       0.0         0         0
$#                a1                  o1
                 0.0                 0.1
                40.0                 0.1
                60.1                 0.5
               125.0                 1.0
*DEFINE_CURVE_TITLE
DT_MIN - minimum dt
$# TILFØJET fra 3-part (fandtes ikke i 1-part)
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
      7440         0       1.0       1.0       0.0       0.0         0         0
$#                a1                  o1
                 0.0                 0.1
                40.0                 0.1
                60.1                 0.1
               125.0                 0.1
*DEFINE_CURVE_TITLE
DT_TARG - variabelt dt styret af svejsefase
$# TILFØJET fra 3-part (fandtes ikke i 1-part)
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
      7442         0       1.0       1.0       0.0       0.0         0         0
$#                a1                  o1
                 0.0                 0.1
                40.0                0.05
                60.1                 0.2
               125.0                 0.5
*DEFINE_CURVE_TITLE
AFKOLING - turns on cooling after xxx seconds
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
      6969         0       1.0       1.0       0.0       0.0         0         0
$#                a1                  o1
                 0.0                 0.0
                 0.1                 1.0
                50.1                 1.0
              1000.0                 1.0
*INCLUDE
MAT_CWM355.k
*PART
$#                                                                         title
Plade
$#     pid     secid       mid     eosid      hgid      grav    adpopt      tmid
         1         1         1         0         0         0         0         1
*SECTION_SOLID
$#   secid    elform       aet    unused    unused    unused    cohoff   gaskeit
         1         2         0                                     0.0       0.0
*INCLUDE
geometry.k
*END

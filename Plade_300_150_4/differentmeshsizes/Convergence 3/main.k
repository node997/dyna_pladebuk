$# LS-DYNA Keyword file created by LS-PrePost(R) 2024/R2(4.11.14)-25Feb2025
$# Created on May-20-2026 (11:25:49)
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
         1      1010      0.75      1011      1012         0       2.0         0
$#      p1        p2        p3        p4        p5        p6        p7        p8
      16.0       3.0      16.0      16.0       0.6       1.4       3.0       0.0
$#   iform      lcid         q     lcrot     lcmov     lclat      disc     enfor
$         4      1010      0.70      1011      1012         0       2.0         0
$#      p1        p2        p3        p4        p5        p6        p7        p8
$      16.0      10.0       3.5
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
boundary+geo.k
*SET_NODE_LIST_TITLE
weld_node
$#     sid       da1       da2       da3       da4    solver       its         -
        20       0.0       0.0       0.0       0.0MECH               1          
$#    nid1      nid2      nid3      nid4      nid5      nid6      nid7      nid8
     12955     12956     12957     12958     12959     12960     12961     12962
     12963     12964     12965     12966     12967     12968     12969     12970
     12971     12972     12973     12974     12975     12976     12977     12978
     12979     12980     12981     12982     12983     12984     12985     12986
     12987     12988     12989     12990     12991     12992     12993     12994
     12995     12996     12997     12998     12999     13000     13001     13002
     13003     13004     13005         0         0         0         0         0
*SET_SEGMENT_TITLE
weld_segm
$#     sid       da1       da2       da3       da4    solver       its         -
       569       0.0       0.0       0.0       0.0MECH               0          
$#      n1        n2        n3        n4        a1        a2        a3        a4
     12955     13210     13211     12956       0.0       0.0       0.0       0.0
     12700     12955     12956     12701       0.0       0.0       0.0       0.0
     12956     13211     13212     12957       0.0       0.0       0.0       0.0
     12701     12956     12957     12702       0.0       0.0       0.0       0.0
     12957     13212     13213     12958       0.0       0.0       0.0       0.0
     12702     12957     12958     12703       0.0       0.0       0.0       0.0
     12958     13213     13214     12959       0.0       0.0       0.0       0.0
     12703     12958     12959     12704       0.0       0.0       0.0       0.0
     12959     13214     13215     12960       0.0       0.0       0.0       0.0
     12704     12959     12960     12705       0.0       0.0       0.0       0.0
     12960     13215     13216     12961       0.0       0.0       0.0       0.0
     12705     12960     12961     12706       0.0       0.0       0.0       0.0
     12961     13216     13217     12962       0.0       0.0       0.0       0.0
     12706     12961     12962     12707       0.0       0.0       0.0       0.0
     12962     13217     13218     12963       0.0       0.0       0.0       0.0
     12707     12962     12963     12708       0.0       0.0       0.0       0.0
     12963     13218     13219     12964       0.0       0.0       0.0       0.0
     12708     12963     12964     12709       0.0       0.0       0.0       0.0
     12964     13219     13220     12965       0.0       0.0       0.0       0.0
     12709     12964     12965     12710       0.0       0.0       0.0       0.0
     12965     13220     13221     12966       0.0       0.0       0.0       0.0
     12710     12965     12966     12711       0.0       0.0       0.0       0.0
     12966     13221     13222     12967       0.0       0.0       0.0       0.0
     12711     12966     12967     12712       0.0       0.0       0.0       0.0
     12967     13222     13223     12968       0.0       0.0       0.0       0.0
     12712     12967     12968     12713       0.0       0.0       0.0       0.0
     12968     13223     13224     12969       0.0       0.0       0.0       0.0
     12713     12968     12969     12714       0.0       0.0       0.0       0.0
     12969     13224     13225     12970       0.0       0.0       0.0       0.0
     12714     12969     12970     12715       0.0       0.0       0.0       0.0
     12970     13225     13226     12971       0.0       0.0       0.0       0.0
     12715     12970     12971     12716       0.0       0.0       0.0       0.0
     12971     13226     13227     12972       0.0       0.0       0.0       0.0
     12716     12971     12972     12717       0.0       0.0       0.0       0.0
     12972     13227     13228     12973       0.0       0.0       0.0       0.0
     12717     12972     12973     12718       0.0       0.0       0.0       0.0
     12973     13228     13229     12974       0.0       0.0       0.0       0.0
     12718     12973     12974     12719       0.0       0.0       0.0       0.0
     12974     13229     13230     12975       0.0       0.0       0.0       0.0
     12719     12974     12975     12720       0.0       0.0       0.0       0.0
     12975     13230     13231     12976       0.0       0.0       0.0       0.0
     12720     12975     12976     12721       0.0       0.0       0.0       0.0
     12976     13231     13232     12977       0.0       0.0       0.0       0.0
     12721     12976     12977     12722       0.0       0.0       0.0       0.0
     12977     13232     13233     12978       0.0       0.0       0.0       0.0
     12722     12977     12978     12723       0.0       0.0       0.0       0.0
     12978     13233     13234     12979       0.0       0.0       0.0       0.0
     12723     12978     12979     12724       0.0       0.0       0.0       0.0
     12979     13234     13235     12980       0.0       0.0       0.0       0.0
     12724     12979     12980     12725       0.0       0.0       0.0       0.0
     12980     13235     13236     12981       0.0       0.0       0.0       0.0
     12725     12980     12981     12726       0.0       0.0       0.0       0.0
     12981     13236     13237     12982       0.0       0.0       0.0       0.0
     12726     12981     12982     12727       0.0       0.0       0.0       0.0
     12982     13237     13238     12983       0.0       0.0       0.0       0.0
     12727     12982     12983     12728       0.0       0.0       0.0       0.0
     12983     13238     13239     12984       0.0       0.0       0.0       0.0
     12728     12983     12984     12729       0.0       0.0       0.0       0.0
     12984     13239     13240     12985       0.0       0.0       0.0       0.0
     12729     12984     12985     12730       0.0       0.0       0.0       0.0
     12985     13240     13241     12986       0.0       0.0       0.0       0.0
     12730     12985     12986     12731       0.0       0.0       0.0       0.0
     12986     13241     13242     12987       0.0       0.0       0.0       0.0
     12731     12986     12987     12732       0.0       0.0       0.0       0.0
     12987     13242     13243     12988       0.0       0.0       0.0       0.0
     12732     12987     12988     12733       0.0       0.0       0.0       0.0
     12988     13243     13244     12989       0.0       0.0       0.0       0.0
     12733     12988     12989     12734       0.0       0.0       0.0       0.0
     12989     13244     13245     12990       0.0       0.0       0.0       0.0
     12734     12989     12990     12735       0.0       0.0       0.0       0.0
     12990     13245     13246     12991       0.0       0.0       0.0       0.0
     12735     12990     12991     12736       0.0       0.0       0.0       0.0
     12991     13246     13247     12992       0.0       0.0       0.0       0.0
     12736     12991     12992     12737       0.0       0.0       0.0       0.0
     12992     13247     13248     12993       0.0       0.0       0.0       0.0
     12737     12992     12993     12738       0.0       0.0       0.0       0.0
     12993     13248     13249     12994       0.0       0.0       0.0       0.0
     12738     12993     12994     12739       0.0       0.0       0.0       0.0
     12994     13249     13250     12995       0.0       0.0       0.0       0.0
     12739     12994     12995     12740       0.0       0.0       0.0       0.0
     12995     13250     13251     12996       0.0       0.0       0.0       0.0
     12740     12995     12996     12741       0.0       0.0       0.0       0.0
     12996     13251     13252     12997       0.0       0.0       0.0       0.0
     12741     12996     12997     12742       0.0       0.0       0.0       0.0
     12997     13252     13253     12998       0.0       0.0       0.0       0.0
     12742     12997     12998     12743       0.0       0.0       0.0       0.0
     12998     13253     13254     12999       0.0       0.0       0.0       0.0
     12743     12998     12999     12744       0.0       0.0       0.0       0.0
     12999     13254     13255     13000       0.0       0.0       0.0       0.0
     12744     12999     13000     12745       0.0       0.0       0.0       0.0
     13000     13255     13256     13001       0.0       0.0       0.0       0.0
     12745     13000     13001     12746       0.0       0.0       0.0       0.0
     13001     13256     13257     13002       0.0       0.0       0.0       0.0
     12746     13001     13002     12747       0.0       0.0       0.0       0.0
     13002     13257     13258     13003       0.0       0.0       0.0       0.0
     12747     13002     13003     12748       0.0       0.0       0.0       0.0
     13003     13258     13259     13004       0.0       0.0       0.0       0.0
     12748     13003     13004     12749       0.0       0.0       0.0       0.0
     13004     13259     13260     13005       0.0       0.0       0.0       0.0
     12749     13004     13005     12750       0.0       0.0       0.0       0.0
*END

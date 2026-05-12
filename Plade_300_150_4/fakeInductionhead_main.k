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
         1        11         5       0.0     -4441       0.0         0         0
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
     240.0         0       0.0       0.0  100000.0         0
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
         0       1.0       0.1    1.0E-9       0.5     100.0      0.95      4441
*CONTROL_TIMESTEP
$#  dtinit    tssfac      isdo    tslimt     dt2ms      lctm     erode     ms1st
       0.1       1.0         0       0.0       0.0      4441         0         0
$#  dt2msf   dt2mslc     imscl    unused    unused     rmscl     emscl      ihdo
       0.0         0         0                           0.0       0.0         0
*DATABASE_BNDOUT
$#      dt    binary      lcur     ioopt   option1   option2   option3   option4
      0.03         3         0         1         0         0         0         0
*DATABASE_DEFORC
$#      dt    binary      lcur     ioopt
      0.03         3         0         1
*DATABASE_ELOUT
$#      dt    binary      lcur     ioopt   option1   option2   option3   option4
      0.03         3         0         1         0         0         0         0
*DATABASE_GLSTAT
$#      dt    binary      lcur     ioopt
      0.03         3         0         1
*DATABASE_JNTFORC
$#      dt    binary      lcur     ioopt
      0.03         3         0         1
*DATABASE_MATSUM
$#      dt    binary      lcur     ioopt
      0.03         3         0         1
*DATABASE_NCFORC
$#      dt    binary      lcur     ioopt
      0.03         3         0         1
*DATABASE_NODOUT
$#      dt    binary      lcur     ioopt   option1   option2
      0.03         3         0         1       0.0         0
*DATABASE_RCFORC
$#      dt    binary      lcur     ioopt
      0.03         3         0         1
*DATABASE_SPCFORC
$#      dt    binary      lcur     ioopt
      0.03         3         0         1
*DATABASE_TPRINT
$#      dt    binary      lcur     ioopt
       0.5         3         0         1
*DATABASE_BINARY_D3PLOT
$#      dt      lcdt      beam     npltc    psetid                       unused1
       0.5         0         0         0         0
$#   ioopt      rate    cutoff    window      type      pset
         0       0.0       0.0       0.0         0         0
*DATABASE_BINARY_D3PROP
$#   ifile     imatl     iwall
         2         1         0
*DATABASE_BINARY_INTFOR
$#      dt      lcdt      beam     npltc    psetid                        unused
       1.5         0         0         0         0
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
$#   hlcid     hmult     tlcid     tmult       loc
      6969      0.02         0     295.0         0
*BOUNDARY_THERMAL_WELD_TRAJECTORY
$#     pid      ptyp     nsid1      spd1     nsid2      spd2      ncyc    relvel
         1         1        20       4.0      -569       0.0        10         0
$#   iform      lcid         q     lcrot     lcmov     lclat      disc     enfor
         5      1010      0.80      1011      1012         0       2.0         1
$#      p1        p2
      1.00      22.0
$R_coil coil - ring radius [mm] - 32mm diameter ferrite
$sigma_r - radial spread [mm] - tight due to focusing ferrite
$sigma_t - in-plane lateral spread [mm]
$delta_skin - skin depth [mm] - adjust for your material/frequency
$radial - distance from coil center axis
$dr - deviation from ring radius
$q - Ring-shaped heat input, decaying exponentially with depth (skin effect)
*DEFINE_FUNCTION
1,DHI-45C induction ring source 32mm with edge boost
float heat(float r, float s, float t, float time, float weldspd)
{
    float R_coil, sigma_r, sigma_t, radial, dr, q;
    float t_start, t_end, boost_max, boost_sigma;
    float boost_start, boost_end, edge_boost;
    float ds, dt, dts, dte;
    R_coil      = 16.0;
    sigma_r     = 3.0;
    sigma_t     = 2.5;
    t_start     = 0.1;
    t_end       = 37.7;
    boost_max   = 2.5;
    boost_sigma = 1.5;
    radial = sqrt(r*r + s*s);
    dr = radial - R_coil;
    ds = dr*dr / (sigma_r*sigma_r);
    dt = t*t / (sigma_t*sigma_t);
    q = exp(-ds) * exp(-dt);
    dts = (time-t_start) * (time-t_start) / (boost_sigma*boost_sigma);
    dte = (time-t_end) * (time-t_end) / (boost_sigma*boost_sigma);
    boost_start = (boost_max-1.0) * exp(-dts);
    boost_end = (boost_max-1.0) * exp(-dte);
    edge_boost = 1.0 + boost_start + boost_end;
    return q * edge_boost;
}
*LOAD_BODY_Y
$     lcid        sf    lciddr        xc        yc        zc       cid   unused1
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
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
      1010         0       1.0       1.0       0.0       0.0         0         0
$#                a1                  o1
                 0.0                 0.0
                 0.1             1000000
                37.7             1000000
                37.8                 0.0
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
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
      4441         0       1.0       1.0       0.0       0.0         0         0
$#                a1                  o1
                 0.0                 0.1
                50.0                 0.1
                60.1                 0.1
               200.0                 0.5
*DEFINE_CURVE_TITLE
AFKOLING - turns on cooling after xxx seconds
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
      6969         0       1.0       1.0       0.0       0.0         0         0
$#                a1                  o1
                 0.0                 0.0
                50.0                 0.0
                60.1                 1.0
              1000.0                 1.0
*INCLUDE
boundary.k
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
$# 4mm kvadratiske elementer paa plade der er 300x150x4mm
*INCLUDE
geometry.k
*END

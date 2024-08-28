include("./MergerTree.jl")
using .MergerTree

z0         = 0.0
M0         = 1e13
z_max      = 30.0
M_res      = 1e9

#HostMassRedshiftVvir   = "HostMassRedshiftVvir.txt"
#SubMassSubRedshift     = "SubMassSubRedshift_M0_MW.txt"
#StarFormingHalos       = "StarFormingHalos_MW1.1e12_Mres7e5_29Dec2021.txt"
for i in 1:10
    println("iteration = $i")
    HostMassRedshiftVvir   = "LCDM_CLASS_HostMassRedshiftVvir_$M0 $i.txt"
    SubMassSubRedshift     = "LCDM_CLASS_SubMassSubRedshift_M0$M0 $i.txt"

    M_main( M0, z0, z_max, M_res,
              HostMassRedshiftVvir, SubMassSubRedshift, false, true )
end
#@time FindStarFormingHalos( M0, z0, z_max, M_res, StarFormingHalos, true )

help([[
]])

load("spack-stack")
load("stack-intel/2021.6.0")
load("stack-openmpi/4.1.5")

-- load("mkl")

load("miniconda3/4.10.3")
prepend_path("PATH", pathJoin(os.getenv("CONDA_ROOT"),"bin"))

load("gsi_common")

local lapack_ver=os.getenv("lapack_ver") or "3.10.1"
load(pathJoin("netlib-lapack", lapack_ver))

local prod_util_ver=os.getenv("prod_util_ver") or "1.2.2"
load(pathJoin("prod-util", prod_util_ver))

pushenv("CFLAGS", "-march=core-avx2")
pushenv("FFLAGS", "-march=core-avx2")

whatis("Description: GSI environment on Hera with Intel Compilers")

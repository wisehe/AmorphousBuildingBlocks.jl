# %%codeblock
# Atomic and isotopic information
struct element
    # Full name of element, such as `"hydrogen"` for hydrogen
    name::String
    # Symbol of element such as `:Ga` for gallium
    symbol::Symbol
    # Atomic number of element, such as `8` for oxygen
    atomic_number::Int
    # relative atomic mass, such as `14.007` for nitrogen
    mass::Float64
    # ionic radii for common ion in Angstroms
    radii::Float64
end

# %%codeblock
mutable struct atom
    # element that a specific atom is
    element::element
    # fractional position of atom
    r_frac::Array{Union{Float64, Int}, 1}
    # cartesian position of aotm
    r_cart::Array{Union{Float64, Int}, 1}
end

# %%codeblock
dummy = element("dummy", :dummy, 200, 0.000001, 0.000001)
oxygen = element("oxygen", :O, 8, 15.999, 1.12)
zinc = element("zinc", :Zn, 30, 65.38, 0.88)
gallium = element("gallium", :Ga, 31, 69.723, 0.76)
indium = element("indium", :In, 49, 114.818, 0.94)
aluminum = element("aluminum", :Al, 13, 26.982, 0.68)

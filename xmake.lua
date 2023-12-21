add_rules("mode.debug", "mode.releasedbg", "mode.release")

-- C++17 is required (but requires adding the 'fmt' library if used)
-- C++20 works out-of-the-box without any additional dependencies
set_languages("c++20")

-- Add the MrowrLib xmake repository which provides the packages:
-- specs, specs_snowhouse, specs_libassert, and libassert_latest
add_repositories("MrowrLib https://github.com/MrowrLib/Packages")

-- Add dependency on 'specs'
add_requires("specs")

-- (Optional) add dependency on the 'snowhouse' assertion library and the specs adapter for it
add_requires("vcpkg::snowhouse", "specs_snowhouse")

-- (Optional) add dependency on the 'libassert' assertion library and the specs adapter for it
-- Note: we are using the 'lowercase' option which provides an 'assert()' macro rather than 'ASSERT()'
add_requires("libassert_latest", { configs = { lowercase = true } })
add_requires("specs_libassert")

-- Create an executable target which will execute your specs when run
target("MyTests")
    set_kind("binary")
    add_files("*.cpp")
    add_packages("specs")

    -- (Optional) add snowhouse and the specs adapter for it
    add_packages("vcpkg::snowhouse", "specs_snowhouse")

    -- (Optional) add libassert and the specs adapter for it
    add_packages("libassert_latest", "specs_libassert")

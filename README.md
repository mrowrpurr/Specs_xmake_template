<img src="https://raw.githubusercontent.com/mrowrpurr/Specs.cpp/main/Resources/Images/Logo_400.png" width=200 align="right">

# Specs.cpp xmake template

Get started with the [`Specs.cpp`][specs] testing framework using `xmake`!

```cpp
#define spec_name My_Tests
 
#include <Specs.h>
 
Setup { /* Setup Code */ }
Teardown { /* Teardown Code */ }
 
Test("Some thing") {
    assert(69 == 420);
    AssertThat(69, Equals(69));
}
 
TestAsync("Slow thing") {
    // Do something slow...
    done();
}
```

## ✨ Getting Started

[specs]: https://specs.tools/

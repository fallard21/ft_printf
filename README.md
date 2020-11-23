# FT_PRINTF
Reproducing `printf` function of the standart library (included from `<stdio.h>`)
## Project overview
### Mandatory part
* Manage the conversions `d`, `i`, `o`, `u`, `x`, `X`, `c`, `s`, `p`, `f`

* Manage the `minimun field-width`

* Manage the flags `-`, `+`, `#`, `0`, `space`

* Manage the precision `.`

* Manage **`%%`**

### Bonus part
* New conversion `b` : print binary

* New conversion `k` : print unix-time in ISO format

* Manage `*`

* Manage color : `"{1}%s\n{0}"`

* `%f` calculated with `bignum arithmetic`, accurate output `LDBL_MIN`, `LDBL_MAX` (macros from `<float.h>`)

## How to download ?
	https://github.com/fallard21/ft_printf.git ~/ft_printf
	cd ~/ft_printf
	
## How to use ?
1.   Build `libftprintf` with `make -C .`
2.   Create `main.c` using this example:
```C
#include "ft_printf.h"

int main()
{
	ft_printf("%s %d %.20f\n", "Hello World", 21, 0.093);
	return (0);
}
```
3.   Compile `main.c` following flags:
```bash
gcc main.c -o program -L . -I includes
```
4. Launch `./program`
```C
Hello World 21 0.09299999999999999933
```	

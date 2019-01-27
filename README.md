# AccountManager

## Description

Written in Bash, AccountManager produces a file of user accounts that have either
never logged in or have NOT logged in during 2017 on two servers. The script uses
the output from the lastlog tool for the Fox and Hen servers. Note that users may
meet the criteria for one server but not the other, so it is necessary to remove
those user ID's (handled by screen2.sed).

## Installation

Clone the repository wherever you like (e.g. `~/Projects/AccountManager`):

```bash

git clone https://github.com/gsessums/AccountManager.git
```

## Usage

```bash
./accountManager.bash
```

## Testing

Several files are included for testing:

* lastlogFoxServer.out
  * File containing sample output from the lastlog tool from the Fox server.
* lastlogHenServer.out
  * File containing sample output from the lastlog tool from the Hen server.

## Credits

Author: [Geoffrey Sessums](http://www.geoffreysessums.com)

## License

MIT License

Copyright (c) 2018 Geoffrey Sessums

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

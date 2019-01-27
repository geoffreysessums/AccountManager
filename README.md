# AccountManager

Geoffrey Sessums  
CS 3423 Systems Programming - Fall 2017  
Language: BASH  

## Description

AccountManager uses sed script files to identify and remove student accounts that
have either NEVER logged in or have NOT logged on two university servers during
2017. The script uses the output from the lastlog tool for the Fox and Hen servers.
Note that users may meet the criteria for one server but not the other, so it is
necessary to remove only those user ID's which meet the criteria for both servers
(handled by screen2.sed).

## What I Learned

* How to use the standard Unix utility sed to target specific lines within a file
  and perform repetitive edits to multiple files.
* How to create a sed script file to allow complex pattern matching capabilities.
* How to use a simple BASH script to execute sed script files.

## Installation

Clone the repository wherever you like (e.g. `~/Desktop/AccountManager`):  
    <https://github.com/geoffreysessums/AccountManager.git>

## Usage

Run Command:

    ./accountManager.bash

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

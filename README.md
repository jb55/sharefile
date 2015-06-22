
# sharefile

  Simple script that uploads a file to your server and spits out a corresponding
  url

## Installation

  Git

    $ git clone https://github.com/jb55/sharefile /tmp/sharefile && cp /tmp/sharefile/sharefile ~/bin

  Or just download it directly and put it in your `PATH`, I don't care

## Setup

  Put these in your `.profile` or `.bashrc` or `.zshrc` or something

    export SHAREFILE_HOST=me.com:/www/public/share/
    export SHAREFILE_URL=http://me.com/share/

## Example

  Set the upload name

    $ sharefile -n desktop.png ~/scrots/2015-blah-derp.png
    http://me.com/share/desktop.png

  Copy link to clipboard

    $ sharefile ~/Documents/doc.txt | pbcopy

## Reasons to use Dropbox for sharing now

  None

## License

    The MIT License (MIT)

    Copyright (c) 2014 William Casarin

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in
    all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
    THE SOFTWARE.

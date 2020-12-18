# homebrew-zypher

These are quick 'n dirty homebrew formulae for stuff I needed and could not find elsewhere.
They are mostly for personal use and I don't think I understood all of the magic behind homebrew, so they probably don't follow all the rules of proper formula writing.
So please be cautious use at your own risk.
&nbsp;
 
&nbsp;

## Howto
You find all about homebrew here:
[Homebrew, The Missing Package Manager](https://brew.sh).
I'd recommend to read at least the introduction and usage of basic commands.

This repository (called "tap" in homebrew) can be added to your homebrew environment with the following command:

`brew tap zypher-de/zypher`

(You can check your added taps with `brew tap` without arguments).

After that you can search for an available vesc_tool formula like for any other homebrew formula:
```
zypher@MacBook-Air ~ % brew search vesc_tool
==> Formulae
zypher-de/zypher/vesc_tool@2.06 ✔                zypher-de/zypher/vesc_tool@2.07 ✔                zypher-de/zypher/vesc_tool@3.00beta ✔
```
You can install any or all of these versions with:

`brew install vesc_tool@[Version-Number]`

To install the latest beta (needed for actual Firmware releases) enter the following command:

`brew install vesc_tool@3.00beta`

For further information please read the respective parts of the documentation at [Taps (Third-Party Repositories)](https://docs.brew.sh/Taps).

I will try to keep these formulae up to date and add a final 3.00 vesion as soon as it is released.



# HTML5 MARQUEE [![npm version](https://badge.fury.io/js/html5-marquee.svg)](http://badge.fury.io/js/html5-marquee)

<p align="center"><img alt="HTML5 marquee logo" src="logo/logo.png" /></p>

>Are you missing good-old feel to your pages? Missing something form the past?

This is a (deprecated) `<marquee></marquee>` tag implementation in HTML5 using pure CSS3 animations. Please see [**live demo here**](http://muchweb.github.io/html5-marquee/).

## Installation

- Bower: `bower install html5-marquee`
- NPM: `npm install html5-marquee`

## Usage

### Simple usage:

```html
<div class="marquee" data-marquee="Text contents"></div>
```

### Adjust marquee speed:

|CSS Class|Delay|
|:---:|:---:|
|`.marquee-speed-drowsy`|`30s`|
|`.marquee-speed-slow`|`20s`|
|`.marquee-speed-normal`|`10s` (default)|
|`.marquee-speed-fast`|`7s`|
|`.marquee-speed-swift`|`5s`|
|`.marquee-speed-hyper`|`2s`|

#### Custom speed:

Inherits the speed from the class or inline style

|CSS Class|Delay|
|:---:|:---:|
|`.marquee-speed-custom`|`inherit`|

### Adjust direction:

|CSS Class||
|:---:|:---:|
|`.marquee-direction-left`|Right to left (default)|
|`.marquee-direction-right`|Left to right|
|`.marquee-direction-alternate`|Alternate movement|

### Adjust direction:

|CSS Class||
|:---:|:---:|
|`.marquee-direction-left`|Right to left (default)|
|`.marquee-direction-right`|Left to right|
|`.marquee-direction-alternate`|Alternate movement|

### Vintage effect:

|CSS Class||
|:---:|:---:|
|`.marquee-movement-smooth`|Smooth animation (default)|
|`.marquee-movement-steps20`|Jamming animation|
|`.marquee-movement-steps10`|Jamming animation|

## Building

Requirements:

 - Node.js
 - NPM
 - GNU Make

```bash
make
```

This will create `css` directory.

## Free license: [GNU GPLv3+](./LICENSE)

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program.  If not, see <http://www.gnu.org/licenses/>.

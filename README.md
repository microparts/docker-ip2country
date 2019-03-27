IP2Country Docker Image
-----------------------

[![CircleCI](https://circleci.com/gh/microparts/docker-ip2country.svg?style=svg)](https://circleci.com/gh/microparts/docker-ip2country)

Simple docker image to provide use [https://ip2location.com](https://ip2location.com) 
and [https://sypexgeo.net](https://sypexgeo.net) databases with automatically updates. 
Also, it allows you to bypass the download limit. 

## Usage

```Dockerfile
FROM alpine
COPY --from=microparts/docker-ip2country /database/SxGeo.dat /app/SxGeo.dat
COPY --from=microparts/docker-ip2country /database/IP2LOCATION-LITE-DB1.BIN /app/IP2LOCATION-LITE-DB1.BIN
```

## Auto Updates

This docker-image automatically rebuilds every 1 week to update databases. 

## License

MIT License

Copyright (c) 2019 Microservices parts bip@teamc.io

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

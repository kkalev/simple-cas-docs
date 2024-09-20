Simple httpd Docker image to host old CAS documentation

We make use of the `gh-pages` branch of [apereo/cas](https://github.com/apereo/cas/tree/gh-pages)

Main build argument is `CAS_VERSION` which should correspond to a version name as a folder name in the `gh-pages` branch. Default value is `6.6.x`

* Build (example for `6.6.x` version): `docker build --build-arg CAS_VERSION=6.6.x -t simple-cas-docs:6.6.x .`
* Run:
  * Docker run: `docker run --rm -p 80:80 -d --name cas-docs simple-cas-docs:6.6.x`
  * http access: `http://localhost/cas`

Image size: `1.78 GB`
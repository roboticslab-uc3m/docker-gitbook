# docker-gitbook
Docker image for GitBook (legacy). Inspired by [billryan/docker-gitbook](https://github.com/billryan/docker-gitbook).

This image provides access to basic `gitbook` commands such as `install`, `build` and `serve`. Do not try to use it for generation of PDF/EPUB/MOBI files. See [this comment](https://github.com/roboticslab-uc3m/questions-and-answers/issues/91#issuecomment-805120205) for a discussion on possible workarounds.

## Usage

```bash
# install plugins, if any (ignore this if you don't have a book.json file)
docker run --rm -v "$PWD:/gitbook" ghcr.io/roboticslab-uc3m/gitbook gitbook install

# build your project (generates static files inside <root>/_book/)
docker run --rm -v "$PWD:/gitbook" ghcr.io/roboticslab-uc3m/gitbook gitbook build

# (optional) start a server on localhost:4000, will trigger a rebuild on each local change
docker run --rm -v "$PWD:/gitbook" -p 4000:4000 ghcr.io/roboticslab-uc3m/gitbook gitbook serve
```

## Examples

This image has been used to build a GitBook project based on [roboticslab-uc3m/teo-developer-manual](https://github.com/roboticslab-uc3m/teo-developer-manual), among others.

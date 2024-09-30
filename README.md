# Bash image

Based on the image <https://hub.docker.com/_/bash>

Bash itself is installed at `/usr/local/bin/bash`, not /bin/bash, so the
recommended shebang is `#!/usr/bin/env bash`, not `#!/bin/bash` (or explicitly
running your script via `bash /.../script.sh` instead of letting the shebang
invoke Bash automatically). The image does not include `/bin/bash`, but if it is
installed via the package manager included in the image, that package will
install to `/bin/bash` and might cause confusion (although `/usr/local/bin` is
ahead of `/bin` in $PATH, so as long as plain bash or `/usr/bin/env` are used
consistently, the image-provided Bash will be preferred).

Bash is the only thing included, so if your scripts rely on external tools
(such as jq, for example), those will need to be added manually (via
`apk add --no-cache jq`, for example).

```shell
docker compose build --no-cache
```

```shell
docker compose up
```

```shell
docker exec -it bash bash
```

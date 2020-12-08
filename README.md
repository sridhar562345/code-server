# Install make
```
./install_make.sh
```

# Install docker
```
make install
```

# Build image
```
make build
```

# run container
```
make run
```

# Access from browser
- On browser use https://0.0.0.0 (or) 0.0.0.0:443
- Accept the risk and continue
- Password is `ibhubs`

# Kill container
```
make kill
```
# remove container
```
make rm
```


# Note
- Make sure 80 8080 443 3000 8080 are free without any server running
- Kill default ubuntu apache server on 80 if problem: `sudo apachectl stop`.
- Kill and remove previous containers using kill container and remove container commands if docker has container name conflicts.
- To have your repo/directory inside code-server in browser, copy the repo/directory into the code-server repository you cloned.
export GHOSTSCRIPT_SHA256=801d6082159fd61eaf6e0fc2536c5258156a78fa37e6ab613920a2b0a1b95b29
curl -L -o /tmp/ghostscript.tgz https://github.com/ArtifexSoftware/ghostpdl-downloads/releases/download/gs920/ghostscript-9.20-linux-x86_64.tgz && \
    echo "${GHOSTSCRIPT_SHA256}  /tmp/ghostscript.tgz" | sha256sum -c - &&
    tar xzf /tmp/ghostscript.tgz && \
    mkdir extrabin && \
    mv ghostscript-9.20-linux-x86_64/gs-920-linux_x86_64 extrabin/gs && \
    chmod +x extrabin/gs


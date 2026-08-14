FROM archlinux:base-devel-20260809.0.570793

ARG USER=dev
ARG UID=1000
ARG GID=1000

RUN \
  # Update and install packages
  yes '' | pacman -Syu \
    # Essential packages
    bash curl devtools git less make man-db man-pages tar unzip wget zip \
    # Productivity tools
    fish jq neovim tmux vi \
    # Containerization
    kubectl podman \
    # Languages
    go python shellcheck && \
  yes | pacman -Scc && \
  # Set up user and group inside the container
  groupadd --gid $GID $USER && \
  useradd --create-home --shell /bin/fish --uid $UID --gid $GID $USER

USER $USER:$GID
WORKDIR /home/$USER

CMD /bin/bash -c "tail -f /dev/null"


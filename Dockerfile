FROM alpine:edge

RUN apk add bash curl git lua nodejs npm lazygit bottom python3 go neovim ripgrep alpine-sdk --update

RUN npm i -g typescript

WORKDIR /root

RUN mkdir -p .config/nvim

COPY . .config/nvim

RUN chmod +x .config/nvim/run.sh

RUN nvim --headless -c 'q!'

CMD [".config/nvim/run.sh"]

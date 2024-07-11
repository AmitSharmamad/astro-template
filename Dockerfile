FROM alpine:edge

RUN apk add bash curl git lua nodejs npm lazygit bottom python3 go neovim ripgrep alpine-sdk --update

WORKDIR /root

RUN npm install -g typescript typescript-language-server

RUN mkdir -p .config/nvim

COPY . .config/nvim

RUN chmod +x .config/nvim/run.sh

RUN nvim --headless -c 'q!'

CMD [".config/nvim/run.sh"]

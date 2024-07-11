clean:
	rm -rf ~/.config/nvim
	rm -rf ~/.local/share/nvim
	rm -rf ~/.local/state/nvim
	rm -rf ~/.cache/nvim

build:
	cd ~
	git clone git@github.com:AmitSharmamad/astro-template.git ~/.config/nvim
	nvim

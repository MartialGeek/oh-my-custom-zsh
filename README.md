# Oh My ZSH custom features

## Installation

```sh
cd ~/.oh-my-zsh/custom
rm -rf *
git clone https://github.com/MartialGeek/oh-my-custom-zsh.git .
cd ..
git checkout custom
```

## Features

### Selenium

This plugin exposes a function "selenium-start" that starts your selenium
server.

To use it, edit your ~/.zshrc file, add the plugin "mg-selenium" to your zsh
plugins and export a SELENIUM_PATH variable that contains the full path of your
selenium server (.jar).

Then reload your zsh environment:

    source ~/.zshrc

### Docker

This feature is useful when you are working on a project containing several
docker-compose files.

Edit your ~/.zshrc, enable the plugin "mg-docker" and export a
DOCKER_PROJECT_PATH variable that contains the full directory path where
are stored your docker-compose files, then reload your ssh environment:

    source ~/.zshrc

Now you can type "run " then press Tab and your available docker-files should be displayed in the completion
system. Choose the one you want to run and hit Enter.

A similar command "stop " works in the same way.

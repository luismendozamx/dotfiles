namespace :zsh do
  task :install do
    sh 'cp zsh/zshrc ~/.zshrc'
  end
end

namespace :vim do
  task :install do
    sh 'cp vim/vimrc.before ~/.vimrc.before'
    sh 'cp vim/vimrc.after ~/.vimrc.after'
    sh 'cp vim/gvimrc.before ~/.gvimrc.before'
    sh 'cp vim/gvimrc.after ~/.gvimrc.after'
  end
end

namespace :vscode do
  task :install do
    sh 'cp vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json'
  end
end

task :install => ['zsh:install', 'vim:install', 'vscode:install']

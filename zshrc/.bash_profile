
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

# These are for Android
export ANDROID_HOME=/Users/olivercurtis/Library/Android/sdk
export ANDROID_SDK_ROOT=/Users/olivercurtis/Library/Android/sdk

# ======================== SKYSCANNER ========================
alias npm-set-artifatory-registry='npm config set registry https://artifactory.skyscannertools.net/artifactory/api/npm/npm/'

alias backpack='cd ~/Documents/Backpack/'
alias backpack-web='backpack && cd backpack'
alias brs='backpack && cd backpack-react-scripts'
alias backpack-react='backpack && cd backpack-react-native'
alias backpack-ios='backpack && cd backpack-ios'
alias backpack-android='backpack && cd backpack-android'
alias backpack-docs='backpack && cd backpack-docs'
alias backpack-fix-tests='backpack-web && find . -name "*.js.snap" -exec rm -rf {} \; && npm test'
alias backpack-run-tests='backpack-web && (pkill flow | true) && npm test'
alias backpack-git-submodules-reset='backpack-docs && git checkout origin/master backpack-android backpack-ios backpack-react-native && git submodule update --init --recursive'
alias backpack-watch-tests='backpack-web && npm run jest:watch'
alias backpack-run-flow='backpack-web && (pkill flow | true) && npm run flow'
alias backpack-run-docs='backpack-docs && npm run docs'
alias backpack-run-storybook='backpack-web && npm start'
alias backpack-clean-icons='sudo rm -rf packages/bpk-svgs/dist/png'
alias backpack-check-outdated-npm-packages='for dir in `ls packages`
do
  (cd ./packages/$dir && npm outdated);
done'
alias backpack-check-outdated-npm-packages-native='for dir in `ls native/packages`
do
  (cd ./native/packages/$dir && npm outdated);
done'
alias backpack-check-outdated-top-level='npm outdated'
alias backpack-output-all-outdated='backpack && (backpack-check-outdated-top-level > ~/Desktop/outdated.txt) & (sleep 5 && backpack-check-outdated-npm-packages >> ~/Desktop/outdated.txt && backpack-check-outdated-npm-packages-native >> ~/Desktop/outdated_native.txt) && cat ~/Desktop/outdated.txt | less'

# Nuking
alias backpack-nuke='backpack && sudo rm -rf backpack/ && git clone git@github.com:Skyscanner/backpack.git'
alias brs-nuke='backpack && sudo rm -rf backpack-react-scripts && git clone git@github.com:Skyscanner/backpack-react-scripts.git'
alias backpack-nuke-docs='backpack && sudo rm -rf backpack-docs && git clone --recursive git@github.com:Skyscanner/backpack-docs.git'
alias backpack-nuke-rn='backpack && sudo rm -rf backpack-react-native && git clone git@github.com:Skyscanner/backpack-react-native.git'
alias backpack-setup='backpack && npm i && npm run build'
alias brs-setup='brs && (cd packages/react-error-overlay && npm install) && (cd packages/react-scripts && npm install) && npm install'
alias backpack-nuke-setup='backpack-nuke && backpack-setup'
# ============================================================

# ========================= INTERNAL =========================
alias bpkdefs='backpack && cd bpk-theme-definitions'
alias bpkbook='backpack && cd bpk-theme-bookmarklet'
alias gh-ext-setup='git config --global user.email "8831547+olliecurtis@users.noreply.github.com" && git config --global user.name "Ollie Curtis"'
alias gh-int-setup='git config --local user.email "oliver.curtis@skyscanner.net" && git config --local user.name "Oliver Curtis"'
alias upbook='git checkout master && git pull && npm install --save-dev bpk-theme-definitions@latest && git commit -m "Upgrading to latest definitions" && git push'
# ============================================================

# ====================== SKYSCANNER REPOS ====================
alias skyreps='cd ~/Documents/skyscanner-repos/'
alias skyscanner-ios-app='cd ~/Documents/skyscanner-repos/skyscanner-app/ && npm-set-artifatory-registry'
alias skyscanner-ios-app-rn-sanity-check='skyscanner-ios-app && (cd react-native && npm run pkglock:validate && npm i && npm run lint && npm run test)'
alias skyscanner-ios-app-nuke='cd ~/Documents/skyscanner-repos && rm -rf skyscanner-app && git clone git@github.skyscannertools.net:apps-tribe/skyscanner-app.git'
alias skyscanner-ios-app-setup='skyscanner-ios-app && gem install bundler && (cd ios && rvm use 2.3.1 && ./fullsetup) && skyscanner-ios-app'
alias skyscanner-ios-app-open='skyscanner-ios-app && open ios/Project/Working/Skyscanner.xcworkspace'
alias skyscanner-ios-app-setup-open='skyscanner-ios-app-setup && skyscanner-ios-app-open'
alias skyscanner-ios-app-login-to-npm='skyscanner-ios-app && npm login --registry https://artifactory.skyscannertools.net/artifactory/api/npm/npm/'
alias skyscanner-ios-app-update-backpack-dependency='skyscanner-ios-app && (cd ios &&  bundle exec pod update Backpack)'

alias fs-nuke='cd ~/Documents && rm -rf fs-reviews && mkdir fs-reviews'
# ============================================================

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"  # This loads nvm

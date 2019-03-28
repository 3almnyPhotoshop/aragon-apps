workflow "Lint, test, and build" {
  on = "push"
  resolves = ["install", "bootstrap", "lint", "test", "build", "size"]
}

action "install" {
  uses = "actions/npm@master"
  args = "install"
}

action "bootstrap" {
  needs = "install"
  uses = "actions/npm@master"
  args = "bootstrap:ci"
}

action "lint" {
  needs = "bootstrap"
  uses = "actions/npm@master"
  args = "run lint"
}

action "test:agent" {
  needs = "bootstrap"
  uses = "actions/npm@master"
  args = "run test:agent"
}

action "test:finance" {
  needs = "bootstrap"
  uses = "actions/npm@master"
  args = "run test:finance"
}

action "test:survey" {
  needs = "bootstrap"
  uses = "actions/npm@master"
  args = "run test:survey"
}

action "test:token-manager" {
  needs = "bootstrap"
  uses = "actions/npm@master"
  args = "run test:token-manager"
}

action "test:token-manager:app" {
  needs = "bootstrap"
  uses = "actions/npm@master"
  args = "run test:token-manager:app INSTALL_FRONTEND=true"
}

action "test:vault" {
  needs = "bootstrap"
  uses = "actions/npm@master"
  args = "run test:vault"
}

action "test:voting" {
  needs = "bootstrap"
  uses = "actions/npm@master"
  args = "run test:voting"
}

action "coverage:agent" {
  needs = "bootstrap"
  uses = "actions/npm@master"
  args = "run coverage:agent"
}

action "coverage:finance" {
  needs = "bootstrap"
  uses = "actions/npm@master"
  args = "run coverage:finance"
}

action "coverage:survey" {
  needs = "bootstrap"
  uses = "actions/npm@master"
  args = "run coverage:survey"
}

action "coverage:token-manager" {
  needs = "bootstrap"
  uses = "actions/npm@master"
  args = "run coverage:token-manager"
}

action "coverage:vault" {
  needs = "bootstrap"
  uses = "actions/npm@master"
  args = "run coverage:vault"
}

action "coverage:voting" {
  needs = "bootstrap"
  uses = "actions/npm@master"
  args = "run coverage:voting"
}

action "test:shared" {
  needs = "bootstrap"
  uses = "actions/npm@master"
  args = "run test:shared"
}
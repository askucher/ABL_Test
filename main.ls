require-ls =  require \require-ls
run = (name)->
  test = require-ls "tests/./#{name}/test.ls"
  data = require-ls "tests/./#{name}/data.ls"
  browser = require \selenium-console
     .init browserName: \firefox
     .get('http://tour-widget-askucher.c9.io/iframe.html?merchant=674OOuSWFFyc36oAIZ0Z948zCrMh3IXNQ8jmoV7cW7u95S8fExfkTZZGe0eor9nE').sleep(1000)
  test browser, data

run \widget/checkout
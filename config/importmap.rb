# Pin npm packages by running ./bin/importmap

pin "application", preload: false
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/assets/javascripts/controllers", under: "controllers"
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "jquery", to: "https://code.jquery.com/jquery-3.6.0.min.js", preload: true
pin "datatables"
pin "materialize"
pin "initializer"
pin "materializecss", to: "materialize.min.js"

Для установки Twitter bootstrap

1) gem 'bootstrap'
   gem 'devise-bootstrap-views'
   gem 'jquery-rails'
   gem 'twitter-bootstrap-rails', :git => 'git://github.com/seyhunak/twitter-bootstrap-rails.git' 
   
   вместо Twittera можно использовать Gem:
    https://github.com/hisea/devise-bootstrap-views
   
   
2) yarn add bootstrap jquery popper.js
3)Make the config/webpack/environment.js file look like below:
    Make the config/webpack/environment.js file look like below (you are adding the lines which are highlighted in green below):
   
    **const { environment } = require('@rails/webpacker')
    const webpack = require("webpack")
    environment.plugins.append("Provide", new webpack.ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquery',
    Popper: ['popper.js', 'default']
    }))**
    
    module.exports = environment
    
4) app/javascript/packs/application.js and add the following line to the bottom:
      **import "bootstrap"**
      
5) НЕ ДЕЛАТЬ *= require bootstrap  в app/assets/stylesheets/application.css
6) rails generate bootstrap:install static
7) rails g bootstrap:layout application
8) Перенести файлы из app/assets/javascript в папку app/javascripts и переписать начинку application.js
# Mradi Portfolio Application

> This is a Ruby on Rails 5 application that allows users to add portfolios

This project is a result of an Udemy course called - Dissecting Ruby on Rails 5 by Jorden Hudgens. 

**Link:** https://www.udemy.com/professional-rails-5-development-course/learn/v4/

The goal of the course is to build a real world project while at the same time evaluating the magic behind the Rails framework in order to build a solid understanding in the process.

### Features

- Real time chat engine for comments
- Blog 
- Portfolio
- Drag and Drop interface
- Twitter Integration for Latest Tech News

### Code Structure
The application has 3 distinct layouts which eventually splits the overall system. These layouts affect the style of how the system looks and also the methods available.

#### Application layout
This is the default layout of Rails. We used it to house methods, styles that are global.
The Pages (Model, Controller & Views) heavily relies on this layout.

#### Blog layout
This is the unique layout for our Blog. It is used to style the blog section of the application and houses methods, styles and scripts that are unique to the Blog.

#### Portfolio layout
You guessed it, This is a unique layout for the Portfolio section. Everything that relies on this section is housed in this layout.


### Code Dependencies
The system also has integrated 3rd party gems and libraries in order to be fully functional.

- **HTML Sortable JS**

- **Friendly URLs Gem**
gem 'friendly_id', '~> 5.2.0' # Note: You MUST use 5.0.0 or greater for Rails 4.0+

- **Authentication Gem**
gem 'devise', '~> 4.5'

- **Bootstrap 4 Gem**
gem 'bootstrap', '~> 4.1.3'

- **Bootstrap JS Dependency**
gem 'jquery-rails'

- **Copyright Generation: Custom Gem - MradiViewTool**
gem 'mradi_view_tool', '~> 0.2.0'

- **Authorization Gem**
gem 'petergate', '~> 2.0', '>= 2.0.1'

- **Font Awesome Icons**
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.4'

- **pagination gem**
gem 'kaminari', '~> 0.17.0'

- **jquery ui gem**
gem 'jquery-ui-rails', '~> 6.0', '>= 6.0.1'

- **image management gems**
gem 'carrierwave', '~> 1.2', '>= 1.2.3'
gem 'mini_magick', '~> 4.9', '>= 4.9.2'
gem 'carrierwave-aws', '~> 1.3'

- **secret keys management**
gem 'dotenv-rails', '~> 2.5'

- **nested forms - uses jQuery**
gem 'cocoon', '~> 1.2', '>= 1.2.12'

- **notifications**
gem 'gritter', '~> 1.2'

- **no-sql db - Blog Comments**
gem 'redis', '~> 4.1'

- **twitter gem**
gem 'twitter', '~> 6.2'

- **markdown highlighting**
gem 'redcarpet', '~> 3.4'

- **code syntax highlighting**
gem 'coderay', '~> 1.1', '>= 1.1.2'
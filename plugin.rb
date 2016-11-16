# name: discourse-wrapper
# about: Customize your Discourse header, footer, banner and navigation sections
# version: 0.0.1
# authors: Vinoth Kannan (vinothkannan@vinkas.com)
# url: https://github.com/vinkas0/discourse-wrapper

register_asset 'stylesheets/wrapper.scss'
register_asset "javascripts/wrapper.js"

add_admin_route 'menu_items.title', 'menu-items'

Discourse::Application.routes.append do
  get '/admin/plugins/menu-items' => 'admin/plugins#index', constraints: StaffConstraint.new
end

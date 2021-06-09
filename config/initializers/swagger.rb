Swagger::Docs::Config.register_apis({
  "1.0" => {
    :api_file_path => "public/",
    :base_path => "http://146.59.34.237:3000",
    :clean_directory => true,
    :parent_controller => ActionController::Base,
    :attributes => {
      :info => {
        "title" => "Photkey",
        "description" => "Example rails app"
      }
    }
  }
})
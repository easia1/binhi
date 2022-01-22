module ApplicationHelper

    def link_to_add_row(name, f, association, **args)
      new_object = f.object.send(association).klass.new
      id = new_object.object_id

      fields = f.fields_for(association, new_object, child_index: id) do |builder|
        render(association.to_s.singularize, f: builder)
      end

      link_to(name, '#', class: "add_common_name_field " + args[:class], data: {id: id, fields: fields.gsub("\n", "")})
    end

    def link_to_add_synonym(name, f, association, **args)
      new_object = f.object.send(association).klass.new
      id = new_object.object_id

      fields = f.fields_for(association, new_object, child_index: id) do |builder|
        render(association.to_s.singularize, f: builder)
      end

      link_to(name, '#', class: "add_synonym_field " + args[:class], data: {id: id, fields: fields.gsub("\n", "")})
    end

    def active_class(path)
        "active" if current_page?(path)
    end

    def home_class
        "home-page" if current_page?(root_path)
    end

    def nav_class
        current_page?(root_path) ? "home-nav" : "normal-nav "
    end
end

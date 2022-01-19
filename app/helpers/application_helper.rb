module ApplicationHelper
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

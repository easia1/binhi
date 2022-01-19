module PlantsHelper
    def get_genus(genus_id)
        Genus.find(genus_id)
    end

end

module MyEnumerable
    def all?
        array = []
        @list.each do |li|
           array.push( yield li)
        end
        array.all?
    end

    def any?
    end

    def filter?
    end
end
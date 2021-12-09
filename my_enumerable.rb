module MyEnumerable
    def all?
        array = []
        @list.each do |li|
           array.push( yield li)
        end
        array.all?
    end

    def any?
        array = []
        @list.each do |li|
            array.push( yield li)
        end
        array.any?
    end

    def filter
        array = []
        @list.each do |li|
            if yield li
                array.push(li)
            end
        end
        array
    end
end
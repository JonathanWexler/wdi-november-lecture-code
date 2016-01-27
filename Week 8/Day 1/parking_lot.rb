# Jon Wexler
# 1/25/16
# Given three car sizes, 2, 5, 7, see if all three cars can fit in a parking lot's space
# First try to fit all three, then check if there is enough space for any arrangement of the remaining cars


def parking_lot lot_size
    lot_size -= 14 if lot_size >= 14
    while lot_size >1
        return true if (lot_size%2 == 0 || lot_size%5 == 0)
        lot_size-= 7
    end
    return false
end


puts parking_lot 70
puts parking_lot 2
puts parking_lot 7
puts parking_lot -3
puts parking_lot 0
puts parking_lot 101
puts parking_lot 47
puts parking_lot 2
puts parking_lot 3
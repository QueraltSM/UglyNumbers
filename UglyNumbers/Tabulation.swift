import Foundation

class Tabulation {
    func getListUglyNumbers(n:Int) {
        var next_multiple_of_2 = 2
        var next_multiple_of_3 = 3
        var next_multiple_of_5 = 5
        var i2 = 0
        var i3 = 0
        var i5 = 0
        var ugly = [Int()]
        ugly[0] = 1
        
        for _ in 1...n-1 {
            ugly.append(min(next_multiple_of_2, next_multiple_of_3, next_multiple_of_5))
            if ugly.last == next_multiple_of_2 {
                i2 += 1
                next_multiple_of_2 = ugly[i2] * 2
            }
            if ugly.last  == next_multiple_of_3 {
                i3 += 1
                next_multiple_of_3 = ugly[i3] * 3
            }
            if ugly.last == next_multiple_of_5 {
                i5 += 1
                next_multiple_of_5 = ugly[i5] * 5
            }
        }
        print(ugly.last!)
    }
}

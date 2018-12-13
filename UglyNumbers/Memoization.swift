import Foundation

class Memoization {
    
    var next_multiple_of_2 = 2
    var next_multiple_of_3 = 3
    var next_multiple_of_5 = 5
    var i2 = 0
    var i3 = 0
    var i5 = 0
    var ugly = [Int()]
    
    fileprivate func check_next_multiple_of_2() {
        if ugly.last == next_multiple_of_2 {
            i2 += 1
            next_multiple_of_2 = ugly[i2] * 2
        }
    }
    
    fileprivate func check_next_multiple_of_3() {
        if ugly.last  == next_multiple_of_3 {
            i3 += 1
            next_multiple_of_3 = ugly[i3] * 3
        }
    }
    
    fileprivate func check_next_multiple_of_5() {
        if ugly.last == next_multiple_of_5 {
            i5 += 1
            next_multiple_of_5 = ugly[i5] * 5
        }
    }
    
    func calculateList(n: Int, count: Int){
        if (count < n) {
            ugly.append(min(next_multiple_of_2, next_multiple_of_3, next_multiple_of_5))
            check_next_multiple_of_2()
            check_next_multiple_of_3()
            check_next_multiple_of_5()
            calculateList(n: n, count: count+1)
        }
    }
    
    func initialization(n:Int) {
        ugly[0] = 1
        calculateList(n: n, count:1)
        print(ugly.last!)
    }
}

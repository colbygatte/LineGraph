import UIKit


func generateRandomPoints(numberOfPoints: Int, xFrom: CGFloat, xTo: CGFloat, yFrom: CGFloat, yTo: CGFloat) -> [CGPoint] {
    var points: [CGPoint] = []
    
    for _ in 1...numberOfPoints {
        let rangeX = xTo - xFrom + 1
        let randomX = CGFloat(arc4random_uniform(UInt32(rangeX))) + xFrom
        
        let rangeY = yTo - yFrom + 1
        let randomY = CGFloat(arc4random_uniform(UInt32(rangeY))) + yFrom
        
        points.append(CGPoint(x: randomX, y: randomY))
    }
    
    return points
}

let myPoints = generateRandomPoints(numberOfPoints: 100, xFrom: 5, xTo: 7, yFrom: 1, yTo: 3)

for point in myPoints {
    print(point)
}
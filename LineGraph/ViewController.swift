//
//  ViewController.swift
//  LineGraph
//
//  Created by Colby Gatte on 10/25/16.
//  Copyright © 2016 colbyg. All rights reserved.
//

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



class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // The Graph class is where all the settings
        // are stored for the Graph
        let graph = Graph()
        graph.points = generateRandomPoints(numberOfPoints: 10, xFrom: 2, xTo: 300, yFrom: 2, yTo: 450)
        
        graph.lineColor = UIColor.red
        graph.backgroundColor = UIColor.white
        graph.lineWidth = 1
        
        graph.circleSize = 10
        graph.circleBorder = UIColor.black
        graph.circleFill = UIColor.magenta
        
        // The Graph.make method initiates the GraphView
        // and returns it
        let graphView = graph.make(with: CGRect(x: 0, y: 0, width: 350, height: 500))

        view.addSubview(graphView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


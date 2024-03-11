//
//  ViewController.swift
//  asyc and sync
//
//  Created by Karthiga on 11/03/24.
//
import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        start()
//        end()
//        testDispatch()
        //tested()
        tested2 ()
        
    }
    
    
    func start(){
        DispatchQueue.global().sync {
            print("data 1")
        }
        print("data 2")
    }
    
    func end(){
        DispatchQueue.global().async {
            print("Starting point 1 2 3 4 5 ")
        }
        print("ending point 100 99 98 97 96")
    }
    
    
    func testDispatch(){
        print("1")
        DispatchQueue.global().async {
            print("2")
            
            DispatchQueue.main.async {
                print("3")
            }
            print("4")
            DispatchQueue.main.sync {
                print("5")
            }
            DispatchQueue.main.async {
                print("6")
                DispatchQueue.main.sync {
                    print("7")
                }
            }
            print("8")
        }
        print("9")
    }
    
    
    func tested(){
        DispatchQueue.global().async {
            for i in 0..<10 {
                print(i)
            }
            
            for _ in 0..<10 {
                print("🔵")
            }
            
            for _ in 0..<10 {
                print("💔")
            }
        }
    }
    
    
    func tested2 (){
        DispatchQueue.main.async {
            for y in 0..<10{
                print("💔")
            }
        }
        
        DispatchQueue.main.async {
            for x in 0..<10{
                print("🔵")
            }
        }
        DispatchQueue.global().async {
            for i in 0..<100{
                print(i)
            }
           
            DispatchQueue.global().async {
                for z in 0..<10{
                    print("💔🔵")
                }
            }
            
        }
    }
  
}

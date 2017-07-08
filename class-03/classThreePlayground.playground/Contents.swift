//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

protocol Identity {
    var id: String {get set}
}
class ToDo: Identity {
    var id: String
    var text: String
    
    init (text: String) {
    self.id = UUID().uuidString
    self.text = text
    }
}

protocol ObjectStore {
    var toDos: [ToDo] {get set}
    func add(_ object: ToDo)
    func remove(_ object: ToDo)
    func objectAtIndex(_ index: Int) -> ToDo?
    func count() -> Int
    func allObjects() -> [ToDo]
}
class Store: ObjectStore {
    var toDos: [ToDo] = []
    func add(_ object: ToDo) {
        toDos.append(object)
    }
    
    func remove(_ object: ToDo ) {
        for (index,dos) in toDos.enumerated(){
            if(dos.id == object.id) {
               toDos.remove(at: index)
            }
        }
        
    }
    
    func objectAtIndex(_ index: Int) -> ToDo?{
        let element = toDos[index]
        return element
    }
   
    func count() -> Int {
        return toDos.count
    }
    
    func allObjects() -> [ToDo] {
        return toDos
    }
    
    init (toDos: [ToDo]) {
    self.toDos = toDos
    }
}

class Dogie {
    var dogieName:String
    
    //
    private(set) var bones:[Bone] = []
    
    func add(bone:Bone) {
        bones.append(bone)
        bone.owner = self
    }
    //
    
    init(dogieName name:String) {
        self.dogieName = name
        print("Dogie \(name)")
    }
    
    deinit {
        print("Your dog \(dogieName) is being removed form memory")
    }
}

//
class Bone {
    let boneType:String
    
    weak var owner:Dogie?
    
    init(type:String) {
        self.boneType = type
        print("Bone object of type \(type) is initialized")
    }
    
    deinit {
        print("Bone object of type \(boneType) is being removed form memory")
    }
}
//

do {
    let firstDog = Dogie(dogieName: "Astoria")
    
    //
    let bigBone = Bone(type: "Big")
    
    firstDog.add(bone: bigBone)
    //
}

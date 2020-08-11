// MARK: - Mocks generated from file: CuckooSample/UserRepository.swift at 2020-08-11 16:41:00 +0000

//
//  UserRepository.swift
//  CuckooSample
//
//  Created by yaiwamoto on 10/08/2020.
//  Copyright © 2020 Yasutaka Iwamoto. All rights reserved.
//

import Cuckoo
@testable import CuckooSample

import Foundation


 class MockUserRepository: UserRepository, Cuckoo.ClassMock {
    
     typealias MocksType = UserRepository
    
     typealias Stubbing = __StubbingProxy_UserRepository
     typealias Verification = __VerificationProxy_UserRepository

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: UserRepository?

     func enableDefaultImplementation(_ stub: UserRepository) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     override func getName(id: Int) -> String {
        
    return cuckoo_manager.call("getName(id: Int) -> String",
            parameters: (id),
            escapingParameters: (id),
            superclassCall:
                
                super.getName(id: id)
                ,
            defaultCall: __defaultImplStub!.getName(id: id))
        
    }
    
    
    
     override func getAge(id: Int) -> Int {
        
    return cuckoo_manager.call("getAge(id: Int) -> Int",
            parameters: (id),
            escapingParameters: (id),
            superclassCall:
                
                super.getAge(id: id)
                ,
            defaultCall: __defaultImplStub!.getAge(id: id))
        
    }
    

	 struct __StubbingProxy_UserRepository: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func getName<M1: Cuckoo.Matchable>(id: M1) -> Cuckoo.ClassStubFunction<(Int), String> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: id) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockUserRepository.self, method: "getName(id: Int) -> String", parameterMatchers: matchers))
	    }
	    
	    func getAge<M1: Cuckoo.Matchable>(id: M1) -> Cuckoo.ClassStubFunction<(Int), Int> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: id) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockUserRepository.self, method: "getAge(id: Int) -> Int", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_UserRepository: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func getName<M1: Cuckoo.Matchable>(id: M1) -> Cuckoo.__DoNotUse<(Int), String> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: id) { $0 }]
	        return cuckoo_manager.verify("getName(id: Int) -> String", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func getAge<M1: Cuckoo.Matchable>(id: M1) -> Cuckoo.__DoNotUse<(Int), Int> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: id) { $0 }]
	        return cuckoo_manager.verify("getAge(id: Int) -> Int", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class UserRepositoryStub: UserRepository {
    

    

    
     override func getName(id: Int) -> String  {
        return DefaultValueRegistry.defaultValue(for: (String).self)
    }
    
     override func getAge(id: Int) -> Int  {
        return DefaultValueRegistry.defaultValue(for: (Int).self)
    }
    
}


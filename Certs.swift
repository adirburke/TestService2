//
//  Certs.swift
//  TestService2
//
//  Created by home on 9/10/18.
//

import Foundation

func resourceString(_ path: String) -> String {
    let file = URL(fileURLWithPath: path)
    let data = try! Data(contentsOf: file)
    return String(data: data, encoding: .utf8)!
}

//let bundle = Bundle(identifier: "com.instructure.JavaAuth")!

struct Certs {
    static var trustCertCollection: String {
let path = "/Users/home/Documents/GitHub/TestService2/Sources/zaraca.crt"
//        let path = bundle.path(forResource: "ca", ofType: "crt")!
        return resourceString(path)
    }
    
    static var clientCertChain: String {
        let name = "localhost"
        let path = "/Users/home/Documents/GitHub/TestService2/Sources/\(name).crt"
//        let path = bundle.path(forResource: "client", ofType: "crt")!
        return resourceString(path)
    }
    
    static var clientPrivateKey: String {
        let name = "localhost"
        let path = "/Users/home/Documents/GitHub/TestService2/Sources/\(name).key"
//        let path = bundle.path(forResource: "client", ofType: "pem")!
        return resourceString(path)
    }
    
    static var certChain: String {
        let name = "dev.example.com"
        let path = "/Users/home/Documents/GitHub/TestService2/Sources/\(name).crt"
        return resourceString(path)
    }
    
    static var privateKey: String {
        let name = "dev.example.com"
        let path = "/Users/home/Documents/GitHub/TestService2/Sources/\(name).key"
        return resourceString(path)
    }
}

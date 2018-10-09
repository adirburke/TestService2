import Foundation
import SwiftGRPC
let address = "dev.example.com:9000"

let name = "localhost"
let cert = "/Users/home/Documents/GitHub/TestService2/Sources/\(name).crt"
let key = "/Users/home/Documents/GitHub/TestService2/Sources/\(name).key"
let CAcert = "/Users/home/Documents/GitHub/TestService2/Sources/zaraca.crt"
let crtString = try! String(contentsOfFile: CAcert)

// let arguments: [Channel.Argument] = [Channel.Argument.sslTargetNameOverride("dev.example.com") ]

let client = RMSServiceLinkServiceClient.init(address: address, certificates: Certs.trustCertCollection, clientCertificates: Certs.clientCertChain, clientKey: Certs.clientPrivateKey, arguments: [])


//client.host = "dev.example.com"
var request = CheckTaskDto()
request.resID = 10
request.date = "ASDF"
client.metadata = try! Metadata([ "x-api-key" : "Test"])
for i in 0...1000 {
    let response = try client.getTask(request) { (r, rc) in
        print(rc.description)
        print(r?.task)
        print(rc.success)
    }
}

RunLoop.main.run(until: Date() + 30)

import Foundation
import SwiftGRPC
let address = "dev.example.com:9000"
//let client = RMSServiceLinkServiceClient(address: "0.0.0.0:9000", secure: false)
//let c = RMSServiceLinkServiceClient.init(address: <#T##String#>, certificates: <#T##String#>, clientCertificates: <#T##String?#>, clientKey: <#T##String?#>, arguments: <#T##[Channel.Argument]#>)
let name = "zaraca"
let cert = "/Users/home/Documents/GitHub/TestService2/Sources/\(name).crt"
//let certURL = URL(fileURLWithPath: cert)
let crtString = try! String(contentsOfFile: cert)
// let arguments: [Channel.Argument] = [Channel.Argument.sslTargetNameOverride("dev.example.com") ]
//let client = RMSServiceLinkServiceClient.init(address: address, certificates: crtString, arguments: arguments)


let client = RMSServiceLinkServiceClient.init(address: address, certificates: crtString)

//client.host = "dev.example.com"
var request = CheckTaskDto()
request.resID = 10
request.date = "ASDF"
client.metadata = try! Metadata([ "x-api-key" : "Test"])
let response = try client.getTask(request) { (r, rc) in
    print(rc.description)
    print(r?.task)
    print(rc.success)
}

RunLoop.main.run(until: Date() + 5)

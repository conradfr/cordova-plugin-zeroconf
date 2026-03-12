import Foundation

class Hostname: NSObject {
    static func get() -> String {
        var hostname = [CChar](repeating: 0, count: Int(NI_MAXHOST))
        gethostname(&hostname, hostname.count)
        return String(cString: hostname)
    }
}

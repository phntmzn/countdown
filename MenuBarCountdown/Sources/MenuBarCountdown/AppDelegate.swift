import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {
    var statusItem: NSStatusItem!
    var timer: Timer?
    var remainingSeconds = 16000 * 3600  // 16,000 hours

    func applicationDidFinishLaunching(_ notification: Notification) {
        statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
        updateStatusItem()

        timer = Timer.scheduledTimer(timeInterval: 1.0,
                                     target: self,
                                     selector: #selector(updateTime),
                                     userInfo: nil,
                                     repeats: true)
    }

    @objc func updateTime() {
        guard remainingSeconds > 0 else {
            statusItem.button?.title = "⏰ Done"
            timer?.invalidate()
            return
        }
        remainingSeconds -= 1
        updateStatusItem()
    }

    func updateStatusItem() {
        let d = remainingSeconds / 86400
        let h = (remainingSeconds % 86400) / 3600
        let m = (remainingSeconds % 3600) / 60
        let s = remainingSeconds % 60
        statusItem.button?.title = String(format: "%dd %02dh %02dm %02ds", d, h, m, s)
    }
}

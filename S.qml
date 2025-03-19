import QtQuick 2.0

Rectangle {
	opacity: 0.7
	color: "#eee"
	width: height * 1.5

	function toGB(bytes) {
		if (bytes < 1024) {
			return bytes + "B"
		}
		if (bytes / 1024 < 1024) {
			return parseInt((bytes / 1024)) + "K"
		}
		return (bytes / 1024 / 1024).toFixed(1) + "M"
	}

	function calculate(a, n) {
		var result = 1
		for (var i = 1; i <= n; i++) {
			if (a > 0){
			    result *= i
			} else {
			    result /= i
			}
		}
		return result
	}

	Text {
		font.pixelSize: 12
		anchors.centerIn: parent
		anchors.verticalCenterOffset: -10
		text: "↑" + toGB(value.up)
	}
	Text {
		font.pixelSize: 12
		anchors.centerIn: parent
		anchors.verticalCenterOffset: 10
		text: "↓" + toGB(value.down)
	}
}
var treeArr: [[Bool]] = []

while let s = readLine(strippingNewline: true) {
    var row: [Bool] = []

    for c in s {
        row.append(c == "#")
    }

    treeArr.append(row)
}

let deltas: [(Int, Int)] = [(1, 1), (3, 1), (5, 1), (7, 1), (1, 2)]

var total = 1
for (colDelta, rowDelta) in deltas {
    var row = 0
    var col = 0

    var numTrees = 0
    while row < treeArr.count {
        if treeArr[row][col] {
            numTrees += 1
        }

        col = (col + colDelta) % treeArr[row].count
        row += rowDelta
    }

    total *= numTrees
}

print(total)

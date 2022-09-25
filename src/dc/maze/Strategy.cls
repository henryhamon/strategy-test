Class dc.maze.Strategy Extends %RegisteredObject
{

Method GetNextTurn(up, down, left, right) As %String
{

    If (($Get(^MazeSolution)="")||($Get(^MazeSolution)>18)) {
        S aux = 0
        S lstA = $ListFromString("6,6,1,1,1,2,1",",")
        S lstB = $ListFromString("down,right,down,right,down,right,down",",")
        S ptr = 0, k = 0
        While $ListNext(lstA, ptr, value) {
            S k = k + 1
            S ix = 1
            F ix=1:1:value {
                S aux = aux + 1
                S ^MazeSolution(aux) = $List(lstB, k)
            }
        }
        S ^MazeSolution = 0
    }
    S ^MazeSolution = $Get(^MazeSolution) + 1
    Q $G(^MazeSolution(^MazeSolution))


}

}

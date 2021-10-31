const fs = require("fs")

fs.readFile("./json/table.json", "utf8", async (err, jsonString) => {
    if (err) {
        console.log("Read failed :", err)
        return
    }
    try {
        const top = JSON.parse(jsonString)
        // console.log(top.response[0])
        const arr = []
        for (let i = 0; i < 20; i++) {
            // const name = await top.response[i].player.name
            // const nation = await top.response[i].player.nationality
            // const club = await top.response[i].statistics[0].team.name
            // const pictureUrl = await top.response[i].player.photo
            // const total = await top.response[i].statistics[0].goals.total
            const name = await top.response[0].league.standings[0][i].team.name
            const point = await top.response[0].league.standings[0][i].points
            const form = await top.response[0].league.standings[0][i].form
            const win = await top.response[0].league.standings[0][i].all.win
            const draw = await top.response[0].league.standings[0][i].all.draw
            const lose = await top.response[0].league.standings[0][i].all.lose
            const place = await top.response[0].league.standings[0][i].rank
            const obj = {
                name,
                point,
                form,
                win,
                draw,
                lose,
                place
            }
            arr.push(obj)
            // console.log(name)
        }
        console.log(arr)
    } catch (e) {
        console.log(e)
    }
})
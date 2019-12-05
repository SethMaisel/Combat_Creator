

document.addEventListener('DOMContentLoaded', () => {
    console.log('%c DOM Content Loaded and Parsed!', 'color: magenta')

    const fightsContainer = document.querySelector('#fightsContainer')
    const fightDiv = document.createElement('div')
    const fightUl = document.getElementById('fights')
    const sequenceUl = document.getElementById('sequence')
    const characterUl = document.getElementById('character')
    const weaponUl = document.getElementById('weapon')
    const moveUl = document.getElementById('move')
    const actionUl = document.getElementById('action')


    fightsContainer.append(fightDiv)
    
    function handleResponse(response) {
        return response.json()
    }

    function createFightCard(fight) {
        // console.log("fight", fight)
        fightUl.innerText = fight.name
        fightDiv.append(fightUl)
    }

    function createSequenceCard(sequence){
        console.log('sequence', sequence)
        sequenceUl.innerText = sequence.id
        fightUl.appendChild(sequenceUl)
    }
    
    function createMoveCard(move){
        // console.log('move', move)
        actionUl.innerText = move.action
        const techniqueLi = document.createElement('li')
        techniqueLi.innerText = move.technique
        const lineLi = document.createElement('li')
        lineLi.innerText = move.line
        moveUl.appendChild(actionUl, techniqueLi, lineLi)
    }


    function showFights(fights){
        return fights.map(fight => {
            createFightCard(fight)
        })
    }

    function showSequences(sequences){
        return sequences.map(sequence => {
            createSequenceCard(sequence)
        })

    }

    // function showCharacters(showSequences){
    //     showSequences.character.map(character => {
    //         console.log('character', character)
    //         return character.name
    //     })
    //         console.log('sequence2', sequence)
        
        
    // }

    function showMoves(moves){
        return moves.map(move => {
            createMoveCard(move)
        })
    }
    

    fetch('http://localhost:3000/fights')
    .then(handleResponse)
    .then(showFights)

    fetch('http://localhost:3000/sequences')
    .then(handleResponse)
    .then(showSequences)
    .then(showCharacters)

    fetch('http://localhost:3000/moves')
    .then(handleResponse)
    .then(showMoves)
})
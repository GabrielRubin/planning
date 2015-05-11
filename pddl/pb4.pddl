; --------------------
; Problem file
; --------------------

(define (problem pb3)
  (:domain planks)

  (:requirements :strips)

  (:objects
    agent1
    agent2
    island1
    island2
    island3
    island4
    plank1
    plank2
  )

  (:init
    (AGENT agent1)
    (AGENT agent2)
    (ISLAND island1)
    (ISLAND island2)
    (ISLAND island3)
    (ISLAND island4)
    (PLANK plank1)
    (PLANK plank2)

    (OnIsland agent1 island1)
    (OnIsland agent2 island2)
    (IslandFree island3)
    (IslandFree island4)

    (Free agent1)
    (Free agent2)

    (Connected plank1 island2 island3)
    (Connected plank2 island2 island4)
  )

  (:goal
    (and
      (Free agent1)
      (Free agent2)

      (OnIsland agent1 island3)
      (OnIsland agent2 island1)
      ;(IslandFree island2)
      ;(IslandFree island4)

      ;(not (Connected plank1 island2 island3))

      (Connected plank1 island1 island2)
      (Connected plank2 island2 island4)
    )
  )
)

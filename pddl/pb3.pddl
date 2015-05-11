; --------------------
; Problem file
; --------------------

(define (problem pb3)
  (:domain planks)

  (:requirements :strips)

  (:objects
    agent
    island1
    island2
    island3
    plank
  )

  (:init
    (AGENT agent)
    (ISLAND island1)
    (ISLAND island2)
    (ISLAND island3)
    (PLANK plank)

    (OnIsland agent island1)

    (IslandFree island2)

    (IslandFree island3)

    (Free agent)

    (Connected plank island1 island2)
  )

  (:goal
    (and
      (Free agent)

      (OnIsland agent island3)

      (not (Connected plank island1 island2))

      (Connected plank island2 island3)
    )
  )
)

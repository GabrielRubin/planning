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

    (OnIsland agent island3)

    (OnIsland plank island2)
    (OnIsland plank island3)

    (IslandFree island1)
    (IslandFree island2)

    (Free agent)

    (Connected island2 island3)
    (Connected island3 island2)

    (not (Connected island1 island2))
    (not (Connected island2 island1))

    (Adjacent island1 island2)
    (Adjacent island2 island1)
    (Adjacent island2 island3)
    (Adjacent island3 island2)
  )

  (:goal
    (and
      (Free agent)

      (OnIsland agent island1)

      (Connected island1 island2)
      (Connected island2 island1)

      (not (Connected island2 island3))
      (not (Connected island3 island2))
    )
  )
)

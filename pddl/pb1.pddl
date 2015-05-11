; --------------------
; Problem file
; --------------------

(define (problem pb1)
  (:domain planks)

  (:requirements :strips)

  (:objects
    agent
    island1
    island2
    plank
  )

  (:init
    (AGENT agent)
    (ISLAND island1)
    (ISLAND island2)
    (PLANK plank)

    (OnIsland agent island1)

    (OnIsland plank island1)
    (OnIsland plank island2)

    (IslandFree island2)

    (Connected island1 island2)
    (Connected island2 island1)
  )

  (:goal
    (and
      (IslandFree island1)
      (not (OnIsland agent island1))
      (OnIsland agent island2)
    )
  )
)

; PLAN
; do_example(b,c)
; do_example(a,b)
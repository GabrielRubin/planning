; --------------------
; Problem file
; --------------------

(define (problem pb2)
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

    (OnIsland agent island2)

    (OnIsland plank island1)
    (OnIsland plank island2)

    (Free agent)

    (Connected island1 island2)
    (Connected island2 island1)

    (not (Connected island2 island3))
    (not (Connected island3 island2))

    (Adjacent island1 island2)
    (Adjacent island2 island1)
    (Adjacent island2 island3)
    (Adjacent island3 island2)
  )

  (:goal
    (and
      (Free agent)

      (not (Connected island1 island2))
      (not (Connected island2 island1))

      (Connected island2 island3)
      (Connected island3 island2)
    )
  )
)

; PLAN
; do_example(b,c)
; do_example(a,b)
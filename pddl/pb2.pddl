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

    (Free agent)

    (Connected plank island1 island2)
  )

  (:goal
    (and
      (Free agent)

      (not (Connected plank island1 island2))

      (Connected plank island2 island3)
    )
  )
)

; PLAN
; do_example(b,c)
; do_example(a,b)
(define (domain maze-navigation)
    (:requirements :strips :typing :fluents :durative-actions)
    (:types
        robot position - object
    )

    (:constants
        p1 p2 p3 p4 - position
    )
    (:predicates
        (at ?r - robot ?p - position)
        (has-station ?p - position)
    )

    
    (:functions
        (battery-level ?r - robot) 
    )
    
    (:durative-action move-p3-p2
        :parameters (?r - robot)
        :duration (= ?duration 28)  
        :condition (and 
        (at start (at ?r p3))
        (at start (>= (battery-level ?r) 56))
        )
        :effect (and
            (at end (at ?r p2))
            (at start (not (at ?r p3)))
            (at end (decrease (battery-level ?r) 56))
        ))

        
(:durative-action move-p2-p3
        :parameters (?r - robot)
        :duration (= ?duration 28)  
        :condition (and 
        (at start (at ?r p2))
        (at start (>= (battery-level ?r) 56))
        )
        :effect (and
            (at end (at ?r p3))
            (at start (not (at ?r p2)))
            (at end (decrease (battery-level ?r) 56))
        ))

        
(:durative-action move-p1-p2
        :parameters (?r - robot)
        :duration (= ?duration 0)  
        :condition (and 
        (at start (at ?r p1))
        (at start (>= (battery-level ?r) 1))
        )
        :effect (and
            (at end (at ?r p2))
            (at start (not (at ?r p1)))
            (at end (decrease (battery-level ?r) 1))
        ))

        
(:durative-action move-p1-p3
        :parameters (?r - robot)
        :duration (= ?duration 27)  
        :condition (and 
        (at start (at ?r p1))
        (at start (>= (battery-level ?r) 55))
        )
        :effect (and
            (at end (at ?r p3))
            (at start (not (at ?r p1)))
            (at end (decrease (battery-level ?r) 55))
        ))

        
(:durative-action move-p2-p4
        :parameters (?r - robot)
        :duration (= ?duration 17)  
        :condition (and 
        (at start (at ?r p2))
        (at start (>= (battery-level ?r) 35))
        )
        :effect (and
            (at end (at ?r p4))
            (at start (not (at ?r p2)))
            (at end (decrease (battery-level ?r) 35))
        ))

        
(:durative-action move-p3-p4
        :parameters (?r - robot)
        :duration (= ?duration 10)  
        :condition (and 
        (at start (at ?r p3))
        (at start (>= (battery-level ?r) 21))
        )
        :effect (and
            (at end (at ?r p4))
            (at start (not (at ?r p3)))
            (at end (decrease (battery-level ?r) 21))
        ))

        

    (:durative-action charge
        :parameters (?r - robot ?p - position)
        :duration (= ?duration 0.1)
        :condition (and (at start (at ?r ?p))
         (at start (has-station ?p))
         ) 
        :effect 
            (at end  (increase (battery-level ?r) 0.5) )
    )
    
)


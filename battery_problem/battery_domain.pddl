(define (domain maze-navigation)
        (:requirements :strips :typing :fluents :durative-actions)
        (:types
            robot position - object
        )

        (:constants
            p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 - position
        )
        (:predicates
            (at ?r - robot ?p - position)
            (has-station ?p - position)
        )

        
        (:functions
            (battery-level ?r - robot) 
        )
        
        (:durative-action move-p2-p3
            :parameters (?r - robot)
            :duration (= ?duration 36)  
            :condition (and 
            (at start (at ?r p2))
            (at start (>= (battery-level ?r) 36))
            )
            :effect (and
                (at end (at ?r p3))
                (at start (not (at ?r p2)))
                (at end (decrease (battery-level ?r) 36))
            ))

            
(:durative-action move-p2-p4
            :parameters (?r - robot)
            :duration (= ?duration 42)  
            :condition (and 
            (at start (at ?r p2))
            (at start (>= (battery-level ?r) 42))
            )
            :effect (and
                (at end (at ?r p4))
                (at start (not (at ?r p2)))
                (at end (decrease (battery-level ?r) 42))
            ))

            
(:durative-action move-p2-p5
            :parameters (?r - robot)
            :duration (= ?duration 156)  
            :condition (and 
            (at start (at ?r p2))
            (at start (>= (battery-level ?r) 156))
            )
            :effect (and
                (at end (at ?r p5))
                (at start (not (at ?r p2)))
                (at end (decrease (battery-level ?r) 156))
            ))

            
(:durative-action move-p2-p6
            :parameters (?r - robot)
            :duration (= ?duration 261)  
            :condition (and 
            (at start (at ?r p2))
            (at start (>= (battery-level ?r) 261))
            )
            :effect (and
                (at end (at ?r p6))
                (at start (not (at ?r p2)))
                (at end (decrease (battery-level ?r) 261))
            ))

            
(:durative-action move-p2-p7
            :parameters (?r - robot)
            :duration (= ?duration 256)  
            :condition (and 
            (at start (at ?r p2))
            (at start (>= (battery-level ?r) 256))
            )
            :effect (and
                (at end (at ?r p7))
                (at start (not (at ?r p2)))
                (at end (decrease (battery-level ?r) 256))
            ))

            
(:durative-action move-p2-p8
            :parameters (?r - robot)
            :duration (= ?duration 67)  
            :condition (and 
            (at start (at ?r p2))
            (at start (>= (battery-level ?r) 67))
            )
            :effect (and
                (at end (at ?r p8))
                (at start (not (at ?r p2)))
                (at end (decrease (battery-level ?r) 67))
            ))

            
(:durative-action move-p2-p9
            :parameters (?r - robot)
            :duration (= ?duration 0)  
            :condition (and 
            (at start (at ?r p2))
            (at start (>= (battery-level ?r) 0))
            )
            :effect (and
                (at end (at ?r p9))
                (at start (not (at ?r p2)))
                (at end (decrease (battery-level ?r) 0))
            ))

            
(:durative-action move-p2-p10
            :parameters (?r - robot)
            :duration (= ?duration 51)  
            :condition (and 
            (at start (at ?r p2))
            (at start (>= (battery-level ?r) 51))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p2)))
                (at end (decrease (battery-level ?r) 51))
            ))

            
(:durative-action move-p3-p2
            :parameters (?r - robot)
            :duration (= ?duration 36)  
            :condition (and 
            (at start (at ?r p3))
            (at start (>= (battery-level ?r) 36))
            )
            :effect (and
                (at end (at ?r p2))
                (at start (not (at ?r p3)))
                (at end (decrease (battery-level ?r) 36))
            ))

            
(:durative-action move-p3-p4
            :parameters (?r - robot)
            :duration (= ?duration 28)  
            :condition (and 
            (at start (at ?r p3))
            (at start (>= (battery-level ?r) 28))
            )
            :effect (and
                (at end (at ?r p4))
                (at start (not (at ?r p3)))
                (at end (decrease (battery-level ?r) 28))
            ))

            
(:durative-action move-p3-p5
            :parameters (?r - robot)
            :duration (= ?duration 180)  
            :condition (and 
            (at start (at ?r p3))
            (at start (>= (battery-level ?r) 180))
            )
            :effect (and
                (at end (at ?r p5))
                (at start (not (at ?r p3)))
                (at end (decrease (battery-level ?r) 180))
            ))

            
(:durative-action move-p3-p6
            :parameters (?r - robot)
            :duration (= ?duration 105)  
            :condition (and 
            (at start (at ?r p3))
            (at start (>= (battery-level ?r) 105))
            )
            :effect (and
                (at end (at ?r p6))
                (at start (not (at ?r p3)))
                (at end (decrease (battery-level ?r) 105))
            ))

            
(:durative-action move-p3-p7
            :parameters (?r - robot)
            :duration (= ?duration 280)  
            :condition (and 
            (at start (at ?r p3))
            (at start (>= (battery-level ?r) 280))
            )
            :effect (and
                (at end (at ?r p7))
                (at start (not (at ?r p3)))
                (at end (decrease (battery-level ?r) 280))
            ))

            
(:durative-action move-p3-p8
            :parameters (?r - robot)
            :duration (= ?duration 40)  
            :condition (and 
            (at start (at ?r p3))
            (at start (>= (battery-level ?r) 40))
            )
            :effect (and
                (at end (at ?r p8))
                (at start (not (at ?r p3)))
                (at end (decrease (battery-level ?r) 40))
            ))

            
(:durative-action move-p3-p9
            :parameters (?r - robot)
            :duration (= ?duration 0)  
            :condition (and 
            (at start (at ?r p3))
            (at start (>= (battery-level ?r) 0))
            )
            :effect (and
                (at end (at ?r p9))
                (at start (not (at ?r p3)))
                (at end (decrease (battery-level ?r) 0))
            ))

            
(:durative-action move-p3-p10
            :parameters (?r - robot)
            :duration (= ?duration 43)  
            :condition (and 
            (at start (at ?r p3))
            (at start (>= (battery-level ?r) 43))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p3)))
                (at end (decrease (battery-level ?r) 43))
            ))

            
(:durative-action move-p4-p2
            :parameters (?r - robot)
            :duration (= ?duration 42)  
            :condition (and 
            (at start (at ?r p4))
            (at start (>= (battery-level ?r) 42))
            )
            :effect (and
                (at end (at ?r p2))
                (at start (not (at ?r p4)))
                (at end (decrease (battery-level ?r) 42))
            ))

            
(:durative-action move-p4-p3
            :parameters (?r - robot)
            :duration (= ?duration 29)  
            :condition (and 
            (at start (at ?r p4))
            (at start (>= (battery-level ?r) 29))
            )
            :effect (and
                (at end (at ?r p3))
                (at start (not (at ?r p4)))
                (at end (decrease (battery-level ?r) 29))
            ))

            
(:durative-action move-p4-p5
            :parameters (?r - robot)
            :duration (= ?duration 194)  
            :condition (and 
            (at start (at ?r p4))
            (at start (>= (battery-level ?r) 194))
            )
            :effect (and
                (at end (at ?r p5))
                (at start (not (at ?r p4)))
                (at end (decrease (battery-level ?r) 194))
            ))

            
(:durative-action move-p4-p6
            :parameters (?r - robot)
            :duration (= ?duration 299)  
            :condition (and 
            (at start (at ?r p4))
            (at start (>= (battery-level ?r) 299))
            )
            :effect (and
                (at end (at ?r p6))
                (at start (not (at ?r p4)))
                (at end (decrease (battery-level ?r) 299))
            ))

            
(:durative-action move-p4-p7
            :parameters (?r - robot)
            :duration (= ?duration 294)  
            :condition (and 
            (at start (at ?r p4))
            (at start (>= (battery-level ?r) 294))
            )
            :effect (and
                (at end (at ?r p7))
                (at start (not (at ?r p4)))
                (at end (decrease (battery-level ?r) 294))
            ))

            
(:durative-action move-p4-p8
            :parameters (?r - robot)
            :duration (= ?duration 28)  
            :condition (and 
            (at start (at ?r p4))
            (at start (>= (battery-level ?r) 28))
            )
            :effect (and
                (at end (at ?r p8))
                (at start (not (at ?r p4)))
                (at end (decrease (battery-level ?r) 28))
            ))

            
(:durative-action move-p4-p9
            :parameters (?r - robot)
            :duration (= ?duration 0)  
            :condition (and 
            (at start (at ?r p4))
            (at start (>= (battery-level ?r) 0))
            )
            :effect (and
                (at end (at ?r p9))
                (at start (not (at ?r p4)))
                (at end (decrease (battery-level ?r) 0))
            ))

            
(:durative-action move-p4-p10
            :parameters (?r - robot)
            :duration (= ?duration 14)  
            :condition (and 
            (at start (at ?r p4))
            (at start (>= (battery-level ?r) 14))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p4)))
                (at end (decrease (battery-level ?r) 14))
            ))

            
(:durative-action move-p5-p2
            :parameters (?r - robot)
            :duration (= ?duration 156)  
            :condition (and 
            (at start (at ?r p5))
            (at start (>= (battery-level ?r) 156))
            )
            :effect (and
                (at end (at ?r p2))
                (at start (not (at ?r p5)))
                (at end (decrease (battery-level ?r) 156))
            ))

            
(:durative-action move-p5-p3
            :parameters (?r - robot)
            :duration (= ?duration 147)  
            :condition (and 
            (at start (at ?r p5))
            (at start (>= (battery-level ?r) 147))
            )
            :effect (and
                (at end (at ?r p3))
                (at start (not (at ?r p5)))
                (at end (decrease (battery-level ?r) 147))
            ))

            
(:durative-action move-p5-p4
            :parameters (?r - robot)
            :duration (= ?duration 194)  
            :condition (and 
            (at start (at ?r p5))
            (at start (>= (battery-level ?r) 194))
            )
            :effect (and
                (at end (at ?r p4))
                (at start (not (at ?r p5)))
                (at end (decrease (battery-level ?r) 194))
            ))

            
(:durative-action move-p5-p6
            :parameters (?r - robot)
            :duration (= ?duration 145)  
            :condition (and 
            (at start (at ?r p5))
            (at start (>= (battery-level ?r) 145))
            )
            :effect (and
                (at end (at ?r p6))
                (at start (not (at ?r p5)))
                (at end (decrease (battery-level ?r) 145))
            ))

            
(:durative-action move-p5-p7
            :parameters (?r - robot)
            :duration (= ?duration 140)  
            :condition (and 
            (at start (at ?r p5))
            (at start (>= (battery-level ?r) 140))
            )
            :effect (and
                (at end (at ?r p7))
                (at start (not (at ?r p5)))
                (at end (decrease (battery-level ?r) 140))
            ))

            
(:durative-action move-p5-p8
            :parameters (?r - robot)
            :duration (= ?duration 217)  
            :condition (and 
            (at start (at ?r p5))
            (at start (>= (battery-level ?r) 217))
            )
            :effect (and
                (at end (at ?r p8))
                (at start (not (at ?r p5)))
                (at end (decrease (battery-level ?r) 217))
            ))

            
(:durative-action move-p5-p9
            :parameters (?r - robot)
            :duration (= ?duration 0)  
            :condition (and 
            (at start (at ?r p5))
            (at start (>= (battery-level ?r) 0))
            )
            :effect (and
                (at end (at ?r p9))
                (at start (not (at ?r p5)))
                (at end (decrease (battery-level ?r) 0))
            ))

            
(:durative-action move-p5-p10
            :parameters (?r - robot)
            :duration (= ?duration 204)  
            :condition (and 
            (at start (at ?r p5))
            (at start (>= (battery-level ?r) 204))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p5)))
                (at end (decrease (battery-level ?r) 204))
            ))

            
(:durative-action move-p6-p2
            :parameters (?r - robot)
            :duration (= ?duration 261)  
            :condition (and 
            (at start (at ?r p6))
            (at start (>= (battery-level ?r) 261))
            )
            :effect (and
                (at end (at ?r p2))
                (at start (not (at ?r p6)))
                (at end (decrease (battery-level ?r) 261))
            ))

            
(:durative-action move-p6-p3
            :parameters (?r - robot)
            :duration (= ?duration 285)  
            :condition (and 
            (at start (at ?r p6))
            (at start (>= (battery-level ?r) 285))
            )
            :effect (and
                (at end (at ?r p3))
                (at start (not (at ?r p6)))
                (at end (decrease (battery-level ?r) 285))
            ))

            
(:durative-action move-p6-p4
            :parameters (?r - robot)
            :duration (= ?duration 299)  
            :condition (and 
            (at start (at ?r p6))
            (at start (>= (battery-level ?r) 299))
            )
            :effect (and
                (at end (at ?r p4))
                (at start (not (at ?r p6)))
                (at end (decrease (battery-level ?r) 299))
            ))

            
(:durative-action move-p6-p5
            :parameters (?r - robot)
            :duration (= ?duration 145)  
            :condition (and 
            (at start (at ?r p6))
            (at start (>= (battery-level ?r) 145))
            )
            :effect (and
                (at end (at ?r p5))
                (at start (not (at ?r p6)))
                (at end (decrease (battery-level ?r) 145))
            ))

            
(:durative-action move-p6-p7
            :parameters (?r - robot)
            :duration (= ?duration 112)  
            :condition (and 
            (at start (at ?r p6))
            (at start (>= (battery-level ?r) 112))
            )
            :effect (and
                (at end (at ?r p7))
                (at start (not (at ?r p6)))
                (at end (decrease (battery-level ?r) 112))
            ))

            
(:durative-action move-p6-p8
            :parameters (?r - robot)
            :duration (= ?duration 322)  
            :condition (and 
            (at start (at ?r p6))
            (at start (>= (battery-level ?r) 322))
            )
            :effect (and
                (at end (at ?r p8))
                (at start (not (at ?r p6)))
                (at end (decrease (battery-level ?r) 322))
            ))

            
(:durative-action move-p6-p9
            :parameters (?r - robot)
            :duration (= ?duration 0)  
            :condition (and 
            (at start (at ?r p6))
            (at start (>= (battery-level ?r) 0))
            )
            :effect (and
                (at end (at ?r p9))
                (at start (not (at ?r p6)))
                (at end (decrease (battery-level ?r) 0))
            ))

            
(:durative-action move-p6-p10
            :parameters (?r - robot)
            :duration (= ?duration 310)  
            :condition (and 
            (at start (at ?r p6))
            (at start (>= (battery-level ?r) 310))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p6)))
                (at end (decrease (battery-level ?r) 310))
            ))

            
(:durative-action move-p7-p2
            :parameters (?r - robot)
            :duration (= ?duration 172)  
            :condition (and 
            (at start (at ?r p7))
            (at start (>= (battery-level ?r) 172))
            )
            :effect (and
                (at end (at ?r p2))
                (at start (not (at ?r p7)))
                (at end (decrease (battery-level ?r) 172))
            ))

            
(:durative-action move-p7-p3
            :parameters (?r - robot)
            :duration (= ?duration 280)  
            :condition (and 
            (at start (at ?r p7))
            (at start (>= (battery-level ?r) 280))
            )
            :effect (and
                (at end (at ?r p3))
                (at start (not (at ?r p7)))
                (at end (decrease (battery-level ?r) 280))
            ))

            
(:durative-action move-p7-p4
            :parameters (?r - robot)
            :duration (= ?duration 294)  
            :condition (and 
            (at start (at ?r p7))
            (at start (>= (battery-level ?r) 294))
            )
            :effect (and
                (at end (at ?r p4))
                (at start (not (at ?r p7)))
                (at end (decrease (battery-level ?r) 294))
            ))

            
(:durative-action move-p7-p5
            :parameters (?r - robot)
            :duration (= ?duration 140)  
            :condition (and 
            (at start (at ?r p7))
            (at start (>= (battery-level ?r) 140))
            )
            :effect (and
                (at end (at ?r p5))
                (at start (not (at ?r p7)))
                (at end (decrease (battery-level ?r) 140))
            ))

            
(:durative-action move-p7-p6
            :parameters (?r - robot)
            :duration (= ?duration 112)  
            :condition (and 
            (at start (at ?r p7))
            (at start (>= (battery-level ?r) 112))
            )
            :effect (and
                (at end (at ?r p6))
                (at start (not (at ?r p7)))
                (at end (decrease (battery-level ?r) 112))
            ))

            
(:durative-action move-p7-p8
            :parameters (?r - robot)
            :duration (= ?duration 317)  
            :condition (and 
            (at start (at ?r p7))
            (at start (>= (battery-level ?r) 317))
            )
            :effect (and
                (at end (at ?r p8))
                (at start (not (at ?r p7)))
                (at end (decrease (battery-level ?r) 317))
            ))

            
(:durative-action move-p7-p9
            :parameters (?r - robot)
            :duration (= ?duration 0)  
            :condition (and 
            (at start (at ?r p7))
            (at start (>= (battery-level ?r) 0))
            )
            :effect (and
                (at end (at ?r p9))
                (at start (not (at ?r p7)))
                (at end (decrease (battery-level ?r) 0))
            ))

            
(:durative-action move-p7-p10
            :parameters (?r - robot)
            :duration (= ?duration 305)  
            :condition (and 
            (at start (at ?r p7))
            (at start (>= (battery-level ?r) 305))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p7)))
                (at end (decrease (battery-level ?r) 305))
            ))

            
(:durative-action move-p8-p2
            :parameters (?r - robot)
            :duration (= ?duration 67)  
            :condition (and 
            (at start (at ?r p8))
            (at start (>= (battery-level ?r) 67))
            )
            :effect (and
                (at end (at ?r p2))
                (at start (not (at ?r p8)))
                (at end (decrease (battery-level ?r) 67))
            ))

            
(:durative-action move-p8-p3
            :parameters (?r - robot)
            :duration (= ?duration 40)  
            :condition (and 
            (at start (at ?r p8))
            (at start (>= (battery-level ?r) 40))
            )
            :effect (and
                (at end (at ?r p3))
                (at start (not (at ?r p8)))
                (at end (decrease (battery-level ?r) 40))
            ))

            
(:durative-action move-p8-p4
            :parameters (?r - robot)
            :duration (= ?duration 28)  
            :condition (and 
            (at start (at ?r p8))
            (at start (>= (battery-level ?r) 28))
            )
            :effect (and
                (at end (at ?r p4))
                (at start (not (at ?r p8)))
                (at end (decrease (battery-level ?r) 28))
            ))

            
(:durative-action move-p8-p5
            :parameters (?r - robot)
            :duration (= ?duration 217)  
            :condition (and 
            (at start (at ?r p8))
            (at start (>= (battery-level ?r) 217))
            )
            :effect (and
                (at end (at ?r p5))
                (at start (not (at ?r p8)))
                (at end (decrease (battery-level ?r) 217))
            ))

            
(:durative-action move-p8-p6
            :parameters (?r - robot)
            :duration (= ?duration 322)  
            :condition (and 
            (at start (at ?r p8))
            (at start (>= (battery-level ?r) 322))
            )
            :effect (and
                (at end (at ?r p6))
                (at start (not (at ?r p8)))
                (at end (decrease (battery-level ?r) 322))
            ))

            
(:durative-action move-p8-p7
            :parameters (?r - robot)
            :duration (= ?duration 317)  
            :condition (and 
            (at start (at ?r p8))
            (at start (>= (battery-level ?r) 317))
            )
            :effect (and
                (at end (at ?r p7))
                (at start (not (at ?r p8)))
                (at end (decrease (battery-level ?r) 317))
            ))

            
(:durative-action move-p8-p9
            :parameters (?r - robot)
            :duration (= ?duration 0)  
            :condition (and 
            (at start (at ?r p8))
            (at start (>= (battery-level ?r) 0))
            )
            :effect (and
                (at end (at ?r p9))
                (at start (not (at ?r p8)))
                (at end (decrease (battery-level ?r) 0))
            ))

            
(:durative-action move-p8-p10
            :parameters (?r - robot)
            :duration (= ?duration 32)  
            :condition (and 
            (at start (at ?r p8))
            (at start (>= (battery-level ?r) 32))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p8)))
                (at end (decrease (battery-level ?r) 32))
            ))

            
(:durative-action move-p9-p2
            :parameters (?r - robot)
            :duration (= ?duration 0)  
            :condition (and 
            (at start (at ?r p9))
            (at start (>= (battery-level ?r) 0))
            )
            :effect (and
                (at end (at ?r p2))
                (at start (not (at ?r p9)))
                (at end (decrease (battery-level ?r) 0))
            ))

            
(:durative-action move-p9-p3
            :parameters (?r - robot)
            :duration (= ?duration 0)  
            :condition (and 
            (at start (at ?r p9))
            (at start (>= (battery-level ?r) 0))
            )
            :effect (and
                (at end (at ?r p3))
                (at start (not (at ?r p9)))
                (at end (decrease (battery-level ?r) 0))
            ))

            
(:durative-action move-p9-p4
            :parameters (?r - robot)
            :duration (= ?duration 0)  
            :condition (and 
            (at start (at ?r p9))
            (at start (>= (battery-level ?r) 0))
            )
            :effect (and
                (at end (at ?r p4))
                (at start (not (at ?r p9)))
                (at end (decrease (battery-level ?r) 0))
            ))

            
(:durative-action move-p9-p5
            :parameters (?r - robot)
            :duration (= ?duration 0)  
            :condition (and 
            (at start (at ?r p9))
            (at start (>= (battery-level ?r) 0))
            )
            :effect (and
                (at end (at ?r p5))
                (at start (not (at ?r p9)))
                (at end (decrease (battery-level ?r) 0))
            ))

            
(:durative-action move-p9-p6
            :parameters (?r - robot)
            :duration (= ?duration 0)  
            :condition (and 
            (at start (at ?r p9))
            (at start (>= (battery-level ?r) 0))
            )
            :effect (and
                (at end (at ?r p6))
                (at start (not (at ?r p9)))
                (at end (decrease (battery-level ?r) 0))
            ))

            
(:durative-action move-p9-p7
            :parameters (?r - robot)
            :duration (= ?duration 0)  
            :condition (and 
            (at start (at ?r p9))
            (at start (>= (battery-level ?r) 0))
            )
            :effect (and
                (at end (at ?r p7))
                (at start (not (at ?r p9)))
                (at end (decrease (battery-level ?r) 0))
            ))

            
(:durative-action move-p9-p8
            :parameters (?r - robot)
            :duration (= ?duration 0)  
            :condition (and 
            (at start (at ?r p9))
            (at start (>= (battery-level ?r) 0))
            )
            :effect (and
                (at end (at ?r p8))
                (at start (not (at ?r p9)))
                (at end (decrease (battery-level ?r) 0))
            ))

            
(:durative-action move-p9-p10
            :parameters (?r - robot)
            :duration (= ?duration 0)  
            :condition (and 
            (at start (at ?r p9))
            (at start (>= (battery-level ?r) 0))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p9)))
                (at end (decrease (battery-level ?r) 0))
            ))

            
(:durative-action move-p10-p2
            :parameters (?r - robot)
            :duration (= ?duration 50)  
            :condition (and 
            (at start (at ?r p10))
            (at start (>= (battery-level ?r) 50))
            )
            :effect (and
                (at end (at ?r p2))
                (at start (not (at ?r p10)))
                (at end (decrease (battery-level ?r) 50))
            ))

            
(:durative-action move-p10-p3
            :parameters (?r - robot)
            :duration (= ?duration 43)  
            :condition (and 
            (at start (at ?r p10))
            (at start (>= (battery-level ?r) 43))
            )
            :effect (and
                (at end (at ?r p3))
                (at start (not (at ?r p10)))
                (at end (decrease (battery-level ?r) 43))
            ))

            
(:durative-action move-p10-p4
            :parameters (?r - robot)
            :duration (= ?duration 14)  
            :condition (and 
            (at start (at ?r p10))
            (at start (>= (battery-level ?r) 14))
            )
            :effect (and
                (at end (at ?r p4))
                (at start (not (at ?r p10)))
                (at end (decrease (battery-level ?r) 14))
            ))

            
(:durative-action move-p10-p5
            :parameters (?r - robot)
            :duration (= ?duration 205)  
            :condition (and 
            (at start (at ?r p10))
            (at start (>= (battery-level ?r) 205))
            )
            :effect (and
                (at end (at ?r p5))
                (at start (not (at ?r p10)))
                (at end (decrease (battery-level ?r) 205))
            ))

            
(:durative-action move-p10-p6
            :parameters (?r - robot)
            :duration (= ?duration 310)  
            :condition (and 
            (at start (at ?r p10))
            (at start (>= (battery-level ?r) 310))
            )
            :effect (and
                (at end (at ?r p6))
                (at start (not (at ?r p10)))
                (at end (decrease (battery-level ?r) 310))
            ))

            
(:durative-action move-p10-p7
            :parameters (?r - robot)
            :duration (= ?duration 304)  
            :condition (and 
            (at start (at ?r p10))
            (at start (>= (battery-level ?r) 304))
            )
            :effect (and
                (at end (at ?r p7))
                (at start (not (at ?r p10)))
                (at end (decrease (battery-level ?r) 304))
            ))

            
(:durative-action move-p10-p8
            :parameters (?r - robot)
            :duration (= ?duration 32)  
            :condition (and 
            (at start (at ?r p10))
            (at start (>= (battery-level ?r) 32))
            )
            :effect (and
                (at end (at ?r p8))
                (at start (not (at ?r p10)))
                (at end (decrease (battery-level ?r) 32))
            ))

            
(:durative-action move-p10-p9
            :parameters (?r - robot)
            :duration (= ?duration 0)  
            :condition (and 
            (at start (at ?r p10))
            (at start (>= (battery-level ?r) 0))
            )
            :effect (and
                (at end (at ?r p9))
                (at start (not (at ?r p10)))
                (at end (decrease (battery-level ?r) 0))
            ))

            
(:durative-action move-p1-p2
            :parameters (?r - robot)
            :duration (= ?duration 0)  
            :condition (and 
            (at start (at ?r p1))
            (at start (>= (battery-level ?r) 0))
            )
            :effect (and
                (at end (at ?r p2))
                (at start (not (at ?r p1)))
                (at end (decrease (battery-level ?r) 0))
            ))

            
(:durative-action move-p1-p3
            :parameters (?r - robot)
            :duration (= ?duration 0)  
            :condition (and 
            (at start (at ?r p1))
            (at start (>= (battery-level ?r) 0))
            )
            :effect (and
                (at end (at ?r p3))
                (at start (not (at ?r p1)))
                (at end (decrease (battery-level ?r) 0))
            ))

            
(:durative-action move-p1-p4
            :parameters (?r - robot)
            :duration (= ?duration 0)  
            :condition (and 
            (at start (at ?r p1))
            (at start (>= (battery-level ?r) 0))
            )
            :effect (and
                (at end (at ?r p4))
                (at start (not (at ?r p1)))
                (at end (decrease (battery-level ?r) 0))
            ))

            
(:durative-action move-p1-p5
            :parameters (?r - robot)
            :duration (= ?duration 0)  
            :condition (and 
            (at start (at ?r p1))
            (at start (>= (battery-level ?r) 0))
            )
            :effect (and
                (at end (at ?r p5))
                (at start (not (at ?r p1)))
                (at end (decrease (battery-level ?r) 0))
            ))

            
(:durative-action move-p1-p6
            :parameters (?r - robot)
            :duration (= ?duration 0)  
            :condition (and 
            (at start (at ?r p1))
            (at start (>= (battery-level ?r) 0))
            )
            :effect (and
                (at end (at ?r p6))
                (at start (not (at ?r p1)))
                (at end (decrease (battery-level ?r) 0))
            ))

            
(:durative-action move-p1-p7
            :parameters (?r - robot)
            :duration (= ?duration 0)  
            :condition (and 
            (at start (at ?r p1))
            (at start (>= (battery-level ?r) 0))
            )
            :effect (and
                (at end (at ?r p7))
                (at start (not (at ?r p1)))
                (at end (decrease (battery-level ?r) 0))
            ))

            
(:durative-action move-p1-p8
            :parameters (?r - robot)
            :duration (= ?duration 0)  
            :condition (and 
            (at start (at ?r p1))
            (at start (>= (battery-level ?r) 0))
            )
            :effect (and
                (at end (at ?r p8))
                (at start (not (at ?r p1)))
                (at end (decrease (battery-level ?r) 0))
            ))

            
(:durative-action move-p1-p9
            :parameters (?r - robot)
            :duration (= ?duration 2)  
            :condition (and 
            (at start (at ?r p1))
            (at start (>= (battery-level ?r) 2))
            )
            :effect (and
                (at end (at ?r p9))
                (at start (not (at ?r p1)))
                (at end (decrease (battery-level ?r) 2))
            ))

            
(:durative-action move-p1-p10
            :parameters (?r - robot)
            :duration (= ?duration 0)  
            :condition (and 
            (at start (at ?r p1))
            (at start (>= (battery-level ?r) 0))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p1)))
                (at end (decrease (battery-level ?r) 0))
            ))

            
(:durative-action move-p2-p10
            :parameters (?r - robot)
            :duration (= ?duration 51)  
            :condition (and 
            (at start (at ?r p2))
            (at start (>= (battery-level ?r) 51))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p2)))
                (at end (decrease (battery-level ?r) 51))
            ))

            
(:durative-action move-p3-p10
            :parameters (?r - robot)
            :duration (= ?duration 43)  
            :condition (and 
            (at start (at ?r p3))
            (at start (>= (battery-level ?r) 43))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p3)))
                (at end (decrease (battery-level ?r) 43))
            ))

            
(:durative-action move-p4-p10
            :parameters (?r - robot)
            :duration (= ?duration 14)  
            :condition (and 
            (at start (at ?r p4))
            (at start (>= (battery-level ?r) 14))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p4)))
                (at end (decrease (battery-level ?r) 14))
            ))

            
(:durative-action move-p5-p10
            :parameters (?r - robot)
            :duration (= ?duration 204)  
            :condition (and 
            (at start (at ?r p5))
            (at start (>= (battery-level ?r) 204))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p5)))
                (at end (decrease (battery-level ?r) 204))
            ))

            
(:durative-action move-p6-p10
            :parameters (?r - robot)
            :duration (= ?duration 310)  
            :condition (and 
            (at start (at ?r p6))
            (at start (>= (battery-level ?r) 310))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p6)))
                (at end (decrease (battery-level ?r) 310))
            ))

            
(:durative-action move-p7-p10
            :parameters (?r - robot)
            :duration (= ?duration 305)  
            :condition (and 
            (at start (at ?r p7))
            (at start (>= (battery-level ?r) 305))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p7)))
                (at end (decrease (battery-level ?r) 305))
            ))

            
(:durative-action move-p8-p10
            :parameters (?r - robot)
            :duration (= ?duration 32)  
            :condition (and 
            (at start (at ?r p8))
            (at start (>= (battery-level ?r) 32))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p8)))
                (at end (decrease (battery-level ?r) 32))
            ))

            
(:durative-action move-p9-p10
            :parameters (?r - robot)
            :duration (= ?duration 0)  
            :condition (and 
            (at start (at ?r p9))
            (at start (>= (battery-level ?r) 0))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p9)))
                (at end (decrease (battery-level ?r) 0))
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

    
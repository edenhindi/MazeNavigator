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
            (at start (>= (battery-level ?r) 42))
            )
            :effect (and
                (at end (at ?r p3))
                (at start (not (at ?r p2)))
                (at end (decrease (battery-level ?r) 42))
            ))

            
(:durative-action move-p2-p4
            :parameters (?r - robot)
            :duration (= ?duration 42)  
            :condition (and 
            (at start (at ?r p2))
            (at start (>= (battery-level ?r) 48))
            )
            :effect (and
                (at end (at ?r p4))
                (at start (not (at ?r p2)))
                (at end (decrease (battery-level ?r) 48))
            ))

            
(:durative-action move-p2-p5
            :parameters (?r - robot)
            :duration (= ?duration 158)  
            :condition (and 
            (at start (at ?r p2))
            (at start (>= (battery-level ?r) 182))
            )
            :effect (and
                (at end (at ?r p5))
                (at start (not (at ?r p2)))
                (at end (decrease (battery-level ?r) 182))
            ))

            
(:durative-action move-p2-p6
            :parameters (?r - robot)
            :duration (= ?duration 263)  
            :condition (and 
            (at start (at ?r p2))
            (at start (>= (battery-level ?r) 303))
            )
            :effect (and
                (at end (at ?r p6))
                (at start (not (at ?r p2)))
                (at end (decrease (battery-level ?r) 303))
            ))

            
(:durative-action move-p2-p7
            :parameters (?r - robot)
            :duration (= ?duration 258)  
            :condition (and 
            (at start (at ?r p2))
            (at start (>= (battery-level ?r) 296))
            )
            :effect (and
                (at end (at ?r p7))
                (at start (not (at ?r p2)))
                (at end (decrease (battery-level ?r) 296))
            ))

            
(:durative-action move-p2-p8
            :parameters (?r - robot)
            :duration (= ?duration 67)  
            :condition (and 
            (at start (at ?r p2))
            (at start (>= (battery-level ?r) 78))
            )
            :effect (and
                (at end (at ?r p8))
                (at start (not (at ?r p2)))
                (at end (decrease (battery-level ?r) 78))
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
            :duration (= ?duration 50)  
            :condition (and 
            (at start (at ?r p2))
            (at start (>= (battery-level ?r) 58))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p2)))
                (at end (decrease (battery-level ?r) 58))
            ))

            
(:durative-action move-p3-p2
            :parameters (?r - robot)
            :duration (= ?duration 36)  
            :condition (and 
            (at start (at ?r p3))
            (at start (>= (battery-level ?r) 42))
            )
            :effect (and
                (at end (at ?r p2))
                (at start (not (at ?r p3)))
                (at end (decrease (battery-level ?r) 42))
            ))

            
(:durative-action move-p3-p4
            :parameters (?r - robot)
            :duration (= ?duration 28)  
            :condition (and 
            (at start (at ?r p3))
            (at start (>= (battery-level ?r) 33))
            )
            :effect (and
                (at end (at ?r p4))
                (at start (not (at ?r p3)))
                (at end (decrease (battery-level ?r) 33))
            ))

            
(:durative-action move-p3-p5
            :parameters (?r - robot)
            :duration (= ?duration 181)  
            :condition (and 
            (at start (at ?r p3))
            (at start (>= (battery-level ?r) 208))
            )
            :effect (and
                (at end (at ?r p5))
                (at start (not (at ?r p3)))
                (at end (decrease (battery-level ?r) 208))
            ))

            
(:durative-action move-p3-p6
            :parameters (?r - robot)
            :duration (= ?duration 286)  
            :condition (and 
            (at start (at ?r p3))
            (at start (>= (battery-level ?r) 329))
            )
            :effect (and
                (at end (at ?r p6))
                (at start (not (at ?r p3)))
                (at end (decrease (battery-level ?r) 329))
            ))

            
(:durative-action move-p3-p7
            :parameters (?r - robot)
            :duration (= ?duration 281)  
            :condition (and 
            (at start (at ?r p3))
            (at start (>= (battery-level ?r) 323))
            )
            :effect (and
                (at end (at ?r p7))
                (at start (not (at ?r p3)))
                (at end (decrease (battery-level ?r) 323))
            ))

            
(:durative-action move-p3-p8
            :parameters (?r - robot)
            :duration (= ?duration 40)  
            :condition (and 
            (at start (at ?r p3))
            (at start (>= (battery-level ?r) 46))
            )
            :effect (and
                (at end (at ?r p8))
                (at start (not (at ?r p3)))
                (at end (decrease (battery-level ?r) 46))
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
            (at start (>= (battery-level ?r) 49))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p3)))
                (at end (decrease (battery-level ?r) 49))
            ))

            
(:durative-action move-p4-p2
            :parameters (?r - robot)
            :duration (= ?duration 42)  
            :condition (and 
            (at start (at ?r p4))
            (at start (>= (battery-level ?r) 48))
            )
            :effect (and
                (at end (at ?r p2))
                (at start (not (at ?r p4)))
                (at end (decrease (battery-level ?r) 48))
            ))

            
(:durative-action move-p4-p3
            :parameters (?r - robot)
            :duration (= ?duration 29)  
            :condition (and 
            (at start (at ?r p4))
            (at start (>= (battery-level ?r) 33))
            )
            :effect (and
                (at end (at ?r p3))
                (at start (not (at ?r p4)))
                (at end (decrease (battery-level ?r) 33))
            ))

            
(:durative-action move-p4-p5
            :parameters (?r - robot)
            :duration (= ?duration 195)  
            :condition (and 
            (at start (at ?r p4))
            (at start (>= (battery-level ?r) 224))
            )
            :effect (and
                (at end (at ?r p5))
                (at start (not (at ?r p4)))
                (at end (decrease (battery-level ?r) 224))
            ))

            
(:durative-action move-p4-p6
            :parameters (?r - robot)
            :duration (= ?duration 301)  
            :condition (and 
            (at start (at ?r p4))
            (at start (>= (battery-level ?r) 346))
            )
            :effect (and
                (at end (at ?r p6))
                (at start (not (at ?r p4)))
                (at end (decrease (battery-level ?r) 346))
            ))

            
(:durative-action move-p4-p7
            :parameters (?r - robot)
            :duration (= ?duration 295)  
            :condition (and 
            (at start (at ?r p4))
            (at start (>= (battery-level ?r) 339))
            )
            :effect (and
                (at end (at ?r p7))
                (at start (not (at ?r p4)))
                (at end (decrease (battery-level ?r) 339))
            ))

            
(:durative-action move-p4-p8
            :parameters (?r - robot)
            :duration (= ?duration 28)  
            :condition (and 
            (at start (at ?r p4))
            (at start (>= (battery-level ?r) 33))
            )
            :effect (and
                (at end (at ?r p8))
                (at start (not (at ?r p4)))
                (at end (decrease (battery-level ?r) 33))
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
            (at start (>= (battery-level ?r) 17))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p4)))
                (at end (decrease (battery-level ?r) 17))
            ))

            
(:durative-action move-p5-p2
            :parameters (?r - robot)
            :duration (= ?duration 158)  
            :condition (and 
            (at start (at ?r p5))
            (at start (>= (battery-level ?r) 182))
            )
            :effect (and
                (at end (at ?r p2))
                (at start (not (at ?r p5)))
                (at end (decrease (battery-level ?r) 182))
            ))

            
(:durative-action move-p5-p3
            :parameters (?r - robot)
            :duration (= ?duration 181)  
            :condition (and 
            (at start (at ?r p5))
            (at start (>= (battery-level ?r) 209))
            )
            :effect (and
                (at end (at ?r p3))
                (at start (not (at ?r p5)))
                (at end (decrease (battery-level ?r) 209))
            ))

            
(:durative-action move-p5-p4
            :parameters (?r - robot)
            :duration (= ?duration 196)  
            :condition (and 
            (at start (at ?r p5))
            (at start (>= (battery-level ?r) 225))
            )
            :effect (and
                (at end (at ?r p4))
                (at start (not (at ?r p5)))
                (at end (decrease (battery-level ?r) 225))
            ))

            
(:durative-action move-p5-p6
            :parameters (?r - robot)
            :duration (= ?duration 113)  
            :condition (and 
            (at start (at ?r p5))
            (at start (>= (battery-level ?r) 130))
            )
            :effect (and
                (at end (at ?r p6))
                (at start (not (at ?r p5)))
                (at end (decrease (battery-level ?r) 130))
            ))

            
(:durative-action move-p5-p7
            :parameters (?r - robot)
            :duration (= ?duration 140)  
            :condition (and 
            (at start (at ?r p5))
            (at start (>= (battery-level ?r) 161))
            )
            :effect (and
                (at end (at ?r p7))
                (at start (not (at ?r p5)))
                (at end (decrease (battery-level ?r) 161))
            ))

            
(:durative-action move-p5-p8
            :parameters (?r - robot)
            :duration (= ?duration 197)  
            :condition (and 
            (at start (at ?r p5))
            (at start (>= (battery-level ?r) 227))
            )
            :effect (and
                (at end (at ?r p8))
                (at start (not (at ?r p5)))
                (at end (decrease (battery-level ?r) 227))
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
            :duration (= ?duration 206)  
            :condition (and 
            (at start (at ?r p5))
            (at start (>= (battery-level ?r) 237))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p5)))
                (at end (decrease (battery-level ?r) 237))
            ))

            
(:durative-action move-p6-p2
            :parameters (?r - robot)
            :duration (= ?duration 264)  
            :condition (and 
            (at start (at ?r p6))
            (at start (>= (battery-level ?r) 303))
            )
            :effect (and
                (at end (at ?r p2))
                (at start (not (at ?r p6)))
                (at end (decrease (battery-level ?r) 303))
            ))

            
(:durative-action move-p6-p3
            :parameters (?r - robot)
            :duration (= ?duration 287)  
            :condition (and 
            (at start (at ?r p6))
            (at start (>= (battery-level ?r) 330))
            )
            :effect (and
                (at end (at ?r p3))
                (at start (not (at ?r p6)))
                (at end (decrease (battery-level ?r) 330))
            ))

            
(:durative-action move-p6-p4
            :parameters (?r - robot)
            :duration (= ?duration 301)  
            :condition (and 
            (at start (at ?r p6))
            (at start (>= (battery-level ?r) 346))
            )
            :effect (and
                (at end (at ?r p4))
                (at start (not (at ?r p6)))
                (at end (decrease (battery-level ?r) 346))
            ))

            
(:durative-action move-p6-p5
            :parameters (?r - robot)
            :duration (= ?duration 146)  
            :condition (and 
            (at start (at ?r p6))
            (at start (>= (battery-level ?r) 168))
            )
            :effect (and
                (at end (at ?r p5))
                (at start (not (at ?r p6)))
                (at end (decrease (battery-level ?r) 168))
            ))

            
(:durative-action move-p6-p7
            :parameters (?r - robot)
            :duration (= ?duration 112)  
            :condition (and 
            (at start (at ?r p6))
            (at start (>= (battery-level ?r) 129))
            )
            :effect (and
                (at end (at ?r p7))
                (at start (not (at ?r p6)))
                (at end (decrease (battery-level ?r) 129))
            ))

            
(:durative-action move-p6-p8
            :parameters (?r - robot)
            :duration (= ?duration 324)  
            :condition (and 
            (at start (at ?r p6))
            (at start (>= (battery-level ?r) 372))
            )
            :effect (and
                (at end (at ?r p8))
                (at start (not (at ?r p6)))
                (at end (decrease (battery-level ?r) 372))
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
            :duration (= ?duration 311)  
            :condition (and 
            (at start (at ?r p6))
            (at start (>= (battery-level ?r) 358))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p6)))
                (at end (decrease (battery-level ?r) 358))
            ))

            
(:durative-action move-p7-p2
            :parameters (?r - robot)
            :duration (= ?duration 258)  
            :condition (and 
            (at start (at ?r p7))
            (at start (>= (battery-level ?r) 297))
            )
            :effect (and
                (at end (at ?r p2))
                (at start (not (at ?r p7)))
                (at end (decrease (battery-level ?r) 297))
            ))

            
(:durative-action move-p7-p3
            :parameters (?r - robot)
            :duration (= ?duration 281)  
            :condition (and 
            (at start (at ?r p7))
            (at start (>= (battery-level ?r) 323))
            )
            :effect (and
                (at end (at ?r p3))
                (at start (not (at ?r p7)))
                (at end (decrease (battery-level ?r) 323))
            ))

            
(:durative-action move-p7-p4
            :parameters (?r - robot)
            :duration (= ?duration 295)  
            :condition (and 
            (at start (at ?r p7))
            (at start (>= (battery-level ?r) 340))
            )
            :effect (and
                (at end (at ?r p4))
                (at start (not (at ?r p7)))
                (at end (decrease (battery-level ?r) 340))
            ))

            
(:durative-action move-p7-p5
            :parameters (?r - robot)
            :duration (= ?duration 140)  
            :condition (and 
            (at start (at ?r p7))
            (at start (>= (battery-level ?r) 162))
            )
            :effect (and
                (at end (at ?r p5))
                (at start (not (at ?r p7)))
                (at end (decrease (battery-level ?r) 162))
            ))

            
(:durative-action move-p7-p6
            :parameters (?r - robot)
            :duration (= ?duration 113)  
            :condition (and 
            (at start (at ?r p7))
            (at start (>= (battery-level ?r) 130))
            )
            :effect (and
                (at end (at ?r p6))
                (at start (not (at ?r p7)))
                (at end (decrease (battery-level ?r) 130))
            ))

            
(:durative-action move-p7-p8
            :parameters (?r - robot)
            :duration (= ?duration 318)  
            :condition (and 
            (at start (at ?r p7))
            (at start (>= (battery-level ?r) 366))
            )
            :effect (and
                (at end (at ?r p8))
                (at start (not (at ?r p7)))
                (at end (decrease (battery-level ?r) 366))
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
            :duration (= ?duration 306)  
            :condition (and 
            (at start (at ?r p7))
            (at start (>= (battery-level ?r) 352))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p7)))
                (at end (decrease (battery-level ?r) 352))
            ))

            
(:durative-action move-p8-p2
            :parameters (?r - robot)
            :duration (= ?duration 67)  
            :condition (and 
            (at start (at ?r p8))
            (at start (>= (battery-level ?r) 78))
            )
            :effect (and
                (at end (at ?r p2))
                (at start (not (at ?r p8)))
                (at end (decrease (battery-level ?r) 78))
            ))

            
(:durative-action move-p8-p3
            :parameters (?r - robot)
            :duration (= ?duration 40)  
            :condition (and 
            (at start (at ?r p8))
            (at start (>= (battery-level ?r) 46))
            )
            :effect (and
                (at end (at ?r p3))
                (at start (not (at ?r p8)))
                (at end (decrease (battery-level ?r) 46))
            ))

            
(:durative-action move-p8-p4
            :parameters (?r - robot)
            :duration (= ?duration 28)  
            :condition (and 
            (at start (at ?r p8))
            (at start (>= (battery-level ?r) 33))
            )
            :effect (and
                (at end (at ?r p4))
                (at start (not (at ?r p8)))
                (at end (decrease (battery-level ?r) 33))
            ))

            
(:durative-action move-p8-p5
            :parameters (?r - robot)
            :duration (= ?duration 218)  
            :condition (and 
            (at start (at ?r p8))
            (at start (>= (battery-level ?r) 251))
            )
            :effect (and
                (at end (at ?r p5))
                (at start (not (at ?r p8)))
                (at end (decrease (battery-level ?r) 251))
            ))

            
(:durative-action move-p8-p6
            :parameters (?r - robot)
            :duration (= ?duration 323)  
            :condition (and 
            (at start (at ?r p8))
            (at start (>= (battery-level ?r) 372))
            )
            :effect (and
                (at end (at ?r p6))
                (at start (not (at ?r p8)))
                (at end (decrease (battery-level ?r) 372))
            ))

            
(:durative-action move-p8-p7
            :parameters (?r - robot)
            :duration (= ?duration 318)  
            :condition (and 
            (at start (at ?r p8))
            (at start (>= (battery-level ?r) 365))
            )
            :effect (and
                (at end (at ?r p7))
                (at start (not (at ?r p8)))
                (at end (decrease (battery-level ?r) 365))
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
            (at start (>= (battery-level ?r) 37))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p8)))
                (at end (decrease (battery-level ?r) 37))
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
            (at start (>= (battery-level ?r) 58))
            )
            :effect (and
                (at end (at ?r p2))
                (at start (not (at ?r p10)))
                (at end (decrease (battery-level ?r) 58))
            ))

            
(:durative-action move-p10-p3
            :parameters (?r - robot)
            :duration (= ?duration 43)  
            :condition (and 
            (at start (at ?r p10))
            (at start (>= (battery-level ?r) 49))
            )
            :effect (and
                (at end (at ?r p3))
                (at start (not (at ?r p10)))
                (at end (decrease (battery-level ?r) 49))
            ))

            
(:durative-action move-p10-p4
            :parameters (?r - robot)
            :duration (= ?duration 14)  
            :condition (and 
            (at start (at ?r p10))
            (at start (>= (battery-level ?r) 17))
            )
            :effect (and
                (at end (at ?r p4))
                (at start (not (at ?r p10)))
                (at end (decrease (battery-level ?r) 17))
            ))

            
(:durative-action move-p10-p5
            :parameters (?r - robot)
            :duration (= ?duration 206)  
            :condition (and 
            (at start (at ?r p10))
            (at start (>= (battery-level ?r) 237))
            )
            :effect (and
                (at end (at ?r p5))
                (at start (not (at ?r p10)))
                (at end (decrease (battery-level ?r) 237))
            ))

            
(:durative-action move-p10-p6
            :parameters (?r - robot)
            :duration (= ?duration 311)  
            :condition (and 
            (at start (at ?r p10))
            (at start (>= (battery-level ?r) 358))
            )
            :effect (and
                (at end (at ?r p6))
                (at start (not (at ?r p10)))
                (at end (decrease (battery-level ?r) 358))
            ))

            
(:durative-action move-p10-p7
            :parameters (?r - robot)
            :duration (= ?duration 305)  
            :condition (and 
            (at start (at ?r p10))
            (at start (>= (battery-level ?r) 351))
            )
            :effect (and
                (at end (at ?r p7))
                (at start (not (at ?r p10)))
                (at end (decrease (battery-level ?r) 351))
            ))

            
(:durative-action move-p10-p8
            :parameters (?r - robot)
            :duration (= ?duration 32)  
            :condition (and 
            (at start (at ?r p10))
            (at start (>= (battery-level ?r) 37))
            )
            :effect (and
                (at end (at ?r p8))
                (at start (not (at ?r p10)))
                (at end (decrease (battery-level ?r) 37))
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
            (at start (>= (battery-level ?r) 3))
            )
            :effect (and
                (at end (at ?r p9))
                (at start (not (at ?r p1)))
                (at end (decrease (battery-level ?r) 3))
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
            :duration (= ?duration 50)  
            :condition (and 
            (at start (at ?r p2))
            (at start (>= (battery-level ?r) 58))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p2)))
                (at end (decrease (battery-level ?r) 58))
            ))

            
(:durative-action move-p3-p10
            :parameters (?r - robot)
            :duration (= ?duration 43)  
            :condition (and 
            (at start (at ?r p3))
            (at start (>= (battery-level ?r) 49))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p3)))
                (at end (decrease (battery-level ?r) 49))
            ))

            
(:durative-action move-p4-p10
            :parameters (?r - robot)
            :duration (= ?duration 14)  
            :condition (and 
            (at start (at ?r p4))
            (at start (>= (battery-level ?r) 17))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p4)))
                (at end (decrease (battery-level ?r) 17))
            ))

            
(:durative-action move-p5-p10
            :parameters (?r - robot)
            :duration (= ?duration 206)  
            :condition (and 
            (at start (at ?r p5))
            (at start (>= (battery-level ?r) 237))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p5)))
                (at end (decrease (battery-level ?r) 237))
            ))

            
(:durative-action move-p6-p10
            :parameters (?r - robot)
            :duration (= ?duration 311)  
            :condition (and 
            (at start (at ?r p6))
            (at start (>= (battery-level ?r) 358))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p6)))
                (at end (decrease (battery-level ?r) 358))
            ))

            
(:durative-action move-p7-p10
            :parameters (?r - robot)
            :duration (= ?duration 306)  
            :condition (and 
            (at start (at ?r p7))
            (at start (>= (battery-level ?r) 352))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p7)))
                (at end (decrease (battery-level ?r) 352))
            ))

            
(:durative-action move-p8-p10
            :parameters (?r - robot)
            :duration (= ?duration 32)  
            :condition (and 
            (at start (at ?r p8))
            (at start (>= (battery-level ?r) 37))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p8)))
                (at end (decrease (battery-level ?r) 37))
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
            :duration (= ?duration 1)
            :condition (and (at start (at ?r ?p))
            (at start (has-station ?p))
            ) 
            :effect 
                (at end  (increase (battery-level ?r) 5) )
        )
        
    )

    
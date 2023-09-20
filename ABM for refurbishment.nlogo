breed [Homeowners Homeowner]                            ; Key actor in this model is the Homeowner

globals [                                               ; Global variables in the model
  AutopilotOn
  CostMas
  CostPer
  Costs
  Share1
  Share2
  Share3
  Share4
  Share5
  Share6
  Share7
  Share8
  Share9
  Share10
  CurrentYear
  Quota
  ]

 patches-own [                                          ; Districts own the following variables
  SNA
  Crowded
  ]

Homeowners-own [                                        ; Homeowners own the following variables
  Lifestyle
  Status
  Treshold
  IntentionYear
  ]

to Init                                                 ; At init:

clear-all                                               ; reset everything

set CurrentYear 2023                                    ; set current year to 2023
set CostMas 0                                           ; reset costs for mass communication
set CostPer 0                                           ; reset costs for personal communication
set Costs 0                                             ; reset total costs

  create-Homeowners 16999 [                             ; 17,000 homewoners are created

  set Treshold random 4                                 ; who have been influenced by mass and personal communication randomly
  set IntentionYear 0                                   ; reset their year reaching refurbishment intention

  set size 2
  set shape "house"                                    ; that look like houses

    ; and have the following Lifestyle (Sinus Milieu) and Status attributes :

  if                 (  who <=     29 )  [set Lifestyle 1 set Status 0]   ; Established conservatives
  if (who >=     30 and who <=    580 )  [set Lifestyle 1 set Status 1]
  if (who >=    581 and who <=   1429 )  [set Lifestyle 1 set Status 2]
  if (who >=   1430 and who <=   1933 )  [set Lifestyle 1 set Status 3]
  if (who >=   1934 and who <=   2482 )  [set Lifestyle 1 set Status 4]
  if (who >=   2483 and who <=   2916 )  [set Lifestyle 1 set Status 5 set IntentionYear 2023]

  if (who >=   2917 and who <=   2924 )  [set Lifestyle 2 set Status 0]   ; Liberal-intellectual
  if (who >=   2925 and who <=   3348 )  [set Lifestyle 2 set Status 1]
  if (who >=   3349 and who <=   3980 )  [set Lifestyle 2 set Status 2]
  if (who >=   3981 and who <=   4417 )  [set Lifestyle 2 set Status 3]
  if (who >=   4418 and who <=   5107 )  [set Lifestyle 2 set Status 4]
  if (who >=   5108 and who <=   5443 )  [set Lifestyle 2 set Status 5 set IntentionYear 2023]

  if (who >=   5444 and who <=   5462 )  [set Lifestyle 3 set Status 0]   ; High achiever
  if (who >=   5463 and who <=   5789 )  [set Lifestyle 3 set Status 1]
  if (who >=   5790 and who <=   6315 )  [set Lifestyle 3 set Status 2]
  if (who >=   6316 and who <=   6576 )  [set Lifestyle 3 set Status 3]
  if (who >=   6577 and who <=   6821 )  [set Lifestyle 3 set Status 4]
  if (who >=   6822 and who <=   7132 )  [set Lifestyle 3 set Status 5 set IntentionYear 2023]

  if (who >=   7133 and who <=   7143 )  [set Lifestyle 4 set Status 0]   ; Movers and Shakers
  if (who >=   7144 and who <=   7291 )  [set Lifestyle 4 set Status 1]
  if (who >=   7292 and who <=   7460 )  [set Lifestyle 4 set Status 2]
  if (who >=   7461 and who <=   7582 )  [set Lifestyle 4 set Status 3]
  if (who >=   7583 and who <=   7706 )  [set Lifestyle 4 set Status 4]
  if (who >=   7707 and who <=   7820 )  [set Lifestyle 4 set Status 5 set IntentionYear 2023]

  if (who >=   7821 and who <=   7825 )  [set Lifestyle 5 set Status 0]   ; Adaptive pragmatic
  if (who >=   7826 and who <=   8107 )  [set Lifestyle 5 set Status 1]
  if (who >=   8108 and who <=   8246 )  [set Lifestyle 5 set Status 2]
  if (who >=   8247 and who <=   8353 )  [set Lifestyle 5 set Status 3]
  if (who >=   8354 and who <=   8538 )  [set Lifestyle 5 set Status 4]
  if (who >=   8539 and who <=   8745 )  [set Lifestyle 5 set Status 5 set IntentionYear 2023]

  if (who >=   8746 and who <=   8750 )  [set Lifestyle 6 set Status 0]   ; Social-ecological
  if (who >=   8751 and who <=   9096 )  [set Lifestyle 6 set Status 1]
  if (who >=   9097 and who <=   9582 )  [set Lifestyle 6 set Status 2]
  if (who >=   9583 and who <=   9864 )  [set Lifestyle 6 set Status 3]
  if (who >=   9865 and who <=  10201 )  [set Lifestyle 6 set Status 4]
  if (who >=  10202 and who <=  10499 )  [set Lifestyle 6 set Status 5 set IntentionYear 2023]

  if (who >=  10500 and who <=  10535 )  [set Lifestyle 7 set Status 0]   ; New middle class
  if (who >=  10536 and who <=  11050 )  [set Lifestyle 7 set Status 1]
  if (who >=  11051 and who <=  11833 )  [set Lifestyle 7 set Status 2]
  if (who >=  11834 and who <=  12108 )  [set Lifestyle 7 set Status 3]
  if (who >=  12109 and who <=  12604 )  [set Lifestyle 7 set Status 4]
  if (who >=  12605 and who <=  12886 )  [set Lifestyle 7 set Status 5 set IntentionYear 2023]

  if (who >=  12887 and who <=  12909 )  [set Lifestyle 8 set Status 0]   ; Traditional
  if (who >=  12910 and who <=  13372 )  [set Lifestyle 8 set Status 1]
  if (who >=  13373 and who <=  14159 )  [set Lifestyle 8 set Status 2]
  if (who >=  14160 and who <=  14473 )  [set Lifestyle 8 set Status 3]
  if (who >=  14474 and who <=  14937 )  [set Lifestyle 8 set Status 4]
  if (who >=  14938 and who <=  15180 )  [set Lifestyle 8 set Status 5 set IntentionYear 2023]

  if (who >=  15181 and who <=  15183 )  [set Lifestyle 9 set Status 0]   ; Precarious
  if (who >=  15184 and who <=  15425 )  [set Lifestyle 9 set Status 1]
  if (who >=  15426 and who <=  15620 )  [set Lifestyle 9 set Status 2]
  if (who >=  15621 and who <=  15726 )  [set Lifestyle 9 set Status 3]
  if (who >=  15727 and who <=  15804 )  [set Lifestyle 9 set Status 4]
  if (who >=  15805 and who <=  15868 )  [set Lifestyle 9 set Status 5 set IntentionYear 2023]

  if (who >=  15869 and who <=  15949 )  [set Lifestyle 10 set Status 0]  ; Escapists
  if (who >=  15950 and who <=  16328 )  [set Lifestyle 10 set Status 1]
  if (who >=  16329 and who <=  16617 )  [set Lifestyle 10 set Status 2]
  if (who >=  16618 and who <=  16751 )  [set Lifestyle 10 set Status 3]
  if (who >=  16752 and who <=  16880 )  [set Lifestyle 10 set Status 4]
  if (who >=  16881 and who <=  16999 )  [set Lifestyle 10 set Status 5 set IntentionYear 2023]

  if Status = 0 [set color 13]                          ; Color the houses according to their status (energy efficiency color range)
  if Status = 1 [set color 15]
  if Status = 2 [set color 25]
  if Status = 3 [set color 45]
  if Status = 4 [set color 68]
  if Status = 5 [set color 65]
  setxy random-xcor random-ycor]                        ; They are now put randomly at the canvas

  ask n-of 15999 Homeowners [hide-turtle]               ; but only 1,000 of them should be visible (not enough space for 17,000 houses on the canvas) - too crowdy :-)

ask patches [
  set Crowded count Homeowners-here
  Effects
  ]

reset-ticks

end

to Go                                                   ; At Go:
tick                                                    ; In one period,
set CurrentYear (2023 + ticks)                          ; count simulation time, and,

ask patches [
  Effects                                               ; Districts are asked to measure clusters of homeowners who intend to refurbish
  ]

ask Homeowners [                                        ; Homeowners are asked to do the following:
  Impact                                                ; 1. get an inpact from mass and personal communication
  Compare                                               ; 2. Compare homeowners's neighboors with refurbishment intention and determine social infuence
  Transfer                                              ; 3. get transfered in the HOE model accordingly (if enough impact has been there)
  Appear                                                ; 4. change their color (appearance) accordingly
  ]

  set CostMas (CostMas + (Masscommunication * 0.01350 * 17000000))                                                        ; Enabling monitoring of Costs
  set CostPer (CostPer + (Personalcommunication * 16.67 * 600000))                                                        ; Enabling monitoring of Costs
  set Costs (CostMas + CostPer)                                                                                           ; Enabling monitoring of Costs
  set Share1 ((count Homeowners with [Lifestyle = 1 and Status = 5]) / (count Homeowners with [Lifestyle = 1]) * 100)     ; Enabling lifestyle specific system behavior
  set Share2 ((count Homeowners with [Lifestyle = 2 and Status = 5]) / (count Homeowners with [Lifestyle = 2]) * 100)     ; Enabling lifestyle specific system behavior
  set Share3 ((count Homeowners with [Lifestyle = 3 and Status = 5]) / (count Homeowners with [Lifestyle = 3]) * 100)     ; Enabling lifestyle specific system behavior
  set Share4 ((count Homeowners with [Lifestyle = 4 and Status = 5]) / (count Homeowners with [Lifestyle = 4]) * 100)     ; Enabling lifestyle specific system behavior
  set Share5 ((count Homeowners with [Lifestyle = 5 and Status = 5]) / (count Homeowners with [Lifestyle = 5]) * 100)     ; Enabling lifestyle specific system behavior
  set Share6 ((count Homeowners with [Lifestyle = 6 and Status = 5]) / (count Homeowners with [Lifestyle = 6]) * 100)     ; Enabling lifestyle specific system behavior
  set Share7 ((count Homeowners with [Lifestyle = 7 and Status = 5]) / (count Homeowners with [Lifestyle = 7]) * 100)     ; Enabling lifestyle specific system behavior
  set Share8 ((count Homeowners with [Lifestyle = 8 and Status = 5]) / (count Homeowners with [Lifestyle = 8]) * 100)     ; Enabling lifestyle specific system behavior
  set Share9 ((count Homeowners with [Lifestyle = 9 and Status = 5]) / (count Homeowners with [Lifestyle = 9]) * 100)     ; Enabling lifestyle specific system behavior
  set Share10 ((count Homeowners with [Lifestyle = 10 and Status = 5]) / (count Homeowners with [Lifestyle = 10]) * 100)  ; Enabling lifestyle specific system behavior

  ; if CurrentYear = 2050 and AutopilotOn = 1 [          ; Set time budget until 2050 and write summary data to file (when Autopilot is turned on), this was sample 1
  if AutopilotOn = 1 [                                   ; Just write to file, to measure duration of reaching refurbishment intention
  FileOutWrite
  ]

if CurrentYear = 2050 and AutopilotOn = 0 [              ; Set time budget until 2050 and stop then (when Autopilot is turned off)

  stop
  ]

end


To Effects                                                                 ; Measure clusters of homeowners who actively intend to refurbish
  set SNA count Homeowners-here with [IntentionYear >= (CurrentYear - 3)]  ; SNA counts homewoner on patch with recent (now until 3 years back) refurbishment intention
end


to Impact                                                                                                  ; Lifestyle specific impact of mass and personal communication on Treshold
  if Lifestyle = 1 [                                                                                       ; Established conservatives
    if Status = 0                                                                                          ; Unawareness
      [set Treshold (Treshold + (1.0 * Masscommunication * 0.99) + (1.0 * Personalcommunication * 0.99))]  ; Transfer-Rate = 0.99
    if Status = 1                                                                                          ; Awareness
      [set Treshold (Treshold + (1.0 * Masscommunication * 0.81) + (0.0 * Personalcommunication * 0.81))]  ; Transfer-Rate = 0.81
    if Status = 2                                                                                          ; Knowledge
      [set Treshold (Treshold + (0.5 * Masscommunication * 0.64) + (0.0 * Personalcommunication * 0.64))]  ; Transfer-Rate = 0.64
    if Status = 3                                                                                          ; Attitude
      [set Treshold (Treshold + (0.0 * Masscommunication * 0.66) + (0.5 * Personalcommunication * 0.66))]  ; Transfer-Rate = 0.66
    if Status = 4                                                                                          ; Conviction
      [set Treshold (Treshold + (0.0 * Masscommunication * 0.44) + (1.0 * Personalcommunication * 0.44))]  ; Transfer-Rate = 0.44
      ]
  if Lifestyle = 2 [                                                                                       ; Liberal-intellectual
    if Status = 0                                                                                          ; Unawareness
      [set Treshold (Treshold + (1.0 * Masscommunication * 1.00) + (1.0 * Personalcommunication * 1.00))]  ; Transfer-Rate = 1.00
    if Status = 1                                                                                          ; Awareness
      [set Treshold (Treshold + (1.0 * Masscommunication * 0.83) + (0.0 * Personalcommunication * 0.83))]  ; Transfer-Rate = 0.83
    if Status = 2                                                                                          ; Knowledge
      [set Treshold (Treshold + (0.5 * Masscommunication * 0.70) + (0.0 * Personalcommunication * 0.70))]  ; Transfer-Rate = 0.70
    if Status = 3                                                                                          ; Attitude
      [set Treshold (Treshold + (0.0 * Masscommunication * 0.70) + (0.5 * Personalcommunication * 0.70))]  ; Transfer-Rate = 0.70
    if Status = 4                                                                                          ; Conviction
      [set Treshold (Treshold + (0.0 * Masscommunication * 0.33) + (1.0 * Personalcommunication * 0.33))]  ; Transfer-Rate = 0.33
      ]
  if Lifestyle = 3 [                                                                                       ; High achiever
    if Status = 0                                                                                          ; Unawareness
      [set Treshold (Treshold + (1.0 * Masscommunication * 0.99) + (1.0 * Personalcommunication * 0.99))]  ; Transfer-Rate = 0.99
    if Status = 1                                                                                          ; Awareness
      [set Treshold (Treshold + (1.0 * Masscommunication * 0.80) + (0.0 * Personalcommunication * 0.80))]  ; Transfer-Rate = 0.80
    if Status = 2                                                                                          ; Knowledge
      [set Treshold (Treshold + (0.5 * Masscommunication * 0.61) + (0.0 * Personalcommunication * 0.61))]  ; Transfer-Rate = 0.61
    if Status = 3                                                                                          ; Attitude
      [set Treshold (Treshold + (0.0 * Masscommunication * 0.68) + (0.5 * Personalcommunication * 0.68))]  ; Transfer-Rate = 0.68
    if Status = 4                                                                                          ; Conviction
      [set Treshold (Treshold + (0.0 * Masscommunication * 0.56) + (1.0 * Personalcommunication * 0.56))]  ; Transfer-Rate = 0.56
      ]
  if Lifestyle = 4 [                                                                                       ; Movers and shakers
    if Status = 0                                                                                          ; Unawareness
      [set Treshold (Treshold + (1.0 * Masscommunication * 0.98) + (1.0 * Personalcommunication * 0.98))]  ; Transfer-Rate = 0.98
    if Status = 1                                                                                          ; Awareness
      [set Treshold (Treshold + (1.0 * Masscommunication * 0.78) + (0.0 * Personalcommunication * 0.78))]  ; Transfer-Rate = 0.78
    if Status = 2                                                                                          ; Knowledge
      [set Treshold (Treshold + (0.5 * Masscommunication * 0.68) + (0.0 * Personalcommunication * 0.68))]  ; Transfer-Rate = 0.68
    if Status = 3                                                                                          ; Attitude
      [set Treshold (Treshold + (0.0 * Masscommunication * 0.66) + (0.5 * Personalcommunication * 0.66))]  ; Transfer-Rate = 0.66
    if Status = 4                                                                                          ; Conviction
      [set Treshold (Treshold + (0.0 * Masscommunication * 0.48) + (1.0 * Personalcommunication * 0.48))]  ; Transfer-Rate = 0.48
      ]
  if Lifestyle = 5 [                                                                                       ; Adaptive pragmatics
    if Status = 0                                                                                          ; Unawareness
      [set Treshold (Treshold + (1.0 * Masscommunication * 1.00) + (1.0 * Personalcommunication * 1.00))]  ; Transfer-Rate = 1.00
    if Status = 1                                                                                          ; Awareness
      [set Treshold (Treshold + (1.0 * Masscommunication * 0.69) + (0.0 * Personalcommunication * 0.69))]  ; Transfer-Rate = 0.69
    if Status = 2                                                                                          ; Knowledge
      [set Treshold (Treshold + (0.5 * Masscommunication * 0.78) + (0.0 * Personalcommunication * 0.78))]  ; Transfer-Rate = 0.78
    if Status = 3                                                                                          ; Attitude
      [set Treshold (Treshold + (0.0 * Masscommunication * 0.79) + (0.5 * Personalcommunication * 0.79))]  ; Transfer-Rate = 0.79
    if Status = 4                                                                                          ; Conviction
      [set Treshold (Treshold + (0.0 * Masscommunication * 0.53) + (1.0 * Personalcommunication * 0.53))]  ; Transfer-Rate = 0.53
      ]
  if Lifestyle = 6 [                                                                                       ; Social‐ecological
    if Status = 0                                                                                          ; Unawareness
      [set Treshold (Treshold + (1.0 * Masscommunication * 1.00) + (1.0 * Personalcommunication * 1.00))]  ; Transfer-Rate = 1.00
    if Status = 1                                                                                          ; Awareness
      [set Treshold (Treshold + (1.0 * Masscommunication * 0.80) + (0.0 * Personalcommunication * 0.80))]  ; Transfer-Rate = 0.80
    if Status = 2                                                                                          ; Knowledge
      [set Treshold (Treshold + (0.5 * Masscommunication * 0.65) + (0.0 * Personalcommunication * 0.65))]  ; Transfer-Rate = 0.65
    if Status = 3                                                                                          ; Attitude
      [set Treshold (Treshold + (0.0 * Masscommunication * 0.69) + (0.5 * Personalcommunication * 0.69))]  ; Transfer-Rate = 0.69
    if Status = 4                                                                                          ; Conviction
      [set Treshold (Treshold + (0.0 * Masscommunication * 0.47) + (1.0 * Personalcommunication * 0.47))]  ; Transfer-Rate = 0.47
      ]
  if Lifestyle = 7 [                                                                                       ; New middle class
    if Status = 0                                                                                          ; Unawareness
      [set Treshold (Treshold + (1.0 * Masscommunication * 0.99) + (1.0 * Personalcommunication * 0.99))]  ; Transfer-Rate = 0.99
    if Status = 1                                                                                          ; Awareness
      [set Treshold (Treshold + (1.0 * Masscommunication * 0.78) + (0.0 * Personalcommunication * 0.78))]  ; Transfer-Rate = 0.78
    if Status = 2                                                                                          ; Knowledge
      [set Treshold (Treshold + (0.5 * Masscommunication * 0.57) + (0.0 * Personalcommunication * 0.57))]  ; Transfer-Rate = 0.57
    if Status = 3                                                                                          ; Attitude
      [set Treshold (Treshold + (0.0 * Masscommunication * 0.74) + (0.5 * Personalcommunication * 0.74))]  ; Transfer-Rate = 0.74
    if Status = 4                                                                                          ; Conviction
      [set Treshold (Treshold + (0.0 * Masscommunication * 0.36) + (1.0 * Personalcommunication * 0.36))]  ; Transfer-Rate = 0.36
      ]
  if Lifestyle = 8 [                                                                                       ; Traditional
    if Status = 0                                                                                          ; Unawareness
      [set Treshold (Treshold + (1.0 * Masscommunication * 0.99) + (1.0 * Personalcommunication * 0.99))]  ; Transfer-Rate = 0.99
    if Status = 1                                                                                          ; Awareness
      [set Treshold (Treshold + (1.0 * Masscommunication * 0.80) + (0.0 * Personalcommunication * 0.80))]  ; Transfer-Rate = 0.80
    if Status = 2                                                                                          ; Knowledge
      [set Treshold (Treshold + (0.5 * Masscommunication * 0.56) + (0.0 * Personalcommunication * 0.56))]  ; Transfer-Rate = 0.56
    if Status = 3                                                                                          ; Attitude
      [set Treshold (Treshold + (0.0 * Masscommunication * 0.69) + (0.5 * Personalcommunication * 0.69))]  ; Transfer-Rate = 0.69
    if Status = 4                                                                                          ; Conviction
      [set Treshold (Treshold + (0.0 * Masscommunication * 0.34) + (1.0 * Personalcommunication * 0.34))]  ; Transfer-Rate = 0.34
      ]
  if Lifestyle = 9 [                                                                                       ; Precarious
    if Status = 0                                                                                          ; Unawareness
      [set Treshold (Treshold + (1.0 * Masscommunication * 1.00) + (1.0 * Personalcommunication * 1.00))]  ; Transfer-Rate = 1.00
    if Status = 1                                                                                          ; Awareness
      [set Treshold (Treshold + (1.0 * Masscommunication * 0.65) + (0.0 * Personalcommunication * 0.65))]  ; Transfer-Rate = 0.65
    if Status = 2                                                                                          ; Knowledge
      [set Treshold (Treshold + (0.5 * Masscommunication * 0.56) + (0.0 * Personalcommunication * 0.56))]  ; Transfer-Rate = 0.56
    if Status = 3                                                                                          ; Attitude
      [set Treshold (Treshold + (0.0 * Masscommunication * 0.57) + (0.5 * Personalcommunication * 0.57))]  ; Transfer-Rate = 0.57
    if Status = 4                                                                                          ; Conviction
      [set Treshold (Treshold + (0.0 * Masscommunication * 0.45) + (1.0 * Personalcommunication * 0.45))]  ; Transfer-Rate = 0.45
      ]
 if Lifestyle = 10 [                                                                                       ; Escapists
    if Status = 0                                                                                          ; Unawareness
      [set Treshold (Treshold + (1.0 * Masscommunication * 0.93) + (1.0 * Personalcommunication * 0.93))]  ; Transfer-Rate = 0.93
    if Status = 1                                                                                          ; Awareness
      [set Treshold (Treshold + (1.0 * Masscommunication * 0.64) + (0.0 * Personalcommunication * 0.64))]  ; Transfer-Rate = 0.64
    if Status = 2                                                                                          ; Knowledge
      [set Treshold (Treshold + (0.5 * Masscommunication * 0.57) + (0.0 * Personalcommunication * 0.57))]  ; Transfer-Rate = 0.57
    if Status = 3                                                                                          ; Attitude
      [set Treshold (Treshold + (0.0 * Masscommunication * 0.66) + (0.5 * Personalcommunication * 0.66))]  ; Transfer-Rate = 0.66
    if Status = 4                                                                                         ; Conviction
      [set Treshold (Treshold + (0.0 * Masscommunication * 0.56) + (1.0 * Personalcommunication * 0.56))]  ; Transfer-Rate = 0.56
      ]
end


to Compare                                                              ; Compare homeowners in district with refurbishment intention and determine social infuence
  if SNA > 0 [                                                          ; Is there any social network effect?
    if SNA < 5 [                                                        ; And limiting this effect to 4 neighboors
    set Treshold  (Treshold * (1 + (SNA * 0.3)))                        ; Treshold is boosted by 30% per positive refurbishment decision (for each neighboor)
    ]
    if SNA > 4 [
    set Treshold  (Treshold * 2.2)
    ]
]
end


to Transfer                                                  ; When a treshold value of 4 is reached, an agent will be transfered into the next step of the HOE:
  if Treshold >= 4 [                                         ; Does treshold have a value of 4?
    if Status < 5 [                                          ; Has an agent already reached the decesion step of intention?
    set Status (Status + 1)                                  ; No, so let him make the next step
    set Treshold 0                                           ; and set treshold to 0 again, so impact of mass and personal communication can occur
    ]
    if Status = 5 and IntentionYear = 0 [                    ; ask another question: is DM in Intention now for the first time?
    set IntentionYear CurrentYear                            ; Yes, in that case store the year of reaching intention in IntentionYear
    ]
  ]
end


to Appear                                                    ; After impact has been there and an agent has been transfered to the next step - his color of appearance should be adapted
 if Status = 1 [set color 15]                                ; according to the energy efficiency color range
 if Status = 2 [set color 25]
 if Status = 3 [set color 45]
 if Status = 4 [set color 68]
 if Status = 5 [set color 65]
end

to Autopilot                                            ; managing multiple runs to create output data

  set AutopilotOn 1

  FileOutInit                                           ; prepare data output

  Set Masscommunication 0                               ; Round 1 for Personalcommunication 0
  Set Personalcommunication 0


  ; Repeat 6 [                                          ; 'old' Code for getting sample 1 - this should be implemented in all loops
  ;        Repeat 20 [
  ;          Init
  ;          Repeat 27 [
  ;        Go
  ;    ]
  ;    FileOutWrite
  ; ]
  ; set Masscommunication (Masscommunication + 1)
  ; ]

  Repeat 6 [                                             ; new code for getting sample 2 - this is currently implemented in all loops
         Repeat 20 [
           Init
      While [count Homeowners with [Status = 5] <= 16150 and CurrentYear < 2050] [
           Go
         ]
     FileOutWrite
  ]
  set Masscommunication (Masscommunication + 1)
  ]

  Set Masscommunication 0                               ; Round 2 for Personalcommunication 1
  Set Personalcommunication 1

  Repeat 6 [
         Repeat 20 [
           Init
      While [count Homeowners with [Status = 5] <= 16150 and CurrentYear < 2050] [
           Go
         ]
     FileOutWrite
  ]
  set Masscommunication (Masscommunication + 1)
  ]

  Set Masscommunication 0                               ; Round 3 for Personalcommunication 2
  Set Personalcommunication 2

  Repeat 6 [
         Repeat 20 [
           Init
      While [count Homeowners with [Status = 5] <= 16150 and CurrentYear < 2050] [
           Go
         ]
     FileOutWrite
  ]
  set Masscommunication (Masscommunication + 1)
  ]

  Set Masscommunication 0                               ; Round 4 for Personalcommunication 3
  Set Personalcommunication 3

  Repeat 6 [
         Repeat 20 [
           Init
      While [count Homeowners with [Status = 5] <= 16150 and CurrentYear < 2050] [
           Go
         ]
     FileOutWrite
  ]
  set Masscommunication (Masscommunication + 1)
  ]

  Set Masscommunication 0                               ; Round 5 for Personalcommunication 4
  Set Personalcommunication 4

  Repeat 6 [
         Repeat 20 [
           Init
      While [count Homeowners with [Status = 5] <= 16150 and CurrentYear < 2050] [
           Go
         ]
     FileOutWrite
  ]
  set Masscommunication (Masscommunication + 1)
  ]

  Set Masscommunication 0                               ; Round 6 for Personalcommunication 5
  Set Personalcommunication 5

  Repeat 6 [
         Repeat 20 [
           Init
      While [count Homeowners with [Status = 5] <= 16150 and CurrentYear < 2050] [
           Go
         ]
     FileOutWrite
  ]
  set Masscommunication (Masscommunication + 1)
  ]

end


To FileOutInit                                          ; setup output file

  if (file-exists? "D:\\SystemDataHomeowners.csv")      ; Open an output file and prepare it:
    [
      carefully
      [file-delete "D:\\SystemDataHomeowners.csv"]
      [print error-message]
    ]

  file-open "D:\\SystemDataHomeowners.csv"
  file-type "Masscommunication;"
  file-type "Personalcommunication;"
  file-type "Share1;"
  file-type "Share2;"
  file-type "Share3;"
  file-type "Share4;"
  file-type "Share5;"
  file-type "Share6;"
  file-type "Share7;"
  file-type "Share8;"
  file-type "Share9;"
  file-type "Share10;"
  file-type "CostMas;"
  file-type "CostPer;"
  file-type "Costs;"
  file-type "Unawareness;"
  file-type "Awareness;"
  file-type "Knowledge;"
  file-type "Attitude;"
  file-type "Conviction;"
  file-type "Intention;"
  file-type "CurrentYear;"
  file-print "When"
  file-close

end


to FileOutWrite                                        ; Write summary data of system evolution

  file-open "D:\\SystemDataHomeowners.csv"
  file-type (word Masscommunication ";")
  file-type (word Personalcommunication ";")
  file-type (word Share1 ";")
  file-type (word Share2 ";")
  file-type (word Share3 ";")
  file-type (word Share4 ";")
  file-type (word Share5 ";")
  file-type (word Share6 ";")
  file-type (word Share7 ";")
  file-type (word Share8 ";")
  file-type (word Share9 ";")
  file-type (word Share10 ";")
  file-type (word CostMas ";")
  file-type (word CostPer ";")
  file-type (word Costs ";")
  file-type (word count Homeowners with [Status = 0] ";")
  file-type (word count Homeowners with [Status = 1] ";")
  file-type (word count Homeowners with [Status = 2] ";")
  file-type (word count Homeowners with [Status = 3] ";")
  file-type (word count Homeowners with [Status = 4] ";")
  file-type (word count Homeowners with [Status = 5] ";")
  file-type (word CurrentYear ";")
  file-print date-and-time
  file-close

end
@#$#@#$#@
GRAPHICS-WINDOW
335
90
863
619
-1
-1
7.324
1
10
1
1
1
0
0
0
1
0
70
0
70
0
0
1
ticks
30.0

BUTTON
30
90
112
123
Init model
Init
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
130
90
193
123
NIL
Go
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

PLOT
30
275
324
428
Refurbishment DM
Year
Homeowners
1.0
27.0
0.0
16999.0
false
true
"" ""
PENS
"Awareness" 1.0 0 -2674135 true "" "plot count turtles with [color = 15]"
"Knowledge" 1.0 0 -955883 true "" "plot count turtles with [color = 25]"
"Attitude" 1.0 0 -1184463 true "" "plot count turtles with [color = 45]"
"Conviction" 1.0 0 -5509967 true "" "plot count turtles with [color = 68]"
"Intention" 1.0 0 -13840069 true "" "plot count turtles with [color = 65]"

TEXTBOX
31
139
181
167
Mass communication
11
0.0
1

TEXTBOX
29
201
179
219
Personal communication
11
0.0
1

SLIDER
28
221
322
254
Personalcommunication
Personalcommunication
0
5
0.0
1
1
NIL
HORIZONTAL

BUTTON
205
90
321
123
Go all the way
Go
T
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

SLIDER
28
158
323
191
Masscommunication
Masscommunication
0
5
1.0
1
1
NIL
HORIZONTAL

PLOT
880
35
1409
337
Lifestylespecific Refurbishment Intention
Year
Refurbishment Intention
1.0
27.0
0.0
100.0
false
true
"" ""
PENS
"Established conservat." 1.0 0 -6917194 true "" "plot Share1"
"Liberal-intellectual" 1.0 0 -7500403 true "" "plot Share2"
"High achiever" 1.0 0 -2674135 true "" "plot Share3"
"Movers and shakers" 1.0 0 -955883 true "" "plot Share4"
"Adaptive pragmatics" 1.0 0 -6459832 true "" "plot Share5"
"Social‐ecological" 1.0 0 -1184463 true "" "plot Share6"
"New middle class" 1.0 0 -10899396 true "" "plot Share7"
"Traditional" 1.0 0 -13840069 true "" "plot Share8"
"Precarious" 1.0 0 -14835848 true "" "plot Share9"
"Escapists" 1.0 0 -11221820 true "" "plot Share10"

MONITOR
30
455
115
500
Current Year
CurrentYear
17
1
11

MONITOR
145
575
320
620
Total costs
Costs
0
1
11

MONITOR
145
455
320
500
Mass communication costs
CostMas
17
1
11

MONITOR
145
515
320
560
Perconal communication costs
CostPer
17
1
11

BUTTON
30
35
145
68
Autopilot
Autopilot
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

TEXTBOX
340
30
830
91
⌂⌂ Homeowners Refurbishment Model ⌂⌂
25
0.0
1

@#$#@#$#@
## WHAT IS IT?

(a general understanding of what the model is trying to show or explain)

## HOW IT WORKS

(what rules the agents use to create the overall behavior of the model)

## HOW TO USE IT

(how to use the model, including a description of each of the items in the Interface tab)

## THINGS TO NOTICE

(suggested things for the user to notice while running the model)

## THINGS TO TRY

(suggested things for the user to try to do (move sliders, switches, etc.) with the model)

## EXTENDING THE MODEL

(suggested things to add or change in the Code tab to make the model more complicated, detailed, accurate, etc.)

## NETLOGO FEATURES

(interesting or unusual features of NetLogo that the model uses, particularly in the Code tab; or where workarounds were needed for missing features)

## RELATED MODELS

(models in the NetLogo Models Library and elsewhere which are of related interest)

## CREDITS AND REFERENCES

(a reference to the model's URL on the web if it has one, as well as any other necessary credits, citations, and links)
@#$#@#$#@
default
true
0
Polygon -7500403 true true 150 5 40 250 150 205 260 250

airplane
true
0
Polygon -7500403 true true 150 0 135 15 120 60 120 105 15 165 15 195 120 180 135 240 105 270 120 285 150 270 180 285 210 270 165 240 180 180 285 195 285 165 180 105 180 60 165 15

arrow
true
0
Polygon -7500403 true true 150 0 0 150 105 150 105 293 195 293 195 150 300 150

box
false
0
Polygon -7500403 true true 150 285 285 225 285 75 150 135
Polygon -7500403 true true 150 135 15 75 150 15 285 75
Polygon -7500403 true true 15 75 15 225 150 285 150 135
Line -16777216 false 150 285 150 135
Line -16777216 false 150 135 15 75
Line -16777216 false 150 135 285 75

bug
true
0
Circle -7500403 true true 96 182 108
Circle -7500403 true true 110 127 80
Circle -7500403 true true 110 75 80
Line -7500403 true 150 100 80 30
Line -7500403 true 150 100 220 30

butterfly
true
0
Polygon -7500403 true true 150 165 209 199 225 225 225 255 195 270 165 255 150 240
Polygon -7500403 true true 150 165 89 198 75 225 75 255 105 270 135 255 150 240
Polygon -7500403 true true 139 148 100 105 55 90 25 90 10 105 10 135 25 180 40 195 85 194 139 163
Polygon -7500403 true true 162 150 200 105 245 90 275 90 290 105 290 135 275 180 260 195 215 195 162 165
Polygon -16777216 true false 150 255 135 225 120 150 135 120 150 105 165 120 180 150 165 225
Circle -16777216 true false 135 90 30
Line -16777216 false 150 105 195 60
Line -16777216 false 150 105 105 60

car
false
0
Polygon -7500403 true true 300 180 279 164 261 144 240 135 226 132 213 106 203 84 185 63 159 50 135 50 75 60 0 150 0 165 0 225 300 225 300 180
Circle -16777216 true false 180 180 90
Circle -16777216 true false 30 180 90
Polygon -16777216 true false 162 80 132 78 134 135 209 135 194 105 189 96 180 89
Circle -7500403 true true 47 195 58
Circle -7500403 true true 195 195 58

circle
false
0
Circle -7500403 true true 0 0 300

circle 2
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240

cow
false
0
Polygon -7500403 true true 200 193 197 249 179 249 177 196 166 187 140 189 93 191 78 179 72 211 49 209 48 181 37 149 25 120 25 89 45 72 103 84 179 75 198 76 252 64 272 81 293 103 285 121 255 121 242 118 224 167
Polygon -7500403 true true 73 210 86 251 62 249 48 208
Polygon -7500403 true true 25 114 16 195 9 204 23 213 25 200 39 123

cylinder
false
0
Circle -7500403 true true 0 0 300

dot
false
0
Circle -7500403 true true 90 90 120

face happy
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 255 90 239 62 213 47 191 67 179 90 203 109 218 150 225 192 218 210 203 227 181 251 194 236 217 212 240

face neutral
false
0
Circle -7500403 true true 8 7 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Rectangle -16777216 true false 60 195 240 225

face sad
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 168 90 184 62 210 47 232 67 244 90 220 109 205 150 198 192 205 210 220 227 242 251 229 236 206 212 183

fish
false
0
Polygon -1 true false 44 131 21 87 15 86 0 120 15 150 0 180 13 214 20 212 45 166
Polygon -1 true false 135 195 119 235 95 218 76 210 46 204 60 165
Polygon -1 true false 75 45 83 77 71 103 86 114 166 78 135 60
Polygon -7500403 true true 30 136 151 77 226 81 280 119 292 146 292 160 287 170 270 195 195 210 151 212 30 166
Circle -16777216 true false 215 106 30

flag
false
0
Rectangle -7500403 true true 60 15 75 300
Polygon -7500403 true true 90 150 270 90 90 30
Line -7500403 true 75 135 90 135
Line -7500403 true 75 45 90 45

flower
false
0
Polygon -10899396 true false 135 120 165 165 180 210 180 240 150 300 165 300 195 240 195 195 165 135
Circle -7500403 true true 85 132 38
Circle -7500403 true true 130 147 38
Circle -7500403 true true 192 85 38
Circle -7500403 true true 85 40 38
Circle -7500403 true true 177 40 38
Circle -7500403 true true 177 132 38
Circle -7500403 true true 70 85 38
Circle -7500403 true true 130 25 38
Circle -7500403 true true 96 51 108
Circle -16777216 true false 113 68 74
Polygon -10899396 true false 189 233 219 188 249 173 279 188 234 218
Polygon -10899396 true false 180 255 150 210 105 210 75 240 135 240

house
false
0
Rectangle -7500403 true true 45 120 255 285
Rectangle -16777216 true false 120 210 180 285
Polygon -7500403 true true 15 120 150 15 285 120
Line -16777216 false 30 120 270 120

leaf
false
0
Polygon -7500403 true true 150 210 135 195 120 210 60 210 30 195 60 180 60 165 15 135 30 120 15 105 40 104 45 90 60 90 90 105 105 120 120 120 105 60 120 60 135 30 150 15 165 30 180 60 195 60 180 120 195 120 210 105 240 90 255 90 263 104 285 105 270 120 285 135 240 165 240 180 270 195 240 210 180 210 165 195
Polygon -7500403 true true 135 195 135 240 120 255 105 255 105 285 135 285 165 240 165 195

line
true
0
Line -7500403 true 150 0 150 300

line half
true
0
Line -7500403 true 150 0 150 150

pentagon
false
0
Polygon -7500403 true true 150 15 15 120 60 285 240 285 285 120

person
false
0
Circle -7500403 true true 110 5 80
Polygon -7500403 true true 105 90 120 195 90 285 105 300 135 300 150 225 165 300 195 300 210 285 180 195 195 90
Rectangle -7500403 true true 127 79 172 94
Polygon -7500403 true true 195 90 240 150 225 180 165 105
Polygon -7500403 true true 105 90 60 150 75 180 135 105

plant
false
0
Rectangle -7500403 true true 135 90 165 300
Polygon -7500403 true true 135 255 90 210 45 195 75 255 135 285
Polygon -7500403 true true 165 255 210 210 255 195 225 255 165 285
Polygon -7500403 true true 135 180 90 135 45 120 75 180 135 210
Polygon -7500403 true true 165 180 165 210 225 180 255 120 210 135
Polygon -7500403 true true 135 105 90 60 45 45 75 105 135 135
Polygon -7500403 true true 165 105 165 135 225 105 255 45 210 60
Polygon -7500403 true true 135 90 120 45 150 15 180 45 165 90

sheep
false
15
Circle -1 true true 203 65 88
Circle -1 true true 70 65 162
Circle -1 true true 150 105 120
Polygon -7500403 true false 218 120 240 165 255 165 278 120
Circle -7500403 true false 214 72 67
Rectangle -1 true true 164 223 179 298
Polygon -1 true true 45 285 30 285 30 240 15 195 45 210
Circle -1 true true 3 83 150
Rectangle -1 true true 65 221 80 296
Polygon -1 true true 195 285 210 285 210 240 240 210 195 210
Polygon -7500403 true false 276 85 285 105 302 99 294 83
Polygon -7500403 true false 219 85 210 105 193 99 201 83

square
false
0
Rectangle -7500403 true true 30 30 270 270

square 2
false
0
Rectangle -7500403 true true 30 30 270 270
Rectangle -16777216 true false 60 60 240 240

star
false
0
Polygon -7500403 true true 151 1 185 108 298 108 207 175 242 282 151 216 59 282 94 175 3 108 116 108

target
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240
Circle -7500403 true true 60 60 180
Circle -16777216 true false 90 90 120
Circle -7500403 true true 120 120 60

tree
false
0
Circle -7500403 true true 118 3 94
Rectangle -6459832 true false 120 195 180 300
Circle -7500403 true true 65 21 108
Circle -7500403 true true 116 41 127
Circle -7500403 true true 45 90 120
Circle -7500403 true true 104 74 152

triangle
false
0
Polygon -7500403 true true 150 30 15 255 285 255

triangle 2
false
0
Polygon -7500403 true true 150 30 15 255 285 255
Polygon -16777216 true false 151 99 225 223 75 224

truck
false
0
Rectangle -7500403 true true 4 45 195 187
Polygon -7500403 true true 296 193 296 150 259 134 244 104 208 104 207 194
Rectangle -1 true false 195 60 195 105
Polygon -16777216 true false 238 112 252 141 219 141 218 112
Circle -16777216 true false 234 174 42
Rectangle -7500403 true true 181 185 214 194
Circle -16777216 true false 144 174 42
Circle -16777216 true false 24 174 42
Circle -7500403 false true 24 174 42
Circle -7500403 false true 144 174 42
Circle -7500403 false true 234 174 42

turtle
true
0
Polygon -10899396 true false 215 204 240 233 246 254 228 266 215 252 193 210
Polygon -10899396 true false 195 90 225 75 245 75 260 89 269 108 261 124 240 105 225 105 210 105
Polygon -10899396 true false 105 90 75 75 55 75 40 89 31 108 39 124 60 105 75 105 90 105
Polygon -10899396 true false 132 85 134 64 107 51 108 17 150 2 192 18 192 52 169 65 172 87
Polygon -10899396 true false 85 204 60 233 54 254 72 266 85 252 107 210
Polygon -7500403 true true 119 75 179 75 209 101 224 135 220 225 175 261 128 261 81 224 74 135 88 99

wheel
false
0
Circle -7500403 true true 3 3 294
Circle -16777216 true false 30 30 240
Line -7500403 true 150 285 150 15
Line -7500403 true 15 150 285 150
Circle -7500403 true true 120 120 60
Line -7500403 true 216 40 79 269
Line -7500403 true 40 84 269 221
Line -7500403 true 40 216 269 79
Line -7500403 true 84 40 221 269

wolf
false
0
Polygon -16777216 true false 253 133 245 131 245 133
Polygon -7500403 true true 2 194 13 197 30 191 38 193 38 205 20 226 20 257 27 265 38 266 40 260 31 253 31 230 60 206 68 198 75 209 66 228 65 243 82 261 84 268 100 267 103 261 77 239 79 231 100 207 98 196 119 201 143 202 160 195 166 210 172 213 173 238 167 251 160 248 154 265 169 264 178 247 186 240 198 260 200 271 217 271 219 262 207 258 195 230 192 198 210 184 227 164 242 144 259 145 284 151 277 141 293 140 299 134 297 127 273 119 270 105
Polygon -7500403 true true -1 195 14 180 36 166 40 153 53 140 82 131 134 133 159 126 188 115 227 108 236 102 238 98 268 86 269 92 281 87 269 103 269 113

x
false
0
Polygon -7500403 true true 270 75 225 30 30 225 75 270
Polygon -7500403 true true 30 75 75 30 270 225 225 270
@#$#@#$#@
NetLogo 6.1.1
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
<experiments>
  <experiment name="experiment" repetitions="10" runMetricsEveryStep="true">
    <setup>Beginn</setup>
    <go>Go</go>
    <timeLimit steps="150"/>
    <exitCondition>ticks = 32</exitCondition>
    <metric>count turtles with [status = 5]</metric>
    <metric>costs</metric>
    <enumeratedValueSet variable="Massenkommunikation">
      <value value="1"/>
      <value value="2"/>
      <value value="3"/>
      <value value="4"/>
      <value value="5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="persönlich">
      <value value="1"/>
      <value value="2"/>
      <value value="3"/>
      <value value="4"/>
      <value value="5"/>
    </enumeratedValueSet>
  </experiment>
</experiments>
@#$#@#$#@
@#$#@#$#@
default
0.0
-0.2 0 0.0 1.0
0.0 1 1.0 0.0
0.2 0 0.0 1.0
link direction
true
0
Line -7500403 true 150 150 90 180
Line -7500403 true 150 150 210 180
@#$#@#$#@
1
@#$#@#$#@

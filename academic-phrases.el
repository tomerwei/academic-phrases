(require 'dash)
(require 'ht)
(require 's)

(setq *phrases*
      (ht
       (:cat1 (ht (:title "Establishing why your topic X is important")
                  (:items (list
                           (ht (:id 1)
                               (:template "X is the [{1}] cause of ...")
                               (:choices '(("main" "leading" "primary" "major"))))
                           (ht (:id 2)
                               (:template "Xs are a [{1}] part of ...")
                               (:choices '(("common" "useful" "critical"))))
                           (ht (:id 3)
                               (:template "Xs are among the most [{1}] types of ...")
                               (:choices '(("widely used" "commonly discussed" "well-known" "well-documented" "widespread" "commonly investigated"))))
                           (ht (:id 4)
                               (:template "X is [{1}] the most important ...")
                               (:choices '(("is recognized as being" "believed to be" "widely considered to be"))))
                           (ht (:id 5)
                               (:template "It is [{1}] that X is ...")
                               (:choices '(("well known" "generally accepted" "common knowledge"))))
                           (ht (:id 6)
                               (:template "X [{1}] a vital factor in ...")
                               (:choices '(("is increasingly becoming" "set to become"))))
                           (ht (:id 7)
                               (:template "Xs are [{1}] in terms of ...")
                               (:choices '(("undergoing a revolution" "generating considerable interest"))))
                           (ht (:id 8)
                               (:template "Xs are attracting [{1}] interest due to ...")
                               (:choices '(("considerable" "increasing" "widespread"))))
                           (ht (:id 9)
                               (:template "X has many [{1}] in the field of ...")
                               (:choices '(("uses" "roles" "applications"))))
                           (ht (:id 10)
                               (:template "A [{1}] feature of ...")
                               (:choices '(("striking" "useful" "remarkable"))))
                           (ht (:id 11)
                               (:template "The [{1}] characteristics of X are:")
                               (:choices '(("main" "principal" "fundamental"))))
                           (ht (:id 12)
                               (:template "X [{1}] for")
                               (:choices '(("accounts" "is responsible"))))))))

       (:cat2 (ht (:title "Outlining the past-present history of the study of X")
                  (:items (list
                           (ht (:id 13)
                               (:template "Last century X [{1}] the most ...")
                               (:choices '(("was considered to be" "viewed as" "seen as"))))
                           (ht (:id 14)
                               (:template "[{1}] studies of X considered it to be")
                               (:choices '(("Initial" "Preliminary" "The first"))))
                           (ht (:id 15)
                               (:template "[{1}], the focus has always been ...")
                               (:choices '(("Traditionally X" "In the history of X"))))
                           (ht (:id 16)
                               (:template "[{1}] have always seen X as ...")
                               (:choices '(("Scientists" "Researchers" "Experts"))))
                           (ht (:id 17)
                               (:template "[{1}] Xs have been considered as ...")
                               (:choices '(("Until now" "For many years" "Since 1942"))))
                           (ht (:id 18)
                               (:template "X has received much attention in the [{1}] ...")
                               (:choices '(("last two years" "in the past decade" "over the last two decades"))))
                           (ht (:id 19)
                               (:template "[{1}] there has been a rapid rise in the use of Xs")
                               (:choices '(("For the past five years" "Since 1942"))))
                           (ht (:id 20)
                               (:template "The last two years have [{1}] a huge growth in X ...")
                               (:choices '(("witnessed" "seen"))))
                           (ht (:id 21)
                               (:template "The [{1}] has seen a renewed importance in X ...")
                               (:choices '(("past decade" "last year"))))
                           (ht (:id 22)
                               (:template "Recent [{1}] X have led to ...")
                               (:choices '(("developments in" "findings regarding"))))
                           (ht (:id 23)
                               (:template "X has become a [{1}] issue in ...")
                               (:choices '(("central" "an important" "a critical"))))))))

       (:cat3 (ht (:title "Outlining the possible future of X")
                  (:items (list
                           (ht (:id 24)
                               (:template "The next decade is likely to [{1}] a considerable rise in X")
                               (:choices '(("see" "witness"))))
                           (ht (:id 25)
                               (:template "In the next few years X [{1}]")
                               (:choices '(("will become" "is likely to have become"))))
                           (ht (:id 26)
                               (:template "Within the next few years, X is [{1}] to become an important component in ...")
                               (:choices '(("set" "destined" "likely"))))
                           (ht (:id 27)
                               (:template "[{1}], X will have become ...")
                               (:choices '(("By 2042" "Within the next ten years"))))
                           (ht (:id 28)
                               (:template "X will [{1}] be an issue that ...")
                               (:choices '(("soon" "shortly" "rapidly" "inevitably"))))))))

       (:cat4 (ht (:title "Indicating the gap in knowledge and possible limitations")
                  (:items (list
                           (ht (:id 29)
                               (:template "Few researchers have addressed the [{1}] of ...")
                               (:choices '(("problem" "issue" "question"))))
                           (ht (:id 30)
                               (:template "Previous work has only [{1}] address ...")
                               (:choices '(("focused on" "been limited to" "failed to"))))
                           (ht (:id 31)
                               (:template "A [{1}] issue of ...")
                               (:choices '(("basic" "common" "fundamental" "crucial" "major"))))
                           (ht (:id 32)
                               (:template "The [{1}] problem of")
                               (:choices '(("central" "core"))))
                           (ht (:id 33)
                               (:template "[{1}] area in the field of ...")
                               (:choices '(("A challenging" "An intriguing" "An important" "A neglected"))))
                           (ht (:id 34)
                               (:template "Current solutions to X are [{1}]")
                               (:choices '(("inconsistent" "inadequate" "incorrect" "ineffective" "inefficient" "over-simplistic" "unsatisfactory"))))
                           (ht (:id 35)
                               (:template "Many hypotheses regarding X appear to be [{1}]")
                               (:choices '(("ill-defined" "unfounded" "not well grounded" "unsupported" "questionable" "disputable" "debatable"))))
                           (ht (:id 36)
                               (:template "The characteristics of X [{1}].")
                               (:choices '(("are not well understood" "are misunderstood" "have not been dealt with in depth"))))
                           (ht (:id 37)
                               (:template "It [{1}] whether X can do Y.")
                               (:choices '(("is not yet known" "has not yet been established"))))
                           (ht (:id 38)
                               (:template "X is still [{1}] understood.")
                               (:choices '(("poorly" "not widely"))))
                           (ht (:id 39)
                               (:template "X is often [{1}] ...")
                               (:choices '(("impractical" "not feasible" "costly"))))
                           (ht (:id 40)
                               (:template "Techniques to solve X are [{1}].")
                               (:choices '(("computationally demanding" "subject to high overheads" "time consuming" "impractical" "frequently unfeasible"))))
                           (ht (:id 41)
                               (:template "A major [{1}] of X is ...")
                               (:choices '(("defect" "difficulty" "drawback" "disadvantage" "flaw"))))
                           (ht (:id 42)
                               (:template "One of the main issues in [{1}] X is a lack of ...")
                               (:choices '(("our knowledge of" "what we know about"))))
                           (ht (:id 43)
                               (:template "This [{1}] area of X [{2}] ...")
                               (:choices '(("particular" "specific") ("has been overlooked" "has been neglected" "remains unclear"))))
                           (ht (:id 44)
                               (:template "Despite this interest, no one [{1}] has studied ...")
                               (:choices '(("to the best of our knowledge" "as far as we know"))))
                           (ht (:id 45)
                               (:template "Although this approach is interesting, it [{1}] ...")
                               (:choices '(("suffers from" "fails to take into account" "does not allow for"))))
                           (ht (:id 46)
                               (:template "[{1}] its shortcomings, this method has been widely applied to ...")
                               (:choices '(("In spite of" "Despite"))))
                           (ht (:id 47)
                               (:template "However, there [{1}] ...")
                               (:choices '(("is still a need for" "has been little discussion on"))))
                           (ht (:id 48)
                               (:template "Moreover, other [{1}] have failed to provide ...")
                               (:choices '(("solutions" "research programs" "approaches"))))
                           (ht (:id 49)
                               (:template "Most studies [{1}] focus on ...")
                               (:choices '(("have only focused" "tended to"))))
                           (ht (:id 50)
                               (:template "[{1}] this methodology has only been applied to ...")
                               (:choices '(("To date" "Until now"))))
                           (ht (:id 51)
                               (:template "There is still [{1}] controversy surrounding ...")
                               (:choices '(("some" "much" "considerable"))))
                           (ht (:id 52)
                               (:template "There has been some disagreement [{1}] whether")
                               (:choices '(("concerning" "regarding" "with regard to"))))
                           (ht (:id 53)
                               (:template "There is [{1}] on ...")
                               (:choices '(("little" "no general agreement"))))
                           (ht (:id 54)
                               (:template "The community has raised some [{1}] about ...")
                               (:choices '(("issues" "concerns"))))
                           (ht (:id 55)
                               (:template "Concerns have [{1}] which [{2}] the validity of ...")
                               (:choices '(("arisen" "been raised") ("question" "call into question"))))
                           (ht (:id 56)
                               (:template "In the light of recent events in x, there is now [{1}] concern about ...")
                               (:choices '(("some" "much" "considerable"))))))))

       (:cat5 (ht (:title "Stating the aim of your paper and its contribution")
                  (:items (list
                           (ht (:id 57)
                               (:template "In this [{1}] we ...")
                               (:choices '(("report" "paper" "review" "study"))))
                           (ht (:id 58)
                               (:template "This paper [{1}] a new approach to ...")
                               (:choices '(("outlines" "proposes" "describes" "presents"))))
                           (ht (:id 59)
                               (:template "This paper [{1}] how to solve ...")
                               (:choices '(("examines" "seeks to address" "focuses on" "discusses" "investigates"))))
                           (ht (:id 60)
                               (:template "This paper is [{1}] ...")
                               (:choices '(("an overview of" "a review of" "a report on" "a preliminary attempt to"))))
                           (ht (:id 61)
                               (:template "The present paper aims to [{1}] Marvin’s findings regarding ...")
                               (:choices '(("validate" "call into question" "refute"))))
                           (ht (:id 62)
                               (:template "X is [{1}] in order to ...")
                               (:choices '(("presented" "described" "analyzed" "computed" "investigated" "examined" "introduced" "discussed"))))
                           (ht (:id 63)
                               (:template "The aim of our [{1}] was to [{2}] current knowledge of ...")
                               (:choices '(("work" "research" "study" "analysis") ("further" "extend" "widen" "broaden"))))
                           (ht (:id 64)
                               (:template "Our knowledge of X is largely based on very limited data. The aim of the research was [{1}] to")
                               (:choices '(("thus" "therefore" "consequently"))))
                           (ht (:id 65)
                               (:template "The aim of this study is to [{1}] ...")
                               (:choices '(("study" "evaluate" "validate" "determine" "examine" "analyze" "calculate" "estimate" "formulate"))))
                           (ht (:id 66)
                               (:template "This paper [{1}] ...")
                               (:choices '(("calls into question" "takes a new look at" "re-examines" "revisits" "sheds new light on"))))
                           (ht (:id 67)
                               (:template "[{1}], we tried to ...")
                               (:choices '(("With this in mind" "Within the framework of these criteria" "In this context"))))
                           (ht (:id 68)
                               (:template "We [{1}] to ...")
                               (:choices '(("undertook this study" "initiated this research" "developed this methodology"))))
                           (ht (:id 69)
                               (:template "We believe that we have [{1}] an innovative solution to ...")
                               (:choices '(("found" "developed" "discovered" "designed"))))
                           (ht (:id 70)
                               (:template "We [{1}] solution for ...")
                               (:choices '(("describe" "present" "consider" "analyze a novel" "simple" "radical" "interesting"))))))))

       (:cat6 (ht (:title "Explaining the key terminology in your field")
                  (:items (list
                           (ht (:id 71)
                               (:template "The term ‘X’ [{1}] ...")
                               (:choices '(("is generally understood to mean" "has come to be used to refer to" "has been applied to"))))
                           (ht (:id 72)
                               (:template "In the literature, X [{1}] to refer to ...")
                               (:choices '(("usually refers" "often refers" "tends to be used"))))
                           (ht (:id 73)
                               (:template "In the field of X, [{1}] Y can be found.")
                               (:choices '(("several" "various" "many definitions of"))))
                           (ht (:id 74)
                               (:template "The term X [{1}] used by Marvin [2042] to refer to ...")
                               (:choices '(("is" "was" "has been"))))
                           (ht (:id 75)
                               (:template "Marvin uses the term X [2042] to [{1}] ...")
                               (:choices '(("refer to" "denominate"))))
                           (ht (:id 76)
                               (:template "X is defined by Marvin [1942] [{1}] ...")
                               (:choices '(("to refer to" "to mean"))))
                           (ht (:id 77)
                               (:template "Marvin [2042] has [{1}] a new definition of X, in which ...")
                               (:choices '(("provided" "put forward" "proposed"))))
                           (ht (:id 78)
                               (:template "X is [{1}] as ... [Marvin 2042].")
                               (:choices '(("defined" "identified" "described"))))
                           (ht (:id 79)
                               (:template "In the literature [{1}].")
                               (:choices '(("there seems to be no general definition of X" "a general definition of X is lacking" "there is no clear definition of X"))))
                           (ht (:id 80)
                               (:template "Several authors have attempted to define X, but [{1}] there is still no accepted definition.")
                               (:choices '(("as yet" "currently" "at the time of writing"))))
                           (ht (:id 81)
                               (:template "In [{1}] terms, X is can be defined as a way to ...")
                               (:choices '(("broad" "general"))))
                           (ht (:id 82)
                               (:template "The [{1}] use of the term X refers to ...")
                               (:choices '(("broad" "general" "generally accepted"))))
                           (ht (:id 83)
                               (:template "X is sometimes [{1}] a series of ...")
                               (:choices '(("equated with" "embodies"))))
                           (ht (:id 84)
                               (:template "X, Y and Z are three [{1}] of languages.")
                               (:choices '(("kinds" "types" "categories" "classes"))))
                           (ht (:id 85)
                               (:template "[{1}]: X, Y and Z.")
                               (:choices '(("There are three kinds of languages" "The three kinds of languages are" "Languages can be divided into three kinds"))))))))

       (:cat7 (ht (:title "Explaining how you will use terminology and acronyms in your paper")
                  (:items (list
                           (ht (:id 86)
                               (:template "The acronym X [{1}] ...")
                               (:choices '(("stands for" "denotes"))))
                           (ht (:id 87)
                               (:template "The subjects [{1}] are...")
                               (:choices '(("henceforth named" "hereafter 'X'"))))
                           (ht (:id 88)
                               (:template "The subject, which we shall [{1}] to as 'X', is ...")
                               (:choices '(("call" "refer"))))
                           (ht (:id 89)
                               (:template "Throughout this [{1}] we use the terms ‘mafia’ and ‘the mob’ interchangeably, [{2}] with the practice of this department where this study was conducted.")
                               (:choices '(("paper" "section") ("following" "in accordance"))))
                           (ht (:id 90)
                               (:template "The fonts, [{1}] the form of the characters, are of various types.")
                               (:choices '(("i.e." "that is to say"))))
                           (ht (:id 91)
                               (:template "There are three different types, [{1}] : X, Y and Z.")
                               (:choices '(("namely" "specifically"))))
                           (ht (:id 92)
                               (:template "[{1}] we [{2}] the term X to refer to ...")
                               (:choices '(("Throughout the" "In this paper") ("use" "will use"))))
                           (ht (:id 93)
                               (:template "In this chapter X [{1}] to refer to ...")
                               (:choices '(("is used" "will be used"))))
                           (ht (:id 94)
                               (:template "In this paper the standard meaning of X [{1}]' used ..")
                               (:choices '(("is" "will be"))))
                           (ht (:id 95)
                               (:template "This aspect [{1}] dealt with in more detail in Sect. 6.")
                               (:choices '(("is" "will be"))))
                           (ht (:id 96)
                               (:template "We will [{1}] how relevant this is in the next subsection.")
                               (:choices '(("see" "learn" "appreciate"))))))))

       (:cat8 (ht (:title "Giving the structure of paper - what is and is not included")
                  (:items (list
                           (ht (:id 97)
                               (:template "This paper is organized as [{1}] into five sections.")
                               (:choices '(("follows" "divided"))))
                           (ht (:id 98)
                               (:template "[{1}] gives a brief overview of ...")
                               (:choices '(("The first section" "Section 1"))))
                           (ht (:id 99)
                               (:template "The second section [{1}] ...")
                               (:choices '(("examines" "analyses"))))
                           (ht (:id 100)
                               (:template  "In the third section a case study is [{1}] ...")
                               (:choices '(("presented" "analyzed"))))
                           (ht (:id 101)
                               (:template  "A new methodology is [{1}] in the fourth section ...")
                               (:choices '(("described" "outlined"))))
                           (ht (:id 102)
                               (:template  "[{1}] propose a new procedure in Section 4.")
                               (:choices '(("We" "I"))))
                           (ht (:id 103)
                               (:template  "[{1}] conclusions are drawn in the final section.")
                               (:choices '(("Some" "Our"))))
                           (ht (:id 104)
                               (:template  "This [{1}] begins by examining ...")
                               (:choices '(("paper" "chapter" "section" "subsection"))))
                           (ht (:id 105)
                               (:template  "The next chapter [{1}] the question of ...")
                               (:choices '(("looks at" "examines" "investigates"))))
                           (ht (:id 106)
                               (:template  "[{1}] regarding X are discussed in later sections.")
                               (:choices '(("Problems" "Questions" "Issues"))))
                           (ht (:id 107)
                               (:template  "A discussion of X [{1}] outside the scope of this paper.")
                               (:choices '(("is" "falls"))))
                           (ht (:id 108)
                               (:template  "For reasons of space, X is not [{1}] in this paper.")
                               (:choices '(("addressed" "dealt with" "considered"))))))))

       (:cat9 (ht (:title "Giving general panorama of past-to-present literature")
                  (:items (list
                           (ht (:id 109)
                               (:template  "There is a [{1}] amount of literature on ...")
                               (:choices '(("considerable" "vast"))))
                           (ht (:id 110)
                               (:template  "In the literature there are [{1}] few examples of ...")
                               (:choices '(("many" "several" "a surprising number of"))))
                           (ht (:id 111)
                               (:template  "What [{1}] about X is largely based on ...")
                               (:choices '(("we know" "is known"))))
                           (ht (:id 112)
                               (:template  "[{1}] is known about ...")
                               (:choices '(("Much" "Not much" "Very little"))))
                           (ht (:id 113)
                               (:template  "[{1}] studies have been published on ... [Ref]")
                               (:choices '(("Many" "Few"))))
                           (ht (:id 114)
                               (:template  "Various approaches have been [{1}] to solve this issue [Ref].")
                               (:choices '(("proposed" "put forward" "suggested" "hypothesized"))))
                           (ht (:id 115)
                               (:template  "X has been [{1}] as being ... [Ref]")
                               (:choices '(("identified" "indicated"))))
                           (ht (:id 116)
                               (:template  "X has been [{1}] to be ... [Ref]")
                               (:choices '(("shown" "demonstrated" "proved" "found"))))
                           (ht (:id 117)
                               (:template  "X has been widely [{1}] ... [Ref]")
                               (:choices '(("investigated" "studied" "addressed"))))
                           (ht (:id 118)
                               (:template  "Xs have been [{1}] much attention due to ...")
                               (:choices '(("receiving" "gaining"))))
                           (ht (:id 119)
                               (:template  "In the [{1}] approach, X is used to ...")
                               (:choices '(("traditional" "classical"))))
                           (ht (:id 120)
                               (:template  "In recent years there has been [{1}] interest in ... [Ref]")
                               (:choices '(("considerable" "growing"))))
                           (ht (:id 121)
                               (:template  "A growing body of literature has [{1}] ... [Ref]")
                               (:choices '(("examined" "investigated" "studied" "analyzed" "evaluated"))))
                           (ht (:id 122)
                               (:template  "Much work on the potential of X has been carried out [Ref], [{1}] there are still somecritical issues ... [Ref]")
                               (:choices '(("yet" "however"))))))))

       (:cat10 (ht (:title "Reviewing past literature")
                   (:items (list
                            (ht (:id 123)
                                (:template  "In their [{1}] paper of 2042, Marvin and Arthur ...")
                                (:choices '(("seminal" "groundbreaking" "cutting edge"))))
                            (ht (:id 124)
                                (:template  "[{1}] work in this field focused primarily on ...")
                                (:choices '(("Initial" "Preliminary"))))
                            (ht (:id 125)
                                (:template  "Some preliminary work was carried out [{1}] ...")
                                (:choices '(("in the early 1942s" "several years ago"))))
                            (ht (:id 126)
                                (:template  "Marvin in 2042 was [{1}] the first to ...")
                                (:choices '(("among" "one of"))))
                            (ht (:id 127)
                                (:template  "The first [{1}] X found that ...")
                                (:choices '(("investigations into" "studies on"))))
                            (ht (:id 128)
                                (:template  "The first systematic [{1}] on X was [{2}] in 1942 by ...")
                                (:choices '(("study" "report") ("carried out" "conducted" "performed"))))
                            (ht (:id 129)
                                (:template  "An increase in X was first [{1}] by ...")
                                (:choices '(("noted" "reported" "found"))))))))

       (:cat11 (ht (:title "Reviewing subsequent and more recent literature")
                   (:items (list
                            (ht (:id 130)
                                (:template  "Experiments on X were [{1}] on X in 2009 by a group of researchers from ...")
                                (:choices '(("conducted" "carried out" "performed"))))
                            (ht (:id 131)
                                (:template  "In a major advance in 2010, Marvin et al. [{1}] ...")
                                (:choices '(("surveyed" "interviewed"))))
                            (ht (:id 132)
                                (:template  "Marvin and co-workers [2011] [{1}] ...")
                                (:choices '(("measured" "calculated" "estimated"))))
                            (ht (:id 133)
                                (:template  "In [42] the authors [{1}] ...")
                                (:choices '(("investigated" "studied" "analyzed"))))
                            (ht (:id 134)
                                (:template  "A recent review of the literature on this [{1}] [2012] found that ...")
                                (:choices '(("topic" "subject" "matter" "area"))))
                            (ht (:id 135)
                                (:template  "[{1}] of studies have found that ...")
                                (:choices '(("A number" "An increasing number"))))
                            (ht (:id 136)
                                (:template  "[{1}], much more information on X has become available ...")
                                (:choices '(("Since 2011" "In the last few years"))))
                            (ht (:id 137)
                                (:template  "Several studies, for [{1}] [1], [2], and [6], [{2}] on X.")
                                (:choices '(("example" "instance") ("have been carried out" "conducted" "performed"))))
                            (ht (:id 138)
                                (:template  "More recent evidence [Marvin, 2013] [{1}] that ...")
                                (:choices '(("shows" "suggests" "highlights" "reveals" "proposes"))))
                            (ht (:id 139)
                                (:template  "It has now been [{1}] ... [Marvin 2010]")
                                (:choices '(("suggested" "hypothesized" "proposed" "shown" "demonstrated"))))
                            (ht (:id 140)
                                (:template  "Many attempts have been made [Marvin 2009, Aurthur 2010, Zaphod 2011] [{1}] ...")
                                (:choices '(("in order to" "with the purpose of" "aimed at"))))))))
       (:cat12 (ht (:title "Reporting what specific authors have said")
                   (:items (list
                            (ht (:id 141)
                                (:template  "In her [{1}] of X, Marvin [2] questions the need for ...")
                                (:choices '(("analysis" "review" "overview" "critique"))))
                            (ht (:id 142)
                                (:template  "In his [{1}] X, Marvin [3] shows that ...")
                                (:choices '(("introduction to" "seminal article on" "investigation into"))))
                            (ht (:id 143)
                                (:template  "Marvin [4] [{1}] a new method for X and concluded that ...")
                                (:choices '(("developed" "reported on"))))
                            (ht (:id 144)
                                (:template  "Southern’s group [5] calls into question some past [{1}] about X.")
                                (:choices '(("assumptions" "hypotheses" "theories"))))
                            (ht (:id 145)
                                (:template  "Marvin [6], an authority on X, [{1}] that ...")
                                (:choices '(("notes" "mentions" "highlights" "states" "affirms"))))
                            (ht (:id 146)
                                (:template  "She [{1}] whether [or not] X can ...")
                                (:choices '(("questions" "wonders" "considers" "investigates"))))
                            (ht (:id 147)
                                (:template  "He traces the [{1}] X")
                                (:choices '(("advances in" "development of" "history of" "evolution of"))))
                            (ht (:id 148)
                                (:template  "They [{1}] X.")
                                (:choices '(("draw our attention to" "focus on"))))
                            (ht (:id 149)
                                (:template  "They [{1}] a distinction between ...")
                                (:choices '(("make" "draw"))))
                            (ht (:id 150)
                                (:template  "He [{1}] that ...")
                                (:choices '(("claims" "argues" "maintains" "suggests" "points out" "underlines"))))
                            (ht (:id 151)
                                (:template  "She [{1}] that ...")
                                (:choices '(("concludes" "comes to the conclusion" "reaches the conclusion"))))
                            (ht (:id 152)
                                (:template  "She [{1}] several reasons for ...")
                                (:choices '(("lists" "outlines" "describes" "provides"))))
                            (ht (:id 153)
                                (:template  "Her [{1}] is based on ...")
                                (:choices '(("theory" "solution" "proposal" "method" "approach"))))
                            (ht (:id 999)
                                (:template "")
                                (:choices '(())))))))))

(defun ht-get* (table &rest keys)
  (if (cdr keys)
      (apply #'ht-get* (ht-get table (car keys)) (cdr keys))
    (ht-get table (car keys))))

(defun ht-select-keys (table keys)
  "Return a copy of TABLE with only the specified KEYS."
  (let (result)
    (setq result (make-hash-table :test (hash-table-test table)))
    (dolist (key keys result)
      (if (not (equal (gethash key table 'key-not-found) 'key-not-found))
          (puthash key (gethash key table) result)))))

(defun replace-placeholders (tmp choices)
  (s-replace-all `(("{1}" . ,(s-join "/" (car choices)))
                   ("{2}" . ,(s-join "/" (cadr choices))))
                  tmp))

(defun prompt-categories (phrases)
  (ht-map (lambda (k v) (ht-get* phrases k :title))
          phrases))

(defun prompt-items (cat &optional phrases)
  "..."
  (unless phrases (setq phrases *phrases*))
  (mapcar (lambda (h)
           (cons (replace-placeholders
                   (ht-get h :template)
                   (ht-get h :choices))
            (ht-get h :id)))
         (get-items cat phrases)))

(defun filter-item (cat id &optional phrases)
  "..."
  (unless phrases (setq phrases *phrases*))
  (let* ((items (get-items cat phrases))
         (match (car (-filter (lambda (i)
                                (equal (ht-get i :id) id))
                              items))))
       match))

(defun get-cat (res &optional phrases)
  "..."
  (unless phrases (setq phrases *phrases*))
  (let ((item (ht-find (lambda (k v)
                         (equal (ht-get v :title)
                                res))
                       phrases)))
    (car item)))

(defun get-items (cat &optional phrases)
  "..."
  (unless phrases (setq phrases *phrases*))
  (ht-get* phrases cat :items))

(defun gen-cats-keywords (s e)
  "..."
  (let* ((i (-iterate '1+ s (- e (1- s))))
         (cats (mapcar (lambda (c)
                         (concat ":cat" (number-to-string c))) i)))
    (mapcar 'intern-soft cats)))

(defun academic-phrases-insert (phrases)
  (let* ((res (completing-read "Choose category:"
                               (prompt-categories phrases) nil t))
         (cat (get-cat res phrases))
         (items (prompt-items cat))
         (id (cdr (assoc (completing-read "Choose a phrase:"
                                          items nil t)
                         items)))
         (item (filter-item cat id))
         (phrase-prompt (car (rassoc id items)))
         (template (ht-get item :template))
         (choice1 (completing-read phrase-prompt
                                   (car (ht-get item :choices))
                                   nil t))
         (choice2 (when (s-contains? "{2}" template)
                        (completing-read phrase-prompt
                                         (cadr (ht-get item :choices))
                                         nil t)))
         (phrase (s-replace-all `(("[{1}]" . ,choice1)
                                  ("[{2}]" . ,choice2))
                                 template)))
    (insert phrase)))

(defun academic-phrases-by-section (section &optional phrases)
  "..."
  (unless phrases (setq phrases *phrases*))
  (cond ((equal section :abstract) (setq cats '(:cat1 :cat2 :cat4 :cat5)))
        ((equal section :intro) (setq cats (gen-cats-keywords 1 16)))
        ((equal section :review) (setq cats (concatenate 'list '(:cat4) (gen-cats-keywords 9 16))))
        ((equal section :methods) (setq cats (gen-cats-keywords 17 30)))
        ((equal section :results) (setq cats (gen-cats-keywords 29 40)))
        ((equal section :discussion) (setq cats (gen-cats-keywords 35 45)))
        ((equal section :conclusion) (setq cats (gen-cats-keywords 45 51)))
        ((equal section :acknowledgments) (setq cats '(:cat52)))
        (t (setq cats (gen-cats-keywords 1 57))))
  (academic-phrases-insert (ht-select-keys phrases cats)))

(defun academic-phrases ()
  (interactive)
  (academic-phrases-insert *phrases*))

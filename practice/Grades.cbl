IDENTIFICATION DIVISION.
PROGRAM-ID. GRADES.

DATA DIVISION.


       WORKING-STORAGE SECTION.
       01 TEST-RECORD.
           05 TEST-SCORE1 pic S9(3) VALUE 999.
           05 TEST-SCORE2 pic S9(3) VALUE 999.
           05 TEST-SCORE3 pic S9(3) VALUE 999.
           05 TEST-SCORE4 pic S9(3) VALUE 999.
           05 TEST-SCORE5 pic S9(3) VALUE 999.

PROCEDURE DIVISION.
       PERFORM UNTIL TEST-SCORE1 >=0 AND TEST-SCORE1 <= 100
           DISPLAY "Enter score 1: "
           ACCEPT TEST-SCORE1
           IF TEST-SCORE1 < 0 OR TEST-SCORE1 > 100
               DISPLAY "Invalid score. Please enter a score between 0 and 100."
           END-IF
       END-PERFORM.
       PERFORM UNTIL TEST-SCORE2 >=0 AND TEST-SCORE2 <= 100
              DISPLAY "Enter score 2: "
              ACCEPT TEST-SCORE2
              IF TEST-SCORE2 < 0 OR TEST-SCORE2 > 100
                DISPLAY "Invalid score. Please enter a score between 0 and 100."
              END-IF
       END-PERFORM.
       PERFORM UNTIL TEST-SCORE3 >=0 AND TEST-SCORE3 <= 100
           DISPLAY "Enter score 3: "
           ACCEPT TEST-SCORE3
           IF TEST-SCORE3 < 0 OR TEST-SCORE3 > 100
               DISPLAY "Invalid score. Please enter a score between 0 and 100."
           END-IF
       END-PERFORM.
       PERFORM UNTIL TEST-SCORE4 >=0 AND TEST-SCORE4 <= 100
           DISPLAY "Enter score 4: "
           ACCEPT TEST-SCORE4
           IF TEST-SCORE4 < 0 OR TEST-SCORE4 > 100
               DISPLAY "Invalid score. Please enter a score between 0 and 100."
           END-IF
       END-PERFORM.
       PERFORM UNTIL TEST-SCORE5 >=0 AND TEST-SCORE5 <= 100
           DISPLAY "Enter score 5: "
           ACCEPT TEST-SCORE5
           IF TEST-SCORE5 < 0 OR TEST-SCORE5 > 100
               DISPLAY "Invalid score. Please enter a score between 0 and 100."
           END-IF
       END-PERFORM.
       DISPLAY "The test scores are: " TEST-SCORE1 ", " TEST-SCORE2 ", " TEST-SCORE3 ", " TEST-SCORE4 ", " TEST-SCORE5.



       STOP RUN.

IDENTIFICATION DIVISION.
PROGRAM-ID. Paycheck.

DATA DIVISION.
    WORKING-STORAGE SECTION.
    01 HOURS-Worked pic 9(2)V9 value zero.
    01 Hourly-rate pic 9(2)V99 value 99.99.
    01 Gross-pay pic 9(5)V99 comp-3 value zero.
    01 display-pay pic $$$,$$9.99.
    01 error-flag pic X value 'N'.




PROCEDURE DIVISION.
    move 99 to hours-worked.
    compute Gross-pay = hours-worked * hourly-rate
        on size error 
            move 'Y' to error-flag
            display 'size error'
        not on size error display 'fix ok'
    end-compute.
    if error-flag = 'Y'
        display 'Paycheck not produced - see error'
    ELSE
        move Gross-pay to display-pay
        DISPLAY "Gross Pay: " display-pay
    END-if.

    STOP RUN.
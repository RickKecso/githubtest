        Identification Division.
        PROGRAM-ID. Filetestout.
       * file test program
        Environment Division.
        Input-Output section.
        File-Control.
        Select TestOutputFile assign to 'testoutputfile.txt'.
        Data Division.
        File Section.
        FD TestOutputFile.
        01 TestOutputRec.
            05  Test-Output-Key   PIC x(4).
            05  Filler            PIC x.
            05  Test-Other-Stuff  PIC x(20).
        Working-Storage Section.
        PROCEDURE DIVISION.
        Open output Testoutputfile.
        Move '0001' to Test-Output-Key.
        Move 'yaddayadda' to Test-Other-Stuff.
        Write TestOutputRec.
        Move '0002' to Test-Output-Key.
        Move 'yaddayadda etc' to Test-Other-Stuff.
        Write TestOutputRec.
        Close Testoutputfile.
        STOP RUN.

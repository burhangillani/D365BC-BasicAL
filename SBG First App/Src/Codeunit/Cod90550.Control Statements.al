codeunit 90550 "SBG Control Statements"
{
    procedure ifelsestatement()
    var
        A: Integer;
        B: Integer;

    begin
        A := 5;
        B := 6;
        if (A = B) then
            Message('Value A = %1 is equal to Value B = %2', A, B)
        else
            Message('Value A = %1 is not equal to Value B = %2', A, B);
    end;

    procedure CaseStatement()
    var
        OptionalNames: Option burhan,ali,arif;
    begin
        OptionalNames := OptionalNames::ali;
        case OptionalNames of
            OptionalNames::ali:
                Message('This is ali...Reporting Guru :) ');
            OptionalNames::arif:
                Message('This is Arif... urf lala :) ');
            OptionalNames::burhan:
                Message('This is Burhan');
            else
                Message('unexpected option');

        end;


    end;

}
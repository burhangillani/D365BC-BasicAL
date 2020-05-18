codeunit 90520 "SBG My Statements"
{
    trigger OnRun()
    begin

    end;

    procedure GetSuggestion(var Level: Text[30]; var Suggestion: Text[80]; Difficulty: Integer)
    begin
        Level := '';
        Suggestion := '';
        case Difficulty of
            1 .. 5:
                begin
                    Level := 'Beginner';
                    Suggestion := 'Take e-Learning or remote training';
                end;
            6 .. 8:
                begin
                    Level := 'Intermediate';
                    Suggestion := 'Attend Instructor-LED';
                end;
            9 .. 10:
                begin
                    Level := 'Advanced';
                    Suggestion := 'Attend Instructor-LED and Self-Study';
                end;
        end;
    end;
}
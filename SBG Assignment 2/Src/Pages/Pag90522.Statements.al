page 90522 "SBG Statements Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            group(Input)
            {
                field(Difficulty; Difficulty)
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    begin
                        MyStatments.GetSuggestion(Level, Suggestion, Difficulty);
                    end;
                }
            }
            group(Output)
            {
                field(Level; Level)
                {
                    ApplicationArea = All;
                }
                field(Suggestion; Suggestion)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    var
        Level: Text[30];
        Suggestion: Text[80];
        Difficulty: Integer;
        MyStatments: Codeunit "SBG My Statements";
}
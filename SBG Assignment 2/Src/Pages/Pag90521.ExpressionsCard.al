page 90521 "SBG Expressions Card"
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
                field(Value1; Value1)
                {
                    ApplicationArea = all;
                }
                field(Value2; Value2)
                {
                    ApplicationArea = all;
                }
            }
            group(Output)
            {
                field(Result; Result)
                {
                    ApplicationArea = all;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Execute)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Result := Value1 > Value2;
                end;
            }
        }
    }

    var
        Value1: Integer;
        Value2: Integer;
        Result: Boolean;
}
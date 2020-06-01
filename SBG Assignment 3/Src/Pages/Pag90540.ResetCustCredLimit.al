page 90540 "SBG Reset Cred. Limit"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;

    trigger OnOpenPage()
    var
        ResetCodeUnit: Codeunit "SBG Reset Cred. Limit";
    begin
        ResetCodeUnit.Run();
    end;

}
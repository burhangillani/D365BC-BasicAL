page 90525 "SBG Example Setup"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "SBG Example Setup";

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Example Nos."; "Example Nos.")
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {

        }
    }
    trigger OnOpenPage()
    begin
        if not Get() then
            Insert;
    end;
}
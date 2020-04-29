page 90580 "EIE Sales Invoice Header"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = "Sales Invoice Header";

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; "No.") { ApplicationArea = All; }
                field("Sell-to Customer No."; "Sell-to Customer No.") { ApplicationArea = All; }
                field("Posting Date"; "Posting Date") { ApplicationArea = All; }
                field("Sell-to County"; "Sell-to County") { ApplicationArea = All; }
                field("Document Date"; "Document Date") { ApplicationArea = All; }
            }
        }
    }
}
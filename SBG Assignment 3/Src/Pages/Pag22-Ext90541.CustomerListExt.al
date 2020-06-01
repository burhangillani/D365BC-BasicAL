pageextension 90541 "SBG Customer List Ext" extends "Customer List"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addafter("&Customer")
        {
            action("Export to XML")
            {
                ApplicationArea = All;
                RunObject = xmlport 90540;

            }
            action("Export to CSV")
            {
                ApplicationArea = All;
                RunObject = xmlport 90541;

            }
        }
    }

    var
        myInt: Integer;
}
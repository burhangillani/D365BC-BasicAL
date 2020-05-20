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
                RunObject = xmlport 90540;

            }
            action("Export to CSV")
            {
                RunObject = xmlport 90541;

            }
        }
    }

    var
        myInt: Integer;
}
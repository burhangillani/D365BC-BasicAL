pageextension 90542 "SBG Sales Order" extends "Sales Order"
{
    layout
    {
        addlast(General)
        {
            field("My New Field"; "My New Field")
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}
tableextension 90543 "SBG Sales Invoice Header" extends "Sales Invoice Header"
{
    fields
    {
        field(90500; "My New Field"; Text[100])
        {

        }
    }

    var
        myInt: Integer;
}
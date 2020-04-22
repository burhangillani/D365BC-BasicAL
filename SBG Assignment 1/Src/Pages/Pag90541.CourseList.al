page 90541 "SBG Course List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = "SBG Course";
    Caption = 'SBG Course List';
    Editable = false;
    CardPageId = "SBG Course Card";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                Caption = 'General';
                field(Code; Code) { ApplicationArea = all; }
                field(Name; Name) { ApplicationArea = all; }
                field(Description; Description) { ApplicationArea = all; }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}
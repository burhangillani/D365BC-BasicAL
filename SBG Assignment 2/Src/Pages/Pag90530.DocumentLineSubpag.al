page 90530 "SBG Document Line Subpage"
{
    PageType = ListPart;
    SourceTable = "SBG Document Line";
    AutoSplitKey = true;
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Document No."; "Document No.")
                {
                    ApplicationArea = All;
                }
                field("Example Description"; "Example Description")
                {
                    ApplicationArea = All;
                }
                field("Egg Date"; "Egg Date")
                {
                    ApplicationArea = All;
                }
                field(Quantity; Quantity)
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
page 90527 "SBG Example List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Example;
    CardPageId = "SBG Example Card";
    Editable = false;


    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("No."; "No.")
                {
                    ApplicationArea = All;
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                }
                field("Example Type Code"; "Example Type Code")
                {
                    ApplicationArea = All;
                }
            }
        }
        area(Factboxes)
        {
            systempart(Control7; Notes)
            {
                ApplicationArea = All;
            }
            systempart(Control8; Links)
            {
                ApplicationArea = All;
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
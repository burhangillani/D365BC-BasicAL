page 90524 "SBG Customer OverView List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "SBG Customer Overview";
    Editable = false;
    Caption = 'Customer OverView';

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                Caption = 'General';
                field("Entry No."; "Entry No.")
                {
                    ApplicationArea = All;
                }
                field("Customer No."; "Customer No.")
                {
                    ApplicationArea = All;
                }
                field("Customer Name"; "Customer Name")
                {
                    ApplicationArea = All;
                }
                field("Source Code"; "Source Code")
                {
                    ApplicationArea = All;
                }
                field(Amount; Amount)
                {
                    ApplicationArea = All;
                }
                field(LastRunDate; LastRunDate)
                {
                    ApplicationArea = All;
                }
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
            action("Import Records")
            {
                ApplicationArea = All;

                trigger OnAction();
                var
                    UpdateCustomerOverview: Codeunit "SBG Update Customer Overview";
                begin
                    UpdateCustomerOverview.Run();
                end;
            }
        }
    }
}
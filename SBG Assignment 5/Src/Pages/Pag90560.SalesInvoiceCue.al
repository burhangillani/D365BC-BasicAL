page 90560 "SBG Sales Invoice Cue"
{
    PageType = CardPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "SBG Sales Invoice Cue";

    layout
    {
        area(Content)
        {
            cuegroup("Sales Invoices")
            {
                Caption = 'Sales Invoices';
                field("Sales Invoice-Open"; "Sales Invoice-Open")
                {
                    Caption = 'Open';
                    ApplicationArea = All;
                    DrillDownPageId = "Sales Invoice List";
                }
                field("Sales This Month"; "Sales This Month")
                {
                    ApplicationArea = all;
                    Caption = 'Sales This Month';
                    DrillDownPageId = "Customer Ledger Entries";
                    AutoFormatType = 10;
                    AutoFormatExpression = 'Kr <precision,0:0><standard format,0>';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("New Sales Invoice")
            {
                ApplicationArea = All;
                Caption = 'New Sales Invoice';
                RunPageMode = Create;
                RunObject = page "Sales Invoice";
            }
        }
    }
    trigger OnOpenPage()
    begin
        Reset();
        if not Get() then begin
            Init();
            Insert();
        end;
    end;

    trigger OnAfterGetRecord()
    var
        myInt: Integer;
    begin
        "Sales This Month" := CalcSalesThisMonthAmount();
    end;

    var
        myInt: Integer;
}
table 90560 "SBG Sales Invoice Cue"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Primary Key"; Code[10])
        {

        }
        field(2; "Sales Invoice-Open"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count ("Sales Header" where("Document Type" = filter(Invoice), Status = filter(Open)));
        }
        field(3; "Sales This Month"; Decimal)
        {

        }
    }

    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }

    procedure CalcSalesThisMonthAmount() Amount: Decimal
    var
        CustLedgEntry: Record "Cust. Ledger Entry";
        CustLedgEntrySales: Query "SBG Cust. Ledg. Entry Sales";
    begin
        CustLedgEntrySales.SetRange(Document_Type, CustLedgEntry."Document Type"::Invoice);
        CustLedgEntrySales.SetRange(Posting_Date, CalcDate('<-CM>', WorkDate()), WorkDate());
        CustLedgEntrySales.Open();
        if CustLedgEntrySales.Read() then
            Amount := CustLedgEntrySales.Sum_Sales__LCY_;
    end;

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}
table 90520 "SBG Customer Overview"
{

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(2; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
        }
        field(3; "Customer Name"; Text[50])
        {
            Caption = 'Customer Name';
        }
        field(4; "Source Code"; Code[20])
        {
            Caption = 'Source Code';
        }
        field(5; "Amount"; Decimal)
        {
            Caption = 'Amount';
        }
        field(6; "LastRunDate"; DateTime)
        {
            Caption = 'Last Run Date';
        }
    }

    keys
    {
        key(PK; "Entry No.") { }
    }

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
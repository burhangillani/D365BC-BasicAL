table 90520 "SBG Customer Overview"
{

    fields
    {
        field(1; "Entry No."; Integer)
        {

        }
        field(2; "Customer No."; Code[20])
        {

        }
        field(3; "Customer Name"; Text[50])
        {

        }
        field(4; "Source Code"; Code[20])
        {

        }
        field(5; "Amount"; Decimal)
        {

        }
        field(6; "LastRunDate"; DateTime)
        {

        }
    }

    keys
    {
        key(PK; "Entry No.") { }
    }

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
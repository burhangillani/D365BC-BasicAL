table 90525 "SBG Document Line"
{

    fields
    {
        field(1; "Document No."; Code[20])
        {
        }
        field(2; "Line No."; Integer)
        {
        }
        field(3; "Example No."; Code[20])
        {
            TableRelation = Example;
        }
        field(4; "Egg Date"; Date)
        {
        }
        field(6; Quantity; Decimal)
        {
            DecimalPlaces = 0 : 0;
        }
        field(7; "Example Description"; Text[50])
        {
            FieldClass = FlowField;
            CalcFormula = lookup (Example.Description where("No." = field("Example No.")));
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Document No.", "Line No.")
        {
            Clustered = true;
        }
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
table 90530 "SBG Course"
{

    fields
    {
        field(10; Code; Code[10]) { }
        field(20; Name; Text[30]) { }
        field(30; Description; Text[50]) { }
        field(40; Duration; Duration) { }
        field(50; Type; Option)
        {
            OptionMembers = "Instructor LED","E-Learning","Remote Training";
        }
        field(60; Prices; Decimal) { }
        field(70; Active; Boolean) { }
        field(80; Difficulty; Integer) { }
        field(90; "Passing Rate"; Integer) { }
        field(100; "Instructor Code"; Code[20])
        {
            TableRelation = Resource where(Type = const(Person));
        }
        field(120; "Instructor Name"; Text[50])
        {
            FieldClass = FlowField;
            CalcFormula = lookup (Resource.Name where("No." = field("Instructor Code")));
            Editable = false;
        }

    }

    keys
    {
        key(PK; Code) { }
        key("Secondary Key 1"; "Instructor Code") { }
        key("Secondary Key 2"; Type) { }

    }

}
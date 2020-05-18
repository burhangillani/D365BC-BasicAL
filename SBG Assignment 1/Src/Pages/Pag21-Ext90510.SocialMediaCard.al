pageextension 90510 "SBG Social Media Card" extends "Customer Card"
{
    layout
    {
        addafter("Disable Search by Name")
        {
            field(Facebook; Facebook) { ApplicationArea = all; }
            field(Twitter; Twitter) { ApplicationArea = all; }
            field(Instagram; Instagram) { ApplicationArea = all; }
            field(Linkedin; Linkedin) { ApplicationArea = all; }
        }
    }


}
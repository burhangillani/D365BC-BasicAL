codeunit 90551 "SBG Repetitive Statements"
{
    procedure forloop()
    var
        i: Integer;
        namesarray: array[4] of Text;
        Customer: Record Customer;
    begin

        for i := 1 to 4 do begin
            namesarray[1] := 'Ali';
            namesarray[2] := 'Zubair';
            namesarray[3] := 'Ahmed';
            namesarray[4] := 'Burhan';

            Message('value %1 of array is %2', i, namesarray[i]);
        end;
    end;

    procedure foreachloop()
    var
        SubjectsList: List of [Text];
        SubjectName: Text;
    begin
        SubjectsList.Add('OOP');
        SubjectsList.Add('AL code');
        SubjectsList.Add('C/AL Code');
        SubjectsList.Add('Web Services');

        foreach SubjectName in SubjectsList do begin
            Message('Subject Name = %1', SubjectName);
        end;
    end;

    procedure whileloop()
    var
        customers: array[5] of Text;
        i: Integer;
        j: Integer;

    begin

        for i := 1 to ArrayLen(customers) do
            customers[i] := 'Customer ' + Format(i);

        j := 1;
        while j <= ArrayLen(customers) do begin

            Message('Customer Name = %1', customers[j]);
            j := j + 1;

        end;

    end;

    procedure RepeatUntilLoop()
    var
        countrecords: Integer;
        Customer: Record Customer;

    begin

        countrecords := 0;
        if Customer.Find('-') then begin
            repeat
                countrecords := countrecords + 1;
                Message('Customer name = %1', Customer.Name);
            until Customer.Next <= 0;
            Message('No. of Records in Customer Table = %1', countrecords);

        end;

    end;

    procedure DictionayCollection()
    var
        CustomerNames: List of [Text];
        CustomerNames2: List of [Text];
        CountriesCode: Dictionary of [Code[20], List of [Text]];
    begin
        CustomerNames.Add('Ali');
        CustomerNames.Add('zubi');
        Message(CustomerNames.Get(2));

        CustomerNames2.Add('Jack');
        CustomerNames2.Add('Peter');
        CountriesCode.Add('Uk', CustomerNames);
        CountriesCode.Add('US', CustomerNames2);

        Message(CountriesCode.Get('US').Get(2));
        //it will return Peter.
    end;
}
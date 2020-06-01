query 90540 "SBG Top 10 Customer Revenue"
{
    QueryType = Normal;
    OrderBy = descending(Sum_Amount__LCY);
    TopNumberOfRows = 10;

    elements
    {
        dataitem(Customer; Customer)
        {
            column(No_; "No.")
            {
            }
            column(Name; Name)
            {
            }
            column(Customer_Posting_Group; "Customer Posting Group")
            {
            }
            dataitem(Cust_Ledg_Entry; "Cust. Ledger Entry")
            {
                DataItemLink = "Customer No." = Customer."No.";
                SqlJoinType = InnerJoin;
                DataItemTableFilter = "Document Type" = filter(Invoice | "Credit Memo");
                column(Sum_Amount__LCY; "Amount (LCY)")
                {
                    Method = Sum;
                }
            }


        }

    }




    trigger OnBeforeOpen()
    begin

    end;
}
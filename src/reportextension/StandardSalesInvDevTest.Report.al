reportextension 50100 "Standard Sales - Inv.-DevTest" extends "Standard Sales - Invoice"
{
    dataset
    {
        add(Line)
        {
            column(Seminar_No__DevTest; "Seminar No.-DevTest")
            {
            }
            column(Seminar_Line_Lbl; FieldCaption("Seminar No.-DevTest"))
            {
            }
        }
    }
    rendering
    {
        layout(SeminarLayout)
        {
            Type = Word;
            LayoutFile = './src/reportlayout/SalesInvoiceDevTest.docx';
            Caption = 'Sales Invoice - Seminar DevTest';
        }
    }
}

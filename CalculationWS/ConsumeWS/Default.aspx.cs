

private string GetResult(string firstNumber, string secondNumber, int function)
    {
        ServiceReference.CalculatorWebServiceSoapClient client = 
            new ServiceReference.CalculatorWebServiceSoapClient();

        int a, b;
        string result = null;

        erra.Text = "";
        errb.Text = "";

        if (!int.TryParse(firstNumber, out a))
        {
            erra.Text = "Must be a valid 32-bit integer!";
            return "";
        }

        if (!int.TryParse(secondNumber, out b))
        {
            errb.Text = "Must be a valid 32-bit integer!";
            return "";
        }

        try
        {
            switch (function)
            {
                case 0:
                    result = firstNumber + " + " + secondNumber + 
			" = " + client.Add(a, b);
                    break;
                case 1:
                    result = firstNumber + " - " + secondNumber + " = "
                    + client.Subtract(a, b);
                    break;
                case 2:
                    result = firstNumber + " * " + secondNumber + " = " + client.Multiply(a, b);
                    break;
                case 3:
                    result = firstNumber + " / " +
                    secondNumber + " = " + client.Division(a, b);
                    break;
            }
        }
        catch (Exception e)
        {
            LabelResult.ForeColor = System.Drawing.Color.Red;
            result = "Cannot Divide by Zero!";
        }
        return result;
    }

protected void btnCalculate(object sender, EventArgs e)
    {
        LabelResult.ForeColor = System.Drawing.Color.Black;
        LabelResult.Text = GetResult(txtNumberOne.Text,txtNumberTwo.Text,ddlMethod.SelectedIndex);
    }


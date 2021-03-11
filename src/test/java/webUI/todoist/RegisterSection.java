package webUI.todoist;

import webUI.controls.Button;
import webUI.controls.TextBox;
import org.openqa.selenium.By;

public class RegisterSection {
    public TextBox addEmail = new TextBox(By.xpath("//*[@id=\"email\"]"));
    public Button registerWithEmail = new Button(By.xpath("//*[@id=\"step_one_submit\"]"));
    public TextBox addName = new TextBox(By.xpath("//*[@id=\"full_name\"]"));
    public TextBox addPassword = new TextBox(By.xpath("//*[@id=\"pwd\"]"));
    public Button registerNow = new Button(By.xpath("//*[@id=\"step_two_submit\"]"));
}

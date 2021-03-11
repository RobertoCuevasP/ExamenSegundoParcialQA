package webUI.todoist;

import webUI.controls.Button;
import webUI.controls.Label;
import webUI.controls.TextBox;
import org.openqa.selenium.By;

public class LeftSection {

    public Button perfilOpciones = new Button(By.xpath("//*[@id=\"top_bar_inner\"]/div[2]/button[5]/img"));
    public Button configurationButton = new Button(By.xpath("//*[@id=\"user_menu_settings_menuitem\"]"));
    public Button editNameButton = new Button(By.xpath("//*[@id=\"personal_info\"]/dd/a"));
    public TextBox newNameTextBox = new TextBox(By.xpath("//*[@id=\"personal_info\"]/dd/form/input"));
    public Button saveButton = new Button(By.xpath("//*[@id=\"personal_info\"]/dd/form/a[1]"));
    public Label information = new Label(By.xpath("//*[@id=\"personal_info\"]/dd/span"));
    public Button cerrarSesionButton = new Button(By.xpath("//*[@id=\"id-plvseo-19\"]"));
}

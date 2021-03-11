package webUI.ejercicios4y6;

import org.junit.Assert;
import org.junit.Test;
import webUI.todoist.LeftSection;
import webUI.todoist.MainPage;
import webUI.todoist.RegisterSection;
import webUI.todoist.SelectTheme;

public class Ejercicio4 extends TestBaseTodoist{

    LeftSection leftSection= new LeftSection();
    MainPage mainPage = new MainPage();
    RegisterSection registerSection = new RegisterSection();
    SelectTheme selectTheme = new SelectTheme();

    String name = "Roberto Cuevas Pinto";
    String newName = "Roberto Pablo Cuevas Pinto";
    String email = "robertocuevasp1@upb.com";
    String pwd = "12345678";

    @Test
    public void verify_creation_project(){

        //Ingresar a registrarse
        mainPage.registerButton.click();


        //Registrar Correo
        registerSection.addEmail.set(email);
        registerSection.registerWithEmail.click();
        registerSection.addName.set(name);
        registerSection.addPassword.set(pwd);
        registerSection.registerNow.click();

        //Select Theme
        selectTheme.selectTheme.click();

        //Cambiar Nombre
        leftSection.perfilOpciones.click();
        leftSection.configurationButton.click();
        leftSection.editNameButton.click();
        leftSection.newNameTextBox.set(newName);
        leftSection.saveButton.click();
        Assert.assertEquals("Error, el nombre no fue cambiado", newName, leftSection.information.getAttributeValue("innerText"));


    }
}

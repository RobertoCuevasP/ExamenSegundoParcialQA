package webUI.ejercicio5;

import org.junit.Assert;
import org.junit.Test;
import webUI.todoLy.LeftSection;
import webUI.todoLy.LoginModal;
import webUI.todoLy.MainPage;
import webUI.todoLy.MenuSection;

public class Ejercicio5 extends TestBaseTodoLy{

    MainPage mainPage= new MainPage();
    LoginModal loginModal= new LoginModal();
    MenuSection menuSection= new MenuSection();
    LeftSection leftSection = new LeftSection();
    String user = "rcuevas2021@upb.com";
    String pwd = "1234";

    @Test
    public void verify_recycle_bin() throws InterruptedException {

        //Login
        mainPage.loginImage.click();
        loginModal.emailTextBox.set(user);
        loginModal.pwdTextBox.set(pwd);
        loginModal.loginButton.click();
        Assert.assertTrue("ERROR, no se logueo",menuSection.logoutButton.controlIsDisplayed());

        this.waitOnSecond(3);
        //Recycle Bin
        leftSection.recycleBinButton.click();
        this.waitOnSecond(2);
        leftSection.desplegarMenuButton.click();
        this.waitOnSecond(2);
        leftSection.vaciarPapeleraButton.click();
        Assert.assertEquals("There are no items to display",leftSection.messageNoItems.getAttributeValue("innerText"));
    }

}

package webUI.ejercicios4y6;

import org.junit.After;
import org.junit.Before;
import webUI.singletonSession.Session;

import java.io.IOException;

public class TestBaseTodoist {
    @Before
    public void open(){
        Session.getSession().getDriver().get("https://todoist.com/es");
    }

    @After
    public void close() throws IOException {
        Session.getSession().closeSession();
        this.killChromeDriver();
    }

    public void killChromeDriver() throws IOException {
        Runtime.getRuntime().exec("taskkill /F /IM chromedriver.exe /T");
    }
}

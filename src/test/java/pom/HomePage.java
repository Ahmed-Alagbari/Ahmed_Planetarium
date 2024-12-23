package pom;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.Select;

import java.util.List;

public class HomePage {

    private WebDriver driver;

    @FindBy(id="locationSelect")
    public WebElement list;

    @FindBy(id = "greeting")
    private WebElement greetingHeader;

    @FindBy(id = "logoutButton")
    private WebElement logoutButton;

    @FindBy(tagName = "tr")
    private List<WebElement> tableRows;


    public HomePage(WebDriver driver) {
        this.driver = driver;
        PageFactory.initElements(driver, this);
    }


//    WebElement selectMoon = driver.findElement(By.cssSelector("option[value=moon]"));
//    WebElement selectPlanet = driver.findElement(By.cssSelector("option[value=planet]"));

    public void selectPlanetInput(){
        Select select = new Select(list);
        select.selectByValue("planet");
    }
    public void selectMoonInput(){
        Select select = new Select(list);
        select.selectByValue("moon");
    }

    public String getHomePageGreeting(){
        return greetingHeader.getText();
    }

    public int getNumberOfCelestialRows(){
        return tableRows.size()-1;
    }
    public void tryToAccessHomePageDirectly(){
        driver.get("http://localhost:8080/planetarium");
    }

    public void logout(){
        logoutButton.click();
    }

}

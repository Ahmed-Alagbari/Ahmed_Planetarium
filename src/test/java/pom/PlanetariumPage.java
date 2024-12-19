package pom;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class PlanetariumPage{
    private WebDriver driver;

    @FindBy(linkText = "Create an Account")
    private WebElement registerLink;

    @FindBy(id="usernameInput")
    private WebElement usernameInput;

    @FindBy(id="passwordInput")
    private WebElement passwordInput;

    @FindBy(xpath="//input[@type='submit']")
    private WebElement loginButton;


}
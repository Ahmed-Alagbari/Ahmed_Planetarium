package pom;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class LoginPage {
    private WebDriver driver;

    @FindBy(linkText = "Create an Account")
    private WebElement registerLink;

    @FindBy(id="usernameInput")
    private WebElement usernameInput;

    @FindBy(id="passwordInput")
    private WebElement passwordInput;

    @FindBy(xpath="//input[@type='submit']")
    private WebElement loginButton;

    public LoginPage(WebDriver driver){
        this.driver = driver;
        PageFactory.initElements(driver,this);
    }

    public void goToPlanetarium(){
        driver.get("http://localhost:8080");
    }

    public void clickLoginButton(){
        loginButton.click();
    }

    public void clickRegisterLink(){
        registerLink.click();
    }

}
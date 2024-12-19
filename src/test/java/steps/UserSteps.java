package steps;

/*
      Given the user is on the login page
      When the user clicks the register link
      When the user provides a "<Username>"
      And the user provides a "<Password>"
      And the user submits the credentials
      Then the user should get a browser alert "<ExpectedResult>"
      And the user is redirected to "<Page>"
 */

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class UserSteps {

    @Given("the user is on the login page")
    public void user_on_login_page(){

    }

    @When("the user clicks the register link")
    public void use_click_register_link(){

    }

    @When("the user provides a {string}")
    public void user_provides_username(){

    }

    @And("the user provides a {string}")
    public void user_provides_password(){

    }

    @And("the user submits the credentials")
    public void user_submits_credentials(){

    }

    @Then("the user should get a browser alert {ExpectedResult}")
    public void browser_alert(){

    }

    @And("the user is redirected to <Page>")
    public void page_redirection(){

    }


}

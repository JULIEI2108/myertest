import { Given, When, And, Then, Before } from "cypress-cucumber-preprocessor/steps" ;
const userData = {
    email: 'jinjinlei2108+test96@gmail.com',
    password: 'Myertestsample1',
    firstname:'James',
    lastname: 'Thomas',
    birthday:'01/01/1999',
    mobile: '0415482049',
    address:'103B/1093 Plenty Road,Bundoora, Vic 3083'
}
Before(() => {
    cy.on('uncaught:exception', (err, runnable) => {
      return false;
    });
  });
  
Given("I am on the Myer registration page", ()=>{
    cy.visit('https://www.myer.com.au/join');
})

When("I fill in the email input field with valid email address", ()=>{
    cy.get('#email').clear().type(userData.email);
})

And("I click Join button", ()=>{
    cy.contains('button', 'Join').click();
})

Then("I should see input field for password", ()=>{
    cy.get('#password').should('be.visible');
})

When("I fill in the password input field with a valid password", () => {
    cy.get('#password').clear().type(userData.password);
  });
  
  And("I fill in the first name input field with a valid first name", () => {
    cy.get('#first-name').clear().type(userData.firstname);
  });
  
  And("I fill in the last name input field with a valid last name", () => {
    cy.get('#last-name').clear().type(userData.lastname);
  });
  
  And("I fill in the mobile phone input field with a valid mobile phone number", () => {
    cy.get('#mobile-phone').clear().type(userData.mobile);
  });
  
  And("I fill in the date of birth input field with a valid date of birth", () => {
    cy.get('#date-of-birth').clear().type(userData.birthday);
  });
  
  And("I fill in the address input field with a valid address", () => {
    cy.get('#address').clear().type(userData.address);
  });
  
  And("I select the address from the suggested options", () => {
    cy.get('.MuiButtonBase-root[role="button"]').contains('Unit 103b 1093 Plenty Road, BUNDOORA VIC 3083').should('be.visible').click();
  });
  
  And("I click the Create Account button", () => {
    cy.get('[id=create-account]').should('be.visible').click();
  });
  
  Then("I should see a success message confirming the account creation", () => {
    cy.get('span', { timeout: 500000 })
      .contains('Congratulations, your account has been created and your MYER one number has been added')
      .should('be.visible');
  });

  
  
  
  
  
  
class OnboardingPage {

  String imageUrl;
  String title;
  String description;

  OnboardingPage(this.imageUrl, this.title, this.description);

}

List<OnboardingPage> getOnboardingPages(){
  return <OnboardingPage>[
    OnboardingPage("assets/images/onboarding_1.png", "Quick and easy.", "Millions of customers around the world use us for one simple reason: it's simple. Just an email address and password will get you through to check out before you can reach for your wallet."),
    OnboardingPage("assets/images/onboarding_2.png", "We've got you covered.", "Shop with peace of mind, knowing we protect your elegible purchases. If an eligible item doesn't show up, or turns out to be different than described, we'll help sort things out with the seller."),
    OnboardingPage("assets/images/onboarding_3.png", "Shop around the world.", "No need to book a flight ticket to shop worldwide. With a PayPal account you can shop at thousands of stores around the world in just a fwe clicks, knowing your card details are never shared with the seller."),
  ];
}
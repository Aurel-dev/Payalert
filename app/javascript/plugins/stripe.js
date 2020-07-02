
const initStripe = () => {
  const clientSecretElement = document.querySelector("#client_secret");

  if (clientSecretElement) {

    const stripe = Stripe('pk_test_51GxrUBDNX4MweYnnW4sgkFwEsEIdOay5pDEHxdeI6H6vbTepbYnsXgb0fbsikaHYnnJdSxMBR2MZgG5PNZc6Unkt00qIn76yZU');
    const elements = stripe.elements();

    const style = {
        base: {
          color: "#32325d",
       }
    };

    const card = elements.create("card", { style: style });
    card.mount("#card-element");

    card.on('change', function(event) {
      var displayError = document.getElementById('card-errors');
      if (event.error) {
        displayError.textContent = event.error.message;
      } else {
        displayError.textContent = '';
      }
    });

    const button = document.getElementById("submit");

    button.addEventListener("click", (event) => {
      const clientSecret = document.querySelector("#client_secret").dataset.clientSecret;
      console.log(clientSecret);

      const paymentForm = document.querySelector('.payment-form');
      const awaitingIntent = document.querySelector('.awaiting-intent');
      const intentConfirmed = document.querySelector('.intent-confirmed');

      paymentForm.style.display = 'none';
      awaitingIntent.style.display = 'block';

      stripe.confirmCardPayment(clientSecret, {
        payment_method: {
          card: card,
          billing_details: {
            name: 'Jenny Rosen'
          }
        },
        setup_future_usage: 'off_session'
      }).then(function(result) {
        if (result.error) {
          console.log(result.error.message);
        } else {
          if (result.paymentIntent.status === 'succeeded') {
            awaitingIntent.style.display = 'none';
            intentConfirmed.style.display = 'block';
          }
        }
      });
    });
  }
}

export { initStripe };


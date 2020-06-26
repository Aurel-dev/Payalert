// var stripe = Stripe('pk_test_51GxrUBDNX4MweYnnW4sgkFwEsEIdOay5pDEHxdeI6H6vbTepbYnsXgb0fbsikaHYnnJdSxMBR2MZgG5PNZc6Unkt00qIn76yZU');
// var elements = stripe.elements();

// var style = {
//     base: {
//       color: "#32325d",
//    }
// };
  
// var card = elements.create("card", { style: style });

// card.mount("#card-element");


// // Etape 4 

//   card.on('change', function(event) {
//     var displayError = document.getElementById('card-errors');
//     if (event.error) {
//       displayError.textContent = event.error.message;
//     } else {
//       displayError.textContent = '';
//     }
//   });

// // Etape 5 :  Submit the payment to Stripe
//   const clientSecret = document.querySelector("#client_secret").dataset.clientSecret;
//   stripe.confirmCardPayment(clientSecret, {
//     payment_method: {
//       card: card,
//       billing_details: {
//         name: 'Jenny Rosen'
//       }
//     },
//     setup_future_usage: 'off_session'
//   }).then(function(result) {
//     if (result.error) {
//       // Show error to your customer
//       console.log(result.error.message);
//     } else {
//       if (result.paymentIntent.status === 'succeeded') {
//         // Show a success message to your customer
//         // There's a risk of the customer closing the window before callback execution
//         // Set up a webhook or plugin to listen for the payment_intent.succeeded event
//         // to save the card to a Customer
//         console.log("youpi");
  
//         // The PaymentMethod ID can be found on result.paymentIntent.payment_method
//       }
//     }
//   });


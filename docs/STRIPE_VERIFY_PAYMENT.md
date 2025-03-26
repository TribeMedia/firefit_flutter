# Stripe Payment Verification - Supabase Edge Function

This document provides the code and setup instructions for the `verify-payment-session` Supabase Edge Function that verifies Stripe payment sessions in the FireFit application.

## Overview

The `verify-payment-session` function retrieves information about a Stripe Checkout Session using the session ID. This allows the app to display detailed transaction information on the payment success screen.

## Prerequisites

- Supabase account with access to Edge Functions
- Stripe account with API access
- Supabase CLI installed locally

## Setup Instructions

### 1. Install Supabase CLI

If you haven't already installed the Supabase CLI:

```bash
# Using Homebrew (macOS)
brew install supabase/tap/supabase

# Using NPM
npm install -g supabase
```

### 2. Login to Supabase

```bash
supabase login
```

### 3. Initialize Supabase Functions in Your Project

```bash
# Navigate to your project root
cd your-project-root
supabase init
```

### 4. Create the Edge Function

```bash
supabase functions new verify-payment-session
```

### 5. Configure Stripe Secret Key

Add your Stripe secret key to Supabase secrets:

```bash
supabase secrets set STRIPE_SECRET_KEY=sk_test_your_stripe_secret_key
```

For production, use your production Stripe key.

## Edge Function Code

Replace the contents of the generated `supabase/functions/verify-payment-session/index.ts` file with the following code:

```typescript
// supabase/functions/verify-payment-session/index.ts
import { serve } from 'https://deno.land/std@0.131.0/http/server.ts'
import { corsHeaders } from '../_shared/cors.ts'
import Stripe from 'https://esm.sh/stripe@12.6.0?target=deno'

const stripe = new Stripe(Deno.env.get('STRIPE_SECRET_KEY') || '', {
  apiVersion: '2022-11-15',
  httpClient: Stripe.createFetchHttpClient(),
})

serve(async (req) => {
  // Handle CORS preflight requests
  if (req.method === 'OPTIONS') {
    return new Response('ok', { headers: corsHeaders })
  }

  try {
    // Parse the request body
    const { sessionId } = await req.json()
    
    if (!sessionId) {
      return new Response(
        JSON.stringify({ error: 'Session ID is required' }),
        { 
          status: 400, 
          headers: { 
            ...corsHeaders,
            'Content-Type': 'application/json',
          } 
        }
      )
    }

    // Retrieve the checkout session from Stripe
    const session = await stripe.checkout.sessions.retrieve(
      sessionId,
      {
        expand: ['line_items', 'payment_intent']
      }
    )

    // If session exists, look up the order in the database (optional)
    // This would require database access, which you can implement
    // using the Supabase client if needed

    // Format the response data
    const responseData = {
      id: session.id,
      status: session.status,
      amount: session.amount_total,
      currency: session.currency,
      customer_email: session.customer_email,
      payment_status: session.payment_status,
      payment_method_types: session.payment_method_types,
      order_id: session.metadata?.order_id || null,
      // Include line items if needed
      items: session.line_items?.data.map(item => ({
        name: item.description,
        quantity: item.quantity,
        amount: item.amount_total,
      })),
      // Add any additional data you need from the session
    }

    // Return the formatted data
    return new Response(
      JSON.stringify(responseData),
      { 
        status: 200, 
        headers: { 
          ...corsHeaders,
          'Content-Type': 'application/json',
        } 
      }
    )
    
  } catch (error) {
    // Handle errors
    console.error('Error:', error)
    return new Response(
      JSON.stringify({ error: error.message }),
      { 
        status: 400, 
        headers: { 
          ...corsHeaders,
          'Content-Type': 'application/json',
        } 
      }
    )
  }
})
```

### Create CORS Helpers

Create a file at `supabase/functions/_shared/cors.ts` with the following content:

```typescript
// supabase/functions/_shared/cors.ts
export const corsHeaders = {
  'Access-Control-Allow-Origin': '*',
  'Access-Control-Allow-Headers': 'authorization, x-client-info, apikey, content-type',
  'Access-Control-Allow-Methods': 'POST, OPTIONS',
}
```

## Deployment

Deploy the function to your Supabase project:

```bash
supabase functions deploy verify-payment-session --project-ref your-project-ref
```

Replace `your-project-ref` with your Supabase project reference ID.

## Testing

You can test the function locally before deploying:

```bash
supabase functions serve verify-payment-session --env-file .env.local
```

Make sure to create a `.env.local` file with your Stripe test secret key:

```
STRIPE_SECRET_KEY=sk_test_your_stripe_secret_key
```

## Usage in Flutter App

The function is already integrated in the `PaymentSuccessScreen` with the following provider:

```dart
final paymentSessionProvider = FutureProvider.family<Map<String, dynamic>?, String?>(
  (ref, sessionId) async {
    if (sessionId == null) return null;
    
    try {
      final response = await http.post(
        Uri.parse('${Environment().supabaseBaseUrl}/functions/v1/verify-payment-session'),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({'sessionId': sessionId}),
      );
      
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      }
      return null;
    } catch (e) {
      return null;
    }
  }
);
```

## Security Considerations

1. **Environment Variables**: Never hardcode your Stripe secret key in your code.
2. **Production vs Development**: Use different keys for development and production environments.
3. **Error Handling**: The function has proper error handling to prevent leaking sensitive information.
4. **CORS**: The function uses CORS headers to control access. Consider restricting the `Access-Control-Allow-Origin` header in production.

## Troubleshooting

### Common Issues

1. **Incorrect Stripe API Key**: If you're getting authentication errors, verify your Stripe API key.
2. **CORS Issues**: If you're experiencing CORS issues, ensure the CORS headers are correctly set.
3. **Missing Session ID**: Make sure you're passing a valid session ID from the client.

### Logs

You can view the function logs in the Supabase Dashboard or using the CLI:

```bash
supabase functions logs verify-payment-session --project-ref your-project-ref
```

## Related Documentation

- [Supabase Edge Functions Documentation](https://supabase.com/docs/guides/functions)
- [Stripe API Documentation](https://stripe.com/docs/api)
- [Deno Documentation](https://deno.land/manual)
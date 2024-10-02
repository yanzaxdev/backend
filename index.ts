console.log('Hello via Bun!');
// server.js
import { serve } from 'bun';

serve({
  port: 3000,
  fetch(req) {
    return new Response('Hello, Bun!');
  },
});

console.log('Server is running on http://localhost:3000');

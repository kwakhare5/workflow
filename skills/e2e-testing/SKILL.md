---
name: e2e-testing
description: "Production-grade Playwright E2E testing engine with semantic locators and zero flakiness. Use when writing, fixing, or running Playwright end-to-end tests for a user-facing change."
category: testing
risk: safe
---

# Production Playwright E2E Testing Engine

## 1. Core Principles

- **Semantic Locators Only**: Always prefer `page.getByRole()`, `page.getByLabel()`, `page.getByText()`, and `page.getByTestId()`. Strictly forbid brittle CSS selectors (e.g. `div > div:nth-child(2)`) and XPath queries that break on styling tweaks.
- **Repeatable Verifiable Artifacts**: Every E2E test suite run must output an undeniable verification artifact:
  - Playwright HTML report / trace (`npx playwright show-report` / `trace.zip` on failure).
  - Screenshots on failure (`screenshot: 'only-on-failure'`).
  - Terminal exit code 0 on passing assertions.
- **Isolate Auth State**: Never log in via UI inputs in every test. Save and reuse signed-in state via `storageState.json` to keep tests blazing fast.
- **Real Backend, Mocked 3rd Parties**: Run against real local backend APIs, databases, and rendered HTML. Mock *only* external 3rd-party services (e.g., Stripe, Twilio SMS, external email dispatchers).

---

## 2. Playwright Configuration Standards

Always configure `playwright.config.ts` for resilience and verifiable output:

```typescript
import { defineConfig, devices } from '@playwright/test';

export default defineConfig({
  testDir: './e2e',
  fullyParallel: true,
  forbidOnly: !!process.env.CI,
  retries: process.env.CI ? 2 : 0,
  workers: process.env.CI ? 1 : undefined,
  reporter: [
    ['list'],
    ['html', { outputFolder: 'playwright-report', open: 'never' }]
  ],
  use: {
    baseURL: process.env.BASE_URL || 'http://localhost:3000',
    trace: 'retain-on-failure',
    screenshot: 'only-on-failure',
    video: 'retain-on-failure',
  },
  projects: [
    {
      name: 'chromium',
      use: { ...devices['Desktop Chrome'] },
    },
  ],
  webServer: {
    command: 'npm run dev',
    url: 'http://localhost:3000',
    reuseExistingServer: !process.env.CI,
    timeout: 120 * 1000,
  },
});
```

---

## 3. High-Signal Test Pattern (Page Object Model)

Structure E2E tests around critical user journeys, not trivial UI checks:

```typescript
import { test, expect } from '@playwright/test';

test.describe('Checkout Flow', () => {
  test('user can complete a standard purchase and receive confirmation', async ({ page }) => {
    // 1. Arrange & Navigate
    await page.goto('/products/sample-item');

    // 2. Act using semantic locators
    await page.getByRole('button', { name: /add to cart/i }).click();
    await page.getByRole('link', { name: /cart/i }).click();

    await expect(page.getByText('sample-item')).toBeVisible();
    await page.getByRole('button', { name: /proceed to checkout/i }).click();

    await page.getByLabel(/shipping address/i).fill('123 Test St');
    await page.getByRole('button', { name: /place order/i }).click();

    // 3. Assert on unambiguous success state
    await expect(page.getByRole('heading', { name: /order confirmed/i })).toBeVisible();
    await expect(page.getByText(/thank you for your order/i)).toBeVisible();
  });
});
```

---

## 4. Anti-Flakiness Rules

1. **No Arbitrary Sleep**: Never use `page.waitForTimeout(5000)`. Always wait for web-first assertions: `await expect(locator).toBeVisible()` or `await page.waitForResponse()`.
2. **Auto-Waiting**: Leverage Playwright's built-in auto-waiting (it automatically waits for elements to be actionable, visible, and enabled before clicking).
3. **Clean Test Teardown**: Reset test database records between runs using API fixtures or test-scoped IDs.

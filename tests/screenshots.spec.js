const { test, expect } = require('@playwright/test');

test.describe('UI Screenshots', () => {
  test('capture homepage screenshot', async ({ page }) => {
    await page.goto('/');

    // Wait for page to fully load
    await expect(page).toHaveTitle('Shopping with Codespaces');
    await expect(page.locator('.brand-first')).toContainText('Shopping');
    
    // Wait for products to be visible
    await expect(page.getByText('Carrots', { exact: true })).toBeVisible();
    await expect(page.getByText('Lemons', { exact: true })).toBeVisible();
    await expect(page.getByText('Apples', { exact: true })).toBeVisible();

    // Take full page screenshot
    await page.screenshot({ 
      path: 'screenshots/homepage.png', 
      fullPage: true 
    });
  });

  test('capture products section screenshot', async ({ page }) => {
    await page.goto('/');

    // Wait for products to be visible
    await expect(page.getByText('Carrots', { exact: true })).toBeVisible();
    
    // Take screenshot of just the products section
    const productsSection = page.locator('.products');
    if (await productsSection.count() > 0) {
      await productsSection.screenshot({ 
        path: 'screenshots/products-section.png' 
      });
    } else {
      // Fallback to full page if specific section not found
      await page.screenshot({ 
        path: 'screenshots/products-section.png', 
        fullPage: true 
      });
    }
  });

  test('capture individual product card screenshot', async ({ page }) => {
    await page.goto('/');

    // Wait for product cards to be visible
    const productCards = page.locator('.card');
    await expect(productCards.first()).toBeVisible();
    
    // Take screenshot of first product card
    await productCards.first().screenshot({ 
      path: 'screenshots/product-card.png' 
    });
  });
});

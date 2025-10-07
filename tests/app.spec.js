const { test, expect } = require('@playwright/test');

test.describe('Shopping with Codespaces', () => {
  test('should display the shopping app home page', async ({ page }) => {
    await page.goto('/');

    // Check that the page loads with correct title
    await expect(page).toHaveTitle('Shopping with Codespaces');

    // Check that the header contains the app name
    await expect(page.locator('.brand-first')).toContainText('Shopping');
    await expect(page.locator('.brand-second')).toContainText('With');
  });

  test('should display products from the JSON file', async ({ page }) => {
    await page.goto('/');

    // Check that products are displayed
    const productCards = page.locator('.card');
    await expect(productCards).toHaveCount(3); // Based on products.json, there should be 3 products

    // Check for specific products
    await expect(page.getByText('Carrots', { exact: true })).toBeVisible();
    await expect(page.getByText('Lemons', { exact: true })).toBeVisible();
    await expect(page.getByText('Apples', { exact: true })).toBeVisible();
  });

  test('should display product descriptions', async ({ page }) => {
    await page.goto('/');

    // Check for product descriptions
    await expect(page.getByText('16oz package of fresh organic carrots')).toBeVisible();
    await expect(page.getByText('Bag of 10000 ripe lemons')).toBeVisible();
    await expect(page.getByText('Bag of 7 fresh McIntosh apples')).toBeVisible();
  });

  test('should have working navigation links', async ({ page }) => {
    await page.goto('/');

    // Check that the GitHub link is present and points to the correct URL
    const githubLink = page.locator('a[href*="github.com/johnpapa/shopping-for-codespaces"]');
    await expect(githubLink).toBeVisible();
  });

  test('should have functional delete and edit buttons', async ({ page }) => {
    await page.goto('/');

    // Check that delete and edit buttons are present for each product
    const deleteButtons = page.locator('.delete-item');
    const editButtons = page.locator('.edit-item');

    await expect(deleteButtons).toHaveCount(3);
    await expect(editButtons).toHaveCount(3);
  });

});

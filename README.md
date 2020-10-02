# SilverStripe "Modern" theme

SilverStripe Theme created using Bootstrap 4 that provides a "Modern" look.
With the following features:

1. Full width images
2. Modern luuking galleries
3. Styling for blog pages and posts
4. Dropdown navigation in the main menu

## Instalation

Install via composer:

    composer require ilateral/silverstripe-modern

## Requirements

This theme uses the `ilateral\silverstripe-deferedimages` module as well as `heyday/silverstripe-responsive-images` module
quite extensivley. In order to work correctly you will need to add some extra configuration to your project (covered below).

## Setup

This theme makes some assumptions about your project setup:

### 1. FeaturedImage is available on all Pages

By default `FeaturedImage` is available on the blog, but you will also need to add the following code to yout `Page.php`

```
class Page extends SiteTree
{
    private static $has_one = {
        'FeaturedImage' => Image::class
    }
}
```

Every page template in this theme supports `FeaturedImage`, so to get the best out of it, adding FeaturedImage to all pages will help.

### 2. Image size configuration

As mentioned above, this module makes use of the `heyday/silverstripe-responsive-images` module. You will need to add some additional
YML config to your project to define a valid image size, or else you will get errors:

```
---
Name: myimages
After: 'silverstripe-responsive-images/*'
---
Heyday\ResponsiveImages\ResponsiveImageExtension:
  default_method: FocusFill
  sets:
    FullwidthBanner:
      arguments:
        '(min-width: 1200px) and (min-device-pixel-ratio: 2.0)': [3840, 1500] # xl
        '(min-width: 1200px)': [1920, 750]
        '(min-width: 992px) and (min-device-pixel-ratio: 2.0)': [2400, 1200] # lg
        '(min-width: 992px)': [1200, 600]
        '(min-width: 768px) and (min-device-pixel-ratio: 2.0)': [1948, 1100] # md
        '(min-width: 768px)': [992, 600]
      default_arguments: [540, 750] # xs
    ContentBanner:
      arguments:
        '(min-width: 1200px) and (min-device-pixel-ratio: 2.0)': [2400, 1200] # xl
        '(min-width: 1200px)': [1200, 600]
        '(min-width: 992px) and (min-device-pixel-ratio: 2.0)': [1948, 1000] # lg
        '(min-width: 992px)': [992, 500]
        '(min-width: 768px) and (min-device-pixel-ratio: 2.0)': [1536, 1000] # md
        '(min-width: 768px)': [768, 500]
      default_arguments: [540, 540] # xs
```

*NOTE:* These are defaults, you can amend these sizes to suit your project needs
# 🚀 Aurora Monzim

[![Aurora](https://img.shields.io/badge/Aurora-red?style=for-the-badge?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://docs.aurora.monzim.com)
[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)



Aurora is a simple Flutter project architecture that leverages Riverpod, go_router, and Isar for state management, navigation, and data persistence, making it easy to use and maintain.

- [Aurora Documentation][1]
- [Aurora GitHub][2]
- [Aurora Brick Code][3]

#  What is Aurora? 🤨

Aurora is a Flutter project architecture that is easy to use and maintain. This architecture follows a combination of principles from various design patterns and architectural styles such as provider pattern, model view preenter, modular architecture, and widget composition. It is heavily dependent on Code Generation.

# Why Aurora? 🤔

I used to follow others architecture and I found that they are not easy to use and maintain. So I decided to create my own architecture that is easy to use and maintain. I have been using this architecture for my personal projects and I am happy with it. I hope you will like it too.

Aurora is created by [monzim][4] 🧱\*.


## Aurora tree

```bash
lib/
├── main.dart
├── services
│   ├── app_preference
│   │   ├── constants
│   │   │   └── app_default_setting.dart
│   │   ├── models
│   │   │   ├── app_preference.dart
│   │   │   └── app_preference.g.dart
│   │   └── providers
│   │       ├── app_settings_provider.dart
│   │       └── app_settings_provider.g.dart
│   ├── local_storage
│   │   └── isar
│   │       ├── constants
│   │       │   └── isar_constants.dart
│   │       ├── helper
│   │       │   └── isar_base.dart
│   │       └── providers
│   │           ├── isar_provider.dart
│   │           └── isar_provider.g.dart
│   ├── localization
│   │   ├── arb
│   │   │   ├── app_bn.arb
│   │   │   └── app_en.arb
│   │   ├── extention
│   │   │   └── locale_extention.dart
│   │   └── providers
│   │       ├── localization_provider.dart
│   │       └── localization_provider.g.dart
│   ├── riverpod
│   │   ├── extention
│   │   │   └── riverpod_extention.dart
│   │   ├── helper
│   │   │   └── provider_helper.dart
│   │   └── riverpod.dart
│   ├── routers
│   │   ├── app_router.dart
│   │   ├── app_router.g.dart
│   │   ├── router_provider.dart
│   │   └── router_provider.g.dart
│   └── themes
│       ├── constants
│       │   └── app_fonts.dart
│       ├── extention
│       │   └── color_extention.dart
│       ├── helpers
│       │   ├── dark_mode
│       │   │   ├── dark_mode_helper.dart
│       │   │   └── dark_mode_helper.g.dart
│       │   └── light_mode
│       │       ├── light_mode_helper.dart
│       │       └── light_mode_helper.g.dart
│       └── providers
│           ├── color_scheme_seed_provider.dart
│           ├── color_scheme_seed_provider.g.dart
│           ├── font_family_provider.dart
│           ├── font_family_provider.g.dart
│           ├── theme_mode_provider.dart
│           ├── theme_mode_provider.g.dart
│           ├── themes_provider.dart
│           └── themes_provider.g.dart
└── src
    ├── global
    │   ├── extention
    │   │   └── extention.dart
    │   ├── global.dart
    │   ├── helper
    │   ├── package
    │   │   └── packages.dart
    │   └── widgets
    ├── pages
    │   ├── error
    │   │   ├── error_page.dart
    │   │   └── widgets
    │   │       └── error_widget.dart
    │   ├── home
    │   │   ├── home_page.dart
    │   │   ├── providers
    │   │   │   ├── home_provider.dart
    │   │   │   └── home_provider.g.dart
    │   │   ├── sections
    │   │   │   └── documentation_section.dart
    │   │   └── widgets
    │   │       └── my_image_w.dart
    │   ├── settings
    │   │   ├── providers
    │   │   │   ├── settings_provider.dart
    │   │   │   └── settings_provider.g.dart
    │   │   ├── sections
    │   │   │   ├── app_color_section.dart
    │   │   │   ├── font_section.dart
    │   │   │   └── language_section.dart
    │   │   ├── settings_page.dart
    │   │   └── widgets
    │   │       └── theme_toggle_widget.dart
    │   └── splash
    │       └── splash_scree.dart
    └── services
        ├── README.md
        └── service_name
            ├── constants
            ├── models
            ├── providers
            └── typedefs

50 directories, 55 files
```


[1]: https://docs.aurora.monzim.com
[2]: https://github.com/monzim/FlutterApp-Aurora
[3]: https://github.com/monzim/mason_bricks/tree/main/aurora
[4]: https://github.com/monzim

enum AppFlavor { staging, production }

extension FlavorName on AppFlavor {
  String get name {
    switch (this) {
      case AppFlavor.staging:
        return 'staging';
      case AppFlavor.production:
        return 'production';
    }
  }

  String get baseUrl {
    switch (this) {
      case AppFlavor.staging:
        return 'https://fakestoreapi.com/';
      case AppFlavor.production:
        return 'https://fakestoreapi.com/';
    }
  }
}
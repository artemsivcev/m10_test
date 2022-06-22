# m10_test

M10 flutter test app.

## Before start:

```
run cleanAndRebuild.sh
```

## Build with:

- flutter_bloc as state management (and freezed to make code clear)
- dio as network client (and json_annotation to make it easier)
- hive as local DB (and flutter_secure_storage to store encode key)

## Project structure:

- data - api layer to communicate with network or DB
    - api
        - network - network service
        - storage - DB service
    - some_api.dart - repository realisation
- domain - business logic layer
    - bloc
        - module - cubits or blocs for module
    - constants
        - l10n - translation files
        - colors.dart - app colors
        - constants.dart - other constants (e.g. network, db, etc.)
        - theme.dart - app theme
    - models - all app models, to parse from network or to store in hive
    - repositories - abstract repositories for data layer
- presentation - widgets layer
    - common - common widgets without business logic
    - module - business logic widget module
        - widgets - helpful widgets for particular module
        - module.dart - main module entry point, navigation should pass you here
- main.dart <--- app entry point
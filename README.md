# UI Wallet App

## Design
[Figma](https://www.figma.com/file/USbeHyJ3qbomEgo9Nb6ARb/PITIH---Wallet-Apps-Design)

## Project Structure
```
-assets/
    |--examples         -> Dummy image projects
    |--fonts/           -> Any fonts will we use
        |--font_name
    |--icons            -> Custom icons based on design
    |--images           -> Offline images like placeholder, etc.
-lib/
    |--core/
        |--config       -> Static variable
        |--error        -> Error handling (local or remote datasources)
        |--network      -> Check internet status (connected or disconnect)
        |--utils        -> Others like custom extension, etc.
    |--data/
        |--datasources  -> Data sources (remote and local)
        |--models       -> App models
        |--repositories -> To determine where the data is taken from (Local or remote)
    |--presentation/
        |--cubit        -> State management
        |--pages        -> Part of screen
        |--screens      -> Full view of app
        |--widgets      -> Reusable widgets
```
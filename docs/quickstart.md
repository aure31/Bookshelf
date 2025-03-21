# 🚀&nbsp;Quickstart

This page gives a quick overview of how to get started with the Bookshelf library, and how to use it.

---

## 📥 Installation

:::::{tab-set}
::::{tab-item} 🔌 from manager

The [Bookshelf Manager](https://mcbookshelf.dev) is the official tool for creating your own custom Bookshelf bundle. Here are its main advantages:

- 🎯 **Precise Selection**: Choose exactly the modules you need
- 📊 **Dependency Visualization**: Intuitive interface showing relationships between modules
- 🏷️ **Tag System**: Easily identify modules with tags, grouping them by purpose

Getting started:
1. Visit [mcbookshelf.dev](https://mcbookshelf.dev)
2. Select your desired modules
3. Review automatically added dependencies
4. Download your custom bundle

This method is recommended for creators who want precise control over their installation.

::::
::::{tab-item} 🏷️ from release

Bookshelf releases are available on both [Github](https://github.com/mcbookshelf/bookshelf/releases) and [Modrinth](https://modrinth.com/datapack/bookshelf-library). In each release, you will find zipped datapacks. You have multiple options for installation:

📚 **Whole Datapacks:** You can download entire datapacks which includes all modules and dependencies. This is a good option if you want to explore everything Bookshelf has to offer.

🧩 **Module by Module (only on Github):** Alternatively, you can download individual modules as datapacks. Each module zip file contains all the dependencies needed for that module to work. This is a great option if you only need specific functionalities and want to keep your installation lightweight.

After downloading, move the zip file to the datapacks directory of your Minecraft world.

Please note that while the datapacks from releases are stable, they might not include the very latest features or fixes that are available in the source code. If you want the most up-to-date version of Bookshelf, consider installing from source.

If you like the project, don't hesitate to star it on Github and/or follow it on Modrinth 😉.

::::
::::{tab-item} 🐍 from PyPI

If you're using the [beet](https://github.com/mcbeet/beet) build pipeline, you can install the Bookshelf package (`mcbookshelf`) from PyPI to include Bookshelf modules in your build.

```shell
pip install mcbookshelf
```

Once installed, you can reference Bookshelf modules directly in your beet pipeline configuration.

To include a specific module:
```yaml
pipeline:
  - bookshelf.module.raycast
  - bookshelf.module.<name_of_other_module>
```

To include a full bundle:
```yaml
pipeline:
  - bookshelf.bundle.dev
  - bookshelf.bundle.<name_of_other_bundle>
```


::::
::::{tab-item} 🗃️ from source

If you know how datapacks work, and want to handle the installation process on your own 💪😎, first familiarize yourself with the structure of the project below. Then rendez-vous on [github](https://github.com/mcbookshelf/bookshelf) to download the repository, and extract only what you need!

Once Bookshelf is installed on your map with specific modules (rather than the entire library), the initial step is to ensure that each module can be properly loaded with all its dependencies. Verify this by calling the `#bs.<module>:load` function for each module or check your game console for any errors.

Upon exploring the main datapack, you may notice files within the minecraft namespace. These files facilitate the autoloading of modules and the ticking of specific functions. While they are not strictly needed for Bookshelf to work, without them, you have the responsibility to manually call tick functions or reload modules.


### 🏗️ Structural Overview

The Github repository includes a demo map (still a work in progress) and four datapacks:

**📁 datapacks / Bookshelf**

This is the main datapack of the library, containing all the useful tools for your project. It's the only one to keep in the end. The datapack is divided into modules, so install only the ones you need.

**📁 datapacks / Bookshelf Dev**

This datapack includes utilities for developers, such as logs and more. Its purpose is to provide essential tools to assist you during the development phase of your project.

**📁 datapacks / Bookshelf Examples (WIP)**

This datapack contains easily-readable examples showcasing systems that can be created with Bookshelf. Its main purpose is to be read. Install it only if you wish to gain familiarity with the library by examining practical examples.

**📁 datapacks / Bookshelf World (WIP)**

This datapack contains code utilized by the world itself. It is not intended for direct use.

::::
:::::

---

## 👶 First Steps

:::{important}

Bookshelf relies on persistent entities to enhance performances. Therefore, it's important not to kill all entities. Instead, you can use the command `kill @e[tag=!bs.persistent]`. [Learn more here](contribute/shared-resources.md#entities)
:::

### 📖 Good Practices

Bookshelf is designed to minimize unintended side effects. However, complications can arise when multiple datapacks utilize the same one. To prevent potential issues, it's always recommended to set inputs prior to executing a function. This holds true even though Bookshelf adheres to a strict policy of preserving inputs. By following this practice, you can ensure smoother operation and prevent unexpected behaviors.

:::{note}
This section is in progress. If you have some ideas about how to improve the first steps with Bookshelf, please share it on our [Discord server](https://discord.gg/MkXytNjmBt).
:::

---


<!--

Now that Bookshelf is installed on your map (or once you are on the sandbox map), let's start to make some basic stuff to understand how it work!

First, let's test if Bookshelf is correctly installed. To do so, enter the following command in your chat:

```
/function bs:hello
```

If the Gunivers-Lib is well installed, you should see "Hello World!" in the chat. If it's not the case, verify that the cheat are enabled in your world (or command-blocks are enabled in the `server.properties` file if you are on a server).

Great! Now, let's play with funny things. Place a command-block in repreat mode and powered.

<div align="center">

![](https://gunivers.net/wp-content/uploads/2022/06/Command-block-repeat-1.png)

</div>

In this command block, you can enter the command of one of the following example system:

- **LGdir** : this system allow you to shoot lasers. To shoot, take a `carrot_on_a_stick` and right-click on it!
    ```
    function bs.example:lgdir
    ```
- **Drop to place** : this system allow you to place minecraft blocks by dropping the items instead of right clicking on it. Useless so essential!
    ```
    function bs.example:drop_to_place
    ```
- **Walk Trail** : this system create a trail where the players are walking. This trail is made of items corresponding to the block they are walking on.
    ```
    function bs.example:walk_trail
    ```


:::{note}
This section is in progress. If you have some ideas about how to improves the first steps with the Glibs, please share it on our [Discord server](https://discord.gg/MkXytNjmBt).
:::

---
-->

```{include} _templates/comments.md
```

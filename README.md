## :rocket: Inquirer.sh - Modern Bash Terminal Prompt

[![Bash](https://img.shields.io/badge/language-Bash-green.svg)](https://github.com/tanhauhau/Inquirer.sh) [![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/tanhauhau/Inquirer.sh/master/LICENSE) [![Twitter](https://img.shields.io/twitter/url/https/github.com/tanhauhau/Inquirer.sh.svg?style=social)](https://twitter.com/intent/tweet?text=%23Inquirer.sh%20rocks%21&url=%5Bobject%20Object%5D)

Inquirer.sh is a dependency-free collection of bash interative terminal prompts based on [Inquirer.js](https://github.com/SBoudrias/Inquirer.js)'s interfaces

### List Input ([Example](https://github.com/tanhauhau/Inquirer.sh/blob/master/examples/list_input_example.sh))

![List Input Example](demos/list_input.gif "List Input Example")

```sh
Usage: list_input [prompt] [array] [selected_option]
Usage: list_input_index [prompt] [array] [selected_index]
```

### Checkbox Input ([Example](https://github.com/tanhauhau/Inquirer.sh/blob/master/examples/checkbox_input_example.sh))

![Checkbox Input Example](demos/checkbox_input.gif "Checkbox Input Example")

```sh
Usage: checkbox_input [prompt] [array] [selected_options_output]
Usage: checkbox_input_indices [prompt] [array] [selected_indices_output]
```

### Text Input ([Example](https://github.com/tanhauhau/Inquirer.sh/blob/master/examples/text_input_example.sh))

![Text Input Example](demos/text_input.gif "Text Input Example")

```sh
Usage: text_input [prompt] [output_variable] [default_value (Optional)] [failed_validation_prompt (Optional)] [validator_function (Optional)]
```

### [Contributors](https://github.com/tanhauhau/Inquirer.sh/blob/master/CONTRIBUTORS.md)

- [Andrew Low](https://github.com/kahkhang)
- [Tan Li Hau](https://github.com/tanhauhau)
- [Pedro Rodrigues](https://github.com/pirpedro)

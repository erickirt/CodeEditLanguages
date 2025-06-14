; Copyright 2025 nvim-treesitter
;
; Licensed under the Apache License, Version 2.0 (the "License");
; you may not use this file except in compliance with the License.
; You may obtain a copy of the License at
;
;     http://www.apache.org/licenses/LICENSE-2.0
;
; Unless required by applicable law or agreed to in writing, software
; distributed under the License is distributed on an "AS IS" BASIS,
; WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
; See the License for the specific language governing permissions and
; limitations under the License.


; Imports
(extern_crate_declaration
  name: (identifier) @local.definition.import)

(use_declaration
  argument: (scoped_identifier
    name: (identifier) @local.definition.import))

(use_as_clause
  alias: (identifier) @local.definition.import)

(use_list
  (identifier) @local.definition.import) ; use std::process::{Child, Command, Stdio};

; Functions
(function_item
  name: (identifier) @local.definition.function)

(function_item
  name: (identifier) @local.definition.method
  parameters: (parameters
    (self_parameter)))

; Variables
(parameter
  pattern: (identifier) @local.definition.var)

(let_declaration
  pattern: (identifier) @local.definition.var)

(const_item
  name: (identifier) @local.definition.var)

(tuple_pattern
  (identifier) @local.definition.var)

(let_condition
  pattern: (_
    (identifier) @local.definition.var))

(tuple_struct_pattern
  (identifier) @local.definition.var)

(closure_parameters
  (identifier) @local.definition.var)

(self_parameter
  (self) @local.definition.var)

(for_expression
  pattern: (identifier) @local.definition.var)

; Types
(struct_item
  name: (type_identifier) @local.definition.type)

(enum_item
  name: (type_identifier) @local.definition.type)

; Fields
(field_declaration
  name: (field_identifier) @local.definition.field)

(enum_variant
  name: (identifier) @local.definition.field)

; References
(identifier) @local.reference

((type_identifier) @local.reference
  (#set! reference.kind "type"))

((field_identifier) @local.reference
  (#set! reference.kind "field"))

; Macros
(macro_definition
  name: (identifier) @local.definition.macro)

; Module
(mod_item
  name: (identifier) @local.definition.namespace)

; Scopes
[
  (block)
  (function_item)
  (closure_expression)
  (while_expression)
  (for_expression)
  (loop_expression)
  (if_expression)
  (match_expression)
  (match_arm)
  (struct_item)
  (enum_item)
  (impl_item)
] @local.scope

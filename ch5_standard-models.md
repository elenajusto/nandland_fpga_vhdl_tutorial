# Chapter 5: Standard Models in VHDL Architectures
## Recap of Previous Chapter
Up to this point we have studied 3 types of signal assignment:
- `concurrent`
- `conditional`
- `selected`

There is another one we will be introduced to called `process`. But before that we will look at architectures.

## VHDL Architectures
VHDL programs can be architected through three different approaches:
- `data-flow`
- `structural`
- `behavioural`

### Data Flow Architecture
`VHDL = How circuit will look like in terms of logic gates`
- circuit as a concurrent representation of data flow
- described by showing input and output relationships between components
- 3 forms of concurrent statements: `concurrent`, `conditional` and `selected`
- using only these forms of signal assignment means you used a data flow model
- this architecture lets you see the flow of data just from looking at the VHDL code
- this architecture also lets you make a guess on how the logic gates will look like based on the VHDL code
- commonly used for small and simple circuits

### Behavioural Architecture
`VHDL = How the circuit should behave`
- VHDL code does not reflect the circuit's logic gate implementation
- Models how circuit outputs react to circuit inputs
- Implementation details left up to synthesis tool
- `process` statement

## Process Statement
Consists of:
- label
- sensitivity list
- declaration area
- begin-end area with instructions to execute sequentially

Example of process statement
```VHDL
my_label: process(sensitivity_list) is 
    <item_declaration> 
begin 
    <sequential_statements> 
end process my_label;
```
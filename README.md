# Equivariant Symmetry Breaking Sets

Implementation of the examples described in **[Equivariant Symmetry Breaking Sets](https://arxiv.org/abs/2402.02681)**.

Openreview link is here: https://openreview.net/forum?id=tHKH4DNSR5

## Abstract
Equivariant neural networks (ENNs) have been shown to be extremely effective in applications involving underlying symmetries. By construction ENNs cannot produce lower symmetry outputs given a higher symmetry input. However, symmetry breaking occurs in many physical systems and we may obtain a less symmetric stable state from an initial highly symmetric one. Hence, it is imperative that we understand how to systematically break symmetry in ENNs. In this work, we propose a novel symmetry breaking framework that is fully equivariant and is the first which fully addresses spontaneous symmetry breaking. We emphasize that our approach is general and applicable to equivariance under any group. To achieve this, we introduce the idea of symmetry breaking sets (SBS). Rather than redesign existing networks, we design sets of symmetry breaking objects which we feed into our network based on the symmetry of our inputs and outputs. We show there is a natural way to define equivariance on these sets, which gives an additional constraint. Minimizing the size of these sets equates to data efficiency. We prove that minimizing these sets translates to a well studied group theory problem, and tabulate solutions to this problem for the point groups. Finally, we provide some examples of symmetry breaking to demonstrate how our approach works in practice.

## Instructions
### Symmetry breaking examples
We have individual Jupyter notebooks dedicated to each symmetry breaking task described in our paper. Required packages for our notebooks can be installed by running
```bash
pip install -r requirements.txt
```

### Materials Project API Key
The `BaTiO3.ipynb` notebook requires an API key to access the materials project database. This can be obtained by following the instructions in https://next-gen.materialsproject.org/api.

### Counterexample
Running the verification script for our counterexample requires intallation of GAP. Instructions can be found here https://www.gap-system.org/install/.

To run the GAP script:
- open a terminal in the GAP_script folder
- run `gap` to start GAP in the terminal
- run `Read("counterexample.g");` to run our script

## Citation
```bibtex
@article{xie2024equivariant,
  title={Equivariant Symmetry Breaking Sets},
  author={YuQing Xie and Tess Smidt},
  journal={Transactions on Machine Learning Research},
  year={2024}
}
```

An Application of the Norm Framework
====================================

About Norm
----------
Norm is a **fictitious** framework designed to enable teams to create executable documentation that they can use to automatically verify a remote software system. Norm is named after [a robot from Phineas and Ferb](http://phineasandferb.wikia.com/wiki/Norm) (my sons' favorite Disney show at the moment)

How to Install Norm
-------------------
    gem install norm

How to Operate Norm
-------------------
You operate Norm by writing directives in the `directives` directory. Different team members will concern themselves with different sections of this directory. For instance:

  * **Business Analysts** will write requirements under the `directives/requirements` directory. These requirements must have a file extension of `.requirements` and use a language called Blerpkin. Optionally, they can organize their requirements into sub-folders for better organization. For instance, any requirements concerning the management of projects could be saved as `directives/requirements/projects/*.requirements`.
  * **Testers** will mostly concern themselves with the `directives/tests` directory where they will write the corresponding tests for each spec. The files must have a file extension of `.tests` and must use a language called Wizzkin . They can also optionally organize their tests into sub-folders for better organization.
  * **Developers** will concern themselves with the `directives/lib` directory which contains various *.rb files that can be used by testers for their .tests files.

NOTE: Any methods or objects declared in the `directives/lib` directory can only be used from the `directives/tests` directory. Requirements files cannot use anything from the `directives/lib` directory.

Got Comments/Suggestions?
-------------------------
Don't hesitate to [file an issue](https://github.com/relaxdiego/norm_app/issues/new)!

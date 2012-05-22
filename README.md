A Sample Suite Built with the Norm Framework 
============================================

About Norm
----------
Norm is a **fictitious** framework designed to enable teams to create executable documentation that they can use to automatically verify a remote software system. Norm is named after [a robot from Phineas and Ferb](http://phineasandferb.wikia.com/wiki/Norm) (my sons' favorite Disney show at the moment)

How to Install Norm
-------------------
    gem install norm-framework

How to Operate Norm
-------------------
Teams operate Norm by feeding him instructions through the `instructions` directory. Different team members will concern themselves with different sections of this directory. For instance:

  * **Business Analysts** will write specifications under the `instructions/specs` directory. These specs must have a file extension of .specs and use a language called Blerpkin which is a subset of the Markdown syntax. Optionally, they can organize their specs into sub-folders for better organization. For instance, any specs concerning the management of projects could be saved in `instructions/specs/projects`.
  * **Testers** will mostly concern themselves with the `instructions/tests` directory where they will write the corresponding tests for each spec. The files must have a file extension of .tests and must use a language called Wizzkin which is also use a subset of the Markdown syntax. They can also optionally organize their tests into sub-folders for better organization.
  * **Developers** will concern themselves with the `instructions/lib` directory which contain Ruby code that can be used by testers for their .tests files. NOTE that the stepdefs define in this directory can only be used by .tests files and not by the .specs files.

Creating Your Own Instructions for Norm
---------------------------------------
    norm generate instructions_for_validating_my_todolist_app


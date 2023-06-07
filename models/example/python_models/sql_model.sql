with abc as
 (select * from {{ ref("python_model_1") }})
 
  select * from abc

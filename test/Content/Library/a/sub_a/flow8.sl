namespace: a.sub_a
flow:
  name: flow8
  workflow:
    - test1:
        do:
          io.cloudslang.base.math.random_number_generator:
            - min: '1'
            - max: '100'
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: FAILURE_1
  results:
    - SUCCESS
    - FAILURE_1
extensions:
  graph:
    steps:
      test1:
        x: 340
        'y': 180
        navigate:
          940b76d5-dded-b1c8-8300-6d772fc7d36a:
            targetId: a43e86c5-1179-59c4-34a5-692aec0c8cda
            port: SUCCESS
          19bb9bef-9d7e-705e-3f76-b60c599e6c0a:
            targetId: 826453c5-4ddd-e89f-1da5-d531e3eb5c5c
            port: FAILURE
    results:
      SUCCESS:
        a43e86c5-1179-59c4-34a5-692aec0c8cda:
          x: 540
          'y': 140
      FAILURE_1:
        826453c5-4ddd-e89f-1da5-d531e3eb5c5c:
          x: 160
          'y': 160

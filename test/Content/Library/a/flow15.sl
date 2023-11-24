namespace: a
flow:
  name: flow15
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
          9414ec02-c841-6b9a-3e46-62edbb89b50a:
            targetId: 99ce7672-5b15-358a-e6c1-545f04d0943a
            port: SUCCESS
          ecaf7612-165f-28f1-55c4-03b93d236e21:
            targetId: a8365244-6707-1414-4c1e-bd4d02292c54
            port: FAILURE
    results:
      SUCCESS:
        99ce7672-5b15-358a-e6c1-545f04d0943a:
          x: 540
          'y': 140
      FAILURE_1:
        a8365244-6707-1414-4c1e-bd4d02292c54:
          x: 160
          'y': 160

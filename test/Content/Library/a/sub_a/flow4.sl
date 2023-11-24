namespace: a.sub_a
flow:
  name: flow4
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
          bf958a59-a649-58a1-6694-753c5d70f290:
            targetId: ba5f7626-3670-e9c5-8be4-b5610b52c489
            port: SUCCESS
          2dbf1def-d922-0bfc-247c-488c185c73e3:
            targetId: 1f3a3ae9-e6c2-4564-1814-8da57a0943dd
            port: FAILURE
    results:
      SUCCESS:
        ba5f7626-3670-e9c5-8be4-b5610b52c489:
          x: 540
          'y': 140
      FAILURE_1:
        1f3a3ae9-e6c2-4564-1814-8da57a0943dd:
          x: 160
          'y': 160

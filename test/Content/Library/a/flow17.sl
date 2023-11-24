namespace: a
flow:
  name: flow17
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
          552dc144-1652-0699-df45-2cdbfcd771d9:
            targetId: 64ea1236-9222-5be9-f401-2b711e1d1e41
            port: SUCCESS
          0cea7f74-8374-8576-567d-4c96e266f567:
            targetId: c0afd691-45c3-9ab8-4119-8b0bbf06e4bc
            port: FAILURE
    results:
      SUCCESS:
        64ea1236-9222-5be9-f401-2b711e1d1e41:
          x: 540
          'y': 140
      FAILURE_1:
        c0afd691-45c3-9ab8-4119-8b0bbf06e4bc:
          x: 160
          'y': 160

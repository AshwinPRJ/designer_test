namespace: a.sub_a
flow:
  name: flow5
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
          a4b1d235-468b-f99b-5de9-5b5e772acd59:
            targetId: 24120e61-dd8e-3bab-fba0-39d8a73659f8
            port: SUCCESS
          f42ad91f-ee76-f364-4680-6cc8511bd196:
            targetId: 2ebd8bb8-7e46-f2d0-7f6f-5b520b147476
            port: FAILURE
    results:
      SUCCESS:
        24120e61-dd8e-3bab-fba0-39d8a73659f8:
          x: 540
          'y': 140
      FAILURE_1:
        2ebd8bb8-7e46-f2d0-7f6f-5b520b147476:
          x: 160
          'y': 160

namespace: a.sub_a
flow:
  name: flow3
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
          723aabe8-20eb-bb5a-9e02-ee22d29a25dc:
            targetId: 69fd92fa-94aa-0841-b98b-be3c4aa684f9
            port: SUCCESS
          d37fca68-d738-4c6a-9aa8-c2f53708fb4c:
            targetId: 7b093eb5-eb79-1b18-2d47-c1251f137948
            port: FAILURE
    results:
      SUCCESS:
        69fd92fa-94aa-0841-b98b-be3c4aa684f9:
          x: 540
          'y': 140
      FAILURE_1:
        7b093eb5-eb79-1b18-2d47-c1251f137948:
          x: 160
          'y': 160

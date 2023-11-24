namespace: a
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
          02c12112-f6a7-6497-5ece-c5d41da6f62c:
            targetId: 99606ba2-f6b5-42d3-d54c-105f9c9aa43f
            port: SUCCESS
          77de865e-78ff-2dd0-d30a-b7105a75538d:
            targetId: 90106c43-1751-1309-feb1-022463c10a00
            port: FAILURE
    results:
      SUCCESS:
        99606ba2-f6b5-42d3-d54c-105f9c9aa43f:
          x: 540
          'y': 140
      FAILURE_1:
        90106c43-1751-1309-feb1-022463c10a00:
          x: 160
          'y': 160

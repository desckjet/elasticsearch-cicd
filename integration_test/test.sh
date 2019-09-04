#!/bin/bash

docker-compose up -d

echo "Connecting to elasticSearch..."
sleep 29

curl http://localhost:8888/index?docsPath=TestSample

sleep 14

expect='[{"title":"reinforcement_learning","date":"2019-09-03T15:27:25.479Z","highlight":"Design and run an experiment assessing the <b>performance</b> of your method."},{"title":"p72-dean","date":"2019-09-03T15:27:24.051Z","highlight":"(referred to here as the “comparison paper”13) com-pared the <b>performance</b> of MapReduce and parallel databases"},{"title":"recommender-systems-survey-2005","date":"2019-09-03T15:27:25.113Z","highlight":"more flexible recommendation methods that also rely on the measures that more effectively determine <b>performance</b>"},{"title":"mapreduce-osdi04","date":"2019-09-03T15:27:25.219Z","highlight":"distribution of large-scale computations, combinedwith an implementation of this interface that achieveshigh <b>performance</b>"},{"title":"iccv99","date":"2019-09-03T15:27:25.276Z","highlight":"This also im-proves recognition <b>performance</b> by giving more weight tothe least-noisy scale."},{"title":"Named Entity Recognition","date":"2019-09-03T15:27:25.879Z","highlight":"The level of ambiguity in NER makes it difficult to attain human <b>performance</b>."},{"title":"image_feature","date":"2019-09-03T15:27:25.949Z","highlight":"Clustering with the Hough TransformTo maximize the <b>performance</b> of object recognition forsmall or highly"},{"title":"bv_cvxbook","date":"2019-09-03T15:27:25.704Z","highlight":"But it may be worth it in cases wherethe value of certifying the <b>performance</b> is high, or the cost of"},{"title":"p01_theSemanticWeb","date":"2019-09-03T15:27:24.882Z","highlight":"Web technology, therefore, must not discriminate between the scribbled draft and the polished <b>performance</b>"},{"title":"Herramientas para Memorias I","date":"2019-09-03T15:27:25.907Z","highlight":"Key Words: Innovation Capabilities, Firm <b>Performance</b>, Innovation Surveys, Association Metrics."}]'
real=$(curl http://localhost:8888/search?query=performance)

echo $real

if [ "$expect" == "$real" ]
then
    echo "test pass"
    echo "             _ (o\-~-/o) _
            (o\ ( ಠ ಠ ) /o)
             \ \( (Y) )/ /
              \ )     ( /
              /       \ "

    #docker-compose down

fi

#docker-compose down

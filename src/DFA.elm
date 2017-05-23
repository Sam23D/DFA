module DFA exposing (..)

import Set exposing (..)

type alias Automata =
  {  q : List String
  ,  e : List Char
  ,  a : List Transition
  ,  s : String
  ,  f : List String
  }

type alias Transition
  =  { q: String
     , e: Char
     , q2: String
     }

automaton =
  {  q = ["s0", "s1", "s2", "s3"]
  ,  e = ['0', '1']
  ,  s = "s1"
  ,  f = ["s1", "s2"]
  ,  a = [ {q = "s0", e = '1', q2 = "s2"}, {q = "s0", e = '1', q2 = "s2"} ]
  }

validateDFA: a -> Bool
validateDFA  dfa =  True

validList: List Bool -> Bool
validList list = not <| List.member False list

validateStartDFA: Automata -> Bool
validateStartDFA dfa = List.member dfa.s dfa.q

validateEndDFA: Automata -> Bool
validateEndDFA dfa =
  let
    allStates = Set.fromList dfa.q
    finalStates = Set.fromList dfa.f
  in
    (Set.intersect allStates finalStates) == finalStates


validateTranFunctions: Automata -> Bool
validateTranFunctions dfa =
  let
    validate = (\ x -> validateTransition x dfa )
  in
    validList <| List.map validate dfa.a

validateTransition: Transition -> Automata -> Bool
validateTransition transition dfa =
  let
    validq = List.member transition.q dfa.q
    validq2 = List.member transition.q2 dfa.q
    valide = List.member transition.e dfa.e
   in
    validq && validq2 && valide

update msg model= model

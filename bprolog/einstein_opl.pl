/*

  Einstein puzzle in B-Prolog.

  This is a B-Prolog version of the OPL code presented in 
  Daniel Selman's "Einstein's Puzzle - Or, 'The Right Tool for the Job'"
  http://blogs.ilog.com/brms/2009/02/16/einsteins-puzzle/
  """
  * Norwegian cats water Dunhill yellow
  * Dane horses tea Blends blue
  * Brit birds milk Pall Mall red
  * German fish coffee Prince green
  * Sweed dogs beer Blue Master white
  """
  
  Note: I let the "Sweed" stand, it should - of course - be "Swede".

  See also:
  http://www.stanford.edu/~laurik/fsmbook/examples/Einstein%27sPuzzle.html


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my B-Prolog page: http://www.hakank.org/bprolog/

*/

go :-
        N = 5,

        % nationalities
        Brit = 1,Sweed = 2,Dane = 3,Norwegian = 4,German = 5,
        NationalitiesS = ['Brit','Sweed','Dane','Norwegian','German'],

        % animals
        Dogs = 1,Fish = 2,Birds = 3,Cats = 4,Horses = 5,
        AnimalsS = ['Dogs','Fish','Birds','Cats','Horses'],

        % drinks
        Tea = 1,Coffee = 2,Milk = 3,Beer = 4,Water = 5,
        DrinksS = ['Tea','Coffee','Milk','Beer','Water'],

        % smokes
        PallMall = 1,Dunhill = 2,Blends = 3,BlueMaster = 4,Prince = 5,
        SmokesS = ['Pall Mall','Dunhill','Blends','Blue Master','Prince'],

        % color
        Red = 1,Green = 2,White = 3,Yellow = 4,Blue = 5,
        ColorsS = ['Red','Green','White','Yellow','Blue'],
        

        % decision variables
        length(S, N), S :: 1..N,
        length(A, N), A :: 1..N,
        length(D, N), D :: 1..N,
        length(K, N), K :: 1..N,
        length(C, N), C :: 1..N,

        % constraints
        alldifferent(S),
        alldifferent(A),
        alldifferent(D),
        alldifferent(K),
        alldifferent(C),
        
        % 1. The Brit lives in a red house.
        S[Brit] #= C[Red],

        % 2. The Swede keeps dogs as pets.
        S[Sweed] #= A[Dogs],

        % 3. The Dane drinks tea.
        S[Dane] #= D[Tea],

        % 5. The owner of the Green house drinks coffee.
        C[Green] #= D[Coffee],

        % 6. The person who smokes Pall Mall rears birds.
        K[PallMall] #= A[Birds],

        % 7. The owner of the Yellow house smokes Dunhill.
        C[Yellow] #= K[Dunhill],

        % 8. The man living in the centre house drinks milk.
        D[Milk] #= 3,

        % 9. The Norwegian lives in the first house.
        S[Norwegian] #= 1,

        % 12. The man who smokes Blue Master drinks beer.
        K[BlueMaster] #= D[Beer],

        % 13. The German smokes Prince.
        S[German] #= K[Prince],

        % 4. The Green house is on the left of the White house.
        C[Green] #= C[White]-1,

        % 10. The man who smokes Blends lives next to the one who keeps cats.
        abs(K[Blends] - A[Cats]) #= 1,

        % 11. The man who keeps horses lives next to the man who smokes Dunhill.
        abs(A[Horses] - K[Dunhill]) #= 1,

        % 14. The Norwegian lives next to the blue house.
        abs(S[Norwegian] - C[Blue]) #= 1,

        % 15. The man who smokes Blends has a neighbour who drinks water.
        abs(K[Blends] - D[Water]) #= 1,

        
        term_variables([S,A,D,K,C],Vars),
        labeling(Vars),

        writeln(states:S),
        writeln(animals:A),
        writeln(drink:D),
        writeln(smoke:K),
        writeln(color:C),
        nl,

        foreach(I in 1..N,
                [Nationality,Animal,Drink,Smoke,Color],
                (p(I,S,NationalitiesS,Nationality),
                 p(I,A,AnimalsS,Animal),
                 p(I,D,DrinksS,Drink),
                 p(I,K,SmokesS,Smoke),
                 p(I,C,ColorsS,Color),
                 format("In the ~w house the ~w drinks ~w, smokes ~w, and keeps ~w.\n", 
                        [Color,Nationality,Drink,Smoke,Animal])
                )),

        % And who keep the fish?
        nth1(FishId,A,Fish),
        nth1(FishId,NationalitiesS,WhoFish),
        format("It's the ~w who keep the fish.\n",[WhoFish]),

        nl.


p(I,X,Strings,Y) :-
        nth1(T,X,I),
        nth(T,Strings,Y).

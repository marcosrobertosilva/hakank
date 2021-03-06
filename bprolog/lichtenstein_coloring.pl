/*

  Lichtenstein coloring problem in B-Prolog.

  From 
  http://bit-player.org/2008/the-chromatic-number-of-liechtenstein
  and
  """
  It seems that Liechtenstein is divided into 11 communes, which 
  emphatically do not satisfy the connectivity requirement of the four 
  color map theorem. Just four of the communes consist of a single 
  connected area (Ruggell, Schellenberg and Mauren in the north, and 
  Triesen in the south). 
  ...
  In the map above, each commune is assigned its own color, and so we 
  have an 11-coloring. Itâ€™s easy to see we could make do with fewer 
  colors, but how many fewer? I have found a five-clique within the map; 
  that is, there are five communes that all share a segment of border 
  with one another. It follows that a four-coloring is impossible. Is 
  there a five-coloring? What is the chromatic number of Liechtenstein?
  """

  One solution:
  n_colors       : 5
  color_used     : [1,1,1,1,1,0,0,0,0,0,0]
  color          : [1,1,1,1,1,1,4,4,2,2,2,2,2,1,3,3,3,3,3,3,2,4,4,5,5,5,5,5,5]
  color_communes : [1,1,4,2,2,1,3,3,2,4,5]

 
  Also see
  http://blog.mikael.johanssons.org/archive/2008/10/on-the-chromatic-number-of-lichtenstein/

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my B-Prolog page: http://www.hakank.org/bprolog/

*/

go :-
        %
        % communes
        %
        BalzersC = 1,
        EschenC = 2,
        GamprinC = 3,
        MaurenC = 4,
        PlankenC = 5,
        RuggellC = 6,
        SchaanC = 7,
        SchellenbergC = 8,
        TriesenC = 9,
        TriesenbergC = 10,
        VaduzC = 11,
        
        %
        % enclaves/exclaves
        %
        Balzers1 = 1,
        Balzers2 = 2,
        Balzers3 = 3,
        Eschen1 = 4,
        Eschen2 = 5,
        Eschen3 = 6,
        Gamprin1 = 7,
        Gamprin2 = 8,
        Mauren = 9,
        Planken1 = 10,
        Planken2 = 11,
        Planken3 = 12,
        Planken4 = 13,
        Ruggell = 14,
        Schaan1 = 15,
        Schaan2 = 16,
        Schaan3 = 17,
        Schaan4 = 18,
        Schaan5 = 19,
        Schellenberg = 20,
        Triesen = 21,
        Triesenberg1 = 22,
        Triesenberg2 = 23,
        Vaduz1 = 24,
        Vaduz2 = 25,
        Vaduz3 = 26,
        Vaduz4 = 27,
        Vaduz5 = 28,
        Vaduz6 = 29,
        
        
        NumCommunes = 11,
        NumColors = 11, % num_communes, % 6
        NumEnclaves = 29,
        
        %
        % the enclaves and corresponding commune
        %
        CC = 
        [
            BalzersC, BalzersC, BalzersC, 
            EschenC, EschenC, EschenC, 
            GamprinC, GamprinC, 
            MaurenC, 
            PlankenC, PlankenC, PlankenC, PlankenC, 
            RuggellC, 
            SchaanC, SchaanC, SchaanC, SchaanC, SchaanC, 
            SchellenbergC, 
            TriesenC, 
            TriesenbergC, TriesenbergC,
            VaduzC, VaduzC, VaduzC, VaduzC, VaduzC, VaduzC
        ],
        

        % This map of Lichtenstein is from
        % http://blog.mikael.johanssons.org/archive/2008/10/on-the-chromatic-number-of-lichtenstein/
        Lichtenstein = [
                           [Ruggell, Schellenberg],
                           [Ruggell, Gamprin1],
                           [Schellenberg, Mauren],
                           [Schellenberg, Eschen1],
                           [Mauren, Eschen1],
                           [Gamprin1, Eschen2],
                           [Gamprin1, Vaduz2],
                           [Gamprin1, Schaan1],
                           [Gamprin1, Planken3],
                           [Gamprin1, Eschen1],
                           [Eschen1, Gamprin2],
                           [Eschen1, Planken1],
                           [Eschen2, Schaan1],
                           [Vaduz3, Schaan1],
                           [Vaduz2, Schaan1],
                           [Planken3, Schaan1],
                           [Planken2, Schaan1],
                           [Schaan1, Planken1],
                           [Schaan1, Planken4],
                           [Schaan1, Vaduz1],
                           [Gamprin2, Eschen3],
                           [Eschen3, Vaduz4],
                           [Eschen3, Schaan2],
                           [Vaduz4, Schaan2],
                           [Vaduz4, Planken1],
                           [Schaan2, Planken1],
                           [Planken1, Schaan3],
                           [Vaduz1, Triesenberg1],
                           [Vaduz1, Triesen],
                           [Planken4, Triesenberg1],
                           [Planken4, Balzers2],
                           [Balzers2, Vaduz5],
                           [Balzers2, Schaan4],
                           [Vaduz5, Schaan4],
                           [Schaan4, Triesenberg1],
                           [Schaan4, Vaduz6],
                           [Schaan4, Triesenberg2],
                           [Triesenberg1, Vaduz6],
                           [Triesenberg1, Triesen],
                           [Triesenberg1, Balzers3],
                           [Triesen, Balzers3],
                           [Triesen, Balzers1],
                           [Triesen, Schaan5],
                           [Vaduz6, Schaan5],
                           [Triesenberg2, Schaan5]
                       ],

      
        % colors for the en-/exclaves
        length(Color, NumEnclaves),
        Color :: 1..NumCommunes,

        % colors for the communes
        length(ColorCommunes,NumCommunes),
        ColorCommunes :: 1..NumColors,

        % what colors are used (for minimizing number of colors)
        length(ColorUsed,NumColors),
        ColorUsed :: 0..1,

        % all neighbours must have different colors
        foreach([N1,N2] in Lichtenstein, Color[N1] #\= Color[N2]),
      
        % first commune (Balzers) has color 1
        ColorCommunes[1] #= 1,

        % exclaves of the same commune must have the same color
        foreach(I in 1..NumEnclaves, J in 1..NumEnclaves,
                (
                    I \= J -> 
                        (CC[I] #= CC[J]) #=> (Color[I] #= Color[J]) 
                ;
                        true
                )),
          
        % connection between commune and en-/exclaves
        foreach(C in 1..NumCommunes,
                [E,CCC],
                (
                    E in 1..NumEnclaves,
                    CCC @= ColorCommunes[C],
                    element(E,Color,CCC),
                    element(E,CC,C)
                )
        ),


        % Color used
        foreach((CU,IC) in (ColorUsed,1..NumCommunes),
                CU #= 1 #<=> sum([(IC #= C) : C in Color]) #> 0
        ),
        % number of colors used (to minimize)
        NColors #= sum(ColorUsed),

        % symmetry breaking, i.e. pick the used colors from the left
        decreasing(ColorUsed),


        % search
        term_variables([Color,ColorCommunes,ColorUsed],Vars),
        minof(labeling([ff],Vars),NColors),


        % output
        format("N colors      : ~w\n", [NColors]),
        format("Colors Used   : ~w\n", [ColorUsed]),
        format("Color         : ~w\n",[Color]),
        format("Color communes: ~w\n", [ColorCommunes]),
        nl.


decreasing(List) :-
        foreach(I in 2..List^length, List[I-1] #>= List[I]).

        


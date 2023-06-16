/*--------------------------------*- C++ -*----------------------------------*\
  =========                 |
  \\      /  F ield         | OpenFOAM: The Open Source CFD Toolbox
   \\    /   O peration     | Website:  https://openfoam.org
    \\  /    A nd           | Version:  10
     \\/     M anipulation  |
\*---------------------------------------------------------------------------*/
FoamFile
{
    format      ascii;
    class       volScalarField;
    location    "0";
    object      k;
}
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

dimensions      [0 2 -2 0 0 0 0];

internalField   uniform 9.2024e-5;

boundaryField
{
     inlet
    { 
        type            fixedValue;
        value           uniform 9.2024e-5;
    }
    outlet
    {
        type            zeroGradient;
    }
    wall
    {
        type        kqRWallFunction;
        value       uniform 9.2024e-5;
    }
    obstacle
    {
        type        kqRWallFunction;
        value       uniform 9.2024e-5;
    }
    frontAndBack
    {
        type        empty;
    }
}


// ************************************************************************* //

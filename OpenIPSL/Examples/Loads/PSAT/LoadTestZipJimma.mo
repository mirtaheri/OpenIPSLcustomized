within OpenIPSL.Examples.Loads.PSAT;
model LoadTestZipJimma
  extends BaseClasses.LoadTestBase;
  extends Modelica.Icons.Example;
  OpenIPSL.Electrical.Loads.PSAT.ZIP_Jimma zIPJimma(
    Sn=10000000,
    Tf=0.1,
    P_0=800000,
    Q_0=600000,
    v_0=0.993325565105317) annotation (Placement(transformation(origin={80,-30}, extent={{-10,-10},{10,10}})));
equation

  connect(zIPJimma.p, pwLine3.n) annotation (Line(points={{80,-20},{80,0},{62,0},{62,-10},{59,-10}}, color={0,0,255}));
  annotation (experiment(
      StopTime=15,
      Interval=0.03,
      Tolerance=1e-05));
end LoadTestZipJimma;

package Conectores
  connector pin
    Modelica.SIunits.Voltage v "Electric Potential";
    flow Modelica.SIunits.Current i "Current Flow";
    annotation();
  end pin;

  connector PinPositivo
    Modelica.SIunits.Voltage v "Electric Potential";
    flow Modelica.SIunits.Current i "Current Flow";
    annotation();
  end PinPositivo;

  connector PinNegativo
    Modelica.SIunits.Voltage v "Electric Potential";
    flow Modelica.SIunits.Current i "Current Flow";
    annotation();
  end PinNegativo;

partial model TwoPin

  Modelica.SIunits.Voltage v;
  Modelica.SIunits.Current i;
  Conectores.PinNegativo n annotation(
      Placement(visible = true, transformation(origin = {-64, 6}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-54, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Conectores.PinNegativo p annotation(
      Placement(visible = true, transformation(origin = {64, 2}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {62, 2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
  v = p.v - n.v;
  0 = p.i + n.i;
  i = p.i;
  
annotation(
      Icon(graphics = {Ellipse(origin = {2, -1}, fillColor = {255, 255, 0}, fillPattern = FillPattern.Solid, extent = {{-28, 25}, {28, -25}}, endAngle = 360), Text(origin = {-8, -6}, extent = {{-52, -12}, {76, 34}}, textString = "→"), Line(origin = {-36, -1.58989}, points = {{-10, 1.58989}, {10, 1.58989}, {10, -0.410112}, {10, -0.410112}}), Line(origin = {40.4101, -3.35955}, points = {{-11, 2.76966}, {11, 2.76966}})}));end TwoPin;

package modelo
model Corriente
    extends Conectores.Twopin;
    parameter Modelica.SIunits.Corriente I "Corriente en amperios";
  Conectores.PinNegativo n annotation(
        Placement(visible = true, transformation(origin = {-68, 6}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-64, 2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  PinPositivo p annotation(
        Placement(visible = true, transformation(origin = {66, 4}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {66, 4}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    i = I;
    annotation(
        Icon(graphics = {Ellipse(origin = {4, 3}, fillColor = {255, 255, 0}, fillPattern = FillPattern.Solid, extent = {{-26, 23}, {26, -23}}, endAngle = 360), Line(origin = {-38, 0}, points = {{-16, 0}, {16, 0}, {16, 0}}), Line(origin = {43, 0}, points = {{-15, 0}, {15, 0}}), Text(origin = {-31, 24}, fillPattern = FillPattern.Solid, extent = {{-15, 6}, {89, -38}}, textString = "→")}));end Corriente;
end modelo;
end Conectores;

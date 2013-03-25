% Model Blackbox
% Copyright (C) 2012-2012  André Veríssimo
%
% This program is free software; you can redistribute it and/or
% modify it under the terms of the GNU General Public License
% as published by the Free Software Foundation; version 2
% of the License.
%
% program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
%
% You should have received a copy of the GNU General Public License
% along with this program; if not, write to the Free Software
% Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

function query = test_query(type,function_name)

  if (type == "simulator")

    switch(function_name)

      case "gompertza"
        s = 'A=7.050965&lambda=88.318105&miu=0.014470&N=1.5&end=467';
        s = 'miu=7.050965&lambda=88.318105&A=0.01447&end=467.50000000000006';
        s = 'miu=0.01447&lambda=88.318105&A=7.050965&end=467.50000000000006';
        s = 'miu=0.144022&lambda=0.910374&A=1.907692&N=1.966649&end=7.700000000000001';
      case "baranyia"
        s = 'm=5.000000,&y0=0.001381,&h0=2&ymax=5.000000,&mu=0.246028,&v=0.325587,&N=0.120706&end=20';
        s = 'm=16.724087,&y0=0.643485,&h0=2.905646&ymax=7.787065,&mu=1.080329,&v=1.216351,&N=&end=20';
        s = 'h0=0.553019&m=0.634265&mu=0.572822&v=1.042926&y0=-2.955369&ymax=0.0&start=0.0&end=16.5&minor_step=0.7';
        %s = 'h0=0.733564&m=0.534439&mu=2.570644&N=0.042879&v=4.99849&y0=-4.858&ymax=0.000875&end=25';
        %s = 'h0=3.713722&m=5.162075&mu=1.201054&v=1.407028&y0=0.067029&ymax=4.476695&end=7.700000000000001';
        %s = 'h0=0.166148&m=0.163282&mu=0.508102&v=0.264794&y0=0.06&ymax=1.411889&end=5.5';
        %s = 'h0=10.2&m=2&mu=0.1&v=1&y0=0.1&ymax=10&end=7';
        %s = 'h0=0&m=1&mu=0.001&v=0.001&y0=0.101995&ymax=5.493876&end=1000.700000000000001';
        %s = 'h0=0.175878&m=0.070316&mu=0.012664&v=1.55 8334&y0=0.102&ymax=7.359438&end=467.50000000000006';
        %s = 'h0=-0.003403&m=-0.657574&mu=0.012902&v=17.718774&y0=0.29745&ymax=1.735577&end=467';        
      case "logistica"
        s = 'A=7.050965&lambda=88.318105&miu=0.014470&N=1.5&end=467';
      case "richardsa"
        s = 'A=7.050965&lambda=88.318105&miu=0.014470&N=1.5&v=1&end=467';
      case "schnute"
        s = 'a=1&b=0.5&lambda=0&miu=1&N=1.5&end=20';
      case "testa"
        s = 'param_names=[a,b]&param_top=[5.0,5.0]&param_bottom=[-5.0,0.0]&time=[0,1,2,3,4,5]&values=[0,1.1,4.2,8.2,16.1,25.2]';
      case "baranyio"
        s = 'param_names=[h0,m,mu,v,y0,ymax]&param_top=[20.0,5.0,3.0,5.0,5.0,20.0]&param_bottom=[-5.0,-5.0,0.0,-5.0,-5.0,0.0]&time=[11.25,12.3,13.65,16.11666667,18.1,21.08333333,22.41666667,23.48333333,25.05,26.2,27.06666667,28.16666667,29.31666667,30.46666667]&values=[0.021,0.021,0.021,0.024,0.026,0.039,0.058,0.089,0.182,0.33,0.51,0.832,0.98,0.96]';
        s = 'param_names=[h0,m,mu,v,y0,ymax]&param_top=[5.0,1.5,2,2.0,5.0,10.0]&param_bottom=[-5.0,0.0,0.0,0.0,-5.0,0.0]&time=[0.0,60.0,120.0,180.0,210.0,250.0,270.0,315.0,345.0,375.0,405.0,425.0]&values=[0.102,0.242,0.717,1.52,1.798,2.114,2.666,3.156,3.964,4.048,4.362,4.646]';
      case "monomero"
        s = 'fr=0.12&k11=10&M0=1&n=1&start=0&end=30&minor_step=0.866667';
      case "testo"

    end

  elseif (type == "estimator")

    switch(function_name)

      case "hyperbolastic"
        s = "param_names=[M,d,g,theta,P0]&param_top=[10.0,1.0e-3,5.0,1.0,2.0]&param_bottom=[0.0,1e-9,0.0,-1.0,0.0]&time=[9.0,13.0,17.0,21.0,29.0,33.0,37.0,40.0,43.0,49.0,55.0,57.0,60.0,66.0,72.0,74.0,78.0,82.0]&values=[0.21,0.39,0.49,0.65,0.89,1.13,1.49,1.89,2.31,3.05,4.05,4.51,4.96,5.91,6.86,7.09,7.21,7.35]";
      case "gompertza"

      case "baranyia"
        s = 'param_names=[h0,m,mu,v,y0,ymax]&param_top=[20.0,5.0,3.0,5.0,5.0,20.0]&param_bottom=[-5.0,-5.0,0.0,-5.0,-5.0,0.0]&time=[11.25,12.3,13.65,16.11666667,18.1,21.08333333,22.41666667,23.48333333,25.05,26.2,27.06666667,28.16666667,29.31666667,30.46666667]&values=[0.021,0.021,0.021,0.024,0.026,0.039,0.058,0.089,0.182,0.33,0.51,0.832,0.98,0.96]';
        s = 'param_names=[h0,m,mu,v,y0,ymax]&param_top=[5.0,5.0,3.0,10.0,5.0,10.0]&param_bottom=[-5.0,0.0,0.0,0.0,-5.0,0.0]&time=[0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,25.6];[0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,25.6];[0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,24.0]&values=[-2.703062659591171,-1.851509473633829,-0.9263410677276565,-0.038740828316430595,0.6032224730319583,0.6911451778892722,0.7090205297162355,0.6688544879909007,0.6097655716208943];[-2.659260036932778,-1.973281345851445,-0.9063404010209869,-0.006018072325563021,0.6333971761541712,0.714908672341458,0.7419373447293773,0.6523251860396901,0.6585557357903262];[-2.8134107167600364,-1.410587053688935,-0.6386589952758756,0.2468600779315258,0.7848143690857692,0.7829878845597349,0.7011153502091222,0.7323678937132266,0.6668032052203433]';
        s = 'param_names=[h0,m,mu,v,y0,ymax]&param_top=[5.0,5.0,3.0,10.0,5.0,10.0]&param_bottom=[-5.0,0.0,0.0,0.0,-5.0,0.0]&time=[0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0];[0.0,1.0,2.0,3.0,4.0];[0.0,1.0,2.1,3.0,4.1,5.1,6.0];[0.0,1.0,2.1,3.0,4.1,5.1,6.0];[0.0,1.0,2.0,3.0,4.0,5.0,6.0];[0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,25.6];[0.0,1.0,2.0,3.0,4.0,5.0,6.0];[0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.05,23.42];[0.0,1.317,2.0,2.983,3.983,4.917,6.0];[0.0,0.917,2.083,2.917,4.083,5.0,6.167]&values=[-3.2188758248682,-2.1803674602698,-1.01335244471729,-0.0790432073404529,0.489806256541915,0.827678073517551,0.775648402071689,0.782987884559735];[-2.81341071676004,-1.41058705368893,-0.638658995275876,0.246860077931526,0.784814369085769];[-2.68824757380603,-1.94491064872223,-0.939047718996771,-0.00601807232556302,0.576613364303994,0.818898385865506,0.848440064965981];[-2.90042209374967,-2.15416508787577,-1.30933331998376,-0.510825623765991,0.298622012490115,0.712949807856125,0.829424798852493];[-2.70306265959117,-1.85150947363383,-0.926341067727656,-0.0387408283164306,0.603222473031958,0.691145177889272,0.709020529716236];[-2.65926003693278,-1.97328134585145,-0.906340401020987,-0.00601807232556302,0.633397176154171,0.714908672341458,0.741937344729377,0.65232518603969,0.658555735790326];[-2.81341071676004,-2.12026353620009,-1.23787435600162,-0.261364764134408,0.494696241836107,0.883767540168595,0.922272803551703];[-2.81341071676004,-2.04022082852655,-1.07880966137193,-0.0943106794712413,0.593326845277734,0.708035793053696,0.930193637043147,0.904218150639886,0.916290731874155];[-3.01593498087151,-1.95192822138088,-1.29462717259407,-0.382725621138675,0.370183293963525,0.668854487990901,0.83116847845732];[-2.95651156040071,-2.39689577246529,-1.24479479884619,-0.462035459596559,0.362557607096888,0.727548607277278,0.855266030036381]';
      case "logistica"

      case "richardsa"

      case "schnute"

      case "testa"

      case "baranyio"
        s = 'h0=20.0&m=2.553767&mu=0.846645&v=0.715549&y0=0.001689&ymax=15.229774&start=11.25&end=33.513333337&minor_step=0.866667';
      case "monomero"
        s = 'param_names=[fr,k11,M0,n]&param_top=[0.0861,2,1.1,2]&param_bottom=[0.086,0.1,1,0.1]&time=[0,1,3,6,17,24,48,64,90]&values=[1,0.899,0.619,0.623,0.489,0.299,0.268,0.267,0.289]';
        s = 'param_names=[fr,k11,M0,n]&param_top=[0.086,2.0,1.0,1.0]&param_bottom=[0.086,0.0,1.0,0.0]&time=[0.0,0.0,0.0,0.0,1.0,1.0,1.0,1.0,3.0,3.0,3.0,6.0,6.0,6.0,6.0,6.0,17.0,17.0,17.0,17.0,17.0,24.0,24.0,24.0,24.0,48.0,48.0,48.0,64.0,64.0,64.0,90.0,90.0,90.0]&values=[0.96,0.95,0.91,0.95,0.73,0.8,0.67,0.75,0.56,0.6,0.53,0.6,0.62,0.63,0.6,0.51,0.46,0.51,0.51,0.4,0.49,0.24,0.36,0.29,0.26,0.24,0.3,0.28,0.24,0.29,0.24,0.24,0.33,0.27]'
      case "testo"

    end

  end

  query = s;



















end

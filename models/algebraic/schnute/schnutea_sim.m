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

function [ string_output,output ] = schnutea_sim( test_data , draw_plot ) % << change
%GOMPERTZA_SIM Summary of this function goes here
%   Detailed explanation goes here
    if nargin > 0 && test_data
        if test_data == 1
          s = test_query("simulator","schnutea");
        else
          s = test_data;
        end
        input = qs2struct(s);
    else
        input = qs2struct(getenv('QUERY_STRING'));
    end

    try
        % change to reflect the parameters (sorted by alphabetic order)
        params(1) = str2double( input.a );
        params(2) = str2double( input.b );
        params(3) = str2double( input.lambda );
        params(4) = str2double( input.miu );
        params(5) = str2double( input.N );

        TimeEnd = time_step(input);
        %
        model = @schnutea; % << change

        values = model(params , TimeEnd);
        output = [ transpose(TimeEnd) transpose(values) ];

        if nargin > 1 && draw_plot
            plot(TimeEnd,values);
        end
        string_output = printJson(output);
    catch 
        err = lasterror();
        msg = sprintf('{ "error": "%s" }\n',err.message);
        string_output = msg
    end

end

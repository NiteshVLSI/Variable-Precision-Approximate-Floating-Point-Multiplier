module Booth8(M, X, Y); 

input [7:0] M, X; 
output reg [15:0] Y; 
wire [8:0] X1, M1;
reg[16:0] Y1;
reg [2:0] pa,pb,pc,pd,pe;
reg f0,f1,f2,f3,f4;
reg [16:0]int_pp0,int_pp1,int_pp2,int_pp3,int_pp4;
reg [8:0] pp0,pp1,pp2,pp3,pp4;
reg i0,i1,i2,i3,i4;
assign X1 = {1'b0 , X};
assign M1 = {1'b0 , M};
initial
begin
i0=0;i1=0;i2=0;i3=0;i4=0;
end

always @(*)
begin
if(f0&f1&f2&f3&f4)
begin
Y1= int_pp0 + int_pp1 + int_pp2 +int_pp3+int_pp4;
Y= Y1[15:0];
end
end

always @(*)

begin
pa = {X1[1],X1[0],1'b0};
f0 =0;
i0=0;
case(pa)

3'b001 , 3'b010 :
               begin
                    pp0[8:0] = M1;
                end

3'b011:
              begin
                    pp0[8:0] = M1;
                    i0 =  1;
              end

3'b100:
             begin
                pp0[8:0] = -M1;
                i0 = 1;
              end

3'b110 , 3'b101:
             begin
                pp0[8:0] = -M1;
             end


default : pp0 = 9'd0;

endcase

int_pp0 = {{9{pp0[8]}},pp0};

 int_pp0 = int_pp0 << i0;
 f0 =1;
 end
 /////////////////////////////////////////////////////////////////////////////////////////////////
 always @(*)

begin
f1 =0;
i1=0;
pb = { X1[3],X1[2],X1[1] };
case(pb)

3'b001 , 3'b010 :
               begin
                    pp1[8:0] = M1;
                end

3'b011:
              begin
                    pp1[8:0] = M1;
                    i1 =  1;
              end

3'b100:
             begin
                   pp1[8:0] = -M1;
                i1 = 1;
              end

3'b110 , 3'b101:
             begin
                pp1[8:0] = -M1;
             end


default : pp1 = 9'd0;

endcase

int_pp1 = {{7{pp1[8]}},pp1,2'b0};

 int_pp1 = int_pp1 << i1;
 f1 =1;
 end
 //////////////////////////////////////////////////////////////////////////////////////////
 always @(*)

begin
pc ={X1[5],X1[4],X1[3]};
f2 =0;
i2=0;
case(pc)

3'b001 , 3'b010 :
               begin
                    pp2[8:0] = M1;
                end

3'b011:
              begin
                    pp2[8:0] = M1;
                    i2 =  1;
              end

3'b100:
             begin
                pp2[8:0] = -M1;
                i2 = 1;
              end

3'b110 , 3'b101:
             begin
                pp2[8:0] = -M1;
             end


default : pp2 = 9'd0;

endcase

int_pp2 = {{5{pp2[8]}},pp2,4'b0 };

 int_pp2 = int_pp2 << i2;
 f2 =1;
 end
 
//////////////////////////////////////////////////////////////////////////////////// 
 always @(*)

begin
pd ={X1[7],X1[6],X1[5]};
f3 =0;
i3=0;
case(pd)

3'b001 , 3'b010 :
               begin
                    pp3[8:0] = M1;
                end

3'b011:
              begin
                    pp3[8:0] = M1;
                    i3 =  1;
              end

3'b100:
             begin
                pp3[8:0] = -M1;
                i3 = 1;
              end

3'b110 , 3'b101:
             begin
                pp3[8:0] = -M1;
             end


default : pp3 = 9'd0;

endcase

int_pp3 = {{3{pp3[8]}},pp3,6'b0};

 int_pp3 = int_pp3 << i3;
 f3 =1;
 end
 ////////////////////////////////////////////////////////////////////////////////////////
 ////////////////////////////////////////////////////////////////////////////////////////
 always @(*)

begin
pe ={1'b0,1'b0,X1[7]};
f4 =0;
i4=0;
case(pe)

3'b001 , 3'b010 :
               begin
                    pp4[8:0] = M1;
                end

3'b011:
              begin
                    pp4[8:0] = M1;
                    i4 =  1;
              end

3'b100:
             begin
                pp4[8:0] = -M1;
                i4 = 1;
              end

3'b110 , 3'b101:
             begin
                pp4[8:0] = -M1;
             end


default : pp4 = 9'd0;

endcase

int_pp4 = {{1{pp4[8]}},pp4,8'b0};

 int_pp4 = int_pp4 << i4;
 f4 =1;
 end
 



 endmodule

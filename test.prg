   *comment with spaces
#DEFINE cantbewrong
#DEFINE SPACE CHR
#IFDEF cantbewrong
#IF FILE ( 'test.h' )
   ***comment***
   # include  test.h
   # include  'test.h'
   # include  'test' + '.h'
   STORE 5 to  x && set x to 5
#ELSE
#ENDIF
   x = 'test' + CHR(13) + CHR(10)
   x = space(5)
   x = '' + CHR(13) + CHR(10)
#ELSE
_SCREEN.LOGO.TOP = (_SCREEN.HEIGHT-_SCREEN.LOGO.HEIGHT)/2-3

WAIT WINDOW space(3) + 'please wait' + CHR(32) NOWAIT TIMEOUT 1.3
#ENDIF

md test - test
MD test+test
md (test+test)
*com;
ment
NOTE note;
comment
x = 5*2**3**4
x = (1+2)*3
None = .nUlL.
Bool = .Y.
somedate = { / / }

if x > 5
else
   ?'hello'
   ?'goodbye'
ENDif

if x > 5
else
endif

delete file x
delete file (x)

_screen.refresh
test.prg()
test.prg(1)

if .f.
else
DO CASE
   CASE X == 1 && case 1
      do case
         case x == 1

      endcase
      X = 2
   CASE X == 2 && case 2
      X = 3
   CASE X == 2 && case 2 again
      X = 3
   CASE X == 2
      X = 3
   CASE X == 2
      X = 3
   CASE X == 2
      X = 3
ENDCASE
endif

do case
endcase

do case
endcase &&empty case end with comment

t=u(v(w(x(y(z)))))

*** CREATE REPORT TABLE
CREATE TABLE REPORT FREE (NAME C(50), ST C(2), QUANTITY N(5), RECEIVED L(1))
USE REPORT IN 0 SHARED
SELECT REPORT
APPEND BLANK

REPLACE REPORT.NAME WITH 'Michael'
REPLACE REPORT.ST WITH 'IA'
REPLACE REPORT.QUANTITY WITH 4
REPLACE REPORT.RECEIVED WITH .F.

GO TOP

FOR X = 1 TO REPORT.QUANITY
    SET PRINTER TO ALLTRIM('printer')
    REPORT FORM TEST.FRX TO PRINTER NOCONSOLE
    SET PRINTER TO
ENDFOR

IF USED('REPORT')
   SELECT REPORT
   USE IN REPORT
ENDIF

FUNCTION test
   parameters a, b
   ?a, b

DEFINE CLASS test as custom
   x = 3 && x is a thing in this class
   procedure init
      parameters initx, inity
      x = initx
ENDDEFINE

DEFINE CLASS test2 as form
   add object test as t with prop = 'hello'
   x = 3
ENDDEFINE


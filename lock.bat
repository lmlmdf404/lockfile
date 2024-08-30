cls
@ECHO OFF
title Folder Private
if EXIST " Locking" goto UNLOCK
if NOT EXIST Private goto MDLOCKER
:CONFIRM
echo Ban co chac muon khoa thu muc khong?(Y/N)
set/p "cho=>"
if %cho%==Y goto LOCK
if %cho%==y goto LOCK
if %cho%==n goto END
if %cho%==N goto END
echo Lua chon khong hop le.
goto CONFIRM
:LOCK
ren Private " Locking"
attrib +h +s " Locking"
echo Thu muc duoc khoa.
goto End
:UNLOCK
echo Nhap mat khau de mo khoa.
set/p "pass=>"
if NOT %pass%== 0000 goto FAIL
attrib -h -s " Locking"
ren " Locking" Private
echo Thu muc duoc khoa thanh cong.
goto End
:FAIL
echo Mat khau khong hop le.
goto end
:MDLOCKER
md Private
echo Thu muc duoc tao thanh cong.
goto End
:End
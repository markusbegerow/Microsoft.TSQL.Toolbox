/*
#########################################################
Author:			Markus Begerow
Created on:		01.09.2022
Description:	Handling Gridscale VM via T-SQL & PowerShell
Version:		1.0.0
#########################################################
*/

CREATE Procedure [dbo].[Gridscale_with_params]
(@MyUrl nvarchar(max),@XAuthUserId nvarchar(max), @XAuthToken nvarchar(max), @Param nvarchar(max) )as  
begin

declare @CMD varchar(500) = 'powershell.exe -file C:\CoPlanner\Scripts\gridscale_with_params.ps1 -MyUrl ' + @MyUrl + ' -XAuthUserId ' + @XAuthUserId + ' -XAuthToken ' + @XAuthToken + ' -Param ' + @Param + ' -ExecutionPolicy Unrestricted'
exec xp_cmdshell  @CMD, no_output



end

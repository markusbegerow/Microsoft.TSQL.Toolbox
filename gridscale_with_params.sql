CREATE Procedure [dbo].[Gridscale_with_params]
(@MyUrl nvarchar(max),@XAuthUserId nvarchar(max), @XAuthToken nvarchar(max), @Param nvarchar(max) )as  
begin

declare @CMD varchar(500) = 'powershell.exe -file C:\CoPlanner\Scripts\gridscale_with_params.ps1 -MyUrl ' + @MyUrl + ' -XAuthUserId ' + @XAuthUserId + ' -XAuthToken ' + @XAuthToken + ' -Param ' + @Param + ' -ExecutionPolicy Unrestricted'
exec xp_cmdshell  @CMD, no_output



end

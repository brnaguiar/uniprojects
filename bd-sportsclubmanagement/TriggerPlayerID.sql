create trigger MY_TEAM.playertrigger on MY_TEAM.Player
after insert
as
	declare @p_id as int
	select @p_id = MY_TEAM.Player.internal_id from MY_TEAM.Player;
	if @p_id < 1000 begin
		raiserror ('Player id nao processado. valor muito baixo', 16,1);
		rollback tran;
	end
	else if (@p_id > 9999) begin
	     print 'log: Player id de valor elevado'
		 rollback tran;
	end
go
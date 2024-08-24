{
	autoCmd = [
		{
			command = "set tabstop=2 shiftwidth=2";
			event = ["BufEnter"];
			pattern = ["*.rs"];
		}
		{
			command = "syntax match spaces /  / conceal cchar= ";
			event = ["BufEnter"];
			pattern = ["*.rs"];
		}
		{
			command = "set conceallevel=1 concealcursor=nvi";
			event = ["BufEnter"];
			pattern = ["*.rs"];
		}
	];
}

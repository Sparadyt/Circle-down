paused = true;
millisecond = 0;
second = 0;
minute = 0;

function IncreaseMillisecond()
{
	if(millisecond >= 999)
	{
		millisecond = 0;
		IncreaseSecond();
	}
	
	else if(millisecond < 999) millisecond++;
}
function IncreaseSecond()
{
	if(second >= 59)
	{
		second = 0;
		IncreaseMinute();
	}
	else if(second < 59) second++;
}
function IncreaseMinute()
{
	minute++;
}
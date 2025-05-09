#!/usr/bin/env python3
import python_weather
import asyncio

async def getweather() -> None:
    async with python_weather.Client(unit=python_weather.IMPERIAL) as client:
        weather = await client.get("23464")
        print(weather.temperature)


if __name__ == "__main__":
    asyncio.run(getweather())

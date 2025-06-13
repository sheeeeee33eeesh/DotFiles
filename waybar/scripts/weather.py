#!/usr/bin/env python3
# Import the module.
import python_weather

import asyncio
import os


async def main() -> None:
  
  # Declare the client. The measuring unit used defaults to the metric system (celcius, km/h, etc.)
  async with python_weather.Client(unit=python_weather.IMPERIAL) as client:
    
    # Fetch a weather forecast from a city.
    weather = await client.get('New York')
    
    # Fetch the temperature for today.
#    print(weather.temperature)

asyncio.run(main())

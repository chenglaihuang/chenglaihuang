# Kotlin Code Style
    
- Always import dependencies instead of using fully qualified class names.
    For example, write:
    ```kotlin
    import com.duolingo.sessionend.goals.dailyquests.DailyQuestSoundPlayer

    public lateinit var dailyQuestSoundPlayer: DailyQuestSoundPlayer
    ```
    instead of:
    ```
    public lateinit var dailyQuestSoundPlayer: com.duolingo.sessionend.goals.dailyquests.DailyQuestSoundPlayer
    ```
- Use curly braces for multi-line if-else statements
- All public variables and functions should be documented, but you should keep documentation simple and concise. Do not add unnecessary comments explaining your approach unless it is not straightforward to understand.
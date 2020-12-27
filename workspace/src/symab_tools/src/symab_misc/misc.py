def beep(repeats=1, interval=0.1, wait_before=0, wait_after=0):
    import sys
    import time

    time.sleep(wait_before)

    for r in range(repeats):
        time.sleep(interval)
        print('\a'),
        sys.stdout.flush()  # required in linux, else only last beep is heard.

    time.sleep(wait_after)


def say(sentence, wait_before=0, wait_after=0):
    import os
    import time

    time.sleep(wait_before)
    os.system('say \"' + sentence + '\"')
    time.sleep(wait_after)

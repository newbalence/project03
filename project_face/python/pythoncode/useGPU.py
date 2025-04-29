import tensorflow as tf

class tfg():
    def __init__(self):
        # 사용할 GPU 가져오기
        gpus = tf.config.list_physical_devices('GPU')

        if gpus:
            try:
                tf.config.set_logical_device_configuration(
                    gpus[0],
                    [tf.config.LogicalDeviceConfiguration(memory_limit=1024 * 7)]
                )
                logical_gpus = tf.config.list_logical_devices('GPU')
                print(f"{len(gpus)} Physical GPUs, {len(logical_gpus)} Logical GPUs")
            except RuntimeError as e:
                print(e)
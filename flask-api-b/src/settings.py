import os
import yaml

def read_yaml(
    path: str
) -> str | None:
    with open(path) as file:
        return yaml.load(file, Loader=yaml.FullLoader)

class Settings:
    yaml_config: dict | None = read_yaml(
        os.path.join(os.getcwd(), 'config.yaml')
    )
    
    @property
    def APP_NAME(self) -> str:
        return self.yaml_config.get('app_name')
    
settings = Settings()
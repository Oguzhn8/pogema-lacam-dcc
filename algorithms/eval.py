from pogema_toolbox.eval_utils import initialize_wandb, save_evaluation_results

from pathlib import Path
from typing import Literal

import yaml
from pogema_toolbox.evaluator import evaluation

from pogema_toolbox.registry import ToolboxRegistry

from env.create_env import create_env_base

from pogema_toolbox.create_env import Environment
from lacam.inference import LacamInference, LacamInferenceConfig
from dcc.inference import DCCInference, DCCInferenceConfig


PROJECT_NAME = 'Benchmark'
BASE_PATH = Path('experiments')
MODE: Literal["mapf", "lmapf"] = 'mapf'

def main(disable_wandb=False):
    env_cfg_name = 'Environment'
    ToolboxRegistry.register_env(env_cfg_name, create_env_base, Environment)
    ToolboxRegistry.register_algorithm('LaCAM', LacamInference, LacamInferenceConfig)
    ToolboxRegistry.register_algorithm('DCC', DCCInference, DCCInferenceConfig)

    folder_names = [
        '01-random']
    """
        '02-mazes',
        '03-warehouse',
        '04-movingai',
        '05-puzzles', 
    ]

    if MODE == "mapf":
        folder_names += ['06-pathfinding']
    """
    for folder in folder_names:
        maps_path = BASE_PATH / folder / "maps.yaml"
        with open(maps_path, 'r') as f:
            maps = yaml.safe_load(f)
        ToolboxRegistry.register_maps(maps)
        
        config_path = BASE_PATH / folder / f"{Path(folder).name}-{MODE}.yaml"
        with open(config_path) as f:
            evaluation_config = yaml.safe_load(f)
        
        eval_dir = BASE_PATH / folder
        initialize_wandb(evaluation_config, eval_dir, disable_wandb, PROJECT_NAME)
        evaluation(evaluation_config, eval_dir=eval_dir)
        save_evaluation_results(eval_dir)


if __name__ == '__main__':
    main()

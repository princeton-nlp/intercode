import os
import numpy as np
import pandas as pd

from typing import Dict

class IntercodeDataLoader():
    def __init__(self, data_path: str, parse_func: callable = None):
        self._validate_file_path(data_path)    
        self.data_path = data_path
        # Add logic to apply parsing function to data (transform it into a row with query + gold)
        self.data = self._load_data()

    def get(self, index: int = None) -> Dict:
        """Get query, gold pair (+ extra data) at index (or random index if None)"""
        if index is None:
            index = np.random.randint(0, len(self.data))
        record = {
            "query": self.data.iloc[index]["query"],
            "gold": self.data.iloc[index]["gold"],
        }
        if len(self.data.iloc[index]) > 2:
            columns = self.data.columns.tolist()
            extras = {}
            for i in range(len(columns)):
                if columns[i] not in ["query", "gold"]:
                    extras[columns[i]] = self.data.iloc[index,i]
            record["extra"] = extras
        return record

    def _load_data(self):
        """Load data from file path into pandas dataframe"""
        file_ext = self.data_path.split(".")[-1]
        if file_ext == "csv":
            data = pd.read_csv(self.data_path)
        elif file_ext == "tsv":
            data = pd.read_csv(self.data_path, sep="\t")
        elif file_ext == "json":
            data = pd.read_json(self.data_path)
        elif file_ext == "pickle" or file_ext == "pkl":
            data = pd.read_pickle(self.data_path)
        else:
            raise ValueError(f"Unsupported file type: {file_ext}")

        if "gold" not in data.columns or "query" not in data.columns:
            raise ValueError("Data must have columns/fields 'gold' and 'query'")
        return data
    
    def _validate_file_path(self, file_path: str):
        """Check if the file extension is one of tsv, csv, json, or pickle"""
        if not os.path.exists(file_path):
            raise OSError("Invalid file path")
        valid_extensions = [".tsv", ".csv", ".pickle", ".pkl", ".json"]
        _, ext = os.path.splitext(file_path)
        if ext not in valid_extensions:
            raise ValueError("File type is not supported")

    def __len__(self):
        return len(self.data)
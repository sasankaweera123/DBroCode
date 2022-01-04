import React from "react";
import { StyleSheet, Text, View, TouchableOpacity } from "react-native";

const Task = (props) => {
  return (
    <View style={styles.item}>
      <View style={styles.itemLeft}>
        <View style={styles.itemSqure}></View>
        <Text style={styles.itemText}> {props.text} </Text>
      </View>
      <View style={styles.circular}></View>
    </View>
  );
};

const styles = StyleSheet.create({
  item: {
    backgroundColor: "#1b1b1b",
    padding: 15,
    borderRadius: 10,
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "space-between",
    marginBottom: 20,
  },
  itemLeft: {
    flexDirection: "row",
    alignItems: "center",
    flexWrap: "wrap",
  },
  itemSqure: {
    width: 24,
    height: 24,
    backgroundColor: "#FF0000",
    opacity: 0.8,
    marginRight: 15,
  },
  itemText: {
    color: "#fff",
    maxWidth: "80%",
    fontSize: 20,
  },
  circular: {
    width: 12,
    height: 12,
    borderColor: "#ff0000",
    borderWidth: 2,
    borderRadius: 5,
  },
});

export default Task;

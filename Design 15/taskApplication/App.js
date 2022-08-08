import { StyleSheet, Text, View } from "react-native";
import Task from "./components/Task";
import FlatButton from "./components/Button";

export default function App() {
  return (
    <View style={styles.container}>
      {/*Tasks*/}

      <View style={styles.tasksWrapper}>
        <View style={styles.sectionTitle}>
          <Text style={styles.sectionTitleOne}>D Bro Code </Text>
          <Text style={styles.sectionTitleTwo}>'s Qualities</Text>
        </View>
        <View style={styles.items}>
          <Task text={"Imagination"} />
          <Task text={"Loyalty"} />
          <Task text={"Honesty"} />
          <Task text={"Caring"} />
          <Task text={"Flexible"} />
          <Task text={"Knowledge"} />
        </View>
        <View style={styles.button}>
          <FlatButton text="<<" />
          <FlatButton text=">>" />
        </View>
        <View style={styles.points}>
          <View style={styles.circular}></View>
          <View style={styles.circularTwo}></View>
          <View style={styles.circular}></View>
        </View>
      </View>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: "#000",
  },
  tasksWrapper: {
    paddingTop: 80,
    paddingHorizontal: 20,
  },
  sectionTitle: {
    flexDirection: "row",
    alignItems: "center",
  },
  sectionTitleOne: {
    color: "#ff0000",
    fontSize: 28,
    fontWeight: "bold",
  },
  sectionTitleTwo: {
    color: "#fff",
    fontSize: 28,
    fontWeight: "bold",
  },
  items: {
    marginTop: 30,
  },
  button: {
    marginTop: 10,
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "space-between",
  },
  points: {
    paddingTop: 20,
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "center",
  },
  circular: {
    width: 12,
    height: 12,
    borderColor: "#ff0000",
    borderWidth: 2,
    borderRadius: 5,
    opacity: 0.5,
    marginRight: 5,
  },
  circularTwo: {
    width: 12,
    height: 12,
    borderColor: "#ff0000",
    borderWidth: 2,
    borderRadius: 5,
    marginRight: 5,
  },
});

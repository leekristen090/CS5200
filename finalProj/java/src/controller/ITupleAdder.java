package controller;

import java.sql.Connection;

import javax.swing.*;

public interface ITupleAdder {
  boolean addTuple(String tableName, JPanel inputPanel, Connection connection);
}
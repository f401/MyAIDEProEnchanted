.class public final Lcom/s1243808733/android/dx/cf/attrib/AttLocalVariableTypeTable;
.super Lcom/s1243808733/android/dx/cf/attrib/BaseLocalVariables;
.source "AttLocalVariableTypeTable.java"


# static fields
.field public static final ATTRIBUTE_NAME:Ljava/lang/String; = "LocalVariableTypeTable"


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/cf/code/LocalVariableList;)V
    .registers 3

    .line 34
    const-string v0, "LocalVariableTypeTable"

    invoke-direct {p0, v0, p1}, Lcom/s1243808733/android/dx/cf/attrib/BaseLocalVariables;-><init>(Ljava/lang/String;Lcom/s1243808733/android/dx/cf/code/LocalVariableList;)V

    return-void
.end method

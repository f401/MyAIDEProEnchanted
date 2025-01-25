.class public abstract Lcom/s1243808733/android/dx/cf/attrib/BaseLocalVariables;
.super Lcom/s1243808733/android/dx/cf/attrib/BaseAttribute;
.source "BaseLocalVariables.java"


# instance fields
.field private final localVariables:Lcom/s1243808733/android/dx/cf/code/LocalVariableList;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/s1243808733/android/dx/cf/code/LocalVariableList;)V
    .registers 3

    .line 38
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/cf/attrib/BaseAttribute;-><init>(Ljava/lang/String;)V

    .line 41
    :try_start_3
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->isMutable()Z

    move-result p1
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_7} :catch_14

    if-nez p1, :cond_c

    .line 49
    iput-object p2, p0, Lcom/s1243808733/android/dx/cf/attrib/BaseLocalVariables;->localVariables:Lcom/s1243808733/android/dx/cf/code/LocalVariableList;

    return-void

    .line 42
    :cond_c
    :try_start_c
    new-instance p1, Lcom/s1243808733/android/dx/util/MutabilityException;

    const-string p2, "localVariables.isMutable()"

    invoke-direct {p1, p2}, Lcom/s1243808733/android/dx/util/MutabilityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_14} :catch_14

    .line 46
    :catch_14
    move-exception p1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "localVariables == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final byteLength()I
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/attrib/BaseLocalVariables;->localVariables:Lcom/s1243808733/android/dx/cf/code/LocalVariableList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public final getLocalVariables()Lcom/s1243808733/android/dx/cf/code/LocalVariableList;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/attrib/BaseLocalVariables;->localVariables:Lcom/s1243808733/android/dx/cf/code/LocalVariableList;

    return-object v0
.end method

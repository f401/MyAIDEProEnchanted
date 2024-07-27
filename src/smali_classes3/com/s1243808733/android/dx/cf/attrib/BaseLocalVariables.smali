.class public abstract Lcom/s1243808733/android/dx/cf/attrib/BaseLocalVariables;
.super Lcom/s1243808733/android/dx/cf/attrib/BaseAttribute;
.source "BaseLocalVariables.java"


# instance fields
.field private final localVariables:Lcom/s1243808733/android/dx/cf/code/LocalVariableList;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/s1243808733/android/dx/cf/code/LocalVariableList;)V
    .registers 5

    .line 38
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/cf/attrib/BaseAttribute;-><init>(Ljava/lang/String;)V

    .line 41
    :try_start_0
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Lcom/s1243808733/android/dx/util/MutabilityException;

    const-string v1, "localVariables.isMutable()"

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/util/MutabilityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 46
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "localVariables == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    iput-object p2, p0, Lcom/s1243808733/android/dx/cf/attrib/BaseLocalVariables;->localVariables:Lcom/s1243808733/android/dx/cf/code/LocalVariableList;

    return-void
.end method


# virtual methods
.method public final byteLength()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

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

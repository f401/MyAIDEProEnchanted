.class public final Lcom/s1243808733/android/dx/cf/attrib/AttLineNumberTable;
.super Lcom/s1243808733/android/dx/cf/attrib/BaseAttribute;
.source "AttLineNumberTable.java"


# static fields
.field public static final ATTRIBUTE_NAME:Ljava/lang/String; = "LineNumberTable"


# instance fields
.field private final lineNumbers:Lcom/s1243808733/android/dx/cf/code/LineNumberList;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/cf/code/LineNumberList;)V
    .registers 4

    .line 38
    const-string v0, "LineNumberTable"

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/attrib/BaseAttribute;-><init>(Ljava/lang/String;)V

    .line 41
    :try_start_0
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/LineNumberList;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Lcom/s1243808733/android/dx/util/MutabilityException;

    const-string v1, "lineNumbers.isMutable()"

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/util/MutabilityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 46
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "lineNumbers == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/attrib/AttLineNumberTable;->lineNumbers:Lcom/s1243808733/android/dx/cf/code/LineNumberList;

    return-void
.end method


# virtual methods
.method public byteLength()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/attrib/AttLineNumberTable;->lineNumbers:Lcom/s1243808733/android/dx/cf/code/LineNumberList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/LineNumberList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getLineNumbers()Lcom/s1243808733/android/dx/cf/code/LineNumberList;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/attrib/AttLineNumberTable;->lineNumbers:Lcom/s1243808733/android/dx/cf/code/LineNumberList;

    return-object v0
.end method

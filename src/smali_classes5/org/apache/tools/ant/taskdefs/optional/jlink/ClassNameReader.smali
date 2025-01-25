.class public Lorg/apache/tools/ant/taskdefs/optional/jlink/ClassNameReader;
.super Ljava/lang/Object;
.source "ClassNameReader.java"


# static fields
.field private static final CLASS_MAGIC_NUMBER:I = -0x35014542


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClassName(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 118
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 119
    const v2, -0x35014542  # -8346975.0f

    if-eq v1, v2, :cond_10

    .line 120
    const/4 v0, 0x0

    .line 130
    :goto_f
    return-object v0

    .line 122
    :cond_10
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    .line 124
    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/jlink/ConstantPool;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/taskdefs/optional/jlink/ConstantPool;-><init>(Ljava/io/DataInput;)V

    .line 125
    iget-object v1, v1, Lorg/apache/tools/ant/taskdefs/optional/jlink/ConstantPool;->values:[Ljava/lang/Object;

    .line 127
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 128
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 129
    aget-object v0, v1, v0

    check-cast v0, Ljava/lang/Integer;

    .line 130
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v1, v0

    check-cast v0, Ljava/lang/String;

    goto :goto_f
.end method

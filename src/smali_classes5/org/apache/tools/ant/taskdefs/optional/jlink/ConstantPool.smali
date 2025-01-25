.class Lorg/apache/tools/ant/taskdefs/optional/jlink/ConstantPool;
.super Ljava/lang/Object;
.source "ClassNameReader.java"


# static fields
.field static final CLASS:B = 0x7t

.field static final DOUBLE:B = 0x6t

.field static final FIELDREF:B = 0x9t

.field static final FLOAT:B = 0x4t

.field static final INTEGER:B = 0x3t

.field static final INTERFACEMETHODREF:B = 0xbt

.field static final LONG:B = 0x5t

.field static final METHODREF:B = 0xat

.field static final NAMEANDTYPE:B = 0xct

.field static final STRING:B = 0x8t

.field static final UNUSED:B = 0x2t

.field static final UTF8:B = 0x1t


# instance fields
.field types:[B

.field values:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/io/DataInput;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v1

    .line 52
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/ConstantPool;->types:[B

    .line 53
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/ConstantPool;->values:[Ljava/lang/Object;

    .line 55
    const/4 v0, 0x1

    :goto_10
    if-ge v0, v1, :cond_6e

    .line 56
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v2

    .line 57
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/ConstantPool;->types:[B

    aput-byte v2, v3, v0

    .line 58
    packed-switch v2, :pswitch_data_70

    .line 61
    :goto_1d
    :pswitch_1d  #0x2
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 90
    :pswitch_20  #0x7, 0x8
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/ConstantPool;->values:[Ljava/lang/Object;

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1d

    .line 84
    :pswitch_2d  #0x6
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/ConstantPool;->values:[Ljava/lang/Object;

    invoke-interface {p1}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v0

    .line 85
    add-int/lit8 v0, v0, 0x1

    .line 86
    goto :goto_1d

    .line 79
    :pswitch_3c  #0x5
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/ConstantPool;->values:[Ljava/lang/Object;

    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    .line 80
    add-int/lit8 v0, v0, 0x1

    .line 81
    goto :goto_1d

    .line 75
    :pswitch_4b  #0x4
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/ConstantPool;->values:[Ljava/lang/Object;

    invoke-interface {p1}, Ljava/io/DataInput;->readFloat()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1d

    .line 71
    :pswitch_58  #0x3, 0x9, 0xa, 0xb, 0xc
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/ConstantPool;->values:[Ljava/lang/Object;

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1d

    .line 60
    :pswitch_65  #0x1
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/ConstantPool;->values:[Ljava/lang/Object;

    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1d

    .line 97
    :cond_6e
    return-void

    .line 58
    nop

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_65  #00000001
        :pswitch_1d  #00000002
        :pswitch_58  #00000003
        :pswitch_4b  #00000004
        :pswitch_3c  #00000005
        :pswitch_2d  #00000006
        :pswitch_20  #00000007
        :pswitch_20  #00000008
        :pswitch_58  #00000009
        :pswitch_58  #0000000a
        :pswitch_58  #0000000b
        :pswitch_58  #0000000c
    .end packed-switch
.end method

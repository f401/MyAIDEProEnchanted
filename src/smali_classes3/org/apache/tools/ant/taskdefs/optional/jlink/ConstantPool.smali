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

    :goto_0
    if-ge v0, v1, :cond_0

    .line 56
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v2

    .line 57
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/ConstantPool;->types:[B

    aput-byte v2, v3, v0

    .line 58
    packed-switch v2, :pswitch_data_0

    .line 61
    :goto_1
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :pswitch_1
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/ConstantPool;->values:[Ljava/lang/Object;

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1

    .line 84
    :pswitch_2
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/ConstantPool;->values:[Ljava/lang/Object;

    invoke-interface {p1}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v0

    .line 85
    add-int/lit8 v0, v0, 0x1

    .line 86
    goto :goto_1

    .line 79
    :pswitch_3
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/ConstantPool;->values:[Ljava/lang/Object;

    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    .line 80
    add-int/lit8 v0, v0, 0x1

    .line 81
    goto :goto_1

    .line 75
    :pswitch_4
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/ConstantPool;->values:[Ljava/lang/Object;

    invoke-interface {p1}, Ljava/io/DataInput;->readFloat()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1

    .line 71
    :pswitch_5
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/ConstantPool;->values:[Ljava/lang/Object;

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1

    .line 60
    :pswitch_6
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/ConstantPool;->values:[Ljava/lang/Object;

    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1

    .line 97
    :cond_0
    return-void

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

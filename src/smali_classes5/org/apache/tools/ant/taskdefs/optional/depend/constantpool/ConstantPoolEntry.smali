.class public abstract Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPoolEntry;
.super Ljava/lang/Object;
.source "ConstantPoolEntry.java"


# static fields
.field public static final CONSTANT_CLASS:I = 0x7

.field public static final CONSTANT_DOUBLE:I = 0x6

.field public static final CONSTANT_FIELDREF:I = 0x9

.field public static final CONSTANT_FLOAT:I = 0x4

.field public static final CONSTANT_INTEGER:I = 0x3

.field public static final CONSTANT_INTERFACEMETHODREF:I = 0xb

.field public static final CONSTANT_INVOKEDYNAMIC:I = 0x12

.field public static final CONSTANT_LONG:I = 0x5

.field public static final CONSTANT_METHODHANDLE:I = 0xf

.field public static final CONSTANT_METHODREF:I = 0xa

.field public static final CONSTANT_METHODTYPE:I = 0x10

.field public static final CONSTANT_MODULEINFO:I = 0x13

.field public static final CONSTANT_NAMEANDTYPE:I = 0xc

.field public static final CONSTANT_PACKAGEINFO:I = 0x14

.field public static final CONSTANT_STRING:I = 0x8

.field public static final CONSTANT_UTF8:I = 0x1


# instance fields
.field private numEntries:I

.field private resolved:Z

.field private tag:I


# direct methods
.method public constructor <init>(II)V
    .registers 4

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPoolEntry;->tag:I

    .line 107
    iput p2, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPoolEntry;->numEntries:I

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPoolEntry;->resolved:Z

    .line 109
    return-void
.end method

.method public static readEntry(Ljava/io/DataInputStream;)Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPoolEntry;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    .line 128
    packed-switch v0, :pswitch_data_82

    .line 179
    :pswitch_7  #0x2, 0xd, 0xe, 0x11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Constant Pool entry Type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/ClassFormatError;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassFormatError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :pswitch_1e  #0x14
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/PackageCPInfo;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/PackageCPInfo;-><init>()V

    .line 132
    :goto_23
    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPoolEntry;->read(Ljava/io/DataInputStream;)V

    .line 184
    return-object v0

    .line 173
    :pswitch_27  #0x13
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ModuleCPInfo;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ModuleCPInfo;-><init>()V

    goto :goto_23

    .line 170
    :pswitch_2d  #0x12
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/InvokeDynamicCPInfo;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/InvokeDynamicCPInfo;-><init>()V

    goto :goto_23

    .line 167
    :pswitch_33  #0x10
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodTypeCPInfo;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodTypeCPInfo;-><init>()V

    goto :goto_23

    .line 164
    :pswitch_39  #0xf
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo;-><init>()V

    goto :goto_23

    .line 161
    :pswitch_3f  #0xc
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/NameAndTypeCPInfo;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/NameAndTypeCPInfo;-><init>()V

    goto :goto_23

    .line 158
    :pswitch_45  #0xb
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/InterfaceMethodRefCPInfo;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/InterfaceMethodRefCPInfo;-><init>()V

    goto :goto_23

    .line 155
    :pswitch_4b  #0xa
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodRefCPInfo;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodRefCPInfo;-><init>()V

    goto :goto_23

    .line 152
    :pswitch_51  #0x9
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/FieldRefCPInfo;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/FieldRefCPInfo;-><init>()V

    goto :goto_23

    .line 149
    :pswitch_57  #0x8
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/StringCPInfo;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/StringCPInfo;-><init>()V

    goto :goto_23

    .line 146
    :pswitch_5d  #0x7
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ClassCPInfo;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ClassCPInfo;-><init>()V

    goto :goto_23

    .line 143
    :pswitch_63  #0x6
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/DoubleCPInfo;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/DoubleCPInfo;-><init>()V

    goto :goto_23

    .line 140
    :pswitch_69  #0x5
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/LongCPInfo;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/LongCPInfo;-><init>()V

    goto :goto_23

    .line 137
    :pswitch_6f  #0x4
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/FloatCPInfo;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/FloatCPInfo;-><init>()V

    goto :goto_23

    .line 134
    :pswitch_75  #0x3
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/IntegerCPInfo;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/IntegerCPInfo;-><init>()V

    goto :goto_23

    .line 131
    :pswitch_7b  #0x1
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/Utf8CPInfo;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/Utf8CPInfo;-><init>()V

    goto :goto_23

    .line 128
    nop

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_7b  #00000001
        :pswitch_7  #00000002
        :pswitch_75  #00000003
        :pswitch_6f  #00000004
        :pswitch_69  #00000005
        :pswitch_63  #00000006
        :pswitch_5d  #00000007
        :pswitch_57  #00000008
        :pswitch_51  #00000009
        :pswitch_4b  #0000000a
        :pswitch_45  #0000000b
        :pswitch_3f  #0000000c
        :pswitch_7  #0000000d
        :pswitch_7  #0000000e
        :pswitch_39  #0000000f
        :pswitch_33  #00000010
        :pswitch_7  #00000011
        :pswitch_2d  #00000012
        :pswitch_27  #00000013
        :pswitch_1e  #00000014
    .end packed-switch
.end method


# virtual methods
.method public final getNumEntries()I
    .registers 2

    .line 236
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPoolEntry;->numEntries:I

    return v0
.end method

.method public getTag()I
    .registers 2

    .line 226
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPoolEntry;->tag:I

    return v0
.end method

.method public isResolved()Z
    .registers 2

    .line 196
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPoolEntry;->resolved:Z

    return v0
.end method

.method public abstract read(Ljava/io/DataInputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public resolve(Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;)V
    .registers 3

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPoolEntry;->resolved:Z

    .line 208
    return-void
.end method

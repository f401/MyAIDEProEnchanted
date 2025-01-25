.class final Lzeroaicy/org/objectweb/asm/SymbolTable;
.super Ljava/lang/Object;
.source "SymbolTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;
    }
.end annotation


# instance fields
.field private bootstrapMethodCount:I

.field private bootstrapMethods:Lzeroaicy/org/objectweb/asm/ByteVector;

.field private className:Ljava/lang/String;

.field final classWriter:Lzeroaicy/org/objectweb/asm/ClassWriter;

.field private constantPool:Lzeroaicy/org/objectweb/asm/ByteVector;

.field private constantPoolCount:I

.field private entries:[Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

.field private entryCount:I

.field private majorVersion:I

.field private final sourceClassReader:Lzeroaicy/org/objectweb/asm/ClassReader;

.field private typeCount:I

.field private typeTable:[Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;


# direct methods
.method constructor <init>(Lzeroaicy/org/objectweb/asm/ClassWriter;)V
    .registers 3

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->classWriter:Lzeroaicy/org/objectweb/asm/ClassWriter;

    .line 123
    const/4 p1, 0x0

    move-object v0, p1

    check-cast v0, Lzeroaicy/org/objectweb/asm/ClassReader;

    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->sourceClassReader:Lzeroaicy/org/objectweb/asm/ClassReader;

    .line 124
    const/16 p1, 0x100

    new-array p1, p1, [Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->entries:[Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    .line 125
    const/4 p1, 0x1

    iput p1, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPoolCount:I

    .line 126
    new-instance p1, Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-direct {p1}, Lzeroaicy/org/objectweb/asm/ByteVector;-><init>()V

    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPool:Lzeroaicy/org/objectweb/asm/ByteVector;

    return-void
.end method

.method constructor <init>(Lzeroaicy/org/objectweb/asm/ClassWriter;Lzeroaicy/org/objectweb/asm/ClassReader;)V
    .registers 16

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->classWriter:Lzeroaicy/org/objectweb/asm/ClassWriter;

    .line 139
    iput-object p2, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->sourceClassReader:Lzeroaicy/org/objectweb/asm/ClassReader;

    .line 142
    iget-object p1, p2, Lzeroaicy/org/objectweb/asm/ClassReader;->classFileBuffer:[B

    .line 143
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->getItem(I)I

    move-result v1

    sub-int/2addr v1, v0

    .line 144
    iget v2, p2, Lzeroaicy/org/objectweb/asm/ClassReader;->header:I

    sub-int/2addr v2, v1

    .line 145
    invoke-virtual {p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->getItemCount()I

    move-result v3

    iput v3, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPoolCount:I

    .line 146
    new-instance v3, Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-direct {v3, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;-><init>(I)V

    iput-object v3, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPool:Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 147
    invoke-virtual {v3, p1, v1, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByteArray([BII)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 152
    iget v1, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPoolCount:I

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    iput-object v1, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->entries:[Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    .line 153
    invoke-virtual {p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->getMaxStringLength()I

    move-result v1

    new-array v1, v1, [C

    const/4 v3, 0x0

    const/4 v10, 0x1

    .line 156
    :goto_33
    iget v4, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPoolCount:I

    if-lt v10, v4, :cond_3d

    if-eqz v3, :cond_3c

    .line 231
    invoke-direct {p0, p2, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->copyBootstrapMethods(Lzeroaicy/org/objectweb/asm/ClassReader;[C)V

    :cond_3c
    return-void

    .line 157
    :cond_3d
    invoke-virtual {p2, v10}, Lzeroaicy/org/objectweb/asm/ClassReader;->getItem(I)I

    move-result v4

    .line 158
    add-int/lit8 v5, v4, -0x1

    aget-byte v11, p1, v5

    packed-switch v11, :pswitch_data_f6

    .line 223
    :pswitch_48  #0x2, 0xd, 0xe
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 205
    :pswitch_4e  #0x11, 0x12
    add-int/lit8 v3, v4, 0x2

    invoke-virtual {p2, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    invoke-virtual {p2, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->getItem(I)I

    move-result v3

    .line 207
    invoke-virtual {p2, v3, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v7

    add-int/2addr v3, v2

    invoke-virtual {p2, v3, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v9

    move-object v4, p0

    move v5, v11

    move v6, v10

    invoke-direct/range {v4 .. v9}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantDynamicOrInvokeDynamicReference(IILjava/lang/String;Ljava/lang/String;I)V

    const/4 v3, 0x1

    goto/16 :goto_e8

    .line 191
    :pswitch_6e  #0xf
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p2, v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    invoke-virtual {p2, v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->getItem(I)I

    move-result v5

    .line 193
    add-int/lit8 v6, v5, 0x2

    invoke-virtual {p2, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    invoke-virtual {p2, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->getItem(I)I

    move-result v6

    .line 195
    invoke-virtual {p2, v4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readByte(I)I

    move-result v7

    invoke-virtual {p2, v5, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v6, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v9

    add-int/2addr v6, v2

    invoke-virtual {p2, v6, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v12

    move-object v4, p0

    move v5, v10

    move v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v12

    invoke-direct/range {v4 .. v9}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantMethodHandle(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e8

    .line 178
    :pswitch_9d  #0xc
    invoke-virtual {p2, v4, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p2, v4, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v10, v5, v4}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantNameAndType(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_e8

    .line 164
    :pswitch_ab  #0x9, 0xa, 0xb
    add-int/lit8 v5, v4, 0x2

    invoke-virtual {p2, v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    invoke-virtual {p2, v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->getItem(I)I

    move-result v5

    .line 166
    invoke-virtual {p2, v4, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v5, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v8

    add-int/2addr v5, v2

    invoke-virtual {p2, v5, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v9

    move-object v4, p0

    move v5, v10

    move v6, v11

    invoke-direct/range {v4 .. v9}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantMemberReference(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e8

    .line 219
    :pswitch_c9  #0x7, 0x8, 0x10, 0x13, 0x14
    invoke-virtual {p2, v4, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v10, v11, v4}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8Reference(IILjava/lang/String;)V

    goto :goto_e8

    .line 185
    :pswitch_d1  #0x5, 0x6
    invoke-virtual {p2, v4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readLong(I)J

    move-result-wide v4

    invoke-direct {p0, v10, v11, v4, v5}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantLongOrDouble(IIJ)V

    goto :goto_e8

    .line 175
    :pswitch_d9  #0x3, 0x4
    invoke-virtual {p2, v4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v4

    invoke-direct {p0, v10, v11, v4}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantIntegerOrFloat(III)V

    goto :goto_e8

    .line 188
    :pswitch_e1  #0x1
    invoke-virtual {p2, v10, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUtf(I[C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v10, v4}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(ILjava/lang/String;)V

    :goto_e8
    const/4 v4, 0x5

    if-eq v11, v4, :cond_f1

    const/4 v4, 0x6

    if-ne v11, v4, :cond_ef

    goto :goto_f1

    :cond_ef
    const/4 v4, 0x1

    goto :goto_f2

    :cond_f1
    :goto_f1
    const/4 v4, 0x2

    :goto_f2
    add-int/2addr v10, v4

    goto/16 :goto_33

    nop

    :pswitch_data_f6
    .packed-switch 0x1
        :pswitch_e1  #00000001
        :pswitch_48  #00000002
        :pswitch_d9  #00000003
        :pswitch_d9  #00000004
        :pswitch_d1  #00000005
        :pswitch_d1  #00000006
        :pswitch_c9  #00000007
        :pswitch_c9  #00000008
        :pswitch_ab  #00000009
        :pswitch_ab  #0000000a
        :pswitch_ab  #0000000b
        :pswitch_9d  #0000000c
        :pswitch_48  #0000000d
        :pswitch_48  #0000000e
        :pswitch_6e  #0000000f
        :pswitch_c9  #00000010
        :pswitch_4e  #00000011
        :pswitch_4e  #00000012
        :pswitch_c9  #00000013
        :pswitch_c9  #00000014
    .end packed-switch
.end method

.method private add(Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;",
            ")V"
        }
    .end annotation

    .line 437
    iget v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->entryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->entryCount:I

    .line 438
    iget v0, p1, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->hashCode:I

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->entries:[Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    array-length v2, v1

    rem-int/2addr v0, v2

    .line 439
    aget-object v1, v1, v0

    iput-object v1, p1, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->next:Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    .line 440
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->entries:[Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    aput-object p1, v1, v0

    return-void
.end method

.method private addBootstrapMethod(III)Lzeroaicy/org/objectweb/asm/Symbol;
    .registers 12

    .line 1096
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->bootstrapMethods:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    .line 1097
    invoke-direct {p0, p3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->get(I)Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    move-result-object v1

    :goto_8
    if-nez v1, :cond_1f

    .line 1115
    iget v3, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->bootstrapMethodCount:I

    add-int/lit8 p2, v3, 0x1

    iput p2, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->bootstrapMethodCount:I

    new-instance p2, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    const/16 v4, 0x40

    int-to-long v5, p1

    move-object v2, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;-><init>(IIJI)V

    invoke-direct {p0, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->put(Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;)Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    move-result-object p1

    return-object p1

    .line 1099
    :cond_1f
    iget v2, v1, Lzeroaicy/org/objectweb/asm/Symbol;->tag:I

    const/16 v3, 0x40

    if-ne v2, v3, :cond_42

    iget v2, v1, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->hashCode:I

    if-ne v2, p3, :cond_42

    .line 1100
    iget-wide v2, v1, Lzeroaicy/org/objectweb/asm/Symbol;->data:J

    long-to-int v3, v2

    const/4 v2, 0x0

    :goto_2d
    if-lt v2, p2, :cond_34

    .line 1109
    iget-object p2, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->bootstrapMethods:Lzeroaicy/org/objectweb/asm/ByteVector;

    iput p1, p2, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    return-object v1

    .line 1103
    :cond_34
    add-int v4, p1, v2

    aget-byte v4, v0, v4

    add-int v5, v3, v2

    aget-byte v5, v0, v5

    if-eq v4, v5, :cond_3f

    goto :goto_42

    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 1113
    :cond_42
    :goto_42
    iget-object v1, v1, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->next:Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    goto :goto_8
.end method

.method private addConstantDynamicOrInvokeDynamicReference(ILjava/lang/String;Ljava/lang/String;I)Lzeroaicy/org/objectweb/asm/Symbol;
    .registers 15

    .line 924
    invoke-static {p1, p2, p3, p4}, Lzeroaicy/org/objectweb/asm/SymbolTable;->hash(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v8

    .line 925
    invoke-direct {p0, v8}, Lzeroaicy/org/objectweb/asm/SymbolTable;->get(I)Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    move-result-object v0

    :goto_8
    if-nez v0, :cond_2c

    .line 936
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPool:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {p0, p2, p3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantNameAndType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p1, p4, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->put122(III)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 937
    iget v1, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPoolCount:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPoolCount:I

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    new-instance v9, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    const/4 v3, 0x0

    int-to-long v6, p4

    move-object v0, v9

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v8}, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-direct {p0, v9}, Lzeroaicy/org/objectweb/asm/SymbolTable;->put(Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;)Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    move-result-object p1

    return-object p1

    .line 927
    :cond_2c
    iget v1, v0, Lzeroaicy/org/objectweb/asm/Symbol;->tag:I

    if-ne v1, p1, :cond_4c

    iget v1, v0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->hashCode:I

    if-ne v1, v8, :cond_4c

    iget-wide v1, v0, Lzeroaicy/org/objectweb/asm/Symbol;->data:J

    int-to-long v3, p4

    cmp-long v5, v1, v3

    if-nez v5, :cond_4c

    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/Symbol;->name:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/Symbol;->value:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    return-object v0

    .line 934
    :cond_4c
    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->next:Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    goto :goto_8
.end method

.method private addConstantDynamicOrInvokeDynamicReference(IILjava/lang/String;Ljava/lang/String;I)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 960
    invoke-static {p1, p3, p4, p5}, Lzeroaicy/org/objectweb/asm/SymbolTable;->hash(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v8

    .line 961
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    new-instance v9, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    const/4 v3, 0x0

    int-to-long v6, p5

    move-object v0, v9

    move v1, p2

    move v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v8}, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-direct {p0, v9}, Lzeroaicy/org/objectweb/asm/SymbolTable;->add(Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;)V

    return-void
.end method

.method private addConstantIntegerOrFloat(II)Lzeroaicy/org/objectweb/asm/Symbol;
    .registers 10

    .line 638
    invoke-static {p1, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->hash(II)I

    move-result v5

    .line 639
    invoke-direct {p0, v5}, Lzeroaicy/org/objectweb/asm/SymbolTable;->get(I)Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    move-result-object v0

    :goto_8
    if-nez v0, :cond_26

    .line 646
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPool:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 647
    iget v1, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPoolCount:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPoolCount:I

    new-instance v6, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    int-to-long v3, p2

    move-object v0, v6

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;-><init>(IIJI)V

    invoke-direct {p0, v6}, Lzeroaicy/org/objectweb/asm/SymbolTable;->put(Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;)Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    move-result-object p1

    return-object p1

    .line 641
    :cond_26
    iget v1, v0, Lzeroaicy/org/objectweb/asm/Symbol;->tag:I

    if-ne v1, p1, :cond_36

    iget v1, v0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->hashCode:I

    if-ne v1, v5, :cond_36

    iget-wide v1, v0, Lzeroaicy/org/objectweb/asm/Symbol;->data:J

    int-to-long v3, p2

    cmp-long v6, v1, v3

    if-nez v6, :cond_36

    return-object v0

    .line 644
    :cond_36
    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->next:Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    goto :goto_8
.end method

.method private addConstantIntegerOrFloat(III)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .line 659
    new-instance v6, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    int-to-long v3, p3

    invoke-static {p2, p3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->hash(II)I

    move-result v5

    move-object v0, v6

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;-><init>(IIJI)V

    invoke-direct {p0, v6}, Lzeroaicy/org/objectweb/asm/SymbolTable;->add(Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;)V

    return-void
.end method

.method private addConstantLongOrDouble(IJ)Lzeroaicy/org/objectweb/asm/Symbol;
    .registers 11

    .line 693
    invoke-static {p1, p2, p3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->hash(IJ)I

    move-result v5

    .line 694
    invoke-direct {p0, v5}, Lzeroaicy/org/objectweb/asm/SymbolTable;->get(I)Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    move-result-object v0

    :goto_8
    if-nez v0, :cond_28

    .line 701
    iget v1, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPoolCount:I

    .line 702
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPool:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lzeroaicy/org/objectweb/asm/ByteVector;->putLong(J)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 703
    iget v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPoolCount:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPoolCount:I

    .line 704
    new-instance v6, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    move-object v0, v6

    move v2, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;-><init>(IIJI)V

    invoke-direct {p0, v6}, Lzeroaicy/org/objectweb/asm/SymbolTable;->put(Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;)Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    move-result-object p1

    return-object p1

    .line 696
    :cond_28
    iget v1, v0, Lzeroaicy/org/objectweb/asm/Symbol;->tag:I

    if-ne v1, p1, :cond_37

    iget v1, v0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->hashCode:I

    if-ne v1, v5, :cond_37

    iget-wide v1, v0, Lzeroaicy/org/objectweb/asm/Symbol;->data:J

    cmp-long v3, v1, p2

    if-nez v3, :cond_37

    return-object v0

    .line 699
    :cond_37
    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->next:Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    goto :goto_8
.end method

.method private addConstantLongOrDouble(IIJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ)V"
        }
    .end annotation

    .line 716
    new-instance v6, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    invoke-static {p2, p3, p4}, Lzeroaicy/org/objectweb/asm/SymbolTable;->hash(IJ)I

    move-result v5

    move-object v0, v6

    move v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;-><init>(IIJI)V

    invoke-direct {p0, v6}, Lzeroaicy/org/objectweb/asm/SymbolTable;->add(Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;)V

    return-void
.end method

.method private addConstantMemberReference(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;
    .registers 15

    .line 559
    invoke-static {p1, p2, p3, p4}, Lzeroaicy/org/objectweb/asm/SymbolTable;->hash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 560
    invoke-direct {p0, v8}, Lzeroaicy/org/objectweb/asm/SymbolTable;->get(I)Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    move-result-object v0

    :goto_8
    if-nez v0, :cond_30

    .line 571
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPool:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {p0, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v1

    iget v1, v1, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {p0, p3, p4}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantNameAndType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->put122(III)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 573
    iget v1, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPoolCount:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPoolCount:I

    new-instance v9, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    const/4 v0, 0x0

    int-to-long v6, v0

    move-object v0, v9

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v8}, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-direct {p0, v9}, Lzeroaicy/org/objectweb/asm/SymbolTable;->put(Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;)Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    move-result-object p1

    return-object p1

    .line 562
    :cond_30
    iget v1, v0, Lzeroaicy/org/objectweb/asm/Symbol;->tag:I

    if-ne v1, p1, :cond_51

    iget v1, v0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->hashCode:I

    if-ne v1, v8, :cond_51

    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/Symbol;->owner:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/Symbol;->name:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/Symbol;->value:Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    return-object v0

    .line 569
    :cond_51
    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->next:Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    goto :goto_8
.end method

.method private addConstantMemberReference(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 593
    new-instance v9, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    const/4 v0, 0x0

    int-to-long v6, v0

    invoke-static {p2, p3, p4, p5}, Lzeroaicy/org/objectweb/asm/SymbolTable;->hash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    move-object v0, v9

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v8}, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-direct {p0, v9}, Lzeroaicy/org/objectweb/asm/SymbolTable;->add(Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;)V

    return-void
.end method

.method private addConstantMethodHandle(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 853
    const/16 v0, 0xf

    invoke-static {v0, p3, p4, p5, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->hash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    .line 854
    new-instance v0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    const/16 v3, 0xf

    int-to-long v7, p2

    move-object v1, v0

    move v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v9}, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->add(Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;)V

    return-void
.end method

.method private addConstantNameAndType(ILjava/lang/String;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 753
    new-instance v6, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    const/16 v2, 0xc

    const/16 v0, 0xc

    invoke-static {v0, p2, p3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->hash(ILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    move-object v0, v6

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;-><init>(IILjava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v6}, Lzeroaicy/org/objectweb/asm/SymbolTable;->add(Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;)V

    return-void
.end method

.method private addConstantUtf8(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 785
    new-instance v0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    const/4 v1, 0x1

    invoke-static {v1, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->hash(ILjava/lang/String;)I

    move-result v2

    invoke-direct {v0, p1, v1, p2, v2}, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;-><init>(IILjava/lang/String;I)V

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->add(Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;)V

    return-void
.end method

.method private addConstantUtf8Reference(ILjava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;
    .registers 6

    .line 999
    invoke-static {p1, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->hash(ILjava/lang/String;)I

    move-result v0

    .line 1000
    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->get(I)Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    move-result-object v1

    :goto_8
    if-nez v1, :cond_23

    .line 1007
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPool:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {p0, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1008
    iget v1, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPoolCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPoolCount:I

    new-instance v2, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    invoke-direct {v2, v1, p1, p2, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;-><init>(IILjava/lang/String;I)V

    invoke-direct {p0, v2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->put(Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;)Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    move-result-object p1

    return-object p1

    .line 1002
    :cond_23
    iget v2, v1, Lzeroaicy/org/objectweb/asm/Symbol;->tag:I

    if-ne v2, p1, :cond_34

    iget v2, v1, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->hashCode:I

    if-ne v2, v0, :cond_34

    iget-object v2, v1, Lzeroaicy/org/objectweb/asm/Symbol;->value:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    return-object v1

    .line 1005
    :cond_34
    iget-object v1, v1, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->next:Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    goto :goto_8
.end method

.method private addConstantUtf8Reference(IILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1023
    new-instance v0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    invoke-static {p2, p3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->hash(ILjava/lang/String;)I

    move-result v1

    invoke-direct {v0, p1, p2, p3, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;-><init>(IILjava/lang/String;I)V

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->add(Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;)V

    return-void
.end method

.method private addTypeInternal(Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;)I
    .registers 6

    .line 1216
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->typeTable:[Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    if-nez v0, :cond_a

    .line 1217
    const/16 v0, 0x10

    new-array v0, v0, [Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->typeTable:[Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    .line 1219
    :cond_a
    iget v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->typeCount:I

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->typeTable:[Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    array-length v2, v1

    if-ne v0, v2, :cond_1d

    .line 1220
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    .line 1221
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1222
    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->typeTable:[Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    .line 1224
    :cond_1d
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->typeTable:[Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    iget v1, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->typeCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->typeCount:I

    aput-object p1, v0, v1

    .line 1225
    invoke-direct {p0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->put(Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;)Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    move-result-object p1

    iget p1, p1, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    return p1
.end method

.method private copyBootstrapMethods(Lzeroaicy/org/objectweb/asm/ClassReader;[C)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/ClassReader;",
            "[C)V"
        }
    .end annotation

    .line 245
    iget-object v0, p1, Lzeroaicy/org/objectweb/asm/ClassReader;->classFileBuffer:[B

    .line 246
    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/ClassReader;->getFirstAttributeOffset()I

    move-result v1

    .line 247
    add-int/lit8 v2, v1, -0x2

    invoke-virtual {p1, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    :goto_c
    if-gtz v2, :cond_f

    goto :goto_23

    .line 248
    :cond_f
    invoke-virtual {p1, v1, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    .line 249
    sget-object v4, Lzeroaicy/org/objectweb/asm/Constants;->BOOTSTRAP_METHODS:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_83

    .line 250
    add-int/lit8 v2, v1, 0x6

    invoke-virtual {p1, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    iput v2, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->bootstrapMethodCount:I

    .line 255
    :goto_23
    iget v2, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->bootstrapMethodCount:I

    if-lez v2, :cond_82

    add-int/lit8 v2, v1, 0x8

    .line 258
    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    .line 259
    new-instance v3, Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-direct {v3, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;-><init>(I)V

    iput-object v3, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->bootstrapMethods:Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 260
    invoke-virtual {v3, v0, v2, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByteArray([BII)Lzeroaicy/org/objectweb/asm/ByteVector;

    const/4 v0, 0x0

    move v1, v2

    .line 264
    :goto_3d
    iget v3, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->bootstrapMethodCount:I

    if-lt v0, v3, :cond_42

    goto :goto_82

    .line 266
    :cond_42
    invoke-virtual {p1, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    .line 268
    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p1, v4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    .line 270
    invoke-virtual {p1, v3, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/lit8 v5, v1, 0x4

    move v9, v5

    :goto_57
    if-gtz v4, :cond_70

    .line 276
    new-instance v10, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    const/16 v5, 0x40

    sub-int/2addr v1, v2

    int-to-long v6, v1

    const v1, 0x7fffffff

    and-int v8, v3, v1

    move-object v3, v10

    move v4, v0

    invoke-direct/range {v3 .. v8}, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;-><init>(IIJI)V

    invoke-direct {p0, v10}, Lzeroaicy/org/objectweb/asm/SymbolTable;->add(Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;)V

    add-int/lit8 v0, v0, 0x1

    move v1, v9

    goto :goto_3d

    .line 272
    :cond_70
    invoke-virtual {p1, v9}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    add-int/lit8 v9, v9, 0x2

    .line 274
    invoke-virtual {p1, v5, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    xor-int/2addr v3, v5

    add-int/lit8 v4, v4, -0x1

    goto :goto_57

    :cond_82
    :goto_82
    return-void

    .line 253
    :cond_83
    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p1, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_c
.end method

.method private get(I)Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;
    .registers 4

    .line 394
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->entries:[Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    array-length v1, v0

    rem-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private static hash(II)I
    .registers 2

    add-int/2addr p0, p1

    const p1, 0x7fffffff

    and-int/2addr p0, p1

    return p0
.end method

.method private static hash(IJ)I
    .registers 4

    long-to-int v0, p1

    add-int/2addr p0, v0

    const/16 v0, 0x20

    ushr-long/2addr p1, v0

    long-to-int p2, p1

    add-int/2addr p0, p2

    const p1, 0x7fffffff

    and-int/2addr p0, p1

    return p0
.end method

.method private static hash(ILjava/lang/String;)I
    .registers 2

    .line 1241
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    add-int/2addr p0, p1

    const p1, 0x7fffffff

    and-int/2addr p0, p1

    return p0
.end method

.method private static hash(ILjava/lang/String;I)I
    .registers 3

    .line 1245
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    add-int/2addr p0, p1

    add-int/2addr p0, p2

    const p1, 0x7fffffff

    and-int/2addr p0, p1

    return p0
.end method

.method private static hash(ILjava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 1249
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    mul-int p1, p1, p2

    add-int/2addr p0, p1

    const p1, 0x7fffffff

    and-int/2addr p0, p1

    return p0
.end method

.method private static hash(ILjava/lang/String;Ljava/lang/String;I)I
    .registers 4

    .line 1254
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    mul-int p1, p1, p2

    add-int/lit8 p3, p3, 0x1

    mul-int p1, p1, p3

    add-int/2addr p0, p1

    const p1, 0x7fffffff

    and-int/2addr p0, p1

    return p0
.end method

.method private static hash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 1259
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    mul-int p1, p1, p2

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p2

    mul-int p1, p1, p2

    add-int/2addr p0, p1

    const p1, 0x7fffffff

    and-int/2addr p0, p1

    return p0
.end method

.method private static hash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 5

    .line 1268
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    mul-int p1, p1, p2

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p2

    mul-int p1, p1, p2

    mul-int p1, p1, p4

    add-int/2addr p0, p1

    const p1, 0x7fffffff

    and-int/2addr p0, p1

    return p0
.end method

.method private put(Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;)Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;
    .registers 9

    .line 407
    iget v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->entryCount:I

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->entries:[Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    if-le v0, v2, :cond_2d

    .line 408
    array-length v0, v1

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    .line 410
    new-array v2, v1, [Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    :goto_12
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_19

    .line 421
    iput-object v2, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->entries:[Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    goto :goto_2d

    .line 412
    :cond_19
    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->entries:[Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    aget-object v3, v3, v0

    :goto_1d
    if-nez v3, :cond_20

    goto :goto_12

    .line 414
    :cond_20
    iget v4, v3, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->hashCode:I

    rem-int/2addr v4, v1

    .line 415
    iget-object v5, v3, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->next:Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    .line 416
    aget-object v6, v2, v4

    iput-object v6, v3, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->next:Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    .line 417
    aput-object v3, v2, v4

    move-object v3, v5

    goto :goto_1d

    .line 423
    :cond_2d
    :goto_2d
    iget v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->entryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->entryCount:I

    .line 424
    iget v0, p1, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->hashCode:I

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->entries:[Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    array-length v2, v1

    rem-int/2addr v0, v2

    .line 425
    aget-object v1, v1, v0

    iput-object v1, p1, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->next:Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    .line 426
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->entries:[Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    aput-object p1, v1, v0

    return-object p1
.end method


# virtual methods
.method varargs addBootstrapMethod(Lzeroaicy/org/objectweb/asm/Handle;[Ljava/lang/Object;)Lzeroaicy/org/objectweb/asm/Symbol;
    .registers 15

    .line 1040
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->bootstrapMethods:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-nez v0, :cond_b

    .line 1042
    new-instance v0, Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lzeroaicy/org/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->bootstrapMethods:Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1049
    :cond_b
    array-length v1, p2

    .line 1050
    new-array v2, v1, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_10
    if-lt v4, v1, :cond_5d

    .line 1058
    iget v5, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    .line 1059
    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/Handle;->getTag()I

    move-result v7

    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/Handle;->getOwner()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/Handle;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/Handle;->getDesc()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/Handle;->isInterface()Z

    move-result v11

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantMethodHandle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v4

    iget v4, v4, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {v0, v4}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1068
    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    const/4 v4, 0x0

    :goto_36
    if-lt v4, v1, :cond_55

    .line 1074
    iget v6, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    .line 1075
    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/Handle;->hashCode()I

    move-result p1

    .line 1077
    :goto_3e
    array-length v0, p2

    if-lt v3, v0, :cond_4b

    .line 1082
    sub-int/2addr v6, v5

    const p2, 0x7fffffff

    and-int/2addr p1, p2

    invoke-direct {p0, v5, v6, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addBootstrapMethod(III)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p1

    return-object p1

    .line 1076
    :cond_4b
    aget-object v0, p2, v3

    .line 1077
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    xor-int/2addr p1, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    .line 1070
    :cond_55
    aget v6, v2, v4

    invoke-virtual {v0, v6}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    .line 1052
    :cond_5d
    aget-object v5, p2, v4

    invoke-virtual {p0, v5}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstant(Ljava/lang/Object;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v5

    iget v5, v5, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_10
.end method

.method addConstant(Ljava/lang/Object;)Lzeroaicy/org/objectweb/asm/Symbol;
    .registers 8

    .line 457
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_f

    .line 458
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantInteger(I)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p1

    return-object p1

    .line 459
    :cond_f
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_1e

    .line 460
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantInteger(I)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p1

    return-object p1

    .line 461
    :cond_1e
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_2d

    .line 462
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {p0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantInteger(I)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p1

    return-object p1

    .line 463
    :cond_2d
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_3c

    .line 464
    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantInteger(I)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p1

    return-object p1

    .line 465
    :cond_3c
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_4b

    .line 466
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantInteger(I)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p1

    return-object p1

    .line 467
    :cond_4b
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_5a

    .line 468
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantFloat(F)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p1

    return-object p1

    .line 469
    :cond_5a
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_69

    .line 470
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantLong(J)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p1

    return-object p1

    .line 471
    :cond_69
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_78

    .line 472
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantDouble(D)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p1

    return-object p1

    .line 473
    :cond_78
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_83

    .line 474
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantString(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p1

    return-object p1

    .line 475
    :cond_83
    instance-of v0, p1, Lzeroaicy/org/objectweb/asm/Type;

    if-eqz v0, :cond_b0

    .line 476
    check-cast p1, Lzeroaicy/org/objectweb/asm/Type;

    .line 477
    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/Type;->getSort()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_9a

    .line 479
    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p1

    return-object p1

    :cond_9a
    const/16 v1, 0xb

    if-ne v0, v1, :cond_a7

    .line 481
    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantMethodType(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p1

    return-object p1

    .line 483
    :cond_a7
    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p1

    return-object p1

    .line 485
    :cond_b0
    instance-of v0, p1, Lzeroaicy/org/objectweb/asm/Handle;

    if-eqz v0, :cond_d0

    .line 486
    check-cast p1, Lzeroaicy/org/objectweb/asm/Handle;

    .line 487
    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/Handle;->getTag()I

    move-result v1

    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/Handle;->getOwner()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/Handle;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/Handle;->getDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/Handle;->isInterface()Z

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantMethodHandle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p1

    return-object p1

    .line 493
    :cond_d0
    instance-of v0, p1, Lzeroaicy/org/objectweb/asm/ConstantDynamic;

    if-eqz v0, :cond_eb

    .line 494
    check-cast p1, Lzeroaicy/org/objectweb/asm/ConstantDynamic;

    .line 495
    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/ConstantDynamic;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/ConstantDynamic;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/ConstantDynamic;->getBootstrapMethod()Lzeroaicy/org/objectweb/asm/Handle;

    move-result-object v2

    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/ConstantDynamic;->getBootstrapMethodArgumentsUnsafe()[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantDynamic(Ljava/lang/String;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/Handle;[Ljava/lang/Object;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p1

    return-object p1

    .line 501
    :cond_eb
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method addConstantClass(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;
    .registers 3

    .line 513
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8Reference(ILjava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p1

    return-object p1
.end method

.method addConstantDouble(D)Lzeroaicy/org/objectweb/asm/Symbol;
    .registers 4

    .line 681
    const/4 v0, 0x6

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-direct {p0, v0, p1, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantLongOrDouble(IJ)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p1

    return-object p1
.end method

.method varargs addConstantDynamic(Ljava/lang/String;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/Handle;[Ljava/lang/Object;)Lzeroaicy/org/objectweb/asm/Symbol;
    .registers 5

    .line 884
    invoke-virtual {p0, p3, p4}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addBootstrapMethod(Lzeroaicy/org/objectweb/asm/Handle;[Ljava/lang/Object;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p3

    .line 885
    const/16 p4, 0x11

    iget p3, p3, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-direct {p0, p4, p1, p2, p3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantDynamicOrInvokeDynamicReference(ILjava/lang/String;Ljava/lang/String;I)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p1

    return-object p1
.end method

.method addConstantFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;
    .registers 5

    .line 526
    const/16 v0, 0x9

    invoke-direct {p0, v0, p1, p2, p3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantMemberReference(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    move-result-object p1

    return-object p1
.end method

.method addConstantFloat(F)Lzeroaicy/org/objectweb/asm/Symbol;
    .registers 3

    .line 626
    const/4 v0, 0x4

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantIntegerOrFloat(II)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p1

    return-object p1
.end method

.method addConstantInteger(I)Lzeroaicy/org/objectweb/asm/Symbol;
    .registers 3

    .line 615
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantIntegerOrFloat(II)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p1

    return-object p1
.end method

.method varargs addConstantInvokeDynamic(Ljava/lang/String;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/Handle;[Ljava/lang/Object;)Lzeroaicy/org/objectweb/asm/Symbol;
    .registers 5

    .line 905
    invoke-virtual {p0, p3, p4}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addBootstrapMethod(Lzeroaicy/org/objectweb/asm/Handle;[Ljava/lang/Object;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p3

    .line 906
    const/16 p4, 0x12

    iget p3, p3, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-direct {p0, p4, p1, p2, p3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantDynamicOrInvokeDynamicReference(ILjava/lang/String;Ljava/lang/String;I)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p1

    return-object p1
.end method

.method addConstantLong(J)Lzeroaicy/org/objectweb/asm/Symbol;
    .registers 4

    .line 670
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantLongOrDouble(IJ)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p1

    return-object p1
.end method

.method addConstantMethodHandle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/Symbol;
    .registers 16

    .line 811
    const/16 v0, 0xf

    invoke-static {v0, p2, p3, p4, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->hash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    .line 812
    invoke-direct {p0, v9}, Lzeroaicy/org/objectweb/asm/SymbolTable;->get(I)Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    move-result-object v1

    :goto_a
    if-nez v1, :cond_3d

    const/4 v1, 0x4

    if-gt p1, v1, :cond_1b

    .line 825
    iget-object p5, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPool:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {p0, p2, p3, p4}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v1

    iget v1, v1, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {p5, v0, p1, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->put112(III)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_26

    .line 827
    :cond_1b
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPool:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {p0, p2, p3, p4, p5}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p5

    iget p5, p5, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {v1, v0, p1, p5}, Lzeroaicy/org/objectweb/asm/ByteVector;->put112(III)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 830
    :goto_26
    iget v2, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPoolCount:I

    add-int/lit8 p5, v2, 0x1

    iput p5, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPoolCount:I

    new-instance p5, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    const/16 v3, 0xf

    int-to-long v7, p1

    move-object v1, p5

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v9}, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-direct {p0, p5}, Lzeroaicy/org/objectweb/asm/SymbolTable;->put(Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;)Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    move-result-object p1

    return-object p1

    .line 814
    :cond_3d
    iget v2, v1, Lzeroaicy/org/objectweb/asm/Symbol;->tag:I

    if-ne v2, v0, :cond_65

    iget v2, v1, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->hashCode:I

    if-ne v2, v9, :cond_65

    iget-wide v2, v1, Lzeroaicy/org/objectweb/asm/Symbol;->data:J

    int-to-long v4, p1

    cmp-long v6, v2, v4

    if-nez v6, :cond_65

    iget-object v2, v1, Lzeroaicy/org/objectweb/asm/Symbol;->owner:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    iget-object v2, v1, Lzeroaicy/org/objectweb/asm/Symbol;->name:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    iget-object v2, v1, Lzeroaicy/org/objectweb/asm/Symbol;->value:Ljava/lang/String;

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    return-object v1

    .line 822
    :cond_65
    iget-object v1, v1, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->next:Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    goto :goto_a
.end method

.method addConstantMethodType(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;
    .registers 3

    .line 865
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8Reference(ILjava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p1

    return-object p1
.end method

.method addConstantMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/Symbol;
    .registers 5

    if-eqz p4, :cond_5

    const/16 p4, 0xb

    goto :goto_7

    :cond_5
    const/16 p4, 0xa

    .line 542
    :goto_7
    invoke-direct {p0, p4, p1, p2, p3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantMemberReference(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    move-result-object p1

    return-object p1
.end method

.method addConstantModule(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;
    .registers 3

    .line 972
    const/16 v0, 0x13

    invoke-direct {p0, v0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8Reference(ILjava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p1

    return-object p1
.end method

.method addConstantNameAndType(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10

    .line 729
    const/16 v0, 0xc

    invoke-static {v0, p1, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->hash(ILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 730
    invoke-direct {p0, v6}, Lzeroaicy/org/objectweb/asm/SymbolTable;->get(I)Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    move-result-object v1

    :goto_a
    if-nez v1, :cond_30

    .line 740
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPool:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {p0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lzeroaicy/org/objectweb/asm/ByteVector;->put122(III)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 741
    iget v2, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPoolCount:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPoolCount:I

    new-instance v0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    const/16 v3, 0xc

    move-object v1, v0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;-><init>(IILjava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->put(Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;)Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    move-result-object p1

    iget p1, p1, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    return p1

    .line 732
    :cond_30
    iget v2, v1, Lzeroaicy/org/objectweb/asm/Symbol;->tag:I

    if-ne v2, v0, :cond_4b

    iget v2, v1, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->hashCode:I

    if-ne v2, v6, :cond_4b

    iget-object v2, v1, Lzeroaicy/org/objectweb/asm/Symbol;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    iget-object v2, v1, Lzeroaicy/org/objectweb/asm/Symbol;->value:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 736
    iget p1, v1, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    return p1

    .line 738
    :cond_4b
    iget-object v1, v1, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->next:Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    goto :goto_a
.end method

.method addConstantPackage(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;
    .registers 3

    .line 983
    const/16 v0, 0x14

    invoke-direct {p0, v0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8Reference(ILjava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p1

    return-object p1
.end method

.method addConstantString(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;
    .registers 3

    .line 604
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8Reference(ILjava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p1

    return-object p1
.end method

.method addConstantUtf8(Ljava/lang/String;)I
    .registers 6

    .line 764
    const/4 v0, 0x1

    invoke-static {v0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->hash(ILjava/lang/String;)I

    move-result v1

    .line 765
    invoke-direct {p0, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->get(I)Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    move-result-object v2

    :goto_9
    if-nez v2, :cond_26

    .line 774
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPool:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {v2, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v2

    invoke-virtual {v2, p1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putUTF8(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 775
    iget v2, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPoolCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPoolCount:I

    new-instance v3, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    invoke-direct {v3, v2, v0, p1, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;-><init>(IILjava/lang/String;I)V

    invoke-direct {p0, v3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->put(Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;)Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    move-result-object p1

    iget p1, p1, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    return p1

    .line 767
    :cond_26
    iget v3, v2, Lzeroaicy/org/objectweb/asm/Symbol;->tag:I

    if-ne v3, v0, :cond_39

    iget v3, v2, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->hashCode:I

    if-ne v3, v1, :cond_39

    iget-object v3, v2, Lzeroaicy/org/objectweb/asm/Symbol;->value:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 770
    iget p1, v2, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    return p1

    .line 772
    :cond_39
    iget-object v2, v2, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->next:Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    goto :goto_9
.end method

.method addMergedType(II)I
    .registers 13

    if-ge p1, p2, :cond_5

    int-to-long v0, p1

    int-to-long v2, p2

    goto :goto_7

    :cond_5
    int-to-long v0, p2

    int-to-long v2, p1

    :goto_7
    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long v7, v0, v2

    .line 1192
    add-int v0, p1, p2

    const/16 v1, 0x82

    invoke-static {v1, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->hash(II)I

    move-result v9

    .line 1193
    invoke-direct {p0, v9}, Lzeroaicy/org/objectweb/asm/SymbolTable;->get(I)Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    move-result-object v0

    :goto_18
    if-nez v0, :cond_41

    .line 1200
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->typeTable:[Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    aget-object p1, v0, p1

    iget-object p1, p1, Lzeroaicy/org/objectweb/asm/Symbol;->value:Ljava/lang/String;

    .line 1201
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->typeTable:[Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    aget-object p2, v0, p2

    iget-object p2, p2, Lzeroaicy/org/objectweb/asm/Symbol;->value:Ljava/lang/String;

    .line 1202
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->classWriter:Lzeroaicy/org/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p1, p2}, Lzeroaicy/org/objectweb/asm/ClassWriter;->getCommonSuperClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result p1

    .line 1203
    new-instance p2, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    iget v5, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->typeCount:I

    const/16 v6, 0x82

    move-object v4, p2

    invoke-direct/range {v4 .. v9}, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;-><init>(IIJI)V

    invoke-direct {p0, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->put(Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;)Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    move-result-object p2

    iput p1, p2, Lzeroaicy/org/objectweb/asm/Symbol;->info:I

    return p1

    .line 1195
    :cond_41
    iget v2, v0, Lzeroaicy/org/objectweb/asm/Symbol;->tag:I

    if-ne v2, v1, :cond_52

    iget v2, v0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->hashCode:I

    if-ne v2, v9, :cond_52

    iget-wide v2, v0, Lzeroaicy/org/objectweb/asm/Symbol;->data:J

    cmp-long v4, v2, v7

    if-nez v4, :cond_52

    .line 1196
    iget p1, v0, Lzeroaicy/org/objectweb/asm/Symbol;->info:I

    return p1

    .line 1198
    :cond_52
    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->next:Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    goto :goto_18
.end method

.method addType(Ljava/lang/String;)I
    .registers 6

    .line 1140
    const/16 v0, 0x80

    invoke-static {v0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->hash(ILjava/lang/String;)I

    move-result v1

    .line 1141
    invoke-direct {p0, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->get(I)Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    move-result-object v2

    :goto_a
    if-nez v2, :cond_18

    .line 1148
    new-instance v2, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    iget v3, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->typeCount:I

    invoke-direct {v2, v3, v0, p1, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;-><init>(IILjava/lang/String;I)V

    invoke-direct {p0, v2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addTypeInternal(Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;)I

    move-result p1

    return p1

    .line 1143
    :cond_18
    iget v3, v2, Lzeroaicy/org/objectweb/asm/Symbol;->tag:I

    if-ne v3, v0, :cond_2b

    iget v3, v2, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->hashCode:I

    if-ne v3, v1, :cond_2b

    iget-object v3, v2, Lzeroaicy/org/objectweb/asm/Symbol;->value:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 1144
    iget p1, v2, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    return p1

    .line 1146
    :cond_2b
    iget-object v2, v2, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->next:Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    goto :goto_a
.end method

.method addUninitializedType(Ljava/lang/String;I)I
    .registers 11

    .line 1161
    const/16 v0, 0x81

    invoke-static {v0, p1, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->hash(ILjava/lang/String;I)I

    move-result v7

    .line 1162
    invoke-direct {p0, v7}, Lzeroaicy/org/objectweb/asm/SymbolTable;->get(I)Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    move-result-object v1

    :goto_a
    if-nez v1, :cond_1d

    .line 1172
    new-instance v0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    iget v2, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->typeCount:I

    const/16 v3, 0x81

    int-to-long v5, p2

    move-object v1, v0

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;-><init>(IILjava/lang/String;JI)V

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addTypeInternal(Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;)I

    move-result p1

    return p1

    .line 1164
    :cond_1d
    iget v2, v1, Lzeroaicy/org/objectweb/asm/Symbol;->tag:I

    if-ne v2, v0, :cond_37

    iget v2, v1, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->hashCode:I

    if-ne v2, v7, :cond_37

    iget-wide v2, v1, Lzeroaicy/org/objectweb/asm/Symbol;->data:J

    int-to-long v4, p2

    cmp-long v6, v2, v4

    if-nez v6, :cond_37

    iget-object v2, v1, Lzeroaicy/org/objectweb/asm/Symbol;->value:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 1168
    iget p1, v1, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    return p1

    .line 1170
    :cond_37
    iget-object v1, v1, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->next:Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    goto :goto_a
.end method

.method computeBootstrapMethodsSize()I
    .registers 2

    .line 358
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->bootstrapMethods:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-eqz v0, :cond_10

    .line 359
    const-string v0, "BootstrapMethods"

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 360
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->bootstrapMethods:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v0, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0x8

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method getClassName()Ljava/lang/String;
    .registers 2

    .line 306
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->className:Ljava/lang/String;

    return-object v0
.end method

.method getConstantPoolCount()I
    .registers 2

    .line 329
    iget v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPoolCount:I

    return v0
.end method

.method getConstantPoolLength()I
    .registers 2

    .line 338
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPool:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v0, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    return v0
.end method

.method getMajorVersion()I
    .registers 2

    .line 297
    iget v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->majorVersion:I

    return v0
.end method

.method getSource()Lzeroaicy/org/objectweb/asm/ClassReader;
    .registers 2

    .line 288
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->sourceClassReader:Lzeroaicy/org/objectweb/asm/ClassReader;

    return-object v0
.end method

.method getType(I)Lzeroaicy/org/objectweb/asm/Symbol;
    .registers 3

    .line 1129
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->typeTable:[Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    aget-object p1, v0, p1

    return-object p1
.end method

.method putBootstrapMethods(Lzeroaicy/org/objectweb/asm/ByteVector;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/ByteVector;",
            ")V"
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->bootstrapMethods:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-eqz v0, :cond_2a

    .line 374
    const-string v0, "BootstrapMethods"

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object p1

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->bootstrapMethods:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v0, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object p1

    iget v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->bootstrapMethodCount:I

    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object p1

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->bootstrapMethods:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->bootstrapMethods:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByteArray([BII)Lzeroaicy/org/objectweb/asm/ByteVector;

    :cond_2a
    return-void
.end method

.method putConstantPool(Lzeroaicy/org/objectweb/asm/ByteVector;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/ByteVector;",
            ")V"
        }
    .end annotation

    .line 348
    iget v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPoolCount:I

    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object p1

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPool:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPool:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByteArray([BII)Lzeroaicy/org/objectweb/asm/ByteVector;

    return-void
.end method

.method setMajorVersionAndClassName(ILjava/lang/String;)I
    .registers 3

    .line 318
    iput p1, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->majorVersion:I

    .line 319
    iput-object p2, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->className:Ljava/lang/String;

    .line 320
    invoke-virtual {p0, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    return p1
.end method

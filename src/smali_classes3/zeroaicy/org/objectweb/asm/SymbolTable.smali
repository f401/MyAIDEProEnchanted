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
    const/4 v0, 0x0

    check-cast v0, Lzeroaicy/org/objectweb/asm/ClassReader;

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->sourceClassReader:Lzeroaicy/org/objectweb/asm/ClassReader;

    .line 124
    const/16 v0, 0x100

    new-array v0, v0, [Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->entries:[Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    .line 125
    const/4 v0, 0x1

    iput v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPoolCount:I

    .line 126
    new-instance v0, Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lzeroaicy/org/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPool:Lzeroaicy/org/objectweb/asm/ByteVector;

    return-void
.end method

.method constructor <init>(Lzeroaicy/org/objectweb/asm/ClassWriter;Lzeroaicy/org/objectweb/asm/ClassReader;)V
    .registers 16

    const/4 v9, 0x1

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->classWriter:Lzeroaicy/org/objectweb/asm/ClassWriter;

    .line 139
    iput-object p2, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->sourceClassReader:Lzeroaicy/org/objectweb/asm/ClassReader;

    .line 142
    iget-object v11, p2, Lzeroaicy/org/objectweb/asm/ClassReader;->classFileBuffer:[B

    .line 143
    invoke-virtual {p2, v9}, Lzeroaicy/org/objectweb/asm/ClassReader;->getItem(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 144
    iget v1, p2, Lzeroaicy/org/objectweb/asm/ClassReader;->header:I

    sub-int/2addr v1, v0

    .line 145
    invoke-virtual {p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->getItemCount()I

    move-result v2

    iput v2, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPoolCount:I

    .line 146
    new-instance v2, Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-direct {v2, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;-><init>(I)V

    iput-object v2, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPool:Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 147
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPool:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {v2, v11, v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByteArray([BII)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 152
    iget v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPoolCount:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->entries:[Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    .line 153
    invoke-virtual {p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->getMaxStringLength()I

    move-result v0

    new-array v12, v0, [C

    .line 154
    const/4 v0, 0x0

    move v1, v9

    move v10, v0

    .line 156
    :goto_0
    iget v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPoolCount:I

    if-lt v1, v0, :cond_1

    .line 230
    if-eqz v10, :cond_0

    .line 231
    invoke-direct {p0, p2, v12}, Lzeroaicy/org/objectweb/asm/SymbolTable;->copyBootstrapMethods(Lzeroaicy/org/objectweb/asm/ClassReader;[C)V

    :cond_0
    return-void

    .line 157
    :cond_1
    invoke-virtual {p2, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->getItem(I)I

    move-result v0

    .line 158
    add-int/lit8 v2, v0, -0x1

    aget-byte v2, v11, v2

    .line 159
    packed-switch v2, :pswitch_data_0

    .line 223
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 164
    :pswitch_1
    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p2, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    invoke-virtual {p2, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->getItem(I)I

    move-result v5

    .line 166
    invoke-virtual {p2, v0, v12}, Lzeroaicy/org/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v5, v12}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v0, v5, 0x2

    invoke-virtual {p2, v0, v12}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantMemberReference(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v10

    .line 225
    :goto_1
    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_3

    :cond_2
    const/4 v2, 0x2

    :goto_2
    add-int/2addr v1, v2

    move v10, v0

    goto :goto_0

    .line 175
    :pswitch_2
    invoke-virtual {p2, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v0

    invoke-direct {p0, v1, v2, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantIntegerOrFloat(III)V

    move v0, v10

    .line 176
    goto :goto_1

    .line 178
    :pswitch_3
    invoke-virtual {p2, v0, v12}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p2, v0, v12}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v3, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantNameAndType(ILjava/lang/String;Ljava/lang/String;)V

    move v0, v10

    .line 182
    goto :goto_1

    .line 185
    :pswitch_4
    invoke-virtual {p2, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readLong(I)J

    move-result-wide v4

    invoke-direct {p0, v1, v2, v4, v5}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantLongOrDouble(IIJ)V

    move v0, v10

    .line 186
    goto :goto_1

    .line 188
    :pswitch_5
    invoke-virtual {p2, v1, v12}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUtf(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(ILjava/lang/String;)V

    move v0, v10

    .line 189
    goto :goto_1

    .line 191
    :pswitch_6
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p2, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    invoke-virtual {p2, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->getItem(I)I

    move-result v3

    .line 193
    add-int/lit8 v4, v3, 0x2

    invoke-virtual {p2, v4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    invoke-virtual {p2, v4}, Lzeroaicy/org/objectweb/asm/ClassReader;->getItem(I)I

    move-result v4

    .line 195
    invoke-virtual {p2, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readByte(I)I

    move-result v5

    invoke-virtual {p2, v3, v12}, Lzeroaicy/org/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v4, v12}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v0, v4, 0x2

    invoke-virtual {p2, v0, v12}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v8

    move-object v3, p0

    move v4, v1

    invoke-direct/range {v3 .. v8}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantMethodHandle(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v10

    .line 201
    goto :goto_1

    .line 205
    :pswitch_7
    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p2, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    invoke-virtual {p2, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->getItem(I)I

    move-result v3

    .line 207
    invoke-virtual {p2, v3, v12}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p2, v3, v12}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v8

    move-object v3, p0

    move v4, v2

    move v5, v1

    invoke-direct/range {v3 .. v8}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantDynamicOrInvokeDynamicReference(IILjava/lang/String;Ljava/lang/String;I)V

    move v0, v9

    .line 213
    goto :goto_1

    .line 219
    :pswitch_8
    invoke-virtual {p2, v0, v12}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8Reference(IILjava/lang/String;)V

    move v0, v10

    .line 221
    goto/16 :goto_1

    :cond_3
    move v2, v9

    .line 225
    goto/16 :goto_2

    .line 159
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_8
        :pswitch_8
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method private add(Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;)V
    .registers 4
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

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 439
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->entries:[Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    aget-object v1, v1, v0

    iput-object v1, p1, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->next:Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    .line 440
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->entries:[Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    aput-object p1, v1, v0

    return-void
.end method

.method private addBootstrapMethod(III)Lzeroaicy/org/objectweb/asm/Symbol;
    .registers 13

    const/16 v3, 0x40

    const/4 v2, 0x0

    .line 1096
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->bootstrapMethods:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v5, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    .line 1097
    invoke-direct {p0, p3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->get(I)Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    move-result-object v0

    .line 1098
    :goto_0
    if-nez v0, :cond_0

    .line 1115
    iget v2, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->bootstrapMethodCount:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->bootstrapMethodCount:I

    new-instance v1, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    int-to-long v4, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;-><init>(IIJI)V

    invoke-direct {p0, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->put(Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;)Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    move-result-object v0

    :goto_1
    return-object v0

    .line 1099
    :cond_0
    iget v1, v0, Lzeroaicy/org/objectweb/asm/Symbol;->tag:I

    if-ne v1, v3, :cond_3

    iget v1, v0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->hashCode:I

    if-ne v1, p3, :cond_3

    .line 1100
    iget-wide v6, v0, Lzeroaicy/org/objectweb/asm/Symbol;->data:J

    long-to-int v6, v6

    .line 1101
    const/4 v1, 0x1

    move v4, v2

    .line 1102
    :goto_2
    if-lt v4, p2, :cond_1

    .line 1108
    :goto_3
    if-eqz v1, :cond_3

    .line 1109
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->bootstrapMethods:Lzeroaicy/org/objectweb/asm/ByteVector;

    iput p1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    goto :goto_1

    .line 1103
    :cond_1
    add-int v7, p1, v4

    aget-byte v7, v5, v7

    add-int v8, v6, v4

    aget-byte v8, v5, v8

    if-eq v7, v8, :cond_2

    move v1, v2

    .line 1105
    goto :goto_3

    .line 1102
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1113
    :cond_3
    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->next:Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    goto :goto_0
.end method

.method private addConstantDynamicOrInvokeDynamicReference(ILjava/lang/String;Ljava/lang/String;I)Lzeroaicy/org/objectweb/asm/Symbol;
    .registers 14

    .line 924
    invoke-static {p1, p2, p3, p4}, Lzeroaicy/org/objectweb/asm/SymbolTable;->hash(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v8

    .line 925
    invoke-direct {p0, v8}, Lzeroaicy/org/objectweb/asm/SymbolTable;->get(I)Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    move-result-object v0

    .line 926
    :goto_0
    if-nez v0, :cond_1

    .line 936
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPool:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {p0, p2, p3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantNameAndType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p1, p4, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->put122(III)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 937
    iget v1, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPoolCount:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPoolCount:I

    new-instance v0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    const/4 v3, 0x0

    check-cast v3, Ljava/lang/String;

    int-to-long v6, p4

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v8}, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->put(Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;)Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    move-result-object v0

    :cond_0
    return-object v0

    .line 927
    :cond_1
    iget v1, v0, Lzeroaicy/org/objectweb/asm/Symbol;->tag:I

    if-ne v1, p1, :cond_2

    iget v1, v0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->hashCode:I

    if-ne v1, v8, :cond_2

    iget-wide v2, v0, Lzeroaicy/org/objectweb/asm/Symbol;->data:J

    int-to-long v4, p4

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/Symbol;->name:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/Symbol;->value:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 934
    :cond_2
    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->next:Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    goto :goto_0
.end method

.method private addConstantDynamicOrInvokeDynamicReference(IILjava/lang/String;Ljava/lang/String;I)V
    .registers 15
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
    new-instance v0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    const/4 v3, 0x0

    check-cast v3, Ljava/lang/String;

    int-to-long v6, p5

    move v1, p2

    move v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v8}, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->add(Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;)V

    return-void
.end method

.method private addConstantIntegerOrFloat(II)Lzeroaicy/org/objectweb/asm/Symbol;
    .registers 10

    .line 638
    invoke-static {p1, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->hash(II)I

    move-result v6

    .line 639
    invoke-direct {p0, v6}, Lzeroaicy/org/objectweb/asm/SymbolTable;->get(I)Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    move-result-object v0

    .line 640
    :goto_0
    if-nez v0, :cond_1

    .line 646
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPool:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 647
    iget v2, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPoolCount:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPoolCount:I

    new-instance v1, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    int-to-long v4, p2

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;-><init>(IIJI)V

    invoke-direct {p0, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->put(Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;)Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    move-result-object v0

    :cond_0
    return-object v0

    .line 641
    :cond_1
    iget v1, v0, Lzeroaicy/org/objectweb/asm/Symbol;->tag:I

    if-ne v1, p1, :cond_2

    iget v1, v0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->hashCode:I

    if-ne v1, v6, :cond_2

    iget-wide v2, v0, Lzeroaicy/org/objectweb/asm/Symbol;->data:J

    int-to-long v4, p2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 644
    :cond_2
    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->next:Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    goto :goto_0
.end method

.method private addConstantIntegerOrFloat(III)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .line 659
    new-instance v1, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    int-to-long v4, p3

    invoke-static {p2, p3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->hash(II)I

    move-result v6

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;-><init>(IIJI)V

    invoke-direct {p0, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->add(Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;)V

    return-void
.end method

.method private addConstantLongOrDouble(IJ)Lzeroaicy/org/objectweb/asm/Symbol;
    .registers 12

    .line 693
    invoke-static {p1, p2, p3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->hash(IJ)I

    move-result v6

    .line 694
    invoke-direct {p0, v6}, Lzeroaicy/org/objectweb/asm/SymbolTable;->get(I)Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    move-result-object v0

    .line 695
    :goto_0
    if-nez v0, :cond_1

    .line 701
    iget v2, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPoolCount:I

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
    new-instance v1, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;-><init>(IIJI)V

    invoke-direct {p0, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->put(Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;)Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    move-result-object v0

    :cond_0
    return-object v0

    .line 696
    :cond_1
    iget v1, v0, Lzeroaicy/org/objectweb/asm/Symbol;->tag:I

    if-ne v1, p1, :cond_2

    iget v1, v0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->hashCode:I

    if-ne v1, v6, :cond_2

    iget-wide v2, v0, Lzeroaicy/org/objectweb/asm/Symbol;->data:J

    cmp-long v1, v2, p2

    if-eqz v1, :cond_0

    .line 699
    :cond_2
    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->next:Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    goto :goto_0
.end method

.method private addConstantLongOrDouble(IIJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ)V"
        }
    .end annotation

    .line 716
    new-instance v1, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    invoke-static {p2, p3, p4}, Lzeroaicy/org/objectweb/asm/SymbolTable;->hash(IJ)I

    move-result v6

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;-><init>(IIJI)V

    invoke-direct {p0, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->add(Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;)V

    return-void
.end method

.method private addConstantMemberReference(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;
    .registers 14

    .line 559
    invoke-static {p1, p2, p3, p4}, Lzeroaicy/org/objectweb/asm/SymbolTable;->hash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 560
    invoke-direct {p0, v8}, Lzeroaicy/org/objectweb/asm/SymbolTable;->get(I)Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    move-result-object v0

    .line 561
    :goto_0
    if-nez v0, :cond_1

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

    new-instance v0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    const/4 v2, 0x0

    int-to-long v6, v2

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v8}, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->put(Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;)Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    move-result-object v0

    :cond_0
    return-object v0

    .line 562
    :cond_1
    iget v1, v0, Lzeroaicy/org/objectweb/asm/Symbol;->tag:I

    if-ne v1, p1, :cond_2

    iget v1, v0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->hashCode:I

    if-ne v1, v8, :cond_2

    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/Symbol;->owner:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/Symbol;->name:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/Symbol;->value:Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 569
    :cond_2
    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->next:Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    goto :goto_0
.end method

.method private addConstantMemberReference(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
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
    new-instance v0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    const/4 v1, 0x0

    int-to-long v6, v1

    invoke-static {p2, p3, p4, p5}, Lzeroaicy/org/objectweb/asm/SymbolTable;->hash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v8}, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->add(Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;)V

    return-void
.end method

.method private addConstantMethodHandle(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/16 v2, 0xf

    .line 853
    invoke-static {v2, p3, p4, p5, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->hash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    .line 854
    new-instance v0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    int-to-long v6, p2

    move v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v8}, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->add(Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;)V

    return-void
.end method

.method private addConstantNameAndType(ILjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/16 v2, 0xc

    .line 753
    new-instance v0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    invoke-static {v2, p2, p3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->hash(ILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;-><init>(IILjava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->add(Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;)V

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

    const/4 v2, 0x1

    .line 785
    new-instance v0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    invoke-static {v2, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->hash(ILjava/lang/String;)I

    move-result v1

    invoke-direct {v0, p1, v2, p2, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;-><init>(IILjava/lang/String;I)V

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->add(Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;)V

    return-void
.end method

.method private addConstantUtf8Reference(ILjava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;
    .registers 6

    .line 999
    invoke-static {p1, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->hash(ILjava/lang/String;)I

    move-result v1

    .line 1000
    invoke-direct {p0, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->get(I)Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    move-result-object v0

    .line 1001
    :goto_0
    if-nez v0, :cond_1

    .line 1007
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPool:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {p0, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, p1, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1008
    iget v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPoolCount:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPoolCount:I

    new-instance v2, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    invoke-direct {v2, v0, p1, p2, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;-><init>(IILjava/lang/String;I)V

    invoke-direct {p0, v2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->put(Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;)Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    move-result-object v0

    :cond_0
    return-object v0

    .line 1002
    :cond_1
    iget v2, v0, Lzeroaicy/org/objectweb/asm/Symbol;->tag:I

    if-ne v2, p1, :cond_2

    iget v2, v0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->hashCode:I

    if-ne v2, v1, :cond_2

    iget-object v2, v0, Lzeroaicy/org/objectweb/asm/Symbol;->value:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1005
    :cond_2
    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->next:Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    goto :goto_0
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

    const/4 v3, 0x0

    .line 1216
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->typeTable:[Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    if-nez v0, :cond_0

    .line 1217
    const/16 v0, 0x10

    new-array v0, v0, [Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->typeTable:[Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    .line 1219
    :cond_0
    iget v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->typeCount:I

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->typeTable:[Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 1220
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->typeTable:[Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    .line 1221
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->typeTable:[Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->typeTable:[Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1222
    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->typeTable:[Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    .line 1224
    :cond_1
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->typeTable:[Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    iget v1, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->typeCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->typeCount:I

    aput-object p1, v0, v1

    .line 1225
    invoke-direct {p0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->put(Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;)Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    move-result-object v0

    iget v0, v0, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    return v0
.end method

.method private copyBootstrapMethods(Lzeroaicy/org/objectweb/asm/ClassReader;[C)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/ClassReader;",
            "[C)V"
        }
    .end annotation

    .line 245
    iget-object v2, p1, Lzeroaicy/org/objectweb/asm/ClassReader;->classFileBuffer:[B

    .line 246
    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/ClassReader;->getFirstAttributeOffset()I

    move-result v1

    .line 247
    add-int/lit8 v0, v1, -0x2

    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    :goto_0
    if-gtz v0, :cond_1

    .line 255
    :goto_1
    iget v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->bootstrapMethodCount:I

    if-lez v0, :cond_0

    .line 257
    add-int/lit8 v7, v1, 0x8

    .line 258
    add-int/lit8 v0, v1, 0x2

    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    .line 259
    new-instance v1, Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-direct {v1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;-><init>(I)V

    iput-object v1, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->bootstrapMethods:Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 260
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->bootstrapMethods:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {v1, v2, v7, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByteArray([BII)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 264
    const/4 v2, 0x0

    move v0, v7

    :goto_2
    iget v1, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->bootstrapMethodCount:I

    if-lt v2, v1, :cond_3

    :cond_0
    return-void

    .line 248
    :cond_1
    invoke-virtual {p1, v1, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    .line 249
    sget-object v4, Lzeroaicy/org/objectweb/asm/Constants;->BOOTSTRAP_METHODS:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 250
    add-int/lit8 v0, v1, 0x6

    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    iput v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->bootstrapMethodCount:I

    goto :goto_1

    .line 253
    :cond_2
    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p1, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    add-int/2addr v1, v3

    .line 247
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 265
    :cond_3
    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .line 267
    add-int/lit8 v4, v0, 0x2

    .line 268
    invoke-virtual {p1, v4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    .line 269
    add-int/lit8 v8, v4, 0x2

    .line 270
    invoke-virtual {p1, v1, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    move v6, v1

    .line 271
    :goto_3
    if-gtz v3, :cond_4

    .line 276
    new-instance v1, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    const/16 v3, 0x40

    sub-int/2addr v0, v7

    int-to-long v4, v0

    const v0, 0x7fffffff

    and-int/2addr v6, v0

    invoke-direct/range {v1 .. v6}, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;-><init>(IIJI)V

    invoke-direct {p0, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->add(Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;)V

    .line 264
    add-int/lit8 v2, v2, 0x1

    move v0, v8

    goto :goto_2

    .line 272
    :cond_4
    invoke-virtual {p1, v8}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .line 273
    add-int/lit8 v8, v8, 0x2

    .line 274
    invoke-virtual {p1, v1, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v1, v6

    add-int/lit8 v3, v3, -0x1

    move v6, v1

    goto :goto_3
.end method

.method private get(I)Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;
    .registers 4

    .line 394
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->entries:[Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->entries:[Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static hash(II)I
    .registers 4

    .line 1233
    const v0, 0x7fffffff

    add-int v1, p0, p1

    and-int/2addr v0, v1

    return v0
.end method

.method private static hash(IJ)I
    .registers 8

    .line 1237
    const v0, 0x7fffffff

    long-to-int v1, p1

    add-int/2addr v1, p0

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    add-int/2addr v1, v2

    and-int/2addr v0, v1

    return v0
.end method

.method private static hash(ILjava/lang/String;)I
    .registers 4

    .line 1241
    const v0, 0x7fffffff

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, p0

    and-int/2addr v0, v1

    return v0
.end method

.method private static hash(ILjava/lang/String;I)I
    .registers 5

    .line 1245
    const v0, 0x7fffffff

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, p0

    add-int/2addr v1, p2

    and-int/2addr v0, v1

    return v0
.end method

.method private static hash(ILjava/lang/String;Ljava/lang/String;)I
    .registers 6

    .line 1249
    const v0, 0x7fffffff

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v1, p0

    and-int/2addr v0, v1

    return v0
.end method

.method private static hash(ILjava/lang/String;Ljava/lang/String;I)I
    .registers 7

    .line 1254
    const v0, 0x7fffffff

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int/2addr v1, v2

    add-int/lit8 v2, p3, 0x1

    mul-int/2addr v1, v2

    add-int/2addr v1, p0

    and-int/2addr v0, v1

    return v0
.end method

.method private static hash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    .line 1259
    const v0, 0x7fffffff

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v1, p0

    and-int/2addr v0, v1

    return v0
.end method

.method private static hash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 8

    .line 1268
    const v0, 0x7fffffff

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int/2addr v1, v2

    mul-int/2addr v1, p4

    add-int/2addr v1, p0

    and-int/2addr v0, v1

    return v0
.end method

.method private put(Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;)Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;
    .registers 9

    .line 407
    iget v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->entryCount:I

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->entries:[Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    if-le v0, v1, :cond_0

    .line 408
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->entries:[Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    array-length v0, v0

    .line 409
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v3, v1, 0x1

    .line 410
    new-array v4, v3, [Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    .line 411
    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-gez v2, :cond_1

    .line 421
    iput-object v4, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->entries:[Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    .line 423
    :cond_0
    iget v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->entryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->entryCount:I

    .line 424
    iget v0, p1, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->hashCode:I

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->entries:[Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 425
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->entries:[Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    aget-object v1, v1, v0

    iput-object v1, p1, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->next:Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    .line 426
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->entries:[Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    aput-object p1, v1, v0

    return-object p1

    .line 412
    :cond_1
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->entries:[Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    aget-object v0, v0, v2

    .line 413
    :goto_1
    if-nez v0, :cond_2

    .line 411
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    .line 414
    :cond_2
    iget v1, v0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->hashCode:I

    rem-int v5, v1, v3

    .line 415
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->next:Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    .line 416
    aget-object v6, v4, v5

    iput-object v6, v0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->next:Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    .line 417
    aput-object v0, v4, v5

    move-object v0, v1

    .line 418
    goto :goto_1
.end method


# virtual methods
.method varargs addBootstrapMethod(Lzeroaicy/org/objectweb/asm/Handle;[Ljava/lang/Object;)Lzeroaicy/org/objectweb/asm/Symbol;
    .registers 14

    const/4 v7, 0x0

    .line 1040
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->bootstrapMethods:Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1041
    if-nez v0, :cond_3

    .line 1042
    new-instance v0, Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lzeroaicy/org/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->bootstrapMethods:Lzeroaicy/org/objectweb/asm/ByteVector;

    move-object v6, v0

    .line 1049
    :goto_0
    array-length v8, p2

    .line 1050
    new-array v9, v8, [I

    move v0, v7

    .line 1051
    :goto_1
    if-lt v0, v8, :cond_0

    .line 1058
    iget v10, v6, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    .line 1059
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

    move-result-object v0

    iget v0, v0, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {v6, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1068
    invoke-virtual {v6, v8}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move v0, v7

    .line 1069
    :goto_2
    if-lt v0, v8, :cond_1

    .line 1074
    iget v2, v6, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    .line 1075
    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/Handle;->hashCode()I

    move-result v0

    move v1, v7

    .line 1077
    :goto_3
    array-length v3, p2

    if-lt v1, v3, :cond_2

    .line 1079
    sub-int v1, v2, v10

    const v2, 0x7fffffff

    and-int/2addr v0, v2

    invoke-direct {p0, v10, v1, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addBootstrapMethod(III)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    return-object v0

    .line 1052
    :cond_0
    aget-object v1, p2, v0

    invoke-virtual {p0, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstant(Ljava/lang/Object;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v1

    iget v1, v1, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    aput v1, v9, v0

    .line 1051
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1070
    :cond_1
    aget v1, v9, v0

    invoke-virtual {v6, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1069
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1076
    :cond_2
    aget-object v3, p2, v1

    .line 1077
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    xor-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    move-object v6, v0

    goto :goto_0
.end method

.method addConstant(Ljava/lang/Object;)Lzeroaicy/org/objectweb/asm/Symbol;
    .registers 8

    .line 457
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 458
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantInteger(I)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    .line 495
    :goto_0
    return-object v0

    .line 459
    :cond_0
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    .line 460
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantInteger(I)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    goto :goto_0

    .line 461
    :cond_1
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_2

    .line 462
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantInteger(I)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    goto :goto_0

    .line 463
    :cond_2
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_3

    .line 464
    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantInteger(I)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    goto :goto_0

    .line 465
    :cond_3
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 466
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantInteger(I)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 467
    :cond_5
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_6

    .line 468
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantFloat(F)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    goto :goto_0

    .line 469
    :cond_6
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_7

    .line 470
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantLong(J)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    goto :goto_0

    .line 471
    :cond_7
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_8

    .line 472
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantDouble(D)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    goto :goto_0

    .line 473
    :cond_8
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 474
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantString(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    goto :goto_0

    .line 475
    :cond_9
    instance-of v0, p1, Lzeroaicy/org/objectweb/asm/Type;

    if-eqz v0, :cond_c

    .line 476
    check-cast p1, Lzeroaicy/org/objectweb/asm/Type;

    .line 477
    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/Type;->getSort()I

    move-result v0

    .line 478
    const/16 v1, 0xa

    if-ne v0, v1, :cond_a

    .line 479
    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    goto/16 :goto_0

    .line 480
    :cond_a
    const/16 v1, 0xb

    if-ne v0, v1, :cond_b

    .line 481
    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantMethodType(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    goto/16 :goto_0

    .line 483
    :cond_b
    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    goto/16 :goto_0

    .line 485
    :cond_c
    instance-of v0, p1, Lzeroaicy/org/objectweb/asm/Handle;

    if-eqz v0, :cond_d

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

    move-result-object v0

    goto/16 :goto_0

    .line 493
    :cond_d
    instance-of v0, p1, Lzeroaicy/org/objectweb/asm/ConstantDynamic;

    if-eqz v0, :cond_e

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

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantDynamic(Ljava/lang/String;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/Handle;[Ljava/lang/Object;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    goto/16 :goto_0

    .line 501
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method addConstantClass(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;
    .registers 3

    .line 513
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8Reference(ILjava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    return-object v0
.end method

.method addConstantDouble(D)Lzeroaicy/org/objectweb/asm/Symbol;
    .registers 8

    .line 681
    const/4 v0, 0x6

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantLongOrDouble(IJ)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    return-object v0
.end method

.method varargs addConstantDynamic(Ljava/lang/String;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/Handle;[Ljava/lang/Object;)Lzeroaicy/org/objectweb/asm/Symbol;
    .registers 7

    .line 884
    invoke-virtual {p0, p3, p4}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addBootstrapMethod(Lzeroaicy/org/objectweb/asm/Handle;[Ljava/lang/Object;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    .line 885
    const/16 v1, 0x11

    iget v0, v0, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-direct {p0, v1, p1, p2, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantDynamicOrInvokeDynamicReference(ILjava/lang/String;Ljava/lang/String;I)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    return-object v0
.end method

.method addConstantFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;
    .registers 5

    .line 526
    const/16 v0, 0x9

    invoke-direct {p0, v0, p1, p2, p3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantMemberReference(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    move-result-object v0

    return-object v0
.end method

.method addConstantFloat(F)Lzeroaicy/org/objectweb/asm/Symbol;
    .registers 4

    .line 626
    const/4 v0, 0x4

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantIntegerOrFloat(II)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    return-object v0
.end method

.method addConstantInteger(I)Lzeroaicy/org/objectweb/asm/Symbol;
    .registers 3

    .line 615
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantIntegerOrFloat(II)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    return-object v0
.end method

.method varargs addConstantInvokeDynamic(Ljava/lang/String;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/Handle;[Ljava/lang/Object;)Lzeroaicy/org/objectweb/asm/Symbol;
    .registers 7

    .line 905
    invoke-virtual {p0, p3, p4}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addBootstrapMethod(Lzeroaicy/org/objectweb/asm/Handle;[Ljava/lang/Object;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    .line 906
    const/16 v1, 0x12

    iget v0, v0, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-direct {p0, v1, p1, p2, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantDynamicOrInvokeDynamicReference(ILjava/lang/String;Ljava/lang/String;I)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    return-object v0
.end method

.method addConstantLong(J)Lzeroaicy/org/objectweb/asm/Symbol;
    .registers 4

    .line 670
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantLongOrDouble(IJ)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    return-object v0
.end method

.method addConstantMethodHandle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/Symbol;
    .registers 15

    const/16 v2, 0xf

    .line 811
    invoke-static {v2, p2, p3, p4, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->hash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    .line 812
    invoke-direct {p0, v8}, Lzeroaicy/org/objectweb/asm/SymbolTable;->get(I)Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    move-result-object v0

    .line 813
    :goto_0
    if-nez v0, :cond_1

    .line 824
    const/4 v0, 0x4

    if-gt p1, v0, :cond_3

    .line 825
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPool:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {p0, p2, p3, p4}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v1

    iget v1, v1, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {v0, v2, p1, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->put112(III)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 830
    :goto_1
    iget v1, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPoolCount:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPoolCount:I

    new-instance v0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    int-to-long v6, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v8}, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->put(Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;)Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    move-result-object v0

    :cond_0
    return-object v0

    .line 814
    :cond_1
    iget v1, v0, Lzeroaicy/org/objectweb/asm/Symbol;->tag:I

    if-ne v1, v2, :cond_2

    iget v1, v0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->hashCode:I

    if-ne v1, v8, :cond_2

    iget-wide v4, v0, Lzeroaicy/org/objectweb/asm/Symbol;->data:J

    int-to-long v6, p1

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/Symbol;->owner:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/Symbol;->name:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/Symbol;->value:Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 822
    :cond_2
    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->next:Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    goto :goto_0

    .line 827
    :cond_3
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPool:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {p0, p2, p3, p4, p5}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v1

    iget v1, v1, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {v0, v2, p1, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->put112(III)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_1
.end method

.method addConstantMethodType(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;
    .registers 3

    .line 865
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8Reference(ILjava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    return-object v0
.end method

.method addConstantMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/Symbol;
    .registers 6

    .line 541
    if-eqz p4, :cond_0

    const/16 v0, 0xb

    .line 542
    :goto_0
    invoke-direct {p0, v0, p1, p2, p3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantMemberReference(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    move-result-object v0

    return-object v0

    .line 541
    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method addConstantModule(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;
    .registers 3

    .line 972
    const/16 v0, 0x13

    invoke-direct {p0, v0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8Reference(ILjava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    return-object v0
.end method

.method addConstantNameAndType(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    const/16 v2, 0xc

    .line 729
    invoke-static {v2, p1, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->hash(ILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 730
    invoke-direct {p0, v5}, Lzeroaicy/org/objectweb/asm/SymbolTable;->get(I)Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    move-result-object v0

    .line 731
    :goto_0
    if-nez v0, :cond_0

    .line 740
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPool:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {p0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v1, v3}, Lzeroaicy/org/objectweb/asm/ByteVector;->put122(III)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 741
    iget v1, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPoolCount:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPoolCount:I

    new-instance v0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;-><init>(IILjava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->put(Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;)Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    move-result-object v0

    iget v0, v0, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    :goto_1
    return v0

    .line 732
    :cond_0
    iget v1, v0, Lzeroaicy/org/objectweb/asm/Symbol;->tag:I

    if-ne v1, v2, :cond_1

    iget v1, v0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->hashCode:I

    if-ne v1, v5, :cond_1

    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/Symbol;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/Symbol;->value:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 736
    iget v0, v0, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    goto :goto_1

    .line 738
    :cond_1
    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->next:Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    goto :goto_0
.end method

.method addConstantPackage(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;
    .registers 3

    .line 983
    const/16 v0, 0x14

    invoke-direct {p0, v0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8Reference(ILjava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    return-object v0
.end method

.method addConstantString(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;
    .registers 3

    .line 604
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8Reference(ILjava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    return-object v0
.end method

.method addConstantUtf8(Ljava/lang/String;)I
    .registers 6

    const/4 v3, 0x1

    .line 764
    invoke-static {v3, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->hash(ILjava/lang/String;)I

    move-result v1

    .line 765
    invoke-direct {p0, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->get(I)Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    move-result-object v0

    .line 766
    :goto_0
    if-nez v0, :cond_0

    .line 774
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPool:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, v3}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putUTF8(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 775
    iget v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPoolCount:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPoolCount:I

    new-instance v2, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    invoke-direct {v2, v0, v3, p1, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;-><init>(IILjava/lang/String;I)V

    invoke-direct {p0, v2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->put(Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;)Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    move-result-object v0

    iget v0, v0, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    :goto_1
    return v0

    .line 767
    :cond_0
    iget v2, v0, Lzeroaicy/org/objectweb/asm/Symbol;->tag:I

    if-ne v2, v3, :cond_1

    iget v2, v0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->hashCode:I

    if-ne v2, v1, :cond_1

    iget-object v2, v0, Lzeroaicy/org/objectweb/asm/Symbol;->value:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 770
    iget v0, v0, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    goto :goto_1

    .line 772
    :cond_1
    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->next:Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    goto :goto_0
.end method

.method addMergedType(II)I
    .registers 13

    const/16 v2, 0x20

    const/16 v3, 0x82

    .line 1188
    if-ge p1, p2, :cond_0

    int-to-long v0, p1

    int-to-long v4, p2

    shl-long/2addr v4, v2

    or-long/2addr v4, v0

    .line 1192
    :goto_0
    add-int v0, p1, p2

    invoke-static {v3, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->hash(II)I

    move-result v6

    .line 1193
    invoke-direct {p0, v6}, Lzeroaicy/org/objectweb/asm/SymbolTable;->get(I)Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    move-result-object v0

    .line 1194
    :goto_1
    if-nez v0, :cond_1

    .line 1200
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->typeTable:[Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    aget-object v0, v0, p1

    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/Symbol;->value:Ljava/lang/String;

    .line 1201
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->typeTable:[Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    aget-object v1, v1, p2

    iget-object v1, v1, Lzeroaicy/org/objectweb/asm/Symbol;->value:Ljava/lang/String;

    .line 1202
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->classWriter:Lzeroaicy/org/objectweb/asm/ClassWriter;

    invoke-virtual {v2, v0, v1}, Lzeroaicy/org/objectweb/asm/ClassWriter;->getCommonSuperClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result v0

    .line 1203
    new-instance v1, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    iget v2, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->typeCount:I

    invoke-direct/range {v1 .. v6}, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;-><init>(IIJI)V

    invoke-direct {p0, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->put(Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;)Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    move-result-object v1

    iput v0, v1, Lzeroaicy/org/objectweb/asm/Symbol;->info:I

    .line 1204
    :goto_2
    return v0

    .line 1188
    :cond_0
    int-to-long v0, p2

    int-to-long v4, p1

    shl-long/2addr v4, v2

    or-long/2addr v4, v0

    goto :goto_0

    .line 1195
    :cond_1
    iget v1, v0, Lzeroaicy/org/objectweb/asm/Symbol;->tag:I

    if-ne v1, v3, :cond_2

    iget v1, v0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->hashCode:I

    if-ne v1, v6, :cond_2

    iget-wide v8, v0, Lzeroaicy/org/objectweb/asm/Symbol;->data:J

    cmp-long v1, v8, v4

    if-nez v1, :cond_2

    .line 1196
    iget v0, v0, Lzeroaicy/org/objectweb/asm/Symbol;->info:I

    goto :goto_2

    .line 1198
    :cond_2
    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->next:Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    goto :goto_1
.end method

.method addType(Ljava/lang/String;)I
    .registers 6

    const/16 v3, 0x80

    .line 1140
    invoke-static {v3, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->hash(ILjava/lang/String;)I

    move-result v1

    .line 1141
    invoke-direct {p0, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->get(I)Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    move-result-object v0

    .line 1142
    :goto_0
    if-nez v0, :cond_0

    .line 1148
    new-instance v0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    iget v2, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->typeCount:I

    invoke-direct {v0, v2, v3, p1, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;-><init>(IILjava/lang/String;I)V

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addTypeInternal(Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;)I

    move-result v0

    :goto_1
    return v0

    .line 1143
    :cond_0
    iget v2, v0, Lzeroaicy/org/objectweb/asm/Symbol;->tag:I

    if-ne v2, v3, :cond_1

    iget v2, v0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->hashCode:I

    if-ne v2, v1, :cond_1

    iget-object v2, v0, Lzeroaicy/org/objectweb/asm/Symbol;->value:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1144
    iget v0, v0, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    goto :goto_1

    .line 1146
    :cond_1
    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->next:Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    goto :goto_0
.end method

.method addUninitializedType(Ljava/lang/String;I)I
    .registers 13

    const/16 v2, 0x81

    .line 1161
    invoke-static {v2, p1, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->hash(ILjava/lang/String;I)I

    move-result v6

    .line 1162
    invoke-direct {p0, v6}, Lzeroaicy/org/objectweb/asm/SymbolTable;->get(I)Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    move-result-object v0

    .line 1163
    :goto_0
    if-nez v0, :cond_0

    .line 1172
    new-instance v0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    iget v1, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->typeCount:I

    int-to-long v4, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;-><init>(IILjava/lang/String;JI)V

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addTypeInternal(Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;)I

    move-result v0

    :goto_1
    return v0

    .line 1164
    :cond_0
    iget v1, v0, Lzeroaicy/org/objectweb/asm/Symbol;->tag:I

    if-ne v1, v2, :cond_1

    iget v1, v0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->hashCode:I

    if-ne v1, v6, :cond_1

    iget-wide v4, v0, Lzeroaicy/org/objectweb/asm/Symbol;->data:J

    int-to-long v8, p2

    cmp-long v1, v4, v8

    if-nez v1, :cond_1

    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/Symbol;->value:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1168
    iget v0, v0, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    goto :goto_1

    .line 1170
    :cond_1
    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->next:Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;

    goto :goto_0
.end method

.method computeBootstrapMethodsSize()I
    .registers 2

    .line 358
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->bootstrapMethods:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-eqz v0, :cond_0

    .line 359
    const-string v0, "BootstrapMethods"

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 360
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->bootstrapMethods:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v0, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0x8

    .line 362
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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

    aget-object v0, v0, p1

    return-object v0
.end method

.method putBootstrapMethods(Lzeroaicy/org/objectweb/asm/ByteVector;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/ByteVector;",
            ")V"
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->bootstrapMethods:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-eqz v0, :cond_0

    .line 374
    const-string v0, "BootstrapMethods"

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->bootstrapMethods:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->bootstrapMethodCount:I

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->bootstrapMethods:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->bootstrapMethods:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v3, v3, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    invoke-virtual {v0, v1, v2, v3}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByteArray([BII)Lzeroaicy/org/objectweb/asm/ByteVector;

    :cond_0
    return-void
.end method

.method putConstantPool(Lzeroaicy/org/objectweb/asm/ByteVector;)V
    .registers 6
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

    move-result-object v0

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPool:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->constantPool:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v3, v3, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    invoke-virtual {v0, v1, v2, v3}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByteArray([BII)Lzeroaicy/org/objectweb/asm/ByteVector;

    return-void
.end method

.method setMajorVersionAndClassName(ILjava/lang/String;)I
    .registers 4

    .line 318
    iput p1, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->majorVersion:I

    .line 319
    iput-object p2, p0, Lzeroaicy/org/objectweb/asm/SymbolTable;->className:Ljava/lang/String;

    .line 320
    invoke-virtual {p0, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    iget v0, v0, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    return v0
.end method

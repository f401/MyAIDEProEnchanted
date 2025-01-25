.class public Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;
.super Ljava/lang/Object;
.source "ConstantPool.java"


# instance fields
.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPoolEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final utf8Indexes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;->entries:Ljava/util/List;

    .line 46
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;->utf8Indexes:Ljava/util/Map;

    .line 52
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method


# virtual methods
.method public addEntry(Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPoolEntry;)I
    .registers 7

    .line 92
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 94
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPoolEntry;->getNumEntries()I

    move-result v2

    .line 99
    const/4 v0, 0x0

    :goto_10
    add-int/lit8 v3, v2, -0x1

    if-ge v0, v3, :cond_1d

    .line 100
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;->entries:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 103
    :cond_1d
    instance-of v0, p1, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/Utf8CPInfo;

    if-eqz v0, :cond_30

    .line 104
    check-cast p1, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/Utf8CPInfo;

    .line 106
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;->utf8Indexes:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/Utf8CPInfo;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_30
    return v1
.end method

.method public getClassEntry(Ljava/lang/String;)I
    .registers 8

    const/4 v3, -0x1

    .line 163
    .line 165
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 166
    const/4 v1, 0x0

    move v2, v3

    :goto_9
    if-ge v1, v4, :cond_28

    if-ne v2, v3, :cond_28

    .line 167
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;->entries:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 169
    instance-of v5, v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ClassCPInfo;

    if-eqz v5, :cond_29

    .line 170
    check-cast v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ClassCPInfo;

    .line 172
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ClassCPInfo;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    move v0, v1

    .line 166
    :goto_24
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_9

    .line 178
    :cond_28
    return v2

    :cond_29
    move v0, v2

    goto :goto_24
.end method

.method public getConstantEntry(Ljava/lang/Object;)I
    .registers 8

    const/4 v3, -0x1

    .line 190
    .line 192
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 193
    const/4 v1, 0x0

    move v2, v3

    :goto_9
    if-ge v1, v4, :cond_28

    if-ne v2, v3, :cond_28

    .line 194
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;->entries:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 196
    instance-of v5, v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantCPInfo;

    if-eqz v5, :cond_29

    .line 197
    check-cast v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantCPInfo;

    .line 199
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantCPInfo;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    move v0, v1

    .line 193
    :goto_24
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_9

    .line 205
    :cond_28
    return v2

    :cond_29
    move v0, v2

    goto :goto_24
.end method

.method public getEntry(I)Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPoolEntry;
    .registers 3

    .line 133
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPoolEntry;

    return-object v0
.end method

.method public getFieldRefEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 10

    const/4 v3, -0x1

    .line 293
    .line 295
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 296
    const/4 v1, 0x0

    move v2, v3

    :goto_9
    if-ge v1, v4, :cond_3c

    if-ne v2, v3, :cond_3c

    .line 297
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;->entries:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 299
    instance-of v5, v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/FieldRefCPInfo;

    if-eqz v5, :cond_3d

    .line 300
    check-cast v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/FieldRefCPInfo;

    .line 302
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/FieldRefCPInfo;->getFieldClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 303
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/FieldRefCPInfo;->getFieldName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 304
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/FieldRefCPInfo;->getFieldType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    move v0, v1

    .line 296
    :goto_38
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_9

    .line 310
    :cond_3c
    return v2

    :cond_3d
    move v0, v2

    goto :goto_38
.end method

.method public getInterfaceMethodRefEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 10

    const/4 v3, -0x1

    .line 256
    .line 258
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 259
    const/4 v1, 0x0

    move v2, v3

    :goto_9
    if-ge v1, v4, :cond_3c

    if-ne v2, v3, :cond_3c

    .line 260
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;->entries:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 262
    instance-of v5, v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/InterfaceMethodRefCPInfo;

    if-eqz v5, :cond_3d

    .line 263
    check-cast v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/InterfaceMethodRefCPInfo;

    .line 266
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/InterfaceMethodRefCPInfo;->getInterfaceMethodClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 268
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/InterfaceMethodRefCPInfo;->getInterfaceMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 270
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/InterfaceMethodRefCPInfo;->getInterfaceMethodType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    move v0, v1

    .line 259
    :goto_38
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_9

    .line 277
    :cond_3c
    return v2

    :cond_3d
    move v0, v2

    goto :goto_38
.end method

.method public getMethodRefEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 10

    const/4 v3, -0x1

    .line 221
    .line 223
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 224
    const/4 v1, 0x0

    move v2, v3

    :goto_9
    if-ge v1, v4, :cond_3c

    if-ne v2, v3, :cond_3c

    .line 225
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;->entries:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 227
    instance-of v5, v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodRefCPInfo;

    if-eqz v5, :cond_3d

    .line 228
    check-cast v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodRefCPInfo;

    .line 230
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodRefCPInfo;->getMethodClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 231
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodRefCPInfo;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 232
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodRefCPInfo;->getMethodType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    move v0, v1

    .line 224
    :goto_38
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_9

    .line 238
    :cond_3c
    return v2

    :cond_3d
    move v0, v2

    goto :goto_38
.end method

.method public getNameAndTypeEntry(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    const/4 v3, -0x1

    .line 323
    .line 325
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 326
    const/4 v1, 0x0

    move v2, v3

    :goto_9
    if-ge v1, v4, :cond_32

    if-ne v2, v3, :cond_32

    .line 327
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;->entries:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 329
    instance-of v5, v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/NameAndTypeCPInfo;

    if-eqz v5, :cond_33

    .line 330
    check-cast v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/NameAndTypeCPInfo;

    .line 333
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/NameAndTypeCPInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 334
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/NameAndTypeCPInfo;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    move v0, v1

    .line 326
    :goto_2e
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_9

    .line 340
    :cond_32
    return v2

    :cond_33
    move v0, v2

    goto :goto_2e
.end method

.method public getUTF8Entry(Ljava/lang/String;)I
    .registers 4

    .line 144
    const/4 v1, -0x1

    .line 145
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;->utf8Indexes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 147
    if-eqz v0, :cond_10

    .line 148
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 151
    :goto_f
    return v0

    :cond_10
    move v0, v1

    goto :goto_f
.end method

.method public synthetic lambda$toString$0$ConstantPool(I)Ljava/lang/String;
    .registers 6

    .line 351
    const-string v0, "[%d] = %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;->getEntry(I)Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPoolEntry;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/io/DataInputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    .line 65
    const/4 v0, 0x1

    :goto_5
    if-ge v0, v1, :cond_14

    .line 66
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPoolEntry;->readEntry(Ljava/io/DataInputStream;)Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPoolEntry;

    move-result-object v2

    .line 69
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPoolEntry;->getNumEntries()I

    move-result v3

    add-int/2addr v0, v3

    .line 71
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;->addEntry(Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPoolEntry;)I

    goto :goto_5

    .line 73
    :cond_14
    return-void
.end method

.method public resolve()V
    .registers 4

    .line 118
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPoolEntry;

    .line 119
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPoolEntry;->isResolved()Z

    move-result v2

    if-nez v2, :cond_6

    .line 120
    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPoolEntry;->resolve(Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;)V

    goto :goto_6

    .line 123
    :cond_1e
    return-void
.end method

.method public size()I
    .registers 2

    .line 81
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 350
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool$$ExternalSyntheticStaticInterfaceCall0;->m(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool$$ExternalSyntheticLambda1;-><init>(Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;)V

    .line 351
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 352
    const-string v1, "\n"

    const-string v2, "\n"

    const-string v3, "\n"

    invoke-static {v1, v2, v3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 350
    return-object v0
.end method

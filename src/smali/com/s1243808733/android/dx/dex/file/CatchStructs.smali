.class public final Lcom/s1243808733/android/dx/dex/file/CatchStructs;
.super Ljava/lang/Object;
.source "CatchStructs.java"


# static fields
.field private static final TRY_ITEM_WRITE_SIZE:I = 0x8


# instance fields
.field private final code:Lcom/s1243808733/android/dx/dex/code/DalvCode;

.field private encodedHandlerHeaderSize:I

.field private encodedHandlers:[B

.field private handlerOffsets:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private table:Lcom/s1243808733/android/dx/dex/code/CatchTable;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/dex/code/DalvCode;)V
    .registers 3

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->code:Lcom/s1243808733/android/dx/dex/code/DalvCode;

    .line 76
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->table:Lcom/s1243808733/android/dx/dex/code/CatchTable;

    .line 77
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->encodedHandlers:[B

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->encodedHandlerHeaderSize:I

    .line 79
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->handlerOffsets:Ljava/util/TreeMap;

    return-void
.end method

.method private static annotateAndConsumeHandlers(Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;IILjava/lang/String;Ljava/io/PrintWriter;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .registers 7

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->toHuman(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p4, :cond_1e

    .line 309
    invoke-virtual {p4, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 312
    :cond_1e
    invoke-interface {p5, p2, p0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    return-void
.end method

.method private annotateEntries(Ljava/lang/String;Ljava/io/PrintWriter;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .registers 19

    .line 231
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->finishProcessingIfNecessary()V

    const/4 v2, 0x0

    if-eqz v8, :cond_f

    const/4 v3, 0x1

    goto :goto_10

    :cond_f
    const/4 v3, 0x0

    :goto_10
    if-eqz v3, :cond_14

    const/4 v4, 0x6

    goto :goto_15

    :cond_14
    const/4 v4, 0x0

    :goto_15
    if-eqz v3, :cond_19

    const/4 v5, 0x2

    goto :goto_1a

    :cond_19
    const/4 v5, 0x0

    .line 236
    :goto_1a
    iget-object v6, v0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->table:Lcom/s1243808733/android/dx/dex/code/CatchTable;

    invoke-virtual {v6}, Lcom/s1243808733/android/dx/dex/code/CatchTable;->size()I

    move-result v6

    .line 237
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 239
    const-string v10, "tries:"

    if-eqz v3, :cond_48

    .line 240
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v2, v10}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    goto :goto_5a

    .line 242
    :cond_48
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_5a
    const/4 v10, 0x0

    :goto_5b
    if-ge v10, v6, :cond_ab

    .line 246
    iget-object v11, v0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->table:Lcom/s1243808733/android/dx/dex/code/CatchTable;

    invoke-virtual {v11, v10}, Lcom/s1243808733/android/dx/dex/code/CatchTable;->get(I)Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;

    move-result-object v11

    .line 247
    invoke-virtual {v11}, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->getHandlers()Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;

    move-result-object v12

    .line 248
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "try "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->getStart()I

    move-result v14

    invoke-static {v14}, Lcom/s1243808733/android/dx/util/Hex;->u2or4(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ".."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v11}, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->getEnd()I

    move-result v11

    invoke-static {v11}, Lcom/s1243808733/android/dx/util/Hex;->u2or4(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 250
    const-string v13, ""

    invoke-virtual {v12, v9, v13}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->toHuman(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v3, :cond_a2

    .line 253
    invoke-interface {v8, v4, v11}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 254
    invoke-interface {v8, v5, v12}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    goto :goto_a8

    .line 256
    :cond_a2
    invoke-virtual {v7, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_a8
    add-int/lit8 v10, v10, 0x1

    goto :goto_5b

    :cond_ab
    if-nez v3, :cond_ae

    return-void

    .line 266
    :cond_ae
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "handlers:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v2, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 267
    iget v1, v0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->encodedHandlerHeaderSize:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->handlerOffsets:Ljava/util/TreeMap;

    .line 268
    invoke-virtual {v4}, Ljava/util/TreeMap;->size()I

    move-result v4

    invoke-static {v4}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 267
    invoke-interface {v8, v1, v3}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 274
    iget-object v1, v0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->handlerOffsets:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v1, 0x0

    :goto_f0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 275
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;

    .line 276
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-eqz v1, :cond_119

    .line 279
    sub-int v3, v12, v2

    move-object v4, v9

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-static/range {v1 .. v6}, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->annotateAndConsumeHandlers(Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;IILjava/lang/String;Ljava/io/PrintWriter;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V

    :cond_119
    move-object v1, v11

    move v2, v12

    goto :goto_f0

    .line 287
    :cond_11c
    iget-object v3, v0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->encodedHandlers:[B

    array-length v3, v3

    sub-int/2addr v3, v2

    move-object v4, v9

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-static/range {v1 .. v6}, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->annotateAndConsumeHandlers(Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;IILjava/lang/String;Ljava/io/PrintWriter;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V

    return-void
.end method

.method private finishProcessingIfNecessary()V
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->table:Lcom/s1243808733/android/dx/dex/code/CatchTable;

    if-nez v0, :cond_c

    .line 87
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->code:Lcom/s1243808733/android/dx/dex/code/DalvCode;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/DalvCode;->getCatches()Lcom/s1243808733/android/dx/dex/code/CatchTable;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->table:Lcom/s1243808733/android/dx/dex/code/CatchTable;

    :cond_c
    return-void
.end method


# virtual methods
.method public debugPrint(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->annotateEntries(Ljava/lang/String;Ljava/io/PrintWriter;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V

    return-void
.end method

.method public encode(Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 11

    .line 117
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->finishProcessingIfNecessary()V

    .line 119
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getTypeIds()Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;

    move-result-object p1

    .line 120
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->table:Lcom/s1243808733/android/dx/dex/code/CatchTable;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/CatchTable;->size()I

    move-result v0

    .line 122
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->handlerOffsets:Ljava/util/TreeMap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v0, :cond_2b

    .line 129
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->handlerOffsets:Ljava/util/TreeMap;

    iget-object v4, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->table:Lcom/s1243808733/android/dx/dex/code/CatchTable;

    invoke-virtual {v4, v2}, Lcom/s1243808733/android/dx/dex/code/CatchTable;->get(I)Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->getHandlers()Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 132
    :cond_2b
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->handlerOffsets:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    const v2, 0xffff

    if-gt v0, v2, :cond_b5

    .line 137
    new-instance v0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;-><init>()V

    .line 140
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->handlerOffsets:Ljava/util/TreeMap;

    .line 141
    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    move-result v2

    iput v2, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->encodedHandlerHeaderSize:I

    .line 145
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->handlerOffsets:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_51
    :goto_51
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ae

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 146
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;

    .line 147
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->size()I

    move-result v5

    .line 148
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->catchesAll()Z

    move-result v6

    .line 151
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_81

    add-int/lit8 v3, v5, -0x1

    neg-int v3, v3

    .line 155
    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeSleb128(I)I

    add-int/lit8 v5, v5, -0x1

    goto :goto_84

    .line 158
    :cond_81
    invoke-virtual {v0, v5}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeSleb128(I)I

    :goto_84
    const/4 v3, 0x0

    :goto_85
    if-ge v3, v5, :cond_a0

    .line 162
    invoke-virtual {v4, v3}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->get(I)Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;

    move-result-object v7

    .line 164
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;->getExceptionType()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/cst/CstType;)I

    move-result v8

    .line 163
    invoke-virtual {v0, v8}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    .line 165
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;->getHandler()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_85

    :cond_a0
    if-eqz v6, :cond_51

    .line 169
    invoke-virtual {v4, v5}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->get(I)Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;->getHandler()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    goto :goto_51

    .line 173
    :cond_ae
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->encodedHandlers:[B

    return-void

    .line 133
    :cond_b5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "too many catch handlers"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto :goto_be

    :goto_bd
    throw p1

    :goto_be
    goto :goto_bd
.end method

.method public triesSize()I
    .registers 2

    .line 97
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->finishProcessingIfNecessary()V

    .line 98
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->table:Lcom/s1243808733/android/dx/dex/code/CatchTable;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/CatchTable;->size()I

    move-result v0

    return v0
.end method

.method public writeSize()I
    .registers 3

    .line 182
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->triesSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->encodedHandlers:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public writeTo(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .registers 9

    .line 193
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->finishProcessingIfNecessary()V

    .line 195
    invoke-interface {p2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 196
    const-string p1, "  "

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->annotateEntries(Ljava/lang/String;Ljava/io/PrintWriter;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V

    .line 199
    :cond_f
    iget-object p1, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->table:Lcom/s1243808733/android/dx/dex/code/CatchTable;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/CatchTable;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_16
    if-ge v0, p1, :cond_6c

    .line 201
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->table:Lcom/s1243808733/android/dx/dex/code/CatchTable;

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/dex/code/CatchTable;->get(I)Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;

    move-result-object v1

    .line 202
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->getStart()I

    move-result v2

    .line 203
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->getEnd()I

    move-result v3

    sub-int v4, v3, v2

    const/high16 v5, 0x10000

    if-ge v4, v5, :cond_48

    .line 212
    invoke-interface {p2, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 213
    invoke-interface {p2, v4}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 214
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->handlerOffsets:Ljava/util/TreeMap;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->getHandlers()Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p2, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 207
    :cond_48
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "bogus exception range: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-static {v2}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-static {v3}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 217
    :cond_6c
    iget-object p1, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->encodedHandlers:[B

    invoke-interface {p2, p1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->write([B)V

    return-void
.end method

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
            "Ljava/util/TreeMap",
            "<",
            "Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private table:Lcom/s1243808733/android/dx/dex/code/CatchTable;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/dex/code/DalvCode;)V
    .registers 4

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->code:Lcom/s1243808733/android/dx/dex/code/DalvCode;

    move-object v0, v1

    .line 76
    check-cast v0, Lcom/s1243808733/android/dx/dex/code/CatchTable;

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->table:Lcom/s1243808733/android/dx/dex/code/CatchTable;

    move-object v0, v1

    .line 77
    check-cast v0, [B

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->encodedHandlers:[B

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->encodedHandlerHeaderSize:I

    .line 79
    check-cast v1, Ljava/util/TreeMap;

    iput-object v1, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->handlerOffsets:Ljava/util/TreeMap;

    return-void
.end method

.method private static annotateAndConsumeHandlers(Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;IILjava/lang/String;Ljava/io/PrintWriter;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;",
            "II",
            "Ljava/lang/String;",
            "Ljava/io/PrintWriter;",
            "Lcom/s1243808733/android/dx/util/AnnotatedOutput;",
            ")V"
        }
    .end annotation

    .line 306
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {p1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->toHuman(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 308
    if-eqz p4, :cond_0

    .line 309
    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 312
    :cond_0
    invoke-interface {p5, p2, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    return-void
.end method

.method private annotateEntries(Ljava/lang/String;Ljava/io/PrintWriter;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/PrintWriter;",
            "Lcom/s1243808733/android/dx/util/AnnotatedOutput;",
            ")V"
        }
    .end annotation

    .line 231
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->finishProcessingIfNecessary()V

    .line 233
    if-nez p3, :cond_0

    const/4 v1, 0x0

    move v5, v1

    .line 234
    :goto_0
    if-eqz v5, :cond_1

    const/4 v1, 0x6

    move v3, v1

    .line 235
    :goto_1
    if-eqz v5, :cond_2

    const/4 v1, 0x2

    .line 236
    :goto_2
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->table:Lcom/s1243808733/android/dx/dex/code/CatchTable;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/dex/code/CatchTable;->size()I

    move-result v6

    .line 237
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, "  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 239
    if-eqz v5, :cond_3

    .line 240
    const/4 v2, 0x0

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "tries:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-interface {v0, v2, v7}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 245
    :goto_3
    const/4 v2, 0x0

    :goto_4
    if-lt v2, v6, :cond_4

    .line 261
    if-nez v5, :cond_6

    .line 287
    :goto_5
    return-void

    .line 233
    :cond_0
    const/4 v1, 0x1

    move v5, v1

    goto :goto_0

    .line 234
    :cond_1
    const/4 v1, 0x0

    move v3, v1

    goto :goto_1

    .line 235
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 242
    :cond_3
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v7, "tries:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 246
    :cond_4
    iget-object v7, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->table:Lcom/s1243808733/android/dx/dex/code/CatchTable;

    invoke-virtual {v7, v2}, Lcom/s1243808733/android/dx/dex/code/CatchTable;->get(I)Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;

    move-result-object v7

    .line 247
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->getHandlers()Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;

    move-result-object v8

    .line 248
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, "try "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v7}, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->getStart()I

    move-result v12

    invoke-static {v12}, Lcom/s1243808733/android/dx/util/Hex;->u2or4(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, ".."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v7}, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->getEnd()I

    move-result v7

    invoke-static {v7}, Lcom/s1243808733/android/dx/util/Hex;->u2or4(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 250
    const-string v9, ""

    invoke-virtual {v8, v4, v9}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->toHuman(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 252
    if-eqz v5, :cond_5

    .line 253
    move-object/from16 v0, p3

    invoke-interface {v0, v3, v7}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 254
    move-object/from16 v0, p3

    invoke-interface {v0, v1, v8}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 245
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    .line 256
    :cond_5
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 257
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 266
    :cond_6
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "handlers:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-interface {v0, v1, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 267
    iget v1, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->encodedHandlerHeaderSize:I

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v5, "size: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->handlerOffsets:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->size()I

    move-result v3

    invoke-static {v3}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-interface {v0, v1, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 270
    const/4 v1, 0x0

    check-cast v1, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;

    .line 273
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->handlerOffsets:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v2, 0x0

    .line 284
    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_7

    .line 287
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->encodedHandlers:[B

    array-length v3, v3

    sub-int/2addr v3, v2

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-static/range {v1 .. v6}, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->annotateAndConsumeHandlers(Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;IILjava/lang/String;Ljava/io/PrintWriter;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V

    goto/16 :goto_5

    .line 273
    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 275
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;

    .line 276
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 278
    if-eqz v1, :cond_8

    .line 279
    sub-int v3, v8, v2

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-static/range {v1 .. v6}, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->annotateAndConsumeHandlers(Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;IILjava/lang/String;Ljava/io/PrintWriter;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V

    :cond_8
    move v2, v8

    move-object v1, v7

    .line 284
    goto :goto_7
.end method

.method private finishProcessingIfNecessary()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->table:Lcom/s1243808733/android/dx/dex/code/CatchTable;

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->code:Lcom/s1243808733/android/dx/dex/code/DalvCode;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/DalvCode;->getCatches()Lcom/s1243808733/android/dx/dex/code/CatchTable;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->table:Lcom/s1243808733/android/dx/dex/code/CatchTable;

    :cond_0
    return-void
.end method


# virtual methods
.method public debugPrint(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 108
    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    invoke-direct {p0, p2, p1, v0}, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->annotateEntries(Ljava/lang/String;Ljava/io/PrintWriter;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V

    return-void
.end method

.method public encode(Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/dex/file/DexFile;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    .line 117
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->finishProcessingIfNecessary()V

    .line 119
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getTypeIds()Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;

    move-result-object v4

    .line 120
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->table:Lcom/s1243808733/android/dx/dex/code/CatchTable;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/CatchTable;->size()I

    move-result v2

    .line 122
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->handlerOffsets:Ljava/util/TreeMap;

    move v1, v3

    .line 128
    :goto_0
    if-lt v1, v2, :cond_0

    .line 132
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->handlerOffsets:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    const v1, 0xffff

    if-le v0, v1, :cond_1

    .line 133
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "too many catch handlers"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    iget-object v5, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->handlerOffsets:Ljava/util/TreeMap;

    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->table:Lcom/s1243808733/android/dx/dex/code/CatchTable;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/code/CatchTable;->get(I)Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->getHandlers()Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;

    move-result-object v6

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v5, v6, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 137
    :cond_1
    new-instance v5, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-direct {v5}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;-><init>()V

    .line 140
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->handlerOffsets:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->encodedHandlerHeaderSize:I

    .line 144
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->handlerOffsets:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 169
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 173
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->encodedHandlers:[B

    return-void

    .line 144
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 146
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;

    .line 147
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->size()I

    move-result v2

    .line 148
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->catchesAll()Z

    move-result v7

    .line 151
    new-instance v8, Ljava/lang/Integer;

    invoke-virtual {v5}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v8}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    if-eqz v7, :cond_4

    .line 155
    add-int/lit8 v0, v2, -0x1

    neg-int v0, v0

    invoke-virtual {v5, v0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeSleb128(I)I

    .line 156
    add-int/lit8 v0, v2, -0x1

    :goto_2
    move v2, v3

    .line 161
    :goto_3
    if-lt v2, v0, :cond_5

    .line 168
    if-eqz v7, :cond_2

    .line 169
    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->get(I)Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;->getHandler()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    goto :goto_1

    .line 158
    :cond_4
    invoke-virtual {v5, v2}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeSleb128(I)I

    move v0, v2

    goto :goto_2

    .line 162
    :cond_5
    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->get(I)Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;

    move-result-object v8

    .line 163
    invoke-virtual {v8}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;->getExceptionType()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/cst/CstType;)I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    .line 165
    invoke-virtual {v8}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;->getHandler()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    .line 161
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
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
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/dex/file/DexFile;",
            "Lcom/s1243808733/android/dx/util/AnnotatedOutput;",
            ")V"
        }
    .end annotation

    .line 193
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->finishProcessingIfNecessary()V

    .line 195
    invoke-interface {p2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const-string v1, "  "

    const/4 v0, 0x0

    check-cast v0, Ljava/io/PrintWriter;

    invoke-direct {p0, v1, v0, p2}, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->annotateEntries(Ljava/lang/String;Ljava/io/PrintWriter;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->table:Lcom/s1243808733/android/dx/dex/code/CatchTable;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/CatchTable;->size()I

    move-result v2

    .line 200
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_1

    .line 217
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->encodedHandlers:[B

    invoke-interface {p2, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->write([B)V

    return-void

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->table:Lcom/s1243808733/android/dx/dex/code/CatchTable;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/code/CatchTable;->get(I)Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->getStart()I

    move-result v3

    .line 203
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->getEnd()I

    move-result v4

    .line 204
    sub-int v5, v4, v3

    .line 206
    const/high16 v6, 0x10000

    if-lt v5, v6, :cond_2

    .line 207
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "bogus exception range: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-static {v3}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ".."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v4}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_2
    invoke-interface {p2, v3}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 213
    invoke-interface {p2, v5}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 214
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->handlerOffsets:Ljava/util/TreeMap;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->getHandlers()Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p2, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 200
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

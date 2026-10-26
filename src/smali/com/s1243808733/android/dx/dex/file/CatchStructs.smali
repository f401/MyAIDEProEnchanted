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
    .locals 2

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->code:Lcom/s1243808733/android/dx/dex/code/DalvCode;

    .line 76
    iput-object v1, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->table:Lcom/s1243808733/android/dx/dex/code/CatchTable;

    .line 77
    iput-object v1, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->encodedHandlers:[B

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->encodedHandlerHeaderSize:I

    .line 79
    iput-object v1, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->handlerOffsets:Ljava/util/TreeMap;

    return-void
.end method

.method private static annotateAndConsumeHandlers(Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;IILjava/lang/String;Ljava/io/PrintWriter;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .locals 2

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->toHuman(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p4, :cond_0

    .line 309
    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 312
    :cond_0
    invoke-interface {p5, p2, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    return-void
.end method

.method private annotateEntries(Ljava/lang/String;Ljava/io/PrintWriter;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .locals 11

    const/4 v1, 0x0

    .line 231
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->finishProcessingIfNecessary()V

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    move v5, v0

    :goto_0
    if-eqz v5, :cond_1

    const/4 v0, 0x6

    move v4, v0

    :goto_1
    if-eqz v5, :cond_2

    const/4 v0, 0x2

    .line 236
    :goto_2
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->table:Lcom/s1243808733/android/dx/dex/code/CatchTable;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/dex/code/CatchTable;->size()I

    move-result v6

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 239
    if-eqz v5, :cond_3

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "tries:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v1, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    :goto_3
    move v2, v1

    .line 242
    :goto_4
    if-ge v2, v6, :cond_5

    .line 246
    iget-object v7, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->table:Lcom/s1243808733/android/dx/dex/code/CatchTable;

    invoke-virtual {v7, v2}, Lcom/s1243808733/android/dx/dex/code/CatchTable;->get(I)Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;

    move-result-object v7

    .line 247
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->getHandlers()Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;

    move-result-object v8

    .line 248
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "try "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->getStart()I

    move-result v10

    invoke-static {v10}, Lcom/s1243808733/android/dx/util/Hex;->u2or4(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->getEnd()I

    move-result v7

    invoke-static {v7}, Lcom/s1243808733/android/dx/util/Hex;->u2or4(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 250
    const-string v9, ""

    invoke-virtual {v8, v3, v9}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->toHuman(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v5, :cond_4

    .line 253
    invoke-interface {p3, v4, v7}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 254
    invoke-interface {p3, v0, v8}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 257
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_0
    move v5, v1

    .line 231
    goto :goto_0

    :cond_1
    move v4, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    .line 242
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "tries:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 256
    :cond_4
    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    if-nez v5, :cond_6

    .line 287
    :goto_6
    return-void

    .line 266
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "handlers:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v1, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 267
    iget v0, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->encodedHandlerHeaderSize:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->handlerOffsets:Ljava/util/TreeMap;

    .line 268
    invoke-virtual {v4}, Ljava/util/TreeMap;->size()I

    move-result v4

    invoke-static {v4}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 267
    invoke-interface {p3, v0, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->handlerOffsets:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v0, 0x0

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 275
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;

    .line 276
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v0, :cond_7

    .line 279
    sub-int v2, v7, v1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->annotateAndConsumeHandlers(Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;IILjava/lang/String;Ljava/io/PrintWriter;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V

    :cond_7
    move v1, v7

    move-object v0, v6

    goto :goto_7

    .line 287
    :cond_8
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->encodedHandlers:[B

    array-length v2, v2

    sub-int/2addr v2, v1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->annotateAndConsumeHandlers(Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;IILjava/lang/String;Ljava/io/PrintWriter;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V

    goto :goto_6
.end method

.method private finishProcessingIfNecessary()V
    .locals 1

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
    .locals 1

    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->annotateEntries(Ljava/lang/String;Ljava/io/PrintWriter;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V

    return-void
.end method

.method public encode(Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .locals 10

    const/4 v3, 0x0

    .line 117
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->finishProcessingIfNecessary()V

    .line 119
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getTypeIds()Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;

    move-result-object v4

    .line 120
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->table:Lcom/s1243808733/android/dx/dex/code/CatchTable;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/CatchTable;->size()I

    move-result v1

    .line 122
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->handlerOffsets:Ljava/util/TreeMap;

    move v0, v3

    :goto_0
    if-ge v0, v1, :cond_0

    .line 129
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->handlerOffsets:Ljava/util/TreeMap;

    iget-object v5, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->table:Lcom/s1243808733/android/dx/dex/code/CatchTable;

    invoke-virtual {v5, v0}, Lcom/s1243808733/android/dx/dex/code/CatchTable;->get(I)Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;

    move-result-object v5

    invoke-virtual {v5}, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->getHandlers()Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->handlerOffsets:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    const v1, 0xffff

    if-gt v0, v1, :cond_5

    .line 137
    new-instance v5, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-direct {v5}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;-><init>()V

    .line 140
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->handlerOffsets:Ljava/util/TreeMap;

    .line 141
    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->encodedHandlerHeaderSize:I

    .line 145
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->handlerOffsets:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

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
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v7, :cond_2

    add-int/lit8 v0, v2, -0x1

    neg-int v0, v0

    .line 155
    invoke-virtual {v5, v0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeSleb128(I)I

    add-int/lit8 v0, v2, -0x1

    :goto_2
    move v2, v3

    .line 158
    :goto_3
    if-ge v2, v0, :cond_3

    .line 162
    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->get(I)Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;

    move-result-object v8

    .line 164
    invoke-virtual {v8}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;->getExceptionType()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/cst/CstType;)I

    move-result v9

    .line 163
    invoke-virtual {v5, v9}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    .line 165
    invoke-virtual {v8}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;->getHandler()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 158
    :cond_2
    invoke-virtual {v5, v2}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeSleb128(I)I

    move v0, v2

    goto :goto_2

    .line 165
    :cond_3
    if-eqz v7, :cond_1

    .line 169
    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->get(I)Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;->getHandler()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    goto :goto_1

    .line 173
    :cond_4
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->encodedHandlers:[B

    return-void

    .line 133
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "too many catch handlers"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public triesSize()I
    .locals 1

    .line 97
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->finishProcessingIfNecessary()V

    .line 98
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->table:Lcom/s1243808733/android/dx/dex/code/CatchTable;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/CatchTable;->size()I

    move-result v0

    return v0
.end method

.method public writeSize()I
    .locals 2

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
    .locals 7

    .line 193
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->finishProcessingIfNecessary()V

    .line 195
    invoke-interface {p2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const-string v0, "  "

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2}, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->annotateEntries(Ljava/lang/String;Ljava/io/PrintWriter;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->table:Lcom/s1243808733/android/dx/dex/code/CatchTable;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/CatchTable;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 201
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->table:Lcom/s1243808733/android/dx/dex/code/CatchTable;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/code/CatchTable;->get(I)Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->getStart()I

    move-result v3

    .line 203
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->getEnd()I

    move-result v4

    sub-int v5, v4, v3

    const/high16 v6, 0x10000

    if-ge v5, v6, :cond_1

    .line 212
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

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 207
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bogus exception range: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-static {v3}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-static {v4}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->encodedHandlers:[B

    invoke-interface {p2, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->write([B)V

    return-void
.end method

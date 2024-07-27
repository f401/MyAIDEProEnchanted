.class abstract Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;
.super Ljava/lang/Object;
.source "DexMerger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/merge/DexMerger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "IdMerger"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger$UnsortedValue;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Comparable",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final out:Lcom/s1243808733/android/dex/Dex$Section;

.field private final this$0:Lcom/s1243808733/android/dx/merge/DexMerger;


# direct methods
.method protected constructor <init>(Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dex/Dex$Section;)V
    .registers 3

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    .line 239
    iput-object p2, p0, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->out:Lcom/s1243808733/android/dex/Dex$Section;

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;)Lcom/s1243808733/android/dx/merge/DexMerger;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    return-object v0
.end method

.method private readIntoMap(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dex/TableOfContents$Section;Lcom/s1243808733/android/dx/merge/IndexMap;ILjava/util/TreeMap;I)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dex/Dex$Section;",
            "Lcom/s1243808733/android/dex/TableOfContents$Section;",
            "Lcom/s1243808733/android/dx/merge/IndexMap;",
            "I",
            "Ljava/util/TreeMap",
            "<TT;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;I)I"
        }
    .end annotation

    .line 289
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->getPosition()I

    move-result v0

    move v2, v0

    .line 290
    :goto_0
    iget v0, p2, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    if-ge p4, v0, :cond_1

    .line 291
    invoke-virtual {p0, p1, p3, p4}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->read(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dx/merge/IndexMap;I)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    .line 292
    invoke-virtual {p5, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 293
    if-nez v1, :cond_0

    .line 294
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 295
    invoke-virtual {p5, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    :cond_0
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    :cond_1
    return v2

    .line 289
    :cond_2
    const/4 v0, -0x1

    move v2, v0

    goto :goto_0
.end method

.method private readUnsortedValues(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dx/merge/IndexMap;)Ljava/util/List;
    .registers 14

    const/4 v7, 0x0

    .line 338
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex;->getTableOfContents()Lcom/s1243808733/android/dex/TableOfContents;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->getSection(Lcom/s1243808733/android/dex/TableOfContents;)Lcom/s1243808733/android/dex/TableOfContents$Section;

    move-result-object v9

    .line 339
    invoke-virtual {v9}, Lcom/s1243808733/android/dex/TableOfContents$Section;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 350
    :goto_0
    return-object v0

    .line 343
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 344
    iget v0, v9, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/Dex;->open(I)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v10

    move v5, v7

    .line 345
    :goto_1
    iget v0, v9, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    if-lt v5, v0, :cond_1

    move-object v0, v8

    .line 350
    goto :goto_0

    .line 346
    :cond_1
    invoke-virtual {v10}, Lcom/s1243808733/android/dex/Dex$Section;->getPosition()I

    move-result v6

    .line 347
    invoke-virtual {p0, v10, p2, v7}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->read(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dx/merge/IndexMap;I)Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Comparable;

    .line 348
    new-instance v0, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger$UnsortedValue;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger$UnsortedValue;-><init>(Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dx/merge/IndexMap;Ljava/lang/Comparable;II)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method


# virtual methods
.method abstract getSection(Lcom/s1243808733/android/dex/TableOfContents;)Lcom/s1243808733/android/dex/TableOfContents$Section;
.end method

.method public final mergeSorted()V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v7, 0x0

    .line 247
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger;->access$L1000000(Lcom/s1243808733/android/dx/merge/DexMerger;)[Lcom/s1243808733/android/dex/Dex;

    move-result-object v0

    array-length v0, v0

    new-array v8, v0, [Lcom/s1243808733/android/dex/TableOfContents$Section;

    .line 248
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger;->access$L1000000(Lcom/s1243808733/android/dx/merge/DexMerger;)[Lcom/s1243808733/android/dex/Dex;

    move-result-object v0

    array-length v0, v0

    new-array v9, v0, [Lcom/s1243808733/android/dex/Dex$Section;

    .line 249
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger;->access$L1000000(Lcom/s1243808733/android/dx/merge/DexMerger;)[Lcom/s1243808733/android/dex/Dex;

    move-result-object v0

    array-length v0, v0

    new-array v10, v0, [I

    .line 250
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger;->access$L1000000(Lcom/s1243808733/android/dx/merge/DexMerger;)[Lcom/s1243808733/android/dex/Dex;

    move-result-object v0

    array-length v0, v0

    new-array v11, v0, [I

    .line 255
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    move v6, v7

    .line 257
    :goto_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger;->access$L1000000(Lcom/s1243808733/android/dx/merge/DexMerger;)[Lcom/s1243808733/android/dex/Dex;

    move-result-object v0

    array-length v0, v0

    if-lt v6, v0, :cond_0

    .line 264
    invoke-virtual {v5}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 265
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger;->access$L1000019(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/TableOfContents;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->getSection(Lcom/s1243808733/android/dex/TableOfContents;)Lcom/s1243808733/android/dex/TableOfContents$Section;

    move-result-object v0

    iput v7, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    .line 266
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger;->access$L1000019(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/TableOfContents;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->getSection(Lcom/s1243808733/android/dex/TableOfContents;)Lcom/s1243808733/android/dex/TableOfContents$Section;

    move-result-object v0

    iput v7, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    .line 284
    :goto_1
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger;->access$L1000000(Lcom/s1243808733/android/dx/merge/DexMerger;)[Lcom/s1243808733/android/dex/Dex;

    move-result-object v0

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex;->getTableOfContents()Lcom/s1243808733/android/dex/TableOfContents;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->getSection(Lcom/s1243808733/android/dex/TableOfContents;)Lcom/s1243808733/android/dex/TableOfContents$Section;

    move-result-object v0

    aput-object v0, v8, v6

    .line 259
    aget-object v0, v8, v6

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/TableOfContents$Section;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger;->access$L1000000(Lcom/s1243808733/android/dx/merge/DexMerger;)[Lcom/s1243808733/android/dex/Dex;

    move-result-object v0

    aget-object v0, v0, v6

    aget-object v1, v8, v6

    iget v1, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dex/Dex;->open(I)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v0

    :goto_2
    aput-object v0, v9, v6

    .line 261
    aget-object v1, v9, v6

    aget-object v2, v8, v6

    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger;->access$L1000001(Lcom/s1243808733/android/dx/merge/DexMerger;)[Lcom/s1243808733/android/dx/merge/IndexMap;

    move-result-object v0

    aget-object v3, v0, v6

    aget v4, v11, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->readIntoMap(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dex/TableOfContents$Section;Lcom/s1243808733/android/dx/merge/IndexMap;ILjava/util/TreeMap;I)I

    move-result v0

    aput v0, v10, v6

    .line 257
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 259
    :cond_1
    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dex/Dex$Section;

    goto :goto_2

    .line 269
    :cond_2
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger;->access$L1000019(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/TableOfContents;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->getSection(Lcom/s1243808733/android/dex/TableOfContents;)Lcom/s1243808733/android/dex/TableOfContents$Section;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->out:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v1}, Lcom/s1243808733/android/dex/Dex$Section;->getPosition()I

    move-result v1

    iput v1, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    .line 272
    :goto_3
    invoke-virtual {v5}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 284
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger;->access$L1000019(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/TableOfContents;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->getSection(Lcom/s1243808733/android/dex/TableOfContents;)Lcom/s1243808733/android/dex/TableOfContents$Section;

    move-result-object v0

    iput v7, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    goto :goto_1

    .line 273
    :cond_3
    invoke-virtual {v5}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v12

    .line 274
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 277
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 280
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->write(Ljava/lang/Comparable;)V

    .line 281
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 274
    :cond_4
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 275
    aget v0, v10, v6

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v1}, Lcom/s1243808733/android/dx/merge/DexMerger;->access$L1000001(Lcom/s1243808733/android/dx/merge/DexMerger;)[Lcom/s1243808733/android/dx/merge/IndexMap;

    move-result-object v1

    aget-object v1, v1, v6

    aget v2, v11, v6

    add-int/lit8 v3, v2, 0x1

    aput v3, v11, v6

    invoke-virtual {p0, v0, v1, v2, v7}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->updateIndex(ILcom/s1243808733/android/dx/merge/IndexMap;II)V

    .line 277
    aget-object v1, v9, v6

    aget-object v2, v8, v6

    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger;->access$L1000001(Lcom/s1243808733/android/dx/merge/DexMerger;)[Lcom/s1243808733/android/dx/merge/IndexMap;

    move-result-object v0

    aget-object v3, v0, v6

    aget v4, v11, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->readIntoMap(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dex/TableOfContents$Section;Lcom/s1243808733/android/dx/merge/IndexMap;ILjava/util/TreeMap;I)I

    move-result v0

    aput v0, v10, v6

    goto :goto_4
.end method

.method public final mergeUnsorted()V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 307
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger;->access$L1000019(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/TableOfContents;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->getSection(Lcom/s1243808733/android/dex/TableOfContents;)Lcom/s1243808733/android/dex/TableOfContents$Section;

    move-result-object v0

    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->out:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v2}, Lcom/s1243808733/android/dex/Dex$Section;->getPosition()I

    move-result v2

    iput v2, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    .line 309
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 310
    :goto_0
    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v2}, Lcom/s1243808733/android/dx/merge/DexMerger;->access$L1000000(Lcom/s1243808733/android/dx/merge/DexMerger;)[Lcom/s1243808733/android/dex/Dex;

    move-result-object v2

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 313
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger;->access$L1000019(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/TableOfContents;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->getSection(Lcom/s1243808733/android/dex/TableOfContents;)Lcom/s1243808733/android/dex/TableOfContents$Section;

    move-result-object v0

    iput v1, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    .line 315
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger;->access$L1000019(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/TableOfContents;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->getSection(Lcom/s1243808733/android/dex/TableOfContents;)Lcom/s1243808733/android/dex/TableOfContents$Section;

    move-result-object v0

    iput v1, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    .line 334
    :goto_1
    return-void

    .line 311
    :cond_0
    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v2}, Lcom/s1243808733/android/dx/merge/DexMerger;->access$L1000000(Lcom/s1243808733/android/dx/merge/DexMerger;)[Lcom/s1243808733/android/dex/Dex;

    move-result-object v2

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v3}, Lcom/s1243808733/android/dx/merge/DexMerger;->access$L1000001(Lcom/s1243808733/android/dx/merge/DexMerger;)[Lcom/s1243808733/android/dx/merge/IndexMap;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-direct {p0, v2, v3}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->readUnsortedValues(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dx/merge/IndexMap;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 318
    :cond_1
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move v2, v1

    move v0, v1

    .line 331
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 334
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger;->access$L1000019(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/TableOfContents;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->getSection(Lcom/s1243808733/android/dex/TableOfContents;)Lcom/s1243808733/android/dex/TableOfContents$Section;

    move-result-object v0

    iput v2, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    goto :goto_1

    .line 322
    :cond_2
    add-int/lit8 v3, v0, 0x1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger$UnsortedValue;

    .line 323
    iget v1, v0, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger$UnsortedValue;->offset:I

    iget-object v5, v0, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger$UnsortedValue;->indexMap:Lcom/s1243808733/android/dx/merge/IndexMap;

    iget v6, v0, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger$UnsortedValue;->index:I

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {p0, v1, v5, v6, v7}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->updateIndex(ILcom/s1243808733/android/dx/merge/IndexMap;II)V

    .line 325
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_3

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger$UnsortedValue;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger$UnsortedValue;->compareTo(Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger$UnsortedValue;)I

    move-result v1

    if-eqz v1, :cond_4

    .line 330
    :cond_3
    iget-object v0, v0, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger$UnsortedValue;->value:Ljava/lang/Comparable;

    check-cast v0, Ljava/lang/Comparable;

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->write(Ljava/lang/Comparable;)V

    .line 331
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v0, v3

    goto :goto_2

    .line 326
    :cond_4
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger$UnsortedValue;

    .line 327
    iget v5, v1, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger$UnsortedValue;->offset:I

    iget-object v6, v1, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger$UnsortedValue;->indexMap:Lcom/s1243808733/android/dx/merge/IndexMap;

    iget v1, v1, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger$UnsortedValue;->index:I

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {p0, v5, v6, v1, v7}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->updateIndex(ILcom/s1243808733/android/dx/merge/IndexMap;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method abstract read(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dx/merge/IndexMap;I)Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dex/Dex$Section;",
            "Lcom/s1243808733/android/dx/merge/IndexMap;",
            "I)TT;"
        }
    .end annotation
.end method

.method abstract updateIndex(ILcom/s1243808733/android/dx/merge/IndexMap;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/s1243808733/android/dx/merge/IndexMap;",
            "II)V"
        }
    .end annotation
.end method

.method abstract write(Ljava/lang/Comparable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

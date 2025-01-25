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
        "<T::",
        "Ljava/lang/Comparable<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final out:Lcom/s1243808733/android/dex/Dex$Section;

.field final this$0:Lcom/s1243808733/android/dx/merge/DexMerger;


# direct methods
.method protected constructor <init>(Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dex/Dex$Section;)V
    .registers 3

    .line 238
    iput-object p1, p0, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-object p2, p0, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->out:Lcom/s1243808733/android/dex/Dex$Section;

    return-void
.end method

.method private readIntoMap(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dex/TableOfContents$Section;Lcom/s1243808733/android/dx/merge/IndexMap;ILjava/util/TreeMap;I)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dex/Dex$Section;",
            "Lcom/s1243808733/android/dex/TableOfContents$Section;",
            "Lcom/s1243808733/android/dx/merge/IndexMap;",
            "I",
            "Ljava/util/TreeMap<",
            "TT;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;I)I"
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 289
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->getPosition()I

    move-result v0

    goto :goto_8

    :cond_7
    const/4 v0, -0x1

    .line 290
    :goto_8
    iget p2, p2, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    if-ge p4, p2, :cond_27

    .line 291
    invoke-virtual {p0, p1, p3, p4}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->read(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dx/merge/IndexMap;I)Ljava/lang/Comparable;

    move-result-object p1

    .line 292
    invoke-virtual {p5, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_20

    .line 294
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 295
    invoke-virtual {p5, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    :cond_20
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_27
    return v0
.end method

.method private readUnsortedValues(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dx/merge/IndexMap;)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dex/Dex;",
            "Lcom/s1243808733/android/dx/merge/IndexMap;",
            ")",
            "Ljava/util/List<",
            "Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger<",
            "TT;>.UnsortedValue;>;"
        }
    .end annotation

    .line 338
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex;->getTableOfContents()Lcom/s1243808733/android/dex/TableOfContents;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->getSection(Lcom/s1243808733/android/dex/TableOfContents;)Lcom/s1243808733/android/dex/TableOfContents$Section;

    move-result-object v0

    .line 339
    invoke-virtual {v0}, Lcom/s1243808733/android/dex/TableOfContents$Section;->exists()Z

    move-result v1

    if-nez v1, :cond_13

    .line 340
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 343
    :cond_13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 344
    iget v2, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1, v2}, Lcom/s1243808733/android/dex/Dex;->open(I)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v11, 0x0

    .line 345
    :goto_20
    iget v4, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    if-ge v11, v4, :cond_3c

    .line 346
    invoke-virtual {v2}, Lcom/s1243808733/android/dex/Dex$Section;->getPosition()I

    move-result v10

    .line 347
    invoke-virtual {p0, v2, p2, v3}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->read(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dx/merge/IndexMap;I)Ljava/lang/Comparable;

    move-result-object v8

    .line 348
    new-instance v12, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger$UnsortedValue;

    move-object v4, v12

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move v9, v11

    invoke-direct/range {v4 .. v10}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger$UnsortedValue;-><init>(Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dx/merge/IndexMap;Ljava/lang/Comparable;II)V

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_20

    :cond_3c
    return-object v1
.end method


# virtual methods
.method abstract getSection(Lcom/s1243808733/android/dex/TableOfContents;)Lcom/s1243808733/android/dex/TableOfContents$Section;
.end method

.method public final mergeSorted()V
    .registers 18

    .line 247
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger;->-$$Nest$fgetdexes(Lcom/s1243808733/android/dx/merge/DexMerger;)[Lcom/s1243808733/android/dex/Dex;

    move-result-object v0

    array-length v0, v0

    new-array v8, v0, [Lcom/s1243808733/android/dex/TableOfContents$Section;

    .line 248
    iget-object v0, v7, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger;->-$$Nest$fgetdexes(Lcom/s1243808733/android/dx/merge/DexMerger;)[Lcom/s1243808733/android/dex/Dex;

    move-result-object v0

    array-length v0, v0

    new-array v9, v0, [Lcom/s1243808733/android/dex/Dex$Section;

    .line 249
    iget-object v0, v7, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger;->-$$Nest$fgetdexes(Lcom/s1243808733/android/dx/merge/DexMerger;)[Lcom/s1243808733/android/dex/Dex;

    move-result-object v0

    array-length v0, v0

    new-array v10, v0, [I

    .line 250
    iget-object v0, v7, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger;->-$$Nest$fgetdexes(Lcom/s1243808733/android/dx/merge/DexMerger;)[Lcom/s1243808733/android/dex/Dex;

    move-result-object v0

    array-length v0, v0

    new-array v11, v0, [I

    .line 255
    new-instance v12, Ljava/util/TreeMap;

    invoke-direct {v12}, Ljava/util/TreeMap;-><init>()V

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 257
    :goto_2d
    iget-object v0, v7, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger;->-$$Nest$fgetdexes(Lcom/s1243808733/android/dx/merge/DexMerger;)[Lcom/s1243808733/android/dex/Dex;

    move-result-object v0

    array-length v0, v0

    if-ge v14, v0, :cond_7c

    .line 258
    iget-object v0, v7, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger;->-$$Nest$fgetdexes(Lcom/s1243808733/android/dx/merge/DexMerger;)[Lcom/s1243808733/android/dex/Dex;

    move-result-object v0

    aget-object v0, v0, v14

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex;->getTableOfContents()Lcom/s1243808733/android/dex/TableOfContents;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->getSection(Lcom/s1243808733/android/dex/TableOfContents;)Lcom/s1243808733/android/dex/TableOfContents$Section;

    move-result-object v0

    aput-object v0, v8, v14

    .line 259
    invoke-virtual {v0}, Lcom/s1243808733/android/dex/TableOfContents$Section;->exists()Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-object v0, v7, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger;->-$$Nest$fgetdexes(Lcom/s1243808733/android/dx/merge/DexMerger;)[Lcom/s1243808733/android/dex/Dex;

    move-result-object v0

    aget-object v0, v0, v14

    aget-object v1, v8, v14

    iget v1, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dex/Dex;->open(I)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v0

    goto :goto_60

    :cond_5f
    const/4 v0, 0x0

    :goto_60
    move-object v1, v0

    aput-object v1, v9, v14

    .line 261
    aget-object v2, v8, v14

    iget-object v0, v7, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger;->-$$Nest$fgetindexMaps(Lcom/s1243808733/android/dx/merge/DexMerger;)[Lcom/s1243808733/android/dx/merge/IndexMap;

    move-result-object v0

    aget-object v3, v0, v14

    aget v4, v11, v14

    move-object/from16 v0, p0

    move-object v5, v12

    move v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->readIntoMap(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dex/TableOfContents$Section;Lcom/s1243808733/android/dx/merge/IndexMap;ILjava/util/TreeMap;I)I

    move-result v0

    aput v0, v10, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_2d

    .line 264
    :cond_7c
    invoke-virtual {v12}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 265
    iget-object v0, v7, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger;->-$$Nest$fgetcontentsOut(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/TableOfContents;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->getSection(Lcom/s1243808733/android/dex/TableOfContents;)Lcom/s1243808733/android/dex/TableOfContents$Section;

    move-result-object v0

    iput v13, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    .line 266
    iget-object v0, v7, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger;->-$$Nest$fgetcontentsOut(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/TableOfContents;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->getSection(Lcom/s1243808733/android/dex/TableOfContents;)Lcom/s1243808733/android/dex/TableOfContents$Section;

    move-result-object v0

    iput v13, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    return-void

    .line 269
    :cond_9b
    iget-object v0, v7, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger;->-$$Nest$fgetcontentsOut(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/TableOfContents;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->getSection(Lcom/s1243808733/android/dex/TableOfContents;)Lcom/s1243808733/android/dex/TableOfContents$Section;

    move-result-object v0

    iget-object v1, v7, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->out:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v1}, Lcom/s1243808733/android/dex/Dex$Section;->getPosition()I

    move-result v1

    iput v1, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    .line 272
    :goto_ad
    invoke-virtual {v12}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10a

    .line 273
    invoke-virtual {v12}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v14

    .line 274
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_c1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_fe

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 275
    aget v0, v10, v16

    iget-object v1, v7, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v1}, Lcom/s1243808733/android/dx/merge/DexMerger;->-$$Nest$fgetindexMaps(Lcom/s1243808733/android/dx/merge/DexMerger;)[Lcom/s1243808733/android/dx/merge/IndexMap;

    move-result-object v1

    aget-object v1, v1, v16

    aget v2, v11, v16

    add-int/lit8 v3, v2, 0x1

    aput v3, v11, v16

    invoke-virtual {v7, v0, v1, v2, v13}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->updateIndex(ILcom/s1243808733/android/dx/merge/IndexMap;II)V

    .line 277
    aget-object v1, v9, v16

    aget-object v2, v8, v16

    iget-object v0, v7, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger;->-$$Nest$fgetindexMaps(Lcom/s1243808733/android/dx/merge/DexMerger;)[Lcom/s1243808733/android/dx/merge/IndexMap;

    move-result-object v0

    aget-object v3, v0, v16

    aget v4, v11, v16

    move-object/from16 v0, p0

    move-object v5, v12

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->readIntoMap(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dex/TableOfContents$Section;Lcom/s1243808733/android/dx/merge/IndexMap;ILjava/util/TreeMap;I)I

    move-result v0

    aput v0, v10, v16

    goto :goto_c1

    .line 280
    :cond_fe
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-virtual {v7, v0}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->write(Ljava/lang/Comparable;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_ad

    .line 284
    :cond_10a
    iget-object v0, v7, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger;->-$$Nest$fgetcontentsOut(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/TableOfContents;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->getSection(Lcom/s1243808733/android/dex/TableOfContents;)Lcom/s1243808733/android/dex/TableOfContents$Section;

    move-result-object v0

    iput v13, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    return-void
.end method

.method public final mergeUnsorted()V
    .registers 9

    .line 307
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger;->-$$Nest$fgetcontentsOut(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/TableOfContents;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->getSection(Lcom/s1243808733/android/dex/TableOfContents;)Lcom/s1243808733/android/dex/TableOfContents$Section;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->out:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v1}, Lcom/s1243808733/android/dex/Dex$Section;->getPosition()I

    move-result v1

    iput v1, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 310
    :goto_19
    iget-object v3, p0, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v3}, Lcom/s1243808733/android/dx/merge/DexMerger;->-$$Nest$fgetdexes(Lcom/s1243808733/android/dx/merge/DexMerger;)[Lcom/s1243808733/android/dex/Dex;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_3c

    .line 311
    iget-object v3, p0, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v3}, Lcom/s1243808733/android/dx/merge/DexMerger;->-$$Nest$fgetdexes(Lcom/s1243808733/android/dx/merge/DexMerger;)[Lcom/s1243808733/android/dex/Dex;

    move-result-object v3

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v4}, Lcom/s1243808733/android/dx/merge/DexMerger;->-$$Nest$fgetindexMaps(Lcom/s1243808733/android/dx/merge/DexMerger;)[Lcom/s1243808733/android/dx/merge/IndexMap;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-direct {p0, v3, v4}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->readUnsortedValues(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dx/merge/IndexMap;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 313
    :cond_3c
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 314
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger;->-$$Nest$fgetcontentsOut(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/TableOfContents;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->getSection(Lcom/s1243808733/android/dex/TableOfContents;)Lcom/s1243808733/android/dex/TableOfContents$Section;

    move-result-object v0

    iput v1, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    .line 315
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger;->-$$Nest$fgetcontentsOut(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/TableOfContents;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->getSection(Lcom/s1243808733/android/dex/TableOfContents;)Lcom/s1243808733/android/dex/TableOfContents$Section;

    move-result-object v0

    iput v1, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    return-void

    .line 318
    :cond_5b
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v2, 0x0

    .line 321
    :goto_5f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_a5

    add-int/lit8 v3, v1, 0x1

    .line 322
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger$UnsortedValue;

    .line 323
    iget v4, v1, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger$UnsortedValue;->offset:I

    iget-object v5, v1, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger$UnsortedValue;->indexMap:Lcom/s1243808733/android/dx/merge/IndexMap;

    iget v6, v1, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger$UnsortedValue;->index:I

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->updateIndex(ILcom/s1243808733/android/dx/merge/IndexMap;II)V

    .line 325
    :goto_78
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_9c

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger$UnsortedValue;

    invoke-virtual {v1, v4}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger$UnsortedValue;->compareTo(Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger$UnsortedValue;)I

    move-result v4

    if-nez v4, :cond_9c

    .line 326
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger$UnsortedValue;

    .line 327
    iget v5, v4, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger$UnsortedValue;->offset:I

    iget-object v6, v4, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger$UnsortedValue;->indexMap:Lcom/s1243808733/android/dx/merge/IndexMap;

    iget v4, v4, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger$UnsortedValue;->index:I

    invoke-virtual {p0, v5, v6, v4, v7}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->updateIndex(ILcom/s1243808733/android/dx/merge/IndexMap;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_78

    .line 330
    :cond_9c
    iget-object v1, v1, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger$UnsortedValue;->value:Ljava/lang/Comparable;

    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->write(Ljava/lang/Comparable;)V

    add-int/lit8 v2, v2, 0x1

    move v1, v3

    goto :goto_5f

    .line 334
    :cond_a5
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger;->-$$Nest$fgetcontentsOut(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/TableOfContents;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;->getSection(Lcom/s1243808733/android/dex/TableOfContents;)Lcom/s1243808733/android/dex/TableOfContents$Section;

    move-result-object v0

    iput v2, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    return-void
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
.end method

.method abstract write(Ljava/lang/Comparable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

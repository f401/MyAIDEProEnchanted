.class public final Lcom/s1243808733/android/dx/dex/file/MixedItemSection;
.super Lcom/s1243808733/android/dx/dex/file/Section;
.source "MixedItemSection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;
    }
.end annotation


# static fields
.field private static final TYPE_SORTER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/s1243808733/android/dx/dex/file/OffsettedItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final interns:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/s1243808733/android/dx/dex/file/OffsettedItem;",
            "Lcom/s1243808733/android/dx/dex/file/OffsettedItem;",
            ">;"
        }
    .end annotation
.end field

.field private final items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/dex/file/OffsettedItem;",
            ">;"
        }
    .end annotation
.end field

.field private final sort:Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;

.field private writeSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/MixedItemSection$1;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection$1;-><init>()V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->TYPE_SORTER:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/s1243808733/android/dx/dex/file/DexFile;ILcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;)V
    .registers 5

    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/s1243808733/android/dx/dex/file/Section;-><init>(Ljava/lang/String;Lcom/s1243808733/android/dx/dex/file/DexFile;I)V

    .line 92
    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0x64

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->items:Ljava/util/ArrayList;

    .line 93
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->interns:Ljava/util/HashMap;

    .line 94
    iput-object p4, p0, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->sort:Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;

    .line 95
    const/4 p1, -0x1

    iput p1, p0, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->writeSize:I

    return-void
.end method


# virtual methods
.method public add(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)V
    .registers 4

    .line 170
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->throwIfPrepared()V

    .line 173
    :try_start_3
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->getAlignment()I

    move-result v0

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->getAlignment()I

    move-result v1
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_b} :catch_1b

    if-gt v0, v1, :cond_13

    .line 182
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 174
    :cond_13
    :try_start_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "incompatible item alignment"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1b
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_1b} :catch_1b

    .line 179
    :catch_1b
    move-exception p1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "item == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)Lcom/s1243808733/android/dx/dex/file/OffsettedItem;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/s1243808733/android/dx/dex/file/OffsettedItem;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 214
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->throwIfNotPrepared()V

    .line 216
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->interns:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;

    if-eqz v0, :cond_e

    return-object v0

    .line 222
    :cond_e
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAbsoluteItemOffset(Lcom/s1243808733/android/dx/dex/file/Item;)I
    .registers 2

    .line 114
    check-cast p1, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;

    .line 115
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->getAbsoluteOffset()I

    move-result p1

    return p1
.end method

.method public intern(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)Lcom/s1243808733/android/dx/dex/file/OffsettedItem;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/s1243808733/android/dx/dex/file/OffsettedItem;",
            ">(TT;)TT;"
        }
    .end annotation

    monitor-enter p0

    .line 194
    :try_start_1
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->throwIfPrepared()V

    .line 196
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->interns:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_1a

    if-eqz v0, :cond_10

    .line 199
    monitor-exit p0

    return-object v0

    .line 202
    :cond_10
    :try_start_10
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->add(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)V

    .line 203
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->interns:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_1a

    .line 204
    monitor-exit p0

    return-object p1

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public items()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Lcom/s1243808733/android/dx/dex/file/Item;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method public placeItems()V
    .registers 6

    .line 294
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->throwIfNotPrepared()V

    .line 296
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->sort:Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    goto :goto_1d

    .line 298
    :cond_10
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->items:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_1d

    .line 302
    :cond_16
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->items:Ljava/util/ArrayList;

    sget-object v1, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->TYPE_SORTER:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 307
    :goto_1d
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_25
    if-ge v1, v0, :cond_68

    .line 310
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;

    .line 312
    :try_start_2f
    invoke-virtual {v3, p0, v2}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->place(Lcom/s1243808733/android/dx/dex/file/Section;I)I

    move-result v4

    if-lt v4, v2, :cond_3d

    .line 319
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->writeSize()I

    move-result v2

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 315
    :cond_3d
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bogus place() result for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_54
    .catch Ljava/lang/RuntimeException; {:try_start_2f .. :try_end_54} :catch_54

    :catch_54
    move-exception v0

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "...while placing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/s1243808733/android/dex/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/s1243808733/android/dex/util/ExceptionWithContext;

    move-result-object v0

    throw v0

    .line 326
    :cond_68
    iput v2, p0, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->writeSize:I

    return-void
.end method

.method protected prepare0()V
    .registers 5

    .line 264
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->getFile()Lcom/s1243808733/android/dx/dex/file/DexFile;

    move-result-object v0

    const/4 v1, 0x0

    .line 273
    :cond_5
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_e

    return-void

    :cond_e
    :goto_e
    if-ge v1, v2, :cond_5

    .line 279
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;

    .line 280
    invoke-virtual {v3, v0}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e
.end method

.method public size()I
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public writeHeaderPart(Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .registers 8

    .line 133
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->throwIfNotPrepared()V

    .line 135
    iget v0, p0, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->writeSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_74

    if-nez v0, :cond_c

    const/4 v1, 0x0

    goto :goto_10

    .line 140
    :cond_c
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->getFileOffset()I

    move-result v1

    .line 141
    :goto_10
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_18

    .line 144
    const-string v2, "<unnamed>"

    .line 147
    :cond_18
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 148
    rsub-int/lit8 v3, v3, 0xf

    new-array v3, v3, [C

    .line 149
    const/16 v4, 0x20

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([CC)V

    .line 150
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V

    .line 152
    invoke-interface {p1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_size:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    invoke-interface {p1, v5, v3}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_off: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v5, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 157
    :cond_6d
    invoke-interface {p1, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 158
    invoke-interface {p1, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    return-void

    .line 136
    :cond_74
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "write size not yet set"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeIndexAnnotation(Lcom/s1243808733/android/dx/util/AnnotatedOutput;Lcom/s1243808733/android/dx/dex/file/ItemType;Ljava/lang/String;)V
    .registers 8

    .line 236
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->throwIfNotPrepared()V

    .line 238
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 241
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;

    .line 242
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->itemType()Lcom/s1243808733/android/dx/dex/file/ItemType;

    move-result-object v3

    if-ne v3, p2, :cond_e

    .line 243
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->toHuman()Ljava/lang/String;

    move-result-object v3

    .line 244
    invoke-virtual {v0, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 248
    :cond_28
    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result p2

    if-nez p2, :cond_2f

    return-void

    .line 252
    :cond_2f
    const/4 p2, 0x0

    invoke-interface {p1, p2, p3}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 254
    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3b
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 255
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 256
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;

    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->offsetString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    goto :goto_3b

    :cond_74
    return-void
.end method

.method public writeSize()I
    .registers 2

    .line 107
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->throwIfNotPrepared()V

    .line 108
    iget v0, p0, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->writeSize:I

    return v0
.end method

.method protected writeTo0(Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .registers 12

    .line 332
    invoke-interface {p1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v0

    .line 334
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->getFile()Lcom/s1243808733/android/dx/dex/file/DexFile;

    move-result-object v1

    .line 337
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;

    if-eqz v0, :cond_29

    if-eqz v6, :cond_24

    const/4 v6, 0x0

    goto :goto_29

    .line 342
    :cond_24
    const-string v8, "\n"

    invoke-interface {p1, v3, v8}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 346
    :cond_29
    :goto_29
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->getAlignment()I

    move-result v8

    sub-int/2addr v8, v4

    xor-int/lit8 v9, v8, -0x1

    add-int/2addr v8, v5

    and-int/2addr v8, v9

    if-eq v5, v8, :cond_3a

    .line 350
    sub-int v5, v8, v5

    invoke-interface {p1, v5}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeZeroes(I)V

    move v5, v8

    .line 354
    :cond_3a
    invoke-virtual {v7, v1, p1}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->writeTo(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V

    .line 355
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->writeSize()I

    move-result v7

    add-int/2addr v5, v7

    goto :goto_12

    .line 358
    :cond_43
    iget p1, p0, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->writeSize:I

    if-ne v5, p1, :cond_48

    return-void

    .line 359
    :cond_48
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "output size mismatch"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_51

    :goto_50
    throw p1

    :goto_51
    goto :goto_50
.end method

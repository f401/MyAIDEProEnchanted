.class public final Lcom/s1243808733/android/dx/dex/file/MapItem;
.super Lcom/s1243808733/android/dx/dex/file/OffsettedItem;
.source "MapItem.java"


# static fields
.field private static final ALIGNMENT:I = 0x4

.field private static final WRITE_SIZE:I = 0xc


# instance fields
.field private final firstItem:Lcom/s1243808733/android/dx/dex/file/Item;

.field private final itemCount:I

.field private final lastItem:Lcom/s1243808733/android/dx/dex/file/Item;

.field private final section:Lcom/s1243808733/android/dx/dex/file/Section;

.field private final type:Lcom/s1243808733/android/dx/dex/file/ItemType;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/dex/file/ItemType;Lcom/s1243808733/android/dx/dex/file/Section;Lcom/s1243808733/android/dx/dex/file/Item;Lcom/s1243808733/android/dx/dex/file/Item;I)V
    .registers 8

    .line 125
    const/4 v0, 0x4

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;-><init>(II)V

    .line 127
    if-nez p1, :cond_0

    .line 128
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_0
    if-nez p2, :cond_1

    .line 132
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "section == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_1
    if-nez p3, :cond_2

    .line 136
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "firstItem == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_2
    if-nez p4, :cond_3

    .line 140
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "lastItem == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_3
    if-gtz p5, :cond_4

    .line 144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "itemCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_4
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/MapItem;->type:Lcom/s1243808733/android/dx/dex/file/ItemType;

    .line 148
    iput-object p2, p0, Lcom/s1243808733/android/dx/dex/file/MapItem;->section:Lcom/s1243808733/android/dx/dex/file/Section;

    .line 149
    iput-object p3, p0, Lcom/s1243808733/android/dx/dex/file/MapItem;->firstItem:Lcom/s1243808733/android/dx/dex/file/Item;

    .line 150
    iput-object p4, p0, Lcom/s1243808733/android/dx/dex/file/MapItem;->lastItem:Lcom/s1243808733/android/dx/dex/file/Item;

    .line 151
    iput p5, p0, Lcom/s1243808733/android/dx/dex/file/MapItem;->itemCount:I

    return-void
.end method

.method constructor <init>(Lcom/s1243808733/android/dx/dex/file/Section;)V
    .registers 5

    const/4 v1, 0x0

    .line 161
    const/4 v0, 0x4

    const/16 v2, 0xc

    invoke-direct {p0, v0, v2}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;-><init>(II)V

    .line 163
    if-nez p1, :cond_0

    .line 164
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "section == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_0
    sget-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_MAP_LIST:Lcom/s1243808733/android/dx/dex/file/ItemType;

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/MapItem;->type:Lcom/s1243808733/android/dx/dex/file/ItemType;

    .line 168
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/MapItem;->section:Lcom/s1243808733/android/dx/dex/file/Section;

    move-object v0, v1

    .line 169
    check-cast v0, Lcom/s1243808733/android/dx/dex/file/Item;

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/MapItem;->firstItem:Lcom/s1243808733/android/dx/dex/file/Item;

    .line 170
    check-cast v1, Lcom/s1243808733/android/dx/dex/file/Item;

    iput-object v1, p0, Lcom/s1243808733/android/dx/dex/file/MapItem;->lastItem:Lcom/s1243808733/android/dx/dex/file/Item;

    .line 171
    const/4 v0, 0x1

    iput v0, p0, Lcom/s1243808733/android/dx/dex/file/MapItem;->itemCount:I

    return-void
.end method

.method public static addMap([Lcom/s1243808733/android/dx/dex/file/Section;Lcom/s1243808733/android/dx/dex/file/MixedItemSection;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/s1243808733/android/dx/dex/file/Section;",
            "Lcom/s1243808733/android/dx/dex/file/MixedItemSection;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 68
    if-nez p0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sections == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->items()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mapSection.items().size() != 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_1
    new-instance v11, Ljava/util/ArrayList;

    const/16 v0, 0x32

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v8, v9

    .line 106
    :goto_0
    array-length v0, p0

    if-lt v8, v0, :cond_2

    .line 110
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/UniformListItem;

    sget-object v1, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_MAP_LIST:Lcom/s1243808733/android/dx/dex/file/ItemType;

    invoke-direct {v0, v1, v11}, Lcom/s1243808733/android/dx/dex/file/UniformListItem;-><init>(Lcom/s1243808733/android/dx/dex/file/ItemType;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->add(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)V

    return-void

    .line 79
    :cond_2
    aget-object v2, p0, v8

    move-object v0, v6

    .line 80
    check-cast v0, Lcom/s1243808733/android/dx/dex/file/ItemType;

    move-object v3, v6

    .line 81
    check-cast v3, Lcom/s1243808733/android/dx/dex/file/Item;

    move-object v4, v6

    .line 82
    check-cast v4, Lcom/s1243808733/android/dx/dex/file/Item;

    .line 85
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/dex/file/Section;->items()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v1, v0

    move v5, v9

    .line 97
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 100
    if-eqz v5, :cond_7

    .line 102
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/MapItem;

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/dex/file/MapItem;-><init>(Lcom/s1243808733/android/dx/dex/file/ItemType;Lcom/s1243808733/android/dx/dex/file/Section;Lcom/s1243808733/android/dx/dex/file/Item;Lcom/s1243808733/android/dx/dex/file/Item;I)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_3
    :goto_2
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    .line 85
    :cond_4
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/s1243808733/android/dx/dex/file/Item;

    .line 86
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/dex/file/Item;->itemType()Lcom/s1243808733/android/dx/dex/file/ItemType;

    move-result-object v10

    .line 87
    if-eq v10, v1, :cond_6

    .line 88
    if-eqz v5, :cond_5

    .line 89
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/MapItem;

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/dex/file/MapItem;-><init>(Lcom/s1243808733/android/dx/dex/file/ItemType;Lcom/s1243808733/android/dx/dex/file/Section;Lcom/s1243808733/android/dx/dex/file/Item;Lcom/s1243808733/android/dx/dex/file/Item;I)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    move-object v1, v10

    move-object v3, v7

    move v5, v9

    .line 97
    :cond_6
    add-int/lit8 v5, v5, 0x1

    move-object v4, v7

    goto :goto_1

    .line 104
    :cond_7
    if-ne v2, p1, :cond_3

    .line 106
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/MapItem;

    invoke-direct {v0, p1}, Lcom/s1243808733/android/dx/dex/file/MapItem;-><init>(Lcom/s1243808733/android/dx/dex/file/Section;)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method


# virtual methods
.method public addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/dex/file/DexFile;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public itemType()Lcom/s1243808733/android/dx/dex/file/ItemType;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 177
    sget-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_MAP_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    return-object v0
.end method

.method public final toHuman()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 204
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/MapItem;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 185
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/MapItem;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/MapItem;->section:Lcom/s1243808733/android/dx/dex/file/Section;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/file/Section;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 189
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/MapItem;->type:Lcom/s1243808733/android/dx/dex/file/ItemType;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/file/ItemType;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected writeTo0(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/dex/file/DexFile;",
            "Lcom/s1243808733/android/dx/util/AnnotatedOutput;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 210
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/MapItem;->type:Lcom/s1243808733/android/dx/dex/file/ItemType;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/ItemType;->getMapValue()I

    move-result v1

    .line 211
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/MapItem;->firstItem:Lcom/s1243808733/android/dx/dex/file/Item;

    if-nez v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/MapItem;->section:Lcom/s1243808733/android/dx/dex/file/Section;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/Section;->getFileOffset()I

    move-result v0

    .line 219
    :goto_0
    invoke-interface {p2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/MapItem;->offsetString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/s1243808733/android/dx/dex/file/MapItem;->type:Lcom/s1243808733/android/dx/dex/file/ItemType;

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/dex/file/ItemType;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " map"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v6, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 222
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "  type:   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " // "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/MapItem;->type:Lcom/s1243808733/android/dx/dex/file/ItemType;

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/dex/file/ItemType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v7, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 224
    const-string v2, "  unused: 0"

    invoke-interface {p2, v7, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 225
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "  size:   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/s1243808733/android/dx/dex/file/MapItem;->itemCount:I

    invoke-static {v3}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v8, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 226
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "  offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v8, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 229
    :cond_0
    invoke-interface {p2, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 230
    invoke-interface {p2, v6}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 231
    iget v1, p0, Lcom/s1243808733/android/dx/dex/file/MapItem;->itemCount:I

    invoke-interface {p2, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 232
    invoke-interface {p2, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    return-void

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/MapItem;->section:Lcom/s1243808733/android/dx/dex/file/Section;

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/MapItem;->firstItem:Lcom/s1243808733/android/dx/dex/file/Item;

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/dex/file/Section;->getAbsoluteItemOffset(Lcom/s1243808733/android/dx/dex/file/Item;)I

    move-result v0

    goto/16 :goto_0
.end method

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
.method private constructor <init>(Lcom/s1243808733/android/dx/dex/file/ItemType;Lcom/s1243808733/android/dx/dex/file/Section;Lcom/s1243808733/android/dx/dex/file/Item;Lcom/s1243808733/android/dx/dex/file/Item;I)V
    .registers 8

    .line 125
    const/4 v0, 0x4

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;-><init>(II)V

    if-eqz p1, :cond_3b

    if-eqz p2, :cond_33

    if-eqz p3, :cond_2b

    if-eqz p4, :cond_23

    if-lez p5, :cond_1b

    .line 147
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

    .line 144
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "itemCount <= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 140
    :cond_23
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "lastItem == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 136
    :cond_2b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "firstItem == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 132
    :cond_33
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "section == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 128
    :cond_3b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "type == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Lcom/s1243808733/android/dx/dex/file/Section;)V
    .registers 4

    .line 161
    const/4 v0, 0x4

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;-><init>(II)V

    if-eqz p1, :cond_17

    .line 167
    sget-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_MAP_LIST:Lcom/s1243808733/android/dx/dex/file/ItemType;

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/MapItem;->type:Lcom/s1243808733/android/dx/dex/file/ItemType;

    .line 168
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/MapItem;->section:Lcom/s1243808733/android/dx/dex/file/Section;

    .line 169
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/MapItem;->firstItem:Lcom/s1243808733/android/dx/dex/file/Item;

    .line 170
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/MapItem;->lastItem:Lcom/s1243808733/android/dx/dex/file/Item;

    .line 171
    const/4 p1, 0x1

    iput p1, p0, Lcom/s1243808733/android/dx/dex/file/MapItem;->itemCount:I

    return-void

    .line 164
    :cond_17
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "section == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static addMap([Lcom/s1243808733/android/dx/dex/file/Section;Lcom/s1243808733/android/dx/dex/file/MixedItemSection;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v0, :cond_7e

    .line 72
    invoke-virtual/range {p1 .. p1}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->items()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-nez v2, :cond_76

    .line 77
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 79
    array-length v3, v0

    const/4 v5, 0x0

    :goto_19
    if-ge v5, v3, :cond_6b

    aget-object v12, v0, v5

    .line 85
    invoke-virtual {v12}, Lcom/s1243808733/android/dx/dex/file/Section;->items()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v6, 0x0

    move-object v7, v6

    move-object v9, v7

    move-object v10, v9

    const/4 v11, 0x0

    :goto_2a
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_51

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Lcom/s1243808733/android/dx/dex/file/Item;

    .line 86
    invoke-virtual {v14}, Lcom/s1243808733/android/dx/dex/file/Item;->itemType()Lcom/s1243808733/android/dx/dex/file/ItemType;

    move-result-object v15

    if-eq v15, v7, :cond_4d

    if-eqz v11, :cond_4a

    .line 89
    new-instance v8, Lcom/s1243808733/android/dx/dex/file/MapItem;

    move-object v6, v8

    move-object v4, v8

    move-object v8, v12

    invoke-direct/range {v6 .. v11}, Lcom/s1243808733/android/dx/dex/file/MapItem;-><init>(Lcom/s1243808733/android/dx/dex/file/ItemType;Lcom/s1243808733/android/dx/dex/file/Section;Lcom/s1243808733/android/dx/dex/file/Item;Lcom/s1243808733/android/dx/dex/file/Item;I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4a
    move-object v9, v14

    move-object v7, v15

    const/4 v11, 0x0

    :cond_4d
    add-int/lit8 v11, v11, 0x1

    move-object v10, v14

    goto :goto_2a

    :cond_51
    if-eqz v11, :cond_5e

    .line 102
    new-instance v4, Lcom/s1243808733/android/dx/dex/file/MapItem;

    move-object v6, v4

    move-object v8, v12

    invoke-direct/range {v6 .. v11}, Lcom/s1243808733/android/dx/dex/file/MapItem;-><init>(Lcom/s1243808733/android/dx/dex/file/ItemType;Lcom/s1243808733/android/dx/dex/file/Section;Lcom/s1243808733/android/dx/dex/file/Item;Lcom/s1243808733/android/dx/dex/file/Item;I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_68

    :cond_5e
    if-ne v12, v1, :cond_68

    .line 106
    new-instance v4, Lcom/s1243808733/android/dx/dex/file/MapItem;

    invoke-direct {v4, v1}, Lcom/s1243808733/android/dx/dex/file/MapItem;-><init>(Lcom/s1243808733/android/dx/dex/file/Section;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_68
    :goto_68
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 110
    :cond_6b
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/UniformListItem;

    sget-object v3, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_MAP_LIST:Lcom/s1243808733/android/dx/dex/file/ItemType;

    invoke-direct {v0, v3, v2}, Lcom/s1243808733/android/dx/dex/file/UniformListItem;-><init>(Lcom/s1243808733/android/dx/dex/file/ItemType;Ljava/util/List;)V

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->add(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)V

    return-void

    .line 73
    :cond_76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mapSection.items().size() != 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_7e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sections == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_87

    :goto_86
    throw v0

    :goto_87
    goto :goto_86
.end method


# virtual methods
.method public addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 2

    return-void
.end method

.method public itemType()Lcom/s1243808733/android/dx/dex/file/ItemType;
    .registers 2

    .line 177
    sget-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_MAP_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    return-object v0
.end method

.method public final toHuman()Ljava/lang/String;
    .registers 2

    .line 204
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/MapItem;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 185
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/MapItem;->section:Lcom/s1243808733/android/dx/dex/file/Section;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

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
    .registers 8

    .line 210
    iget-object p1, p0, Lcom/s1243808733/android/dx/dex/file/MapItem;->type:Lcom/s1243808733/android/dx/dex/file/ItemType;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/ItemType;->getMapValue()I

    move-result p1

    .line 213
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/MapItem;->firstItem:Lcom/s1243808733/android/dx/dex/file/Item;

    if-nez v0, :cond_11

    .line 214
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/MapItem;->section:Lcom/s1243808733/android/dx/dex/file/Section;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/Section;->getFileOffset()I

    move-result v0

    goto :goto_17

    .line 216
    :cond_11
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/MapItem;->section:Lcom/s1243808733/android/dx/dex/file/Section;

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/dex/file/Section;->getAbsoluteItemOffset(Lcom/s1243808733/android/dx/dex/file/Item;)I

    move-result v0

    .line 219
    :goto_17
    invoke-interface {p2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9a

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/MapItem;->offsetString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/MapItem;->type:Lcom/s1243808733/android/dx/dex/file/ItemType;

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/dex/file/ItemType;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " map"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "  type:   "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " // "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/MapItem;->type:Lcom/s1243808733/android/dx/dex/file/ItemType;

    .line 223
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/dex/file/ItemType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 222
    const/4 v3, 0x2

    invoke-interface {p2, v3, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 224
    const-string v1, "  unused: 0"

    invoke-interface {p2, v3, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "  size:   "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/s1243808733/android/dx/dex/file/MapItem;->itemCount:I

    invoke-static {v3}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    invoke-interface {p2, v3, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "  offset: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v3, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 229
    :cond_9a
    invoke-interface {p2, p1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 230
    invoke-interface {p2, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 231
    iget p1, p0, Lcom/s1243808733/android/dx/dex/file/MapItem;->itemCount:I

    invoke-interface {p2, p1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 232
    invoke-interface {p2, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    return-void
.end method

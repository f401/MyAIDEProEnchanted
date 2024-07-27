.class public final Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;
.super Lcom/s1243808733/android/dx/dex/file/OffsettedItem;
.source "AnnotationSetItem.java"


# static fields
.field private static final ALIGNMENT:I = 0x4

.field private static final ENTRY_WRITE_SIZE:I = 0x4


# instance fields
.field private final annotations:Lcom/s1243808733/android/dx/rop/annotation/Annotations;

.field private final items:[Lcom/s1243808733/android/dx/dex/file/AnnotationItem;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/annotation/Annotations;Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 8

    .line 51
    const/4 v0, 0x4

    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;->writeSize(Lcom/s1243808733/android/dx/rop/annotation/Annotations;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;-><init>(II)V

    .line 53
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;->annotations:Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    .line 54
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->size()I

    move-result v0

    new-array v0, v0, [Lcom/s1243808733/android/dx/dex/file/AnnotationItem;

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;->items:[Lcom/s1243808733/android/dx/dex/file/AnnotationItem;

    .line 56
    const/4 v1, 0x0

    .line 57
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->getAnnotations()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 59
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 57
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    .line 58
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;->items:[Lcom/s1243808733/android/dx/dex/file/AnnotationItem;

    new-instance v4, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;

    invoke-direct {v4, v0, p2}, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;-><init>(Lcom/s1243808733/android/dx/rop/annotation/Annotation;Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    aput-object v4, v3, v1

    .line 59
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private static writeSize(Lcom/s1243808733/android/dx/rop/annotation/Annotations;)I
    .registers 3

    .line 73
    :try_start_0
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->size()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x4

    return v0

    :catch_0
    move-exception v0

    .line 76
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "list == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/dex/file/DexFile;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 118
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getByteData()Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    move-result-object v2

    .line 119
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;->items:[Lcom/s1243808733/android/dx/dex/file/AnnotationItem;

    array-length v3, v0

    .line 121
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    return-void

    .line 122
    :cond_0
    iget-object v4, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;->items:[Lcom/s1243808733/android/dx/dex/file/AnnotationItem;

    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;->items:[Lcom/s1243808733/android/dx/dex/file/AnnotationItem;

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->intern(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)Lcom/s1243808733/android/dx/dex/file/OffsettedItem;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;

    aput-object v0, v4, v1

    .line 121
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method protected compareTo0(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)I
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 98
    check-cast p1, Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;

    .line 100
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;->annotations:Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    iget-object v1, p1, Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;->annotations:Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->compareTo(Lcom/s1243808733/android/dx/rop/annotation/Annotations;)I

    move-result v0

    return v0
.end method

.method public getAnnotations()Lcom/s1243808733/android/dx/rop/annotation/Annotations;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;->annotations:Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    return-object v0
.end method

.method public hashCode()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;->annotations:Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->hashCode()I

    move-result v0

    return v0
.end method

.method public itemType()Lcom/s1243808733/android/dx/dex/file/ItemType;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 106
    sget-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_ANNOTATION_SET_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    return-object v0
.end method

.method protected place0(Lcom/s1243808733/android/dx/dex/file/Section;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/dex/file/Section;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;->items:[Lcom/s1243808733/android/dx/dex/file/AnnotationItem;

    invoke-static {v0}, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->sortByTypeIdIndex([Lcom/s1243808733/android/dx/dex/file/AnnotationItem;)V

    return-void
.end method

.method public toHuman()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;->annotations:Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->toString()Ljava/lang/String;

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

    const/4 v0, 0x0

    .line 136
    invoke-interface {p2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v1

    .line 137
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;->items:[Lcom/s1243808733/android/dx/dex/file/AnnotationItem;

    array-length v2, v2

    .line 139
    if-eqz v1, :cond_0

    .line 140
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;->offsetString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " annotation set"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v0, v3}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 141
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "  size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v2}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v8, v3}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 144
    :cond_0
    invoke-interface {p2, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 146
    :goto_0
    if-lt v0, v2, :cond_1

    return-void

    .line 147
    :cond_1
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;->items:[Lcom/s1243808733/android/dx/dex/file/AnnotationItem;

    aget-object v3, v3, v0

    .line 148
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->getAbsoluteOffset()I

    move-result v3

    .line 150
    if-eqz v1, :cond_2

    .line 151
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "  entries["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-static {v3}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v8, v4}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 153
    iget-object v4, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;->items:[Lcom/s1243808733/android/dx/dex/file/AnnotationItem;

    aget-object v4, v4, v0

    const-string v5, "    "

    invoke-virtual {v4, p2, v5}, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->annotateTo(Lcom/s1243808733/android/dx/util/AnnotatedOutput;Ljava/lang/String;)V

    .line 156
    :cond_2
    invoke-interface {p2, v3}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

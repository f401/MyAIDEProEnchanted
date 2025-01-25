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
    .registers 7

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

    .line 57
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->getAnnotations()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    .line 58
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;->items:[Lcom/s1243808733/android/dx/dex/file/AnnotationItem;

    new-instance v3, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;

    invoke-direct {v3, v1, p2}, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;-><init>(Lcom/s1243808733/android/dx/rop/annotation/Annotation;Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_33
    return-void
.end method

.method private static writeSize(Lcom/s1243808733/android/dx/rop/annotation/Annotations;)I
    .registers 2

    .line 73
    :try_start_0
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->size()I

    move-result p0
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_4} :catch_9

    mul-int/lit8 p0, p0, 0x4

    add-int/lit8 p0, p0, 0x4

    return p0

    .line 76
    :catch_9
    move-exception p0

    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "list == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 6

    .line 118
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getByteData()Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    move-result-object p1

    .line 119
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;->items:[Lcom/s1243808733/android/dx/dex/file/AnnotationItem;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_19

    .line 122
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;->items:[Lcom/s1243808733/android/dx/dex/file/AnnotationItem;

    aget-object v3, v2, v1

    invoke-virtual {p1, v3}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->intern(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)Lcom/s1243808733/android/dx/dex/file/OffsettedItem;

    move-result-object v3

    check-cast v3, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_19
    return-void
.end method

.method protected compareTo0(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)I
    .registers 3

    .line 98
    check-cast p1, Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;

    .line 100
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;->annotations:Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    iget-object p1, p1, Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;->annotations:Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->compareTo(Lcom/s1243808733/android/dx/rop/annotation/Annotations;)I

    move-result p1

    return p1
.end method

.method public getAnnotations()Lcom/s1243808733/android/dx/rop/annotation/Annotations;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;->annotations:Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;->annotations:Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->hashCode()I

    move-result v0

    return v0
.end method

.method public itemType()Lcom/s1243808733/android/dx/dex/file/ItemType;
    .registers 2

    .line 106
    sget-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_ANNOTATION_SET_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    return-object v0
.end method

.method protected place0(Lcom/s1243808733/android/dx/dex/file/Section;I)V
    .registers 3

    .line 130
    iget-object p1, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;->items:[Lcom/s1243808733/android/dx/dex/file/AnnotationItem;

    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->sortByTypeIdIndex([Lcom/s1243808733/android/dx/dex/file/AnnotationItem;)V

    return-void
.end method

.method public toHuman()Ljava/lang/String;
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;->annotations:Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected writeTo0(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .registers 9

    .line 136
    invoke-interface {p2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result p1

    .line 137
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;->items:[Lcom/s1243808733/android/dx/dex/file/AnnotationItem;

    array-length v0, v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz p1, :cond_38

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;->offsetString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " annotation set"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 141
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  size: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v1, v3}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 144
    :cond_38
    invoke-interface {p2, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    :goto_3b
    if-ge v2, v0, :cond_77

    .line 147
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;->items:[Lcom/s1243808733/android/dx/dex/file/AnnotationItem;

    aget-object v3, v3, v2

    .line 148
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->getAbsoluteOffset()I

    move-result v3

    if-eqz p1, :cond_71

    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  entries["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-static {v3}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 151
    invoke-interface {p2, v1, v4}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 153
    iget-object v4, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;->items:[Lcom/s1243808733/android/dx/dex/file/AnnotationItem;

    aget-object v4, v4, v2

    const-string v5, "    "

    invoke-virtual {v4, p2, v5}, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->annotateTo(Lcom/s1243808733/android/dx/util/AnnotatedOutput;Ljava/lang/String;)V

    .line 156
    :cond_71
    invoke-interface {p2, v3}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :cond_77
    return-void
.end method

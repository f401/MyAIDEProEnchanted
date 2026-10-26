.class public final Lcom/s1243808733/android/dx/dex/file/FieldAnnotationStruct;
.super Ljava/lang/Object;
.source "FieldAnnotationStruct.java"

# interfaces
.implements Lcom/s1243808733/android/dx/util/ToHuman;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/s1243808733/android/dx/util/ToHuman;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/s1243808733/android/dx/dex/file/FieldAnnotationStruct;",
        ">;"
    }
.end annotation


# instance fields
.field private annotations:Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;

.field private final field:Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 52
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/FieldAnnotationStruct;->field:Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    .line 53
    iput-object p2, p0, Lcom/s1243808733/android/dx/dex/file/FieldAnnotationStruct;->annotations:Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;

    return-void

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "annotations == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .locals 3

    .line 80
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getFieldIds()Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;

    move-result-object v0

    .line 81
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getWordData()Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    move-result-object v1

    .line 83
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/FieldAnnotationStruct;->field:Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;->intern(Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;)Lcom/s1243808733/android/dx/dex/file/FieldIdItem;

    .line 84
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/FieldAnnotationStruct;->annotations:Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->intern(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)Lcom/s1243808733/android/dx/dex/file/OffsettedItem;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/FieldAnnotationStruct;->annotations:Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;

    return-void
.end method

.method public compareTo(Lcom/s1243808733/android/dx/dex/file/FieldAnnotationStruct;)I
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/FieldAnnotationStruct;->field:Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    iget-object v1, p1, Lcom/s1243808733/android/dx/dex/file/FieldAnnotationStruct;->field:Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;->compareTo(Lcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 28
    check-cast p1, Lcom/s1243808733/android/dx/dex/file/FieldAnnotationStruct;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/file/FieldAnnotationStruct;->compareTo(Lcom/s1243808733/android/dx/dex/file/FieldAnnotationStruct;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 65
    instance-of v0, p1, Lcom/s1243808733/android/dx/dex/file/FieldAnnotationStruct;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 69
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/FieldAnnotationStruct;->field:Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    check-cast p1, Lcom/s1243808733/android/dx/dex/file/FieldAnnotationStruct;

    iget-object v1, p1, Lcom/s1243808733/android/dx/dex/file/FieldAnnotationStruct;->field:Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAnnotations()Lcom/s1243808733/android/dx/rop/annotation/Annotations;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/FieldAnnotationStruct;->annotations:Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;->getAnnotations()Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v0

    return-object v0
.end method

.method public getField()Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/FieldAnnotationStruct;->field:Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/FieldAnnotationStruct;->field:Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;->hashCode()I

    move-result v0

    return v0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/FieldAnnotationStruct;->field:Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/FieldAnnotationStruct;->annotations:Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .locals 5

    const/4 v4, 0x4

    .line 89
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getFieldIds()Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/FieldAnnotationStruct;->field:Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;)I

    move-result v0

    .line 90
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/FieldAnnotationStruct;->annotations:Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;->getAbsoluteOffset()I

    move-result v1

    .line 92
    invoke-interface {p2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/FieldAnnotationStruct;->field:Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;->toHuman()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v3, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "      field_idx:       "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v4, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "      annotations_off: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-interface {p2, v4, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 99
    :cond_0
    invoke-interface {p2, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 100
    invoke-interface {p2, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    return-void
.end method

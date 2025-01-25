.class public final Lcom/s1243808733/android/dx/dex/file/MethodAnnotationStruct;
.super Ljava/lang/Object;
.source "MethodAnnotationStruct.java"

# interfaces
.implements Lcom/s1243808733/android/dx/util/ToHuman;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/s1243808733/android/dx/util/ToHuman;",
        "Ljava/lang/Comparable<",
        "Lcom/s1243808733/android/dx/dex/file/MethodAnnotationStruct;",
        ">;"
    }
.end annotation


# instance fields
.field private annotations:Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;

.field private final method:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;)V
    .registers 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_14

    if-eqz p2, :cond_c

    .line 52
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/MethodAnnotationStruct;->method:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    .line 53
    iput-object p2, p0, Lcom/s1243808733/android/dx/dex/file/MethodAnnotationStruct;->annotations:Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;

    return-void

    .line 49
    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "annotations == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_14
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "method == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 4

    .line 80
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getMethodIds()Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;

    move-result-object v0

    .line 81
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getWordData()Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    move-result-object p1

    .line 83
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/MethodAnnotationStruct;->method:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;->intern(Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;)Lcom/s1243808733/android/dx/dex/file/MethodIdItem;

    .line 84
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/MethodAnnotationStruct;->annotations:Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->intern(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)Lcom/s1243808733/android/dx/dex/file/OffsettedItem;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;

    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/MethodAnnotationStruct;->annotations:Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;

    return-void
.end method

.method public compareTo(Lcom/s1243808733/android/dx/dex/file/MethodAnnotationStruct;)I
    .registers 3

    .line 75
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/MethodAnnotationStruct;->method:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    iget-object p1, p1, Lcom/s1243808733/android/dx/dex/file/MethodAnnotationStruct;->method:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->compareTo(Lcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 28
    check-cast p1, Lcom/s1243808733/android/dx/dex/file/MethodAnnotationStruct;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/file/MethodAnnotationStruct;->compareTo(Lcom/s1243808733/android/dx/dex/file/MethodAnnotationStruct;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 65
    instance-of v0, p1, Lcom/s1243808733/android/dx/dex/file/MethodAnnotationStruct;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 69
    :cond_6
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/MethodAnnotationStruct;->method:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    check-cast p1, Lcom/s1243808733/android/dx/dex/file/MethodAnnotationStruct;

    iget-object p1, p1, Lcom/s1243808733/android/dx/dex/file/MethodAnnotationStruct;->method:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAnnotations()Lcom/s1243808733/android/dx/rop/annotation/Annotations;
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/MethodAnnotationStruct;->annotations:Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;->getAnnotations()Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/MethodAnnotationStruct;->method:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/MethodAnnotationStruct;->method:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->hashCode()I

    move-result v0

    return v0
.end method

.method public toHuman()Ljava/lang/String;
    .registers 3

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/MethodAnnotationStruct;->method:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/MethodAnnotationStruct;->annotations:Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .registers 7

    .line 89
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getMethodIds()Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;

    move-result-object p1

    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/MethodAnnotationStruct;->method:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;)I

    move-result p1

    .line 90
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/MethodAnnotationStruct;->annotations:Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;->getAbsoluteOffset()I

    move-result v0

    .line 92
    invoke-interface {p2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/MethodAnnotationStruct;->method:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "      method_idx:      "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {p2, v2, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "      annotations_off: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-interface {p2, v2, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 99
    :cond_59
    invoke-interface {p2, p1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 100
    invoke-interface {p2, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    return-void
.end method

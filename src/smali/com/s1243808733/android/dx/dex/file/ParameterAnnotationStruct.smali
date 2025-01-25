.class public final Lcom/s1243808733/android/dx/dex/file/ParameterAnnotationStruct;
.super Ljava/lang/Object;
.source "ParameterAnnotationStruct.java"

# interfaces
.implements Lcom/s1243808733/android/dx/util/ToHuman;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/s1243808733/android/dx/util/ToHuman;",
        "Ljava/lang/Comparable<",
        "Lcom/s1243808733/android/dx/dex/file/ParameterAnnotationStruct;",
        ">;"
    }
.end annotation


# instance fields
.field private final annotationsItem:Lcom/s1243808733/android/dx/dex/file/UniformListItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/s1243808733/android/dx/dex/file/UniformListItem<",
            "Lcom/s1243808733/android/dx/dex/file/AnnotationSetRefItem;",
            ">;"
        }
    .end annotation
.end field

.field private final annotationsList:Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;

.field private final method:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 8

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3d

    if-eqz p2, :cond_35

    .line 58
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/ParameterAnnotationStruct;->method:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    .line 59
    iput-object p2, p0, Lcom/s1243808733/android/dx/dex/file/ParameterAnnotationStruct;->annotationsList:Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;

    .line 66
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;->size()I

    move-result p1

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_15
    if-ge v1, p1, :cond_2b

    .line 71
    invoke-virtual {p2, v1}, Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;->get(I)Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v2

    .line 72
    new-instance v3, Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;

    invoke-direct {v3, v2, p3}, Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;-><init>(Lcom/s1243808733/android/dx/rop/annotation/Annotations;Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    .line 73
    new-instance v2, Lcom/s1243808733/android/dx/dex/file/AnnotationSetRefItem;

    invoke-direct {v2, v3}, Lcom/s1243808733/android/dx/dex/file/AnnotationSetRefItem;-><init>(Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 76
    :cond_2b
    new-instance p1, Lcom/s1243808733/android/dx/dex/file/UniformListItem;

    sget-object p2, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_ANNOTATION_SET_REF_LIST:Lcom/s1243808733/android/dx/dex/file/ItemType;

    invoke-direct {p1, p2, v0}, Lcom/s1243808733/android/dx/dex/file/UniformListItem;-><init>(Lcom/s1243808733/android/dx/dex/file/ItemType;Ljava/util/List;)V

    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/ParameterAnnotationStruct;->annotationsItem:Lcom/s1243808733/android/dx/dex/file/UniformListItem;

    return-void

    .line 55
    :cond_35
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "annotationsList == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_3d
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "method == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_46

    :goto_45
    throw p1

    :goto_46
    goto :goto_45
.end method


# virtual methods
.method public addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 4

    .line 104
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getMethodIds()Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;

    move-result-object v0

    .line 105
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getWordData()Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    move-result-object p1

    .line 107
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ParameterAnnotationStruct;->method:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;->intern(Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;)Lcom/s1243808733/android/dx/dex/file/MethodIdItem;

    .line 108
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ParameterAnnotationStruct;->annotationsItem:Lcom/s1243808733/android/dx/dex/file/UniformListItem;

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->add(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)V

    return-void
.end method

.method public compareTo(Lcom/s1243808733/android/dx/dex/file/ParameterAnnotationStruct;)I
    .registers 3

    .line 99
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ParameterAnnotationStruct;->method:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    iget-object p1, p1, Lcom/s1243808733/android/dx/dex/file/ParameterAnnotationStruct;->method:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->compareTo(Lcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 30
    check-cast p1, Lcom/s1243808733/android/dx/dex/file/ParameterAnnotationStruct;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/file/ParameterAnnotationStruct;->compareTo(Lcom/s1243808733/android/dx/dex/file/ParameterAnnotationStruct;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 89
    instance-of v0, p1, Lcom/s1243808733/android/dx/dex/file/ParameterAnnotationStruct;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 93
    :cond_6
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ParameterAnnotationStruct;->method:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    check-cast p1, Lcom/s1243808733/android/dx/dex/file/ParameterAnnotationStruct;

    iget-object p1, p1, Lcom/s1243808733/android/dx/dex/file/ParameterAnnotationStruct;->method:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAnnotationsList()Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;
    .registers 2

    .line 163
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ParameterAnnotationStruct;->annotationsList:Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;

    return-object v0
.end method

.method public getMethod()Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ParameterAnnotationStruct;->method:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ParameterAnnotationStruct;->method:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->hashCode()I

    move-result v0

    return v0
.end method

.method public toHuman()Ljava/lang/String;
    .registers 6

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ParameterAnnotationStruct;->method:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ParameterAnnotationStruct;->annotationsItem:Lcom/s1243808733/android/dx/dex/file/UniformListItem;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/file/UniformListItem;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/s1243808733/android/dx/dex/file/AnnotationSetRefItem;

    if-eqz v2, :cond_2e

    const/4 v2, 0x0

    goto :goto_33

    .line 140
    :cond_2e
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    :goto_33
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/dex/file/AnnotationSetRefItem;->toHuman()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e

    .line 145
    :cond_3b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .registers 7

    .line 113
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getMethodIds()Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;

    move-result-object p1

    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ParameterAnnotationStruct;->method:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;)I

    move-result p1

    .line 114
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ParameterAnnotationStruct;->annotationsItem:Lcom/s1243808733/android/dx/dex/file/UniformListItem;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/UniformListItem;->getAbsoluteOffset()I

    move-result v0

    .line 116
    invoke-interface {p2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/ParameterAnnotationStruct;->method:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 118
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

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "      annotations_off: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-interface {p2, v2, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 123
    :cond_59
    invoke-interface {p2, p1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 124
    invoke-interface {p2, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    return-void
.end method

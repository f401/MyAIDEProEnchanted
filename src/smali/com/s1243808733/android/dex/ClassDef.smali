.class public final Lcom/s1243808733/android/dex/ClassDef;
.super Ljava/lang/Object;
.source "ClassDef.java"


# static fields
.field public static final NO_INDEX:I = -0x1


# instance fields
.field private final accessFlags:I

.field private final annotationsOffset:I

.field private final buffer:Lcom/s1243808733/android/dex/Dex;

.field private final classDataOffset:I

.field private final interfacesOffset:I

.field private final offset:I

.field private final sourceFileIndex:I

.field private final staticValuesOffset:I

.field private final supertypeIndex:I

.field private final typeIndex:I


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dex/Dex;IIIIIIIII)V
    .registers 11

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/s1243808733/android/dex/ClassDef;->buffer:Lcom/s1243808733/android/dex/Dex;

    .line 39
    iput p2, p0, Lcom/s1243808733/android/dex/ClassDef;->offset:I

    .line 40
    iput p3, p0, Lcom/s1243808733/android/dex/ClassDef;->typeIndex:I

    .line 41
    iput p4, p0, Lcom/s1243808733/android/dex/ClassDef;->accessFlags:I

    .line 42
    iput p5, p0, Lcom/s1243808733/android/dex/ClassDef;->supertypeIndex:I

    .line 43
    iput p6, p0, Lcom/s1243808733/android/dex/ClassDef;->interfacesOffset:I

    .line 44
    iput p7, p0, Lcom/s1243808733/android/dex/ClassDef;->sourceFileIndex:I

    .line 45
    iput p8, p0, Lcom/s1243808733/android/dex/ClassDef;->annotationsOffset:I

    .line 46
    iput p9, p0, Lcom/s1243808733/android/dex/ClassDef;->classDataOffset:I

    .line 47
    iput p10, p0, Lcom/s1243808733/android/dex/ClassDef;->staticValuesOffset:I

    return-void
.end method


# virtual methods
.method public getAccessFlags()I
    .registers 2

    .line 71
    iget v0, p0, Lcom/s1243808733/android/dex/ClassDef;->accessFlags:I

    return v0
.end method

.method public getAnnotationsOffset()I
    .registers 2

    .line 79
    iget v0, p0, Lcom/s1243808733/android/dex/ClassDef;->annotationsOffset:I

    return v0
.end method

.method public getClassDataOffset()I
    .registers 2

    .line 83
    iget v0, p0, Lcom/s1243808733/android/dex/ClassDef;->classDataOffset:I

    return v0
.end method

.method public getInterfaces()[S
    .registers 3

    .line 67
    iget-object v0, p0, Lcom/s1243808733/android/dex/ClassDef;->buffer:Lcom/s1243808733/android/dex/Dex;

    iget v1, p0, Lcom/s1243808733/android/dex/ClassDef;->interfacesOffset:I

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dex/Dex;->readTypeList(I)Lcom/s1243808733/android/dex/TypeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/TypeList;->getTypes()[S

    move-result-object v0

    return-object v0
.end method

.method public getInterfacesOffset()I
    .registers 2

    .line 63
    iget v0, p0, Lcom/s1243808733/android/dex/ClassDef;->interfacesOffset:I

    return v0
.end method

.method public getOffset()I
    .registers 2

    .line 51
    iget v0, p0, Lcom/s1243808733/android/dex/ClassDef;->offset:I

    return v0
.end method

.method public getSourceFileIndex()I
    .registers 2

    .line 75
    iget v0, p0, Lcom/s1243808733/android/dex/ClassDef;->sourceFileIndex:I

    return v0
.end method

.method public getStaticValuesOffset()I
    .registers 2

    .line 87
    iget v0, p0, Lcom/s1243808733/android/dex/ClassDef;->staticValuesOffset:I

    return v0
.end method

.method public getSupertypeIndex()I
    .registers 2

    .line 59
    iget v0, p0, Lcom/s1243808733/android/dex/ClassDef;->supertypeIndex:I

    return v0
.end method

.method public getTypeIndex()I
    .registers 2

    .line 55
    iget v0, p0, Lcom/s1243808733/android/dex/ClassDef;->typeIndex:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 92
    iget-object v0, p0, Lcom/s1243808733/android/dex/ClassDef;->buffer:Lcom/s1243808733/android/dex/Dex;

    if-nez v0, :cond_1d

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/s1243808733/android/dex/ClassDef;->typeIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/s1243808733/android/dex/ClassDef;->supertypeIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 96
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    iget-object v1, p0, Lcom/s1243808733/android/dex/ClassDef;->buffer:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v1}, Lcom/s1243808733/android/dex/Dex;->typeNames()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/s1243808733/android/dex/ClassDef;->typeIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget v1, p0, Lcom/s1243808733/android/dex/ClassDef;->supertypeIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4e

    .line 99
    const-string v1, " extends "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/s1243808733/android/dex/ClassDef;->buffer:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v1}, Lcom/s1243808733/android/dex/Dex;->typeNames()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/s1243808733/android/dex/ClassDef;->supertypeIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    :cond_4e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

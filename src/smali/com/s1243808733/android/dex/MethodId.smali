.class public final Lcom/s1243808733/android/dex/MethodId;
.super Ljava/lang/Object;
.source "MethodId.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/s1243808733/android/dex/MethodId;",
        ">;"
    }
.end annotation


# instance fields
.field private final declaringClassIndex:I

.field private final dex:Lcom/s1243808733/android/dex/Dex;

.field private final nameIndex:I

.field private final protoIndex:I


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dex/Dex;III)V
    .registers 5

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/s1243808733/android/dex/MethodId;->dex:Lcom/s1243808733/android/dex/Dex;

    .line 29
    iput p2, p0, Lcom/s1243808733/android/dex/MethodId;->declaringClassIndex:I

    .line 30
    iput p3, p0, Lcom/s1243808733/android/dex/MethodId;->protoIndex:I

    .line 31
    iput p4, p0, Lcom/s1243808733/android/dex/MethodId;->nameIndex:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/s1243808733/android/dex/MethodId;)I
    .registers 4

    .line 48
    iget v0, p0, Lcom/s1243808733/android/dex/MethodId;->declaringClassIndex:I

    iget v1, p1, Lcom/s1243808733/android/dex/MethodId;->declaringClassIndex:I

    if-eq v0, v1, :cond_b

    .line 49
    invoke-static {v0, v1}, Lcom/s1243808733/android/dex/util/Unsigned;->compare(II)I

    move-result p1

    return p1

    .line 51
    :cond_b
    iget v0, p0, Lcom/s1243808733/android/dex/MethodId;->nameIndex:I

    iget v1, p1, Lcom/s1243808733/android/dex/MethodId;->nameIndex:I

    if-eq v0, v1, :cond_16

    .line 52
    invoke-static {v0, v1}, Lcom/s1243808733/android/dex/util/Unsigned;->compare(II)I

    move-result p1

    return p1

    .line 54
    :cond_16
    iget v0, p0, Lcom/s1243808733/android/dex/MethodId;->protoIndex:I

    iget p1, p1, Lcom/s1243808733/android/dex/MethodId;->protoIndex:I

    invoke-static {v0, p1}, Lcom/s1243808733/android/dex/util/Unsigned;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 21
    check-cast p1, Lcom/s1243808733/android/dex/MethodId;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dex/MethodId;->compareTo(Lcom/s1243808733/android/dex/MethodId;)I

    move-result p1

    return p1
.end method

.method public getDeclaringClassIndex()I
    .registers 2

    .line 35
    iget v0, p0, Lcom/s1243808733/android/dex/MethodId;->declaringClassIndex:I

    return v0
.end method

.method public getNameIndex()I
    .registers 2

    .line 43
    iget v0, p0, Lcom/s1243808733/android/dex/MethodId;->nameIndex:I

    return v0
.end method

.method public getProtoIndex()I
    .registers 2

    .line 39
    iget v0, p0, Lcom/s1243808733/android/dex/MethodId;->protoIndex:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 65
    iget-object v0, p0, Lcom/s1243808733/android/dex/MethodId;->dex:Lcom/s1243808733/android/dex/Dex;

    if-nez v0, :cond_25

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/s1243808733/android/dex/MethodId;->declaringClassIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/s1243808733/android/dex/MethodId;->protoIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/s1243808733/android/dex/MethodId;->nameIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 68
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/s1243808733/android/dex/MethodId;->dex:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v1}, Lcom/s1243808733/android/dex/Dex;->typeNames()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/s1243808733/android/dex/MethodId;->declaringClassIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/s1243808733/android/dex/MethodId;->dex:Lcom/s1243808733/android/dex/Dex;

    .line 69
    invoke-virtual {v1}, Lcom/s1243808733/android/dex/Dex;->strings()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/s1243808733/android/dex/MethodId;->nameIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/s1243808733/android/dex/MethodId;->dex:Lcom/s1243808733/android/dex/Dex;

    .line 70
    invoke-virtual {v1}, Lcom/s1243808733/android/dex/Dex;->protoIds()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/s1243808733/android/dex/MethodId;->protoIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dex/ProtoId;

    invoke-virtual {v2}, Lcom/s1243808733/android/dex/ProtoId;->getParametersOffset()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dex/Dex;->readTypeList(I)Lcom/s1243808733/android/dex/TypeList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/s1243808733/android/dex/Dex$Section;)V
    .registers 3

    .line 58
    iget v0, p0, Lcom/s1243808733/android/dex/MethodId;->declaringClassIndex:I

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeUnsignedShort(I)V

    .line 59
    iget v0, p0, Lcom/s1243808733/android/dex/MethodId;->protoIndex:I

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeUnsignedShort(I)V

    .line 60
    iget v0, p0, Lcom/s1243808733/android/dex/MethodId;->nameIndex:I

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    return-void
.end method

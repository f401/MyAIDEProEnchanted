.class public final Lcom/s1243808733/android/dex/MethodId;
.super Ljava/lang/Object;
.source "MethodId.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
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
    .locals 0

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
    .locals 2

    .line 48
    iget v0, p0, Lcom/s1243808733/android/dex/MethodId;->declaringClassIndex:I

    iget v1, p1, Lcom/s1243808733/android/dex/MethodId;->declaringClassIndex:I

    if-eq v0, v1, :cond_0

    .line 49
    invoke-static {v0, v1}, Lcom/s1243808733/android/dex/util/Unsigned;->compare(II)I

    move-result v0

    .line 54
    :goto_0
    return v0

    .line 51
    :cond_0
    iget v0, p0, Lcom/s1243808733/android/dex/MethodId;->nameIndex:I

    iget v1, p1, Lcom/s1243808733/android/dex/MethodId;->nameIndex:I

    if-eq v0, v1, :cond_1

    .line 52
    invoke-static {v0, v1}, Lcom/s1243808733/android/dex/util/Unsigned;->compare(II)I

    move-result v0

    goto :goto_0

    .line 54
    :cond_1
    iget v0, p0, Lcom/s1243808733/android/dex/MethodId;->protoIndex:I

    iget v1, p1, Lcom/s1243808733/android/dex/MethodId;->protoIndex:I

    invoke-static {v0, v1}, Lcom/s1243808733/android/dex/util/Unsigned;->compare(II)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 21
    check-cast p1, Lcom/s1243808733/android/dex/MethodId;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dex/MethodId;->compareTo(Lcom/s1243808733/android/dex/MethodId;)I

    move-result v0

    return v0
.end method

.method public getDeclaringClassIndex()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/s1243808733/android/dex/MethodId;->declaringClassIndex:I

    return v0
.end method

.method public getNameIndex()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/s1243808733/android/dex/MethodId;->nameIndex:I

    return v0
.end method

.method public getProtoIndex()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/s1243808733/android/dex/MethodId;->protoIndex:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/s1243808733/android/dex/MethodId;->dex:Lcom/s1243808733/android/dex/Dex;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/s1243808733/android/dex/MethodId;->declaringClassIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/s1243808733/android/dex/MethodId;->protoIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/s1243808733/android/dex/MethodId;->nameIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    .line 68
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/s1243808733/android/dex/MethodId;->dex:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex;->typeNames()Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/s1243808733/android/dex/MethodId;->declaringClassIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/s1243808733/android/dex/MethodId;->dex:Lcom/s1243808733/android/dex/Dex;

    .line 69
    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex;->strings()Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/s1243808733/android/dex/MethodId;->nameIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/s1243808733/android/dex/MethodId;->dex:Lcom/s1243808733/android/dex/Dex;

    .line 70
    invoke-virtual {v2}, Lcom/s1243808733/android/dex/Dex;->protoIds()Ljava/util/List;

    move-result-object v0

    iget v3, p0, Lcom/s1243808733/android/dex/MethodId;->protoIndex:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dex/ProtoId;

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/ProtoId;->getParametersOffset()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dex/Dex;->readTypeList(I)Lcom/s1243808733/android/dex/TypeList;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeTo(Lcom/s1243808733/android/dex/Dex$Section;)V
    .locals 1

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

.class public final Lcom/s1243808733/android/dex/ProtoId;
.super Ljava/lang/Object;
.source "ProtoId.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/s1243808733/android/dex/ProtoId;",
        ">;"
    }
.end annotation


# instance fields
.field private final dex:Lcom/s1243808733/android/dex/Dex;

.field private final parametersOffset:I

.field private final returnTypeIndex:I

.field private final shortyIndex:I


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dex/Dex;III)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/s1243808733/android/dex/ProtoId;->dex:Lcom/s1243808733/android/dex/Dex;

    .line 29
    iput p2, p0, Lcom/s1243808733/android/dex/ProtoId;->shortyIndex:I

    .line 30
    iput p3, p0, Lcom/s1243808733/android/dex/ProtoId;->returnTypeIndex:I

    .line 31
    iput p4, p0, Lcom/s1243808733/android/dex/ProtoId;->parametersOffset:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/s1243808733/android/dex/ProtoId;)I
    .locals 2

    .line 36
    iget v0, p0, Lcom/s1243808733/android/dex/ProtoId;->returnTypeIndex:I

    iget v1, p1, Lcom/s1243808733/android/dex/ProtoId;->returnTypeIndex:I

    if-eq v0, v1, :cond_0

    .line 37
    invoke-static {v0, v1}, Lcom/s1243808733/android/dex/util/Unsigned;->compare(II)I

    move-result v0

    .line 39
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/s1243808733/android/dex/ProtoId;->parametersOffset:I

    iget v1, p1, Lcom/s1243808733/android/dex/ProtoId;->parametersOffset:I

    invoke-static {v0, v1}, Lcom/s1243808733/android/dex/util/Unsigned;->compare(II)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 21
    check-cast p1, Lcom/s1243808733/android/dex/ProtoId;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dex/ProtoId;->compareTo(Lcom/s1243808733/android/dex/ProtoId;)I

    move-result v0

    return v0
.end method

.method public getParametersOffset()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/s1243808733/android/dex/ProtoId;->parametersOffset:I

    return v0
.end method

.method public getReturnTypeIndex()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/s1243808733/android/dex/ProtoId;->returnTypeIndex:I

    return v0
.end method

.method public getShortyIndex()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/s1243808733/android/dex/ProtoId;->shortyIndex:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/s1243808733/android/dex/ProtoId;->dex:Lcom/s1243808733/android/dex/Dex;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/s1243808733/android/dex/ProtoId;->shortyIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/s1243808733/android/dex/ProtoId;->returnTypeIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/s1243808733/android/dex/ProtoId;->parametersOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    :goto_0
    return-object v0

    .line 66
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/s1243808733/android/dex/ProtoId;->dex:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex;->strings()Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/s1243808733/android/dex/ProtoId;->shortyIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/s1243808733/android/dex/ProtoId;->dex:Lcom/s1243808733/android/dex/Dex;

    .line 67
    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex;->typeNames()Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/s1243808733/android/dex/ProtoId;->returnTypeIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/s1243808733/android/dex/ProtoId;->dex:Lcom/s1243808733/android/dex/Dex;

    iget v2, p0, Lcom/s1243808733/android/dex/ProtoId;->parametersOffset:I

    .line 68
    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dex/Dex;->readTypeList(I)Lcom/s1243808733/android/dex/TypeList;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeTo(Lcom/s1243808733/android/dex/Dex$Section;)V
    .locals 1

    .line 55
    iget v0, p0, Lcom/s1243808733/android/dex/ProtoId;->shortyIndex:I

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 56
    iget v0, p0, Lcom/s1243808733/android/dex/ProtoId;->returnTypeIndex:I

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 57
    iget v0, p0, Lcom/s1243808733/android/dex/ProtoId;->parametersOffset:I

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    return-void
.end method

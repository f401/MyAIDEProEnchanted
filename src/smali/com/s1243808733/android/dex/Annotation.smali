.class public final Lcom/s1243808733/android/dex/Annotation;
.super Ljava/lang/Object;
.source "Annotation.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/s1243808733/android/dex/Annotation;",
        ">;"
    }
.end annotation


# instance fields
.field private final dex:Lcom/s1243808733/android/dex/Dex;

.field private final encodedAnnotation:Lcom/s1243808733/android/dex/EncodedValue;

.field private final visibility:B


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dex/Dex;BLcom/s1243808733/android/dex/EncodedValue;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/s1243808733/android/dex/Annotation;->dex:Lcom/s1243808733/android/dex/Dex;

    .line 31
    iput-byte p2, p0, Lcom/s1243808733/android/dex/Annotation;->visibility:B

    .line 32
    iput-object p3, p0, Lcom/s1243808733/android/dex/Annotation;->encodedAnnotation:Lcom/s1243808733/android/dex/EncodedValue;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/s1243808733/android/dex/Annotation;)I
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/s1243808733/android/dex/Annotation;->encodedAnnotation:Lcom/s1243808733/android/dex/EncodedValue;

    iget-object v1, p1, Lcom/s1243808733/android/dex/Annotation;->encodedAnnotation:Lcom/s1243808733/android/dex/EncodedValue;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dex/EncodedValue;->compareTo(Lcom/s1243808733/android/dex/EncodedValue;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 24
    check-cast p1, Lcom/s1243808733/android/dex/Annotation;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dex/Annotation;->compareTo(Lcom/s1243808733/android/dex/Annotation;)I

    move-result v0

    return v0
.end method

.method public getReader()Lcom/s1243808733/android/dex/EncodedValueReader;
    .locals 3

    .line 40
    new-instance v0, Lcom/s1243808733/android/dex/EncodedValueReader;

    iget-object v1, p0, Lcom/s1243808733/android/dex/Annotation;->encodedAnnotation:Lcom/s1243808733/android/dex/EncodedValue;

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dex/EncodedValueReader;-><init>(Lcom/s1243808733/android/dex/EncodedValue;I)V

    return-object v0
.end method

.method public getTypeIndex()I
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Annotation;->getReader()Lcom/s1243808733/android/dex/EncodedValueReader;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/s1243808733/android/dex/EncodedValueReader;->readAnnotation()I

    .line 46
    invoke-virtual {v0}, Lcom/s1243808733/android/dex/EncodedValueReader;->getAnnotationType()I

    move-result v0

    return v0
.end method

.method public getVisibility()B
    .locals 1

    .line 36
    iget-byte v0, p0, Lcom/s1243808733/android/dex/Annotation;->visibility:B

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/s1243808733/android/dex/Annotation;->dex:Lcom/s1243808733/android/dex/Dex;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-byte v1, p0, Lcom/s1243808733/android/dex/Annotation;->visibility:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Annotation;->getTypeIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-byte v0, p0, Lcom/s1243808733/android/dex/Annotation;->visibility:B

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/s1243808733/android/dex/Annotation;->dex:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex;->typeNames()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Annotation;->getTypeIndex()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeTo(Lcom/s1243808733/android/dex/Dex$Section;)V
    .locals 1

    .line 50
    iget-byte v0, p0, Lcom/s1243808733/android/dex/Annotation;->visibility:B

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeByte(I)V

    .line 51
    iget-object v0, p0, Lcom/s1243808733/android/dex/Annotation;->encodedAnnotation:Lcom/s1243808733/android/dex/EncodedValue;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dex/EncodedValue;->writeTo(Lcom/s1243808733/android/dex/Dex$Section;)V

    return-void
.end method

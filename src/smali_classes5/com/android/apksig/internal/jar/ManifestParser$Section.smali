.class public Lcom/android/apksig/internal/jar/ManifestParser$Section;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/internal/jar/ManifestParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Section"
.end annotation


# instance fields
.field private final mAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/internal/jar/ManifestParser$Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private final mSizeBytes:I

.field private final mStartOffset:I


# direct methods
.method public constructor <init>(IILjava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/internal/jar/ManifestParser$Attribute;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/apksig/internal/jar/ManifestParser$Section;->mStartOffset:I

    iput p2, p0, Lcom/android/apksig/internal/jar/ManifestParser$Section;->mSizeBytes:I

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/jar/ManifestParser$Attribute;

    const-string v1, "Name"

    invoke-virtual {v0}, Lcom/android/apksig/internal/jar/ManifestParser$Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-virtual {v0}, Lcom/android/apksig/internal/jar/ManifestParser$Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_24
    iput-object v0, p0, Lcom/android/apksig/internal/jar/ManifestParser$Section;->mName:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apksig/internal/jar/ManifestParser$Section;->mAttributes:Ljava/util/List;

    return-void

    :cond_32
    const/4 v0, 0x0

    goto :goto_24
.end method


# virtual methods
.method public getAttributeValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/android/apksig/internal/jar/ManifestParser$Section;->mAttributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/jar/ManifestParser$Attribute;

    invoke-virtual {v0}, Lcom/android/apksig/internal/jar/ManifestParser$Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lcom/android/apksig/internal/jar/ManifestParser$Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_20
    return-object v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public getAttributeValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Ljava/util/jar/Attributes$Name;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/apksig/internal/jar/ManifestParser$Section;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/internal/jar/ManifestParser$Attribute;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/apksig/internal/jar/ManifestParser$Section;->mAttributes:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/apksig/internal/jar/ManifestParser$Section;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSizeBytes()I
    .registers 2

    iget v0, p0, Lcom/android/apksig/internal/jar/ManifestParser$Section;->mSizeBytes:I

    return v0
.end method

.method public getStartOffset()I
    .registers 2

    iget v0, p0, Lcom/android/apksig/internal/jar/ManifestParser$Section;->mStartOffset:I

    return v0
.end method

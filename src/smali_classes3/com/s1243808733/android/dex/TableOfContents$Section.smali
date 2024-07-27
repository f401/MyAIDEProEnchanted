.class public Lcom/s1243808733/android/dex/TableOfContents$Section;
.super Ljava/lang/Object;
.source "TableOfContents.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dex/TableOfContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Section"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/s1243808733/android/dex/TableOfContents$Section;",
        ">;"
    }
.end annotation


# instance fields
.field public byteCount:I

.field public off:I

.field public size:I

.field public final type:S


# direct methods
.method public constructor <init>(I)V
    .registers 4

    const/4 v1, 0x0

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    iput v1, p0, Lcom/s1243808733/android/dex/TableOfContents$Section;->byteCount:I

    .line 226
    int-to-short v0, p1

    iput-short v0, p0, Lcom/s1243808733/android/dex/TableOfContents$Section;->type:S

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/s1243808733/android/dex/TableOfContents$Section;)I
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 235
    iget v0, p0, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    iget v1, p1, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    if-eq v0, v1, :cond_1

    .line 236
    iget v0, p0, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    iget v1, p1, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    .line 238
    :goto_0
    return v0

    .line 236
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 238
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/s1243808733/android/dex/TableOfContents$Section;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dex/TableOfContents$Section;->compareTo(Lcom/s1243808733/android/dex/TableOfContents$Section;)I

    move-result v0

    return v0
.end method

.method public exists()Z
    .registers 2

    .line 230
    iget v0, p0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 243
    const-string v0, "Section[type=%#x,off=%#x,size=%#x]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Short;

    iget-short v4, p0, Lcom/s1243808733/android/dex/TableOfContents$Section;->type:S

    invoke-direct {v3, v4}, Ljava/lang/Short;-><init>(S)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    iget v4, p0, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Integer;

    iget v4, p0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

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
    .locals 2

    const/4 v1, 0x0

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput v1, p0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    .line 222
    const/4 v0, -0x1

    iput v0, p0, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    .line 223
    iput v1, p0, Lcom/s1243808733/android/dex/TableOfContents$Section;->byteCount:I

    int-to-short v0, p1

    .line 226
    iput-short v0, p0, Lcom/s1243808733/android/dex/TableOfContents$Section;->type:S

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/s1243808733/android/dex/TableOfContents$Section;)I
    .locals 2

    .line 235
    iget v0, p0, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    iget v1, p1, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    if-eq v0, v1, :cond_1

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 219
    check-cast p1, Lcom/s1243808733/android/dex/TableOfContents$Section;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dex/TableOfContents$Section;->compareTo(Lcom/s1243808733/android/dex/TableOfContents$Section;)I

    move-result v0

    return v0
.end method

.method public exists()Z
    .locals 1

    .line 230
    iget v0, p0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 243
    const-string v0, "Section[type=%#x,off=%#x,size=%#x]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-short v3, p0, Lcom/s1243808733/android/dex/TableOfContents$Section;->type:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

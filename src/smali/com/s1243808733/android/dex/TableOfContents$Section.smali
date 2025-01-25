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
        "Ljava/lang/Comparable<",
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

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    const/4 v0, 0x0

    iput v0, p0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    .line 222
    const/4 v1, -0x1

    iput v1, p0, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    .line 223
    iput v0, p0, Lcom/s1243808733/android/dex/TableOfContents$Section;->byteCount:I

    int-to-short p1, p1

    .line 226
    iput-short p1, p0, Lcom/s1243808733/android/dex/TableOfContents$Section;->type:S

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/s1243808733/android/dex/TableOfContents$Section;)I
    .registers 3

    .line 235
    iget v0, p0, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    iget p1, p1, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    if-eq v0, p1, :cond_c

    if-ge v0, p1, :cond_a

    const/4 p1, -0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x1

    :goto_b
    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 219
    check-cast p1, Lcom/s1243808733/android/dex/TableOfContents$Section;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dex/TableOfContents$Section;->compareTo(Lcom/s1243808733/android/dex/TableOfContents$Section;)I

    move-result p1

    return p1
.end method

.method public exists()Z
    .registers 2

    .line 230
    iget v0, p0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 243
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-short v1, p0, Lcom/s1243808733/android/dex/TableOfContents$Section;->type:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Section[type=%#x,off=%#x,size=%#x]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

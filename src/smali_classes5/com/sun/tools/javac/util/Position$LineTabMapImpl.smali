.class public Lcom/sun/tools/javac/util/Position$LineTabMapImpl;
.super Lcom/sun/tools/javac/util/Position$LineMapImpl;
.source "Position.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/util/Position;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LineTabMapImpl"
.end annotation


# instance fields
.field private tabMap:Ljava/util/BitSet;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 248
    invoke-direct {p0}, Lcom/sun/tools/javac/util/Position$LineMapImpl;-><init>()V

    .line 249
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, p1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/sun/tools/javac/util/Position$LineTabMapImpl;->tabMap:Ljava/util/BitSet;

    .line 250
    return-void
.end method


# virtual methods
.method public getColumnNumber(I)I
    .registers 5

    .line 257
    iget-object v0, p0, Lcom/sun/tools/javac/util/Position$LineTabMapImpl;->startPosition:[I

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/util/Position$LineTabMapImpl;->getLineNumber(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    .line 258
    const/4 v2, 0x0

    move v1, v0

    .line 259
    :goto_c
    if-ge v1, p1, :cond_23

    .line 260
    iget-object v0, p0, Lcom/sun/tools/javac/util/Position$LineTabMapImpl;->tabMap:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 261
    div-int/lit8 v0, v2, 0x8

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x8

    .line 259
    :goto_1c
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_c

    .line 263
    :cond_20
    add-int/lit8 v0, v2, 0x1

    goto :goto_1c

    .line 265
    :cond_23
    add-int/lit8 v0, v2, 0x1

    return v0
.end method

.method public bridge synthetic getColumnNumber(J)J
    .registers 6

    .line 244
    invoke-super {p0, p1, p2}, Lcom/sun/tools/javac/util/Position$LineMapImpl;->getColumnNumber(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getLineNumber(I)I
    .registers 3

    .line 244
    invoke-super {p0, p1}, Lcom/sun/tools/javac/util/Position$LineMapImpl;->getLineNumber(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getLineNumber(J)J
    .registers 6

    .line 244
    invoke-super {p0, p1, p2}, Lcom/sun/tools/javac/util/Position$LineMapImpl;->getLineNumber(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPosition(II)I
    .registers 6

    .line 269
    iget-object v0, p0, Lcom/sun/tools/javac/util/Position$LineTabMapImpl;->startPosition:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    .line 270
    const/4 v1, 0x0

    .line 272
    :goto_7
    add-int/lit8 v2, p2, -0x1

    if-ge v1, v2, :cond_1f

    .line 273
    add-int/lit8 v0, v0, 0x1

    .line 274
    iget-object v2, p0, Lcom/sun/tools/javac/util/Position$LineTabMapImpl;->tabMap:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 275
    div-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x8

    goto :goto_7

    .line 277
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 279
    :cond_1f
    return v0
.end method

.method public bridge synthetic getPosition(JJ)J
    .registers 8

    .line 244
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sun/tools/javac/util/Position$LineMapImpl;->getPosition(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getStartPosition(I)I
    .registers 3

    .line 244
    invoke-super {p0, p1}, Lcom/sun/tools/javac/util/Position$LineMapImpl;->getStartPosition(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getStartPosition(J)J
    .registers 6

    .line 244
    invoke-super {p0, p1, p2}, Lcom/sun/tools/javac/util/Position$LineMapImpl;->getStartPosition(J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected setTabPosition(I)V
    .registers 3

    .line 253
    iget-object v0, p0, Lcom/sun/tools/javac/util/Position$LineTabMapImpl;->tabMap:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    .line 254
    return-void
.end method

.class public Lcom/myopicmobile/textwarrior/common/TextBufferCache;
.super Ljava/lang/Object;


# static fields
.field private static final CACHE_SIZE:I = 0x4


# instance fields
.field private _cache:[Lcom/myopicmobile/textwarrior/common/Pair;


# direct methods
.method public constructor <init>()V
    .registers 6

    const/4 v4, 0x4

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v4, [Lcom/myopicmobile/textwarrior/common/Pair;

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/common/TextBufferCache;->_cache:[Lcom/myopicmobile/textwarrior/common/Pair;

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/TextBufferCache;->_cache:[Lcom/myopicmobile/textwarrior/common/Pair;

    new-instance v1, Lcom/myopicmobile/textwarrior/common/Pair;

    invoke-direct {v1, v2, v2}, Lcom/myopicmobile/textwarrior/common/Pair;-><init>(II)V

    aput-object v1, v0, v2

    const/4 v0, 0x1

    :goto_0
    if-lt v0, v4, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/myopicmobile/textwarrior/common/TextBufferCache;->_cache:[Lcom/myopicmobile/textwarrior/common/Pair;

    new-instance v2, Lcom/myopicmobile/textwarrior/common/Pair;

    invoke-direct {v2, v3, v3}, Lcom/myopicmobile/textwarrior/common/Pair;-><init>(II)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private insertEntry(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/myopicmobile/textwarrior/common/TextBufferCache;->makeHead(I)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/TextBufferCache;->_cache:[Lcom/myopicmobile/textwarrior/common/Pair;

    const/4 v1, 0x1

    new-instance v2, Lcom/myopicmobile/textwarrior/common/Pair;

    invoke-direct {v2, p1, p2}, Lcom/myopicmobile/textwarrior/common/Pair;-><init>(II)V

    aput-object v2, v0, v1

    return-void
.end method

.method private makeHead(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    const/4 v4, 0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/TextBufferCache;->_cache:[Lcom/myopicmobile/textwarrior/common/Pair;

    aget-object v0, v0, p1

    :goto_1
    if-gt p1, v4, :cond_1

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/common/TextBufferCache;->_cache:[Lcom/myopicmobile/textwarrior/common/Pair;

    aput-object v0, v1, v4

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/myopicmobile/textwarrior/common/TextBufferCache;->_cache:[Lcom/myopicmobile/textwarrior/common/Pair;

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/common/TextBufferCache;->_cache:[Lcom/myopicmobile/textwarrior/common/Pair;

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    aput-object v2, v1, p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_1
.end method

.method private replaceEntry(II)Z
    .registers 6

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    iget-object v2, p0, Lcom/myopicmobile/textwarrior/common/TextBufferCache;->_cache:[Lcom/myopicmobile/textwarrior/common/Pair;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/myopicmobile/textwarrior/common/Pair;->getFirst()I

    move-result v2

    if-ne v2, p1, :cond_1

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/common/TextBufferCache;->_cache:[Lcom/myopicmobile/textwarrior/common/Pair;

    aget-object v1, v2, v1

    invoke-virtual {v1, p2}, Lcom/myopicmobile/textwarrior/common/Pair;->setSecond(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getNearestCharOffset(I)Lcom/myopicmobile/textwarrior/common/Pair;
    .registers 6

    const/4 v2, 0x0

    const v3, 0x7fffffff

    move v0, v2

    move v1, v2

    :goto_0
    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/common/TextBufferCache;->_cache:[Lcom/myopicmobile/textwarrior/common/Pair;

    aget-object v1, v1, v0

    invoke-direct {p0, v0}, Lcom/myopicmobile/textwarrior/common/TextBufferCache;->makeHead(I)V

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/myopicmobile/textwarrior/common/TextBufferCache;->_cache:[Lcom/myopicmobile/textwarrior/common/Pair;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/myopicmobile/textwarrior/common/Pair;->getSecond()I

    move-result v2

    sub-int v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v3, :cond_1

    move v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public getNearestLine(I)Lcom/myopicmobile/textwarrior/common/Pair;
    .registers 6

    const/4 v2, 0x0

    const v3, 0x7fffffff

    move v0, v2

    move v1, v2

    :goto_0
    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/common/TextBufferCache;->_cache:[Lcom/myopicmobile/textwarrior/common/Pair;

    aget-object v1, v1, v0

    invoke-direct {p0, v0}, Lcom/myopicmobile/textwarrior/common/TextBufferCache;->makeHead(I)V

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/myopicmobile/textwarrior/common/TextBufferCache;->_cache:[Lcom/myopicmobile/textwarrior/common/Pair;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/myopicmobile/textwarrior/common/Pair;->getFirst()I

    move-result v2

    sub-int v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v3, :cond_1

    move v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method protected final invalidateCache(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    const/4 v3, -0x1

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/myopicmobile/textwarrior/common/TextBufferCache;->_cache:[Lcom/myopicmobile/textwarrior/common/Pair;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/myopicmobile/textwarrior/common/Pair;->getSecond()I

    move-result v1

    if-lt v1, p1, :cond_1

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/common/TextBufferCache;->_cache:[Lcom/myopicmobile/textwarrior/common/Pair;

    new-instance v2, Lcom/myopicmobile/textwarrior/common/Pair;

    invoke-direct {v2, v3, v3}, Lcom/myopicmobile/textwarrior/common/Pair;-><init>(II)V

    aput-object v2, v1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public updateEntry(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    if-gtz p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/myopicmobile/textwarrior/common/TextBufferCache;->replaceEntry(II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/myopicmobile/textwarrior/common/TextBufferCache;->insertEntry(II)V

    goto :goto_0
.end method

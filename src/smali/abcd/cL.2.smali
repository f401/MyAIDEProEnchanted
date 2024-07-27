.class public Labcd/cL;
.super Ljava/io/InputStream;


# static fields
.field private static final j6:Ljava/io/InputStream;


# instance fields
.field private final DW:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/bL;

    invoke-direct {v0}, Labcd/bL;-><init>()V

    sput-object v0, Labcd/cL;->j6:Ljava/io/InputStream;

    return-void
.end method

.method public varargs constructor <init>([Ljava/io/InputStream;)V
    .registers 5

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Labcd/cL;->DW:Ljava/util/LinkedList;

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Labcd/cL;->j6(Ljava/io/InputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private DW()V
    .registers 2

    iget-object v0, p0, Labcd/cL;->DW:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/cL;->DW:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void
.end method

.method private j6()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Labcd/cL;->DW:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Labcd/cL;->j6:Ljava/io/InputStream;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Labcd/cL;->DW:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    goto :goto_0
.end method


# virtual methods
.method public available()I
    .registers 2

    invoke-direct {p0}, Labcd/cL;->j6()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .registers 4

    iget-object v0, p0, Labcd/cL;->DW:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez v1, :cond_0

    return-void

    :cond_0
    throw v1

    :cond_1
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public j6(Ljava/io/InputStream;)V
    .registers 3

    iget-object v0, p0, Labcd/cL;->DW:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public read()I
    .registers 3

    :goto_0
    invoke-direct {p0}, Labcd/cL;->j6()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    :goto_1
    return v0

    :cond_0
    sget-object v0, Labcd/cL;->j6:Ljava/io/InputStream;

    if-ne v1, v0, :cond_1

    const/4 v0, -0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Labcd/cL;->DW()V

    goto :goto_0
.end method

.method public read([BII)I
    .registers 7

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-gtz p3, :cond_2

    :cond_1
    :goto_1
    return v0

    :cond_2
    invoke-direct {p0}, Labcd/cL;->j6()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_3

    add-int/2addr v0, v2

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    goto :goto_0

    :cond_3
    sget-object v2, Labcd/cL;->j6:Ljava/io/InputStream;

    if-ne v1, v2, :cond_4

    if-gtz v0, :cond_1

    const/4 v0, -0x1

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Labcd/cL;->DW()V

    if-lez v0, :cond_0

    goto :goto_1
.end method

.method public skip(J)J
    .registers 14

    const-wide/16 v8, 0x1

    const-wide/16 v2, 0x0

    move-wide v0, v2

    :cond_0
    :goto_0
    cmp-long v4, v2, p1

    if-ltz v4, :cond_2

    :cond_1
    :goto_1
    return-wide v0

    :cond_2
    invoke-direct {p0}, Labcd/cL;->j6()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v6

    cmp-long v5, v2, v6

    if-gez v5, :cond_3

    add-long/2addr v0, v6

    sub-long/2addr p1, v6

    goto :goto_0

    :cond_3
    sget-object v5, Labcd/cL;->j6:Ljava/io/InputStream;

    if-eq v4, v5, :cond_1

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    if-gez v4, :cond_4

    invoke-direct {p0}, Labcd/cL;->DW()V

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    goto :goto_1

    :cond_4
    add-long/2addr v0, v8

    sub-long/2addr p1, v8

    goto :goto_0
.end method

.class public Labcd/cL;
.super Ljava/io/InputStream;


# static fields
.field private static final j6:Ljava/io/InputStream;


# instance fields
.field private final DW:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
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

    array-length v0, p1

    const/4 v1, 0x0

    :goto_c
    if-lt v1, v0, :cond_f

    return-void

    :cond_f
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Labcd/cL;->j6(Ljava/io/InputStream;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c
.end method

.method private DW()V
    .registers 2

    iget-object v0, p0, Labcd/cL;->DW:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Labcd/cL;->DW:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_13
    return-void
.end method

.method private j6()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Labcd/cL;->DW:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Labcd/cL;->j6:Ljava/io/InputStream;

    goto :goto_13

    :cond_b
    iget-object v0, p0, Labcd/cL;->DW:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    :goto_13
    return-object v0
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

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_11

    if-nez v1, :cond_10

    return-void

    :cond_10
    throw v1

    :cond_11
    :try_start_11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1a} :catch_1b

    goto :goto_1c

    :catch_1b
    move-exception v1

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_7
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

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ltz v1, :cond_b

    return v1

    :cond_b
    sget-object v1, Labcd/cL;->j6:Ljava/io/InputStream;

    if-ne v0, v1, :cond_11

    const/4 v0, -0x1

    return v0

    :cond_11
    invoke-direct {p0}, Labcd/cL;->DW()V

    goto :goto_0
.end method

.method public read([BII)I
    .registers 7

    const/4 v0, 0x0

    :cond_1
    :goto_1
    if-gtz p3, :cond_4

    goto :goto_20

    :cond_4
    invoke-direct {p0}, Labcd/cL;->j6()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_12

    add-int/2addr v0, v2

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    goto :goto_1

    :cond_12
    sget-object v2, Labcd/cL;->j6:Ljava/io/InputStream;

    if-ne v1, v2, :cond_1b

    if-lez v0, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v0, -0x1

    :goto_1a
    return v0

    :cond_1b
    invoke-direct {p0}, Labcd/cL;->DW()V

    if-lez v0, :cond_1

    :goto_20
    return v0
.end method

.method public skip(J)J
    .registers 11

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :cond_3
    :goto_3
    cmp-long v4, v0, p1

    if-ltz v4, :cond_8

    goto :goto_29

    :cond_8
    invoke-direct {p0}, Labcd/cL;->j6()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v5

    cmp-long v7, v0, v5

    if-gez v7, :cond_17

    add-long/2addr v2, v5

    sub-long/2addr p1, v5

    goto :goto_3

    :cond_17
    sget-object v5, Labcd/cL;->j6:Ljava/io/InputStream;

    if-ne v4, v5, :cond_1c

    return-wide v2

    :cond_1c
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    if-gez v4, :cond_2a

    invoke-direct {p0}, Labcd/cL;->DW()V

    cmp-long v4, v0, v2

    if-gez v4, :cond_3

    :goto_29
    return-wide v2

    :cond_2a
    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sub-long/2addr p1, v4

    goto :goto_3
.end method

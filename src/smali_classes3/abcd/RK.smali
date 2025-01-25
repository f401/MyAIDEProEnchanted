.class public abstract Labcd/RK;
.super Ljava/io/OutputStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/RK$a;,
        Labcd/RK$b;,
        Labcd/RK$c;,
        Labcd/RK$d;
    }
.end annotation


# instance fields
.field private DW:I

.field private FH:Ljava/io/OutputStream;

.field private j6:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Labcd/RK$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput p1, p0, Labcd/RK;->DW:I

    invoke-virtual {p0}, Labcd/RK;->v5()V

    return-void
.end method

.method private VH()J
    .registers 6

    invoke-direct {p0}, Labcd/RK;->gn()Labcd/RK$a;

    move-result-object v0

    iget-object v1, p0, Labcd/RK;->j6:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x2000

    mul-long v1, v1, v3

    iget v0, v0, Labcd/RK$a;->DW:I

    int-to-long v3, v0

    add-long/2addr v1, v3

    return-wide v1
.end method

.method private gn()Labcd/RK$a;
    .registers 3

    iget-object v0, p0, Labcd/RK;->j6:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/RK$a;

    return-object v0
.end method

.method static synthetic j6(Labcd/RK;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Labcd/RK;->j6:Ljava/util/ArrayList;

    return-object p0
.end method

.method private tp()V
    .registers 7

    invoke-virtual {p0}, Labcd/RK;->Hw()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Labcd/RK;->FH:Ljava/io/OutputStream;

    iget-object v0, p0, Labcd/RK;->j6:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/RK$a;

    iget-object v1, p0, Labcd/RK;->j6:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_37

    const/4 v1, 0x0

    iput-object v1, p0, Labcd/RK;->j6:Ljava/util/ArrayList;

    new-instance v1, Labcd/XK;

    iget-object v2, p0, Labcd/RK;->FH:Ljava/io/OutputStream;

    const/16 v4, 0x2000

    invoke-direct {v1, v2, v4}, Labcd/XK;-><init>(Ljava/io/OutputStream;I)V

    iput-object v1, p0, Labcd/RK;->FH:Ljava/io/OutputStream;

    iget-object v2, v0, Labcd/RK$a;->j6:[B

    iget v0, v0, Labcd/RK$a;->DW:I

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    return-void

    :cond_37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/RK$a;

    iget-object v4, p0, Labcd/RK;->FH:Ljava/io/OutputStream;

    iget-object v5, v2, Labcd/RK$a;->j6:[B

    iget v2, v2, Labcd/RK$a;->DW:I

    invoke-virtual {v4, v5, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1a
.end method

.method private u7()Z
    .registers 6

    invoke-direct {p0}, Labcd/RK;->VH()J

    move-result-wide v0

    iget v2, p0, Labcd/RK;->DW:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_d

    const/4 v0, 0x0

    return v0

    :cond_d
    invoke-direct {p0}, Labcd/RK;->tp()V

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public DW()J
    .registers 3

    invoke-direct {p0}, Labcd/RK;->VH()J

    move-result-wide v0

    return-wide v0
.end method

.method public FH()Ljava/io/InputStream;
    .registers 2

    new-instance v0, Labcd/RK$b;

    invoke-direct {v0, p0}, Labcd/RK$b;-><init>(Labcd/RK;)V

    return-object v0
.end method

.method protected abstract Hw()Ljava/io/OutputStream;
.end method

.method public Zo()[B
    .registers 8

    invoke-virtual {p0}, Labcd/RK;->DW()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v2, v0

    if-ltz v4, :cond_2e

    long-to-int v1, v0

    new-array v0, v1, [B

    iget-object v1, p0, Labcd/RK;->j6:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1d

    return-object v0

    :cond_1d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/RK$a;

    iget-object v5, v4, Labcd/RK$a;->j6:[B

    iget v6, v4, Labcd/RK$a;->DW:I

    invoke-static {v5, v2, v0, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, v4, Labcd/RK$a;->DW:I

    add-int/2addr v3, v4

    goto :goto_16

    :cond_2e
    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->lengthExceedsMaximumArraySize:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    goto :goto_3b

    :goto_3a
    throw v0

    :goto_3b
    goto :goto_3a
.end method

.method public close()V
    .registers 3

    iget-object v0, p0, Labcd/RK;->FH:Ljava/io/OutputStream;

    if-eqz v0, :cond_f

    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_b

    iput-object v1, p0, Labcd/RK;->FH:Ljava/io/OutputStream;

    goto :goto_f

    :catchall_b
    move-exception v0

    iput-object v1, p0, Labcd/RK;->FH:Ljava/io/OutputStream;

    throw v0

    :cond_f
    :goto_f
    return-void
.end method

.method public j6()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/RK;->j6:Ljava/util/ArrayList;

    iget-object v1, p0, Labcd/RK;->FH:Ljava/io/OutputStream;

    if-eqz v1, :cond_12

    :try_start_7
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_f
    .catchall {:try_start_7 .. :try_end_a} :catchall_b

    goto :goto_10

    :catchall_b
    move-exception v1

    iput-object v0, p0, Labcd/RK;->FH:Ljava/io/OutputStream;

    throw v1

    :catch_f
    move-exception v1

    :goto_10
    iput-object v0, p0, Labcd/RK;->FH:Ljava/io/OutputStream;

    :cond_12
    return-void
.end method

.method public j6(Ljava/io/InputStream;)V
    .registers 6

    iget-object v0, p0, Labcd/RK;->j6:Ljava/util/ArrayList;

    if-eqz v0, :cond_33

    :goto_4
    invoke-direct {p0}, Labcd/RK;->gn()Labcd/RK$a;

    move-result-object v0

    invoke-virtual {v0}, Labcd/RK$a;->j6()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-direct {p0}, Labcd/RK;->u7()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_33

    :cond_15
    new-instance v0, Labcd/RK$a;

    invoke-direct {v0}, Labcd/RK$a;-><init>()V

    iget-object v1, p0, Labcd/RK;->j6:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1f
    iget-object v1, v0, Labcd/RK$a;->j6:[B

    iget v2, v0, Labcd/RK$a;->DW:I

    array-length v3, v1

    sub-int/2addr v3, v2

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2d

    return-void

    :cond_2d
    iget v2, v0, Labcd/RK$a;->DW:I

    add-int/2addr v2, v1

    iput v2, v0, Labcd/RK$a;->DW:I

    goto :goto_4

    :cond_33
    :goto_33
    const/16 v0, 0x2000

    new-array v0, v0, [B

    :goto_37
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-gtz v1, :cond_3e

    return-void

    :cond_3e
    iget-object v2, p0, Labcd/RK;->FH:Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_37
.end method

.method public j6(Ljava/io/OutputStream;Labcd/LE;)V
    .registers 8

    if-nez p2, :cond_4

    sget-object p2, Labcd/vE;->j6:Labcd/vE;

    :cond_4
    iget-object v0, p0, Labcd/RK;->j6:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_11

    return-void

    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/RK$a;

    iget-object v2, v1, Labcd/RK$a;->j6:[B

    const/4 v3, 0x0

    iget v4, v1, Labcd/RK$a;->DW:I

    invoke-virtual {p1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    iget v1, v1, Labcd/RK$a;->DW:I

    div-int/lit16 v1, v1, 0x400

    invoke-interface {p2, v1}, Labcd/LE;->update(I)V

    goto :goto_a
.end method

.method public v5()V
    .registers 4

    iget-object v0, p0, Labcd/RK;->FH:Ljava/io/OutputStream;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Labcd/RK;->j6()V

    :cond_7
    iget v0, p0, Labcd/RK;->DW:I

    const/16 v1, 0x2000

    if-ge v0, v1, :cond_20

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Labcd/RK;->j6:Ljava/util/ArrayList;

    new-instance v1, Labcd/RK$a;

    iget v2, p0, Labcd/RK;->DW:I

    invoke-direct {v1, v2}, Labcd/RK$a;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_30

    :cond_20
    new-instance v2, Ljava/util/ArrayList;

    div-int/2addr v0, v1

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Labcd/RK;->j6:Ljava/util/ArrayList;

    new-instance v0, Labcd/RK$a;

    invoke-direct {v0}, Labcd/RK$a;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_30
    return-void
.end method

.method public write(I)V
    .registers 6

    iget-object v0, p0, Labcd/RK;->FH:Ljava/io/OutputStream;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void

    :cond_8
    invoke-direct {p0}, Labcd/RK;->gn()Labcd/RK$a;

    move-result-object v0

    invoke-virtual {v0}, Labcd/RK$a;->j6()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-direct {p0}, Labcd/RK;->u7()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Labcd/RK;->FH:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void

    :cond_1e
    new-instance v0, Labcd/RK$a;

    invoke-direct {v0}, Labcd/RK$a;-><init>()V

    iget-object v1, p0, Labcd/RK;->j6:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28
    iget-object v1, v0, Labcd/RK$a;->j6:[B

    iget v2, v0, Labcd/RK$a;->DW:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Labcd/RK$a;->DW:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    return-void
.end method

.method public write([BII)V
    .registers 8

    iget-object v0, p0, Labcd/RK;->FH:Ljava/io/OutputStream;

    if-nez v0, :cond_3b

    :goto_4
    if-gtz p3, :cond_7

    goto :goto_3b

    :cond_7
    invoke-direct {p0}, Labcd/RK;->gn()Labcd/RK$a;

    move-result-object v0

    invoke-virtual {v0}, Labcd/RK$a;->j6()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-direct {p0}, Labcd/RK;->u7()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_3b

    :cond_18
    new-instance v0, Labcd/RK$a;

    invoke-direct {v0}, Labcd/RK$a;-><init>()V

    iget-object v1, p0, Labcd/RK;->j6:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_22
    iget-object v1, v0, Labcd/RK$a;->j6:[B

    array-length v1, v1

    iget v2, v0, Labcd/RK$a;->DW:I

    sub-int/2addr v1, v2

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, v0, Labcd/RK$a;->j6:[B

    iget v3, v0, Labcd/RK$a;->DW:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, v0, Labcd/RK$a;->DW:I

    add-int/2addr v2, v1

    iput v2, v0, Labcd/RK$a;->DW:I

    sub-int/2addr p3, v1

    add-int/2addr p2, v1

    goto :goto_4

    :cond_3b
    :goto_3b
    if-lez p3, :cond_42

    iget-object v0, p0, Labcd/RK;->FH:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :cond_42
    return-void
.end method

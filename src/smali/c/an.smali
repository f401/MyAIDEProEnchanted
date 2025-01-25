.class public final Lc/an;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public final a:Lc/x;

.field public b:Z

.field public c:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lc/x;)V
    .registers 3

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/an;->b:Z

    iput-object p1, p0, Lc/an;->a:Lc/x;

    return-void
.end method


# virtual methods
.method public final read()I
    .registers 4

    iget-object v0, p0, Lc/an;->c:Ljava/io/InputStream;

    const/4 v1, -0x1

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lc/an;->b:Z

    if-nez v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Lc/an;->a:Lc/x;

    invoke-virtual {v0}, Lc/x;->d()Lc/e;

    move-result-object v0

    check-cast v0, Lc/p;

    if-nez v0, :cond_15

    return v1

    :cond_15
    const/4 v2, 0x0

    iput-boolean v2, p0, Lc/an;->b:Z

    move-object v2, v0

    move-object v0, p0

    goto :goto_33

    :cond_1b
    move-object v0, p0

    :goto_1c
    iget-object v2, v0, Lc/an;->c:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    if-ltz v2, :cond_25

    return v2

    :cond_25
    iget-object v2, v0, Lc/an;->a:Lc/x;

    invoke-virtual {v2}, Lc/x;->d()Lc/e;

    move-result-object v2

    check-cast v2, Lc/p;

    if-nez v2, :cond_33

    const/4 v2, 0x0

    iput-object v2, v0, Lc/an;->c:Ljava/io/InputStream;

    return v1

    :cond_33
    :goto_33
    invoke-interface {v2}, Lc/p;->h()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, v0, Lc/an;->c:Ljava/io/InputStream;

    goto :goto_1c
.end method

.method public final read([BII)I
    .registers 10

    iget-object v0, p0, Lc/an;->c:Ljava/io/InputStream;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lc/an;->b:Z

    if-nez v0, :cond_b

    return v1

    :cond_b
    iget-object v0, p0, Lc/an;->a:Lc/x;

    invoke-virtual {v0}, Lc/x;->d()Lc/e;

    move-result-object v0

    check-cast v0, Lc/p;

    if-nez v0, :cond_16

    return v1

    :cond_16
    iput-boolean v2, p0, Lc/an;->b:Z

    move-object v3, v0

    move-object v0, p0

    goto :goto_3f

    :cond_1b
    move-object v0, p0

    :cond_1c
    :goto_1c
    iget-object v3, v0, Lc/an;->c:Ljava/io/InputStream;

    add-int v4, p2, v2

    sub-int v5, p3, v2

    invoke-virtual {v3, p1, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-ltz v3, :cond_2c

    add-int/2addr v2, v3

    if-ne v2, p3, :cond_1c

    return v2

    :cond_2c
    iget-object v3, v0, Lc/an;->a:Lc/x;

    invoke-virtual {v3}, Lc/x;->d()Lc/e;

    move-result-object v3

    check-cast v3, Lc/p;

    if-nez v3, :cond_3f

    const/4 p1, 0x0

    iput-object p1, v0, Lc/an;->c:Ljava/io/InputStream;

    const/4 p1, 0x1

    if-ge v2, p1, :cond_3d

    goto :goto_3e

    :cond_3d
    move v1, v2

    :goto_3e
    return v1

    :cond_3f
    :goto_3f
    invoke-interface {v3}, Lc/p;->h()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, v0, Lc/an;->c:Ljava/io/InputStream;

    goto :goto_1c
.end method

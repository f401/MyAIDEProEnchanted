.class public final Lc/bf;
.super Lc/z;
.source "SourceFile"


# static fields
.field public static final o:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lc/bf;->o:[B

    return-void
.end method

.method public constructor <init>(ZILc/e;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lc/z;-><init>(ZILc/e;)V

    return-void
.end method


# virtual methods
.method public final e(Lc/q;)V
    .locals 3

    const/16 v0, 0xa0

    iget-object v1, p0, Lc/z;->h:Lc/e;

    invoke-interface {v1}, Lc/e;->l()Lc/s;

    move-result-object v1

    invoke-virtual {v1}, Lc/s;->i()Lc/s;

    move-result-object v1

    iget-boolean v2, p0, Lc/z;->b:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lc/z;->a:I

    invoke-virtual {p1, v0, v2}, Lc/q;->k(II)V

    invoke-virtual {v1}, Lc/s;->f()I

    move-result v0

    invoke-virtual {p1, v0}, Lc/q;->i(I)V

    invoke-virtual {p1, v1}, Lc/q;->j(Lc/e;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Lc/s;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    iget v2, p0, Lc/z;->a:I

    invoke-virtual {p1, v0, v2}, Lc/q;->k(II)V

    invoke-virtual {p1, v1}, Lc/q;->h(Lc/s;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x80

    goto :goto_1
.end method

.method public final f()I
    .locals 3

    iget-object v0, p0, Lc/z;->h:Lc/e;

    invoke-interface {v0}, Lc/e;->l()Lc/s;

    move-result-object v0

    invoke-virtual {v0}, Lc/s;->i()Lc/s;

    move-result-object v0

    invoke-virtual {v0}, Lc/s;->f()I

    move-result v0

    iget-boolean v1, p0, Lc/z;->b:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lc/z;->a:I

    invoke-static {v1}, Lc/bu;->c(I)I

    move-result v1

    invoke-static {v0}, Lc/bu;->b(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lc/z;->a:I

    invoke-static {v1}, Lc/bu;->c(I)I

    move-result v1

    add-int/lit8 v0, v0, -0x1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lc/z;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lc/z;->h:Lc/e;

    invoke-interface {v0}, Lc/e;->l()Lc/s;

    move-result-object v0

    invoke-virtual {v0}, Lc/s;->i()Lc/s;

    move-result-object v0

    invoke-virtual {v0}, Lc/s;->g()Z

    move-result v0

    goto :goto_0
.end method

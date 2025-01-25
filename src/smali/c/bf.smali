.class public final Lc/bf;
.super Lc/z;
.source "SourceFile"


# static fields
.field public static final o:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lc/bf;->o:[B

    return-void
.end method

.method public constructor <init>(ZILc/e;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lc/z;-><init>(ZILc/e;)V

    return-void
.end method


# virtual methods
.method public final e(Lc/q;)V
    .registers 5

    iget-object v0, p0, Lc/z;->h:Lc/e;

    invoke-interface {v0}, Lc/e;->l()Lc/s;

    move-result-object v0

    invoke-virtual {v0}, Lc/s;->i()Lc/s;

    move-result-object v0

    iget-boolean v1, p0, Lc/z;->b:Z

    const/16 v2, 0xa0

    if-eqz v1, :cond_20

    iget v1, p0, Lc/z;->a:I

    invoke-virtual {p1, v2, v1}, Lc/q;->k(II)V

    invoke-virtual {v0}, Lc/s;->f()I

    move-result v1

    invoke-virtual {p1, v1}, Lc/q;->i(I)V

    invoke-virtual {p1, v0}, Lc/q;->j(Lc/e;)V

    goto :goto_31

    :cond_20
    invoke-virtual {v0}, Lc/s;->g()Z

    move-result v1

    if-eqz v1, :cond_27

    goto :goto_29

    :cond_27
    const/16 v2, 0x80

    :goto_29
    iget v1, p0, Lc/z;->a:I

    invoke-virtual {p1, v2, v1}, Lc/q;->k(II)V

    invoke-virtual {p1, v0}, Lc/q;->h(Lc/s;)V

    :goto_31
    return-void
.end method

.method public final f()I
    .registers 4

    iget-object v0, p0, Lc/z;->h:Lc/e;

    invoke-interface {v0}, Lc/e;->l()Lc/s;

    move-result-object v0

    invoke-virtual {v0}, Lc/s;->i()Lc/s;

    move-result-object v0

    invoke-virtual {v0}, Lc/s;->f()I

    move-result v0

    iget-boolean v1, p0, Lc/z;->b:Z

    if-eqz v1, :cond_1f

    iget v1, p0, Lc/z;->a:I

    invoke-static {v1}, Lc/bu;->c(I)I

    move-result v1

    invoke-static {v0}, Lc/bu;->b(I)I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v2, v0

    return v2

    :cond_1f
    iget v1, p0, Lc/z;->a:I

    invoke-static {v1}, Lc/bu;->c(I)I

    move-result v1

    add-int/lit8 v0, v0, -0x1

    add-int/2addr v1, v0

    return v1
.end method

.method public final g()Z
    .registers 2

    iget-boolean v0, p0, Lc/z;->b:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    iget-object v0, p0, Lc/z;->h:Lc/e;

    invoke-interface {v0}, Lc/e;->l()Lc/s;

    move-result-object v0

    invoke-virtual {v0}, Lc/s;->i()Lc/s;

    move-result-object v0

    invoke-virtual {v0}, Lc/s;->g()Z

    move-result v0

    return v0
.end method

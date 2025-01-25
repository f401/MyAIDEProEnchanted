.class public final Lc/az;
.super Lc/o;
.source "SourceFile"


# direct methods
.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0, p1}, Lc/o;-><init>([B)V

    return-void
.end method


# virtual methods
.method public final e(Lc/q;)V
    .registers 4

    const/4 v0, 0x4

    iget-object v1, p0, Lc/o;->a:[B

    invoke-virtual {p1, v0, v1}, Lc/q;->g(I[B)V

    return-void
.end method

.method public final f()I
    .registers 3

    iget-object v0, p0, Lc/o;->a:[B

    array-length v0, v0

    invoke-static {v0}, Lc/bu;->b(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lc/o;->a:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final g()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

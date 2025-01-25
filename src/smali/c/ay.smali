.class public final Lc/ay;
.super Lc/s;
.source "SourceFile"

# interfaces
.implements Lc/y;


# instance fields
.field public final a:[B


# direct methods
.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Lc/s;-><init>()V

    iput-object p1, p0, Lc/ay;->a:[B

    return-void
.end method


# virtual methods
.method public final d(Lc/s;)Z
    .registers 3

    instance-of v0, p1, Lc/ay;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    check-cast p1, Lc/ay;

    iget-object v0, p0, Lc/ay;->a:[B

    iget-object p1, p1, Lc/ay;->a:[B

    invoke-static {v0, p1}, Lx/a;->a([B[B)Z

    move-result p1

    return p1
.end method

.method public final e(Lc/q;)V
    .registers 4

    const/16 v0, 0x12

    iget-object v1, p0, Lc/ay;->a:[B

    invoke-virtual {p1, v0, v1}, Lc/q;->g(I[B)V

    return-void
.end method

.method public final f()I
    .registers 3

    iget-object v0, p0, Lc/ay;->a:[B

    array-length v0, v0

    invoke-static {v0}, Lc/bu;->b(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lc/ay;->a:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final g()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lc/ay;->a:[B

    invoke-static {v0}, Lx/b;->b([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lc/ay;->a:[B

    invoke-static {v0}, Lx/a;->c([B)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lc/ay;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

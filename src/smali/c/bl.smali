.class public final Lc/bl;
.super Lc/b;
.source "SourceFile"


# direct methods
.method public constructor <init>([BI)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lc/b;-><init>([BI)V

    return-void
.end method


# virtual methods
.method public final e(Lc/q;)V
    .registers 7

    iget-object v0, p0, Lc/b;->b:[B

    array-length v1, v0

    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [B

    .line 1
    iget v3, p0, Lc/b;->c:I

    int-to-byte v3, v3

    .line 2
    const/4 v4, 0x0

    aput-byte v3, v2, v4

    const/4 v3, 0x1

    invoke-static {v0, v4, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lc/q;->g(I[B)V

    return-void
.end method

.method public final f()I
    .registers 3

    iget-object v0, p0, Lc/b;->b:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lc/bu;->b(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lc/b;->b:[B

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final g()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

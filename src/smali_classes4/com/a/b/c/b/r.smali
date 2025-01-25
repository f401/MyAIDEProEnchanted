.class public abstract Lcom/a/b/c/b/r;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Lcom/a/b/e/b/x;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lcom/a/b/e/b/x;->d_()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v1, 0x5

    add-int/lit8 v0, v0, 0x2

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v0, 0x7b

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_13
    if-lt v0, v1, :cond_1f

    const/16 v0, 0x7d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1f
    if-eqz v0, :cond_26

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_26
    invoke-virtual {p0, v0}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/e/b/u;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_13
.end method

.method protected static a(Lcom/a/b/e/c/v;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    instance-of v1, p0, Lcom/a/b/e/c/s;

    if-eqz v1, :cond_1a

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1a
    invoke-virtual {p0}, Lcom/a/b/e/c/v;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/a/b/e/c/v;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15
.end method

.method protected static a(Lcom/a/b/e/c/v;I)Ljava/lang/String;
    .registers 5

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x14

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "#"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of v0, p0, Lcom/a/b/e/c/u;

    if-eqz v0, :cond_21

    check-cast p0, Lcom/a/b/e/c/u;

    invoke-virtual {p0}, Lcom/a/b/e/c/u;->k()J

    move-result-wide v0

    :goto_16
    sparse-switch p1, :sswitch_data_58

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    invoke-virtual {p0}, Lcom/a/b/e/c/v;->j()I

    move-result v0

    int-to-long v0, v0

    goto :goto_16

    :sswitch_27
    long-to-int v0, v0

    invoke-static {v0}, Lcom/a/b/g/k;->f(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_34
    long-to-int v0, v0

    invoke-static {v0}, Lcom/a/b/g/k;->e(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2f

    :sswitch_3d
    long-to-int v0, v0

    invoke-static {v0}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2f

    :sswitch_46
    long-to-int v0, v0

    invoke-static {v0}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2f

    :sswitch_4f
    invoke-static {v0, v1}, Lcom/a/b/g/k;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2f

    nop

    :sswitch_data_58
    .sparse-switch
        0x4 -> :sswitch_27
        0x8 -> :sswitch_34
        0x10 -> :sswitch_3d
        0x20 -> :sswitch_46
        0x40 -> :sswitch_4f
    .end sparse-switch
.end method

.method protected static a(II)S
    .registers 4

    and-int/lit16 v0, p0, 0xff

    if-eq v0, p0, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "low out of range 0..255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    and-int/lit16 v0, p1, 0xff

    if-eq v0, p1, :cond_18

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "high out of range 0..255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    shl-int/lit8 v0, p1, 0x8

    or-int/2addr v0, p0

    int-to-short v0, v0

    return v0
.end method

.method protected static a(IIII)S
    .registers 6

    and-int/lit8 v0, p0, 0xf

    if-eq v0, p0, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n0 out of range 0..15"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    and-int/lit8 v0, p1, 0xf

    if-eq v0, p1, :cond_18

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n1 out of range 0..15"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    and-int/lit8 v0, p2, 0xf

    if-eq v0, p2, :cond_24

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n2 out of range 0..15"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    and-int/lit8 v0, p3, 0xf

    if-eq v0, p3, :cond_30

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n3 out of range 0..15"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    shl-int/lit8 v0, p1, 0x4

    or-int/2addr v0, p0

    shl-int/lit8 v1, p2, 0x8

    or-int/2addr v0, v1

    shl-int/lit8 v1, p3, 0xc

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method protected static a(Lcom/a/b/c/b/l;I)S
    .registers 4

    and-int/lit16 v0, p1, 0xff

    if-eq v0, p1, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "arg out of range 0..255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-virtual {p0}, Lcom/a/b/c/b/l;->j()Lcom/a/b/c/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/c/b/n;->a()I

    move-result v0

    and-int/lit16 v1, v0, 0xff

    if-eq v1, v0, :cond_20

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "opcode out of range 0..255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    shl-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method protected static a(Lcom/a/b/g/a;S)V
    .registers 2

    invoke-interface {p0, p1}, Lcom/a/b/g/a;->c(I)V

    return-void
.end method

.method protected static a(Lcom/a/b/g/a;SI)V
    .registers 5

    int-to-short v0, p2

    shr-int/lit8 v1, p2, 0x10

    int-to-short v1, v1

    invoke-static {p0, p1, v0, v1}, Lcom/a/b/c/b/r;->a(Lcom/a/b/g/a;SSS)V

    return-void
.end method

.method protected static a(Lcom/a/b/g/a;SJ)V
    .registers 10

    long-to-int v0, p2

    int-to-short v2, v0

    const/16 v0, 0x10

    shr-long v0, p2, v0

    long-to-int v0, v0

    int-to-short v3, v0

    const/16 v0, 0x20

    shr-long v0, p2, v0

    long-to-int v0, v0

    int-to-short v4, v0

    const/16 v0, 0x30

    shr-long v0, p2, v0

    long-to-int v0, v0

    int-to-short v5, v0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/a/b/c/b/r;->a(Lcom/a/b/g/a;SSSSS)V

    return-void
.end method

.method protected static a(Lcom/a/b/g/a;SS)V
    .registers 3

    invoke-interface {p0, p1}, Lcom/a/b/g/a;->c(I)V

    invoke-interface {p0, p2}, Lcom/a/b/g/a;->c(I)V

    return-void
.end method

.method protected static a(Lcom/a/b/g/a;SSS)V
    .registers 4

    invoke-interface {p0, p1}, Lcom/a/b/g/a;->c(I)V

    invoke-interface {p0, p2}, Lcom/a/b/g/a;->c(I)V

    invoke-interface {p0, p3}, Lcom/a/b/g/a;->c(I)V

    return-void
.end method

.method protected static a(Lcom/a/b/g/a;SSSS)V
    .registers 5

    invoke-interface {p0, p1}, Lcom/a/b/g/a;->c(I)V

    invoke-interface {p0, p2}, Lcom/a/b/g/a;->c(I)V

    invoke-interface {p0, p3}, Lcom/a/b/g/a;->c(I)V

    invoke-interface {p0, p4}, Lcom/a/b/g/a;->c(I)V

    return-void
.end method

.method protected static a(Lcom/a/b/g/a;SSSSS)V
    .registers 6

    invoke-interface {p0, p1}, Lcom/a/b/g/a;->c(I)V

    invoke-interface {p0, p2}, Lcom/a/b/g/a;->c(I)V

    invoke-interface {p0, p3}, Lcom/a/b/g/a;->c(I)V

    invoke-interface {p0, p4}, Lcom/a/b/g/a;->c(I)V

    invoke-interface {p0, p5}, Lcom/a/b/g/a;->c(I)V

    return-void
.end method

.method protected static a(I)Z
    .registers 2

    const/4 v0, -0x8

    if-lt p0, v0, :cond_8

    const/4 v0, 0x7

    if-gt p0, v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected static b(II)I
    .registers 4

    and-int/lit8 v0, p0, 0xf

    if-eq v0, p0, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "low out of range 0..15"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    and-int/lit8 v0, p1, 0xf

    if-eq v0, p1, :cond_18

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "high out of range 0..15"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    shl-int/lit8 v0, p1, 0x4

    or-int/2addr v0, p0

    return v0
.end method

.method protected static b(Lcom/a/b/e/b/x;)Ljava/lang/String;
    .registers 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/a/b/e/b/x;->d_()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1e

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    packed-switch v0, :pswitch_data_54

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->k()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_26

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/a/b/e/b/u;->c(I)Lcom/a/b/e/b/u;

    move-result-object v0

    :cond_26
    invoke-virtual {p0, v4}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/b/u;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3d
    :pswitch_3d  #0x0
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_47  #0x1
    invoke-virtual {p0, v4}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d

    nop

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_3d  #00000000
        :pswitch_47  #00000001
    .end packed-switch
.end method

.method protected static b(I)Z
    .registers 2

    and-int/lit8 v0, p0, 0xf

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected static c(I)Z
    .registers 2

    int-to-byte v0, p0

    if-ne v0, p0, :cond_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method protected static c(Lcom/a/b/e/b/x;)Z
    .registers 8

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/a/b/e/b/x;->d_()I

    move-result v4

    const/4 v2, 0x2

    if-ge v4, v2, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-virtual {p0, v1}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/b/u;->g()I

    move-result v3

    move v2, v1

    :goto_13
    if-ge v2, v4, :cond_9

    invoke-virtual {p0, v2}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v5

    invoke-virtual {v5}, Lcom/a/b/e/b/u;->g()I

    move-result v6

    if-eq v6, v3, :cond_21

    move v0, v1

    goto :goto_9

    :cond_21
    invoke-virtual {v5}, Lcom/a/b/e/b/u;->k()I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_13
.end method

.method protected static d(Lcom/a/b/c/b/l;)Ljava/lang/String;
    .registers 3

    check-cast p0, Lcom/a/b/c/b/am;

    invoke-virtual {p0}, Lcom/a/b/c/b/am;->d()I

    move-result v0

    int-to-char v1, v0

    if-ne v0, v1, :cond_e

    invoke-static {v0}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0

    :cond_e
    invoke-static {v0}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method

.method protected static d(I)Z
    .registers 2

    and-int/lit16 v0, p0, 0xff

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected static e(Lcom/a/b/c/b/l;)Ljava/lang/String;
    .registers 3

    check-cast p0, Lcom/a/b/c/b/am;

    invoke-virtual {p0}, Lcom/a/b/c/b/am;->e()I

    move-result v0

    int-to-short v1, v0

    if-ne v0, v1, :cond_e

    invoke-static {v0}, Lcom/a/b/g/k;->h(I)Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0

    :cond_e
    invoke-static {v0}, Lcom/a/b/g/k;->g(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method

.method protected static e(I)Z
    .registers 2

    int-to-short v0, p0

    if-ne v0, p0, :cond_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method protected static f(I)Z
    .registers 2

    const v0, 0xffff

    and-int/2addr v0, p0

    if-ne p0, v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(Lcom/a/b/c/b/l;)Ljava/lang/String;
.end method

.method public final a(Lcom/a/b/c/b/l;Z)Ljava/lang/String;
    .registers 8

    invoke-virtual {p1}, Lcom/a/b/c/b/l;->j()Lcom/a/b/c/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/c/b/n;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/a/b/c/b/r;->a(Lcom/a/b/c/b/l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2}, Lcom/a/b/c/b/r;->b(Lcom/a/b/c/b/l;Z)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_28

    const/16 v0, 0x20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_28
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_36

    const-string v0, " // "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(Lcom/a/b/g/a;Lcom/a/b/c/b/l;)V
.end method

.method public a(Lcom/a/b/c/b/am;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public abstract b(Lcom/a/b/c/b/l;Z)Ljava/lang/String;
.end method

.method public abstract b(Lcom/a/b/c/b/l;)Z
.end method

.method public c(Lcom/a/b/c/b/l;)Ljava/util/BitSet;
    .registers 3

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    return-object v0
.end method

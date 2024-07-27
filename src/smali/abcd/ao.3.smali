.class public abstract Labcd/ao;
.super Ljava/lang/Object;


# static fields
.field public static j6:Z = true


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static DW(II)I
    .registers 4

    and-int/lit8 v0, p0, 0xf

    if-ne v0, p0, :cond_1

    and-int/lit8 v0, p1, 0xf

    if-ne v0, p1, :cond_0

    shl-int/lit8 v0, p1, 0x4

    or-int/2addr v0, p0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "high out of range 0..15"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "low out of range 0..15"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static DW(Labcd/Vn;)Ljava/lang/String;
    .registers 3

    check-cast p0, Labcd/po;

    invoke-virtual {p0}, Labcd/po;->J0()I

    move-result v0

    int-to-char v1, v0

    if-ne v0, v1, :cond_0

    invoke-static {v0}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected static DW(Labcd/cs;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuffer;

    mul-int/lit8 v0, v1, 0x5

    add-int/lit8 v0, v0, 0x2

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/16 v0, 0x7b

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    if-eqz v0, :cond_0

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p0, v0}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v3

    invoke-virtual {v3}, Labcd/bs;->lg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x7d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static DW(I)Z
    .registers 2

    const/4 v0, -0x8

    if-lt p0, v0, :cond_0

    const/4 v0, 0x7

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static FH(Labcd/cs;)Ljava/lang/String;
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1e

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    if-eq v0, v5, :cond_2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->Hw()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-virtual {v0, v5}, Labcd/bs;->DW(I)Labcd/bs;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v4}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v2

    invoke-virtual {v2}, Labcd/bs;->lg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Labcd/bs;->lg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {p0, v4}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->lg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected static FH(I)Z
    .registers 2

    int-to-short v0, p0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static Hw(Labcd/Vn;)Ljava/lang/String;
    .registers 4

    check-cast p0, Labcd/Tn;

    invoke-virtual {p0}, Labcd/Tn;->J8()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Labcd/Tn;->J0()I

    move-result v1

    invoke-virtual {p0}, Labcd/Tn;->we()Labcd/ms;

    move-result-object v2

    invoke-virtual {v2}, Labcd/ms;->Zo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v2, 0x10000

    if-ge v1, v2, :cond_1

    invoke-static {v1}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v1}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method protected static Hw(I)Z
    .registers 2

    and-int/lit16 v0, p0, 0xff

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static Zo(I)Z
    .registers 2

    const v0, 0xffff

    and-int/2addr v0, p0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static gn(Labcd/Vn;)S
    .registers 3

    invoke-virtual {p0}, Labcd/Vn;->Zo()Labcd/Xn;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Xn;->v5()I

    move-result v0

    const/16 v1, 0xff

    if-lt v0, v1, :cond_0

    const v1, 0xffff

    if-gt v0, v1, :cond_0

    int-to-short v0, v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "extended opcode out of range 255..65535"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static j6(Labcd/Ds;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    instance-of v1, p0, Labcd/As;

    if-eqz v1, :cond_0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Labcd/ms;->Zo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-interface {p0}, Labcd/lu;->aM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method protected static j6(Labcd/Ds;I)Ljava/lang/String;
    .registers 6

    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v0, 0x14

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v0, "#"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    instance-of v0, p0, Labcd/Cs;

    if-eqz v0, :cond_0

    check-cast p0, Labcd/Cs;

    invoke-virtual {p0}, Labcd/Cs;->lg()J

    move-result-wide v0

    :goto_0
    const/4 v3, 0x4

    if-eq p1, v3, :cond_5

    const/16 v3, 0x8

    if-eq p1, v3, :cond_4

    const/16 v3, 0x10

    if-eq p1, v3, :cond_3

    const/16 v3, 0x20

    if-eq p1, v3, :cond_2

    const/16 v3, 0x40

    if-ne p1, v3, :cond_1

    invoke-static {v0, v1}, Labcd/Yt;->DW(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Labcd/Ds;->Ws()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    long-to-int v0, v0

    invoke-static {v0}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    long-to-int v0, v0

    invoke-static {v0}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    long-to-int v0, v0

    invoke-static {v0}, Labcd/Yt;->Hw(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_5
    long-to-int v0, v0

    invoke-static {v0}, Labcd/Yt;->u7(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method protected static j6(Labcd/Vn;)Ljava/lang/String;
    .registers 3

    check-cast p0, Labcd/po;

    invoke-virtual {p0}, Labcd/po;->J8()I

    move-result v0

    int-to-short v1, v0

    if-ne v0, v1, :cond_0

    invoke-static {v0}, Labcd/Yt;->DW(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Labcd/Yt;->FH(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected static j6(II)S
    .registers 4

    and-int/lit16 v0, p0, 0xff

    if-ne v0, p0, :cond_1

    and-int/lit16 v0, p1, 0xff

    if-ne v0, p1, :cond_0

    shl-int/lit8 v0, p1, 0x8

    or-int/2addr v0, p0

    int-to-short v0, v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "high out of range 0..255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "low out of range 0..255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static j6(IIII)S
    .registers 6

    and-int/lit8 v0, p0, 0xf

    if-ne v0, p0, :cond_3

    and-int/lit8 v0, p1, 0xf

    if-ne v0, p1, :cond_2

    and-int/lit8 v0, p2, 0xf

    if-ne v0, p2, :cond_1

    and-int/lit8 v0, p3, 0xf

    if-ne v0, p3, :cond_0

    shl-int/lit8 v0, p1, 0x4

    or-int/2addr v0, p0

    shl-int/lit8 v1, p2, 0x8

    or-int/2addr v0, v1

    shl-int/lit8 v1, p3, 0xc

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n3 out of range 0..15"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n2 out of range 0..15"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n1 out of range 0..15"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n0 out of range 0..15"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static j6(Labcd/Vn;I)S
    .registers 4

    and-int/lit16 v0, p1, 0xff

    if-ne v0, p1, :cond_1

    invoke-virtual {p0}, Labcd/Vn;->Zo()Labcd/Xn;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Xn;->v5()I

    move-result v0

    and-int/lit16 v1, v0, 0xff

    if-ne v1, v0, :cond_0

    shl-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "opcode out of range 0..255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "arg out of range 0..255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static j6(Labcd/Lt;S)V
    .registers 2

    invoke-interface {p0, p1}, Labcd/ku;->writeShort(I)V

    return-void
.end method

.method protected static j6(Labcd/Lt;SI)V
    .registers 5

    int-to-short v0, p2

    shr-int/lit8 v1, p2, 0x10

    int-to-short v1, v1

    invoke-static {p0, p1, v0, v1}, Labcd/ao;->j6(Labcd/Lt;SSS)V

    return-void
.end method

.method protected static j6(Labcd/Lt;SIS)V
    .registers 6

    int-to-short v0, p2

    shr-int/lit8 v1, p2, 0x10

    int-to-short v1, v1

    invoke-static {p0, p1, v0, v1, p3}, Labcd/ao;->j6(Labcd/Lt;SSSS)V

    return-void
.end method

.method protected static j6(Labcd/Lt;SISS)V
    .registers 11

    int-to-short v2, p2

    shr-int/lit8 v0, p2, 0x10

    int-to-short v3, v0

    move-object v0, p0

    move v1, p1

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Labcd/ao;->j6(Labcd/Lt;SSSSS)V

    return-void
.end method

.method protected static j6(Labcd/Lt;SJ)V
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

    invoke-static/range {v0 .. v5}, Labcd/ao;->j6(Labcd/Lt;SSSSS)V

    return-void
.end method

.method protected static j6(Labcd/Lt;SS)V
    .registers 3

    invoke-interface {p0, p1}, Labcd/ku;->writeShort(I)V

    invoke-interface {p0, p2}, Labcd/ku;->writeShort(I)V

    return-void
.end method

.method protected static j6(Labcd/Lt;SSS)V
    .registers 4

    invoke-interface {p0, p1}, Labcd/ku;->writeShort(I)V

    invoke-interface {p0, p2}, Labcd/ku;->writeShort(I)V

    invoke-interface {p0, p3}, Labcd/ku;->writeShort(I)V

    return-void
.end method

.method protected static j6(Labcd/Lt;SSSS)V
    .registers 5

    invoke-interface {p0, p1}, Labcd/ku;->writeShort(I)V

    invoke-interface {p0, p2}, Labcd/ku;->writeShort(I)V

    invoke-interface {p0, p3}, Labcd/ku;->writeShort(I)V

    invoke-interface {p0, p4}, Labcd/ku;->writeShort(I)V

    return-void
.end method

.method protected static j6(Labcd/Lt;SSSSS)V
    .registers 6

    invoke-interface {p0, p1}, Labcd/ku;->writeShort(I)V

    invoke-interface {p0, p2}, Labcd/ku;->writeShort(I)V

    invoke-interface {p0, p3}, Labcd/ku;->writeShort(I)V

    invoke-interface {p0, p4}, Labcd/ku;->writeShort(I)V

    invoke-interface {p0, p5}, Labcd/ku;->writeShort(I)V

    return-void
.end method

.method protected static j6(I)Z
    .registers 2

    int-to-byte v0, p0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static j6(Labcd/cs;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v4

    const/4 v2, 0x2

    if-ge v4, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, v1}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v2

    invoke-virtual {v2}, Labcd/bs;->we()I

    move-result v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    invoke-virtual {p0, v2}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v5

    invoke-virtual {v5}, Labcd/bs;->we()I

    move-result v6

    if-eq v6, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Labcd/bs;->Hw()I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method protected static v5(Labcd/Vn;)Ljava/lang/String;
    .registers 3

    check-cast p0, Labcd/Tn;

    invoke-virtual {p0}, Labcd/Tn;->we()Labcd/ms;

    move-result-object v0

    instance-of v1, v0, Labcd/Js;

    if-eqz v1, :cond_0

    check-cast v0, Labcd/Js;

    invoke-virtual {v0}, Labcd/Js;->lg()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Labcd/lu;->aM()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected static v5(I)Z
    .registers 2

    and-int/lit8 v0, p0, 0xf

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final DW(Labcd/Vn;Z)Ljava/lang/String;
    .registers 8

    invoke-virtual {p1}, Labcd/Vn;->Zo()Labcd/Xn;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Xn;->FH()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Labcd/ao;->Zo(Labcd/Vn;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2}, Labcd/ao;->j6(Labcd/Vn;Z)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, " // "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public FH(Labcd/Vn;)Ljava/util/BitSet;
    .registers 3

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    return-object v0
.end method

.method public abstract VH(Labcd/Vn;)Z
.end method

.method public abstract Zo(Labcd/Vn;)Ljava/lang/String;
.end method

.method public abstract j6()I
.end method

.method public abstract j6(Labcd/Vn;Z)Ljava/lang/String;
.end method

.method public abstract j6(Labcd/Lt;Labcd/Vn;)V
.end method

.method public j6(Labcd/po;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

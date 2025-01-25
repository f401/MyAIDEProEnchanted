.class public abstract Labcd/Gp;
.super Labcd/vp;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Labcd/vp;",
        "Ljava/lang/Comparable<",
        "Labcd/Gp;",
        ">;"
    }
.end annotation


# instance fields
.field private DW:I

.field private FH:Labcd/Kp;

.field private Hw:I

.field private final j6:I


# direct methods
.method public constructor <init>(II)V
    .registers 4

    invoke-direct {p0}, Labcd/vp;-><init>()V

    invoke-static {p1}, Labcd/Kp;->FH(I)V

    const/4 v0, -0x1

    if-lt p2, v0, :cond_13

    iput p1, p0, Labcd/Gp;->j6:I

    iput p2, p0, Labcd/Gp;->DW:I

    const/4 p1, 0x0

    iput-object p1, p0, Labcd/Gp;->FH:Labcd/Kp;

    iput v0, p0, Labcd/Gp;->Hw:I

    return-void

    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "writeSize < -1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static FH(Labcd/Gp;)I
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    invoke-virtual {p0}, Labcd/Gp;->we()I

    move-result p0

    return p0
.end method


# virtual methods
.method protected DW(Labcd/Gp;)I
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "unsupported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected DW(Labcd/Kp;I)V
    .registers 3

    return-void
.end method

.method protected abstract DW(Labcd/jp;Labcd/Lt;)V
.end method

.method public final J8()I
    .registers 2

    iget v0, p0, Labcd/Gp;->j6:I

    return v0
.end method

.method public final VH()I
    .registers 3

    iget v0, p0, Labcd/Gp;->DW:I

    if-ltz v0, :cond_5

    return v0

    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "writeSize is unknown"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final Ws()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/Gp;->we()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract aM()Ljava/lang/String;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Labcd/Gp;

    invoke-virtual {p0, p1}, Labcd/Gp;->j6(Labcd/Gp;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    check-cast p1, Labcd/Gp;

    invoke-virtual {p0}, Labcd/vp;->Hw()Labcd/wp;

    move-result-object v1

    invoke-virtual {p1}, Labcd/vp;->Hw()Labcd/wp;

    move-result-object v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_12

    return v3

    :cond_12
    invoke-virtual {p0, p1}, Labcd/Gp;->DW(Labcd/Gp;)I

    move-result p1

    if-nez p1, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return v0
.end method

.method public final j6(Labcd/Gp;)I
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    invoke-virtual {p0}, Labcd/vp;->Hw()Labcd/wp;

    move-result-object v0

    invoke-virtual {p1}, Labcd/vp;->Hw()Labcd/wp;

    move-result-object v1

    if-eq v0, v1, :cond_13

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    return p1

    :cond_13
    invoke-virtual {p0, p1}, Labcd/Gp;->DW(Labcd/Gp;)I

    move-result p1

    return p1
.end method

.method public final j6(Labcd/Kp;I)I
    .registers 4

    if-eqz p1, :cond_28

    if-ltz p2, :cond_20

    iget-object v0, p0, Labcd/Gp;->FH:Labcd/Kp;

    if-nez v0, :cond_18

    iget v0, p0, Labcd/Gp;->j6:I

    add-int/lit8 v0, v0, -0x1

    add-int/2addr p2, v0

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p2, v0

    iput-object p1, p0, Labcd/Gp;->FH:Labcd/Kp;

    iput p2, p0, Labcd/Gp;->Hw:I

    invoke-virtual {p0, p1, p2}, Labcd/Gp;->DW(Labcd/Kp;I)V

    return p2

    :cond_18
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "already written"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "offset < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_28
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "addedTo == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j6(I)V
    .registers 3

    if-ltz p1, :cond_11

    iget v0, p0, Labcd/Gp;->DW:I

    if-gez v0, :cond_9

    iput p1, p0, Labcd/Gp;->DW:I

    return-void

    :cond_9
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "writeSize already set"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "writeSize < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j6(Labcd/jp;Labcd/Lt;)V
    .registers 4

    iget v0, p0, Labcd/Gp;->j6:I

    invoke-interface {p2, v0}, Labcd/ku;->Hw(I)V

    :try_start_5
    iget v0, p0, Labcd/Gp;->DW:I

    if-ltz v0, :cond_14

    invoke-virtual {p0}, Labcd/Gp;->we()I

    move-result v0

    invoke-interface {p2, v0}, Labcd/ku;->FH(I)V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_10} :catch_1c

    invoke-virtual {p0, p1, p2}, Labcd/Gp;->DW(Labcd/jp;Labcd/Lt;)V

    return-void

    :cond_14
    :try_start_14
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "writeSize is unknown"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_1c} :catch_1c

    :catch_1c
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "...while writing "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Labcd/Vt;->j6(Ljava/lang/Throwable;Ljava/lang/String;)Labcd/Vt;

    move-result-object p1

    throw p1
.end method

.method public final we()I
    .registers 3

    iget v0, p0, Labcd/Gp;->Hw:I

    if-ltz v0, :cond_b

    iget-object v1, p0, Labcd/Gp;->FH:Labcd/Kp;

    invoke-virtual {v1, v0}, Labcd/Kp;->j6(I)I

    move-result v0

    return v0

    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "offset not yet known"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

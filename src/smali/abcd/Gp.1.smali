.class public abstract Labcd/Gp;
.super Labcd/vp;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Labcd/vp;",
        "Ljava/lang/Comparable",
        "<",
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
    .registers 5

    const/4 v1, -0x1

    invoke-direct {p0}, Labcd/vp;-><init>()V

    invoke-static {p1}, Labcd/Kp;->FH(I)V

    if-lt p2, v1, :cond_0

    iput p1, p0, Labcd/Gp;->j6:I

    iput p2, p0, Labcd/Gp;->DW:I

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/Gp;->FH:Labcd/Kp;

    iput v1, p0, Labcd/Gp;->Hw:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "writeSize < -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static FH(Labcd/Gp;)I
    .registers 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Labcd/Gp;->we()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected DW(Labcd/Gp;)I
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
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

    if-ltz v0, :cond_0

    return v0

    :cond_0
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
    .registers 3

    check-cast p1, Labcd/Gp;

    invoke-virtual {p0, p1}, Labcd/Gp;->j6(Labcd/Gp;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Labcd/Gp;

    invoke-virtual {p0}, Labcd/vp;->Hw()Labcd/wp;

    move-result-object v2

    invoke-virtual {p1}, Labcd/vp;->Hw()Labcd/wp;

    move-result-object v3

    if-eq v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Labcd/Gp;->DW(Labcd/Gp;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final j6(Labcd/Gp;)I
    .registers 4

    if-ne p0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Labcd/vp;->Hw()Labcd/wp;

    move-result-object v0

    invoke-virtual {p1}, Labcd/vp;->Hw()Labcd/wp;

    move-result-object v1

    if-eq v0, v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Labcd/Gp;->DW(Labcd/Gp;)I

    move-result v0

    goto :goto_0
.end method

.method public final j6(Labcd/Kp;I)I
    .registers 5

    if-eqz p1, :cond_2

    if-ltz p2, :cond_1

    iget-object v0, p0, Labcd/Gp;->FH:Labcd/Kp;

    if-nez v0, :cond_0

    iget v0, p0, Labcd/Gp;->j6:I

    add-int/lit8 v0, v0, -0x1

    add-int v1, p2, v0

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    iput-object p1, p0, Labcd/Gp;->FH:Labcd/Kp;

    iput v0, p0, Labcd/Gp;->Hw:I

    invoke-virtual {p0, p1, v0}, Labcd/Gp;->DW(Labcd/Kp;I)V

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "already written"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "offset < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "addedTo == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j6(I)V
    .registers 4

    if-ltz p1, :cond_1

    iget v0, p0, Labcd/Gp;->DW:I

    if-gez v0, :cond_0

    iput p1, p0, Labcd/Gp;->DW:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "writeSize already set"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "writeSize < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j6(Labcd/jp;Labcd/Lt;)V
    .registers 6

    iget v0, p0, Labcd/Gp;->j6:I

    invoke-interface {p2, v0}, Labcd/ku;->Hw(I)V

    :try_start_0
    iget v0, p0, Labcd/Gp;->DW:I

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Labcd/Gp;->we()I

    move-result v0

    invoke-interface {p2, v0}, Labcd/ku;->FH(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, p1, p2}, Labcd/Gp;->DW(Labcd/jp;Labcd/Lt;)V

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "writeSize is unknown"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "...while writing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/Vt;->j6(Ljava/lang/Throwable;Ljava/lang/String;)Labcd/Vt;

    move-result-object v0

    throw v0
.end method

.method public final we()I
    .registers 3

    iget v0, p0, Labcd/Gp;->Hw:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Labcd/Gp;->FH:Labcd/Kp;

    invoke-virtual {v1, v0}, Labcd/Kp;->j6(I)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "offset not yet known"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

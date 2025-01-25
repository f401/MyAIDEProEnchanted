.class public abstract Labcd/Kp;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Labcd/jp;

.field private final FH:I

.field private Hw:I

.field private final j6:Ljava/lang/String;

.field private v5:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Labcd/jp;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_15

    invoke-static {p3}, Labcd/Kp;->FH(I)V

    iput-object p1, p0, Labcd/Kp;->j6:Ljava/lang/String;

    iput-object p2, p0, Labcd/Kp;->DW:Labcd/jp;

    iput p3, p0, Labcd/Kp;->FH:I

    const/4 p1, -0x1

    iput p1, p0, Labcd/Kp;->Hw:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Labcd/Kp;->v5:Z

    return-void

    :cond_15
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "file == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static FH(I)V
    .registers 2

    if-lez p0, :cond_8

    add-int/lit8 v0, p0, -0x1

    and-int/2addr p0, v0

    if-nez p0, :cond_8

    return-void

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid alignment"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final DW(I)I
    .registers 3

    if-ltz p1, :cond_19

    iget v0, p0, Labcd/Kp;->Hw:I

    if-gez v0, :cond_11

    iget v0, p0, Labcd/Kp;->FH:I

    add-int/lit8 v0, v0, -0x1

    add-int/2addr p1, v0

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p1, v0

    iput p1, p0, Labcd/Kp;->Hw:I

    return p1

    :cond_11
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "fileOffset already set"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "fileOffset < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final DW()Labcd/jp;
    .registers 2

    iget-object v0, p0, Labcd/Kp;->DW:Labcd/jp;

    return-object v0
.end method

.method public final DW(Labcd/Lt;)V
    .registers 6

    invoke-virtual {p0}, Labcd/Kp;->VH()V

    invoke-virtual {p0, p1}, Labcd/Kp;->j6(Labcd/Lt;)V

    invoke-interface {p1}, Labcd/ku;->v5()I

    move-result v0

    iget v1, p0, Labcd/Kp;->Hw:I

    if-gez v1, :cond_11

    iput v0, p0, Labcd/Kp;->Hw:I

    goto :goto_13

    :cond_11
    if-ne v1, v0, :cond_43

    :goto_13
    invoke-interface {p1}, Labcd/Lt;->Hw()Z

    move-result v1

    if-eqz v1, :cond_3f

    iget-object v1, p0, Labcd/Kp;->j6:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\n"

    if-eqz v1, :cond_3a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/Kp;->j6:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Labcd/Lt;->j6(ILjava/lang/String;)V

    goto :goto_3f

    :cond_3a
    if-eqz v0, :cond_3f

    invoke-interface {p1, v2, v3}, Labcd/Lt;->j6(ILjava/lang/String;)V

    :cond_3f
    :goto_3f
    invoke-virtual {p0, p1}, Labcd/Kp;->FH(Labcd/Lt;)V

    return-void

    :cond_43
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "alignment mismatch: for "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", at "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", but expected "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Labcd/Kp;->Hw:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final FH()I
    .registers 3

    iget v0, p0, Labcd/Kp;->Hw:I

    if-ltz v0, :cond_5

    return v0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "fileOffset not set"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract FH(Labcd/Lt;)V
.end method

.method public abstract Hw()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Labcd/vp;",
            ">;"
        }
    .end annotation
.end method

.method protected final VH()V
    .registers 3

    iget-boolean v0, p0, Labcd/Kp;->v5:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not prepared"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract Zo()V
.end method

.method protected final gn()V
    .registers 3

    iget-boolean v0, p0, Labcd/Kp;->v5:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "already prepared"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j6()I
    .registers 2

    iget v0, p0, Labcd/Kp;->FH:I

    return v0
.end method

.method public final j6(I)I
    .registers 3

    if-ltz p1, :cond_10

    iget v0, p0, Labcd/Kp;->Hw:I

    if-ltz v0, :cond_8

    add-int/2addr v0, p1

    return v0

    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "fileOffset not yet set"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "relative < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract j6(Labcd/vp;)I
.end method

.method protected final j6(Labcd/Lt;)V
    .registers 3

    iget v0, p0, Labcd/Kp;->FH:I

    invoke-interface {p1, v0}, Labcd/ku;->Hw(I)V

    return-void
.end method

.method public abstract u7()I
.end method

.method public final v5()V
    .registers 2

    invoke-virtual {p0}, Labcd/Kp;->gn()V

    invoke-virtual {p0}, Labcd/Kp;->Zo()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/Kp;->v5:Z

    return-void
.end method

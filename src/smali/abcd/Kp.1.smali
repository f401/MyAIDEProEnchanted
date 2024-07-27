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
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    invoke-static {p3}, Labcd/Kp;->FH(I)V

    iput-object p1, p0, Labcd/Kp;->j6:Ljava/lang/String;

    iput-object p2, p0, Labcd/Kp;->DW:Labcd/jp;

    iput p3, p0, Labcd/Kp;->FH:I

    const/4 v0, -0x1

    iput v0, p0, Labcd/Kp;->Hw:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/Kp;->v5:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static FH(I)V
    .registers 3

    if-lez p0, :cond_0

    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid alignment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final DW(I)I
    .registers 4

    if-ltz p1, :cond_1

    iget v0, p0, Labcd/Kp;->Hw:I

    if-gez v0, :cond_0

    iget v0, p0, Labcd/Kp;->FH:I

    add-int/lit8 v0, v0, -0x1

    add-int v1, p1, v0

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Labcd/Kp;->Hw:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "fileOffset already set"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fileOffset < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final DW()Labcd/jp;
    .registers 2

    iget-object v0, p0, Labcd/Kp;->DW:Labcd/jp;

    return-object v0
.end method

.method public final DW(Labcd/Lt;)V
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Labcd/Kp;->VH()V

    invoke-virtual {p0, p1}, Labcd/Kp;->j6(Labcd/Lt;)V

    invoke-interface {p1}, Labcd/ku;->v5()I

    move-result v0

    iget v1, p0, Labcd/Kp;->Hw:I

    if-gez v1, :cond_2

    iput v0, p0, Labcd/Kp;->Hw:I

    :cond_0
    invoke-interface {p1}, Labcd/Lt;->Hw()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Labcd/Kp;->j6:Ljava/lang/String;

    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/Kp;->j6:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Labcd/Lt;->j6(ILjava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Labcd/Kp;->FH(Labcd/Lt;)V

    return-void

    :cond_2
    if-eq v1, v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alignment mismatch: for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", but expected "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Labcd/Kp;->Hw:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-eqz v0, :cond_1

    const-string v0, "\n"

    invoke-interface {p1, v2, v0}, Labcd/Lt;->j6(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public final FH()I
    .registers 3

    iget v0, p0, Labcd/Kp;->Hw:I

    if-ltz v0, :cond_0

    return v0

    :cond_0
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
            "Ljava/util/Collection",
            "<+",
            "Labcd/vp;",
            ">;"
        }
    .end annotation
.end method

.method protected final VH()V
    .registers 3

    iget-boolean v0, p0, Labcd/Kp;->v5:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
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

    if-nez v0, :cond_0

    return-void

    :cond_0
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
    .registers 4

    if-ltz p1, :cond_1

    iget v0, p0, Labcd/Kp;->Hw:I

    if-ltz v0, :cond_0

    add-int/2addr v0, p1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "fileOffset not yet set"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "relative < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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

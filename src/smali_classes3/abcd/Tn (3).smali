.class public final Labcd/Tn;
.super Labcd/Zn;


# instance fields
.field private VH:I

.field private Zo:I

.field private final v5:Labcd/ms;


# direct methods
.method public constructor <init>(Labcd/Xn;Labcd/hs;Labcd/cs;Labcd/ms;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Labcd/Zn;-><init>(Labcd/Xn;Labcd/hs;Labcd/cs;)V

    if-eqz p4, :cond_d

    iput-object p4, p0, Labcd/Tn;->v5:Labcd/ms;

    const/4 p1, -0x1

    iput p1, p0, Labcd/Tn;->Zo:I

    iput p1, p0, Labcd/Tn;->VH:I

    return-void

    :cond_d
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "constant == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public FH(I)V
    .registers 3

    if-ltz p1, :cond_11

    iget v0, p0, Labcd/Tn;->VH:I

    if-gez v0, :cond_9

    iput p1, p0, Labcd/Tn;->VH:I

    return-void

    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "class index already set"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public Hw(I)V
    .registers 3

    if-ltz p1, :cond_11

    iget v0, p0, Labcd/Tn;->Zo:I

    if-gez v0, :cond_9

    iput p1, p0, Labcd/Tn;->Zo:I

    return-void

    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "index already set"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public J0()I
    .registers 3

    iget v0, p0, Labcd/Tn;->Zo:I

    if-ltz v0, :cond_5

    return v0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index not yet set for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/Tn;->v5:Labcd/ms;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public J8()Z
    .registers 2

    iget v0, p0, Labcd/Tn;->Zo:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public j6(Labcd/Xn;)Labcd/Vn;
    .registers 6

    new-instance v0, Labcd/Tn;

    invoke-virtual {p0}, Labcd/Vn;->VH()Labcd/hs;

    move-result-object v1

    invoke-virtual {p0}, Labcd/Vn;->gn()Labcd/cs;

    move-result-object v2

    iget-object v3, p0, Labcd/Tn;->v5:Labcd/ms;

    invoke-direct {v0, p1, v1, v2, v3}, Labcd/Tn;-><init>(Labcd/Xn;Labcd/hs;Labcd/cs;Labcd/ms;)V

    iget p1, p0, Labcd/Tn;->Zo:I

    if-ltz p1, :cond_16

    invoke-virtual {v0, p1}, Labcd/Tn;->Hw(I)V

    :cond_16
    iget p1, p0, Labcd/Tn;->VH:I

    if-ltz p1, :cond_1d

    invoke-virtual {v0, p1}, Labcd/Tn;->FH(I)V

    :cond_1d
    return-object v0
.end method

.method public j6(Labcd/cs;)Labcd/Vn;
    .registers 6

    new-instance v0, Labcd/Tn;

    invoke-virtual {p0}, Labcd/Vn;->Zo()Labcd/Xn;

    move-result-object v1

    invoke-virtual {p0}, Labcd/Vn;->VH()Labcd/hs;

    move-result-object v2

    iget-object v3, p0, Labcd/Tn;->v5:Labcd/ms;

    invoke-direct {v0, v1, v2, p1, v3}, Labcd/Tn;-><init>(Labcd/Xn;Labcd/hs;Labcd/cs;Labcd/ms;)V

    iget p1, p0, Labcd/Tn;->Zo:I

    if-ltz p1, :cond_16

    invoke-virtual {v0, p1}, Labcd/Tn;->Hw(I)V

    :cond_16
    iget p1, p0, Labcd/Tn;->VH:I

    if-ltz p1, :cond_1d

    invoke-virtual {v0, p1}, Labcd/Tn;->FH(I)V

    :cond_1d
    return-object v0
.end method

.method protected j6()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/Tn;->v5:Labcd/ms;

    invoke-interface {v0}, Labcd/lu;->aM()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public we()Labcd/ms;
    .registers 2

    iget-object v0, p0, Labcd/Tn;->v5:Labcd/ms;

    return-object v0
.end method

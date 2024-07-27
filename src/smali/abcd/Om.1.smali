.class public final Labcd/Om;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Labcd/Nm;

.field private final FH:Labcd/au;

.field private final j6:Labcd/Rm;


# direct methods
.method public constructor <init>(II)V
    .registers 5

    new-instance v0, Labcd/Vm;

    invoke-direct {v0, p1}, Labcd/Vm;-><init>(I)V

    new-instance v1, Labcd/Nm;

    invoke-direct {v1, p2}, Labcd/Nm;-><init>(I)V

    invoke-direct {p0, v0, v1}, Labcd/Om;-><init>(Labcd/Rm;Labcd/Nm;)V

    return-void
.end method

.method private constructor <init>(Labcd/Rm;Labcd/Nm;)V
    .registers 4

    sget-object v0, Labcd/au;->DW:Labcd/au;

    invoke-direct {p0, p1, p2, v0}, Labcd/Om;-><init>(Labcd/Rm;Labcd/Nm;Labcd/au;)V

    return-void
.end method

.method private constructor <init>(Labcd/Rm;Labcd/Nm;Labcd/au;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Labcd/hu;->Ws()V

    iput-object p1, p0, Labcd/Om;->j6:Labcd/Rm;

    iput-object p2, p0, Labcd/Om;->DW:Labcd/Nm;

    iput-object p3, p0, Labcd/Om;->FH:Labcd/au;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "stack == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "locals == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static j6(Labcd/Rm;Labcd/au;)Labcd/Rm;
    .registers 3

    instance-of v0, p0, Labcd/Sm;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    check-cast p0, Labcd/Sm;

    invoke-virtual {p1}, Labcd/au;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Labcd/Sm;->rN()Labcd/Vm;

    move-result-object p0

    goto :goto_0
.end method

.method private j6(Labcd/au;)Labcd/au;
    .registers 8

    iget-object v0, p0, Labcd/Om;->FH:Labcd/au;

    invoke-virtual {v0, p1}, Labcd/au;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/Om;->FH:Labcd/au;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Labcd/au;

    invoke-direct {v0}, Labcd/au;-><init>()V

    iget-object v1, p0, Labcd/Om;->FH:Labcd/au;

    invoke-virtual {v1}, Labcd/au;->size()I

    move-result v2

    invoke-virtual {p1}, Labcd/au;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    if-ge v1, v3, :cond_1

    iget-object v4, p0, Labcd/Om;->FH:Labcd/au;

    invoke-virtual {v4, v1}, Labcd/au;->get(I)I

    move-result v4

    invoke-virtual {p1, v1}, Labcd/au;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_1

    invoke-virtual {v0, v1}, Labcd/au;->DW(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Labcd/hu;->we()V

    goto :goto_0
.end method


# virtual methods
.method public DW(II)Labcd/Om;
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Labcd/Om;->j6:Labcd/Rm;

    instance-of v2, v0, Labcd/Sm;

    if-eqz v2, :cond_0

    check-cast v0, Labcd/Sm;

    invoke-virtual {v0, p2}, Labcd/Sm;->DW(I)Labcd/Rm;

    move-result-object v0

    move-object v2, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Labcd/Om;->FH:Labcd/au;

    invoke-virtual {v0}, Labcd/au;->lg()Labcd/au;

    move-result-object v3

    invoke-virtual {v3}, Labcd/au;->rN()I

    move-result v0

    if-ne v0, p1, :cond_2

    invoke-virtual {v3}, Labcd/hu;->we()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_1

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    move-object v2, v1

    goto :goto_0

    :cond_1
    new-instance v0, Labcd/Om;

    iget-object v1, p0, Labcd/Om;->DW:Labcd/Nm;

    invoke-direct {v0, v2, v1, v3}, Labcd/Om;-><init>(Labcd/Rm;Labcd/Nm;Labcd/au;)V

    goto :goto_1

    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "returning from invalid subroutine"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "returning from invalid subroutine"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "can\'t return from non-subroutine"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public DW()Labcd/Rm;
    .registers 2

    iget-object v0, p0, Labcd/Om;->j6:Labcd/Rm;

    return-object v0
.end method

.method public FH()Labcd/Nm;
    .registers 2

    iget-object v0, p0, Labcd/Om;->DW:Labcd/Nm;

    return-object v0
.end method

.method public Hw()Labcd/au;
    .registers 2

    iget-object v0, p0, Labcd/Om;->FH:Labcd/au;

    return-object v0
.end method

.method public j6()Labcd/Om;
    .registers 5

    new-instance v0, Labcd/Om;

    iget-object v1, p0, Labcd/Om;->j6:Labcd/Rm;

    invoke-virtual {v1}, Labcd/Rm;->lg()Labcd/Rm;

    move-result-object v1

    iget-object v2, p0, Labcd/Om;->DW:Labcd/Nm;

    invoke-virtual {v2}, Labcd/Nm;->rN()Labcd/Nm;

    move-result-object v2

    iget-object v3, p0, Labcd/Om;->FH:Labcd/au;

    invoke-direct {v0, v1, v2, v3}, Labcd/Om;-><init>(Labcd/Rm;Labcd/Nm;Labcd/au;)V

    return-object v0
.end method

.method public j6(II)Labcd/Om;
    .registers 7

    iget-object v0, p0, Labcd/Om;->FH:Labcd/au;

    invoke-virtual {v0}, Labcd/au;->lg()Labcd/au;

    move-result-object v0

    invoke-virtual {v0, p1}, Labcd/au;->DW(I)V

    new-instance v0, Labcd/Om;

    iget-object v1, p0, Labcd/Om;->j6:Labcd/Rm;

    invoke-virtual {v1}, Labcd/Rm;->rN()Labcd/Vm;

    move-result-object v1

    iget-object v2, p0, Labcd/Om;->DW:Labcd/Nm;

    invoke-static {p1}, Labcd/au;->Zo(I)Labcd/au;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Labcd/Om;-><init>(Labcd/Rm;Labcd/Nm;Labcd/au;)V

    invoke-virtual {v0, p0, p1, p2}, Labcd/Om;->j6(Labcd/Om;II)Labcd/Om;

    move-result-object v0

    return-object v0
.end method

.method public j6(Labcd/Ks;)Labcd/Om;
    .registers 6

    invoke-virtual {p0}, Labcd/Om;->FH()Labcd/Nm;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Nm;->rN()Labcd/Nm;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Nm;->lg()V

    invoke-virtual {v0, p1}, Labcd/Nm;->j6(Labcd/Rs;)V

    new-instance v1, Labcd/Om;

    invoke-virtual {p0}, Labcd/Om;->DW()Labcd/Rm;

    move-result-object v2

    iget-object v3, p0, Labcd/Om;->FH:Labcd/au;

    invoke-direct {v1, v2, v0, v3}, Labcd/Om;-><init>(Labcd/Rm;Labcd/Nm;Labcd/au;)V

    return-object v1
.end method

.method public j6(Labcd/Om;)Labcd/Om;
    .registers 6

    invoke-virtual {p0}, Labcd/Om;->DW()Labcd/Rm;

    move-result-object v0

    invoke-virtual {p1}, Labcd/Om;->DW()Labcd/Rm;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/Rm;->j6(Labcd/Rm;)Labcd/Rm;

    move-result-object v0

    invoke-virtual {p0}, Labcd/Om;->FH()Labcd/Nm;

    move-result-object v1

    invoke-virtual {p1}, Labcd/Om;->FH()Labcd/Nm;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/Nm;->j6(Labcd/Nm;)Labcd/Nm;

    move-result-object v1

    iget-object v2, p1, Labcd/Om;->FH:Labcd/au;

    invoke-direct {p0, v2}, Labcd/Om;->j6(Labcd/au;)Labcd/au;

    move-result-object v2

    invoke-static {v0, v2}, Labcd/Om;->j6(Labcd/Rm;Labcd/au;)Labcd/Rm;

    move-result-object v0

    invoke-virtual {p0}, Labcd/Om;->DW()Labcd/Rm;

    move-result-object v3

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Labcd/Om;->FH()Labcd/Nm;

    move-result-object v3

    if-ne v1, v3, :cond_0

    iget-object v3, p0, Labcd/Om;->FH:Labcd/au;

    if-ne v3, v2, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance p0, Labcd/Om;

    invoke-direct {p0, v0, v1, v2}, Labcd/Om;-><init>(Labcd/Rm;Labcd/Nm;Labcd/au;)V

    goto :goto_0
.end method

.method public j6(Labcd/Om;II)Labcd/Om;
    .registers 13

    invoke-virtual {p0}, Labcd/Om;->DW()Labcd/Rm;

    move-result-object v0

    invoke-virtual {p1}, Labcd/Om;->DW()Labcd/Rm;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Labcd/Rm;->j6(Labcd/Rm;I)Labcd/Sm;

    move-result-object v3

    invoke-virtual {p0}, Labcd/Om;->FH()Labcd/Nm;

    move-result-object v0

    invoke-virtual {p1}, Labcd/Om;->FH()Labcd/Nm;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/Nm;->j6(Labcd/Nm;)Labcd/Nm;

    move-result-object v4

    iget-object v0, p1, Labcd/Om;->FH:Labcd/au;

    invoke-virtual {v0}, Labcd/au;->lg()Labcd/au;

    move-result-object v1

    invoke-virtual {v1, p2}, Labcd/au;->DW(I)V

    invoke-virtual {v1}, Labcd/hu;->we()V

    invoke-virtual {p0}, Labcd/Om;->DW()Labcd/Rm;

    move-result-object v0

    if-ne v3, v0, :cond_0

    invoke-virtual {p0}, Labcd/Om;->FH()Labcd/Nm;

    move-result-object v0

    if-ne v4, v0, :cond_0

    iget-object v0, p0, Labcd/Om;->FH:Labcd/au;

    invoke-virtual {v0, v1}, Labcd/au;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Labcd/Om;->FH:Labcd/au;

    invoke-virtual {v0, v1}, Labcd/au;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Labcd/Om;->FH:Labcd/au;

    :cond_1
    new-instance p0, Labcd/Om;

    invoke-direct {p0, v3, v4, v2}, Labcd/Om;-><init>(Labcd/Rm;Labcd/Nm;Labcd/au;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Labcd/Om;->FH:Labcd/au;

    invoke-virtual {v0}, Labcd/au;->size()I

    move-result v0

    invoke-virtual {v1}, Labcd/au;->size()I

    move-result v2

    if-le v0, v2, :cond_3

    iget-object v2, p0, Labcd/Om;->FH:Labcd/au;

    move-object v0, v1

    :goto_1
    invoke-virtual {v2}, Labcd/au;->size()I

    move-result v5

    invoke-virtual {v0}, Labcd/au;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    :goto_2
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Labcd/au;->get(I)I

    move-result v7

    sub-int v8, v5, v6

    add-int/2addr v8, v1

    invoke-virtual {v2, v8}, Labcd/au;->get(I)I

    move-result v8

    if-ne v7, v8, :cond_4

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Labcd/Om;->FH:Labcd/au;

    move-object v2, v1

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Incompatible merged subroutines"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j6(Labcd/Ps;)V
    .registers 7

    const/4 v1, 0x0

    invoke-virtual {p1}, Labcd/Xt;->size()I

    move-result v3

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-virtual {p1, v2}, Labcd/Ps;->get(I)Labcd/Qs;

    move-result-object v1

    iget-object v4, p0, Labcd/Om;->j6:Labcd/Rm;

    invoke-virtual {v4, v0, v1}, Labcd/Rm;->j6(ILabcd/Rs;)V

    invoke-virtual {v1}, Labcd/Qs;->Zo()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public j6(Labcd/Qs;)V
    .registers 3

    iget-object v0, p0, Labcd/Om;->j6:Labcd/Rm;

    invoke-virtual {v0, p1}, Labcd/Rm;->DW(Labcd/Qs;)V

    iget-object v0, p0, Labcd/Om;->DW:Labcd/Nm;

    invoke-virtual {v0, p1}, Labcd/Nm;->DW(Labcd/Qs;)V

    return-void
.end method

.method public j6(Labcd/Vt;)V
    .registers 3

    iget-object v0, p0, Labcd/Om;->j6:Labcd/Rm;

    invoke-virtual {v0, p1}, Labcd/Rm;->j6(Labcd/Vt;)V

    iget-object v0, p0, Labcd/Om;->DW:Labcd/Nm;

    invoke-virtual {v0, p1}, Labcd/Nm;->j6(Labcd/Vt;)V

    return-void
.end method

.method public v5()V
    .registers 2

    iget-object v0, p0, Labcd/Om;->j6:Labcd/Rm;

    invoke-virtual {v0}, Labcd/hu;->we()V

    iget-object v0, p0, Labcd/Om;->DW:Labcd/Nm;

    invoke-virtual {v0}, Labcd/hu;->we()V

    return-void
.end method

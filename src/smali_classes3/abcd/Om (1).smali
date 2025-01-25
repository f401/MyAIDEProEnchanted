.class public final Labcd/Om;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Labcd/Nm;

.field private final FH:Labcd/au;

.field private final j6:Labcd/Rm;


# direct methods
.method public constructor <init>(II)V
    .registers 4

    new-instance v0, Labcd/Vm;

    invoke-direct {v0, p1}, Labcd/Vm;-><init>(I)V

    new-instance p1, Labcd/Nm;

    invoke-direct {p1, p2}, Labcd/Nm;-><init>(I)V

    invoke-direct {p0, v0, p1}, Labcd/Om;-><init>(Labcd/Rm;Labcd/Nm;)V

    return-void
.end method

.method private constructor <init>(Labcd/Rm;Labcd/Nm;)V
    .registers 4

    sget-object v0, Labcd/au;->DW:Labcd/au;

    invoke-direct {p0, p1, p2, v0}, Labcd/Om;-><init>(Labcd/Rm;Labcd/Nm;Labcd/au;)V

    return-void
.end method

.method private constructor <init>(Labcd/Rm;Labcd/Nm;Labcd/au;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_19

    if-eqz p2, :cond_11

    invoke-virtual {p3}, Labcd/hu;->Ws()V

    iput-object p1, p0, Labcd/Om;->j6:Labcd/Rm;

    iput-object p2, p0, Labcd/Om;->DW:Labcd/Nm;

    iput-object p3, p0, Labcd/Om;->FH:Labcd/au;

    return-void

    :cond_11
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "stack == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_19
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "locals == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static j6(Labcd/Rm;Labcd/au;)Labcd/Rm;
    .registers 3

    instance-of v0, p0, Labcd/Sm;

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    check-cast p0, Labcd/Sm;

    invoke-virtual {p1}, Labcd/au;->size()I

    move-result p1

    if-nez p1, :cond_11

    invoke-virtual {p0}, Labcd/Sm;->rN()Labcd/Vm;

    move-result-object p0

    :cond_11
    return-object p0
.end method

.method private j6(Labcd/au;)Labcd/au;
    .registers 8

    iget-object v0, p0, Labcd/Om;->FH:Labcd/au;

    invoke-virtual {v0, p1}, Labcd/au;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p1, p0, Labcd/Om;->FH:Labcd/au;

    return-object p1

    :cond_b
    new-instance v0, Labcd/au;

    invoke-direct {v0}, Labcd/au;-><init>()V

    iget-object v1, p0, Labcd/Om;->FH:Labcd/au;

    invoke-virtual {v1}, Labcd/au;->size()I

    move-result v1

    invoke-virtual {p1}, Labcd/au;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v1, :cond_31

    if-ge v3, v2, :cond_31

    iget-object v4, p0, Labcd/Om;->FH:Labcd/au;

    invoke-virtual {v4, v3}, Labcd/au;->get(I)I

    move-result v4

    invoke-virtual {p1, v3}, Labcd/au;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_31

    invoke-virtual {v0, v3}, Labcd/au;->DW(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_31
    invoke-virtual {v0}, Labcd/hu;->we()V

    return-object v0
.end method


# virtual methods
.method public DW(II)Labcd/Om;
    .registers 7

    const-string v0, "returning from invalid subroutine"

    iget-object v1, p0, Labcd/Om;->j6:Labcd/Rm;

    instance-of v2, v1, Labcd/Sm;

    const/4 v3, 0x0

    if-eqz v2, :cond_10

    check-cast v1, Labcd/Sm;

    invoke-virtual {v1, p2}, Labcd/Sm;->DW(I)Labcd/Rm;

    move-result-object p2

    goto :goto_11

    :cond_10
    move-object p2, v3

    :goto_11
    :try_start_11
    iget-object v1, p0, Labcd/Om;->FH:Labcd/au;

    invoke-virtual {v1}, Labcd/au;->lg()Labcd/au;

    move-result-object v1

    invoke-virtual {v1}, Labcd/au;->rN()I

    move-result v2

    if-ne v2, p1, :cond_2b

    invoke-virtual {v1}, Labcd/hu;->we()V
    :try_end_20
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_11 .. :try_end_20} :catch_3a
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_20} :catch_31

    if-nez p2, :cond_23

    goto :goto_2a

    :cond_23
    new-instance v3, Labcd/Om;

    iget-object p1, p0, Labcd/Om;->DW:Labcd/Nm;

    invoke-direct {v3, p2, p1, v1}, Labcd/Om;-><init>(Labcd/Rm;Labcd/Nm;Labcd/au;)V

    :goto_2a
    return-object v3

    :cond_2b
    :try_start_2b
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_31
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2b .. :try_end_31} :catch_3a
    .catch Ljava/lang/NullPointerException; {:try_start_2b .. :try_end_31} :catch_31

    :catch_31
    move-exception p1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "can\'t return from non-subroutine"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_3a
    move-exception p1

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
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

    move-result-object p1

    return-object p1
.end method

.method public j6(Labcd/Ks;)Labcd/Om;
    .registers 5

    invoke-virtual {p0}, Labcd/Om;->FH()Labcd/Nm;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Nm;->rN()Labcd/Nm;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Nm;->lg()V

    invoke-virtual {v0, p1}, Labcd/Nm;->j6(Labcd/Rs;)V

    new-instance p1, Labcd/Om;

    invoke-virtual {p0}, Labcd/Om;->DW()Labcd/Rm;

    move-result-object v1

    iget-object v2, p0, Labcd/Om;->FH:Labcd/au;

    invoke-direct {p1, v1, v0, v2}, Labcd/Om;-><init>(Labcd/Rm;Labcd/Nm;Labcd/au;)V

    return-object p1
.end method

.method public j6(Labcd/Om;)Labcd/Om;
    .registers 5

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

    iget-object p1, p1, Labcd/Om;->FH:Labcd/au;

    invoke-direct {p0, p1}, Labcd/Om;->j6(Labcd/au;)Labcd/au;

    move-result-object p1

    invoke-static {v0, p1}, Labcd/Om;->j6(Labcd/Rm;Labcd/au;)Labcd/Rm;

    move-result-object v0

    invoke-virtual {p0}, Labcd/Om;->DW()Labcd/Rm;

    move-result-object v2

    if-ne v0, v2, :cond_33

    invoke-virtual {p0}, Labcd/Om;->FH()Labcd/Nm;

    move-result-object v2

    if-ne v1, v2, :cond_33

    iget-object v2, p0, Labcd/Om;->FH:Labcd/au;

    if-ne v2, p1, :cond_33

    return-object p0

    :cond_33
    new-instance v2, Labcd/Om;

    invoke-direct {v2, v0, v1, p1}, Labcd/Om;-><init>(Labcd/Rm;Labcd/Nm;Labcd/au;)V

    return-object v2
.end method

.method public j6(Labcd/Om;II)Labcd/Om;
    .registers 11

    invoke-virtual {p0}, Labcd/Om;->DW()Labcd/Rm;

    move-result-object v0

    invoke-virtual {p1}, Labcd/Om;->DW()Labcd/Rm;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Labcd/Rm;->j6(Labcd/Rm;I)Labcd/Sm;

    move-result-object p3

    invoke-virtual {p0}, Labcd/Om;->FH()Labcd/Nm;

    move-result-object v0

    invoke-virtual {p1}, Labcd/Om;->FH()Labcd/Nm;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/Nm;->j6(Labcd/Nm;)Labcd/Nm;

    move-result-object v0

    iget-object p1, p1, Labcd/Om;->FH:Labcd/au;

    invoke-virtual {p1}, Labcd/au;->lg()Labcd/au;

    move-result-object p1

    invoke-virtual {p1, p2}, Labcd/au;->DW(I)V

    invoke-virtual {p1}, Labcd/hu;->we()V

    invoke-virtual {p0}, Labcd/Om;->DW()Labcd/Rm;

    move-result-object p2

    if-ne p3, p2, :cond_39

    invoke-virtual {p0}, Labcd/Om;->FH()Labcd/Nm;

    move-result-object p2

    if-ne v0, p2, :cond_39

    iget-object p2, p0, Labcd/Om;->FH:Labcd/au;

    invoke-virtual {p2, p1}, Labcd/au;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_39

    return-object p0

    :cond_39
    iget-object p2, p0, Labcd/Om;->FH:Labcd/au;

    invoke-virtual {p2, p1}, Labcd/au;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_44

    iget-object p1, p0, Labcd/Om;->FH:Labcd/au;

    goto :goto_7c

    :cond_44
    iget-object p2, p0, Labcd/Om;->FH:Labcd/au;

    invoke-virtual {p2}, Labcd/au;->size()I

    move-result p2

    invoke-virtual {p1}, Labcd/au;->size()I

    move-result v1

    if-le p2, v1, :cond_56

    iget-object p2, p0, Labcd/Om;->FH:Labcd/au;

    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    goto :goto_58

    :cond_56
    iget-object p2, p0, Labcd/Om;->FH:Labcd/au;

    :goto_58
    invoke-virtual {p1}, Labcd/au;->size()I

    move-result v1

    invoke-virtual {p2}, Labcd/au;->size()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    :goto_62
    if-ltz v3, :cond_7c

    invoke-virtual {p2, v3}, Labcd/au;->get(I)I

    move-result v4

    sub-int v5, v1, v2

    add-int/2addr v5, v3

    invoke-virtual {p1, v5}, Labcd/au;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_74

    add-int/lit8 v3, v3, -0x1

    goto :goto_62

    :cond_74
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Incompatible merged subroutines"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7c
    :goto_7c
    new-instance p2, Labcd/Om;

    invoke-direct {p2, p3, v0, p1}, Labcd/Om;-><init>(Labcd/Rm;Labcd/Nm;Labcd/au;)V

    return-object p2
.end method

.method public j6(Labcd/Ps;)V
    .registers 7

    invoke-virtual {p1}, Labcd/Xt;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v1, v0, :cond_19

    invoke-virtual {p1, v1}, Labcd/Ps;->get(I)Labcd/Qs;

    move-result-object v3

    iget-object v4, p0, Labcd/Om;->j6:Labcd/Rm;

    invoke-virtual {v4, v2, v3}, Labcd/Rm;->j6(ILabcd/Rs;)V

    invoke-virtual {v3}, Labcd/Qs;->Zo()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_19
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

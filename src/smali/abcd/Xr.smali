.class public final Labcd/Xr;
.super Labcd/hu;


# instance fields
.field private final DW:I

.field private final FH:Labcd/ds;

.field private final Hw:[Labcd/ds;

.field private final v5:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Labcd/Tr;",
            "Labcd/bs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Labcd/fs;)V
    .registers 6

    invoke-direct {p0}, Labcd/hu;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Labcd/fs;->j6()Labcd/Or;

    move-result-object v0

    invoke-virtual {v0}, Labcd/du;->rN()I

    move-result v1

    invoke-virtual {v0}, Labcd/Or;->BT()I

    move-result v2

    iput v2, p0, Labcd/Xr;->DW:I

    new-instance v2, Labcd/ds;

    iget v3, p0, Labcd/Xr;->DW:I

    invoke-direct {v2, v3}, Labcd/ds;-><init>(I)V

    iput-object v2, p0, Labcd/Xr;->FH:Labcd/ds;

    new-array v1, v1, [Labcd/ds;

    iput-object v1, p0, Labcd/Xr;->Hw:[Labcd/ds;

    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {v0}, Labcd/Or;->yS()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Labcd/Xr;->v5:Ljava/util/HashMap;

    iget-object v0, p0, Labcd/Xr;->FH:Labcd/ds;

    invoke-virtual {v0}, Labcd/hu;->we()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private Hw(I)Labcd/ds;
    .registers 4

    :try_start_0
    iget-object v0, p0, Labcd/Xr;->Hw:[Labcd/ds;

    aget-object v0, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus label"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public DW(I)Labcd/ds;
    .registers 3

    invoke-direct {p0, p1}, Labcd/Xr;->Hw(I)Labcd/ds;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Labcd/Xr;->FH:Labcd/ds;

    goto :goto_0
.end method

.method public DW(ILabcd/ds;)V
    .registers 5

    invoke-virtual {p0}, Labcd/hu;->J8()V

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Labcd/Xr;->Hw:[Labcd/ds;

    aput-object p2, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus label"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "specs == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public FH(I)Labcd/ds;
    .registers 4

    invoke-direct {p0, p1}, Labcd/Xr;->Hw(I)Labcd/ds;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Labcd/ds;->rN()Labcd/ds;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Labcd/ds;

    iget v1, p0, Labcd/Xr;->DW:I

    invoke-direct {v0, v1}, Labcd/ds;-><init>(I)V

    goto :goto_0
.end method

.method public j6(Labcd/Tr;)Labcd/bs;
    .registers 3

    iget-object v0, p0, Labcd/Xr;->v5:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/bs;

    return-object v0
.end method

.method public j6(Labcd/Nr;)Labcd/ds;
    .registers 3

    invoke-virtual {p1}, Labcd/Nr;->DW()I

    move-result v0

    invoke-virtual {p0, v0}, Labcd/Xr;->DW(I)Labcd/ds;

    move-result-object v0

    return-object v0
.end method

.method public j6(Labcd/Tr;Labcd/bs;)V
    .registers 5

    invoke-virtual {p0}, Labcd/hu;->J8()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, p0, Labcd/Xr;->v5:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "spec == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "insn == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j6(ILabcd/ds;)Z
    .registers 7

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Labcd/Xr;->Hw(I)Labcd/ds;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p0, p1, p2}, Labcd/Xr;->DW(ILabcd/ds;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v2}, Labcd/ds;->rN()Labcd/ds;

    move-result-object v0

    invoke-virtual {v2}, Labcd/ds;->size()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, p2, v1}, Labcd/ds;->j6(Labcd/ds;Z)V

    :goto_1
    invoke-virtual {v2, v0}, Labcd/ds;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Labcd/ds;->rN()Labcd/ds;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Labcd/hu;->we()V

    invoke-virtual {p0, p1, v0}, Labcd/Xr;->DW(ILabcd/ds;)V

    move v0, v1

    goto :goto_0
.end method

.method public lg()I
    .registers 2

    iget-object v0, p0, Labcd/Xr;->v5:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

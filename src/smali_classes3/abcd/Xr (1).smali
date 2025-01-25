.class public final Labcd/Xr;
.super Labcd/hu;


# instance fields
.field private final DW:I

.field private final FH:Labcd/ds;

.field private final Hw:[Labcd/ds;

.field private final v5:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Labcd/Tr;",
            "Labcd/bs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Labcd/fs;)V
    .registers 5

    invoke-direct {p0}, Labcd/hu;-><init>()V

    if-eqz p1, :cond_2d

    invoke-virtual {p1}, Labcd/fs;->j6()Labcd/Or;

    move-result-object p1

    invoke-virtual {p1}, Labcd/du;->rN()I

    move-result v0

    invoke-virtual {p1}, Labcd/Or;->BT()I

    move-result v1

    iput v1, p0, Labcd/Xr;->DW:I

    new-instance v2, Labcd/ds;

    invoke-direct {v2, v1}, Labcd/ds;-><init>(I)V

    iput-object v2, p0, Labcd/Xr;->FH:Labcd/ds;

    new-array v0, v0, [Labcd/ds;

    iput-object v0, p0, Labcd/Xr;->Hw:[Labcd/ds;

    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p1}, Labcd/Or;->yS()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Labcd/Xr;->v5:Ljava/util/HashMap;

    invoke-virtual {v2}, Labcd/hu;->we()V

    return-void

    :cond_2d
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "method == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private Hw(I)Labcd/ds;
    .registers 3

    :try_start_0
    iget-object v0, p0, Labcd/Xr;->Hw:[Labcd/ds;

    aget-object p1, v0, p1
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
    move-exception p1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bogus label"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public DW(I)Labcd/ds;
    .registers 2

    invoke-direct {p0, p1}, Labcd/Xr;->Hw(I)Labcd/ds;

    move-result-object p1

    if-eqz p1, :cond_7

    goto :goto_9

    :cond_7
    iget-object p1, p0, Labcd/Xr;->FH:Labcd/ds;

    :goto_9
    return-object p1
.end method

.method public DW(ILabcd/ds;)V
    .registers 4

    invoke-virtual {p0}, Labcd/hu;->J8()V

    if-eqz p2, :cond_13

    :try_start_5
    iget-object v0, p0, Labcd/Xr;->Hw:[Labcd/ds;

    aput-object p2, v0, p1
    :try_end_9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bogus label"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "specs == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public FH(I)Labcd/ds;
    .registers 3

    invoke-direct {p0, p1}, Labcd/Xr;->Hw(I)Labcd/ds;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Labcd/ds;->rN()Labcd/ds;

    move-result-object p1

    goto :goto_12

    :cond_b
    new-instance p1, Labcd/ds;

    iget v0, p0, Labcd/Xr;->DW:I

    invoke-direct {p1, v0}, Labcd/ds;-><init>(I)V

    :goto_12
    return-object p1
.end method

.method public j6(Labcd/Tr;)Labcd/bs;
    .registers 3

    iget-object v0, p0, Labcd/Xr;->v5:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/bs;

    return-object p1
.end method

.method public j6(Labcd/Nr;)Labcd/ds;
    .registers 2

    invoke-virtual {p1}, Labcd/Nr;->DW()I

    move-result p1

    invoke-virtual {p0, p1}, Labcd/Xr;->DW(I)Labcd/ds;

    move-result-object p1

    return-object p1
.end method

.method public j6(Labcd/Tr;Labcd/bs;)V
    .registers 4

    invoke-virtual {p0}, Labcd/hu;->J8()V

    if-eqz p1, :cond_15

    if-eqz p2, :cond_d

    iget-object v0, p0, Labcd/Xr;->v5:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_d
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "spec == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_15
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "insn == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j6(ILabcd/ds;)Z
    .registers 7

    invoke-direct {p0, p1}, Labcd/Xr;->Hw(I)Labcd/ds;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_b

    invoke-virtual {p0, p1, p2}, Labcd/Xr;->DW(ILabcd/ds;)V

    return v1

    :cond_b
    invoke-virtual {v0}, Labcd/ds;->rN()Labcd/ds;

    move-result-object v2

    invoke-virtual {v0}, Labcd/ds;->size()I

    move-result v3

    if-eqz v3, :cond_19

    invoke-virtual {v2, p2, v1}, Labcd/ds;->j6(Labcd/ds;Z)V

    goto :goto_1d

    :cond_19
    invoke-virtual {p2}, Labcd/ds;->rN()Labcd/ds;

    move-result-object v2

    :goto_1d
    invoke-virtual {v0, v2}, Labcd/ds;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_25

    const/4 p1, 0x0

    return p1

    :cond_25
    invoke-virtual {v2}, Labcd/hu;->we()V

    invoke-virtual {p0, p1, v2}, Labcd/Xr;->DW(ILabcd/ds;)V

    return v1
.end method

.method public lg()I
    .registers 2

    iget-object v0, p0, Labcd/Xr;->v5:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

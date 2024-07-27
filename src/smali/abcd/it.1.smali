.class public Labcd/it;
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
            "Labcd/vt;",
            "Labcd/bs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Labcd/yt;)V
    .registers 5

    invoke-direct {p0}, Labcd/hu;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Labcd/yt;->u7()I

    move-result v1

    iput v1, p0, Labcd/it;->DW:I

    new-instance v1, Labcd/ds;

    iget v2, p0, Labcd/it;->DW:I

    invoke-direct {v1, v2}, Labcd/ds;-><init>(I)V

    iput-object v1, p0, Labcd/it;->FH:Labcd/ds;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Labcd/ds;

    iput-object v0, p0, Labcd/it;->Hw:[Labcd/ds;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Labcd/it;->v5:Ljava/util/HashMap;

    iget-object v0, p0, Labcd/it;->FH:Labcd/ds;

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
    iget-object v0, p0, Labcd/it;->Hw:[Labcd/ds;

    aget-object v0, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public DW(I)Labcd/ds;
    .registers 3

    invoke-direct {p0, p1}, Labcd/it;->Hw(I)Labcd/ds;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Labcd/it;->FH:Labcd/ds;

    goto :goto_0
.end method

.method public DW(ILabcd/ds;)V
    .registers 5

    invoke-virtual {p0}, Labcd/hu;->J8()V

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Labcd/it;->Hw:[Labcd/ds;

    aput-object p2, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus index"

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

    invoke-direct {p0, p1}, Labcd/it;->Hw(I)Labcd/ds;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Labcd/ds;->rN()Labcd/ds;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Labcd/ds;

    iget v1, p0, Labcd/it;->DW:I

    invoke-direct {v0, v1}, Labcd/ds;-><init>(I)V

    goto :goto_0
.end method

.method public j6(Labcd/vt;Labcd/bs;)V
    .registers 5

    invoke-virtual {p0}, Labcd/hu;->J8()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, p0, Labcd/it;->v5:Ljava/util/HashMap;

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
    .registers 6

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Labcd/it;->Hw(I)Labcd/ds;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1, p2}, Labcd/it;->DW(ILabcd/ds;)V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v1}, Labcd/ds;->rN()Labcd/ds;

    move-result-object v2

    invoke-virtual {v2, p2, v0}, Labcd/ds;->j6(Labcd/ds;Z)V

    invoke-virtual {v1, v2}, Labcd/ds;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Labcd/hu;->we()V

    invoke-virtual {p0, p1, v2}, Labcd/it;->DW(ILabcd/ds;)V

    goto :goto_0
.end method

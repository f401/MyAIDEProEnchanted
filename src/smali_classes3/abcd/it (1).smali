.class public Labcd/it;
.super Labcd/hu;


# instance fields
.field private final DW:I

.field private final FH:Labcd/ds;

.field private final Hw:[Labcd/ds;

.field private final v5:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Labcd/vt;",
            "Labcd/bs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Labcd/yt;)V
    .registers 4

    invoke-direct {p0}, Labcd/hu;-><init>()V

    if-eqz p1, :cond_29

    invoke-virtual {p1}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Labcd/yt;->u7()I

    move-result p1

    iput p1, p0, Labcd/it;->DW:I

    new-instance v1, Labcd/ds;

    invoke-direct {v1, p1}, Labcd/ds;-><init>(I)V

    iput-object v1, p0, Labcd/it;->FH:Labcd/ds;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Labcd/ds;

    iput-object p1, p0, Labcd/it;->Hw:[Labcd/ds;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Labcd/it;->v5:Ljava/util/HashMap;

    invoke-virtual {v1}, Labcd/hu;->we()V

    return-void

    :cond_29
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "method == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private Hw(I)Labcd/ds;
    .registers 3

    :try_start_0
    iget-object v0, p0, Labcd/it;->Hw:[Labcd/ds;

    aget-object p1, v0, p1
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
    move-exception p1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bogus index"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public DW(I)Labcd/ds;
    .registers 2

    invoke-direct {p0, p1}, Labcd/it;->Hw(I)Labcd/ds;

    move-result-object p1

    if-eqz p1, :cond_7

    goto :goto_9

    :cond_7
    iget-object p1, p0, Labcd/it;->FH:Labcd/ds;

    :goto_9
    return-object p1
.end method

.method public DW(ILabcd/ds;)V
    .registers 4

    invoke-virtual {p0}, Labcd/hu;->J8()V

    if-eqz p2, :cond_13

    :try_start_5
    iget-object v0, p0, Labcd/it;->Hw:[Labcd/ds;

    aput-object p2, v0, p1
    :try_end_9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bogus index"

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

    invoke-direct {p0, p1}, Labcd/it;->Hw(I)Labcd/ds;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Labcd/ds;->rN()Labcd/ds;

    move-result-object p1

    goto :goto_12

    :cond_b
    new-instance p1, Labcd/ds;

    iget v0, p0, Labcd/it;->DW:I

    invoke-direct {p1, v0}, Labcd/ds;-><init>(I)V

    :goto_12
    return-object p1
.end method

.method public j6(Labcd/vt;Labcd/bs;)V
    .registers 4

    invoke-virtual {p0}, Labcd/hu;->J8()V

    if-eqz p1, :cond_15

    if-eqz p2, :cond_d

    iget-object v0, p0, Labcd/it;->v5:Ljava/util/HashMap;

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
    .registers 6

    invoke-direct {p0, p1}, Labcd/it;->Hw(I)Labcd/ds;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_b

    invoke-virtual {p0, p1, p2}, Labcd/it;->DW(ILabcd/ds;)V

    return v1

    :cond_b
    invoke-virtual {v0}, Labcd/ds;->rN()Labcd/ds;

    move-result-object v2

    invoke-virtual {v2, p2, v1}, Labcd/ds;->j6(Labcd/ds;Z)V

    invoke-virtual {v0, v2}, Labcd/ds;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1a

    const/4 p1, 0x0

    return p1

    :cond_1a
    invoke-virtual {v2}, Labcd/hu;->we()V

    invoke-virtual {p0, p1, v2}, Labcd/it;->DW(ILabcd/ds;)V

    return v1
.end method

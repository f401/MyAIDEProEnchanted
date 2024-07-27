.class public final Labcd/Po;
.super Labcd/ao;


# static fields
.field public static final DW:Labcd/ao;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/Po;

    invoke-direct {v0}, Labcd/Po;-><init>()V

    sput-object v0, Labcd/Po;->DW:Labcd/ao;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/ao;-><init>()V

    return-void
.end method


# virtual methods
.method public FH(Labcd/Vn;)Ljava/util/BitSet;
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Labcd/Vn;->gn()Labcd/cs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result v1

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v1}, Ljava/util/BitSet;-><init>(I)V

    invoke-virtual {v0, v4}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v3

    invoke-virtual {v3}, Labcd/bs;->we()I

    move-result v3

    invoke-static {v3}, Labcd/ao;->Hw(I)Z

    move-result v3

    if-ne v1, v5, :cond_1

    invoke-virtual {v2, v4, v3}, Ljava/util/BitSet;->set(IZ)V

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {v0, v4}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v1

    invoke-virtual {v1}, Labcd/bs;->we()I

    move-result v1

    invoke-virtual {v0, v5}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v0

    if-ne v1, v0, :cond_0

    invoke-virtual {v2, v4, v3}, Ljava/util/BitSet;->set(IZ)V

    invoke-virtual {v2, v5, v3}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_0
.end method

.method public VH(Labcd/Vn;)Z
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-boolean v0, Labcd/ao;->j6:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v0, p1, Labcd/Tn;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Labcd/Vn;->gn()Labcd/cs;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Xt;->size()I

    move-result v0

    if-eq v0, v2, :cond_3

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    invoke-virtual {v3, v1}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v4

    invoke-virtual {v3, v2}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v3

    invoke-virtual {v3}, Labcd/bs;->we()I

    move-result v3

    if-ne v4, v3, :cond_0

    :goto_1
    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v0

    invoke-static {v0}, Labcd/ao;->Zo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Labcd/Tn;

    invoke-virtual {p1}, Labcd/Tn;->we()Labcd/ms;

    move-result-object v0

    instance-of v3, v0, Labcd/Ks;

    if-nez v3, :cond_2

    instance-of v0, v0, Labcd/ws;

    if-eqz v0, :cond_4

    :cond_2
    move v0, v2

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v3, v1}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public Zo(Labcd/Vn;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p1}, Labcd/Vn;->gn()Labcd/cs;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->lg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Labcd/ao;->v5(Labcd/Vn;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j6()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public j6(Labcd/Vn;Z)Ljava/lang/String;
    .registers 4

    if-eqz p2, :cond_0

    invoke-static {p1}, Labcd/ao;->Hw(Labcd/Vn;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public j6(Labcd/Lt;Labcd/Vn;)V
    .registers 7

    invoke-virtual {p2}, Labcd/Vn;->gn()Labcd/cs;

    move-result-object v1

    move-object v0, p2

    check-cast v0, Labcd/Tn;

    invoke-virtual {v0}, Labcd/Tn;->J0()I

    move-result v0

    invoke-static {p2}, Labcd/ao;->gn(Labcd/Vn;)S

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v1

    invoke-virtual {v1}, Labcd/bs;->we()I

    move-result v1

    int-to-short v1, v1

    invoke-static {p1, v2, v0, v1}, Labcd/ao;->j6(Labcd/Lt;SIS)V

    return-void
.end method

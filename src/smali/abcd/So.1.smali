.class public final Labcd/So;
.super Labcd/ao;


# static fields
.field public static final DW:Labcd/ao;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/So;

    invoke-direct {v0}, Labcd/So;-><init>()V

    sput-object v0, Labcd/So;->DW:Labcd/ao;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/ao;-><init>()V

    return-void
.end method


# virtual methods
.method public VH(Labcd/Vn;)Z
    .registers 5

    const/4 v0, 0x0

    sget-boolean v1, Labcd/ao;->j6:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Labcd/Tn;

    if-eqz v1, :cond_0

    check-cast p1, Labcd/Tn;

    invoke-virtual {p1}, Labcd/Tn;->we()Labcd/ms;

    move-result-object v1

    instance-of v2, v1, Labcd/Gs;

    if-nez v2, :cond_2

    instance-of v1, v1, Labcd/Ks;

    if-eqz v1, :cond_0

    :cond_2
    invoke-virtual {p1}, Labcd/Vn;->gn()Labcd/cs;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Xt;->size()I

    invoke-virtual {v1}, Labcd/Xt;->size()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Labcd/ao;->j6(Labcd/cs;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v2

    invoke-virtual {v2}, Labcd/bs;->we()I

    move-result v2

    invoke-static {v2}, Labcd/ao;->Zo(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Labcd/cs;->rN()I

    move-result v1

    invoke-static {v1}, Labcd/ao;->Zo(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public Zo(Labcd/Vn;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Labcd/Vn;->gn()Labcd/cs;

    move-result-object v1

    invoke-static {v1}, Labcd/ao;->FH(Labcd/cs;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Labcd/ao;->v5(Labcd/Vn;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j6()I
    .registers 2

    const/4 v0, 0x5

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

    const/4 v1, 0x0

    invoke-virtual {p2}, Labcd/Vn;->gn()Labcd/cs;

    move-result-object v2

    move-object v0, p2

    check-cast v0, Labcd/Tn;

    invoke-virtual {v0}, Labcd/Tn;->J0()I

    move-result v3

    invoke-virtual {v2}, Labcd/Xt;->size()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2}, Labcd/cs;->rN()I

    move-result v1

    invoke-static {p2}, Labcd/ao;->gn(Labcd/Vn;)S

    move-result v2

    int-to-short v1, v1

    int-to-short v0, v0

    invoke-static {p1, v2, v3, v1, v0}, Labcd/ao;->j6(Labcd/Lt;SISS)V

    return-void

    :cond_0
    invoke-virtual {v2, v1}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v0

    goto :goto_0
.end method

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

    sget-boolean v0, Labcd/ao;->j6:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    instance-of v0, p1, Labcd/Tn;

    if-nez v0, :cond_b

    return v1

    :cond_b
    check-cast p1, Labcd/Tn;

    invoke-virtual {p1}, Labcd/Tn;->we()Labcd/ms;

    move-result-object v0

    instance-of v2, v0, Labcd/Gs;

    if-nez v2, :cond_1a

    instance-of v0, v0, Labcd/Ks;

    if-nez v0, :cond_1a

    return v1

    :cond_1a
    invoke-virtual {p1}, Labcd/Vn;->gn()Labcd/cs;

    move-result-object p1

    invoke-virtual {p1}, Labcd/Xt;->size()I

    invoke-virtual {p1}, Labcd/Xt;->size()I

    move-result v0

    if-eqz v0, :cond_45

    invoke-static {p1}, Labcd/ao;->j6(Labcd/cs;)Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-virtual {p1, v1}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v0

    invoke-static {v0}, Labcd/ao;->Zo(I)Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-virtual {p1}, Labcd/cs;->rN()I

    move-result p1

    invoke-static {p1}, Labcd/ao;->Zo(I)Z

    move-result p1

    if-eqz p1, :cond_46

    :cond_45
    const/4 v1, 0x1

    :cond_46
    return v1
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

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j6()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method

.method public j6(Labcd/Vn;Z)Ljava/lang/String;
    .registers 3

    if-eqz p2, :cond_7

    invoke-static {p1}, Labcd/ao;->Hw(Labcd/Vn;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    const-string p1, ""

    return-object p1
.end method

.method public j6(Labcd/Lt;Labcd/Vn;)V
    .registers 7

    invoke-virtual {p2}, Labcd/Vn;->gn()Labcd/cs;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Labcd/Tn;

    invoke-virtual {v1}, Labcd/Tn;->J0()I

    move-result v1

    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_13

    goto :goto_1b

    :cond_13
    invoke-virtual {v0, v3}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v2

    invoke-virtual {v2}, Labcd/bs;->we()I

    move-result v3

    :goto_1b
    invoke-virtual {v0}, Labcd/cs;->rN()I

    move-result v0

    invoke-static {p2}, Labcd/ao;->gn(Labcd/Vn;)S

    move-result p2

    int-to-short v0, v0

    int-to-short v2, v3

    invoke-static {p1, p2, v1, v0, v2}, Labcd/ao;->j6(Labcd/Lt;SISS)V

    return-void
.end method

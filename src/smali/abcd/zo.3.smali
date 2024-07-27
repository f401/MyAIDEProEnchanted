.class public final Labcd/zo;
.super Labcd/ao;


# static fields
.field public static final DW:Labcd/ao;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/zo;

    invoke-direct {v0}, Labcd/zo;-><init>()V

    sput-object v0, Labcd/zo;->DW:Labcd/ao;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/ao;-><init>()V

    return-void
.end method


# virtual methods
.method public FH(Labcd/Vn;)Ljava/util/BitSet;
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p1}, Labcd/Vn;->gn()Labcd/cs;

    move-result-object v0

    new-instance v1, Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    invoke-virtual {v0, v3}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v0

    invoke-static {v0}, Labcd/ao;->Hw(I)Z

    move-result v0

    invoke-virtual {v1, v3, v0}, Ljava/util/BitSet;->set(IZ)V

    return-object v1
.end method

.method public VH(Labcd/Vn;)Z
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Labcd/Vn;->gn()Labcd/cs;

    move-result-object v3

    instance-of v0, p1, Labcd/Tn;

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Labcd/Xt;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {v3, v2}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v0

    invoke-static {v0}, Labcd/ao;->Hw(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    check-cast p1, Labcd/Tn;

    invoke-virtual {p1}, Labcd/Tn;->we()Labcd/ms;

    move-result-object v0

    instance-of v4, v0, Labcd/Ds;

    if-eqz v4, :cond_0

    check-cast v0, Labcd/Ds;

    invoke-virtual {v3, v2}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v3

    invoke-virtual {v3}, Labcd/bs;->Hw()I

    move-result v3

    if-ne v3, v1, :cond_2

    invoke-virtual {v0}, Labcd/Ds;->Ws()I

    move-result v0

    const v3, 0xffff

    and-int/2addr v0, v3

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Labcd/Ds;->lg()J

    move-result-wide v4

    const-wide v6, 0xffffffffffffL

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public Zo(Labcd/Vn;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p1}, Labcd/Vn;->gn()Labcd/cs;

    move-result-object v1

    check-cast p1, Labcd/Tn;

    invoke-virtual {p1}, Labcd/Tn;->we()Labcd/ms;

    move-result-object v0

    check-cast v0, Labcd/Ds;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v1

    invoke-virtual {v1}, Labcd/bs;->lg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Labcd/ao;->j6(Labcd/Ds;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j6()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public j6(Labcd/Vn;Z)Ljava/lang/String;
    .registers 6

    invoke-virtual {p1}, Labcd/Vn;->gn()Labcd/cs;

    move-result-object v1

    check-cast p1, Labcd/Tn;

    invoke-virtual {p1}, Labcd/Tn;->we()Labcd/ms;

    move-result-object v0

    check-cast v0, Labcd/Ds;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v1

    invoke-virtual {v1}, Labcd/bs;->Hw()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/16 v1, 0x20

    :goto_0
    invoke-static {v0, v1}, Labcd/ao;->j6(Labcd/Ds;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v1, 0x40

    goto :goto_0
.end method

.method public j6(Labcd/Lt;Labcd/Vn;)V
    .registers 8

    const/4 v4, 0x0

    invoke-virtual {p2}, Labcd/Vn;->gn()Labcd/cs;

    move-result-object v1

    move-object v0, p2

    check-cast v0, Labcd/Tn;

    invoke-virtual {v0}, Labcd/Tn;->we()Labcd/ms;

    move-result-object v0

    check-cast v0, Labcd/Ds;

    invoke-virtual {v1, v4}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v2

    invoke-virtual {v2}, Labcd/bs;->Hw()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Labcd/Ds;->Ws()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x10

    :goto_0
    int-to-short v0, v0

    invoke-virtual {v1, v4}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v1

    invoke-virtual {v1}, Labcd/bs;->we()I

    move-result v1

    invoke-static {p2, v1}, Labcd/ao;->j6(Labcd/Vn;I)S

    move-result v1

    invoke-static {p1, v1, v0}, Labcd/ao;->j6(Labcd/Lt;SS)V

    return-void

    :cond_0
    invoke-virtual {v0}, Labcd/Ds;->lg()J

    move-result-wide v2

    const/16 v0, 0x30

    ushr-long/2addr v2, v0

    long-to-int v0, v2

    goto :goto_0
.end method

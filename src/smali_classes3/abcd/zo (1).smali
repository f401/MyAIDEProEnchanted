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
    .registers 4

    invoke-virtual {p1}, Labcd/Vn;->gn()Labcd/cs;

    move-result-object p1

    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object p1

    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result p1

    invoke-static {p1}, Labcd/ao;->Hw(I)Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-object v0
.end method

.method public VH(Labcd/Vn;)Z
    .registers 8

    invoke-virtual {p1}, Labcd/Vn;->gn()Labcd/cs;

    move-result-object v0

    instance-of v1, p1, Labcd/Tn;

    const/4 v2, 0x0

    if-eqz v1, :cond_53

    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_53

    invoke-virtual {v0, v2}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v1

    invoke-virtual {v1}, Labcd/bs;->we()I

    move-result v1

    invoke-static {v1}, Labcd/ao;->Hw(I)Z

    move-result v1

    if-nez v1, :cond_1f

    goto :goto_53

    :cond_1f
    check-cast p1, Labcd/Tn;

    invoke-virtual {p1}, Labcd/Tn;->we()Labcd/ms;

    move-result-object p1

    instance-of v1, p1, Labcd/Ds;

    if-nez v1, :cond_2a

    return v2

    :cond_2a
    check-cast p1, Labcd/Ds;

    invoke-virtual {v0, v2}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->Hw()I

    move-result v0

    if-ne v0, v3, :cond_42

    invoke-virtual {p1}, Labcd/Ds;->Ws()I

    move-result p1

    const v0, 0xffff

    and-int/2addr p1, v0

    if-nez p1, :cond_41

    const/4 v2, 0x1

    :cond_41
    return v2

    :cond_42
    invoke-virtual {p1}, Labcd/Ds;->lg()J

    move-result-wide v0

    const-wide v4, 0xffffffffffffL

    and-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-nez p1, :cond_53

    const/4 v2, 0x1

    :cond_53
    :goto_53
    return v2
.end method

.method public Zo(Labcd/Vn;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p1}, Labcd/Vn;->gn()Labcd/cs;

    move-result-object v0

    check-cast p1, Labcd/Tn;

    invoke-virtual {p1}, Labcd/Tn;->we()Labcd/ms;

    move-result-object p1

    check-cast p1, Labcd/Ds;

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

    invoke-static {p1}, Labcd/ao;->j6(Labcd/Ds;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j6()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public j6(Labcd/Vn;Z)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Labcd/Vn;->gn()Labcd/cs;

    move-result-object p2

    check-cast p1, Labcd/Tn;

    invoke-virtual {p1}, Labcd/Tn;->we()Labcd/ms;

    move-result-object p1

    check-cast p1, Labcd/Ds;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object p2

    invoke-virtual {p2}, Labcd/bs;->Hw()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1b

    const/16 p2, 0x20

    goto :goto_1d

    :cond_1b
    const/16 p2, 0x40

    :goto_1d
    invoke-static {p1, p2}, Labcd/ao;->j6(Labcd/Ds;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j6(Labcd/Lt;Labcd/Vn;)V
    .registers 8

    invoke-virtual {p2}, Labcd/Vn;->gn()Labcd/cs;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Labcd/Tn;

    invoke-virtual {v1}, Labcd/Tn;->we()Labcd/ms;

    move-result-object v1

    check-cast v1, Labcd/Ds;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v3

    invoke-virtual {v3}, Labcd/bs;->Hw()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_20

    invoke-virtual {v1}, Labcd/Ds;->Ws()I

    move-result v1

    ushr-int/lit8 v1, v1, 0x10

    goto :goto_28

    :cond_20
    invoke-virtual {v1}, Labcd/Ds;->lg()J

    move-result-wide v3

    const/16 v1, 0x30

    ushr-long/2addr v3, v1

    long-to-int v1, v3

    :goto_28
    int-to-short v1, v1

    invoke-virtual {v0, v2}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v0

    invoke-static {p2, v0}, Labcd/ao;->j6(Labcd/Vn;I)S

    move-result p2

    invoke-static {p1, p2, v1}, Labcd/ao;->j6(Labcd/Lt;SS)V

    return-void
.end method

.class public final Labcd/No;
.super Labcd/ao;


# static fields
.field public static final DW:Labcd/ao;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/No;

    invoke-direct {v0}, Labcd/No;-><init>()V

    sput-object v0, Labcd/No;->DW:Labcd/ao;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/ao;-><init>()V

    return-void
.end method

.method private static Hw(Labcd/cs;)Labcd/cs;
    .registers 8

    const/4 v0, 0x0

    invoke-static {p0}, Labcd/No;->v5(Labcd/cs;)I

    move-result v2

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v4

    if-ne v2, v4, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v1, Labcd/cs;

    invoke-direct {v1, v2}, Labcd/cs;-><init>(I)V

    move v2, v0

    move v3, v0

    :goto_1
    if-ge v2, v4, :cond_2

    invoke-virtual {p0, v2}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Labcd/cs;->j6(ILabcd/bs;)V

    invoke-virtual {v0}, Labcd/bs;->Hw()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sget-object v6, Labcd/Qs;->tp:Labcd/Qs;

    invoke-static {v0, v6}, Labcd/bs;->j6(ILabcd/Rs;)Labcd/bs;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Labcd/cs;->j6(ILabcd/bs;)V

    add-int/lit8 v0, v3, 0x2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v3, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Labcd/hu;->we()V

    move-object p0, v1

    goto :goto_0
.end method

.method private static v5(Labcd/cs;)I
    .registers 8

    const/4 v6, 0x5

    const/4 v3, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v4

    if-le v4, v6, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v2, v3

    move v0, v3

    :goto_1
    if-ge v2, v4, :cond_2

    invoke-virtual {p0, v2}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v3

    invoke-virtual {v3}, Labcd/bs;->Hw()I

    move-result v5

    add-int/2addr v0, v5

    invoke-virtual {v3}, Labcd/bs;->we()I

    move-result v5

    invoke-virtual {v3}, Labcd/bs;->Hw()I

    move-result v3

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Labcd/ao;->v5(I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    if-gt v0, v6, :cond_3

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public FH(Labcd/Vn;)Ljava/util/BitSet;
    .registers 8

    invoke-virtual {p1}, Labcd/Vn;->gn()Labcd/cs;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Xt;->size()I

    move-result v2

    new-instance v3, Ljava/util/BitSet;

    invoke-direct {v3, v2}, Ljava/util/BitSet;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v4

    invoke-virtual {v4}, Labcd/bs;->we()I

    move-result v5

    invoke-virtual {v4}, Labcd/bs;->Hw()I

    move-result v4

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Labcd/ao;->v5(I)Z

    move-result v4

    invoke-virtual {v3, v0, v4}, Ljava/util/BitSet;->set(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public VH(Labcd/Vn;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Labcd/Tn;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Labcd/Tn;

    invoke-virtual {p1}, Labcd/Tn;->J0()I

    move-result v1

    invoke-static {v1}, Labcd/ao;->Zo(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Labcd/Tn;->we()Labcd/ms;

    move-result-object v1

    instance-of v2, v1, Labcd/Gs;

    if-nez v2, :cond_2

    instance-of v1, v1, Labcd/Ks;

    if-eqz v1, :cond_0

    :cond_2
    invoke-virtual {p1}, Labcd/Vn;->gn()Labcd/cs;

    move-result-object v1

    invoke-static {v1}, Labcd/No;->v5(Labcd/cs;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public Zo(Labcd/Vn;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Labcd/Vn;->gn()Labcd/cs;

    move-result-object v0

    invoke-static {v0}, Labcd/No;->Hw(Labcd/cs;)Labcd/cs;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Labcd/ao;->DW(Labcd/cs;)Ljava/lang/String;

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

    const/4 v0, 0x3

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
    .registers 14

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    move-object v0, p2

    check-cast v0, Labcd/Tn;

    invoke-virtual {v0}, Labcd/Tn;->J0()I

    move-result v6

    invoke-virtual {p2}, Labcd/Vn;->gn()Labcd/cs;

    move-result-object v0

    invoke-static {v0}, Labcd/No;->Hw(Labcd/cs;)Labcd/cs;

    move-result-object v7

    invoke-virtual {v7}, Labcd/Xt;->size()I

    move-result v8

    if-lez v8, :cond_0

    invoke-virtual {v7, v1}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v0

    move v5, v0

    :goto_0
    if-le v8, v2, :cond_1

    invoke-virtual {v7, v2}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v0

    move v4, v0

    :goto_1
    if-le v8, v3, :cond_2

    invoke-virtual {v7, v3}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v0

    move v3, v0

    :goto_2
    if-le v8, v9, :cond_3

    invoke-virtual {v7, v9}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v0

    move v2, v0

    :goto_3
    if-le v8, v10, :cond_4

    invoke-virtual {v7, v10}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v0

    :goto_4
    invoke-static {v0, v8}, Labcd/ao;->DW(II)I

    move-result v0

    invoke-static {p2, v0}, Labcd/ao;->j6(Labcd/Vn;I)S

    move-result v0

    int-to-short v1, v6

    invoke-static {v5, v4, v3, v2}, Labcd/ao;->j6(IIII)S

    move-result v2

    invoke-static {p1, v0, v1, v2}, Labcd/ao;->j6(Labcd/Lt;SSS)V

    return-void

    :cond_0
    move v5, v1

    goto :goto_0

    :cond_1
    move v4, v1

    goto :goto_1

    :cond_2
    move v3, v1

    goto :goto_2

    :cond_3
    move v2, v1

    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_4
.end method

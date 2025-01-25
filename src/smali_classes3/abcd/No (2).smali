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

    invoke-static {p0}, Labcd/No;->v5(Labcd/cs;)I

    move-result v0

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v1

    if-ne v0, v1, :cond_b

    return-object p0

    :cond_b
    new-instance v2, Labcd/cs;

    invoke-direct {v2, v0}, Labcd/cs;-><init>(I)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_12
    if-ge v0, v1, :cond_3b

    invoke-virtual {p0, v0}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Labcd/cs;->j6(ILabcd/bs;)V

    invoke-virtual {v4}, Labcd/bs;->Hw()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_36

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4}, Labcd/bs;->we()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    sget-object v6, Labcd/Qs;->tp:Labcd/Qs;

    invoke-static {v4, v6}, Labcd/bs;->j6(ILabcd/Rs;)Labcd/bs;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Labcd/cs;->j6(ILabcd/bs;)V

    add-int/lit8 v3, v3, 0x2

    goto :goto_38

    :cond_36
    add-int/lit8 v3, v3, 0x1

    :goto_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_3b
    invoke-virtual {v2}, Labcd/hu;->we()V

    return-object v2
.end method

.method private static v5(Labcd/cs;)I
    .registers 8

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x5

    if-le v0, v2, :cond_9

    return v1

    :cond_9
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_b
    if-ge v3, v0, :cond_2b

    invoke-virtual {p0, v3}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v5

    invoke-virtual {v5}, Labcd/bs;->Hw()I

    move-result v6

    add-int/2addr v4, v6

    invoke-virtual {v5}, Labcd/bs;->we()I

    move-result v6

    invoke-virtual {v5}, Labcd/bs;->Hw()I

    move-result v5

    add-int/2addr v6, v5

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Labcd/ao;->v5(I)Z

    move-result v5

    if-nez v5, :cond_28

    return v1

    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_2b
    if-gt v4, v2, :cond_2e

    move v1, v4

    :cond_2e
    return v1
.end method


# virtual methods
.method public FH(Labcd/Vn;)Ljava/util/BitSet;
    .registers 7

    invoke-virtual {p1}, Labcd/Vn;->gn()Labcd/cs;

    move-result-object p1

    invoke-virtual {p1}, Labcd/Xt;->size()I

    move-result v0

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v0, :cond_29

    invoke-virtual {p1, v2}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v3

    invoke-virtual {v3}, Labcd/bs;->we()I

    move-result v4

    invoke-virtual {v3}, Labcd/bs;->Hw()I

    move-result v3

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Labcd/ao;->v5(I)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/BitSet;->set(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_29
    return-object v1
.end method

.method public VH(Labcd/Vn;)Z
    .registers 5

    instance-of v0, p1, Labcd/Tn;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Labcd/Tn;

    invoke-virtual {p1}, Labcd/Tn;->J0()I

    move-result v0

    invoke-static {v0}, Labcd/ao;->Zo(I)Z

    move-result v0

    if-nez v0, :cond_13

    return v1

    :cond_13
    invoke-virtual {p1}, Labcd/Tn;->we()Labcd/ms;

    move-result-object v0

    instance-of v2, v0, Labcd/Gs;

    if-nez v2, :cond_20

    instance-of v0, v0, Labcd/Ks;

    if-nez v0, :cond_20

    return v1

    :cond_20
    invoke-virtual {p1}, Labcd/Vn;->gn()Labcd/cs;

    move-result-object p1

    invoke-static {p1}, Labcd/No;->v5(Labcd/cs;)I

    move-result p1

    if-ltz p1, :cond_2b

    const/4 v1, 0x1

    :cond_2b
    return v1
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

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j6()I
    .registers 2

    const/4 v0, 0x3

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
    .registers 12

    move-object v0, p2

    check-cast v0, Labcd/Tn;

    invoke-virtual {v0}, Labcd/Tn;->J0()I

    move-result v0

    invoke-virtual {p2}, Labcd/Vn;->gn()Labcd/cs;

    move-result-object v1

    invoke-static {v1}, Labcd/No;->Hw(Labcd/cs;)Labcd/cs;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Xt;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_1f

    invoke-virtual {v1, v3}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v4

    invoke-virtual {v4}, Labcd/bs;->we()I

    move-result v4

    goto :goto_20

    :cond_1f
    const/4 v4, 0x0

    :goto_20
    const/4 v5, 0x1

    if-le v2, v5, :cond_2c

    invoke-virtual {v1, v5}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v5

    invoke-virtual {v5}, Labcd/bs;->we()I

    move-result v5

    goto :goto_2d

    :cond_2c
    const/4 v5, 0x0

    :goto_2d
    const/4 v6, 0x2

    if-le v2, v6, :cond_39

    invoke-virtual {v1, v6}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v6

    invoke-virtual {v6}, Labcd/bs;->we()I

    move-result v6

    goto :goto_3a

    :cond_39
    const/4 v6, 0x0

    :goto_3a
    const/4 v7, 0x3

    if-le v2, v7, :cond_46

    invoke-virtual {v1, v7}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v7

    invoke-virtual {v7}, Labcd/bs;->we()I

    move-result v7

    goto :goto_47

    :cond_46
    const/4 v7, 0x0

    :goto_47
    const/4 v8, 0x4

    if-le v2, v8, :cond_52

    invoke-virtual {v1, v8}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v1

    invoke-virtual {v1}, Labcd/bs;->we()I

    move-result v3

    :cond_52
    invoke-static {v3, v2}, Labcd/ao;->DW(II)I

    move-result v1

    invoke-static {p2, v1}, Labcd/ao;->j6(Labcd/Vn;I)S

    move-result p2

    int-to-short v0, v0

    invoke-static {v4, v5, v6, v7}, Labcd/ao;->j6(IIII)S

    move-result v1

    invoke-static {p1, p2, v0, v1}, Labcd/ao;->j6(Labcd/Lt;SSS)V

    return-void
.end method

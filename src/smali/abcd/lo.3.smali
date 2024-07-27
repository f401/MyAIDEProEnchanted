.class public final Labcd/lo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/lo$a;,
        Labcd/lo$b;
    }
.end annotation


# instance fields
.field private final DW:Labcd/fs;

.field private EQ:Z

.field private final FH:I

.field private final Hw:Labcd/Xr;

.field private final VH:Labcd/lo$b;

.field private final Zo:Labcd/go;

.field private final gn:I

.field private final j6:Labcd/Fn;

.field private final tp:I

.field private u7:[I

.field private final v5:Labcd/On;


# direct methods
.method private constructor <init>(Labcd/fs;ILabcd/Xr;ILabcd/Fn;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Labcd/lo;->j6:Labcd/Fn;

    iput-object p1, p0, Labcd/lo;->DW:Labcd/fs;

    iput p2, p0, Labcd/lo;->FH:I

    iput-object p3, p0, Labcd/lo;->Hw:Labcd/Xr;

    new-instance v0, Labcd/On;

    invoke-direct {v0, p1}, Labcd/On;-><init>(Labcd/fs;)V

    iput-object v0, p0, Labcd/lo;->v5:Labcd/On;

    iput p4, p0, Labcd/lo;->tp:I

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/lo;->u7:[I

    invoke-static {p1, p4}, Labcd/lo;->j6(Labcd/fs;I)Z

    move-result v0

    iput-boolean v0, p0, Labcd/lo;->EQ:Z

    invoke-virtual {p1}, Labcd/fs;->j6()Labcd/Or;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Xt;->size()I

    move-result v2

    mul-int/lit8 v3, v2, 0x3

    invoke-virtual {v1}, Labcd/Or;->yS()I

    move-result v0

    add-int/2addr v0, v3

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Labcd/Xr;->lg()I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v0, v2

    :cond_0
    invoke-virtual {v1}, Labcd/Or;->BT()I

    move-result v2

    iget-boolean v1, p0, Labcd/lo;->EQ:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    add-int/2addr v1, v2

    iput v1, p0, Labcd/lo;->gn:I

    new-instance v1, Labcd/go;

    iget v2, p0, Labcd/lo;->gn:I

    invoke-direct {v1, p5, v0, v3, v2}, Labcd/go;-><init>(Labcd/Fn;III)V

    iput-object v1, p0, Labcd/lo;->Zo:Labcd/go;

    if-eqz p3, :cond_2

    new-instance v0, Labcd/lo$a;

    iget-object v1, p0, Labcd/lo;->Zo:Labcd/go;

    invoke-direct {v0, p0, v1, p3}, Labcd/lo$a;-><init>(Labcd/lo;Labcd/go;Labcd/Xr;)V

    iput-object v0, p0, Labcd/lo;->VH:Labcd/lo$b;

    :goto_1
    return-void

    :cond_1
    iget v1, p0, Labcd/lo;->tp:I

    goto :goto_0

    :cond_2
    new-instance v0, Labcd/lo$b;

    iget-object v1, p0, Labcd/lo;->Zo:Labcd/go;

    invoke-direct {v0, p0, v1}, Labcd/lo$b;-><init>(Labcd/lo;Labcd/go;)V

    iput-object v0, p0, Labcd/lo;->VH:Labcd/lo$b;

    goto :goto_1
.end method

.method private static DW(Labcd/Tr;)Labcd/cs;
    .registers 2

    invoke-virtual {p0}, Labcd/Tr;->VH()Labcd/bs;

    move-result-object v0

    invoke-static {p0, v0}, Labcd/lo;->DW(Labcd/Tr;Labcd/bs;)Labcd/cs;

    move-result-object v0

    return-object v0
.end method

.method private static DW(Labcd/Tr;Labcd/bs;)Labcd/cs;
    .registers 6

    const/4 v3, 0x1

    invoke-virtual {p0}, Labcd/Tr;->gn()Labcd/cs;

    move-result-object v0

    invoke-virtual {p0}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v1

    invoke-virtual {v1}, Labcd/es;->gn()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result v1

    invoke-virtual {v0, v3}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v2

    invoke-virtual {v2}, Labcd/bs;->we()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, v3}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-static {v1, v0}, Labcd/cs;->j6(Labcd/bs;Labcd/bs;)Labcd/cs;

    move-result-object v0

    :cond_0
    if-nez p1, :cond_1

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0, p1}, Labcd/cs;->DW(Labcd/bs;)Labcd/cs;

    move-result-object v0

    goto :goto_0
.end method

.method private DW()V
    .registers 15

    const/4 v5, -0x1

    const/4 v2, 0x0

    iget-object v0, p0, Labcd/lo;->DW:Labcd/fs;

    invoke-virtual {v0}, Labcd/fs;->j6()Labcd/Or;

    move-result-object v6

    invoke-virtual {v6}, Labcd/Xt;->size()I

    move-result v7

    invoke-virtual {v6}, Labcd/du;->rN()I

    move-result v0

    invoke-static {v0}, Labcd/Ot;->j6(I)[I

    move-result-object v8

    invoke-static {v0}, Labcd/Ot;->j6(I)[I

    move-result-object v9

    move v0, v2

    :goto_0
    if-ge v0, v7, :cond_0

    invoke-virtual {v6, v0}, Labcd/Or;->get(I)Labcd/Nr;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Nr;->DW()I

    move-result v1

    invoke-static {v8, v1}, Labcd/Ot;->Hw([II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-array v10, v7, [I

    iget-object v0, p0, Labcd/lo;->DW:Labcd/fs;

    invoke-virtual {v0}, Labcd/fs;->DW()I

    move-result v0

    move v3, v2

    :goto_1
    if-eq v0, v5, :cond_a

    :goto_2
    iget-object v1, p0, Labcd/lo;->DW:Labcd/fs;

    invoke-virtual {v1, v0}, Labcd/fs;->j6(I)Labcd/au;

    move-result-object v11

    invoke-virtual {v11}, Labcd/au;->size()I

    move-result v12

    move v4, v2

    :goto_3
    if-ge v4, v12, :cond_c

    invoke-virtual {v11, v4}, Labcd/au;->get(I)I

    move-result v1

    invoke-static {v9, v1}, Labcd/Ot;->FH([II)Z

    move-result v13

    if-eqz v13, :cond_2

    move v1, v3

    move v4, v0

    :goto_4
    if-eq v4, v5, :cond_1

    invoke-static {v8, v4}, Labcd/Ot;->j6([II)V

    invoke-static {v9, v4}, Labcd/Ot;->j6([II)V

    aput v4, v10, v1

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v6, v4}, Labcd/Or;->v5(I)Labcd/Nr;

    move-result-object v1

    invoke-virtual {v6, v1}, Labcd/Or;->j6(Labcd/Nr;)Labcd/Nr;

    move-result-object v3

    if-nez v3, :cond_5

    move v1, v0

    :cond_1
    invoke-static {v8, v2}, Labcd/Ot;->DW([II)I

    move-result v0

    move v3, v1

    goto :goto_1

    :cond_2
    invoke-static {v8, v1}, Labcd/Ot;->FH([II)Z

    move-result v13

    if-nez v13, :cond_4

    :cond_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_3

    :cond_4
    invoke-virtual {v6, v1}, Labcd/Or;->v5(I)Labcd/Nr;

    move-result-object v13

    invoke-virtual {v13}, Labcd/Nr;->Zo()I

    move-result v13

    if-ne v13, v0, :cond_3

    invoke-static {v9, v1}, Labcd/Ot;->Hw([II)V

    move v0, v1

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Labcd/Nr;->DW()I

    move-result v3

    invoke-virtual {v1}, Labcd/Nr;->Zo()I

    move-result v4

    invoke-static {v8, v3}, Labcd/Ot;->FH([II)Z

    move-result v11

    if-eqz v11, :cond_6

    move v1, v0

    move v4, v3

    goto :goto_4

    :cond_6
    if-eq v4, v3, :cond_7

    if-ltz v4, :cond_7

    invoke-static {v8, v4}, Labcd/Ot;->FH([II)Z

    move-result v3

    if-eqz v3, :cond_7

    move v1, v0

    goto :goto_4

    :cond_7
    invoke-virtual {v1}, Labcd/Nr;->gn()Labcd/au;

    move-result-object v4

    invoke-virtual {v4}, Labcd/au;->size()I

    move-result v11

    move v1, v2

    :goto_5
    if-ge v1, v11, :cond_9

    invoke-virtual {v4, v1}, Labcd/au;->get(I)I

    move-result v3

    invoke-static {v8, v3}, Labcd/Ot;->FH([II)Z

    move-result v12

    if-eqz v12, :cond_8

    move v1, v0

    move v4, v3

    goto :goto_4

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_9
    move v1, v0

    move v4, v5

    goto :goto_4

    :cond_a
    if-ne v3, v7, :cond_b

    iput-object v10, p0, Labcd/lo;->u7:[I

    return-void

    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    move v1, v3

    move v4, v0

    goto :goto_4
.end method

.method static synthetic DW(Labcd/lo;)Z
    .registers 2

    iget-boolean v0, p0, Labcd/lo;->EQ:Z

    return v0
.end method

.method static synthetic FH(Labcd/lo;)I
    .registers 2

    iget v0, p0, Labcd/lo;->gn:I

    return v0
.end method

.method private FH()Labcd/Un;
    .registers 5

    invoke-direct {p0}, Labcd/lo;->DW()V

    invoke-direct {p0}, Labcd/lo;->j6()V

    new-instance v0, Labcd/no;

    iget-object v1, p0, Labcd/lo;->DW:Labcd/fs;

    iget-object v2, p0, Labcd/lo;->u7:[I

    iget-object v3, p0, Labcd/lo;->v5:Labcd/On;

    invoke-direct {v0, v1, v2, v3}, Labcd/no;-><init>(Labcd/fs;[ILabcd/On;)V

    new-instance v1, Labcd/Un;

    iget v2, p0, Labcd/lo;->FH:I

    iget-object v3, p0, Labcd/lo;->Zo:Labcd/go;

    invoke-virtual {v3}, Labcd/go;->j6()Labcd/ho;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Labcd/Un;-><init>(ILabcd/ho;Labcd/Pn;)V

    return-object v1
.end method

.method static synthetic Hw(Labcd/lo;)I
    .registers 2

    iget v0, p0, Labcd/lo;->tp:I

    return v0
.end method

.method static synthetic j6(Labcd/lo;)Labcd/On;
    .registers 2

    iget-object v0, p0, Labcd/lo;->v5:Labcd/On;

    return-object v0
.end method

.method public static j6(Labcd/fs;ILabcd/Xr;ILabcd/Fn;)Labcd/Un;
    .registers 11

    new-instance v0, Labcd/lo;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Labcd/lo;-><init>(Labcd/fs;ILabcd/Xr;ILabcd/Fn;)V

    invoke-direct {v0}, Labcd/lo;->FH()Labcd/Un;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j6(Labcd/Tr;)Labcd/cs;
    .registers 2

    invoke-static {p0}, Labcd/lo;->DW(Labcd/Tr;)Labcd/cs;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j6(Labcd/Tr;Labcd/bs;)Labcd/cs;
    .registers 3

    invoke-static {p0, p1}, Labcd/lo;->DW(Labcd/Tr;Labcd/bs;)Labcd/cs;

    move-result-object v0

    return-object v0
.end method

.method private j6()V
    .registers 7

    iget-object v0, p0, Labcd/lo;->DW:Labcd/fs;

    invoke-virtual {v0}, Labcd/fs;->j6()Labcd/Or;

    move-result-object v3

    iget-object v4, p0, Labcd/lo;->u7:[I

    array-length v5, v4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_1

    add-int/lit8 v2, v1, 0x1

    array-length v0, v4

    if-ne v2, v0, :cond_0

    const/4 v0, -0x1

    :goto_1
    aget v1, v4, v1

    invoke-virtual {v3, v1}, Labcd/Or;->v5(I)Labcd/Nr;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Labcd/lo;->j6(Labcd/Nr;I)V

    move v1, v2

    goto :goto_0

    :cond_0
    aget v0, v4, v2

    goto :goto_1

    :cond_1
    return-void
.end method

.method private j6(Labcd/Nr;I)V
    .registers 9

    iget-object v0, p0, Labcd/lo;->v5:Labcd/On;

    invoke-virtual {v0, p1}, Labcd/On;->FH(Labcd/Nr;)Labcd/Sn;

    move-result-object v0

    iget-object v1, p0, Labcd/lo;->Zo:Labcd/go;

    invoke-virtual {v1, v0}, Labcd/go;->j6(Labcd/Vn;)V

    iget-object v1, p0, Labcd/lo;->Hw:Labcd/Xr;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Labcd/Xr;->j6(Labcd/Nr;)Labcd/ds;

    move-result-object v1

    iget-object v2, p0, Labcd/lo;->Zo:Labcd/go;

    new-instance v3, Labcd/do;

    invoke-virtual {v0}, Labcd/Vn;->VH()Labcd/hs;

    move-result-object v0

    invoke-direct {v3, v0, v1}, Labcd/do;-><init>(Labcd/hs;Labcd/ds;)V

    invoke-virtual {v2, v3}, Labcd/go;->j6(Labcd/Vn;)V

    :cond_0
    iget-object v0, p0, Labcd/lo;->VH:Labcd/lo$b;

    iget-object v1, p0, Labcd/lo;->v5:Labcd/On;

    invoke-virtual {v1, p1}, Labcd/On;->DW(Labcd/Nr;)Labcd/Sn;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Labcd/lo$b;->j6(Labcd/Nr;Labcd/Sn;)V

    invoke-virtual {p1}, Labcd/Nr;->Hw()Labcd/Ur;

    move-result-object v0

    iget-object v1, p0, Labcd/lo;->VH:Labcd/lo$b;

    invoke-virtual {v0, v1}, Labcd/Ur;->j6(Labcd/Tr$b;)V

    iget-object v0, p0, Labcd/lo;->Zo:Labcd/go;

    iget-object v1, p0, Labcd/lo;->v5:Labcd/On;

    invoke-virtual {v1, p1}, Labcd/On;->j6(Labcd/Nr;)Labcd/Sn;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/go;->j6(Labcd/Vn;)V

    invoke-virtual {p1}, Labcd/Nr;->Zo()I

    move-result v0

    invoke-virtual {p1}, Labcd/Nr;->v5()Labcd/Tr;

    move-result-object v1

    if-ltz v0, :cond_1

    if-eq v0, p2, :cond_1

    invoke-virtual {v1}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v2

    invoke-virtual {v2}, Labcd/es;->DW()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    invoke-virtual {p1}, Labcd/Nr;->VH()I

    move-result v2

    if-ne v2, p2, :cond_2

    iget-object v1, p0, Labcd/lo;->Zo:Labcd/go;

    const/4 v2, 0x1

    iget-object v3, p0, Labcd/lo;->v5:Labcd/On;

    invoke-virtual {v3, v0}, Labcd/On;->j6(I)Labcd/Sn;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Labcd/go;->j6(ILabcd/Sn;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v2, Labcd/po;

    sget-object v3, Labcd/Yn;->vJ:Labcd/Xn;

    invoke-virtual {v1}, Labcd/Tr;->Zo()Labcd/hs;

    move-result-object v1

    sget-object v4, Labcd/cs;->FH:Labcd/cs;

    iget-object v5, p0, Labcd/lo;->v5:Labcd/On;

    invoke-virtual {v5, v0}, Labcd/On;->j6(I)Labcd/Sn;

    move-result-object v0

    invoke-direct {v2, v3, v1, v4, v0}, Labcd/po;-><init>(Labcd/Xn;Labcd/hs;Labcd/cs;Labcd/Sn;)V

    iget-object v0, p0, Labcd/lo;->Zo:Labcd/go;

    invoke-virtual {v0, v2}, Labcd/go;->j6(Labcd/Vn;)V

    goto :goto_0
.end method

.method private static j6(Labcd/fs;I)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v4, 0x0

    new-array v0, v1, [Z

    aput-boolean v1, v0, v4

    invoke-virtual {p0}, Labcd/fs;->j6()Labcd/Or;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Or;->BT()I

    move-result v1

    invoke-virtual {p0}, Labcd/fs;->j6()Labcd/Or;

    move-result-object v2

    new-instance v3, Labcd/ko;

    invoke-direct {v3, v0, v1, p1}, Labcd/ko;-><init>([ZII)V

    invoke-virtual {v2, v3}, Labcd/Or;->j6(Labcd/Tr$b;)V

    aget-boolean v0, v0, v4

    return v0
.end method

.method static synthetic v5(Labcd/lo;)Labcd/fs;
    .registers 2

    iget-object v0, p0, Labcd/lo;->DW:Labcd/fs;

    return-object v0
.end method

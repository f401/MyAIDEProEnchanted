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
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Labcd/lo;->j6:Labcd/Fn;

    iput-object p1, p0, Labcd/lo;->DW:Labcd/fs;

    iput p2, p0, Labcd/lo;->FH:I

    iput-object p3, p0, Labcd/lo;->Hw:Labcd/Xr;

    new-instance p2, Labcd/On;

    invoke-direct {p2, p1}, Labcd/On;-><init>(Labcd/fs;)V

    iput-object p2, p0, Labcd/lo;->v5:Labcd/On;

    iput p4, p0, Labcd/lo;->tp:I

    const/4 p2, 0x0

    iput-object p2, p0, Labcd/lo;->u7:[I

    invoke-static {p1, p4}, Labcd/lo;->j6(Labcd/fs;I)Z

    move-result p2

    iput-boolean p2, p0, Labcd/lo;->EQ:Z

    invoke-virtual {p1}, Labcd/fs;->j6()Labcd/Or;

    move-result-object p1

    invoke-virtual {p1}, Labcd/Xt;->size()I

    move-result p2

    mul-int/lit8 v0, p2, 0x3

    invoke-virtual {p1}, Labcd/Or;->yS()I

    move-result v1

    add-int/2addr v1, v0

    if-eqz p3, :cond_34

    invoke-virtual {p3}, Labcd/Xr;->lg()I

    move-result v2

    add-int/2addr p2, v2

    add-int/2addr v1, p2

    :cond_34
    invoke-virtual {p1}, Labcd/Or;->BT()I

    move-result p1

    iget-boolean p2, p0, Labcd/lo;->EQ:Z

    if-eqz p2, :cond_3d

    const/4 p4, 0x0

    :cond_3d
    add-int/2addr p1, p4

    iput p1, p0, Labcd/lo;->gn:I

    new-instance p2, Labcd/go;

    invoke-direct {p2, p5, v1, v0, p1}, Labcd/go;-><init>(Labcd/Fn;III)V

    iput-object p2, p0, Labcd/lo;->Zo:Labcd/go;

    if-eqz p3, :cond_4f

    new-instance p1, Labcd/lo$a;

    invoke-direct {p1, p0, p2, p3}, Labcd/lo$a;-><init>(Labcd/lo;Labcd/go;Labcd/Xr;)V

    goto :goto_54

    :cond_4f
    new-instance p1, Labcd/lo$b;

    invoke-direct {p1, p0, p2}, Labcd/lo$b;-><init>(Labcd/lo;Labcd/go;)V

    :goto_54
    iput-object p1, p0, Labcd/lo;->VH:Labcd/lo$b;

    return-void
.end method

.method private static DW(Labcd/Tr;)Labcd/cs;
    .registers 2

    invoke-virtual {p0}, Labcd/Tr;->VH()Labcd/bs;

    move-result-object v0

    invoke-static {p0, v0}, Labcd/lo;->DW(Labcd/Tr;Labcd/bs;)Labcd/cs;

    move-result-object p0

    return-object p0
.end method

.method private static DW(Labcd/Tr;Labcd/bs;)Labcd/cs;
    .registers 5

    invoke-virtual {p0}, Labcd/Tr;->gn()Labcd/cs;

    move-result-object v0

    invoke-virtual {p0}, Labcd/Tr;->v5()Labcd/es;

    move-result-object p0

    invoke-virtual {p0}, Labcd/es;->gn()Z

    move-result p0

    if-eqz p0, :cond_31

    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_31

    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result p0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v2

    invoke-virtual {v2}, Labcd/bs;->we()I

    move-result v2

    if-ne p0, v2, :cond_31

    invoke-virtual {v0, v1}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-static {p0, v0}, Labcd/cs;->j6(Labcd/bs;Labcd/bs;)Labcd/cs;

    move-result-object v0

    :cond_31
    if-nez p1, :cond_34

    return-object v0

    :cond_34
    invoke-virtual {v0, p1}, Labcd/cs;->DW(Labcd/bs;)Labcd/cs;

    move-result-object p0

    return-object p0
.end method

.method private DW()V
    .registers 15

    iget-object v0, p0, Labcd/lo;->DW:Labcd/fs;

    invoke-virtual {v0}, Labcd/fs;->j6()Labcd/Or;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result v1

    invoke-virtual {v0}, Labcd/du;->rN()I

    move-result v2

    invoke-static {v2}, Labcd/Ot;->j6(I)[I

    move-result-object v3

    invoke-static {v2}, Labcd/Ot;->j6(I)[I

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_18
    if-ge v5, v1, :cond_28

    invoke-virtual {v0, v5}, Labcd/Or;->get(I)Labcd/Nr;

    move-result-object v6

    invoke-virtual {v6}, Labcd/Nr;->DW()I

    move-result v6

    invoke-static {v3, v6}, Labcd/Ot;->Hw([II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    :cond_28
    new-array v5, v1, [I

    iget-object v6, p0, Labcd/lo;->DW:Labcd/fs;

    invoke-virtual {v6}, Labcd/fs;->DW()I

    move-result v6

    const/4 v7, 0x0

    :goto_31
    const/4 v8, -0x1

    if-eq v6, v8, :cond_ba

    :goto_34
    iget-object v9, p0, Labcd/lo;->DW:Labcd/fs;

    invoke-virtual {v9, v6}, Labcd/fs;->j6(I)Labcd/au;

    move-result-object v9

    invoke-virtual {v9}, Labcd/au;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_3f
    if-ge v11, v10, :cond_65

    invoke-virtual {v9, v11}, Labcd/au;->get(I)I

    move-result v12

    invoke-static {v2, v12}, Labcd/Ot;->FH([II)Z

    move-result v13

    if-eqz v13, :cond_4c

    goto :goto_65

    :cond_4c
    invoke-static {v3, v12}, Labcd/Ot;->FH([II)Z

    move-result v13

    if-nez v13, :cond_53

    goto :goto_62

    :cond_53
    invoke-virtual {v0, v12}, Labcd/Or;->v5(I)Labcd/Nr;

    move-result-object v13

    invoke-virtual {v13}, Labcd/Nr;->Zo()I

    move-result v13

    if-ne v13, v6, :cond_62

    invoke-static {v2, v12}, Labcd/Ot;->Hw([II)V

    move v6, v12

    goto :goto_34

    :cond_62
    :goto_62
    add-int/lit8 v11, v11, 0x1

    goto :goto_3f

    :cond_65
    :goto_65
    if-eq v6, v8, :cond_b4

    invoke-static {v3, v6}, Labcd/Ot;->j6([II)V

    invoke-static {v2, v6}, Labcd/Ot;->j6([II)V

    aput v6, v5, v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0, v6}, Labcd/Or;->v5(I)Labcd/Nr;

    move-result-object v6

    invoke-virtual {v0, v6}, Labcd/Or;->j6(Labcd/Nr;)Labcd/Nr;

    move-result-object v9

    if-nez v9, :cond_7c

    goto :goto_b4

    :cond_7c
    invoke-virtual {v9}, Labcd/Nr;->DW()I

    move-result v9

    invoke-virtual {v6}, Labcd/Nr;->Zo()I

    move-result v10

    invoke-static {v3, v9}, Labcd/Ot;->FH([II)Z

    move-result v11

    if-eqz v11, :cond_8c

    move v6, v9

    goto :goto_65

    :cond_8c
    if-eq v10, v9, :cond_98

    if-ltz v10, :cond_98

    invoke-static {v3, v10}, Labcd/Ot;->FH([II)Z

    move-result v9

    if-eqz v9, :cond_98

    move v6, v10

    goto :goto_65

    :cond_98
    invoke-virtual {v6}, Labcd/Nr;->gn()Labcd/au;

    move-result-object v6

    invoke-virtual {v6}, Labcd/au;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_a1
    if-ge v10, v9, :cond_b2

    invoke-virtual {v6, v10}, Labcd/au;->get(I)I

    move-result v11

    invoke-static {v3, v11}, Labcd/Ot;->FH([II)Z

    move-result v12

    if-eqz v12, :cond_af

    move v6, v11

    goto :goto_65

    :cond_af
    add-int/lit8 v10, v10, 0x1

    goto :goto_a1

    :cond_b2
    const/4 v6, -0x1

    goto :goto_65

    :cond_b4
    :goto_b4
    invoke-static {v3, v4}, Labcd/Ot;->DW([II)I

    move-result v6

    goto/16 :goto_31

    :cond_ba
    if-ne v7, v1, :cond_bf

    iput-object v5, p0, Labcd/lo;->u7:[I

    return-void

    :cond_bf
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_c8

    :goto_c7
    throw v0

    :goto_c8
    goto :goto_c7
.end method

.method static synthetic DW(Labcd/lo;)Z
    .registers 1

    iget-boolean p0, p0, Labcd/lo;->EQ:Z

    return p0
.end method

.method static synthetic FH(Labcd/lo;)I
    .registers 1

    iget p0, p0, Labcd/lo;->gn:I

    return p0
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
    .registers 1

    iget p0, p0, Labcd/lo;->tp:I

    return p0
.end method

.method static synthetic j6(Labcd/lo;)Labcd/On;
    .registers 1

    iget-object p0, p0, Labcd/lo;->v5:Labcd/On;

    return-object p0
.end method

.method public static j6(Labcd/fs;ILabcd/Xr;ILabcd/Fn;)Labcd/Un;
    .registers 12

    new-instance v6, Labcd/lo;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Labcd/lo;-><init>(Labcd/fs;ILabcd/Xr;ILabcd/Fn;)V

    invoke-direct {v6}, Labcd/lo;->FH()Labcd/Un;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j6(Labcd/Tr;)Labcd/cs;
    .registers 1

    invoke-static {p0}, Labcd/lo;->DW(Labcd/Tr;)Labcd/cs;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j6(Labcd/Tr;Labcd/bs;)Labcd/cs;
    .registers 2

    invoke-static {p0, p1}, Labcd/lo;->DW(Labcd/Tr;Labcd/bs;)Labcd/cs;

    move-result-object p0

    return-object p0
.end method

.method private j6()V
    .registers 7

    iget-object v0, p0, Labcd/lo;->DW:Labcd/fs;

    invoke-virtual {v0}, Labcd/fs;->j6()Labcd/Or;

    move-result-object v0

    iget-object v1, p0, Labcd/lo;->u7:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_20

    add-int/lit8 v4, v3, 0x1

    array-length v5, v1

    if-ne v4, v5, :cond_13

    const/4 v5, -0x1

    goto :goto_15

    :cond_13
    aget v5, v1, v4

    :goto_15
    aget v3, v1, v3

    invoke-virtual {v0, v3}, Labcd/Or;->v5(I)Labcd/Nr;

    move-result-object v3

    invoke-direct {p0, v3, v5}, Labcd/lo;->j6(Labcd/Nr;I)V

    move v3, v4

    goto :goto_a

    :cond_20
    return-void
.end method

.method private j6(Labcd/Nr;I)V
    .registers 7

    iget-object v0, p0, Labcd/lo;->v5:Labcd/On;

    invoke-virtual {v0, p1}, Labcd/On;->FH(Labcd/Nr;)Labcd/Sn;

    move-result-object v0

    iget-object v1, p0, Labcd/lo;->Zo:Labcd/go;

    invoke-virtual {v1, v0}, Labcd/go;->j6(Labcd/Vn;)V

    iget-object v1, p0, Labcd/lo;->Hw:Labcd/Xr;

    if-eqz v1, :cond_21

    invoke-virtual {v1, p1}, Labcd/Xr;->j6(Labcd/Nr;)Labcd/ds;

    move-result-object v1

    iget-object v2, p0, Labcd/lo;->Zo:Labcd/go;

    new-instance v3, Labcd/do;

    invoke-virtual {v0}, Labcd/Vn;->VH()Labcd/hs;

    move-result-object v0

    invoke-direct {v3, v0, v1}, Labcd/do;-><init>(Labcd/hs;Labcd/ds;)V

    invoke-virtual {v2, v3}, Labcd/go;->j6(Labcd/Vn;)V

    :cond_21
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

    if-ltz v0, :cond_82

    if-eq v0, p2, :cond_82

    invoke-virtual {v1}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v2

    invoke-virtual {v2}, Labcd/es;->DW()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_6a

    invoke-virtual {p1}, Labcd/Nr;->VH()I

    move-result p1

    if-ne p1, p2, :cond_6a

    iget-object p1, p0, Labcd/lo;->Zo:Labcd/go;

    iget-object p2, p0, Labcd/lo;->v5:Labcd/On;

    invoke-virtual {p2, v0}, Labcd/On;->j6(I)Labcd/Sn;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Labcd/go;->j6(ILabcd/Sn;)V

    goto :goto_82

    :cond_6a
    new-instance p1, Labcd/po;

    sget-object p2, Labcd/Yn;->vJ:Labcd/Xn;

    invoke-virtual {v1}, Labcd/Tr;->Zo()Labcd/hs;

    move-result-object v1

    sget-object v2, Labcd/cs;->FH:Labcd/cs;

    iget-object v3, p0, Labcd/lo;->v5:Labcd/On;

    invoke-virtual {v3, v0}, Labcd/On;->j6(I)Labcd/Sn;

    move-result-object v0

    invoke-direct {p1, p2, v1, v2, v0}, Labcd/po;-><init>(Labcd/Xn;Labcd/hs;Labcd/cs;Labcd/Sn;)V

    iget-object p2, p0, Labcd/lo;->Zo:Labcd/go;

    invoke-virtual {p2, p1}, Labcd/go;->j6(Labcd/Vn;)V

    :cond_82
    :goto_82
    return-void
.end method

.method private static j6(Labcd/fs;I)Z
    .registers 6

    const/4 v0, 0x1

    new-array v1, v0, [Z

    const/4 v2, 0x0

    aput-boolean v0, v1, v2

    invoke-virtual {p0}, Labcd/fs;->j6()Labcd/Or;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Or;->BT()I

    move-result v0

    invoke-virtual {p0}, Labcd/fs;->j6()Labcd/Or;

    move-result-object p0

    new-instance v3, Labcd/ko;

    invoke-direct {v3, v1, v0, p1}, Labcd/ko;-><init>([ZII)V

    invoke-virtual {p0, v3}, Labcd/Or;->j6(Labcd/Tr$b;)V

    aget-boolean p0, v1, v2

    return p0
.end method

.method static synthetic v5(Labcd/lo;)Labcd/fs;
    .registers 1

    iget-object p0, p0, Labcd/lo;->DW:Labcd/fs;

    return-object p0
.end method

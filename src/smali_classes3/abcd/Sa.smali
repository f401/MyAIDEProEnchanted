.class public Labcd/Sa;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private EQ:I
    .annotation runtime Labcd/ru;
        field = 0x24910b9686055e40L
    .end annotation
.end field

.field private FH:J
    .annotation runtime Labcd/ru;
        field = -0x122821f5c8fa7357L
    .end annotation
.end field

.field private Hw:J
    .annotation runtime Labcd/ru;
        field = -0x1d6ee58835df316bL
    .end annotation
.end field

.field private J0:Labcd/pa;
    .annotation runtime Labcd/ru;
        field = -0x108d5e04be618f5L
    .end annotation
.end field

.field private J8:Labcd/Da;
    .annotation runtime Labcd/ru;
        field = 0x225262155982d9a0L
    .end annotation
.end field

.field private Mr:J
    .annotation runtime Labcd/ru;
        field = -0xf1cea714b7d3459L
    .end annotation
.end field

.field private QX:I
    .annotation runtime Labcd/ru;
        field = -0x3602ccbe332bf0ddL
    .end annotation
.end field

.field private U2:Z
    .annotation runtime Labcd/ru;
        field = 0x2e9fd5ac159bbf49L
    .end annotation
.end field

.field private VH:I
    .annotation runtime Labcd/ru;
        field = -0x37c781253e680fcbL
    .end annotation
.end field

.field private Ws:J
    .annotation runtime Labcd/ru;
        field = -0x177c72d8311997e4L
    .end annotation
.end field

.field private XL:J
    .annotation runtime Labcd/ru;
        field = 0x1df169a275de7a20L
    .end annotation
.end field

.field private Zo:[C
    .annotation runtime Labcd/ru;
        field = -0x98382ea7218d520L
    .end annotation
.end field

.field private a8:Labcd/na;
    .annotation runtime Labcd/ru;
        field = 0x2f7b37aa29705b00L
    .end annotation
.end field

.field private aM:J
    .annotation runtime Labcd/ru;
        field = 0x8b8377a2fdabcd8L
    .end annotation
.end field

.field private gn:[I
    .annotation runtime Labcd/ru;
        field = 0x9aabfd4a1b08743L
    .end annotation
.end field

.field private j3:J
    .annotation runtime Labcd/ru;
        field = 0x1791a593416ca7efL
    .end annotation
.end field

.field private tp:[I
    .annotation runtime Labcd/ru;
        field = 0x9fec2d42efc5f9fL
    .end annotation
.end field

.field private u7:I
    .annotation runtime Labcd/ru;
        field = 0x7b0cb6ec37214f1L
    .end annotation
.end field

.field private v5:Labcd/La;
    .annotation runtime Labcd/ru;
        field = -0x1f1d89842f3bd377L
    .end annotation
.end field

.field private we:I
    .annotation runtime Labcd/ru;
        field = -0xc330e38647d9918L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Sa;

    const-wide v1, 0x11f67624b1f9fbf7L  # 3.883666369832012E-222

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/La;)V
    .registers 9

    const/4 v0, 0x0

    const-wide v1, 0x1e95369105e0c8cfL

    :try_start_6
    sget-boolean v3, Labcd/Sa;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v3, 0x1

    iput-wide v3, p0, Labcd/Sa;->FH:J

    const-wide v5, 0x112210f4c023b6d3L  # 3.813123841894741E-226

    sub-long/2addr v5, v3

    iput-wide v5, p0, Labcd/Sa;->Hw:J

    iput-object p1, p0, Labcd/Sa;->v5:Labcd/La;

    const/16 v3, 0x3e8

    new-array v4, v3, [C

    iput-object v4, p0, Labcd/Sa;->Zo:[C

    const/4 v4, 0x1

    iput v4, p0, Labcd/Sa;->VH:I

    const/16 v4, 0x2710

    new-array v4, v4, [I

    iput-object v4, p0, Labcd/Sa;->gn:[I

    const/4 v4, 0x0

    iput v4, p0, Labcd/Sa;->u7:I

    const/4 v5, -0x1

    iput v5, p0, Labcd/Sa;->we:I

    new-array v3, v3, [I

    iput-object v3, p0, Labcd/Sa;->tp:[I

    iput v4, p0, Labcd/Sa;->EQ:I

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Labcd/Sa;->XL:J

    iput-wide v3, p0, Labcd/Sa;->aM:J

    iput-wide v3, p0, Labcd/Sa;->j3:J

    iput-wide v3, p0, Labcd/Sa;->Mr:J
    :try_end_43
    .catchall {:try_start_6 .. :try_end_43} :catchall_44

    return-void

    :catchall_44
    move-exception v3

    sget-boolean v4, Labcd/Sa;->DW:Z

    if-eqz v4, :cond_4c

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4c
    throw v3
.end method

.method private CU(I)I
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x19f8ab5f194b2125L
    .end annotation

    const-wide v0, -0x4745e5b60c08bf35L  # -1.9637482069195036E-35

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget v2, p0, Labcd/Sa;->EQ:I

    iget-object v3, p0, Labcd/Sa;->gn:[I

    add-int/lit8 v4, p1, 0x2

    aput v2, v3, v4

    invoke-virtual {p0, p1}, Labcd/Sa;->P8(I)I

    move-result v3

    iget v4, p0, Labcd/Sa;->EQ:I

    invoke-direct {p0, v3}, Labcd/Sa;->Xa(I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Labcd/Sa;->EQ:I

    iget-object v5, p0, Labcd/Sa;->tp:[I

    array-length v6, v5

    const/4 v7, 0x0

    if-lt v4, v6, :cond_3c

    mul-int/lit8 v4, v4, 0x2

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    new-array v4, v4, [I

    iget-object v5, p0, Labcd/Sa;->tp:[I

    array-length v6, v5

    invoke-static {v5, v7, v4, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v4, p0, Labcd/Sa;->tp:[I

    :cond_3c
    iget-object v4, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-interface {v4, v3}, Labcd/pa;->v5(I)Z

    move-result v4

    if-eqz v4, :cond_48

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Labcd/Sa;->DW(ILabcd/Ya;)V

    :cond_48
    iget-object v4, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-interface {v4, v3}, Labcd/pa;->DW(I)Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_54

    invoke-virtual {p0, p1, v5}, Labcd/Sa;->DW(II)V

    :cond_54
    iget-object v4, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-interface {v4, v3}, Labcd/pa;->BT(I)Z

    move-result v4

    if-eqz v4, :cond_61

    iget-wide v8, p0, Labcd/Sa;->Hw:J

    invoke-virtual {p0, p1, v8, v9}, Labcd/Sa;->j6(IJ)V

    :cond_61
    iget-object v4, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-interface {v4, v3}, Labcd/pa;->u7(I)Z

    move-result v4

    const/4 v6, 0x4

    if-eqz v4, :cond_71

    invoke-direct {p0, p1, v6, v7}, Labcd/Sa;->J8(III)V

    const/4 v4, 0x6

    invoke-direct {p0, p1, v4, v5}, Labcd/Sa;->J8(III)V

    :cond_71
    iget-object v4, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-interface {v4, v3}, Labcd/pa;->a8(I)Z

    move-result v4

    if-eqz v4, :cond_7c

    invoke-direct {p0, p1, v6, v7}, Labcd/Sa;->J8(III)V

    :cond_7c
    iget-object v4, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-interface {v4, v3}, Labcd/pa;->aM(I)Z

    move-result v4

    if-eqz v4, :cond_87

    invoke-direct {p0, p1, v6, v7}, Labcd/Sa;->J8(III)V

    :cond_87
    iget-object v4, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-interface {v4, v3}, Labcd/pa;->gW(I)Z

    move-result v3

    if-eqz v3, :cond_92

    invoke-virtual {p0, p1, v5}, Labcd/Sa;->FH(II)V
    :try_end_92
    .catchall {:try_start_5 .. :try_end_92} :catchall_93

    :cond_92
    return v2

    :catchall_93
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_a0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_a0
    throw v2
.end method

.method private DW(IIIII)I
    .registers 16
    .annotation runtime Labcd/su;
        method = 0x19ccc2b75552984L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_26

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0xa2d09708bac4d9cL

    move-object v3, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    invoke-virtual {p0, p1}, Labcd/Sa;->we(I)I

    move-result v0

    const/4 v1, 0x0

    :goto_2b
    const/4 v2, -0x1

    if-ge v1, v0, :cond_41

    invoke-virtual {p0, p1, v1}, Labcd/Sa;->Zo(II)I

    move-result v4

    move-object v3, p0

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v3 .. v8}, Labcd/Sa;->DW(IIIII)I

    move-result v3

    if-eq v3, v2, :cond_3e

    return v3

    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_41
    iget-object v0, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-virtual {p0, p1}, Labcd/Sa;->P8(I)I

    move-result v1

    invoke-interface {v0, v1}, Labcd/pa;->U2(I)Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-virtual {p0, p1, p2, p3}, Labcd/Sa;->FH(III)Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-virtual {p0, p1, p4, p5}, Labcd/Sa;->FH(III)Z

    move-result p2
    :try_end_57
    .catchall {:try_start_0 .. :try_end_57} :catchall_5b

    if-eqz p2, :cond_5a

    return p1

    :cond_5a
    return v2

    :catchall_5b
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_83

    const-wide v2, -0xa2d09708bac4d9cL

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_83
    goto :goto_85

    :goto_84
    throw v0

    :goto_85
    goto :goto_84
.end method

.method private EQ(III)I
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x3d3737606910ed14L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_1c

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x61cdce1ff2e6334L  # 3.18011514532457E-279

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    invoke-virtual {p0, p1}, Labcd/Sa;->jJ(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6b

    iget-object v0, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-virtual {p0, p1}, Labcd/Sa;->P8(I)I

    move-result v2

    invoke-interface {v0, v2}, Labcd/pa;->EQ(I)Z

    move-result v0

    if-nez v0, :cond_6b

    invoke-virtual {p0, p1}, Labcd/Sa;->vy(I)I

    move-result v0

    if-le v0, p2, :cond_39

    sub-int/2addr v0, p2

    mul-int/lit16 v0, v0, 0x3e8

    return v0

    :cond_39
    invoke-virtual {p0, p1}, Labcd/Sa;->QX(I)I

    move-result v2

    if-ge v2, p2, :cond_43

    sub-int/2addr p2, v2

    mul-int/lit16 p2, p2, 0x3e8

    return p2

    :cond_43
    if-ne v2, v0, :cond_56

    invoke-virtual {p0, p1}, Labcd/Sa;->BT(I)I

    move-result v0

    if-le v0, p3, :cond_4d

    sub-int/2addr v0, p3

    return v0

    :cond_4d
    invoke-virtual {p0, p1}, Labcd/Sa;->Ws(I)I

    move-result p1

    if-ge p1, p3, :cond_55

    sub-int/2addr p3, p1

    return p3

    :cond_55
    return v1

    :cond_56
    if-ne p2, v0, :cond_60

    invoke-virtual {p0, p1}, Labcd/Sa;->BT(I)I

    move-result p1

    if-le p1, p3, :cond_6a

    sub-int/2addr p1, p3

    return p1

    :cond_60
    if-ne p2, v2, :cond_6a

    invoke-virtual {p0, p1}, Labcd/Sa;->Ws(I)I

    move-result p1

    if-ge p1, p3, :cond_6a

    sub-int/2addr p3, p1

    return p3

    :cond_6a
    return v1

    :cond_6b
    invoke-virtual {p0, p1}, Labcd/Sa;->we(I)I

    move-result v0

    const v2, 0x7fffffff

    :goto_72
    if-ge v1, v0, :cond_82

    invoke-virtual {p0, p1, v1}, Labcd/Sa;->Zo(II)I

    move-result v3

    invoke-direct {p0, v3, p2, p3}, Labcd/Sa;->EQ(III)I

    move-result v3
    :try_end_7c
    .catchall {:try_start_0 .. :try_end_7c} :catchall_83

    if-ge v3, v2, :cond_7f

    move v2, v3

    :cond_7f
    add-int/lit8 v1, v1, 0x1

    goto :goto_72

    :cond_82
    return v2

    :catchall_83
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_a1

    const-wide v2, 0x61cdce1ff2e6334L  # 3.18011514532457E-279

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a1
    goto :goto_a3

    :goto_a2
    throw v0

    :goto_a3
    goto :goto_a2
.end method

.method private Eq(I)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x25d35771406917dL
    .end annotation

    const-wide v0, 0x7cb829432d71dcdL

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    invoke-virtual {p0, p1}, Labcd/Sa;->lp(I)Z

    move-result v2

    if-nez v2, :cond_21

    invoke-virtual {p0, p1}, Labcd/Sa;->vJ(I)Z

    move-result v2

    if-nez v2, :cond_21

    invoke-virtual {p0, p1}, Labcd/Sa;->ca(I)Z

    move-result p1
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_23

    if-eqz p1, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p1, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 p1, 0x1

    :goto_22
    return p1

    :catchall_23
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_30

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v2
.end method

.method private FH(IIIII)I
    .registers 16
    .annotation runtime Labcd/su;
        method = -0x6b6ff1136a0d65dL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_26

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x765d17a05e955513L  # 1.4313774299437603E262

    move-object v3, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    invoke-virtual {p0, p1}, Labcd/Sa;->we(I)I

    move-result v0

    const/4 v1, 0x0

    :goto_2b
    const/4 v2, -0x1

    if-ge v1, v0, :cond_41

    invoke-virtual {p0, p1, v1}, Labcd/Sa;->Zo(II)I

    move-result v4

    move-object v3, p0

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v3 .. v8}, Labcd/Sa;->FH(IIIII)I

    move-result v3

    if-eq v3, v2, :cond_3e

    return v3

    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_41
    iget-object v0, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-virtual {p0, p1}, Labcd/Sa;->P8(I)I

    move-result v1

    invoke-interface {v0, v1}, Labcd/pa;->Mr(I)Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-virtual {p0, p1, p2, p3}, Labcd/Sa;->FH(III)Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-virtual {p0, p1, p4, p5}, Labcd/Sa;->FH(III)Z

    move-result p2
    :try_end_57
    .catchall {:try_start_0 .. :try_end_57} :catchall_5b

    if-eqz p2, :cond_5a

    return p1

    :cond_5a
    return v2

    :catchall_5b
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_83

    const-wide v2, 0x765d17a05e955513L  # 1.4313774299437603E262

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_83
    goto :goto_85

    :goto_84
    throw v0

    :goto_85
    goto :goto_84
.end method

.method private Hw(IIIII)I
    .registers 16
    .annotation runtime Labcd/su;
        method = 0xd03a19e628899dfL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_26

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x147a5a88fc0271cfL  # 5.01007069199385E-210

    move-object v3, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    iget-object v0, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-virtual {p0, p1}, Labcd/Sa;->P8(I)I

    move-result v1

    invoke-interface {v0, v1}, Labcd/pa;->Mr(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-virtual {p0, p1}, Labcd/Sa;->vy(I)I

    move-result v0

    if-ne v0, p2, :cond_3f

    invoke-virtual {p0, p1}, Labcd/Sa;->BT(I)I

    move-result v0

    if-ne v0, p3, :cond_3f

    return p1

    :cond_3f
    invoke-virtual {p0, p1}, Labcd/Sa;->we(I)I

    move-result v0

    const/4 v1, 0x0

    :goto_44
    const/4 v2, -0x1

    if-ge v1, v0, :cond_5a

    invoke-virtual {p0, p1, v1}, Labcd/Sa;->Zo(II)I

    move-result v4

    move-object v3, p0

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v3 .. v8}, Labcd/Sa;->Hw(IIIII)I

    move-result v3
    :try_end_54
    .catchall {:try_start_0 .. :try_end_54} :catchall_5b

    if-eq v3, v2, :cond_57

    return v3

    :cond_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    :cond_5a
    return v2

    :catchall_5b
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_83

    const-wide v2, 0x147a5a88fc0271cfL  # 5.01007069199385E-210

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_83
    goto :goto_85

    :goto_84
    throw v0

    :goto_85
    goto :goto_84
.end method

.method private J0(III)I
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x535be1a5eb0be1ddL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_1c

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x61dacfbbb7234adL

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    invoke-virtual {p0, p1}, Labcd/Sa;->jJ(I)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p0, p1, p2, p3}, Labcd/Sa;->Hw(III)Z

    move-result v0

    if-eqz v0, :cond_29

    return p1

    :cond_29
    invoke-virtual {p0, p1}, Labcd/Sa;->we(I)I

    move-result v0

    const/4 v1, 0x0

    :goto_2e
    const/4 v2, -0x1

    if-ge v1, v0, :cond_3f

    invoke-virtual {p0, p1, v1}, Labcd/Sa;->Zo(II)I

    move-result v3

    invoke-direct {p0, v3, p2, p3}, Labcd/Sa;->J0(III)I

    move-result v3
    :try_end_39
    .catchall {:try_start_0 .. :try_end_39} :catchall_40

    if-eq v3, v2, :cond_3c

    return v3

    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_3f
    return v2

    :catchall_40
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_5e

    const-wide v2, 0x61dacfbbb7234adL

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5e
    goto :goto_60

    :goto_5f
    throw v0

    :goto_60
    goto :goto_5f
.end method

.method private J8(III)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x5bd47b9542df370L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_1c

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x2626cb21472ffcd0L  # -6.66516911608723E124

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/Sa;->U2:Z

    iget-object v0, p0, Labcd/Sa;->gn:[I

    add-int/lit8 v1, p1, 0x2

    aget v0, v0, v1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2c

    invoke-direct {p0, p1}, Labcd/Sa;->CU(I)I

    move-result v0

    :cond_2c
    iget-object v1, p0, Labcd/Sa;->tp:[I

    add-int/2addr v0, p2

    aput p3, v1, v0
    :try_end_31
    .catchall {:try_start_0 .. :try_end_31} :catchall_32

    return-void

    :catchall_32
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_50

    const-wide v2, -0x2626cb21472ffcd0L  # -6.66516911608723E124

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_50
    throw v0
.end method

.method private VH(III)I
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x387b807e22c65ee0L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_1c

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x174db527c73602c0L

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    iget-object v0, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-virtual {p0, p1}, Labcd/Sa;->P8(I)I

    move-result v1

    invoke-interface {v0, v1}, Labcd/pa;->u7(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p0, p1, p2, p3}, Labcd/Sa;->Hw(III)Z

    move-result v0

    if-eqz v0, :cond_2f

    return p1

    :cond_2f
    invoke-virtual {p0, p1}, Labcd/Sa;->we(I)I

    move-result v0

    const/4 v1, 0x0

    :goto_34
    const/4 v2, -0x1

    if-ge v1, v0, :cond_45

    invoke-virtual {p0, p1, v1}, Labcd/Sa;->Zo(II)I

    move-result v3

    invoke-direct {p0, v3, p2, p3}, Labcd/Sa;->VH(III)I

    move-result v3
    :try_end_3f
    .catchall {:try_start_0 .. :try_end_3f} :catchall_46

    if-eq v3, v2, :cond_42

    return v3

    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    :cond_45
    return v2

    :catchall_46
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_64

    const-wide v2, 0x174db527c73602c0L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_64
    goto :goto_66

    :goto_65
    throw v0

    :goto_66
    goto :goto_65
.end method

.method private VH(IIIII)I
    .registers 16
    .annotation runtime Labcd/su;
        method = -0x266955db6bd20180L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_26

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x49dffddeb1b9840L

    move-object v3, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    invoke-virtual {p0, p1}, Labcd/Sa;->we(I)I

    move-result v0

    const/4 v1, 0x0

    :goto_2b
    const/4 v2, -0x1

    if-ge v1, v0, :cond_41

    invoke-virtual {p0, p1, v1}, Labcd/Sa;->Zo(II)I

    move-result v4

    move-object v3, p0

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v3 .. v8}, Labcd/Sa;->VH(IIIII)I

    move-result v3

    if-eq v3, v2, :cond_3e

    return v3

    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_41
    invoke-virtual {p0, p1, p2, p3}, Labcd/Sa;->Hw(III)Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-virtual {p0, p1, p4, p5}, Labcd/Sa;->Hw(III)Z

    move-result p2
    :try_end_4b
    .catchall {:try_start_0 .. :try_end_4b} :catchall_4f

    if-eqz p2, :cond_4e

    return p1

    :cond_4e
    return v2

    :catchall_4f
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_77

    const-wide v2, -0x49dffddeb1b9840L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_77
    goto :goto_79

    :goto_78
    throw v0

    :goto_79
    goto :goto_78
.end method

.method private XL(II)I
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x4c516f00bb5e608dL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x56e421456340fdL

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    iget-object v0, p0, Labcd/Sa;->gn:[I

    add-int/lit8 v1, p1, 0x2

    aget v0, v0, v1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_23

    invoke-direct {p0, p1}, Labcd/Sa;->CU(I)I

    move-result v0

    :cond_23
    add-int/2addr v0, p2

    iget-object v1, p0, Labcd/Sa;->tp:[I

    array-length v1, v1

    if-le v0, v1, :cond_30

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_30
    iget-object v1, p0, Labcd/Sa;->tp:[I

    aget p1, v1, v0
    :try_end_34
    .catchall {:try_start_0 .. :try_end_34} :catchall_35

    return p1

    :catchall_35
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_4e

    const-wide v2, 0x56e421456340fdL

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4e
    throw v0
.end method

.method private Xa(I)I
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xff152c83a7bd9f9L
    .end annotation

    const-wide v0, -0x3eeec5c50b02aae9L  # -282254.73924763635

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-interface {v2, p1}, Labcd/pa;->gW(I)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 p1, 0xa

    return p1

    :cond_17
    iget-object v2, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-interface {v2, p1}, Labcd/pa;->DW(I)Z

    move-result v2

    if-eqz v2, :cond_22

    const/16 p1, 0x9

    return p1

    :cond_22
    iget-object v2, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-interface {v2, p1}, Labcd/pa;->Ws(I)Z

    move-result v2

    if-eqz v2, :cond_2d

    const/16 p1, 0x8

    return p1

    :cond_2d
    iget-object v2, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-interface {v2, p1}, Labcd/pa;->u7(I)Z

    move-result v2

    if-nez v2, :cond_5c

    iget-object v2, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-interface {v2, p1}, Labcd/pa;->aM(I)Z

    move-result v2

    if-nez v2, :cond_5c

    iget-object v2, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-interface {v2, p1}, Labcd/pa;->a8(I)Z

    move-result v2

    if-eqz v2, :cond_46

    goto :goto_5c

    :cond_46
    iget-object v2, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-interface {v2, p1}, Labcd/pa;->BT(I)Z

    move-result v2

    if-eqz v2, :cond_50

    const/4 p1, 0x4

    return p1

    :cond_50
    iget-object v2, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-interface {v2, p1}, Labcd/pa;->v5(I)Z

    move-result p1
    :try_end_56
    .catchall {:try_start_5 .. :try_end_56} :catchall_5e

    if-eqz p1, :cond_5a

    const/4 p1, 0x2

    return p1

    :cond_5a
    const/4 p1, 0x0

    return p1

    :cond_5c
    :goto_5c
    const/4 p1, 0x7

    return p1

    :catchall_5e
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_6b

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_6b
    throw v2
.end method

.method private Zo(III)I
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x461dfff5e0d50819L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_1c

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x480e89050b233c29L  # 1.2988251788041363E39

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    invoke-virtual {p0, p1}, Labcd/Sa;->we(I)I

    move-result v0

    const/4 v1, 0x0

    :goto_21
    const/4 v2, -0x1

    if-ge v1, v0, :cond_32

    invoke-virtual {p0, p1, v1}, Labcd/Sa;->Zo(II)I

    move-result v3

    invoke-direct {p0, v3, p2, p3}, Labcd/Sa;->Zo(III)I

    move-result v3

    if-eq v3, v2, :cond_2f

    return v3

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_32
    iget-object v0, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-virtual {p0, p1}, Labcd/Sa;->P8(I)I

    move-result v1

    invoke-interface {v0, v1}, Labcd/pa;->aM(I)Z

    move-result v0

    if-nez v0, :cond_4a

    iget-object v0, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-virtual {p0, p1}, Labcd/Sa;->P8(I)I

    move-result v1

    invoke-interface {v0, v1}, Labcd/pa;->rN(I)Z

    move-result v0

    if-eqz v0, :cond_71

    :cond_4a
    invoke-virtual {p0, p1, p2, p3}, Labcd/Sa;->Hw(III)Z

    move-result v0

    if-eqz v0, :cond_51

    return p1

    :cond_51
    invoke-virtual {p0, p1}, Labcd/Sa;->QX(I)I

    move-result v0

    if-nez v0, :cond_71

    invoke-virtual {p0, p1}, Labcd/Sa;->vy(I)I

    move-result v0

    if-eqz v0, :cond_71

    invoke-virtual {p0, p1}, Labcd/Sa;->vy(I)I

    move-result v0

    if-le p2, v0, :cond_64

    return p1

    :cond_64
    invoke-virtual {p0, p1}, Labcd/Sa;->vy(I)I

    move-result v0

    if-ne p2, v0, :cond_71

    invoke-virtual {p0, p1}, Labcd/Sa;->BT(I)I

    move-result p2
    :try_end_6e
    .catchall {:try_start_0 .. :try_end_6e} :catchall_72

    if-lt p3, p2, :cond_71

    return p1

    :cond_71
    return v2

    :catchall_72
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_90

    const-wide v2, 0x480e89050b233c29L  # 1.2988251788041363E39

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_90
    goto :goto_92

    :goto_91
    throw v0

    :goto_92
    goto :goto_91
.end method

.method private Zo(IIIII)I
    .registers 16
    .annotation runtime Labcd/su;
        method = -0x8d30e2c9aa24a95L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_26

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x469f27c2241af5bL

    move-object v3, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    invoke-virtual {p0, p1}, Labcd/Sa;->we(I)I

    move-result v0

    const/4 v1, 0x0

    :goto_2b
    const/4 v2, -0x1

    if-ge v1, v0, :cond_41

    invoke-virtual {p0, p1, v1}, Labcd/Sa;->Zo(II)I

    move-result v4

    move-object v3, p0

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v3 .. v8}, Labcd/Sa;->Zo(IIIII)I

    move-result v3

    if-eq v3, v2, :cond_3e

    return v3

    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_41
    invoke-virtual {p0, p1, p2, p3}, Labcd/Sa;->FH(III)Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-virtual {p0, p1, p4, p5}, Labcd/Sa;->Hw(III)Z

    move-result p2
    :try_end_4b
    .catchall {:try_start_0 .. :try_end_4b} :catchall_4f

    if-eqz p2, :cond_4e

    return p1

    :cond_4e
    return v2

    :catchall_4f
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_77

    const-wide v2, 0x469f27c2241af5bL

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_77
    goto :goto_79

    :goto_78
    throw v0

    :goto_79
    goto :goto_78
.end method

.method private aM(II)I
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x117b5f8d8cc855dbL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x471c57c164f7d84bL  # 3.67910509894963E34

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    iget-object v0, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-virtual {p0, p1}, Labcd/Sa;->P8(I)I

    move-result v1

    invoke-interface {v0, v1}, Labcd/pa;->Hw(I)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p0, p1}, Labcd/Sa;->J8(I)I

    move-result v0

    if-ne v0, p2, :cond_29

    return p1

    :cond_29
    invoke-virtual {p0, p1}, Labcd/Sa;->we(I)I

    move-result v0

    const/4 v1, 0x0

    :goto_2e
    const/4 v2, -0x1

    if-ge v1, v0, :cond_3f

    invoke-virtual {p0, p1, v1}, Labcd/Sa;->Zo(II)I

    move-result v3

    invoke-direct {p0, v3, p2}, Labcd/Sa;->aM(II)I

    move-result v3
    :try_end_39
    .catchall {:try_start_0 .. :try_end_39} :catchall_40

    if-eq v3, v2, :cond_3c

    return v3

    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_3f
    return v2

    :catchall_40
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_59

    const-wide v2, 0x471c57c164f7d84bL  # 3.67910509894963E34

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_59
    goto :goto_5b

    :goto_5a
    throw v0

    :goto_5b
    goto :goto_5a
.end method

.method private et(I)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x3777244853f8793cL
    .end annotation

    const-wide v0, 0x2232785cc9b7f5e4L  # 5.916609084382979E-144

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    invoke-virtual {p0, p1}, Labcd/Sa;->we(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_1d

    invoke-virtual {p0, p1, v3}, Labcd/Sa;->Zo(II)I

    move-result v4

    invoke-direct {p0, v4}, Labcd/Sa;->et(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_1d
    iget-object v2, p0, Labcd/Sa;->gn:[I

    add-int/lit8 v3, p1, 0x2

    const/4 v4, -0x1

    aput v4, v2, v3
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_25

    return-void

    :catchall_25
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_32

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    goto :goto_34

    :goto_33
    throw v2

    :goto_34
    goto :goto_33
.end method

.method private gn(III)I
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x51694e66479ef8b1L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_1c

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x317306b56e47ca1fL  # 1.722952148452758E-70

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    iget-object v0, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-virtual {p0, p1}, Labcd/Sa;->P8(I)I

    move-result v1

    invoke-interface {v0, v1}, Labcd/pa;->u7(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p0, p1, p2, p3}, Labcd/Sa;->FH(III)Z

    move-result v0

    if-eqz v0, :cond_2f

    return p1

    :cond_2f
    invoke-virtual {p0, p1}, Labcd/Sa;->we(I)I

    move-result v0

    const/4 v1, 0x0

    :goto_34
    const/4 v2, -0x1

    if-ge v1, v0, :cond_45

    invoke-virtual {p0, p1, v1}, Labcd/Sa;->Zo(II)I

    move-result v3

    invoke-direct {p0, v3, p2, p3}, Labcd/Sa;->gn(III)I

    move-result v3
    :try_end_3f
    .catchall {:try_start_0 .. :try_end_3f} :catchall_46

    if-eq v3, v2, :cond_42

    return v3

    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    :cond_45
    return v2

    :catchall_46
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_64

    const-wide v2, 0x317306b56e47ca1fL  # 1.722952148452758E-70

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_64
    goto :goto_66

    :goto_65
    throw v0

    :goto_66
    goto :goto_65
.end method

.method private gn(IIIII)I
    .registers 16
    .annotation runtime Labcd/su;
        method = -0x7415d5913e40699fL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_26

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x3d4b9303fd9b62b1L  # 1.9592704093810784E-13

    move-object v3, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    invoke-virtual {p0, p1}, Labcd/Sa;->we(I)I

    move-result v0

    const/4 v1, 0x0

    :goto_2b
    const/4 v2, -0x1

    if-ge v1, v0, :cond_41

    invoke-virtual {p0, p1, v1}, Labcd/Sa;->Zo(II)I

    move-result v4

    move-object v3, p0

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v3 .. v8}, Labcd/Sa;->gn(IIIII)I

    move-result v3

    if-eq v3, v2, :cond_3e

    return v3

    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_41
    iget-object v0, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-virtual {p0, p1}, Labcd/Sa;->P8(I)I

    move-result v1

    invoke-interface {v0, v1}, Labcd/pa;->Mr(I)Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-virtual {p0, p1}, Labcd/Sa;->Sf(I)Z

    move-result v0

    if-nez v0, :cond_60

    invoke-virtual {p0, p1, p2, p3}, Labcd/Sa;->FH(III)Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-virtual {p0, p1, p4, p5}, Labcd/Sa;->Hw(III)Z

    move-result p2
    :try_end_5d
    .catchall {:try_start_0 .. :try_end_5d} :catchall_61

    if-eqz p2, :cond_60

    return p1

    :cond_60
    return v2

    :catchall_61
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_89

    const-wide v2, 0x3d4b9303fd9b62b1L  # 1.9592704093810784E-13

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_89
    goto :goto_8b

    :goto_8a
    throw v0

    :goto_8b
    goto :goto_8a
.end method

.method private j3(II)I
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x18f9ee7c3fb8d401L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x52aab471632fe10fL  # 1.6999609591839395E90

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    iget-object v0, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-virtual {p0, p1}, Labcd/Sa;->P8(I)I

    move-result v1

    invoke-interface {v0, v1}, Labcd/pa;->P8(I)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p0, p1}, Labcd/Sa;->J8(I)I

    move-result v0

    if-ne v0, p2, :cond_29

    return p1

    :cond_29
    invoke-virtual {p0, p1}, Labcd/Sa;->we(I)I

    move-result v0

    const/4 v1, 0x0

    :goto_2e
    const/4 v2, -0x1

    if-ge v1, v0, :cond_3f

    invoke-virtual {p0, p1, v1}, Labcd/Sa;->Zo(II)I

    move-result v3

    invoke-direct {p0, v3, p2}, Labcd/Sa;->j3(II)I

    move-result v3
    :try_end_39
    .catchall {:try_start_0 .. :try_end_39} :catchall_40

    if-eq v3, v2, :cond_3c

    return v3

    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_3f
    return v2

    :catchall_40
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_59

    const-wide v2, 0x52aab471632fe10fL  # 1.6999609591839395E90

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_59
    goto :goto_5b

    :goto_5a
    throw v0

    :goto_5b
    goto :goto_5a
.end method

.method private j6(IIIIII)I
    .registers 24
    .annotation runtime Labcd/su;
        method = -0x378bcaa5d48008abL
    .end annotation

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    sget-boolean v0, Labcd/Sa;->j6:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4d

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v9}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v10}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v11}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v12}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v13}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x5

    aput-object v2, v0, v3

    const-wide v2, 0x20a194e1a7cdbb85L

    invoke-static {v2, v3, v7, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_4d
    invoke-virtual/range {p0 .. p1}, Labcd/Sa;->we(I)I

    move-result v14

    const/4 v15, 0x0

    :goto_52
    const/4 v6, -0x1

    if-ge v15, v14, :cond_74

    invoke-virtual {v7, v8, v15}, Labcd/Sa;->Zo(II)I

    move-result v1

    move-object/from16 v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v16, v14

    const/4 v14, -0x1

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Labcd/Sa;->j6(IIIIII)I

    move-result v0

    if-eq v0, v14, :cond_6f

    return v0

    :cond_6f
    add-int/lit8 v15, v15, 0x1

    move/from16 v14, v16

    goto :goto_52

    :cond_74
    const/4 v14, -0x1

    invoke-virtual/range {p0 .. p1}, Labcd/Sa;->P8(I)I

    move-result v0

    if-ne v0, v9, :cond_88

    invoke-virtual {v7, v8, v10, v11}, Labcd/Sa;->FH(III)Z

    move-result v0

    if-eqz v0, :cond_88

    invoke-virtual {v7, v8, v12, v13}, Labcd/Sa;->FH(III)Z

    move-result v0

    if-eqz v0, :cond_88

    return v8

    :cond_88
    return v14
.end method

.method private j6(Ljava/lang/StringBuffer;Ljava/lang/String;Labcd/Ta;I)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x1a79be085d35e640L
    .end annotation

    const-string v0, ","

    :try_start_2
    sget-boolean v1, Labcd/Sa;->j6:Z

    if-eqz v1, :cond_17

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x58fab5b64e78c100L  # -1.030602574221352E-120

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v2 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0, p4}, Labcd/Ta;->v5(Labcd/Sa;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0, p4}, Labcd/Ta;->Hw(Labcd/Sa;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0, p4}, Labcd/Ta;->FH(Labcd/Sa;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0, p4}, Labcd/Ta;->DW(Labcd/Sa;I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "                     "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x19

    const/4 v3, 0x0

    if-le v1, v2, :cond_66

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_66
    iget-object v1, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-virtual {p0, p4}, Labcd/Sa;->P8(I)I

    move-result v2

    invoke-interface {v1, v2}, Labcd/pa;->u7(I)Z

    move-result v1

    if-eqz v1, :cond_8c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Labcd/Sa;->aM(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_88
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_cc

    :cond_8c
    iget-object v1, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-virtual {p0, p4}, Labcd/Sa;->P8(I)I

    move-result v2

    invoke-interface {v1, v2}, Labcd/pa;->Zo(I)Z

    move-result v1

    if-eqz v1, :cond_af

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Labcd/Sa;->lg(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_88

    :cond_af
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-virtual {p0, p4}, Labcd/Sa;->P8(I)I

    move-result v2

    invoke-interface {v0, v2}, Labcd/pa;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_88

    :goto_cc
    iget-object v0, p0, Labcd/Sa;->J0:Labcd/pa;
    :try_end_ce
    .catchall {:try_start_2 .. :try_end_ce} :catchall_144

    const-string v1, " "

    if-eqz v0, :cond_f6

    const/4 v0, 0x0

    :goto_d3
    :try_start_d3
    invoke-virtual {p0, p4}, Labcd/Sa;->P8(I)I

    move-result v2

    invoke-direct {p0, v2}, Labcd/Sa;->Xa(I)I

    move-result v2

    if-ge v0, v2, :cond_f6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4, v0}, Labcd/Sa;->XL(II)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_d3

    :cond_f6
    invoke-direct {p0, p4}, Labcd/Sa;->Eq(I)Z

    move-result v0

    if-eqz v0, :cond_112

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Labcd/Sa;->J8(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_112
    invoke-virtual {p0, p4}, Labcd/Sa;->XG(I)Z

    move-result v0

    if-eqz v0, :cond_11d

    const-string v0, " synthetic"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_11d
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p4}, Labcd/Sa;->we(I)I

    move-result v0

    :goto_126
    if-ge v3, v0, :cond_143

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p4, v3}, Labcd/Sa;->Zo(II)I

    move-result v2

    invoke-direct {p0, p1, v1, p3, v2}, Labcd/Sa;->j6(Ljava/lang/StringBuffer;Ljava/lang/String;Labcd/Ta;I)V
    :try_end_140
    .catchall {:try_start_d3 .. :try_end_140} :catchall_144

    add-int/lit8 v3, v3, 0x1

    goto :goto_126

    :cond_143
    return-void

    :catchall_144
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_15b

    const-wide v2, -0x58fab5b64e78c100L  # -1.030602574221352E-120

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_15b
    goto :goto_15d

    :goto_15c
    throw v0

    :goto_15d
    goto :goto_15c
.end method

.method private tp(III)I
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x30471e698904bc0fL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_1c

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x1029bce40e1f395fL  # 8.289067603553573E-231

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    invoke-virtual {p0, p1}, Labcd/Sa;->we(I)I

    move-result v0

    const/4 v1, 0x0

    :goto_21
    const/4 v2, -0x1

    if-ge v1, v0, :cond_32

    invoke-virtual {p0, p1, v1}, Labcd/Sa;->Zo(II)I

    move-result v3

    invoke-direct {p0, v3, p2, p3}, Labcd/Sa;->tp(III)I

    move-result v3

    if-eq v3, v2, :cond_2f

    return v3

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_32
    iget-object v0, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-virtual {p0, p1}, Labcd/Sa;->P8(I)I

    move-result v1

    invoke-interface {v0, v1}, Labcd/pa;->a8(I)Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-virtual {p0, p1, p2, p3}, Labcd/Sa;->Hw(III)Z

    move-result p2
    :try_end_42
    .catchall {:try_start_0 .. :try_end_42} :catchall_46

    if-eqz p2, :cond_45

    return p1

    :cond_45
    return v2

    :catchall_46
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_64

    const-wide v2, 0x1029bce40e1f395fL  # 8.289067603553573E-231

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_64
    goto :goto_66

    :goto_65
    throw v0

    :goto_66
    goto :goto_65
.end method

.method private u7(III)I
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x4763efdcf065a6a5L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_1c

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x2f095a5ad4b8f0bL  # -2.508008117279576E294

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    invoke-virtual {p0, p1}, Labcd/Sa;->we(I)I

    move-result v0

    const/4 v1, 0x0

    :goto_21
    const/4 v2, -0x1

    if-ge v1, v0, :cond_32

    invoke-virtual {p0, p1, v1}, Labcd/Sa;->Zo(II)I

    move-result v3

    invoke-direct {p0, v3, p2, p3}, Labcd/Sa;->u7(III)I

    move-result v3

    if-eq v3, v2, :cond_2f

    return v3

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_32
    iget-object v0, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-virtual {p0, p1}, Labcd/Sa;->P8(I)I

    move-result v1

    invoke-interface {v0, v1}, Labcd/pa;->XL(I)Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-virtual {p0, p1, p2, p3}, Labcd/Sa;->FH(III)Z

    move-result v0

    if-nez v0, :cond_5a

    invoke-virtual {p0, p1}, Labcd/Sa;->sh(I)Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-virtual {p0, p1}, Labcd/Sa;->j3(I)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Labcd/Sa;->DW(III)Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-virtual {p0, p1, p2, p3}, Labcd/Sa;->j6(III)Z

    move-result p2
    :try_end_58
    .catchall {:try_start_0 .. :try_end_58} :catchall_5c

    if-eqz p2, :cond_5b

    :cond_5a
    return p1

    :cond_5b
    return v2

    :catchall_5c
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_7a

    const-wide v2, -0x2f095a5ad4b8f0bL  # -2.508008117279576E294

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7a
    goto :goto_7c

    :goto_7b
    throw v0

    :goto_7c
    goto :goto_7b
.end method

.method private u7(IIIII)I
    .registers 16
    .annotation runtime Labcd/su;
        method = 0x2ca8c0c8c282b330L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_26

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x57f8887cc91bdd90L  # -7.444686257270471E-116

    move-object v3, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    invoke-virtual {p0, p1}, Labcd/Sa;->we(I)I

    move-result v0

    const/4 v1, 0x0

    :goto_2b
    const/4 v2, -0x1

    if-ge v1, v0, :cond_41

    invoke-virtual {p0, p1, v1}, Labcd/Sa;->Zo(II)I

    move-result v4

    move-object v3, p0

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v3 .. v8}, Labcd/Sa;->u7(IIIII)I

    move-result v3

    if-eq v3, v2, :cond_3e

    return v3

    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_41
    iget-object v0, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-virtual {p0, p1}, Labcd/Sa;->P8(I)I

    move-result v1

    invoke-interface {v0, v1}, Labcd/pa;->FH(I)Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-virtual {p0, p1, p2, p3}, Labcd/Sa;->FH(III)Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-virtual {p0, p1, p4, p5}, Labcd/Sa;->FH(III)Z

    move-result p2
    :try_end_57
    .catchall {:try_start_0 .. :try_end_57} :catchall_5b

    if-eqz p2, :cond_5a

    return p1

    :cond_5a
    return v2

    :catchall_5b
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_83

    const-wide v2, -0x57f8887cc91bdd90L  # -7.444686257270471E-116

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_83
    goto :goto_85

    :goto_84
    throw v0

    :goto_85
    goto :goto_84
.end method

.method private v5(IIIII)I
    .registers 16
    .annotation runtime Labcd/su;
        method = -0x6e7baedce5af220L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_26

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x963c5baa280f8c0L

    move-object v3, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    invoke-virtual {p0, p1}, Labcd/Sa;->we(I)I

    move-result v0

    const/4 v1, 0x0

    :goto_2b
    const/4 v2, -0x1

    if-ge v1, v0, :cond_41

    invoke-virtual {p0, p1, v1}, Labcd/Sa;->Zo(II)I

    move-result v4

    move-object v3, p0

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v3 .. v8}, Labcd/Sa;->v5(IIIII)I

    move-result v3

    if-eq v3, v2, :cond_3e

    return v3

    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_41
    iget-object v0, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-virtual {p0, p1}, Labcd/Sa;->P8(I)I

    move-result v1

    invoke-interface {v0, v1}, Labcd/pa;->XL(I)Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-virtual {p0, p1, p2, p3}, Labcd/Sa;->FH(III)Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-virtual {p0, p1, p4, p5}, Labcd/Sa;->FH(III)Z

    move-result p2
    :try_end_57
    .catchall {:try_start_0 .. :try_end_57} :catchall_5b

    if-eqz p2, :cond_5a

    return p1

    :cond_5a
    return v2

    :catchall_5b
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_83

    const-wide v2, -0x963c5baa280f8c0L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_83
    goto :goto_85

    :goto_84
    throw v0

    :goto_85
    goto :goto_84
.end method

.method private we(III)I
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x171882a7fcae4234L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_1c

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0xaafac6026d0ac54L

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    invoke-virtual {p0, p1}, Labcd/Sa;->jJ(I)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p0, p1, p2, p3}, Labcd/Sa;->FH(III)Z

    move-result v0

    if-eqz v0, :cond_29

    return p1

    :cond_29
    invoke-virtual {p0, p1}, Labcd/Sa;->we(I)I

    move-result v0

    const/4 v1, 0x0

    :goto_2e
    const/4 v2, -0x1

    if-ge v1, v0, :cond_3f

    invoke-virtual {p0, p1, v1}, Labcd/Sa;->Zo(II)I

    move-result v3

    invoke-direct {p0, v3, p2, p3}, Labcd/Sa;->we(III)I

    move-result v3
    :try_end_39
    .catchall {:try_start_0 .. :try_end_39} :catchall_40

    if-eq v3, v2, :cond_3c

    return v3

    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_3f
    return v2

    :catchall_40
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_5e

    const-wide v2, 0xaafac6026d0ac54L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5e
    goto :goto_60

    :goto_5f
    throw v0

    :goto_60
    goto :goto_5f
.end method


# virtual methods
.method public BT(I)I
    .registers 6

    const-wide v0, -0x9866ce704a3e600L  # -5.033210398982193E262

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    invoke-virtual {p0, p1}, Labcd/Sa;->jJ(I)Z

    move-result v2

    if-nez v2, :cond_29

    invoke-virtual {p0, p1}, Labcd/Sa;->we(I)I

    move-result v2

    if-nez v2, :cond_1f

    iget-object v2, p0, Labcd/Sa;->gn:[I

    add-int/lit8 v3, p1, 0x5

    aget p1, v2, v3

    return p1

    :cond_1f
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Labcd/Sa;->Zo(II)I

    move-result v2

    invoke-virtual {p0, v2}, Labcd/Sa;->BT(I)I

    move-result p1

    return p1

    :cond_29
    invoke-virtual {p0, p1}, Labcd/Sa;->aj(I)Z

    move-result v2

    if-eqz v2, :cond_36

    iget-object v2, p0, Labcd/Sa;->gn:[I

    add-int/lit8 v3, p1, 0x5

    aget p1, v2, v3

    return p1

    :cond_36
    invoke-virtual {p0, p1}, Labcd/Sa;->sy(I)Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object v2, p0, Labcd/Sa;->gn:[I

    add-int/lit8 v3, p1, 0x5

    aget p1, v2, v3

    return p1

    :cond_43
    invoke-virtual {p0, p1}, Labcd/Sa;->wc(I)Z

    move-result v2

    if-eqz v2, :cond_50

    iget-object v2, p0, Labcd/Sa;->gn:[I

    add-int/lit8 v3, p1, 0x4

    aget p1, v2, v3

    return p1

    :cond_50
    iget-object v2, p0, Labcd/Sa;->gn:[I

    add-int/lit8 v3, p1, 0x4

    aget p1, v2, v3
    :try_end_56
    .catchall {:try_start_5 .. :try_end_56} :catchall_57

    return p1

    :catchall_57
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_64

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_64
    throw v2
.end method

.method public DW(IIII)I
    .registers 14

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_21

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x309e56cb8c94e89bL  # 1.6768837934036337E-74

    move-object v3, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    invoke-virtual {p0}, Labcd/Sa;->aM()I

    move-result v2

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Labcd/Sa;->DW(IIIII)I

    move-result p1
    :try_end_2e
    .catchall {:try_start_0 .. :try_end_2e} :catchall_2f

    return p1

    :catchall_2f
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_52

    const-wide v2, 0x309e56cb8c94e89bL  # 1.6768837934036337E-74

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_52
    throw v0
.end method

.method public DW()V
    .registers 5

    const-wide v0, -0x43e3b036386b953dL  # -3.8369471259201687E-19

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-boolean v2, p0, Labcd/Sa;->U2:Z

    if-nez v2, :cond_1d

    invoke-virtual {p0}, Labcd/Sa;->aM()I

    move-result v2

    invoke-direct {p0, v2}, Labcd/Sa;->et(I)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Labcd/Sa;->U2:Z

    const/4 v2, 0x0

    iput v2, p0, Labcd/Sa;->EQ:I
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1e

    :cond_1d
    return-void

    :catchall_1e
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method public DW(I)V
    .registers 6

    const-wide v0, -0x360c9a20889cc491L  # -1.7718826652155385E48

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iput p1, p0, Labcd/Sa;->we:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Labcd/Sa;->U2:Z
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_1f

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public DW(II)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0xd527216d5b5cddL

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0, p2}, Labcd/Sa;->J8(III)V
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_35

    const-wide v2, 0xd527216d5b5cddL

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_35
    throw v0
.end method

.method public DW(ILabcd/Ya;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x5328f977a00af7e3L  # 4.069913398347686E92

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Labcd/Sa;->v5:Labcd/La;

    iget-object v0, v0, Labcd/La;->a8:Labcd/Ba;

    if-eqz v0, :cond_29

    const/4 v0, 0x1

    if-nez p2, :cond_1e

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Labcd/Sa;->J8(III)V

    :cond_1e
    iget-object v1, p0, Labcd/Sa;->v5:Labcd/La;

    iget-object v1, v1, Labcd/La;->a8:Labcd/Ba;

    invoke-virtual {v1, p2}, Labcd/Ba;->Hw(Labcd/Aa;)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Labcd/Sa;->J8(III)V
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_2a

    :cond_29
    return-void

    :catchall_2a
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_3f

    const-wide v2, 0x5328f977a00af7e3L  # 4.069913398347686E92

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3f
    throw v0
.end method

.method public DW(III)Z
    .registers 12

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_1c

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x5167bc66db32184L  # -1.185733503338604E284

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    invoke-virtual {p0, p1}, Labcd/Sa;->vy(I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_24

    return v1

    :cond_24
    invoke-virtual {p0, p1}, Labcd/Sa;->QX(I)I

    move-result v0

    if-ge p2, v0, :cond_2b

    return v1

    :cond_2b
    invoke-virtual {p0, p1}, Labcd/Sa;->QX(I)I

    move-result v0

    const/4 v2, 0x1

    if-le p2, v0, :cond_33

    return v2

    :cond_33
    invoke-virtual {p0, p1}, Labcd/Sa;->Ws(I)I

    move-result p1
    :try_end_37
    .catchall {:try_start_0 .. :try_end_37} :catchall_3b

    if-gt p1, p3, :cond_3a

    return v2

    :cond_3a
    return v1

    :catchall_3b
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_59

    const-wide v2, -0x5167bc66db32184L  # -1.185733503338604E284

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_59
    throw v0
.end method

.method public EQ(I)I
    .registers 6

    const-wide v0, -0xa208c6f9378ebafL  # -6.044725339937504E259

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    const/4 v2, 0x7

    invoke-direct {p0, p1, v2}, Labcd/Sa;->XL(II)I

    move-result p1
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return p1

    :catchall_12
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_1f

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public EQ(II)I
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x15d7dbb9555c9644L

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-virtual {p0}, Labcd/Sa;->aM()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Labcd/Sa;->u7(III)I

    move-result p1
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_1f

    return p1

    :catchall_1f
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_38

    const-wide v2, -0x15d7dbb9555c9644L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_38
    throw v0
.end method

.method public EQ()Labcd/Cb;
    .registers 5

    const-wide v0, 0x3f0252bf9d76054dL  # 3.4948799732435234E-5

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-interface {v2, p0}, Labcd/pa;->v5(Labcd/Sa;)Labcd/Cb;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-object v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public FH()I
    .registers 5

    const-wide v0, -0x510347cfa143a4a0L  # -2.3653635003678067E-82

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Labcd/Sa;->QX:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public FH(I)I
    .registers 6

    const-wide v0, 0x359b655af8199c20L

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    const/16 v2, 0x8

    invoke-direct {p0, p1, v2}, Labcd/Sa;->XL(II)I

    move-result p1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return p1

    :catchall_13
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_20

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public FH(IIII)I
    .registers 14

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_21

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x4eb669756ef3c8cL  # -7.65785946790165E284

    move-object v3, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    invoke-virtual {p0, p1, p2, p3, p4}, Labcd/Sa;->DW(IIII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_29

    return v1

    :cond_29
    invoke-virtual {p0, v0}, Labcd/Sa;->we(I)I

    move-result v1

    const/4 v2, 0x1

    :goto_2e
    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_52

    invoke-virtual {p0, v0, v2}, Labcd/Sa;->Zo(II)I

    move-result v3

    iget-object v4, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-virtual {p0, v3}, Labcd/Sa;->P8(I)I

    move-result v5

    invoke-interface {v4, v5}, Labcd/pa;->FH(I)Z

    move-result v4

    if-eqz v4, :cond_4f

    invoke-virtual {p0, v3, p1, p2}, Labcd/Sa;->FH(III)Z

    move-result v4

    if-nez v4, :cond_4e

    invoke-virtual {p0, v3, p1, p2}, Labcd/Sa;->j6(III)Z

    move-result v4

    if-eqz v4, :cond_4f

    :cond_4e
    return v3

    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :cond_52
    invoke-virtual {p0, v0, v3}, Labcd/Sa;->Zo(II)I

    move-result v2

    if-eqz v1, :cond_66

    iget-object v1, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-virtual {p0, v2}, Labcd/Sa;->P8(I)I

    move-result v3

    invoke-interface {v1, v3}, Labcd/pa;->FH(I)Z

    move-result p1
    :try_end_62
    .catchall {:try_start_0 .. :try_end_62} :catchall_67

    if-nez p1, :cond_65

    goto :goto_66

    :cond_65
    return v2

    :cond_66
    :goto_66
    return v0

    :catchall_67
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_8a

    const-wide v2, -0x4eb669756ef3c8cL  # -7.65785946790165E284

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8a
    goto :goto_8c

    :goto_8b
    throw v0

    :goto_8c
    goto :goto_8b
.end method

.method public FH(II)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0xa318226ceb50d1bL  # -2.930126914457304E259

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    const/16 v0, 0x9

    invoke-direct {p0, p1, v0, p2}, Labcd/Sa;->J8(III)V
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_35

    const-wide v2, -0xa318226ceb50d1bL  # -2.930126914457304E259

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_35
    throw v0
.end method

.method public FH(III)Z
    .registers 12

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_1c

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0xf0068b248e52cc4L  # 2.015926734209401E-236

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    invoke-virtual {p0, p1}, Labcd/Sa;->vy(I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_24

    return v1

    :cond_24
    invoke-virtual {p0, p1}, Labcd/Sa;->vy(I)I

    move-result v0

    if-ge p2, v0, :cond_2b

    return v1

    :cond_2b
    invoke-virtual {p0, p1}, Labcd/Sa;->QX(I)I

    move-result v0

    if-le p2, v0, :cond_32

    return v1

    :cond_32
    invoke-virtual {p0, p1}, Labcd/Sa;->vy(I)I

    move-result v0

    invoke-virtual {p0, p1}, Labcd/Sa;->QX(I)I

    move-result v2

    if-ne v0, v2, :cond_4a

    invoke-virtual {p0, p1}, Labcd/Sa;->BT(I)I

    move-result v0

    if-ge p3, v0, :cond_43

    return v1

    :cond_43
    invoke-virtual {p0, p1}, Labcd/Sa;->Ws(I)I

    move-result p1

    if-lt p3, p1, :cond_64

    return v1

    :cond_4a
    invoke-virtual {p0, p1}, Labcd/Sa;->vy(I)I

    move-result v0

    if-ne p2, v0, :cond_57

    invoke-virtual {p0, p1}, Labcd/Sa;->BT(I)I

    move-result v0

    if-ge p3, v0, :cond_57

    return v1

    :cond_57
    invoke-virtual {p0, p1}, Labcd/Sa;->QX(I)I

    move-result v0

    if-ne p2, v0, :cond_64

    invoke-virtual {p0, p1}, Labcd/Sa;->Ws(I)I

    move-result p1
    :try_end_61
    .catchall {:try_start_0 .. :try_end_61} :catchall_66

    if-lt p3, p1, :cond_64

    return v1

    :cond_64
    const/4 p1, 0x1

    return p1

    :catchall_66
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_84

    const-wide v2, 0xf0068b248e52cc4L  # 2.015926734209401E-236

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_84
    throw v0
.end method

.method public Hw()J
    .registers 8

    const-wide v0, 0x2968592f3c2ea0dL

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-wide v2, p0, Labcd/Sa;->aM:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_15

    return-wide v2

    :cond_15
    invoke-virtual {p0}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v2

    invoke-interface {v2}, Labcd/na;->VH()Labcd/oa;

    move-result-object v2

    if-nez v2, :cond_22

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_22
    invoke-interface {v2, p0}, Labcd/oa;->Hw(Labcd/Sa;)J

    move-result-wide v2

    iput-wide v2, p0, Labcd/Sa;->aM:J
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_29

    return-wide v2

    :catchall_29
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_31

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_31
    throw v2
.end method

.method public Hw(IIII)Labcd/Cb;
    .registers 14

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_21

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x38131747fb387cadL  # -3.074138327614698E38

    move-object v3, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    invoke-virtual {p0, p1, p2, p3, p4}, Labcd/Sa;->DW(IIII)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2a

    return-object v1

    :cond_2a
    invoke-virtual {p0, v0}, Labcd/Sa;->we(I)I

    move-result v3

    const/4 v4, 0x0

    :goto_2f
    if-ge v4, v3, :cond_45

    invoke-virtual {p0, v0, v4}, Labcd/Sa;->Zo(II)I

    move-result v5

    invoke-virtual {p0, v5, p1, p2}, Labcd/Sa;->FH(III)Z

    move-result v6

    if-nez v6, :cond_46

    invoke-virtual {p0, v5, p1, p2}, Labcd/Sa;->j6(III)Z

    move-result v6

    if-eqz v6, :cond_42

    goto :goto_46

    :cond_42
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    :cond_45
    const/4 v5, -0x1

    :cond_46
    :goto_46
    add-int/lit8 v3, v3, -0x1

    :goto_48
    if-ltz v3, :cond_5e

    invoke-virtual {p0, v0, v3}, Labcd/Sa;->Zo(II)I

    move-result v6

    invoke-virtual {p0, v6, p3, p4}, Labcd/Sa;->FH(III)Z

    move-result v7

    if-nez v7, :cond_5f

    invoke-virtual {p0, v6, p3, p4}, Labcd/Sa;->DW(III)Z

    move-result v7

    if-eqz v7, :cond_5b

    goto :goto_5f

    :cond_5b
    add-int/lit8 v3, v3, -0x1

    goto :goto_48

    :cond_5e
    const/4 v6, -0x1

    :cond_5f
    :goto_5f
    if-eq v5, v2, :cond_78

    if-ne v6, v2, :cond_64

    goto :goto_78

    :cond_64
    if-le v4, v3, :cond_67

    return-object v1

    :cond_67
    new-instance v1, Labcd/Cb;

    invoke-direct {v1}, Labcd/Cb;-><init>()V

    :goto_6c
    if-gt v4, v3, :cond_78

    invoke-virtual {p0, v0, v4}, Labcd/Sa;->Zo(II)I

    move-result v2

    invoke-virtual {v1, v2}, Labcd/Cb;->j6(I)V
    :try_end_75
    .catchall {:try_start_0 .. :try_end_75} :catchall_79

    add-int/lit8 v4, v4, 0x1

    goto :goto_6c

    :cond_78
    :goto_78
    return-object v1

    :catchall_79
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_9c

    const-wide v2, -0x38131747fb387cadL  # -3.074138327614698E38

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9c
    goto :goto_9e

    :goto_9d
    throw v0

    :goto_9e
    goto :goto_9d
.end method

.method public Hw(I)Labcd/Ya;
    .registers 6

    const-wide v0, -0xf61db2e3275e03L

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/Sa;->v5:Labcd/La;

    iget-object v2, v2, Labcd/La;->a8:Labcd/Ba;

    const/4 v3, 0x6

    invoke-direct {p0, p1, v3}, Labcd/Sa;->XL(II)I

    move-result v3

    invoke-virtual {v2, v3}, Labcd/Ba;->FH(I)Labcd/Aa;

    move-result-object v2

    check-cast v2, Labcd/Ya;
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1c

    return-object v2

    :catchall_1c
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_29

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    throw v2
.end method

.method public Hw(II)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x26ac15c86c987978L

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    const/4 v0, 0x7

    invoke-direct {p0, p1, v0, p2}, Labcd/Sa;->J8(III)V
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_34

    const-wide v2, 0x26ac15c86c987978L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_34
    throw v0
.end method

.method public Hw(III)Z
    .registers 12

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_1c

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x401f690bcf25a4c5L  # 7.852584110901437

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    invoke-virtual {p0, p1}, Labcd/Sa;->vy(I)I

    move-result v0

    const/4 v1, 0x0

    if-ge p2, v0, :cond_24

    return v1

    :cond_24
    invoke-virtual {p0, p1}, Labcd/Sa;->QX(I)I

    move-result v0

    if-le p2, v0, :cond_2b

    return v1

    :cond_2b
    invoke-virtual {p0, p1}, Labcd/Sa;->vy(I)I

    move-result v0

    invoke-virtual {p0, p1}, Labcd/Sa;->QX(I)I

    move-result v2

    if-ne v0, v2, :cond_43

    invoke-virtual {p0, p1}, Labcd/Sa;->BT(I)I

    move-result v0

    if-ge p3, v0, :cond_3c

    return v1

    :cond_3c
    invoke-virtual {p0, p1}, Labcd/Sa;->Ws(I)I

    move-result p1

    if-le p3, p1, :cond_5d

    return v1

    :cond_43
    invoke-virtual {p0, p1}, Labcd/Sa;->vy(I)I

    move-result v0

    if-ne p2, v0, :cond_50

    invoke-virtual {p0, p1}, Labcd/Sa;->BT(I)I

    move-result v0

    if-ge p3, v0, :cond_50

    return v1

    :cond_50
    invoke-virtual {p0, p1}, Labcd/Sa;->QX(I)I

    move-result v0

    if-ne p2, v0, :cond_5d

    invoke-virtual {p0, p1}, Labcd/Sa;->Ws(I)I

    move-result p1
    :try_end_5a
    .catchall {:try_start_0 .. :try_end_5a} :catchall_5f

    if-le p3, p1, :cond_5d

    return v1

    :cond_5d
    const/4 p1, 0x1

    return p1

    :catchall_5f
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_7d

    const-wide v2, 0x401f690bcf25a4c5L  # 7.852584110901437

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7d
    throw v0
.end method

.method public I(I)Z
    .registers 6

    const-wide v0, -0x2291cb1bf43f0721L  # -1.1510916070092903E142

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-virtual {p0, p1}, Labcd/Sa;->P8(I)I

    move-result v3

    invoke-interface {v2, v3}, Labcd/pa;->er(I)Z

    move-result p1
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return p1

    :catchall_17
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_24

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method public J0()I
    .registers 5

    const-wide v0, -0x3af6ae87c60fb980L  # -3.825984369960173E24

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-interface {v2, p0}, Labcd/pa;->Zo(Labcd/Sa;)I

    move-result v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public J0(I)I
    .registers 6

    const-wide v0, 0x1036355c950692a8L

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    invoke-virtual {p0}, Labcd/Sa;->aM()I

    move-result v2

    invoke-direct {p0, v2, p1}, Labcd/Sa;->aM(II)I

    move-result p1
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return p1

    :catchall_15
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_22

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public J0(II)I
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x377a050061febe75L  # -2.39346046230563E41

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-virtual {p0}, Labcd/Sa;->aM()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Labcd/Sa;->EQ(III)I

    move-result p1
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_1f

    return p1

    :catchall_1f
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_38

    const-wide v2, -0x377a050061febe75L  # -2.39346046230563E41

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_38
    throw v0
.end method

.method public J8(I)I
    .registers 7

    const-wide v0, 0x3261c71c1e703f65L  # 5.275313940299183E-66

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    invoke-virtual {p0, p1}, Labcd/Sa;->jJ(I)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, p0, Labcd/Sa;->gn:[I

    add-int/lit8 v3, p1, 0x8

    aget p1, v2, v3

    return p1

    :cond_19
    iget-object v2, p0, Labcd/Sa;->gn:[I
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_2c

    add-int/lit8 v3, p1, 0x3

    aget v3, v2, v3

    if-nez v3, :cond_26

    add-int/lit8 v3, p1, 0x6

    :try_start_23
    aget p1, v2, v3

    return p1

    :cond_26
    add-int/lit8 v4, p1, 0x4

    add-int/2addr v4, v3

    aget p1, v2, v4
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_2c

    return p1

    :catchall_2c
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_39

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_39
    throw v2
.end method

.method public J8(II)I
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x50c9acf9aebb5a5L

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-virtual {p0}, Labcd/Sa;->aM()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Labcd/Sa;->we(III)I

    move-result p1
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_1f

    return p1

    :catchall_1f
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_38

    const-wide v2, -0x50c9acf9aebb5a5L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_38
    throw v0
.end method

.method public J8()Labcd/na;
    .registers 5

    const-wide v0, -0x1f11fbfa13b9ddf1L  # -8.242072507478966E158

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Labcd/Sa;->a8:Labcd/na;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public KD(I)Z
    .registers 6

    const-wide v0, -0x1622589159784c6cL  # -9.079477697367492E201

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    const/16 v2, 0x9

    invoke-direct {p0, p1, v2}, Labcd/Sa;->XL(II)I

    move-result p1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_19

    const/4 v0, -0x1

    if-eq p1, v0, :cond_17

    const/4 p1, 0x1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    return p1

    :catchall_19
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_26

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method public Mr()J
    .registers 5

    const-wide v0, -0x19c660cbc5df386bL  # -2.721751916710956E184

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/Sa;->u7:I

    iget v0, p0, Labcd/Sa;->EQ:I
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_17

    mul-int/lit8 v2, v2, 0x4

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v2, v0

    int-to-long v0, v2

    return-wide v0

    :catchall_17
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public Mr(I)[C
    .registers 6

    const-wide v0, 0x1d147e87d14cc184L

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object p1, p0, Labcd/Sa;->Zo:[C
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object p1

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_1c

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public Mz(I)Z
    .registers 6

    const-wide v0, -0x164c8d64947ef179L  # -1.4886239793243852E201

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-virtual {p0, p1}, Labcd/Sa;->P8(I)I

    move-result v3

    invoke-interface {v2, v3}, Labcd/pa;->u7(I)Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-interface {v2, p0, p1}, Labcd/pa;->J0(Labcd/Sa;I)Z

    move-result p1
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_24

    if-eqz p1, :cond_22

    const/4 p1, 0x1

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    :goto_23
    return p1

    :catchall_24
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_31

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v2
.end method

.method public OW(I)Z
    .registers 6

    const-wide v0, -0x3f4da98712f85918L  # -4694.472366789101

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-interface {v2, p0, p1}, Labcd/pa;->XL(Labcd/Sa;I)Z

    move-result p1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return p1

    :catchall_13
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_20

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public P8(I)I
    .registers 6

    const-wide v0, -0x16d750bf8c55bd03L  # -3.6903949984258755E198

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/Sa;->gn:[I

    aget p1, v2, p1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_15

    const v0, 0xffff

    and-int/2addr p1, v0

    return p1

    :catchall_15
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_22

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public QX(I)I
    .registers 6

    const-wide v0, -0x3b3e99df0ab0c37L  # -5.474417238270097E290

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    invoke-virtual {p0, p1}, Labcd/Sa;->jJ(I)Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-virtual {p0, p1}, Labcd/Sa;->we(I)I

    move-result v2

    if-nez v2, :cond_1f

    iget-object v2, p0, Labcd/Sa;->gn:[I

    add-int/lit8 v3, p1, 0x4

    aget p1, v2, v3

    return p1

    :cond_1f
    invoke-virtual {p0, p1}, Labcd/Sa;->we(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, p1, v2}, Labcd/Sa;->Zo(II)I

    move-result v2

    invoke-virtual {p0, v2}, Labcd/Sa;->QX(I)I

    move-result p1

    return p1

    :cond_2e
    invoke-virtual {p0, p1}, Labcd/Sa;->aj(I)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-object v2, p0, Labcd/Sa;->gn:[I

    add-int/lit8 v3, p1, 0x6

    aget p1, v2, v3

    return p1

    :cond_3b
    invoke-virtual {p0, p1}, Labcd/Sa;->sy(I)Z

    move-result v2

    if-eqz v2, :cond_48

    iget-object v2, p0, Labcd/Sa;->gn:[I

    add-int/lit8 v3, p1, 0x6

    aget p1, v2, v3

    return p1

    :cond_48
    invoke-virtual {p0, p1}, Labcd/Sa;->wc(I)Z

    move-result v2

    if-eqz v2, :cond_55

    iget-object v2, p0, Labcd/Sa;->gn:[I

    add-int/lit8 v3, p1, 0x5

    aget p1, v2, v3

    return p1

    :cond_55
    iget-object v2, p0, Labcd/Sa;->gn:[I

    add-int/lit8 v3, p1, 0x3

    aget p1, v2, v3
    :try_end_5b
    .catchall {:try_start_5 .. :try_end_5b} :catchall_5c

    return p1

    :catchall_5c
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_69

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_69
    throw v2
.end method

.method public QX()Labcd/Cb;
    .registers 5

    const-wide v0, -0x136994a3dbe5062fL  # -1.2075925279304953E215

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-interface {v2, p0}, Labcd/pa;->j6(Labcd/Sa;)Labcd/Cb;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-object v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public QX(II)Z
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x4470243f36759abL

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    const/4 v0, 0x1

    if-ne p2, p1, :cond_1a

    return v0

    :cond_1a
    invoke-virtual {p0}, Labcd/Sa;->aM()I

    move-result v1

    if-eq p2, v1, :cond_27

    invoke-virtual {p0, p2}, Labcd/Sa;->er(I)I

    move-result p2
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_29

    if-ne p2, p1, :cond_1a

    return v0

    :cond_27
    const/4 p1, 0x0

    return p1

    :catchall_29
    move-exception v0

    move-object v6, v0

    sget-boolean v0, Labcd/Sa;->DW:Z

    if-eqz v0, :cond_43

    const-wide v1, 0x4470243f36759abL

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v6

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_43
    goto :goto_45

    :goto_44
    throw v6

    :goto_45
    goto :goto_44
.end method

.method public Qq(I)Z
    .registers 6

    const-wide v0, -0x5a073a0bdac0f259L  # -9.149237944614871E-126

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-virtual {p0, p1}, Labcd/Sa;->P8(I)I

    move-result v3

    invoke-interface {v2, v3}, Labcd/pa;->VH(I)Z

    move-result p1
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return p1

    :catchall_17
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_24

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method public SI(I)Z
    .registers 6

    const-wide v0, 0xa163b2897654ddL

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    const/4 v2, 0x6

    invoke-direct {p0, p1, v2}, Labcd/Sa;->XL(II)I

    move-result p1
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_18

    const/4 v0, -0x1

    if-eq p1, v0, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1

    :catchall_18
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_25

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public Sf(I)Z
    .registers 6

    const-wide v0, 0xc7dbeff6994c688L

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-interface {v2, p0, p1}, Labcd/pa;->EQ(Labcd/Sa;I)Z

    move-result p1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return p1

    :catchall_13
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_20

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public U2(I)I
    .registers 6

    const-wide v0, 0x4212e46d2eebfc8L

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/Sa;->gn:[I

    add-int/lit8 v3, p1, 0x3

    aget v2, v2, v3

    iget-object v3, p0, Labcd/Sa;->Zo:[C

    aget-char p1, v3, v2
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return p1

    :catchall_17
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_24

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method public U2()J
    .registers 5

    const-wide v0, -0x2ca2aa749a289c1cL  # -3.8243030896695878E93

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Sa;->gn:[I

    array-length v2, v2

    iget-object v3, p0, Labcd/Sa;->tp:[I

    array-length v0, v3
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_19

    mul-int/lit8 v2, v2, 0x4

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v2, v0

    int-to-long v0, v2

    return-wide v0

    :catchall_19
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method public VH(I)I
    .registers 6

    const-wide v0, 0x24df62e51271cec0L

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    const/4 v2, 0x5

    invoke-direct {p0, p1, v2}, Labcd/Sa;->XL(II)I

    move-result p1
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return p1

    :catchall_12
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_1f

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public VH(II)I
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x1243036408473200L

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-virtual {p0}, Labcd/Sa;->aM()I

    move-result v2

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Labcd/Sa;->FH(IIIII)I

    move-result p1
    :try_end_23
    .catchall {:try_start_0 .. :try_end_23} :catchall_24

    return p1

    :catchall_24
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_3d

    const-wide v2, 0x1243036408473200L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3d
    throw v0
.end method

.method public VH(IIII)I
    .registers 14

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_21

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x1c238c0818dfee7L

    move-object v3, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    invoke-virtual {p0}, Labcd/Sa;->aM()I

    move-result v2

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Labcd/Sa;->v5(IIIII)I

    move-result p1
    :try_end_2e
    .catchall {:try_start_0 .. :try_end_2e} :catchall_2f

    return p1

    :catchall_2f
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_52

    const-wide v2, -0x1c238c0818dfee7L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_52
    throw v0
.end method

.method public VH()Labcd/Da;
    .registers 5

    const-wide v0, 0x1c450fedb5e7907fL

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Labcd/Sa;->J8:Labcd/Da;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public Ws(I)I
    .registers 7

    const-wide v0, 0xf097512bef7ef9dL

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    invoke-virtual {p0, p1}, Labcd/Sa;->jJ(I)Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-virtual {p0, p1}, Labcd/Sa;->we(I)I

    move-result v2

    if-nez v2, :cond_1f

    iget-object v2, p0, Labcd/Sa;->gn:[I

    add-int/lit8 v3, p1, 0x5

    aget p1, v2, v3

    return p1

    :cond_1f
    invoke-virtual {p0, p1}, Labcd/Sa;->we(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, p1, v2}, Labcd/Sa;->Zo(II)I

    move-result v2

    invoke-virtual {p0, v2}, Labcd/Sa;->Ws(I)I

    move-result p1

    return p1

    :cond_2e
    invoke-virtual {p0, p1}, Labcd/Sa;->aj(I)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-object v2, p0, Labcd/Sa;->gn:[I

    add-int/lit8 v3, p1, 0x7

    aget p1, v2, v3

    return p1

    :cond_3b
    invoke-virtual {p0, p1}, Labcd/Sa;->sy(I)Z

    move-result v2

    if-eqz v2, :cond_48

    iget-object v2, p0, Labcd/Sa;->gn:[I

    add-int/lit8 v3, p1, 0x7

    aget p1, v2, v3

    return p1

    :cond_48
    invoke-virtual {p0, p1}, Labcd/Sa;->wc(I)Z

    move-result v2

    if-eqz v2, :cond_55

    iget-object v2, p0, Labcd/Sa;->gn:[I

    add-int/lit8 v3, p1, 0x6

    aget p1, v2, v3

    return p1

    :cond_55
    invoke-virtual {p0, p1}, Labcd/Sa;->XG(I)Z

    move-result v2

    if-eqz v2, :cond_62

    iget-object v2, p0, Labcd/Sa;->gn:[I

    add-int/lit8 v3, p1, 0x4

    aget p1, v2, v3

    return p1

    :cond_62
    iget-object v2, p0, Labcd/Sa;->gn:[I

    add-int/lit8 v3, p1, 0x4

    aget v2, v2, v3

    iget-object v3, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-virtual {p0, p1}, Labcd/Sa;->P8(I)I

    move-result v4

    invoke-interface {v3, v4}, Labcd/pa;->J8(I)I

    move-result p1
    :try_end_72
    .catchall {:try_start_5 .. :try_end_72} :catchall_74

    add-int/2addr v2, p1

    return v2

    :catchall_74
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_81

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_81
    throw v2
.end method

.method public Ws(II)I
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x2af2330d87ef5e4cL  # 8.125669355928938E-102

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-virtual {p0}, Labcd/Sa;->aM()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Labcd/Sa;->J0(III)I

    move-result p1
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_1f

    return p1

    :catchall_1f
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_38

    const-wide v2, 0x2af2330d87ef5e4cL  # 8.125669355928938E-102

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_38
    throw v0
.end method

.method public Ws()Labcd/La;
    .registers 5

    const-wide v0, -0x55e69026a7b9600L

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Labcd/Sa;->v5:Labcd/La;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public XG(I)Z
    .registers 6

    const-wide v0, -0xcf639fffc4bb5c5L  # -1.407857907361089E246

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/Sa;->gn:[I

    aget p1, v2, p1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_19

    const/high16 v0, 0x100000

    and-int/2addr p1, v0

    if-eqz p1, :cond_17

    const/4 p1, 0x1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    return p1

    :catchall_19
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_26

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method public XL(I)I
    .registers 6

    const-wide v0, -0x31ec7db28ae7655L

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/Sa;->gn:[I

    add-int/lit8 v3, p1, 0x3

    aget p1, v2, v3
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return p1

    :catchall_13
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_20

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public XL()J
    .registers 8

    const-wide v0, -0x1431125721444580L  # -2.0335920788113103E211

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-wide v2, p0, Labcd/Sa;->j3:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_15

    return-wide v2

    :cond_15
    invoke-virtual {p0}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v2

    invoke-interface {v2}, Labcd/na;->VH()Labcd/oa;

    move-result-object v2

    if-nez v2, :cond_22

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_22
    invoke-interface {v2, p0}, Labcd/oa;->v5(Labcd/Sa;)J

    move-result-wide v2

    iput-wide v2, p0, Labcd/Sa;->j3:J
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_29

    return-wide v2

    :catchall_29
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_31

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_31
    throw v2
.end method

.method public XX(I)Z
    .registers 6

    const-wide v0, -0x290ef435e6c9dbe4L

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-virtual {p0, p1}, Labcd/Sa;->P8(I)I

    move-result v3

    invoke-interface {v2, v3}, Labcd/pa;->u7(I)Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-interface {v2, p0, p1}, Labcd/pa;->FH(Labcd/Sa;I)Z

    move-result p1
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_24

    if-eqz p1, :cond_22

    const/4 p1, 0x1

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    :goto_23
    return p1

    :catchall_24
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_31

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v2
.end method

.method public Zo(I)I
    .registers 6

    const-wide v0, -0x4cc23863cd0bf5e0L  # -7.239050667018677E-62

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    const/4 v2, 0x4

    invoke-direct {p0, p1, v2}, Labcd/Sa;->XL(II)I

    move-result p1
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return p1

    :catchall_12
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_1f

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public Zo(II)I
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x24b782069d2d0053L  # -5.432677296238778E131

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    iget-object v0, p0, Labcd/Sa;->gn:[I

    add-int/lit8 v1, p1, 0x4

    add-int/2addr v1, p2

    aget p1, v0, v1
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_1e

    return p1

    :catchall_1e
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_37

    const-wide v2, -0x24b782069d2d0053L  # -5.432677296238778E131

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_37
    throw v0
.end method

.method public Zo()J
    .registers 8

    const-wide v0, 0x241390fda7f71c63L  # 6.729955983050303E-135

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-wide v2, p0, Labcd/Sa;->XL:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_15

    return-wide v2

    :cond_15
    invoke-virtual {p0}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v2

    invoke-interface {v2}, Labcd/na;->VH()Labcd/oa;

    move-result-object v2

    if-nez v2, :cond_22

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_22
    invoke-interface {v2, p0}, Labcd/oa;->DW(Labcd/Sa;)J

    move-result-wide v2

    iput-wide v2, p0, Labcd/Sa;->XL:J
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_29

    return-wide v2

    :catchall_29
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_31

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_31
    throw v2
.end method

.method public Zo(IIII)Labcd/Cb;
    .registers 14

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_21

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x8146c3ed49a4b8dL

    move-object v3, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    invoke-virtual {p0, p1, p2, p3, p4}, Labcd/Sa;->v5(IIII)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2a

    return-object v1

    :cond_2a
    invoke-virtual {p0, v0}, Labcd/Sa;->we(I)I

    move-result v3

    const/4 v4, 0x0

    :goto_2f
    add-int/lit8 v5, v3, -0x1

    if-ge v4, v5, :cond_47

    invoke-virtual {p0, v0, v4}, Labcd/Sa;->Zo(II)I

    move-result v6

    invoke-virtual {p0, v6, p1, p2}, Labcd/Sa;->FH(III)Z

    move-result v7

    if-nez v7, :cond_48

    invoke-virtual {p0, v6, p1, p2}, Labcd/Sa;->j6(III)Z

    move-result v7

    if-eqz v7, :cond_44

    goto :goto_48

    :cond_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    :cond_47
    const/4 v6, -0x1

    :cond_48
    :goto_48
    if-ltz v5, :cond_5e

    invoke-virtual {p0, v0, v5}, Labcd/Sa;->Zo(II)I

    move-result v3

    invoke-virtual {p0, v3, p3, p4}, Labcd/Sa;->FH(III)Z

    move-result v7

    if-nez v7, :cond_5f

    invoke-virtual {p0, v3, p3, p4}, Labcd/Sa;->DW(III)Z

    move-result v7

    if-eqz v7, :cond_5b

    goto :goto_5f

    :cond_5b
    add-int/lit8 v5, v5, -0x1

    goto :goto_48

    :cond_5e
    const/4 v3, -0x1

    :cond_5f
    :goto_5f
    if-eq v6, v2, :cond_78

    if-ne v3, v2, :cond_64

    goto :goto_78

    :cond_64
    if-le v4, v5, :cond_67

    return-object v1

    :cond_67
    new-instance v1, Labcd/Cb;

    invoke-direct {v1}, Labcd/Cb;-><init>()V

    :goto_6c
    if-gt v4, v5, :cond_78

    invoke-virtual {p0, v0, v4}, Labcd/Sa;->Zo(II)I

    move-result v2

    invoke-virtual {v1, v2}, Labcd/Cb;->j6(I)V
    :try_end_75
    .catchall {:try_start_0 .. :try_end_75} :catchall_79

    add-int/lit8 v4, v4, 0x1

    goto :goto_6c

    :cond_78
    :goto_78
    return-object v1

    :catchall_79
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_9c

    const-wide v2, -0x8146c3ed49a4b8dL

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9c
    goto :goto_9e

    :goto_9d
    throw v0

    :goto_9e
    goto :goto_9d
.end method

.method public a8(I)I
    .registers 6

    const-wide v0, 0x43fb0862ebf5480L

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/Sa;->gn:[I

    add-int/lit8 v3, p1, 0x3

    aget p1, v2, v3
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_15

    add-int/lit8 p1, p1, 0x1

    return p1

    :catchall_15
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_22

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public aM()I
    .registers 5

    const-wide v0, 0x165b23325fc8bc81L

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Labcd/Sa;->we:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public aM(I)Ljava/lang/String;
    .registers 7

    const-wide v0, -0x5adc5dfac76deffcL  # -8.851077811144869E-130

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/Sa;->v5:Labcd/La;

    iget-object v2, v2, Labcd/La;->j3:Labcd/Ga;

    iget-object v3, p0, Labcd/Sa;->gn:[I

    add-int/lit8 v4, p1, 0x3

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Labcd/Ga;->j6(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    return-object p1

    :catchall_1b
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_28

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_28
    throw v2
.end method

.method public aj(I)Z
    .registers 6

    const-wide v0, 0x5d50b2e726b158fL

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-virtual {p0, p1}, Labcd/Sa;->P8(I)I

    move-result v3

    invoke-interface {v2, v3}, Labcd/pa;->Zo(I)Z

    move-result p1
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return p1

    :catchall_17
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_24

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method public br(I)Z
    .registers 6

    const-wide v0, -0x16f9434d6941c008L

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-virtual {p0, p1}, Labcd/Sa;->P8(I)I

    move-result v3

    invoke-interface {v2, v3}, Labcd/pa;->a8(I)Z

    move-result p1
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return p1

    :catchall_17
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_24

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method public ca(I)Z
    .registers 6

    const-wide v0, -0x24274a22d2ba448L  # -4.83048695455945E297

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-virtual {p0, p1}, Labcd/Sa;->P8(I)I

    move-result v3

    invoke-interface {v2, v3}, Labcd/pa;->j3(I)Z

    move-result p1
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return p1

    :catchall_17
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_24

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method public cb(I)Z
    .registers 7

    const-wide v0, 0xac8d866e839759cL

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    invoke-virtual {p0, p1}, Labcd/Sa;->er(I)I

    move-result v2

    invoke-virtual {p0, p1}, Labcd/Sa;->er(I)I

    move-result v3

    invoke-virtual {p0, v3}, Labcd/Sa;->we(I)I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {p0, v2, v3}, Labcd/Sa;->Zo(II)I

    move-result v0
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_23

    if-eq v0, p1, :cond_21

    goto :goto_22

    :cond_21
    const/4 v4, 0x0

    :goto_22
    return v4

    :catchall_23
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_30

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v2
.end method

.method public cn(I)Z
    .registers 8

    const-wide v0, -0x1904045a759f7830L  # -1.2175631676995343E188

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-virtual {p0, p1}, Labcd/Sa;->P8(I)I

    move-result v3

    invoke-interface {v2, v3}, Labcd/pa;->BT(I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1a

    return v3

    :cond_1a
    invoke-virtual {p0, p1}, Labcd/Sa;->tp(I)J

    move-result-wide v4

    iget-wide v0, p0, Labcd/Sa;->Hw:J
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_26

    cmp-long p1, v4, v0

    if-eqz p1, :cond_25

    const/4 v3, 0x1

    :cond_25
    return v3

    :catchall_26
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_33

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_33
    throw v2
.end method

.method public dx(I)Z
    .registers 6

    const-wide v0, -0x3ca848565e0de140L  # -2.670345463480192E16

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-virtual {p0, p1}, Labcd/Sa;->P8(I)I

    move-result v3

    invoke-interface {v2, v3}, Labcd/pa;->aM(I)Z

    move-result p1
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return p1

    :catchall_17
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_24

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method public ef(I)Z
    .registers 6

    const-wide v0, 0x3f1d7b2e6f27d33L

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-virtual {p0, p1}, Labcd/Sa;->P8(I)I

    move-result v3

    invoke-interface {v2, v3}, Labcd/pa;->U2(I)Z

    move-result p1
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return p1

    :catchall_17
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_24

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method public ei(I)I
    .registers 6

    const-wide v0, -0xa178c893fec97dL

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-interface {v2, p0, p1}, Labcd/pa;->J8(Labcd/Sa;I)I

    move-result p1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return p1

    :catchall_13
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_20

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public er(I)I
    .registers 6

    const-wide v0, 0x1f803478ce9c1440L  # 5.901473419857507E-157

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/Sa;->gn:[I

    add-int/lit8 v3, p1, 0x1

    aget p1, v2, v3
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return p1

    :catchall_13
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_20

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public g3(I)Z
    .registers 6

    const-wide v0, 0x43a554e7d4bb4b98L  # 7.6855413685077914E17

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-virtual {p0, p1}, Labcd/Sa;->P8(I)I

    move-result v3

    invoke-interface {v2, v3}, Labcd/pa;->j6(I)Z

    move-result p1
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return p1

    :catchall_17
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_24

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method public gW(I)I
    .registers 7

    const-wide v0, 0x55d6aaac222c4facL

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    invoke-virtual {p0, p1}, Labcd/Sa;->er(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_11
    invoke-virtual {p0, v2}, Labcd/Sa;->we(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_29

    invoke-virtual {p0, v2, v3}, Labcd/Sa;->Zo(II)I

    move-result v4

    if-ne v4, p1, :cond_26

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v2, v3}, Labcd/Sa;->Zo(II)I

    move-result p1
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_2b

    return p1

    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_29
    const/4 p1, -0x1

    return p1

    :catchall_2b
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_38

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_38
    goto :goto_3a

    :goto_39
    throw v2

    :goto_3a
    goto :goto_39
.end method

.method public gn(I)I
    .registers 6

    const-wide v0, -0x33e70f7fcb00001cL  # -3.913687608004647E58

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    const/16 v2, 0x9

    invoke-direct {p0, p1, v2}, Labcd/Sa;->XL(II)I

    move-result p1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return p1

    :catchall_13
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_20

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public gn(II)I
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0xb7c1056b4baed00L

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-virtual {p0}, Labcd/Sa;->aM()I

    move-result v2

    add-int/lit8 v6, p2, 0x1

    move-object v1, p0

    move v3, p1

    move v4, v6

    move v5, p1

    invoke-direct/range {v1 .. v6}, Labcd/Sa;->Hw(IIIII)I

    move-result p1
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_25

    return p1

    :catchall_25
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_3e

    const-wide v2, 0xb7c1056b4baed00L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3e
    throw v0
.end method

.method public gn(IIII)I
    .registers 14

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_21

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0xb2c9fab6cad54b0L  # -5.682336998214617E254

    move-object v3, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    invoke-virtual {p0}, Labcd/Sa;->aM()I

    move-result v2

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Labcd/Sa;->Zo(IIIII)I

    move-result p1
    :try_end_2e
    .catchall {:try_start_0 .. :try_end_2e} :catchall_2f

    return p1

    :catchall_2f
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_52

    const-wide v2, -0xb2c9fab6cad54b0L  # -5.682336998214617E254

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_52
    throw v0
.end method

.method public gn()J
    .registers 8

    const-wide v0, -0x34e0f4fef9469c35L  # -7.433317997320741E53

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-wide v2, p0, Labcd/Sa;->Mr:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_15

    return-wide v2

    :cond_15
    invoke-virtual {p0}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v2

    invoke-interface {v2}, Labcd/na;->VH()Labcd/oa;

    move-result-object v2

    if-nez v2, :cond_22

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_22
    invoke-interface {v2, p0}, Labcd/oa;->j6(Labcd/Sa;)J

    move-result-wide v2

    iput-wide v2, p0, Labcd/Sa;->Mr:J
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_29

    return-wide v2

    :catchall_29
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_31

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_31
    throw v2
.end method

.method public j3(I)I
    .registers 8

    const-wide v0, -0x1819097ddb1c3be1L  # -3.273967942251245E192

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    invoke-virtual {p0, p1}, Labcd/Sa;->er(I)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_12
    invoke-virtual {p0, v2}, Labcd/Sa;->we(I)I

    move-result v5

    if-ge v4, v5, :cond_27

    invoke-virtual {p0, v2, v4}, Labcd/Sa;->Zo(II)I

    move-result v5

    if-ne v5, p1, :cond_24

    sub-int/2addr v4, v3

    invoke-virtual {p0, v2, v4}, Labcd/Sa;->Zo(II)I

    move-result p1
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_29

    return p1

    :cond_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_27
    const/4 p1, -0x1

    return p1

    :catchall_29
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_36

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_36
    goto :goto_38

    :goto_37
    throw v2

    :goto_38
    goto :goto_37
.end method

.method public j3()Z
    .registers 5

    const-wide v0, -0x18fa83cce1d58840L  # -1.8696736112763907E188

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Labcd/Sa;->we:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_15

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public j6(IIII)I
    .registers 14

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_21

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x2ab827fc934180bbL  # -6.675503842616615E102

    move-object v3, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    invoke-virtual {p0, p1, p2, p3, p4}, Labcd/Sa;->DW(IIII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_29

    return v1

    :cond_29
    invoke-virtual {p0, v0}, Labcd/Sa;->we(I)I

    move-result v1

    const/4 v2, 0x1

    :goto_2e
    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_47

    invoke-virtual {p0, v0, v2}, Labcd/Sa;->Zo(II)I

    move-result v3

    invoke-virtual {p0, v3, p1, p2}, Labcd/Sa;->FH(III)Z

    move-result v4

    if-nez v4, :cond_46

    invoke-virtual {p0, v3, p1, p2}, Labcd/Sa;->j6(III)Z

    move-result v4

    if-eqz v4, :cond_43

    goto :goto_46

    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :cond_46
    :goto_46
    return v3

    :cond_47
    if-nez v1, :cond_4a

    return v0

    :cond_4a
    invoke-virtual {p0, v0, v3}, Labcd/Sa;->Zo(II)I

    move-result p1
    :try_end_4e
    .catchall {:try_start_0 .. :try_end_4e} :catchall_4f

    return p1

    :catchall_4f
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_72

    const-wide v2, -0x2ab827fc934180bbL  # -6.675503842616615E102

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_72
    goto :goto_74

    :goto_73
    throw v0

    :goto_74
    goto :goto_73
.end method

.method public j6(IIIII)I
    .registers 16

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_26

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x43ce6af4285e350L

    move-object v3, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    invoke-virtual {p0}, Labcd/Sa;->aM()I

    move-result v2

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Labcd/Sa;->j6(IIIIII)I

    move-result p1
    :try_end_34
    .catchall {:try_start_0 .. :try_end_34} :catchall_35

    return p1

    :catchall_35
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_5d

    const-wide v2, -0x43ce6af4285e350L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5d
    throw v0
.end method

.method public j6(IZIII)I
    .registers 16

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_26

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p2}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x16ad4f455ecc09a0L

    move-object v3, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    iget v0, p0, Labcd/Sa;->u7:I

    add-int/lit8 v1, v0, 0x5

    iput v1, p0, Labcd/Sa;->u7:I

    :goto_2c
    iget v1, p0, Labcd/Sa;->u7:I

    iget-object v2, p0, Labcd/Sa;->gn:[I

    array-length v3, v2

    const/4 v4, 0x0

    if-lt v1, v3, :cond_42

    array-length v1, v2

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    array-length v3, v2

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Labcd/Sa;->gn:[I
    :try_end_41
    .catchall {:try_start_0 .. :try_end_41} :catchall_5e

    goto :goto_2c

    :cond_42
    add-int/lit8 p5, v0, 0x1

    if-eqz p2, :cond_48

    const/high16 v4, 0x100000

    :cond_48
    or-int/2addr p1, v4

    const/high16 p2, 0x10000000

    or-int/2addr p1, p2

    aput p1, v2, v0

    add-int/lit8 p1, p5, 0x1

    const/4 p2, -0x1

    aput p2, v2, p5

    add-int/lit8 p5, p1, 0x1

    aput p2, v2, p1

    aput p3, v2, p5

    add-int/lit8 p5, p5, 0x1

    aput p4, v2, p5

    return v0

    :catchall_5e
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_86

    const-wide v2, -0x16ad4f455ecc09a0L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_86
    goto :goto_88

    :goto_87
    throw v0

    :goto_88
    goto :goto_87
.end method

.method public j6(IZIIII)I
    .registers 14

    sget-boolean v0, Labcd/Sa;->j6:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3f

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v0, v3

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v0, v2

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v0, v1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v5, 0x3

    aput-object v4, v0, v5

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p5}, Ljava/lang/Integer;-><init>(I)V

    const/4 v5, 0x4

    aput-object v4, v0, v5

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p6}, Ljava/lang/Integer;-><init>(I)V

    const/4 v5, 0x5

    aput-object v4, v0, v5

    const-wide v4, 0x3d87188bc98be10fL  # 2.62569790092828E-12

    invoke-static {v4, v5, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_3f
    iget v0, p0, Labcd/Sa;->u7:I

    add-int/lit8 v4, v0, 0x8

    iput v4, p0, Labcd/Sa;->u7:I

    :goto_45
    iget v4, p0, Labcd/Sa;->u7:I

    iget-object v5, p0, Labcd/Sa;->gn:[I

    array-length v6, v5

    if-lt v4, v6, :cond_59

    array-length v4, v5

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    new-array v4, v4, [I

    array-length v6, v5

    invoke-static {v5, v3, v4, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v4, p0, Labcd/Sa;->gn:[I

    goto :goto_45

    :cond_59
    add-int/lit8 v1, v0, 0x1

    if-eqz p2, :cond_5f

    const/high16 v3, 0x100000

    :cond_5f
    or-int/2addr p1, v3

    const/high16 p2, 0x10000000

    or-int/2addr p1, p2

    aput p1, v5, v0

    add-int/lit8 p1, v1, 0x1

    const/4 p2, -0x1

    aput p2, v5, v1

    add-int/lit8 v1, p1, 0x1

    aput p2, v5, p1

    add-int/lit8 p1, v1, 0x1

    aput p3, v5, v1

    add-int/lit8 p2, p1, 0x1

    aput p4, v5, p1

    aput p5, v5, p2

    add-int/2addr p2, v2

    aput p6, v5, p2

    return v0
.end method

.method public j6(IZIIIII)I
    .registers 15

    sget-boolean v0, Labcd/Sa;->j6:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_47

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v0, v3

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v0, v2

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v0, v1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v5, 0x3

    aput-object v4, v0, v5

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p5}, Ljava/lang/Integer;-><init>(I)V

    const/4 v5, 0x4

    aput-object v4, v0, v5

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p6}, Ljava/lang/Integer;-><init>(I)V

    const/4 v5, 0x5

    aput-object v4, v0, v5

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p7}, Ljava/lang/Integer;-><init>(I)V

    const/4 v5, 0x6

    aput-object v4, v0, v5

    const-wide v4, -0x79c515bba303c44L  # -8.318396404081411E271

    invoke-static {v4, v5, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_47
    iget v0, p0, Labcd/Sa;->u7:I

    add-int/lit8 v4, v0, 0x8

    iput v4, p0, Labcd/Sa;->u7:I

    :goto_4d
    iget v4, p0, Labcd/Sa;->u7:I

    iget-object v5, p0, Labcd/Sa;->gn:[I

    array-length v6, v5

    if-lt v4, v6, :cond_61

    array-length v4, v5

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    new-array v4, v4, [I

    array-length v6, v5

    invoke-static {v5, v3, v4, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v4, p0, Labcd/Sa;->gn:[I

    goto :goto_4d

    :cond_61
    add-int/lit8 v1, v0, 0x1

    if-eqz p2, :cond_67

    const/high16 v3, 0x100000

    :cond_67
    or-int/2addr p1, v3

    const/high16 p2, 0x10000000

    or-int/2addr p1, p2

    aput p1, v5, v0

    add-int/lit8 p1, v1, 0x1

    const/4 p2, -0x1

    aput p2, v5, v1

    add-int/lit8 v1, p1, 0x1

    aput p2, v5, p1

    add-int/lit8 p1, v1, 0x1

    aput p3, v5, v1

    add-int/lit8 p2, p1, 0x1

    aput p4, v5, p1

    add-int/lit8 p1, p2, 0x1

    aput p5, v5, p2

    aput p6, v5, p1

    add-int/2addr p1, v2

    aput p7, v5, p1

    return v0
.end method

.method public j6(IZIIIIII)I
    .registers 16

    sget-boolean v0, Labcd/Sa;->j6:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_50

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v0, v2

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v0, v3

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v0, v1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v5, 0x3

    aput-object v4, v0, v5

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p5}, Ljava/lang/Integer;-><init>(I)V

    const/4 v5, 0x4

    aput-object v4, v0, v5

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p6}, Ljava/lang/Integer;-><init>(I)V

    const/4 v5, 0x5

    aput-object v4, v0, v5

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p7}, Ljava/lang/Integer;-><init>(I)V

    const/4 v5, 0x6

    aput-object v4, v0, v5

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p8}, Ljava/lang/Integer;-><init>(I)V

    const/4 v5, 0x7

    aput-object v4, v0, v5

    const-wide v4, 0x148b9923821e2adL

    invoke-static {v4, v5, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_50
    iget v0, p0, Labcd/Sa;->u7:I

    add-int/lit8 v4, v0, 0x9

    iput v4, p0, Labcd/Sa;->u7:I

    :goto_56
    iget v4, p0, Labcd/Sa;->u7:I

    iget-object v5, p0, Labcd/Sa;->gn:[I

    array-length v6, v5

    if-lt v4, v6, :cond_6a

    array-length v4, v5

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v3

    new-array v4, v4, [I

    array-length v6, v5

    invoke-static {v5, v2, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v4, p0, Labcd/Sa;->gn:[I

    goto :goto_56

    :cond_6a
    add-int/lit8 v1, v0, 0x1

    if-eqz p2, :cond_70

    const/high16 v2, 0x100000

    :cond_70
    or-int/2addr p1, v2

    const/high16 p2, 0x10000000

    or-int/2addr p1, p2

    aput p1, v5, v0

    add-int/lit8 p1, v1, 0x1

    const/4 p2, -0x1

    aput p2, v5, v1

    add-int/lit8 v1, p1, 0x1

    aput p2, v5, p1

    add-int/lit8 p1, v1, 0x1

    aput p3, v5, v1

    add-int/lit8 p2, p1, 0x1

    aput p4, v5, p1

    add-int/lit8 p1, p2, 0x1

    aput p5, v5, p2

    add-int/lit8 p2, p1, 0x1

    aput p6, v5, p1

    aput p7, v5, p2

    add-int/2addr p2, v3

    aput p8, v5, p2

    return v0
.end method

.method public j6(IZ[IIIII)I
    .registers 15

    sget-boolean v0, Labcd/Sa;->j6:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_42

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v0, v3

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v0, v2

    aput-object p3, v0, v1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v5, 0x3

    aput-object v4, v0, v5

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p5}, Ljava/lang/Integer;-><init>(I)V

    const/4 v5, 0x4

    aput-object v4, v0, v5

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p6}, Ljava/lang/Integer;-><init>(I)V

    const/4 v5, 0x5

    aput-object v4, v0, v5

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p7}, Ljava/lang/Integer;-><init>(I)V

    const/4 v5, 0x6

    aput-object v4, v0, v5

    const-wide v4, -0x12738be9911a7d98L  # -5.0220618023866984E219

    invoke-static {v4, v5, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_42
    iget v0, p0, Labcd/Sa;->u7:I

    if-lez p5, :cond_49

    add-int/lit8 v4, p5, 0x4

    goto :goto_4b

    :cond_49
    add-int/lit8 v4, p5, 0x6

    :goto_4b
    add-int/2addr v4, v0

    iput v4, p0, Labcd/Sa;->u7:I

    :goto_4e
    iget v4, p0, Labcd/Sa;->u7:I

    iget-object v5, p0, Labcd/Sa;->gn:[I

    array-length v6, v5

    if-lt v4, v6, :cond_62

    array-length v4, v5

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    new-array v4, v4, [I

    array-length v6, v5

    invoke-static {v5, v3, v4, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v4, p0, Labcd/Sa;->gn:[I

    goto :goto_4e

    :cond_62
    add-int/lit8 v1, v0, 0x1

    if-eqz p2, :cond_69

    const/high16 p2, 0x100000

    goto :goto_6a

    :cond_69
    const/4 p2, 0x0

    :goto_6a
    or-int/2addr p1, p2

    aput p1, v5, v0

    add-int/lit8 p1, v1, 0x1

    const/4 p2, -0x1

    aput p2, v5, v1

    add-int/lit8 v1, p1, 0x1

    aput p2, v5, p1

    add-int/lit8 p1, v1, 0x1

    aput p5, v5, v1

    if-lez p5, :cond_8b

    invoke-static {p3, p4, v5, p1, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_7f
    if-ge v3, p5, :cond_90

    add-int p1, p4, v3

    aget p1, p3, p1

    add-int/2addr p1, v2

    aput v0, v5, p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_7f

    :cond_8b
    aput p6, v5, p1

    add-int/2addr p1, v2

    aput p7, v5, p1

    :cond_90
    return v0
.end method

.method public j6(IZ[IIIIII)I
    .registers 16

    sget-boolean v0, Labcd/Sa;->j6:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4b

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v0, v2

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v0, v3

    aput-object p3, v0, v1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v5, 0x3

    aput-object v4, v0, v5

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p5}, Ljava/lang/Integer;-><init>(I)V

    const/4 v5, 0x4

    aput-object v4, v0, v5

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p6}, Ljava/lang/Integer;-><init>(I)V

    const/4 v5, 0x5

    aput-object v4, v0, v5

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p7}, Ljava/lang/Integer;-><init>(I)V

    const/4 v5, 0x6

    aput-object v4, v0, v5

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p8}, Ljava/lang/Integer;-><init>(I)V

    const/4 v5, 0x7

    aput-object v4, v0, v5

    const-wide v4, 0xfb06c36da3c7a03L  # 4.132075432794752E-233

    invoke-static {v4, v5, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_4b
    iget v0, p0, Labcd/Sa;->u7:I

    if-lez p5, :cond_52

    add-int/lit8 v4, p5, 0x5

    goto :goto_54

    :cond_52
    add-int/lit8 v4, p5, 0x7

    :goto_54
    add-int/2addr v4, v0

    iput v4, p0, Labcd/Sa;->u7:I

    :goto_57
    iget v4, p0, Labcd/Sa;->u7:I

    iget-object v5, p0, Labcd/Sa;->gn:[I

    array-length v6, v5

    if-lt v4, v6, :cond_6b

    array-length v4, v5

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v3

    new-array v4, v4, [I

    array-length v6, v5

    invoke-static {v5, v2, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v4, p0, Labcd/Sa;->gn:[I

    goto :goto_57

    :cond_6b
    add-int/lit8 v1, v0, 0x1

    if-eqz p2, :cond_72

    const/high16 p2, 0x100000

    goto :goto_73

    :cond_72
    const/4 p2, 0x0

    :goto_73
    or-int/2addr p1, p2

    aput p1, v5, v0

    add-int/lit8 p1, v1, 0x1

    const/4 p2, -0x1

    aput p2, v5, v1

    add-int/lit8 v1, p1, 0x1

    aput p2, v5, p1

    add-int/lit8 p1, v1, 0x1

    aput p5, v5, v1

    if-lez p5, :cond_96

    invoke-static {p3, p4, v5, p1, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_88
    if-ge v2, p5, :cond_94

    add-int p2, p4, v2

    aget p2, p3, p2

    add-int/2addr p2, v3

    aput v0, v5, p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_88

    :cond_94
    add-int/2addr p1, p5

    goto :goto_9e

    :cond_96
    add-int/lit8 p2, p1, 0x1

    aput p6, v5, p1

    add-int/lit8 p1, p2, 0x1

    aput p7, v5, p2

    :goto_9e
    aput p8, v5, p1

    return v0
.end method

.method public j6([CII)I
    .registers 12

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x161ef15ce7a3c5bdL

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    iget v0, p0, Labcd/Sa;->VH:I

    add-int v1, v0, p3

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Labcd/Sa;->Zo:[C

    array-length v3, v2

    if-lt v1, v3, :cond_3a

    array-length v1, v2

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, p3

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [C

    iget-object v1, p0, Labcd/Sa;->Zo:[C

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Labcd/Sa;->Zo:[C

    :cond_3a
    iget v0, p0, Labcd/Sa;->VH:I

    iget-object v1, p0, Labcd/Sa;->Zo:[C

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Labcd/Sa;->VH:I
    :try_end_42
    .catchall {:try_start_0 .. :try_end_42} :catchall_4e

    int-to-char v3, p3

    aput-char v3, v1, v0

    :try_start_45
    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Labcd/Sa;->VH:I

    add-int/2addr v1, p3

    iput v1, p0, Labcd/Sa;->VH:I
    :try_end_4d
    .catchall {:try_start_45 .. :try_end_4d} :catchall_4e

    return v0

    :catchall_4e
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_68

    const-wide v2, 0x161ef15ce7a3c5bdL

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_68
    throw v0
.end method

.method public j6()V
    .registers 6

    const-wide v0, -0xc1511bec26f229cL

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x1

    iput v2, p0, Labcd/Sa;->VH:I

    const/4 v2, 0x0

    iput v2, p0, Labcd/Sa;->u7:I

    const/4 v3, -0x1

    iput v3, p0, Labcd/Sa;->we:I

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Labcd/Sa;->XL:J

    iput v2, p0, Labcd/Sa;->EQ:I

    iput-wide v3, p0, Labcd/Sa;->aM:J

    iput-wide v3, p0, Labcd/Sa;->j3:J

    iput-wide v3, p0, Labcd/Sa;->Mr:J
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2a
    throw v2
.end method

.method public j6(I)V
    .registers 6

    const-wide v0, -0x46f8a21576a0ae1L

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iput p1, p0, Labcd/Sa;->QX:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-void

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_1c

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public j6(IILabcd/Aa;)V
    .registers 12

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_18

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x2218b2caa7b23068L  # -2.273178785207375E144

    move-object v3, p0

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0, p2}, Labcd/Sa;->J8(III)V

    iget-object v0, p0, Labcd/Sa;->v5:Labcd/La;

    iget-object v0, v0, Labcd/La;->a8:Labcd/Ba;

    invoke-virtual {v0, p3}, Labcd/Ba;->Hw(Labcd/Aa;)I

    move-result v0

    const/4 v1, 0x5

    invoke-direct {p0, p1, v1, v0}, Labcd/Sa;->J8(III)V
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_29

    return-void

    :catchall_29
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_43

    const-wide v2, -0x2218b2caa7b23068L  # -2.273178785207375E144

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_43
    throw v0
.end method

.method public j6(IJ)V
    .registers 11

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p2, p3}, Ljava/lang/Long;-><init>(J)V

    const-wide v2, 0x730f402f93c2c29L

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    const/4 v0, 0x3

    long-to-int v1, p2

    invoke-direct {p0, p1, v0, v1}, Labcd/Sa;->J8(III)V

    const/16 v0, 0x20

    shr-long v0, p2, v0

    long-to-int v1, v0

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, v1}, Labcd/Sa;->J8(III)V
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_25

    return-void

    :catchall_25
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_3e

    const-wide v2, 0x730f402f93c2c29L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, p2, p3}, Ljava/lang/Long;-><init>(J)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3e
    throw v0
.end method

.method public j6(ILabcd/Ya;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x4d35a3593509509bL  # -5.0064279561071E-64

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Labcd/Sa;->v5:Labcd/La;

    iget-object v0, v0, Labcd/La;->a8:Labcd/Ba;

    invoke-virtual {v0, p2}, Labcd/Ba;->Hw(Labcd/Aa;)I

    move-result v0

    const/4 v1, 0x6

    invoke-direct {p0, p1, v1, v0}, Labcd/Sa;->J8(III)V
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_1e

    return-void

    :catchall_1e
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_33

    const-wide v2, -0x4d35a3593509509bL  # -5.0064279561071E-64

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_33
    throw v0
.end method

.method public j6(J)V
    .registers 7

    const-wide v0, 0xb5f2519cb3326bL

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iput-wide p1, p0, Labcd/Sa;->Ws:J
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_21

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method public j6(Labcd/Da;Labcd/na;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x3f7d171840bd61c0L  # -605.1131577686829

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iput-object p1, p0, Labcd/Sa;->J8:Labcd/Da;

    iput-object p2, p0, Labcd/Sa;->a8:Labcd/na;

    invoke-interface {p2}, Labcd/na;->v5()Labcd/pa;

    move-result-object v0

    iput-object v0, p0, Labcd/Sa;->J0:Labcd/pa;
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_28

    const-wide v2, -0x3f7d171840bd61c0L  # -605.1131577686829

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_28
    throw v0
.end method

.method public j6(Labcd/Sa;)V
    .registers 8

    const-wide v0, -0x1874245fcfcd547L

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p1, Labcd/Sa;->gn:[I

    array-length v2, v2

    iget v3, p0, Labcd/Sa;->u7:I

    if-ge v2, v3, :cond_1b

    mul-int/lit8 v2, v3, 0x5

    div-int/lit8 v2, v2, 0x4

    new-array v2, v2, [I

    iput-object v2, p1, Labcd/Sa;->gn:[I

    :cond_1b
    iget-object v2, p0, Labcd/Sa;->gn:[I

    iget-object v4, p1, Labcd/Sa;->gn:[I

    const/4 v5, 0x0

    invoke-static {v2, v5, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p1, Labcd/Sa;->Zo:[C

    array-length v2, v2

    iget v3, p0, Labcd/Sa;->VH:I

    if-gt v2, v3, :cond_32

    mul-int/lit8 v2, v3, 0x5

    div-int/lit8 v2, v2, 0x4

    new-array v2, v2, [C

    iput-object v2, p1, Labcd/Sa;->Zo:[C

    :cond_32
    iget-object v2, p0, Labcd/Sa;->Zo:[C

    iget-object v4, p1, Labcd/Sa;->Zo:[C

    invoke-static {v2, v5, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Labcd/Sa;->VH:I

    iput v2, p1, Labcd/Sa;->VH:I

    iget v2, p0, Labcd/Sa;->u7:I

    iput v2, p1, Labcd/Sa;->u7:I

    iget v2, p0, Labcd/Sa;->we:I

    iput v2, p1, Labcd/Sa;->we:I

    iget-wide v2, p0, Labcd/Sa;->XL:J

    iput-wide v2, p1, Labcd/Sa;->XL:J

    iget-wide v2, p0, Labcd/Sa;->aM:J

    iput-wide v2, p1, Labcd/Sa;->aM:J

    iget-wide v2, p0, Labcd/Sa;->j3:J

    iput-wide v2, p1, Labcd/Sa;->j3:J

    iget-wide v2, p0, Labcd/Sa;->Mr:J

    iput-wide v2, p1, Labcd/Sa;->Mr:J

    iget-object v2, p0, Labcd/Sa;->J8:Labcd/Da;

    iput-object v2, p1, Labcd/Sa;->J8:Labcd/Da;

    iget-object v2, p0, Labcd/Sa;->a8:Labcd/na;

    iput-object v2, p1, Labcd/Sa;->a8:Labcd/na;

    iget-object v2, p0, Labcd/Sa;->J0:Labcd/pa;

    iput-object v2, p1, Labcd/Sa;->J0:Labcd/pa;

    iget-wide v2, p0, Labcd/Sa;->Ws:J

    iput-wide v2, p1, Labcd/Sa;->Ws:J

    iput v5, p1, Labcd/Sa;->EQ:I

    iget-boolean v2, p0, Labcd/Sa;->U2:Z

    iput-boolean v2, p1, Labcd/Sa;->U2:Z

    iget v2, p0, Labcd/Sa;->EQ:I

    iput v2, p1, Labcd/Sa;->EQ:I

    iget-object v2, p1, Labcd/Sa;->tp:[I

    array-length v2, v2

    iget v3, p0, Labcd/Sa;->EQ:I

    if-gt v2, v3, :cond_7e

    mul-int/lit8 v2, v3, 0x5

    div-int/lit8 v2, v2, 0x4

    new-array v2, v2, [I

    iput-object v2, p1, Labcd/Sa;->tp:[I

    :cond_7e
    iget-object v2, p0, Labcd/Sa;->tp:[I

    iget-object v4, p1, Labcd/Sa;->tp:[I

    invoke-static {v2, v5, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_85
    .catchall {:try_start_5 .. :try_end_85} :catchall_86

    return-void

    :catchall_86
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_8e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_8e
    throw v2
.end method

.method public j6(Labcd/Wa;)V
    .registers 8

    const-wide v0, 0x6f43b731fcb43ab0L  # 9.341075372637894E227

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget v2, p1, Labcd/Wa;->tp:I

    iput v2, p0, Labcd/Sa;->VH:I

    iget-object v3, p0, Labcd/Sa;->Zo:[C

    array-length v3, v3

    if-gt v3, v2, :cond_1d

    mul-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0x4

    new-array v2, v2, [C

    iput-object v2, p0, Labcd/Sa;->Zo:[C

    :cond_1d
    iget-object v2, p1, Labcd/Wa;->u7:[C

    iget-object v3, p0, Labcd/Sa;->Zo:[C

    iget v4, p0, Labcd/Sa;->VH:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_28

    return-void

    :catchall_28
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_30

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v2
.end method

.method public j6(II)Z
    .registers 13

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x56be2bd2a42e1ffL

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-virtual {p0, p1}, Labcd/Sa;->P8(I)I

    move-result v0

    invoke-virtual {p0, p2}, Labcd/Sa;->P8(I)I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_22

    return v2

    :cond_22
    invoke-virtual {p0, p1}, Labcd/Sa;->we(I)I

    move-result v0

    invoke-virtual {p0, p2}, Labcd/Sa;->we(I)I

    move-result v1

    if-eq v0, v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-virtual {p0, p1}, Labcd/Sa;->P8(I)I

    move-result v3

    invoke-interface {v1, v3}, Labcd/pa;->u7(I)Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-virtual {p0, p1}, Labcd/Sa;->XL(I)I

    move-result v1

    invoke-virtual {p0, p2}, Labcd/Sa;->XL(I)I

    move-result v3

    if-eq v1, v3, :cond_44

    return v2

    :cond_44
    iget-object v1, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-virtual {p0, p1}, Labcd/Sa;->P8(I)I

    move-result v3

    invoke-interface {v1, v3}, Labcd/pa;->Zo(I)Z

    move-result v1

    if-eqz v1, :cond_7c

    invoke-virtual {p0, p1}, Labcd/Sa;->Mr(I)[C

    move-result-object v1

    invoke-virtual {p0, p1}, Labcd/Sa;->a8(I)I

    move-result v3

    invoke-virtual {p0, p1}, Labcd/Sa;->U2(I)I

    move-result v4

    invoke-virtual {p0, p2}, Labcd/Sa;->Mr(I)[C

    move-result-object v5

    invoke-virtual {p0, p2}, Labcd/Sa;->a8(I)I

    move-result v6

    invoke-virtual {p0, p2}, Labcd/Sa;->U2(I)I

    move-result v7
    :try_end_68
    .catchall {:try_start_0 .. :try_end_68} :catchall_93

    if-eq v4, v7, :cond_6b

    return v2

    :cond_6b
    const/4 v7, 0x0

    :goto_6c
    if-ge v7, v4, :cond_7c

    add-int v8, v3, v7

    aget-char v8, v1, v8

    add-int v9, v6, v7

    aget-char v9, v5, v9

    if-eq v8, v9, :cond_79

    return v2

    :cond_79
    add-int/lit8 v7, v7, 0x1

    goto :goto_6c

    :cond_7c
    const/4 v1, 0x0

    :goto_7d
    if-ge v1, v0, :cond_91

    :try_start_7f
    invoke-virtual {p0, p1, v1}, Labcd/Sa;->Zo(II)I

    move-result v3

    invoke-virtual {p0, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Labcd/Sa;->j6(II)Z

    move-result v3
    :try_end_8b
    .catchall {:try_start_7f .. :try_end_8b} :catchall_93

    if-nez v3, :cond_8e

    return v2

    :cond_8e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7d

    :cond_91
    const/4 p1, 0x1

    return p1

    :catchall_93
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_ac

    const-wide v2, 0x56be2bd2a42e1ffL

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_ac
    goto :goto_ae

    :goto_ad
    throw v0

    :goto_ae
    goto :goto_ad
.end method

.method public j6(III)Z
    .registers 12

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_1c

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x322d23bdb64d57L

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    invoke-virtual {p0, p1}, Labcd/Sa;->vy(I)I

    move-result v0

    const/4 v1, 0x0

    if-le p2, v0, :cond_24

    return v1

    :cond_24
    invoke-virtual {p0, p1}, Labcd/Sa;->vy(I)I

    move-result v0

    const/4 v2, 0x1

    if-ge p2, v0, :cond_2c

    return v2

    :cond_2c
    invoke-virtual {p0, p1}, Labcd/Sa;->BT(I)I

    move-result p1
    :try_end_30
    .catchall {:try_start_0 .. :try_end_30} :catchall_34

    if-le p1, p3, :cond_33

    return v2

    :cond_33
    return v1

    :catchall_34
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_52

    const-wide v2, 0x322d23bdb64d57L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_52
    throw v0
.end method

.method public jJ(I)Z
    .registers 6

    const-wide v0, 0x1fcd1fb2d5389561L

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/Sa;->gn:[I

    aget p1, v2, p1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_19

    const/high16 v0, 0x10000000

    and-int/2addr p1, v0

    if-eqz p1, :cond_17

    const/4 p1, 0x1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    return p1

    :catchall_19
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_26

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method public kQ(I)Z
    .registers 6

    const-wide v0, 0x2d151114844e6fabL  # 1.6159139704546438E-91

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-interface {v2, p0, p1}, Labcd/pa;->tp(Labcd/Sa;I)Z

    move-result p1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return p1

    :catchall_13
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_20

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public lg(I)Ljava/lang/String;
    .registers 8

    const-wide v0, 0x4c686af37b2f7d20L  # 1.226182999614274E60

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/Sa;->gn:[I

    add-int/lit8 v3, p1, 0x3

    aget v2, v2, v3

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Labcd/Sa;->Zo:[C

    add-int/lit8 v5, v2, 0x1

    aget-char v2, v4, v2

    invoke-direct {v3, v4, v5, v2}, Ljava/lang/String;-><init>([CII)V
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1e

    return-object v3

    :catchall_1e
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_2b

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v2
.end method

.method public lp(I)Z
    .registers 6

    const-wide v0, -0x106664c02216f07dL  # -3.8822721164653415E229

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-virtual {p0, p1}, Labcd/Sa;->P8(I)I

    move-result v3

    invoke-interface {v2, v3}, Labcd/pa;->XL(I)Z

    move-result p1
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return p1

    :catchall_17
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_24

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method public nw(I)Z
    .registers 6

    const-wide v0, 0x17b104ee9bac0920L

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    const/16 v2, 0x8

    invoke-direct {p0, p1, v2}, Labcd/Sa;->XL(II)I

    move-result p1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_19

    const/4 v0, -0x1

    if-eq p1, v0, :cond_17

    const/4 p1, 0x1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    return p1

    :catchall_19
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_26

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method public rN(I)I
    .registers 6

    const-wide v0, -0x18904215773ff58L

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    invoke-virtual {p0}, Labcd/Sa;->aM()I

    move-result v2

    invoke-direct {p0, v2, p1}, Labcd/Sa;->j3(II)I

    move-result p1
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return p1

    :catchall_15
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_22

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public ro(I)Z
    .registers 6

    const-wide v0, 0x196282d7fede5a67L

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-virtual {p0, p1}, Labcd/Sa;->P8(I)I

    move-result v3

    invoke-interface {v2, v3}, Labcd/pa;->v5(I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1a

    return v3

    :cond_1a
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Labcd/Sa;->XL(II)I

    move-result p1
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_24

    const/4 v0, -0x1

    if-eq p1, v0, :cond_23

    const/4 v3, 0x1

    :cond_23
    return v3

    :catchall_24
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_31

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v2
.end method

.method public sG(I)Z
    .registers 6

    const-wide v0, -0x1202ce88da176000L  # -6.595365835059316E221

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-interface {v2, p0, p1}, Labcd/pa;->u7(Labcd/Sa;I)Z

    move-result p1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return p1

    :catchall_13
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_20

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public sh(I)Z
    .registers 6

    const-wide v0, -0x30d9cabcad934ef9L  # -1.9619121489126033E73

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    invoke-virtual {p0, p1}, Labcd/Sa;->er(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Labcd/Sa;->Zo(II)I

    move-result v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_19

    if-eq v0, p1, :cond_18

    const/4 v3, 0x1

    :cond_18
    return v3

    :catchall_19
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_26

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method public sy(I)Z
    .registers 6

    const-wide v0, -0x41797bde2ebbc9e1L  # -1.6775832335123067E-7

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-virtual {p0, p1}, Labcd/Sa;->P8(I)I

    move-result v3

    invoke-interface {v2, v3}, Labcd/pa;->u7(I)Z

    move-result p1
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return p1

    :catchall_17
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_24

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    const-wide v0, -0x2a45cd11b49ea75L  # -7.060467891355486E295

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Labcd/Sa;->j3()Z

    move-result v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_2d

    if-eqz v2, :cond_15

    const-string v0, "\n"

    return-object v0

    :cond_15
    :try_start_15
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Labcd/Ta;

    invoke-direct {v3}, Labcd/Ta;-><init>()V

    const-string v4, ""

    invoke-virtual {p0}, Labcd/Sa;->aM()I

    move-result v5

    invoke-direct {p0, v2, v4, v3, v5}, Labcd/Sa;->j6(Ljava/lang/StringBuffer;Ljava/lang/String;Labcd/Ta;I)V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2c
    .catchall {:try_start_15 .. :try_end_2c} :catchall_2d

    return-object v0

    :catchall_2d
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_35

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_35
    throw v2
.end method

.method public tp()I
    .registers 5

    const-wide v0, -0xf11ff07aa372c9dL  # -9.539875986373318E235

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-interface {v2, p0}, Labcd/pa;->DW(Labcd/Sa;)I

    move-result v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public tp(II)I
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x101e7d78648330f0L

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-virtual {p0}, Labcd/Sa;->aM()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Labcd/Sa;->gn(III)I

    move-result p1
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_1f

    return p1

    :catchall_1f
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_38

    const-wide v2, 0x101e7d78648330f0L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_38
    throw v0
.end method

.method public tp(IIII)I
    .registers 14

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_21

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x38498f9adace89f3L  # 1.5023380069150407E-37

    move-object v3, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    invoke-virtual {p0}, Labcd/Sa;->aM()I

    move-result v2

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Labcd/Sa;->u7(IIIII)I

    move-result p1
    :try_end_2e
    .catchall {:try_start_0 .. :try_end_2e} :catchall_2f

    return p1

    :catchall_2f
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_52

    const-wide v2, 0x38498f9adace89f3L  # 1.5023380069150407E-37

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_52
    throw v0
.end method

.method public tp(I)J
    .registers 8

    const-wide v0, -0x2af41054b785d440L  # -4.8882791771777377E101

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    const/4 v2, 0x2

    invoke-direct {p0, p1, v2}, Labcd/Sa;->XL(II)I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x3

    invoke-direct {p0, p1, v4}, Labcd/Sa;->XL(II)I

    move-result p1
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_24

    const/16 v0, 0x20

    shl-long v0, v2, v0

    int-to-long v2, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0

    :catchall_24
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_31

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v2
.end method

.method public u7()I
    .registers 5

    const-wide v0, 0x4203329ce43b5587L  # 1.0306690183416761E10

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-interface {v2, p0}, Labcd/pa;->Hw(Labcd/Sa;)I

    move-result v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public u7(II)I
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x1ef9d4abfda1241L

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-virtual {p0}, Labcd/Sa;->aM()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Labcd/Sa;->VH(III)I

    move-result p1
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_1f

    return p1

    :catchall_1f
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_38

    const-wide v2, 0x1ef9d4abfda1241L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_38
    throw v0
.end method

.method public u7(IIII)I
    .registers 14

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_21

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x16b6845aeecf3204L

    move-object v3, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    invoke-virtual {p0}, Labcd/Sa;->aM()I

    move-result v2

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Labcd/Sa;->gn(IIIII)I

    move-result p1
    :try_end_2e
    .catchall {:try_start_0 .. :try_end_2e} :catchall_2f

    return p1

    :catchall_2f
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_52

    const-wide v2, 0x16b6845aeecf3204L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_52
    throw v0
.end method

.method public u7(I)Labcd/Ya;
    .registers 6

    const-wide v0, 0x200e4308a85d17afL  # 2.821289935469822E-154

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/Sa;->v5:Labcd/La;

    iget-object v2, v2, Labcd/La;->a8:Labcd/Ba;

    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Labcd/Sa;->XL(II)I

    move-result v3

    invoke-virtual {v2, v3}, Labcd/Ba;->FH(I)Labcd/Aa;

    move-result-object v2

    check-cast v2, Labcd/Ya;
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1c

    return-object v2

    :catchall_1c
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_29

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    throw v2
.end method

.method public v5(II)I
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x7447f82a4c7dc6cL  # -3.719452190840132E273

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-virtual {p0}, Labcd/Sa;->aM()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Labcd/Sa;->Zo(III)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2e

    iget-object v2, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-virtual {p0, v0}, Labcd/Sa;->P8(I)I

    move-result v3

    invoke-interface {v2, v3}, Labcd/pa;->rN(I)Z

    move-result p1
    :try_end_2b
    .catchall {:try_start_0 .. :try_end_2b} :catchall_2f

    if-eqz p1, :cond_2e

    return v1

    :cond_2e
    return v0

    :catchall_2f
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_48

    const-wide v2, -0x7447f82a4c7dc6cL  # -3.719452190840132E273

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_48
    throw v0
.end method

.method public v5(IIII)I
    .registers 14

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_21

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x199bf6f2daf9cf98L  # -1.7026462731697926E185

    move-object v3, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    invoke-virtual {p0}, Labcd/Sa;->aM()I

    move-result v2

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Labcd/Sa;->VH(IIIII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_49

    :goto_31
    invoke-virtual {p0}, Labcd/Sa;->aM()I

    move-result v2

    if-eq v0, v2, :cond_49

    iget-object v2, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-virtual {p0, v0}, Labcd/Sa;->P8(I)I

    move-result v3

    invoke-interface {v2, v3}, Labcd/pa;->rN(I)Z

    move-result v2

    if-eqz v2, :cond_44

    return v0

    :cond_44
    invoke-virtual {p0, v0}, Labcd/Sa;->er(I)I

    move-result v0
    :try_end_48
    .catchall {:try_start_0 .. :try_end_48} :catchall_4a

    goto :goto_31

    :cond_49
    return v1

    :catchall_4a
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_6d

    const-wide v2, -0x199bf6f2daf9cf98L  # -1.7026462731697926E185

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6d
    goto :goto_6f

    :goto_6e
    throw v0

    :goto_6f
    goto :goto_6e
.end method

.method public v5()J
    .registers 5

    const-wide v0, -0x18622f53fe7c4da0L  # -1.328415385777048E191

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-wide v0, p0, Labcd/Sa;->Ws:J
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-wide v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public v5(I)Labcd/Aa;
    .registers 6

    const-wide v0, -0x615d6b7c7d8cdbdL

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/Sa;->v5:Labcd/La;

    iget-object v2, v2, Labcd/La;->a8:Labcd/Ba;

    const/4 v3, 0x5

    invoke-direct {p0, p1, v3}, Labcd/Sa;->XL(II)I

    move-result v3

    invoke-virtual {v2, v3}, Labcd/Ba;->FH(I)Labcd/Aa;

    move-result-object p1
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return-object p1

    :catchall_1a
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_27

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v2
.end method

.method public v5(III)V
    .registers 12

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_1c

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x25f6af06e8398ebcL  # -5.355357372248122E125

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0, p2}, Labcd/Sa;->J8(III)V

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0, p3}, Labcd/Sa;->J8(III)V
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_25

    return-void

    :catchall_25
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_43

    const-wide v2, -0x25f6af06e8398ebcL  # -5.355357372248122E125

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_43
    throw v0
.end method

.method public vJ(I)Z
    .registers 6

    const-wide v0, 0x46242d0979c6a8L

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-virtual {p0, p1}, Labcd/Sa;->P8(I)I

    move-result v3

    invoke-interface {v2, v3}, Labcd/pa;->Hw(I)Z

    move-result p1
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return p1

    :catchall_17
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_24

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method public vy(I)I
    .registers 6

    const-wide v0, 0x261228ef99bed794L

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    invoke-virtual {p0, p1}, Labcd/Sa;->jJ(I)Z

    move-result v2

    if-nez v2, :cond_29

    invoke-virtual {p0, p1}, Labcd/Sa;->we(I)I

    move-result v2

    if-nez v2, :cond_1f

    iget-object v2, p0, Labcd/Sa;->gn:[I

    add-int/lit8 v3, p1, 0x4

    aget p1, v2, v3

    return p1

    :cond_1f
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Labcd/Sa;->Zo(II)I

    move-result v2

    invoke-virtual {p0, v2}, Labcd/Sa;->vy(I)I

    move-result p1

    return p1

    :cond_29
    invoke-virtual {p0, p1}, Labcd/Sa;->aj(I)Z

    move-result v2

    if-eqz v2, :cond_36

    iget-object v2, p0, Labcd/Sa;->gn:[I

    add-int/lit8 v3, p1, 0x4

    aget p1, v2, v3

    return p1

    :cond_36
    invoke-virtual {p0, p1}, Labcd/Sa;->sy(I)Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object v2, p0, Labcd/Sa;->gn:[I

    add-int/lit8 v3, p1, 0x4

    aget p1, v2, v3

    return p1

    :cond_43
    invoke-virtual {p0, p1}, Labcd/Sa;->wc(I)Z

    move-result v2

    if-eqz v2, :cond_50

    iget-object v2, p0, Labcd/Sa;->gn:[I

    add-int/lit8 v3, p1, 0x3

    aget p1, v2, v3

    return p1

    :cond_50
    iget-object v2, p0, Labcd/Sa;->gn:[I

    add-int/lit8 v3, p1, 0x3

    aget p1, v2, v3
    :try_end_56
    .catchall {:try_start_5 .. :try_end_56} :catchall_57

    return p1

    :catchall_57
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_64

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_64
    throw v2
.end method

.method public wc(I)Z
    .registers 6

    const-wide v0, 0x5fac76a4f3486678L  # 7.453760355148063E152

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-virtual {p0, p1}, Labcd/Sa;->P8(I)I

    move-result v3

    invoke-interface {v2, v3}, Labcd/pa;->we(I)Z

    move-result p1
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return p1

    :catchall_17
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_24

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method public we()I
    .registers 5

    const-wide v0, -0x2131543afa2a1db4L

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-interface {v2, p0}, Labcd/pa;->FH(Labcd/Sa;)I

    move-result v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public we(I)I
    .registers 7

    const-wide v0, 0x233d4e2814990327L  # 6.152167765931625E-139

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/Sa;->gn:[I

    aget v3, v2, p1

    const/high16 v4, 0x10000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_17

    const/4 p1, 0x0

    return p1

    :cond_17
    add-int/lit8 v3, p1, 0x3

    aget p1, v2, v3
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1c

    return p1

    :catchall_1c
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_29

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    throw v2
.end method

.method public we(II)I
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Sa;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x628ea27dbaec380L

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-virtual {p0}, Labcd/Sa;->aM()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Labcd/Sa;->tp(III)I

    move-result p1
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_1f

    return p1

    :catchall_1f
    move-exception v0

    sget-boolean v1, Labcd/Sa;->DW:Z

    if-eqz v1, :cond_38

    const-wide v2, -0x628ea27dbaec380L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_38
    throw v0
.end method

.method public x9(I)Z
    .registers 6

    const-wide v0, 0x510ca42cd00c309dL  # 2.7168251764533154E82

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-interface {v2, p0, p1}, Labcd/pa;->Ws(Labcd/Sa;I)Z

    move-result p1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return p1

    :catchall_13
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_20

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public yO(I)Z
    .registers 6

    const-wide v0, 0x4d15b3d70ae42450L  # 2.2319726699456833E63

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    invoke-virtual {p0, p1}, Labcd/Sa;->sG(I)Z

    move-result p1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_13

    xor-int/lit8 p1, p1, 0x1

    return p1

    :catchall_13
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_20

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public yS(I)I
    .registers 6

    const-wide v0, 0x30d89906aa2b47b7L  # 2.1752871290431823E-73

    :try_start_5
    sget-boolean v2, Labcd/Sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/Sa;->J0:Labcd/pa;

    invoke-interface {v2, p0, p1}, Labcd/pa;->QX(Labcd/Sa;I)I

    move-result p1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return p1

    :catchall_13
    move-exception v2

    sget-boolean v3, Labcd/Sa;->DW:Z

    if-eqz v3, :cond_20

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v2
.end method

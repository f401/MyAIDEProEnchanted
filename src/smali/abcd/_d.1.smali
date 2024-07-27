.class public Labcd/_d;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/oa;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static DW:[B
    .annotation runtime Labcd/ru;
        field = -0x2e9633ee9f812117L
    .end annotation
.end field

.field private static FH:I
    .annotation runtime Labcd/ru;
        field = 0x263106f1c04b9a0dL
    .end annotation
.end field

.field private static Hw:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static j6:Ljava/util/zip/CRC32;
    .annotation runtime Labcd/ru;
        field = -0x2175a242cda51c31L
    .end annotation
.end field

.field private static v5:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# instance fields
.field private final VH:Labcd/Vd;
    .annotation runtime Labcd/ru;
        field = 0x15a17e87e165fbb4L
    .end annotation
.end field

.field private final Zo:Labcd/La;
    .annotation runtime Labcd/ru;
        field = -0x1bf330d8c60e33b7L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x135fdff96291047cL
    .end annotation

    const-wide v8, -0x8066dfe70fc2667L    # -8.4429180110549E269

    const/4 v6, 0x0

    :try_start_0
    const-class v0, Labcd/_d;

    const-wide v2, 0x530fcaa42a1faa4L

    const-wide v4, 0x530fcaa42a1faa4L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Labcd/_d;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x8066dfe70fc2667L    # -8.4429180110549E269

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    sput-object v0, Labcd/_d;->j6:Ljava/util/zip/CRC32;

    const/16 v0, 0x400

    new-array v0, v0, [B

    sput-object v0, Labcd/_d;->DW:[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/_d;->v5:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v8, v9, v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>(Labcd/La;Labcd/Vd;)V
    .registers 10

    const-wide v2, 0x833f6b80bb6497L

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/_d;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x833f6b80bb6497L

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/_d;->Zo:Labcd/La;

    iput-object p2, p0, Labcd/_d;->VH:Labcd/Vd;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/_d;->v5:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private DW()J
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x23704b3794e93811L
    .end annotation

    const-wide v2, -0x5982fe58fe2f971L    # -4.322532960460961E281

    :try_start_0
    sget-boolean v0, Labcd/_d;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x5982fe58fe2f971L    # -4.322532960460961E281

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Labcd/_d;->j6()V

    sget-object v0, Labcd/_d;->j6:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/_d;->v5:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private DW(Labcd/Sa;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x204a105247ef32ebL
    .end annotation

    const-wide v2, -0x5bb3e0d5bf5ec55L    # -9.419834914779164E280

    const/4 v6, 0x1

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/_d;->Hw:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x5bb3e0d5bf5ec55L    # -9.419834914779164E280

    invoke-static {v4, v5, p0, p1, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, p2}, Labcd/Sa;->we(I)I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v4

    invoke-direct {p0, p1, v4}, Labcd/_d;->DW(Labcd/Sa;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Labcd/Sa;->P8(I)I

    move-result v0

    if-eq v0, v6, :cond_6

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_5

    const/16 v1, 0xcf

    if-eq v0, v1, :cond_3

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-virtual {p1, v0}, Labcd/Sa;->XL(I)I

    move-result v0

    invoke-static {v0}, Labcd/_d;->j6(I)V

    invoke-virtual {p1, p2}, Labcd/Sa;->J8(I)I

    move-result v0

    invoke-static {v0}, Labcd/_d;->j6(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/_d;->v5:Z

    if-eqz v0, :cond_4

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1

    :cond_5
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-virtual {p1, v0}, Labcd/Sa;->XL(I)I

    move-result v0

    invoke-static {v0}, Labcd/_d;->j6(I)V

    invoke-virtual {p1, p2}, Labcd/Sa;->we(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Labcd/_d;->j6(Labcd/Sa;I)V

    invoke-virtual {p1, p2}, Labcd/Sa;->J8(I)I

    move-result v0

    invoke-static {v0}, Labcd/_d;->j6(I)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Labcd/_d;->VH:Labcd/Vd;

    invoke-virtual {v0}, Labcd/Vd;->v5()Labcd/pa;

    move-result-object v0

    check-cast v0, Labcd/ae;

    invoke-virtual {v0, p1, p2}, Labcd/ae;->lg(Labcd/Sa;I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1, p2}, Labcd/Sa;->XL(I)I

    move-result v0

    invoke-static {v0}, Labcd/_d;->j6(I)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Labcd/_d;->VH:Labcd/Vd;

    invoke-virtual {v0}, Labcd/Vd;->v5()Labcd/pa;

    move-result-object v0

    check-cast v0, Labcd/ae;

    invoke-virtual {v0, p1, p2}, Labcd/ae;->rN(Labcd/Sa;I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Labcd/_d;->VH:Labcd/Vd;

    invoke-virtual {v0}, Labcd/Vd;->v5()Labcd/pa;

    move-result-object v0

    check-cast v0, Labcd/ae;

    invoke-virtual {v0, p1, p2}, Labcd/ae;->U2(Labcd/Sa;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Labcd/_d;->j6(Labcd/Sa;I)V

    invoke-virtual {p1, p2}, Labcd/Sa;->XL(I)I

    move-result v0

    invoke-static {v0}, Labcd/_d;->j6(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private DW(Labcd/Sa;ILabcd/Ia;)V
    .registers 17
    .annotation runtime Labcd/su;
        method = 0x71739b1f8afe958L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/_d;->Hw:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x4f14c66857549240L    # -4.815245990188716E-73

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Labcd/_d;->Zo:Labcd/La;

    iget-object v0, v0, Labcd/La;->a8:Labcd/Ba;

    invoke-virtual {p1, p2}, Labcd/Sa;->vy(I)I

    move-result v2

    invoke-virtual {p1, p2}, Labcd/Sa;->BT(I)I

    move-result v3

    invoke-virtual {p1, p2}, Labcd/Sa;->Ws(I)I

    move-result v4

    invoke-virtual {p1, p2}, Labcd/Sa;->vy(I)I

    move-result v5

    invoke-virtual {p1, p2}, Labcd/Sa;->BT(I)I

    move-result v6

    invoke-virtual {p1, p2}, Labcd/Sa;->vy(I)I

    move-result v7

    invoke-virtual {p1, p2}, Labcd/Sa;->BT(I)I

    move-result v8

    invoke-virtual {p1, p2}, Labcd/Sa;->vy(I)I

    move-result v9

    invoke-virtual {p1, p2}, Labcd/Sa;->BT(I)I

    move-result v10

    invoke-virtual {p1, p2}, Labcd/Sa;->QX(I)I

    move-result v11

    invoke-virtual {p1, p2}, Labcd/Sa;->Ws(I)I

    move-result v12

    move-object/from16 v1, p3

    invoke-virtual/range {v0 .. v12}, Labcd/Ba;->j6(Labcd/Ia;IIIIIIIIIII)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    move-exception v1

    :goto_0
    sget-boolean v0, Labcd/_d;->v5:Z

    if-eqz v0, :cond_1

    const-wide v2, -0x4f14c66857549240L    # -4.815245990188716E-73

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    move-object/from16 v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static FH()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x38782bb25a1ee7ffL
    .end annotation

    const-wide v4, 0x30dc6f62db21d4f9L    # 2.5146402328995803E-73

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/_d;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x30dc6f62db21d4f9L    # 2.5146402328995803E-73

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget-object v0, Labcd/_d;->j6:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/_d;->v5:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private FH(Labcd/Sa;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x37cb4e629f595f3fL
    .end annotation

    const-wide v2, 0x2d1d92e25d481fd5L    # 2.2684435015147074E-91

    :try_start_0
    sget-boolean v0, Labcd/_d;->Hw:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x2d1d92e25d481fd5L    # 2.2684435015147074E-91

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, p2}, Labcd/Sa;->P8(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_3

    const/16 v1, 0xcf

    if-eq v0, v1, :cond_2

    :cond_1
    :goto_0
    invoke-virtual {p1, p2}, Labcd/Sa;->we(I)I

    move-result v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_7

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v4

    invoke-direct {p0, p1, v4}, Labcd/_d;->FH(Labcd/Sa;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :try_start_1
    iget-object v0, p0, Labcd/_d;->Zo:Labcd/La;

    iget-object v0, v0, Labcd/La;->a8:Labcd/Ba;

    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v1

    invoke-virtual {p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v4

    invoke-virtual {p1, p2}, Labcd/Sa;->J8(I)I

    move-result v5

    invoke-virtual {v0, v1, v4, v5}, Labcd/Ba;->DW(Labcd/Da;Labcd/na;I)Labcd/Ia;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Labcd/_d;->Hw(Labcd/Sa;ILabcd/Ia;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Labcd/_d;->Zo:Labcd/La;

    iget-object v0, v0, Labcd/La;->a8:Labcd/Ba;

    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v1

    invoke-virtual {p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v4

    invoke-virtual {p1, p2}, Labcd/Sa;->J8(I)I

    move-result v5

    invoke-virtual {v0, v1, v4, v5}, Labcd/Ba;->DW(Labcd/Da;Labcd/na;I)Labcd/Ia;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Labcd/_d;->j6(Labcd/Sa;ILabcd/Ia;)V
    :try_end_1
    .catch Labcd/jc; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    sget-boolean v0, Labcd/_d;->v5:Z

    if-eqz v0, :cond_4

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1

    :cond_5
    :try_start_2
    iget-object v0, p0, Labcd/_d;->VH:Labcd/Vd;

    invoke-virtual {v0}, Labcd/Vd;->v5()Labcd/pa;

    move-result-object v0

    check-cast v0, Labcd/ae;

    invoke-virtual {v0, p1, p2}, Labcd/ae;->rN(Labcd/Sa;I)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    if-eqz v0, :cond_6

    :try_start_3
    iget-object v0, p0, Labcd/_d;->Zo:Labcd/La;

    iget-object v0, v0, Labcd/La;->a8:Labcd/Ba;

    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v1

    invoke-virtual {p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v4

    invoke-virtual {p1, p2}, Labcd/Sa;->J8(I)I

    move-result v5

    invoke-virtual {v0, v1, v4, v5}, Labcd/Ba;->DW(Labcd/Da;Labcd/na;I)Labcd/Ia;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Labcd/_d;->DW(Labcd/Sa;ILabcd/Ia;)V
    :try_end_3
    .catch Labcd/jc; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :cond_6
    :try_start_4
    iget-object v0, p0, Labcd/_d;->VH:Labcd/Vd;

    invoke-virtual {v0}, Labcd/Vd;->v5()Labcd/pa;

    move-result-object v0

    check-cast v0, Labcd/ae;

    invoke-virtual {v0, p1, p2}, Labcd/ae;->lg(Labcd/Sa;I)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    move-result v0

    if-eqz v0, :cond_1

    :try_start_5
    iget-object v0, p0, Labcd/_d;->Zo:Labcd/La;

    iget-object v0, v0, Labcd/La;->a8:Labcd/Ba;

    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v1

    invoke-virtual {p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v4

    invoke-virtual {p1, p2}, Labcd/Sa;->J8(I)I

    move-result v5

    invoke-virtual {v0, v1, v4, v5}, Labcd/Ba;->DW(Labcd/Da;Labcd/na;I)Labcd/Ia;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Labcd/_d;->DW(Labcd/Sa;ILabcd/Ia;)V
    :try_end_5
    .catch Labcd/jc; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private FH(Labcd/Sa;ILabcd/Ia;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0xbd7760ac8e5532cL
    .end annotation

    const-wide v8, 0xee6f52704be77d0L    # 7.051157402608856E-237

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Labcd/_d;->Hw:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0xee6f52704be77d0L    # 7.051157402608856E-237

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, p2}, Labcd/Sa;->we(I)I

    move-result v2

    const/4 v0, 0x2

    if-le v2, v0, :cond_2

    const/4 v1, 0x1

    move v0, v6

    :goto_0
    if-ge v1, v2, :cond_2

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Labcd/Sa;->Zo(II)I

    move-result v3

    invoke-virtual {p1, v3}, Labcd/Sa;->XL(I)I

    move-result v3

    iget-object v4, p0, Labcd/_d;->Zo:Labcd/La;

    iget-object v4, v4, Labcd/La;->a8:Labcd/Ba;

    const/4 v5, 0x0

    invoke-virtual {v4, p3, v5, v3, v0}, Labcd/Ba;->j6(Labcd/Ia;III)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/_d;->v5:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1

    :cond_2
    return-void
.end method

.method private Hw(Labcd/Sa;ILabcd/Ia;)V
    .registers 17
    .annotation runtime Labcd/su;
        method = 0x562902ef90f4a90L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/_d;->Hw:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x5868db42174c8c4L

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Labcd/_d;->Zo:Labcd/La;

    iget-object v0, v0, Labcd/La;->a8:Labcd/Ba;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-virtual {p1, v1}, Labcd/Sa;->vy(I)I

    move-result v2

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-virtual {p1, v1}, Labcd/Sa;->BT(I)I

    move-result v3

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-virtual {p1, v1}, Labcd/Sa;->Ws(I)I

    move-result v4

    invoke-virtual {p1, p2}, Labcd/Sa;->vy(I)I

    move-result v5

    invoke-virtual {p1, p2}, Labcd/Sa;->BT(I)I

    move-result v6

    invoke-virtual {p1, p2}, Labcd/Sa;->vy(I)I

    move-result v7

    invoke-virtual {p1, p2}, Labcd/Sa;->BT(I)I

    move-result v8

    invoke-virtual {p1, p2}, Labcd/Sa;->vy(I)I

    move-result v9

    invoke-virtual {p1, p2}, Labcd/Sa;->BT(I)I

    move-result v10

    invoke-virtual {p1, p2}, Labcd/Sa;->QX(I)I

    move-result v11

    invoke-virtual {p1, p2}, Labcd/Sa;->Ws(I)I

    move-result v12

    move-object/from16 v1, p3

    invoke-virtual/range {v0 .. v12}, Labcd/Ba;->j6(Labcd/Ia;IIIIIIIIIII)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    move-exception v1

    :goto_0
    sget-boolean v0, Labcd/_d;->v5:Z

    if-eqz v0, :cond_1

    const-wide v2, 0x5868db42174c8c4L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    move-object/from16 v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static j6()V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x1e4ac9d7693e9de9L
    .end annotation

    const-wide v6, -0x17f9846dc7a1b6ddL    # -1.28219978982132E193

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/_d;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x17f9846dc7a1b6ddL    # -1.28219978982132E193

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget-object v0, Labcd/_d;->j6:Ljava/util/zip/CRC32;

    sget-object v1, Labcd/_d;->DW:[B

    const/4 v2, 0x0

    sget v3, Labcd/_d;->FH:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/zip/CRC32;->update([BII)V

    const/4 v0, 0x0

    sput v0, Labcd/_d;->FH:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/_d;->v5:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, v4}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private static j6(I)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x2d9143674a5b09a7L
    .end annotation

    const-wide v4, -0x15e4bf4dc3a10697L    # -1.3350789352633324E203

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/_d;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x15e4bf4dc3a10697L    # -1.3350789352633324E203

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    sget v0, Labcd/_d;->FH:I

    add-int/lit8 v0, v0, 0x4

    sget-object v1, Labcd/_d;->DW:[B

    array-length v1, v1

    if-le v0, v1, :cond_1

    invoke-static {}, Labcd/_d;->j6()V

    :cond_1
    sget-object v0, Labcd/_d;->DW:[B

    sget v1, Labcd/_d;->FH:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Labcd/_d;->FH:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    :try_start_1
    sget-object v0, Labcd/_d;->DW:[B

    sget v1, Labcd/_d;->FH:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Labcd/_d;->FH:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    :try_start_2
    sget-object v0, Labcd/_d;->DW:[B

    sget v1, Labcd/_d;->FH:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Labcd/_d;->FH:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    :try_start_3
    sget-object v0, Labcd/_d;->DW:[B

    sget v1, Labcd/_d;->FH:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Labcd/_d;->FH:I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/_d;->v5:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, v3, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private j6(Labcd/Sa;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x2d40c6974497cd8L
    .end annotation

    const-wide v2, -0x5a78a610fdde4dd4L    # -6.737565106194921E-128

    :try_start_0
    sget-boolean v0, Labcd/_d;->Hw:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x5a78a610fdde4dd4L    # -6.737565106194921E-128

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, p2}, Labcd/Sa;->we(I)I

    move-result v0

    invoke-static {v0}, Labcd/_d;->j6(I)V

    invoke-virtual {p1, p2}, Labcd/Sa;->P8(I)I

    move-result v0

    invoke-static {v0}, Labcd/_d;->j6(I)V

    invoke-virtual {p1, p2}, Labcd/Sa;->P8(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    :goto_0
    invoke-virtual {p1, p2}, Labcd/Sa;->we(I)I

    move-result v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_3

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v4

    invoke-direct {p0, p1, v4}, Labcd/_d;->j6(Labcd/Sa;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p2}, Labcd/Sa;->XL(I)I

    move-result v0

    invoke-static {v0}, Labcd/_d;->j6(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/_d;->v5:Z

    if-eqz v0, :cond_2

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1

    :cond_3
    return-void
.end method

.method private j6(Labcd/Sa;ILabcd/Ia;)V
    .registers 17
    .annotation runtime Labcd/su;
        method = -0x88a8038042c2610L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/_d;->Hw:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x20f982ee2f5c8fcL

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, p2}, Labcd/Sa;->we(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Labcd/_d;->Zo:Labcd/La;

    iget-object v0, v0, Labcd/La;->a8:Labcd/Ba;

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-virtual {p1, v1}, Labcd/Sa;->vy(I)I

    move-result v2

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-virtual {p1, v1}, Labcd/Sa;->BT(I)I

    move-result v3

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-virtual {p1, v1}, Labcd/Sa;->Ws(I)I

    move-result v4

    invoke-virtual {p1, p2}, Labcd/Sa;->vy(I)I

    move-result v5

    invoke-virtual {p1, p2}, Labcd/Sa;->BT(I)I

    move-result v6

    invoke-virtual {p1, p2}, Labcd/Sa;->vy(I)I

    move-result v7

    invoke-virtual {p1, p2}, Labcd/Sa;->BT(I)I

    move-result v8

    invoke-virtual {p1, p2}, Labcd/Sa;->vy(I)I

    move-result v9

    invoke-virtual {p1, p2}, Labcd/Sa;->BT(I)I

    move-result v10

    invoke-virtual {p1, p2}, Labcd/Sa;->QX(I)I

    move-result v11

    invoke-virtual {p1, p2}, Labcd/Sa;->Ws(I)I

    move-result v12

    move-object/from16 v1, p3

    invoke-virtual/range {v0 .. v12}, Labcd/Ba;->j6(Labcd/Ia;IIIIIIIIIII)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Labcd/_d;->Zo:Labcd/La;

    iget-object v0, v0, Labcd/La;->a8:Labcd/Ba;

    invoke-virtual {p1, p2}, Labcd/Sa;->vy(I)I

    move-result v2

    invoke-virtual {p1, p2}, Labcd/Sa;->BT(I)I

    move-result v3

    invoke-virtual {p1, p2}, Labcd/Sa;->BT(I)I

    move-result v4

    invoke-virtual {p1, p2}, Labcd/Sa;->vy(I)I

    move-result v5

    invoke-virtual {p1, p2}, Labcd/Sa;->BT(I)I

    move-result v6

    invoke-virtual {p1, p2}, Labcd/Sa;->vy(I)I

    move-result v7

    invoke-virtual {p1, p2}, Labcd/Sa;->BT(I)I

    move-result v8

    invoke-virtual {p1, p2}, Labcd/Sa;->vy(I)I

    move-result v9

    invoke-virtual {p1, p2}, Labcd/Sa;->BT(I)I

    move-result v10

    invoke-virtual {p1, p2}, Labcd/Sa;->QX(I)I

    move-result v11

    invoke-virtual {p1, p2}, Labcd/Sa;->Ws(I)I

    move-result v12

    move-object/from16 v1, p3

    invoke-virtual/range {v0 .. v12}, Labcd/Ba;->j6(Labcd/Ia;IIIIIIIIIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/_d;->v5:Z

    if-eqz v0, :cond_2

    const-wide v2, 0x20f982ee2f5c8fcL

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    move-object/from16 v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method private j6(Labcd/Sa;ILabcd/ua;Labcd/ua;)V
    .registers 23
    .annotation runtime Labcd/su;
        method = -0x6a4e0f1a6abd070L
    .end annotation

    :try_start_0
    sget-boolean v4, Labcd/_d;->Hw:Z

    if-eqz v4, :cond_0

    new-instance v8, Ljava/lang/Integer;

    move/from16 v0, p2

    invoke-direct {v8, v0}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0xd7aeb092582e370L

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-static/range {v4 .. v10}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->P8(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    const/16 v16, 0x0

    const/4 v5, 0x1

    if-eq v4, v5, :cond_8

    const/16 v5, 0x7d

    if-eq v4, v5, :cond_5

    const/16 v5, 0xcf

    if-eq v4, v5, :cond_4

    const/16 v5, 0xdf

    if-eq v4, v5, :cond_2

    :cond_1
    :goto_0
    move-object/from16 v11, p3

    :goto_1
    :try_start_1
    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->we(I)I

    move-result v5

    move/from16 v4, v16

    :goto_2
    if-ge v4, v5, :cond_b

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Labcd/Sa;->Zo(II)I

    move-result v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v6, v11, v2}, Labcd/_d;->j6(Labcd/Sa;ILabcd/ua;Labcd/ua;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/_d;->VH:Labcd/Vd;

    invoke-virtual {v4}, Labcd/Vd;->FH()Labcd/ra;

    move-result-object v4

    check-cast v4, Labcd/ce;

    invoke-virtual {v4}, Labcd/ce;->v5()Labcd/Na;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/_d;->Zo:Labcd/La;

    iget-object v4, v4, Labcd/La;->a8:Labcd/Ba;

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v6

    invoke-virtual {v4, v8, v5, v6}, Labcd/Ba;->j6(Labcd/Na;Labcd/Da;Labcd/na;)Labcd/Na;

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/_d;->Zo:Labcd/La;

    iget-object v4, v4, Labcd/La;->a8:Labcd/Ba;

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v11

    invoke-virtual {v11}, Labcd/Da;->J8()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v4 .. v14}, Labcd/Ba;->j6(Labcd/Da;Labcd/na;ILabcd/Na;IIIZZZ)Labcd/ua;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v10

    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/_d;->Zo:Labcd/La;

    iget-object v4, v4, Labcd/La;->a8:Labcd/Ba;

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Labcd/_d;->Zo:Labcd/La;

    iget-object v12, v12, Labcd/La;->j3:Labcd/Ga;

    const-string v13, "Members"

    invoke-virtual {v12, v13}, Labcd/Ga;->j6(Ljava/lang/String;)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual/range {v4 .. v13}, Labcd/Ba;->j6(Labcd/Da;Labcd/na;ILabcd/Na;ILabcd/ua;IIZ)Labcd/ua;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object p4

    move-object v11, v10

    goto :goto_1

    :catch_0
    move-exception v5

    move-object/from16 v12, p4

    move-object v11, v10

    :goto_3
    sget-boolean v4, Labcd/_d;->v5:Z

    if-eqz v4, :cond_3

    const-wide v6, 0xd7aeb092582e370L

    new-instance v10, Ljava/lang/Integer;

    move/from16 v0, p2

    invoke-direct {v10, v0}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-static/range {v5 .. v12}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v5

    :cond_4
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/_d;->Zo:Labcd/La;

    iget-object v4, v4, Labcd/La;->a8:Labcd/Ba;

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v6

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->J8(I)I

    move-result v7

    const/4 v9, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v1, v8}, Labcd/Sa;->Zo(II)I

    move-result v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Labcd/Sa;->XL(I)I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v8, p3

    invoke-virtual/range {v4 .. v14}, Labcd/Ba;->j6(Labcd/Da;Labcd/na;ILabcd/ua;IIZZZZ)Labcd/Ia;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Labcd/_d;->Hw(Labcd/Sa;ILabcd/Ia;)V

    goto/16 :goto_0

    :catch_1
    move-exception v5

    move-object/from16 v12, p4

    move-object/from16 v11, p3

    goto :goto_3

    :cond_5
    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->we(I)I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_6

    const/4 v4, 0x1

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Labcd/Sa;->Zo(II)I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Labcd/Sa;->XL(I)I

    move-result v10

    :goto_4
    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->we(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Labcd/Sa;->Zo(II)I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Labcd/Sa;->we(I)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    const/4 v12, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/_d;->Zo:Labcd/La;

    iget-object v4, v4, Labcd/La;->a8:Labcd/Ba;

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v6

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->J8(I)I

    move-result v7

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v8, p3

    invoke-virtual/range {v4 .. v15}, Labcd/Ba;->j6(Labcd/Da;Labcd/na;ILabcd/ua;IIIIZZI)Labcd/Ia;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v1, v2, v4}, Labcd/_d;->FH(Labcd/Sa;ILabcd/Ia;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Labcd/_d;->j6(Labcd/Sa;ILabcd/Ia;)V

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/_d;->Zo:Labcd/La;

    iget-object v4, v4, Labcd/La;->j3:Labcd/Ga;

    const-string v5, ""

    invoke-virtual {v4, v5}, Labcd/Ga;->j6(Ljava/lang/String;)I

    move-result v10

    goto :goto_4

    :cond_7
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Labcd/Sa;->we(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    div-int/lit8 v12, v4, 0x2

    goto :goto_5

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/_d;->VH:Labcd/Vd;

    invoke-virtual {v4}, Labcd/Vd;->v5()Labcd/pa;

    move-result-object v4

    check-cast v4, Labcd/ae;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v4, v0, v1}, Labcd/ae;->rN(Labcd/Sa;I)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/_d;->VH:Labcd/Vd;

    invoke-virtual {v4}, Labcd/Vd;->v5()Labcd/pa;

    move-result-object v4

    check-cast v4, Labcd/ae;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v4, v0, v1}, Labcd/ae;->U2(Labcd/Sa;I)I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Labcd/Sa;->we(I)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_9

    const/4 v12, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/_d;->Zo:Labcd/La;

    iget-object v4, v4, Labcd/La;->a8:Labcd/Ba;

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v6

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->J8(I)I

    move-result v7

    const/4 v9, 0x1

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->XL(I)I

    move-result v10

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v8, p4

    invoke-virtual/range {v4 .. v15}, Labcd/Ba;->j6(Labcd/Da;Labcd/na;ILabcd/ua;IIIIZZI)Labcd/Ia;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v1, v2, v4}, Labcd/_d;->FH(Labcd/Sa;ILabcd/Ia;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Labcd/_d;->DW(Labcd/Sa;ILabcd/Ia;)V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Labcd/Sa;->we(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    div-int/lit8 v12, v4, 0x2

    goto :goto_6

    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/_d;->VH:Labcd/Vd;

    invoke-virtual {v4}, Labcd/Vd;->v5()Labcd/pa;

    move-result-object v4

    check-cast v4, Labcd/ae;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v4, v0, v1}, Labcd/ae;->lg(Labcd/Sa;I)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/_d;->Zo:Labcd/La;

    iget-object v4, v4, Labcd/La;->a8:Labcd/Ba;

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v6

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->J8(I)I

    move-result v7

    const/4 v9, 0x1

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->XL(I)I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v8, p4

    invoke-virtual/range {v4 .. v14}, Labcd/Ba;->j6(Labcd/Da;Labcd/na;ILabcd/ua;IIZZZZ)Labcd/Ia;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Labcd/_d;->DW(Labcd/Sa;ILabcd/Ia;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :catch_2
    move-exception v5

    move-object/from16 v12, p4

    goto/16 :goto_3

    :cond_b
    return-void
.end method


# virtual methods
.method public DW(Labcd/Sa;)J
    .registers 6

    const-wide v2, -0x29a4eeed377ca358L    # -9.932387618110347E107

    :try_start_0
    sget-boolean v0, Labcd/_d;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x29a4eeed377ca358L    # -9.932387618110347E107

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Labcd/_d;->FH()V

    invoke-virtual {p1}, Labcd/Sa;->aM()I

    move-result v0

    invoke-direct {p0, p1, v0}, Labcd/_d;->DW(Labcd/Sa;I)V

    invoke-direct {p0}, Labcd/_d;->DW()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/_d;->v5:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public DW(Labcd/Da;)V
    .registers 8

    const-wide v4, 0x233bd14a754521a0L    # 5.839837606080017E-139

    :try_start_0
    sget-boolean v0, Labcd/_d;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x233bd14a754521a0L    # 5.839837606080017E-139

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/_d;->Zo:Labcd/La;

    iget-object v0, v0, Labcd/La;->U2:Labcd/Va;

    iget-object v1, p0, Labcd/_d;->VH:Labcd/Vd;

    invoke-virtual {v0, p1, v1}, Labcd/Va;->j6(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Sa;->aM()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Labcd/_d;->j6(Labcd/Sa;ILabcd/ua;Labcd/ua;)V

    iget-object v1, p0, Labcd/_d;->Zo:Labcd/La;

    iget-object v1, v1, Labcd/La;->U2:Labcd/Va;

    invoke-virtual {v1, v0}, Labcd/Va;->j6(Labcd/Sa;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/_d;->v5:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public DW(Labcd/ua;)V
    .registers 6

    const-wide v2, 0x1c325dc941e8b358L    # 7.425836890933324E-173

    :try_start_0
    sget-boolean v0, Labcd/_d;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1c325dc941e8b358L    # 7.425836890933324E-173

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/_d;->Zo:Labcd/La;

    iget-object v0, v0, Labcd/La;->a8:Labcd/Ba;

    invoke-virtual {v0, p1}, Labcd/Ba;->DW(Labcd/ua;)V

    iget-object v0, p0, Labcd/_d;->Zo:Labcd/La;

    iget-object v0, v0, Labcd/La;->a8:Labcd/Ba;

    invoke-virtual {v0, p1}, Labcd/Ba;->FH(Labcd/ua;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/_d;->v5:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH(Labcd/Da;)V
    .registers 6

    const-wide v2, 0x23585b30d3e61af9L

    :try_start_0
    sget-boolean v0, Labcd/_d;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x23585b30d3e61af9L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/_d;->Zo:Labcd/La;

    iget-object v0, v0, Labcd/La;->U2:Labcd/Va;

    iget-object v1, p0, Labcd/_d;->VH:Labcd/Vd;

    invoke-virtual {v0, p1, v1}, Labcd/Va;->j6(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Sa;->aM()I

    move-result v1

    invoke-direct {p0, v0, v1}, Labcd/_d;->FH(Labcd/Sa;I)V

    iget-object v1, p0, Labcd/_d;->Zo:Labcd/La;

    iget-object v1, v1, Labcd/La;->U2:Labcd/Va;

    invoke-virtual {v1, v0}, Labcd/Va;->j6(Labcd/Sa;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/_d;->v5:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH(Labcd/Sa;)V
    .registers 6

    const-wide v2, 0x6a39aded00230711L    # 5.0320148914833724E203

    :try_start_0
    sget-boolean v0, Labcd/_d;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x6a39aded00230711L    # 5.0320148914833724E203

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v0

    invoke-interface {v0}, Labcd/na;->Hw()Labcd/ga;

    move-result-object v0

    check-cast v0, Labcd/Jd;

    invoke-virtual {v0, p1}, Labcd/Jd;->Hw(Labcd/Sa;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/_d;->v5:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH(Labcd/ua;)V
    .registers 6

    const-wide v2, -0x442b10ca92664f27L    # -1.7732134153035315E-20

    :try_start_0
    sget-boolean v0, Labcd/_d;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x442b10ca92664f27L    # -1.7732134153035315E-20

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/_d;->v5:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw(Labcd/Sa;)J
    .registers 6

    const-wide v2, -0xe0625967122e2a0L

    :try_start_0
    sget-boolean v0, Labcd/_d;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xe0625967122e2a0L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-wide/16 v0, 0xa

    return-wide v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/_d;->v5:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw(Labcd/Da;)V
    .registers 12

    const-wide v8, -0x3908e21083a41e53L    # -7.50187447767919E33

    :try_start_0
    sget-boolean v0, Labcd/_d;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3908e21083a41e53L    # -7.50187447767919E33

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/_d;->VH:Labcd/Vd;

    invoke-virtual {v0}, Labcd/Vd;->FH()Labcd/ra;

    move-result-object v0

    check-cast v0, Labcd/ce;

    invoke-virtual {v0}, Labcd/ce;->v5()Labcd/Na;

    move-result-object v3

    iget-object v0, p0, Labcd/_d;->Zo:Labcd/La;

    iget-object v0, v0, Labcd/La;->a8:Labcd/Ba;

    iget-object v2, p0, Labcd/_d;->VH:Labcd/Vd;

    invoke-virtual {p1}, Labcd/Da;->J8()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Labcd/Ba;->j6(Labcd/Da;Labcd/na;Labcd/Na;IZI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/_d;->v5:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v8, v9, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw(Labcd/ua;)V
    .registers 6

    const-wide v2, 0x1452acac81f11c80L    # 8.87548706268169E-211

    :try_start_0
    sget-boolean v0, Labcd/_d;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1452acac81f11c80L    # 8.87548706268169E-211

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/_d;->v5:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Labcd/Sa;)J
    .registers 6

    const-wide v2, -0xb5c6772769d5a8L

    :try_start_0
    sget-boolean v0, Labcd/_d;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xb5c6772769d5a8L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-wide/16 v0, 0xa

    return-wide v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/_d;->v5:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Labcd/Da;)V
    .registers 6

    const-wide v2, 0x9cbf9cf0971624cL

    :try_start_0
    sget-boolean v0, Labcd/_d;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x9cbf9cf0971624cL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/_d;->v5:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Labcd/Ia;)V
    .registers 6

    const-wide v2, 0x8467917482abc0dL

    :try_start_0
    sget-boolean v0, Labcd/_d;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x8467917482abc0dL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/_d;->v5:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Labcd/ua;)V
    .registers 6

    const-wide v2, -0x24b5c146c9e7d2f5L    # -5.821500306497537E131

    :try_start_0
    sget-boolean v0, Labcd/_d;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x24b5c146c9e7d2f5L    # -5.821500306497537E131

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/_d;->v5:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public v5(Labcd/Sa;)J
    .registers 6

    const-wide v2, -0x806b050c0388f75L    # -8.357377734861396E269

    :try_start_0
    sget-boolean v0, Labcd/_d;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x806b050c0388f75L    # -8.357377734861396E269

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1}, Labcd/_d;->DW(Labcd/Sa;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/_d;->v5:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

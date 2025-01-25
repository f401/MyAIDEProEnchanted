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
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x135fdff96291047cL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x8066dfe70fc2667L  # -8.4429180110549E269

    :try_start_6
    const-class v3, Labcd/_d;

    const-wide v4, 0x530fcaa42a1faa4L

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Labcd/_d;->Hw:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    new-instance v3, Ljava/util/zip/CRC32;

    invoke-direct {v3}, Ljava/util/zip/CRC32;-><init>()V

    sput-object v3, Labcd/_d;->j6:Ljava/util/zip/CRC32;

    const/16 v3, 0x400

    new-array v3, v3, [B

    sput-object v3, Labcd/_d;->DW:[B
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_25

    return-void

    :catchall_25
    move-exception v3

    sget-boolean v4, Labcd/_d;->v5:Z

    if-eqz v4, :cond_2d

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2d
    throw v3
.end method

.method public constructor <init>(Labcd/La;Labcd/Vd;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/_d;->Hw:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x833f6b80bb6497L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/_d;->Zo:Labcd/La;

    iput-object p2, p0, Labcd/_d;->VH:Labcd/Vd;
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v0

    sget-boolean v1, Labcd/_d;->v5:Z

    if-eqz v1, :cond_26

    const-wide v2, 0x833f6b80bb6497L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v0
.end method

.method private DW()J
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x23704b3794e93811L
    .end annotation

    const-wide v0, -0x5982fe58fe2f971L  # -4.322532960460961E281

    :try_start_5
    sget-boolean v2, Labcd/_d;->Hw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Labcd/_d;->j6()V

    sget-object v2, Labcd/_d;->j6:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-wide v0

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/_d;->v5:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method private DW(Labcd/Sa;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x204a105247ef32ebL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/_d;->Hw:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x5bb3e0d5bf5ec55L  # -9.419834914779164E280

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-virtual {p1, p2}, Labcd/Sa;->we(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v0, :cond_23

    invoke-virtual {p1, p2, v2}, Labcd/Sa;->Zo(II)I

    move-result v3

    invoke-direct {p0, p1, v3}, Labcd/_d;->DW(Labcd/Sa;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_23
    invoke-virtual {p1, p2}, Labcd/Sa;->P8(I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_63

    const/16 v3, 0x7d

    if-eq v0, v3, :cond_46

    const/16 v2, 0xcf

    if-eq v0, v2, :cond_33

    goto :goto_98

    :cond_33
    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-virtual {p1, v0}, Labcd/Sa;->XL(I)I

    move-result v0

    invoke-static {v0}, Labcd/_d;->j6(I)V

    invoke-virtual {p1, p2}, Labcd/Sa;->J8(I)I

    move-result v0

    :goto_42
    invoke-static {v0}, Labcd/_d;->j6(I)V

    goto :goto_98

    :cond_46
    invoke-virtual {p1, p2, v2}, Labcd/Sa;->Zo(II)I

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

    goto :goto_42

    :cond_63
    iget-object v0, p0, Labcd/_d;->VH:Labcd/Vd;

    invoke-virtual {v0}, Labcd/Vd;->v5()Labcd/pa;

    move-result-object v0

    check-cast v0, Labcd/ae;

    invoke-virtual {v0, p1, p2}, Labcd/ae;->lg(Labcd/Sa;I)Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-virtual {p1, p2}, Labcd/Sa;->XL(I)I

    move-result v0

    goto :goto_42

    :cond_76
    iget-object v0, p0, Labcd/_d;->VH:Labcd/Vd;

    invoke-virtual {v0}, Labcd/Vd;->v5()Labcd/pa;

    move-result-object v0

    check-cast v0, Labcd/ae;

    invoke-virtual {v0, p1, p2}, Labcd/ae;->rN(Labcd/Sa;I)Z

    move-result v0

    if-eqz v0, :cond_98

    iget-object v0, p0, Labcd/_d;->VH:Labcd/Vd;

    invoke-virtual {v0}, Labcd/Vd;->v5()Labcd/pa;

    move-result-object v0

    check-cast v0, Labcd/ae;

    invoke-virtual {v0, p1, p2}, Labcd/ae;->U2(Labcd/Sa;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Labcd/_d;->j6(Labcd/Sa;I)V

    invoke-virtual {p1, p2}, Labcd/Sa;->XL(I)I

    move-result v0
    :try_end_97
    .catchall {:try_start_0 .. :try_end_97} :catchall_99

    goto :goto_42

    :cond_98
    :goto_98
    return-void

    :catchall_99
    move-exception v0

    sget-boolean v1, Labcd/_d;->v5:Z

    if-eqz v1, :cond_ae

    const-wide v2, -0x5bb3e0d5bf5ec55L  # -9.419834914779164E280

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_ae
    goto :goto_b0

    :goto_af
    throw v0

    :goto_b0
    goto :goto_af
.end method

.method private DW(Labcd/Sa;ILabcd/Ia;)V
    .registers 20
    .annotation runtime Labcd/su;
        method = 0x71739b1f8afe958L
    .end annotation

    move/from16 v1, p2

    :try_start_2
    sget-boolean v0, Labcd/_d;->Hw:Z

    if-eqz v0, :cond_19

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x4f14c66857549240L  # -4.815245990188716E-73

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p3

    invoke-static/range {v2 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_53

    :cond_19
    move-object/from16 v2, p0

    :try_start_1b
    iget-object v0, v2, Labcd/_d;->Zo:Labcd/La;

    iget-object v3, v0, Labcd/La;->a8:Labcd/Ba;

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->vy(I)I

    move-result v5

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->BT(I)I

    move-result v6

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->Ws(I)I

    move-result v7

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->vy(I)I

    move-result v8

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->BT(I)I

    move-result v9

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->vy(I)I

    move-result v10

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->BT(I)I

    move-result v11

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->vy(I)I

    move-result v12

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->BT(I)I

    move-result v13

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->QX(I)I

    move-result v14

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->Ws(I)I

    move-result v15

    move-object/from16 v4, p3

    invoke-virtual/range {v3 .. v15}, Labcd/Ba;->j6(Labcd/Ia;IIIIIIIIIII)V
    :try_end_50
    .catchall {:try_start_1b .. :try_end_50} :catchall_51

    return-void

    :catchall_51
    move-exception v0

    goto :goto_56

    :catchall_53
    move-exception v0

    move-object/from16 v2, p0

    :goto_56
    sget-boolean v3, Labcd/_d;->v5:Z

    if-eqz v3, :cond_6e

    const-wide v8, -0x4f14c66857549240L  # -4.815245990188716E-73

    new-instance v12, Ljava/lang/Integer;

    invoke-direct {v12, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object v7, v0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v13, p3

    invoke-static/range {v7 .. v13}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6e
    throw v0
.end method

.method private static FH()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x38782bb25a1ee7ffL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x30dc6f62db21d4f9L  # 2.5146402328995803E-73

    :try_start_6
    sget-boolean v3, Labcd/_d;->Hw:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    sget-object v3, Labcd/_d;->j6:Ljava/util/zip/CRC32;

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->reset()V
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Labcd/_d;->v5:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v3
.end method

.method private FH(Labcd/Sa;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x37cb4e629f595f3fL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/_d;->Hw:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x2d1d92e25d481fd5L  # 2.2684435015147074E-91

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-virtual {p1, p2}, Labcd/Sa;->P8(I)I

    move-result v0
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_af

    const/4 v1, 0x1

    if-eq v0, v1, :cond_54

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_3a

    const/16 v1, 0xcf

    if-eq v0, v1, :cond_22

    goto/16 :goto_9d

    :cond_22
    :try_start_22
    iget-object v0, p0, Labcd/_d;->Zo:Labcd/La;

    iget-object v0, v0, Labcd/La;->a8:Labcd/Ba;

    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v1

    invoke-virtual {p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v2

    invoke-virtual {p1, p2}, Labcd/Sa;->J8(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Labcd/Ba;->DW(Labcd/Da;Labcd/na;I)Labcd/Ia;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Labcd/_d;->Hw(Labcd/Sa;ILabcd/Ia;)V

    goto :goto_9d

    :cond_3a
    iget-object v0, p0, Labcd/_d;->Zo:Labcd/La;

    iget-object v0, v0, Labcd/La;->a8:Labcd/Ba;

    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v1

    invoke-virtual {p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v2

    invoke-virtual {p1, p2}, Labcd/Sa;->J8(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Labcd/Ba;->DW(Labcd/Da;Labcd/na;I)Labcd/Ia;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Labcd/_d;->j6(Labcd/Sa;ILabcd/Ia;)V
    :try_end_51
    .catch Labcd/jc; {:try_start_22 .. :try_end_51} :catch_52
    .catchall {:try_start_22 .. :try_end_51} :catchall_af

    goto :goto_9d

    :catch_52
    move-exception v0

    goto :goto_9d

    :cond_54
    :try_start_54
    iget-object v0, p0, Labcd/_d;->VH:Labcd/Vd;

    invoke-virtual {v0}, Labcd/Vd;->v5()Labcd/pa;

    move-result-object v0

    check-cast v0, Labcd/ae;

    invoke-virtual {v0, p1, p2}, Labcd/ae;->rN(Labcd/Sa;I)Z

    move-result v0
    :try_end_60
    .catchall {:try_start_54 .. :try_end_60} :catchall_af

    if-eqz v0, :cond_7a

    :try_start_62
    iget-object v0, p0, Labcd/_d;->Zo:Labcd/La;

    iget-object v0, v0, Labcd/La;->a8:Labcd/Ba;

    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v1

    invoke-virtual {p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v2

    invoke-virtual {p1, p2}, Labcd/Sa;->J8(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Labcd/Ba;->DW(Labcd/Da;Labcd/na;I)Labcd/Ia;

    move-result-object v0

    :goto_76
    invoke-direct {p0, p1, p2, v0}, Labcd/_d;->DW(Labcd/Sa;ILabcd/Ia;)V
    :try_end_79
    .catch Labcd/jc; {:try_start_62 .. :try_end_79} :catch_52
    .catchall {:try_start_62 .. :try_end_79} :catchall_af

    goto :goto_9d

    :cond_7a
    :try_start_7a
    iget-object v0, p0, Labcd/_d;->VH:Labcd/Vd;

    invoke-virtual {v0}, Labcd/Vd;->v5()Labcd/pa;

    move-result-object v0

    check-cast v0, Labcd/ae;

    invoke-virtual {v0, p1, p2}, Labcd/ae;->lg(Labcd/Sa;I)Z

    move-result v0
    :try_end_86
    .catchall {:try_start_7a .. :try_end_86} :catchall_af

    if-eqz v0, :cond_9d

    :try_start_88
    iget-object v0, p0, Labcd/_d;->Zo:Labcd/La;

    iget-object v0, v0, Labcd/La;->a8:Labcd/Ba;

    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v1

    invoke-virtual {p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v2

    invoke-virtual {p1, p2}, Labcd/Sa;->J8(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Labcd/Ba;->DW(Labcd/Da;Labcd/na;I)Labcd/Ia;

    move-result-object v0
    :try_end_9c
    .catch Labcd/jc; {:try_start_88 .. :try_end_9c} :catch_52
    .catchall {:try_start_88 .. :try_end_9c} :catchall_af

    goto :goto_76

    :cond_9d
    :goto_9d
    :try_start_9d
    invoke-virtual {p1, p2}, Labcd/Sa;->we(I)I

    move-result v0

    const/4 v1, 0x0

    :goto_a2
    if-ge v1, v0, :cond_ae

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v2

    invoke-direct {p0, p1, v2}, Labcd/_d;->FH(Labcd/Sa;I)V
    :try_end_ab
    .catchall {:try_start_9d .. :try_end_ab} :catchall_af

    add-int/lit8 v1, v1, 0x1

    goto :goto_a2

    :cond_ae
    return-void

    :catchall_af
    move-exception v0

    sget-boolean v1, Labcd/_d;->v5:Z

    if-eqz v1, :cond_c4

    const-wide v2, 0x2d1d92e25d481fd5L  # 2.2684435015147074E-91

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c4
    goto :goto_c6

    :goto_c5
    throw v0

    :goto_c6
    goto :goto_c5
.end method

.method private FH(Labcd/Sa;ILabcd/Ia;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0xbd7760ac8e5532cL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/_d;->Hw:Z

    if-eqz v0, :cond_14

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0xee6f52704be77d0L  # 7.051157402608856E-237

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    invoke-virtual {p1, p2}, Labcd/Sa;->we(I)I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_38

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1e
    if-ge v1, v0, :cond_38

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v4

    invoke-virtual {p1, v4, v2}, Labcd/Sa;->Zo(II)I

    move-result v4

    invoke-virtual {p1, v4}, Labcd/Sa;->XL(I)I

    move-result v4

    iget-object v5, p0, Labcd/_d;->Zo:Labcd/La;

    iget-object v5, v5, Labcd/La;->a8:Labcd/Ba;

    invoke-virtual {v5, p3, v2, v4, v3}, Labcd/Ba;->j6(Labcd/Ia;III)V
    :try_end_33
    .catchall {:try_start_0 .. :try_end_33} :catchall_39

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x2

    goto :goto_1e

    :cond_38
    return-void

    :catchall_39
    move-exception v0

    sget-boolean v1, Labcd/_d;->v5:Z

    if-eqz v1, :cond_4f

    const-wide v2, 0xee6f52704be77d0L  # 7.051157402608856E-237

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4f
    goto :goto_51

    :goto_50
    throw v0

    :goto_51
    goto :goto_50
.end method

.method private Hw(Labcd/Sa;ILabcd/Ia;)V
    .registers 27
    .annotation runtime Labcd/su;
        method = 0x562902ef90f4a90L
    .end annotation

    move-object/from16 v7, p1

    move/from16 v8, p2

    :try_start_4
    sget-boolean v0, Labcd/_d;->Hw:Z

    if-eqz v0, :cond_1b

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v8}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x5868db42174c8c4L

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_62

    :cond_1b
    move-object/from16 v9, p0

    :try_start_1d
    iget-object v0, v9, Labcd/_d;->Zo:Labcd/La;

    iget-object v10, v0, Labcd/La;->a8:Labcd/Ba;

    const/4 v0, 0x0

    invoke-virtual {v7, v8, v0}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-virtual {v7, v1}, Labcd/Sa;->vy(I)I

    move-result v12

    invoke-virtual {v7, v8, v0}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-virtual {v7, v1}, Labcd/Sa;->BT(I)I

    move-result v13

    invoke-virtual {v7, v8, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-virtual {v7, v0}, Labcd/Sa;->Ws(I)I

    move-result v14

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->vy(I)I

    move-result v15

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->BT(I)I

    move-result v16

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->vy(I)I

    move-result v17

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->BT(I)I

    move-result v18

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->vy(I)I

    move-result v19

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->BT(I)I

    move-result v20

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->QX(I)I

    move-result v21

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->Ws(I)I

    move-result v22

    move-object/from16 v11, p3

    invoke-virtual/range {v10 .. v22}, Labcd/Ba;->j6(Labcd/Ia;IIIIIIIIIII)V
    :try_end_5f
    .catchall {:try_start_1d .. :try_end_5f} :catchall_60

    return-void

    :catchall_60
    move-exception v0

    goto :goto_65

    :catchall_62
    move-exception v0

    move-object/from16 v9, p0

    :goto_65
    sget-boolean v1, Labcd/_d;->v5:Z

    if-eqz v1, :cond_7d

    const-wide v2, 0x5868db42174c8c4L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v8}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7d
    throw v0
.end method

.method private static j6()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x1e4ac9d7693e9de9L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x17f9846dc7a1b6ddL  # -1.28219978982132E193

    :try_start_6
    sget-boolean v3, Labcd/_d;->Hw:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    sget-object v3, Labcd/_d;->j6:Ljava/util/zip/CRC32;

    sget-object v4, Labcd/_d;->DW:[B

    sget v5, Labcd/_d;->FH:I

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/util/zip/CRC32;->update([BII)V

    sput v6, Labcd/_d;->FH:I
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v3

    sget-boolean v4, Labcd/_d;->v5:Z

    if-eqz v4, :cond_22

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v3
.end method

.method private static j6(I)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x2d9143674a5b09a7L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x15e4bf4dc3a10697L  # -1.3350789352633324E203

    :try_start_6
    sget-boolean v3, Labcd/_d;->Hw:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_d
    sget v3, Labcd/_d;->FH:I

    add-int/lit8 v3, v3, 0x4

    sget-object v4, Labcd/_d;->DW:[B

    array-length v4, v4

    if-le v3, v4, :cond_19

    invoke-static {}, Labcd/_d;->j6()V

    :cond_19
    sget-object v3, Labcd/_d;->DW:[B

    sget v4, Labcd/_d;->FH:I

    add-int/lit8 v5, v4, 0x1

    sput v5, Labcd/_d;->FH:I
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_48

    and-int/lit16 v6, p0, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v4

    add-int/lit8 v4, v5, 0x1

    :try_start_28
    sput v4, Labcd/_d;->FH:I
    :try_end_2a
    .catchall {:try_start_28 .. :try_end_2a} :catchall_48

    shr-int/lit8 v6, p0, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    add-int/lit8 v5, v4, 0x1

    :try_start_33
    sput v5, Labcd/_d;->FH:I
    :try_end_35
    .catchall {:try_start_33 .. :try_end_35} :catchall_48

    shr-int/lit8 v6, p0, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v4

    add-int/lit8 v4, v5, 0x1

    :try_start_3e
    sput v4, Labcd/_d;->FH:I
    :try_end_40
    .catchall {:try_start_3e .. :try_end_40} :catchall_48

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    aput-byte p0, v3, v5

    return-void

    :catchall_48
    move-exception v3

    sget-boolean v4, Labcd/_d;->v5:Z

    if-eqz v4, :cond_55

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v3, v1, v2, v0, v4}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_55
    throw v3
.end method

.method private j6(Labcd/Sa;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x2d40c6974497cd8L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/_d;->Hw:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x5a78a610fdde4dd4L  # -6.737565106194921E-128

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-virtual {p1, p2}, Labcd/Sa;->we(I)I

    move-result v0

    invoke-static {v0}, Labcd/_d;->j6(I)V

    invoke-virtual {p1, p2}, Labcd/Sa;->P8(I)I

    move-result v0

    invoke-static {v0}, Labcd/_d;->j6(I)V

    invoke-virtual {p1, p2}, Labcd/Sa;->P8(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_27

    goto :goto_2e

    :cond_27
    invoke-virtual {p1, p2}, Labcd/Sa;->XL(I)I

    move-result v0

    invoke-static {v0}, Labcd/_d;->j6(I)V

    :goto_2e
    invoke-virtual {p1, p2}, Labcd/Sa;->we(I)I

    move-result v0

    const/4 v1, 0x0

    :goto_33
    if-ge v1, v0, :cond_3f

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v2

    invoke-direct {p0, p1, v2}, Labcd/_d;->j6(Labcd/Sa;I)V
    :try_end_3c
    .catchall {:try_start_0 .. :try_end_3c} :catchall_40

    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    :cond_3f
    return-void

    :catchall_40
    move-exception v0

    sget-boolean v1, Labcd/_d;->v5:Z

    if-eqz v1, :cond_55

    const-wide v2, -0x5a78a610fdde4dd4L  # -6.737565106194921E-128

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_55
    goto :goto_57

    :goto_56
    throw v0

    :goto_57
    goto :goto_56
.end method

.method private j6(Labcd/Sa;ILabcd/Ia;)V
    .registers 27
    .annotation runtime Labcd/su;
        method = -0x88a8038042c2610L
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v7, p1

    move/from16 v9, p2

    :try_start_6
    sget-boolean v0, Labcd/_d;->Hw:Z

    if-eqz v0, :cond_1d

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v9}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x20f982ee2f5c8fcL

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->we(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_67

    iget-object v0, v8, Labcd/_d;->Zo:Labcd/La;

    iget-object v10, v0, Labcd/La;->a8:Labcd/Ba;

    const/4 v0, 0x1

    invoke-virtual {v7, v9, v0}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-virtual {v7, v1}, Labcd/Sa;->vy(I)I

    move-result v12

    invoke-virtual {v7, v9, v0}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-virtual {v7, v1}, Labcd/Sa;->BT(I)I

    move-result v13

    invoke-virtual {v7, v9, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-virtual {v7, v0}, Labcd/Sa;->Ws(I)I

    move-result v14

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->vy(I)I

    move-result v15

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->BT(I)I

    move-result v16

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->vy(I)I

    move-result v17

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->BT(I)I

    move-result v18

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->vy(I)I

    move-result v19

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->BT(I)I

    move-result v20

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->QX(I)I

    move-result v21

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->Ws(I)I

    move-result v22

    :goto_61
    move-object/from16 v11, p3

    invoke-virtual/range {v10 .. v22}, Labcd/Ba;->j6(Labcd/Ia;IIIIIIIIIII)V

    goto :goto_98

    :cond_67
    iget-object v0, v8, Labcd/_d;->Zo:Labcd/La;

    iget-object v10, v0, Labcd/La;->a8:Labcd/Ba;

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->vy(I)I

    move-result v12

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->BT(I)I

    move-result v13

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->BT(I)I

    move-result v14

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->vy(I)I

    move-result v15

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->BT(I)I

    move-result v16

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->vy(I)I

    move-result v17

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->BT(I)I

    move-result v18

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->vy(I)I

    move-result v19

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->BT(I)I

    move-result v20

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->QX(I)I

    move-result v21

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->Ws(I)I

    move-result v22
    :try_end_97
    .catchall {:try_start_6 .. :try_end_97} :catchall_99

    goto :goto_61

    :goto_98
    return-void

    :catchall_99
    move-exception v0

    sget-boolean v1, Labcd/_d;->v5:Z

    if-eqz v1, :cond_b2

    const-wide v2, 0x20f982ee2f5c8fcL

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v9}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b2
    goto :goto_b4

    :goto_b3
    throw v0

    :goto_b4
    goto :goto_b3
.end method

.method private j6(Labcd/Sa;ILabcd/ua;Labcd/ua;)V
    .registers 28
    .annotation runtime Labcd/su;
        method = -0x6a4e0f1a6abd070L
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v8, p1

    move/from16 v10, p2

    :try_start_6
    sget-boolean v0, Labcd/_d;->Hw:Z

    if-eqz v0, :cond_1f

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v10}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0xd7aeb092582e370L

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->P8(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_12e

    const/16 v4, 0x7d

    if-eq v0, v4, :cond_cf

    const/16 v2, 0xcf

    if-eq v0, v2, :cond_a2

    const/16 v2, 0xdf

    if-eq v0, v2, :cond_36

    goto/16 :goto_1b9

    :cond_36
    iget-object v0, v9, Labcd/_d;->VH:Labcd/Vd;

    invoke-virtual {v0}, Labcd/Vd;->FH()Labcd/ra;

    move-result-object v0

    check-cast v0, Labcd/ce;

    invoke-virtual {v0}, Labcd/ce;->v5()Labcd/Na;

    move-result-object v0

    iget-object v2, v9, Labcd/_d;->Zo:Labcd/La;

    iget-object v2, v2, Labcd/La;->a8:Labcd/Ba;

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Labcd/Ba;->j6(Labcd/Na;Labcd/Da;Labcd/na;)Labcd/Na;

    iget-object v2, v9, Labcd/_d;->Zo:Labcd/La;

    iget-object v11, v2, Labcd/La;->a8:Labcd/Ba;

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v13

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Da;->J8()I

    move-result v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v15, v0

    invoke-virtual/range {v11 .. v21}, Labcd/Ba;->j6(Labcd/Da;Labcd/na;ILabcd/Na;IIIZZZ)Labcd/ua;

    move-result-object v2
    :try_end_75
    .catchall {:try_start_6 .. :try_end_75} :catchall_1d2

    :try_start_75
    iget-object v3, v9, Labcd/_d;->Zo:Labcd/La;

    iget-object v11, v3, Labcd/La;->a8:Labcd/Ba;

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v13

    const/4 v14, 0x1

    const/16 v16, 0x0

    const/16 v18, 0x1

    iget-object v3, v9, Labcd/_d;->Zo:Labcd/La;

    iget-object v3, v3, Labcd/La;->j3:Labcd/Ga;

    const-string v4, "Members"

    invoke-virtual {v3, v4}, Labcd/Ga;->j6(Ljava/lang/String;)I

    move-result v19

    const/16 v20, 0x0

    move-object v15, v0

    move-object/from16 v17, v2

    invoke-virtual/range {v11 .. v20}, Labcd/Ba;->j6(Labcd/Da;Labcd/na;ILabcd/Na;ILabcd/ua;IIZ)Labcd/ua;

    move-result-object v0
    :try_end_99
    .catchall {:try_start_75 .. :try_end_99} :catchall_9c

    move-object v3, v0

    goto/16 :goto_1bd

    :catchall_9c
    move-exception v0

    move-object/from16 v11, p4

    move-object v7, v2

    goto/16 :goto_1d7

    :cond_a2
    :try_start_a2
    iget-object v0, v9, Labcd/_d;->Zo:Labcd/La;

    iget-object v11, v0, Labcd/La;->a8:Labcd/Ba;

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v13

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->J8(I)I

    move-result v14

    const/16 v16, 0x1

    invoke-virtual {v8, v10, v1}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-virtual {v8, v0}, Labcd/Sa;->XL(I)I

    move-result v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v15, p3

    invoke-virtual/range {v11 .. v21}, Labcd/Ba;->j6(Labcd/Da;Labcd/na;ILabcd/ua;IIZZZZ)Labcd/Ia;

    move-result-object v0

    invoke-direct {v9, v8, v10, v0}, Labcd/_d;->Hw(Labcd/Sa;ILabcd/Ia;)V

    goto/16 :goto_1b9

    :cond_cf
    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->we(I)I

    move-result v0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_e1

    invoke-virtual {v8, v10, v3}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-virtual {v8, v0}, Labcd/Sa;->XL(I)I

    move-result v0

    :goto_de
    move/from16 v17, v0

    goto :goto_ec

    :cond_e1
    iget-object v0, v9, Labcd/_d;->Zo:Labcd/La;

    iget-object v0, v0, Labcd/La;->j3:Labcd/Ga;

    const-string v4, ""

    invoke-virtual {v0, v4}, Labcd/Ga;->j6(Ljava/lang/String;)I

    move-result v0

    goto :goto_de

    :goto_ec
    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->we(I)I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {v8, v10, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-virtual {v8, v0}, Labcd/Sa;->we(I)I

    move-result v4

    if-ne v4, v2, :cond_fe

    const/16 v19, 0x0

    goto :goto_106

    :cond_fe
    invoke-virtual {v8, v0}, Labcd/Sa;->we(I)I

    move-result v4

    sub-int/2addr v4, v3

    div-int/2addr v4, v2

    move/from16 v19, v4

    :goto_106
    iget-object v2, v9, Labcd/_d;->Zo:Labcd/La;

    iget-object v11, v2, Labcd/La;->a8:Labcd/Ba;

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v13

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->J8(I)I

    move-result v14

    const/16 v16, 0x1

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v15, p3

    invoke-virtual/range {v11 .. v22}, Labcd/Ba;->j6(Labcd/Da;Labcd/na;ILabcd/ua;IIIIZZI)Labcd/Ia;

    move-result-object v2

    invoke-direct {v9, v8, v0, v2}, Labcd/_d;->FH(Labcd/Sa;ILabcd/Ia;)V

    invoke-direct {v9, v8, v10, v2}, Labcd/_d;->j6(Labcd/Sa;ILabcd/Ia;)V

    goto/16 :goto_1b9

    :cond_12e
    iget-object v0, v9, Labcd/_d;->VH:Labcd/Vd;

    invoke-virtual {v0}, Labcd/Vd;->v5()Labcd/pa;

    move-result-object v0

    check-cast v0, Labcd/ae;

    invoke-virtual {v0, v8, v10}, Labcd/ae;->rN(Labcd/Sa;I)Z

    move-result v0

    if-eqz v0, :cond_184

    iget-object v0, v9, Labcd/_d;->VH:Labcd/Vd;

    invoke-virtual {v0}, Labcd/Vd;->v5()Labcd/pa;

    move-result-object v0

    check-cast v0, Labcd/ae;

    invoke-virtual {v0, v8, v10}, Labcd/ae;->U2(Labcd/Sa;I)I

    move-result v0

    invoke-virtual {v8, v0}, Labcd/Sa;->we(I)I

    move-result v4

    if-ne v4, v2, :cond_151

    const/16 v19, 0x0

    goto :goto_159

    :cond_151
    invoke-virtual {v8, v0}, Labcd/Sa;->we(I)I

    move-result v4

    sub-int/2addr v4, v3

    div-int/2addr v4, v2

    move/from16 v19, v4

    :goto_159
    iget-object v2, v9, Labcd/_d;->Zo:Labcd/La;

    iget-object v11, v2, Labcd/La;->a8:Labcd/Ba;

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v13

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->J8(I)I

    move-result v14

    const/16 v16, 0x1

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->XL(I)I

    move-result v17

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v15, p4

    invoke-virtual/range {v11 .. v22}, Labcd/Ba;->j6(Labcd/Da;Labcd/na;ILabcd/ua;IIIIZZI)Labcd/Ia;

    move-result-object v2

    invoke-direct {v9, v8, v0, v2}, Labcd/_d;->FH(Labcd/Sa;ILabcd/Ia;)V

    invoke-direct {v9, v8, v10, v2}, Labcd/_d;->DW(Labcd/Sa;ILabcd/Ia;)V

    goto :goto_1b9

    :cond_184
    iget-object v0, v9, Labcd/_d;->VH:Labcd/Vd;

    invoke-virtual {v0}, Labcd/Vd;->v5()Labcd/pa;

    move-result-object v0

    check-cast v0, Labcd/ae;

    invoke-virtual {v0, v8, v10}, Labcd/ae;->lg(Labcd/Sa;I)Z

    move-result v0

    if-eqz v0, :cond_1b9

    iget-object v0, v9, Labcd/_d;->Zo:Labcd/La;

    iget-object v11, v0, Labcd/La;->a8:Labcd/Ba;

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v13

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->J8(I)I

    move-result v14

    const/16 v16, 0x1

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->XL(I)I

    move-result v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v15, p4

    invoke-virtual/range {v11 .. v21}, Labcd/Ba;->j6(Labcd/Da;Labcd/na;ILabcd/ua;IIZZZZ)Labcd/Ia;

    move-result-object v0

    invoke-direct {v9, v8, v10, v0}, Labcd/_d;->DW(Labcd/Sa;ILabcd/Ia;)V
    :try_end_1b9
    .catchall {:try_start_a2 .. :try_end_1b9} :catchall_1d2

    :cond_1b9
    :goto_1b9
    move-object/from16 v2, p3

    move-object/from16 v3, p4

    :goto_1bd
    :try_start_1bd
    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->we(I)I

    move-result v0

    :goto_1c1
    if-ge v1, v0, :cond_1cd

    invoke-virtual {v8, v10, v1}, Labcd/Sa;->Zo(II)I

    move-result v4

    invoke-direct {v9, v8, v4, v2, v3}, Labcd/_d;->j6(Labcd/Sa;ILabcd/ua;Labcd/ua;)V
    :try_end_1ca
    .catchall {:try_start_1bd .. :try_end_1ca} :catchall_1ce

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c1

    :cond_1cd
    return-void

    :catchall_1ce
    move-exception v0

    move-object v7, v2

    move-object v11, v3

    goto :goto_1d7

    :catchall_1d2
    move-exception v0

    move-object/from16 v7, p3

    move-object/from16 v11, p4

    :goto_1d7
    sget-boolean v1, Labcd/_d;->v5:Z

    if-eqz v1, :cond_1ee

    const-wide v2, 0xd7aeb092582e370L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v10}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object v8, v11

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1ee
    goto :goto_1f0

    :goto_1ef
    throw v0

    :goto_1f0
    goto :goto_1ef
.end method


# virtual methods
.method public DW(Labcd/Sa;)J
    .registers 6

    const-wide v0, -0x29a4eeed377ca358L  # -9.932387618110347E107

    :try_start_5
    sget-boolean v2, Labcd/_d;->Hw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Labcd/_d;->FH()V

    invoke-virtual {p1}, Labcd/Sa;->aM()I

    move-result v2

    invoke-direct {p0, p1, v2}, Labcd/_d;->DW(Labcd/Sa;I)V

    invoke-direct {p0}, Labcd/_d;->DW()J

    move-result-wide v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    return-wide v0

    :catchall_1b
    move-exception v2

    sget-boolean v3, Labcd/_d;->v5:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method public DW(Labcd/Da;)V
    .registers 7

    const-wide v0, 0x233bd14a754521a0L  # 5.839837606080017E-139

    :try_start_5
    sget-boolean v2, Labcd/_d;->Hw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/_d;->Zo:Labcd/La;

    iget-object v2, v2, Labcd/La;->U2:Labcd/Va;

    iget-object v3, p0, Labcd/_d;->VH:Labcd/Vd;

    invoke-virtual {v2, p1, v3}, Labcd/Va;->j6(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Sa;->aM()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4, v4}, Labcd/_d;->j6(Labcd/Sa;ILabcd/ua;Labcd/ua;)V

    iget-object v3, p0, Labcd/_d;->Zo:Labcd/La;

    iget-object v3, v3, Labcd/La;->U2:Labcd/Va;

    invoke-virtual {v3, v2}, Labcd/Va;->j6(Labcd/Sa;)V
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_26

    return-void

    :catchall_26
    move-exception v2

    sget-boolean v3, Labcd/_d;->v5:Z

    if-eqz v3, :cond_2e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    throw v2
.end method

.method public DW(Labcd/ua;)V
    .registers 6

    const-wide v0, 0x1c325dc941e8b358L  # 7.425836890933324E-173

    :try_start_5
    sget-boolean v2, Labcd/_d;->Hw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/_d;->Zo:Labcd/La;

    iget-object v2, v2, Labcd/La;->a8:Labcd/Ba;

    invoke-virtual {v2, p1}, Labcd/Ba;->DW(Labcd/ua;)V

    iget-object v2, p0, Labcd/_d;->Zo:Labcd/La;

    iget-object v2, v2, Labcd/La;->a8:Labcd/Ba;

    invoke-virtual {v2, p1}, Labcd/Ba;->FH(Labcd/ua;)V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v2

    sget-boolean v3, Labcd/_d;->v5:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method public FH(Labcd/Da;)V
    .registers 6

    const-wide v0, 0x23585b30d3e61af9L

    :try_start_5
    sget-boolean v2, Labcd/_d;->Hw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/_d;->Zo:Labcd/La;

    iget-object v2, v2, Labcd/La;->U2:Labcd/Va;

    iget-object v3, p0, Labcd/_d;->VH:Labcd/Vd;

    invoke-virtual {v2, p1, v3}, Labcd/Va;->j6(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Sa;->aM()I

    move-result v3

    invoke-direct {p0, v2, v3}, Labcd/_d;->FH(Labcd/Sa;I)V

    iget-object v3, p0, Labcd/_d;->Zo:Labcd/La;

    iget-object v3, v3, Labcd/La;->U2:Labcd/Va;

    invoke-virtual {v3, v2}, Labcd/Va;->j6(Labcd/Sa;)V
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_25

    return-void

    :catchall_25
    move-exception v2

    sget-boolean v3, Labcd/_d;->v5:Z

    if-eqz v3, :cond_2d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    throw v2
.end method

.method public FH(Labcd/Sa;)V
    .registers 6

    const-wide v0, 0x6a39aded00230711L  # 5.0320148914833724E203

    :try_start_5
    sget-boolean v2, Labcd/_d;->Hw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v2

    invoke-interface {v2}, Labcd/na;->Hw()Labcd/ga;

    move-result-object v2

    check-cast v2, Labcd/Jd;

    invoke-virtual {v2, p1}, Labcd/Jd;->Hw(Labcd/Sa;)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Labcd/_d;->v5:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public FH(Labcd/ua;)V
    .registers 6

    const-wide v0, -0x442b10ca92664f27L  # -1.7732134153035315E-20

    :try_start_5
    sget-boolean v2, Labcd/_d;->Hw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Labcd/_d;->v5:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public Hw(Labcd/Sa;)J
    .registers 6

    const-wide v0, -0xe0625967122e2a0L

    :try_start_5
    sget-boolean v2, Labcd/_d;->Hw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_f

    :cond_c
    const-wide/16 v0, 0xa

    return-wide v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/_d;->v5:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public Hw(Labcd/Da;)V
    .registers 12

    const-wide v0, -0x3908e21083a41e53L  # -7.50187447767919E33

    :try_start_5
    sget-boolean v2, Labcd/_d;->Hw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/_d;->VH:Labcd/Vd;

    invoke-virtual {v2}, Labcd/Vd;->FH()Labcd/ra;

    move-result-object v2

    check-cast v2, Labcd/ce;

    invoke-virtual {v2}, Labcd/ce;->v5()Labcd/Na;

    move-result-object v6

    iget-object v2, p0, Labcd/_d;->Zo:Labcd/La;

    iget-object v3, v2, Labcd/La;->a8:Labcd/Ba;

    iget-object v5, p0, Labcd/_d;->VH:Labcd/Vd;

    invoke-virtual {p1}, Labcd/Da;->J8()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v9}, Labcd/Ba;->j6(Labcd/Da;Labcd/na;Labcd/Na;IZI)V
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_29

    return-void

    :catchall_29
    move-exception v2

    sget-boolean v3, Labcd/_d;->v5:Z

    if-eqz v3, :cond_31

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v2
.end method

.method public Hw(Labcd/ua;)V
    .registers 6

    const-wide v0, 0x1452acac81f11c80L  # 8.87548706268169E-211

    :try_start_5
    sget-boolean v2, Labcd/_d;->Hw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Labcd/_d;->v5:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public j6(Labcd/Sa;)J
    .registers 6

    const-wide v0, -0xb5c6772769d5a8L

    :try_start_5
    sget-boolean v2, Labcd/_d;->Hw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_f

    :cond_c
    const-wide/16 v0, 0xa

    return-wide v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/_d;->v5:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public j6(Labcd/Da;)V
    .registers 6

    const-wide v0, 0x9cbf9cf0971624cL

    :try_start_5
    sget-boolean v2, Labcd/_d;->Hw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Labcd/_d;->v5:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public j6(Labcd/Ia;)V
    .registers 6

    const-wide v0, 0x8467917482abc0dL

    :try_start_5
    sget-boolean v2, Labcd/_d;->Hw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Labcd/_d;->v5:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public j6(Labcd/ua;)V
    .registers 6

    const-wide v0, -0x24b5c146c9e7d2f5L  # -5.821500306497537E131

    :try_start_5
    sget-boolean v2, Labcd/_d;->Hw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Labcd/_d;->v5:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public v5(Labcd/Sa;)J
    .registers 6

    const-wide v0, -0x806b050c0388f75L  # -8.357377734861396E269

    :try_start_5
    sget-boolean v2, Labcd/_d;->Hw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p0, p1}, Labcd/_d;->DW(Labcd/Sa;)J

    move-result-wide v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return-wide v0

    :catchall_11
    move-exception v2

    sget-boolean v3, Labcd/_d;->v5:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    throw v2
.end method

.class public Labcd/de;
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
        field = 0x489d03f285302427L
    .end annotation
.end field

.field private final FH:Labcd/La;
    .annotation runtime Labcd/ru;
        field = -0xb6db21782d390a1L
    .end annotation
.end field

.field private Hw:Labcd/_b;
    .annotation runtime Labcd/ru;
        field = 0xa5eb57367183609L
    .end annotation
.end field

.field private VH:Labcd/sc;
    .annotation runtime Labcd/ru;
        field = -0x27d25a4e0eebea81L
    .end annotation
.end field

.field private Zo:Labcd/sc;
    .annotation runtime Labcd/ru;
        field = -0x1dc70d56c58ea559L
    .end annotation
.end field

.field private gn:I
    .annotation runtime Labcd/ru;
        field = -0x58a1e6c766854e8L
    .end annotation
.end field

.field private tp:I
    .annotation runtime Labcd/ru;
        field = 0x3c05cec0920fb13dL
    .end annotation
.end field

.field private u7:I
    .annotation runtime Labcd/ru;
        field = 0x72e3d76777a1008L
    .end annotation
.end field

.field private v5:Labcd/Mb;
    .annotation runtime Labcd/ru;
        field = -0xef46abcf05f7811L
    .end annotation
.end field

.field private we:I
    .annotation runtime Labcd/ru;
        field = -0x4687933f825d14f9L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/de;

    const-wide v1, -0x2aae25c3c1641e99L  # -9.996250538706612E102

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/La;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, -0x403c95560f48ae5bL  # -0.15169262174334822

    :try_start_6
    sget-boolean v3, Labcd/de;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/de;->FH:Labcd/La;

    new-instance v3, Labcd/_b;

    iget-object v4, p1, Labcd/La;->Mr:Labcd/Ea;

    invoke-direct {v3, v4}, Labcd/_b;-><init>(Labcd/Ea;)V

    iput-object v3, p0, Labcd/de;->Hw:Labcd/_b;

    new-instance v3, Labcd/Mb;

    invoke-direct {v3}, Labcd/Mb;-><init>()V

    iput-object v3, p0, Labcd/de;->v5:Labcd/Mb;

    new-instance v3, Labcd/sc;

    invoke-direct {v3, p1}, Labcd/sc;-><init>(Labcd/La;)V

    iput-object v3, p0, Labcd/de;->VH:Labcd/sc;

    new-instance v3, Labcd/sc;

    invoke-direct {v3, p1}, Labcd/sc;-><init>(Labcd/La;)V

    iput-object v3, p0, Labcd/de;->Zo:Labcd/sc;

    iget-object v3, p1, Labcd/La;->j3:Labcd/Ga;

    const-string v4, "public"

    invoke-virtual {v3, v4}, Labcd/Ga;->j6(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Labcd/de;->gn:I

    iget-object v3, p1, Labcd/La;->j3:Labcd/Ga;

    const-string v4, "system"

    invoke-virtual {v3, v4}, Labcd/Ga;->j6(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Labcd/de;->u7:I

    iget-object v3, p1, Labcd/La;->j3:Labcd/Ga;

    const-string v4, "uri"

    invoke-virtual {v3, v4}, Labcd/Ga;->j6(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Labcd/de;->tp:I

    iget-object v3, p1, Labcd/La;->j3:Labcd/Ga;

    const-string v4, "publicId"

    invoke-virtual {v3, v4}, Labcd/Ga;->j6(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Labcd/de;->EQ:I

    iget-object v3, p1, Labcd/La;->j3:Labcd/Ga;

    const-string v4, "systemId"

    invoke-virtual {v3, v4}, Labcd/Ga;->j6(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Labcd/de;->we:I
    :try_end_62
    .catchall {:try_start_6 .. :try_end_62} :catchall_63

    return-void

    :catchall_63
    move-exception v3

    sget-boolean v4, Labcd/de;->DW:Z

    if-eqz v4, :cond_6b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_6b
    throw v3
.end method

.method private DW(Labcd/Sa;I)I
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x3d8c0f7c9f5e58edL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/de;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x4384250e68ac9b3cL  # 1.81447787204011904E17

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-virtual {p1, p2}, Labcd/Sa;->P8(I)I

    move-result v0

    const/16 v1, 0xd5

    if-ne v0, v1, :cond_1a

    return p2

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    invoke-virtual {p1, p2}, Labcd/Sa;->we(I)I

    move-result v1

    if-ge v0, v1, :cond_2f

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-direct {p0, p1, v1}, Labcd/de;->DW(Labcd/Sa;I)I

    move-result v1
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_31

    if-lez v1, :cond_2c

    return v1

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_2f
    const/4 p1, -0x1

    return p1

    :catchall_31
    move-exception v0

    sget-boolean v1, Labcd/de;->DW:Z

    if-eqz v1, :cond_46

    const-wide v2, 0x4384250e68ac9b3cL  # 1.81447787204011904E17

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_46
    goto :goto_48

    :goto_47
    throw v0

    :goto_48
    goto :goto_47
.end method

.method private DW(Labcd/Sa;ILjava/lang/String;)Ljava/lang/String;
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x1a00d705504a7ef4L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/de;->j6:Z

    if-eqz v0, :cond_14

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x68d510e65a31487L

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    invoke-virtual {p1, p2}, Labcd/Sa;->P8(I)I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_21

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_21

    goto :goto_79

    :cond_21
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-virtual {p1, v1}, Labcd/Sa;->XL(I)I

    move-result v1

    iget v2, p0, Labcd/de;->u7:I

    if-ne v1, v2, :cond_79

    const/4 v1, 0x2

    :goto_2f
    invoke-virtual {p1, p2}, Labcd/Sa;->we(I)I

    move-result v2

    sub-int/2addr v2, v0

    if-ge v1, v2, :cond_79

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v2

    invoke-virtual {p1, v2}, Labcd/Sa;->P8(I)I

    move-result v3

    const/16 v4, 0xcb

    if-ne v3, v4, :cond_76

    invoke-static {p1, v2}, Labcd/qe;->Mr(Labcd/Sa;I)I

    move-result v3

    iget v4, p0, Labcd/de;->we:I

    if-ne v3, v4, :cond_5f

    invoke-virtual {p1, v2}, Labcd/Sa;->we(I)I

    move-result v4

    sub-int/2addr v4, v0

    invoke-virtual {p1, v2, v4}, Labcd/Sa;->Zo(II)I

    move-result v4

    invoke-direct {p0, p1, v4}, Labcd/de;->j6(Labcd/Sa;I)V

    iget-object v4, p0, Labcd/de;->Zo:Labcd/sc;

    invoke-virtual {v4, p3}, Labcd/sc;->DW(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5f

    goto :goto_79

    :cond_5f
    iget v4, p0, Labcd/de;->tp:I

    if-ne v3, v4, :cond_76

    invoke-virtual {p1, v2}, Labcd/Sa;->we(I)I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v2, v1}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Labcd/de;->j6(Labcd/Sa;I)V

    iget-object v0, p0, Labcd/de;->Zo:Labcd/sc;

    invoke-virtual {v0}, Labcd/sc;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_76
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_79
    :goto_79
    const/4 v0, 0x0

    :goto_7a
    invoke-virtual {p1, p2}, Labcd/Sa;->we(I)I

    move-result v1

    if-ge v0, v1, :cond_8e

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-direct {p0, p1, v1, p3}, Labcd/de;->DW(Labcd/Sa;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_88
    .catchall {:try_start_0 .. :try_end_88} :catchall_90

    if-eqz v1, :cond_8b

    return-object v1

    :cond_8b
    add-int/lit8 v0, v0, 0x1

    goto :goto_7a

    :cond_8e
    const/4 p1, 0x0

    return-object p1

    :catchall_90
    move-exception v0

    sget-boolean v1, Labcd/de;->DW:Z

    if-eqz v1, :cond_a6

    const-wide v2, 0x68d510e65a31487L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a6
    goto :goto_a8

    :goto_a7
    throw v0

    :goto_a8
    goto :goto_a7
.end method

.method private j6(Labcd/Sa;ILjava/lang/String;)Ljava/lang/String;
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x2ed7455e2db3100L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/de;->j6:Z

    if-eqz v0, :cond_14

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0xaf841c6d8cd53a5L  # -5.570356856855873E255

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    invoke-virtual {p1, p2}, Labcd/Sa;->P8(I)I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_21

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_21

    goto :goto_79

    :cond_21
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-virtual {p1, v1}, Labcd/Sa;->XL(I)I

    move-result v1

    iget v2, p0, Labcd/de;->gn:I

    if-ne v1, v2, :cond_79

    const/4 v1, 0x2

    :goto_2f
    invoke-virtual {p1, p2}, Labcd/Sa;->we(I)I

    move-result v2

    sub-int/2addr v2, v0

    if-ge v1, v2, :cond_79

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v2

    invoke-virtual {p1, v2}, Labcd/Sa;->P8(I)I

    move-result v3

    const/16 v4, 0xcb

    if-ne v3, v4, :cond_76

    invoke-static {p1, v2}, Labcd/qe;->Mr(Labcd/Sa;I)I

    move-result v3

    iget v4, p0, Labcd/de;->EQ:I

    if-ne v3, v4, :cond_5f

    invoke-virtual {p1, v2}, Labcd/Sa;->we(I)I

    move-result v4

    sub-int/2addr v4, v0

    invoke-virtual {p1, v2, v4}, Labcd/Sa;->Zo(II)I

    move-result v4

    invoke-direct {p0, p1, v4}, Labcd/de;->j6(Labcd/Sa;I)V

    iget-object v4, p0, Labcd/de;->Zo:Labcd/sc;

    invoke-virtual {v4, p3}, Labcd/sc;->DW(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5f

    goto :goto_79

    :cond_5f
    iget v4, p0, Labcd/de;->tp:I

    if-ne v3, v4, :cond_76

    invoke-virtual {p1, v2}, Labcd/Sa;->we(I)I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v2, v1}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Labcd/de;->j6(Labcd/Sa;I)V

    iget-object v0, p0, Labcd/de;->Zo:Labcd/sc;

    invoke-virtual {v0}, Labcd/sc;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_76
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_79
    :goto_79
    const/4 v0, 0x0

    :goto_7a
    invoke-virtual {p1, p2}, Labcd/Sa;->we(I)I

    move-result v1

    if-ge v0, v1, :cond_8e

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-direct {p0, p1, v1, p3}, Labcd/de;->j6(Labcd/Sa;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_88
    .catchall {:try_start_0 .. :try_end_88} :catchall_90

    if-eqz v1, :cond_8b

    return-object v1

    :cond_8b
    add-int/lit8 v0, v0, 0x1

    goto :goto_7a

    :cond_8e
    const/4 p1, 0x0

    return-object p1

    :catchall_90
    move-exception v0

    sget-boolean v1, Labcd/de;->DW:Z

    if-eqz v1, :cond_a6

    const-wide v2, -0xaf841c6d8cd53a5L  # -5.570356856855873E255

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a6
    goto :goto_a8

    :goto_a7
    throw v0

    :goto_a8
    goto :goto_a7
.end method

.method private j6()V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x5ba19167399510c3L
    .end annotation

    const-wide v0, -0x595813d9ca029730L

    :try_start_5
    sget-boolean v2, Labcd/de;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/de;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->Mr:Labcd/Ea;

    invoke-virtual {v2}, Labcd/Ea;->Zo()Labcd/_b;

    move-result-object v2

    :cond_14
    :goto_14
    iget-object v3, v2, Labcd/_b;->v5:Labcd/_b$a;

    invoke-virtual {v3}, Labcd/_b$a;->j6()Z

    move-result v3

    if-eqz v3, :cond_92

    iget-object v3, v2, Labcd/_b;->v5:Labcd/_b$a;

    invoke-virtual {v3}, Labcd/_b$a;->FH()Labcd/Da;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Da;->gn()Labcd/la;

    move-result-object v4

    instance-of v4, v4, Labcd/me;

    if-eqz v4, :cond_14

    iget-object v4, p0, Labcd/de;->v5:Labcd/Mb;

    invoke-virtual {v3}, Labcd/Da;->EQ()I

    move-result v5

    invoke-virtual {v4, v5}, Labcd/Mb;->j6(I)Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-virtual {v3}, Labcd/Da;->a8()J

    move-result-wide v4

    iget-object v6, p0, Labcd/de;->v5:Labcd/Mb;

    invoke-virtual {v3}, Labcd/Da;->EQ()I

    move-result v7

    invoke-virtual {v6, v7}, Labcd/Mb;->DW(I)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_14

    :cond_48
    invoke-virtual {v3}, Labcd/Da;->gn()Labcd/la;

    move-result-object v4

    invoke-interface {v4}, Labcd/la;->v5()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_54
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/na;

    instance-of v6, v5, Labcd/ne;

    if-eqz v6, :cond_54

    iget-object v4, p0, Labcd/de;->FH:Labcd/La;

    iget-object v4, v4, Labcd/La;->U2:Labcd/Va;

    invoke-virtual {v4, v3, v5}, Labcd/Va;->DW(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v4

    invoke-direct {p0, v4}, Labcd/de;->j6(Labcd/Sa;)Z

    move-result v5

    if-eqz v5, :cond_78

    iget-object v5, p0, Labcd/de;->Hw:Labcd/_b;

    invoke-virtual {v5, v3}, Labcd/_b;->DW(Labcd/Da;)V

    goto :goto_7d

    :cond_78
    iget-object v5, p0, Labcd/de;->Hw:Labcd/_b;

    invoke-virtual {v5, v3}, Labcd/_b;->FH(Labcd/Da;)V

    :goto_7d
    iget-object v5, p0, Labcd/de;->v5:Labcd/Mb;

    invoke-virtual {v3}, Labcd/Da;->EQ()I

    move-result v6

    invoke-virtual {v3}, Labcd/Da;->a8()J

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Labcd/Mb;->DW(IJ)V

    iget-object v3, p0, Labcd/de;->FH:Labcd/La;

    iget-object v3, v3, Labcd/La;->U2:Labcd/Va;

    invoke-virtual {v3, v4}, Labcd/Va;->j6(Labcd/Sa;)V
    :try_end_91
    .catchall {:try_start_5 .. :try_end_91} :catchall_93

    goto :goto_14

    :cond_92
    return-void

    :catchall_93
    move-exception v2

    sget-boolean v3, Labcd/de;->DW:Z

    if-eqz v3, :cond_9b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_9b
    goto :goto_9d

    :goto_9c
    throw v2

    :goto_9d
    goto :goto_9c
.end method

.method private j6(Labcd/Sa;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x5377012c250d7d0dL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/de;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x232c0b8f69d0b928L

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Labcd/de;->Zo:Labcd/sc;

    invoke-virtual {v0}, Labcd/sc;->DW()V

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-virtual {p1, v0}, Labcd/Sa;->P8(I)I

    move-result v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_3a

    const/16 v2, 0x11

    if-eq v1, v2, :cond_3a

    const/16 v2, 0x1a

    if-eq v1, v2, :cond_30

    const/16 v2, 0x32

    if-eq v1, v2, :cond_30

    goto :goto_63

    :cond_30
    iget-object v1, p0, Labcd/de;->Zo:Labcd/sc;

    invoke-virtual {p1, v0}, Labcd/Sa;->XL(I)I

    move-result v0

    invoke-virtual {v1, v0}, Labcd/sc;->j6(I)V

    goto :goto_63

    :cond_3a
    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_3c
    invoke-virtual {p1, p2}, Labcd/Sa;->we(I)I

    move-result v2

    sub-int/2addr v2, v0

    if-ge v1, v2, :cond_63

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v2

    invoke-virtual {p1, v2}, Labcd/Sa;->P8(I)I

    move-result v3

    const/16 v4, 0x12

    if-ne v3, v4, :cond_60

    iget-object v3, p0, Labcd/de;->Zo:Labcd/sc;

    invoke-virtual {p1, v2}, Labcd/Sa;->Mr(I)[C

    move-result-object v4

    invoke-virtual {p1, v2}, Labcd/Sa;->a8(I)I

    move-result v5

    invoke-virtual {p1, v2}, Labcd/Sa;->U2(I)I

    move-result v2

    invoke-virtual {v3, v4, v5, v2}, Labcd/sc;->j6([CII)V
    :try_end_60
    .catchall {:try_start_0 .. :try_end_60} :catchall_64

    :cond_60
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    :cond_63
    :goto_63
    return-void

    :catchall_64
    move-exception v0

    sget-boolean v1, Labcd/de;->DW:Z

    if-eqz v1, :cond_79

    const-wide v2, 0x232c0b8f69d0b928L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_79
    goto :goto_7b

    :goto_7a
    throw v0

    :goto_7b
    goto :goto_7a
.end method

.method private j6(Labcd/Sa;)Z
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x3ba46739ddae93acL
    .end annotation

    const-wide v0, 0x38dcce1b503c68c3L  # 8.668220760045557E-35

    :try_start_5
    sget-boolean v2, Labcd/de;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1}, Labcd/Sa;->aM()I

    move-result v2

    invoke-direct {p0, p1, v2}, Labcd/de;->DW(Labcd/Sa;I)I

    move-result v2

    if-lez v2, :cond_4b

    const/4 v3, 0x2

    invoke-virtual {p1, v2, v3}, Labcd/Sa;->Zo(II)I

    move-result v4

    invoke-virtual {p1, v4}, Labcd/Sa;->P8(I)I

    move-result v4

    const/16 v5, 0xd7

    if-ne v4, v5, :cond_4b

    invoke-virtual {p1, v2, v3}, Labcd/Sa;->Zo(II)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Labcd/Sa;->Zo(II)I

    move-result v2

    iget-object v3, p0, Labcd/de;->VH:Labcd/sc;

    invoke-virtual {v3}, Labcd/sc;->DW()V

    iget-object v3, p0, Labcd/de;->VH:Labcd/sc;

    invoke-virtual {p1, v2}, Labcd/Sa;->Mr(I)[C

    move-result-object v4

    invoke-virtual {p1, v2}, Labcd/Sa;->a8(I)I

    move-result v5

    invoke-virtual {p1, v2}, Labcd/Sa;->U2(I)I

    move-result v2

    invoke-virtual {v3, v4, v5, v2}, Labcd/sc;->j6([CII)V

    iget-object v2, p0, Labcd/de;->VH:Labcd/sc;

    const-string v3, "\"-//OASIS//DTD Entity Resolution XML Catalog V1.0//EN\""

    invoke-virtual {v2, v3}, Labcd/sc;->DW(Ljava/lang/String;)Z

    move-result p1
    :try_end_4a
    .catchall {:try_start_5 .. :try_end_4a} :catchall_4d

    return p1

    :cond_4b
    const/4 p1, 0x0

    return p1

    :catchall_4d
    move-exception v2

    sget-boolean v3, Labcd/de;->DW:Z

    if-eqz v3, :cond_55

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_55
    throw v2
.end method


# virtual methods
.method public DW(Ljava/lang/String;)Labcd/Da;
    .registers 10

    const-wide v0, 0x19d8d323d14e5597L

    :try_start_5
    sget-boolean v2, Labcd/de;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Labcd/de;->j6()V

    iget-object v2, p0, Labcd/de;->Hw:Labcd/_b;

    iget-object v2, v2, Labcd/_b;->v5:Labcd/_b$a;

    invoke-virtual {v2}, Labcd/_b$a;->DW()V

    :cond_16
    iget-object v2, p0, Labcd/de;->Hw:Labcd/_b;

    iget-object v2, v2, Labcd/_b;->v5:Labcd/_b$a;

    invoke-virtual {v2}, Labcd/_b$a;->j6()Z

    move-result v2

    if-eqz v2, :cond_9d

    iget-object v2, p0, Labcd/de;->Hw:Labcd/_b;

    iget-object v2, v2, Labcd/_b;->v5:Labcd/_b$a;

    invoke-virtual {v2}, Labcd/_b$a;->FH()Labcd/Da;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Da;->gn()Labcd/la;

    move-result-object v3

    invoke-interface {v3}, Labcd/la;->v5()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_34
    :goto_34
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/na;

    instance-of v5, v4, Labcd/ne;

    if-eqz v5, :cond_34

    iget-object v5, p0, Labcd/de;->FH:Labcd/La;

    iget-object v5, v5, Labcd/La;->U2:Labcd/Va;

    invoke-virtual {v5, v2, v4}, Labcd/Va;->DW(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v4

    invoke-virtual {v4}, Labcd/Sa;->aM()I

    move-result v5

    invoke-direct {p0, v4, v5, p1}, Labcd/de;->DW(Labcd/Sa;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_95

    const-string v6, "file:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_95

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x5

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_95

    new-instance v6, Ljava/io/File;

    invoke-virtual {v2}, Labcd/Da;->QX()Labcd/Da;

    move-result-object v7

    invoke-virtual {v7}, Labcd/Da;->XL()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_95

    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_95

    iget-object v2, p0, Labcd/de;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->Mr:Labcd/Ea;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Labcd/Ea;->DW(Ljava/lang/String;)Labcd/Da;

    move-result-object p1

    return-object p1

    :cond_95
    iget-object v5, p0, Labcd/de;->FH:Labcd/La;

    iget-object v5, v5, Labcd/La;->U2:Labcd/Va;

    invoke-virtual {v5, v4}, Labcd/Va;->j6(Labcd/Sa;)V
    :try_end_9c
    .catchall {:try_start_5 .. :try_end_9c} :catchall_9f

    goto :goto_34

    :cond_9d
    const/4 p1, 0x0

    return-object p1

    :catchall_9f
    move-exception v2

    sget-boolean v3, Labcd/de;->DW:Z

    if-eqz v3, :cond_a7

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_a7
    goto :goto_a9

    :goto_a8
    throw v2

    :goto_a9
    goto :goto_a8
.end method

.method public j6(Ljava/lang/String;)Labcd/Da;
    .registers 10

    const-wide v0, -0x1d2ac9b3c4bf7b11L  # -1.2508386092510296E168

    :try_start_5
    sget-boolean v2, Labcd/de;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Labcd/de;->j6()V

    iget-object v2, p0, Labcd/de;->Hw:Labcd/_b;

    iget-object v2, v2, Labcd/_b;->v5:Labcd/_b$a;

    invoke-virtual {v2}, Labcd/_b$a;->DW()V

    :cond_16
    iget-object v2, p0, Labcd/de;->Hw:Labcd/_b;

    iget-object v2, v2, Labcd/_b;->v5:Labcd/_b$a;

    invoke-virtual {v2}, Labcd/_b$a;->j6()Z

    move-result v2

    if-eqz v2, :cond_9d

    iget-object v2, p0, Labcd/de;->Hw:Labcd/_b;

    iget-object v2, v2, Labcd/_b;->v5:Labcd/_b$a;

    invoke-virtual {v2}, Labcd/_b$a;->FH()Labcd/Da;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Da;->gn()Labcd/la;

    move-result-object v3

    invoke-interface {v3}, Labcd/la;->v5()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_34
    :goto_34
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/na;

    instance-of v5, v4, Labcd/ne;

    if-eqz v5, :cond_34

    iget-object v5, p0, Labcd/de;->FH:Labcd/La;

    iget-object v5, v5, Labcd/La;->U2:Labcd/Va;

    invoke-virtual {v5, v2, v4}, Labcd/Va;->DW(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v4

    invoke-virtual {v4}, Labcd/Sa;->aM()I

    move-result v5

    invoke-direct {p0, v4, v5, p1}, Labcd/de;->j6(Labcd/Sa;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_95

    const-string v6, "file:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_95

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x5

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_95

    new-instance v6, Ljava/io/File;

    invoke-virtual {v2}, Labcd/Da;->QX()Labcd/Da;

    move-result-object v7

    invoke-virtual {v7}, Labcd/Da;->XL()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_95

    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_95

    iget-object v2, p0, Labcd/de;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->Mr:Labcd/Ea;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Labcd/Ea;->DW(Ljava/lang/String;)Labcd/Da;

    move-result-object p1

    return-object p1

    :cond_95
    iget-object v5, p0, Labcd/de;->FH:Labcd/La;

    iget-object v5, v5, Labcd/La;->U2:Labcd/Va;

    invoke-virtual {v5, v4}, Labcd/Va;->j6(Labcd/Sa;)V
    :try_end_9c
    .catchall {:try_start_5 .. :try_end_9c} :catchall_9f

    goto :goto_34

    :cond_9d
    const/4 p1, 0x0

    return-object p1

    :catchall_9f
    move-exception v2

    sget-boolean v3, Labcd/de;->DW:Z

    if-eqz v3, :cond_a7

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_a7
    goto :goto_a9

    :goto_a8
    throw v2

    :goto_a9
    goto :goto_a8
.end method

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
    .registers 4

    const-wide v2, -0x2aae25c3c1641e99L    # -9.996250538706612E102

    const-class v0, Labcd/de;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/La;)V
    .registers 8

    const-wide v4, -0x403c95560f48ae5bL    # -0.15169262174334822

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/de;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x403c95560f48ae5bL    # -0.15169262174334822

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/de;->FH:Labcd/La;

    new-instance v0, Labcd/_b;

    iget-object v1, p1, Labcd/La;->Mr:Labcd/Ea;

    invoke-direct {v0, v1}, Labcd/_b;-><init>(Labcd/Ea;)V

    iput-object v0, p0, Labcd/de;->Hw:Labcd/_b;

    new-instance v0, Labcd/Mb;

    invoke-direct {v0}, Labcd/Mb;-><init>()V

    iput-object v0, p0, Labcd/de;->v5:Labcd/Mb;

    new-instance v0, Labcd/sc;

    invoke-direct {v0, p1}, Labcd/sc;-><init>(Labcd/La;)V

    iput-object v0, p0, Labcd/de;->VH:Labcd/sc;

    new-instance v0, Labcd/sc;

    invoke-direct {v0, p1}, Labcd/sc;-><init>(Labcd/La;)V

    iput-object v0, p0, Labcd/de;->Zo:Labcd/sc;

    iget-object v0, p1, Labcd/La;->j3:Labcd/Ga;

    const-string v1, "public"

    invoke-virtual {v0, v1}, Labcd/Ga;->j6(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Labcd/de;->gn:I

    iget-object v0, p1, Labcd/La;->j3:Labcd/Ga;

    const-string v1, "system"

    invoke-virtual {v0, v1}, Labcd/Ga;->j6(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Labcd/de;->u7:I

    iget-object v0, p1, Labcd/La;->j3:Labcd/Ga;

    const-string v1, "uri"

    invoke-virtual {v0, v1}, Labcd/Ga;->j6(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Labcd/de;->tp:I

    iget-object v0, p1, Labcd/La;->j3:Labcd/Ga;

    const-string v1, "publicId"

    invoke-virtual {v0, v1}, Labcd/Ga;->j6(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Labcd/de;->EQ:I

    iget-object v0, p1, Labcd/La;->j3:Labcd/Ga;

    const-string v1, "systemId"

    invoke-virtual {v0, v1}, Labcd/Ga;->j6(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Labcd/de;->we:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/de;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private DW(Labcd/Sa;I)I
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x3d8c0f7c9f5e58edL
    .end annotation

    const-wide v2, 0x4384250e68ac9b3cL    # 1.81447787204011904E17

    :try_start_0
    sget-boolean v0, Labcd/de;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x4384250e68ac9b3cL    # 1.81447787204011904E17

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, p2}, Labcd/Sa;->P8(I)I

    move-result v0

    const/16 v1, 0xd5

    if-ne v0, v1, :cond_1

    :goto_0
    return p2

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p1, p2}, Labcd/Sa;->we(I)I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Labcd/de;->DW(Labcd/Sa;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_2

    move p2, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    const/4 p2, -0x1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/de;->DW:Z

    if-eqz v0, :cond_4

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method

.method private DW(Labcd/Sa;ILjava/lang/String;)Ljava/lang/String;
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x1a00d705504a7ef4L
    .end annotation

    const-wide v8, 0x68d510e65a31487L

    :try_start_0
    sget-boolean v0, Labcd/de;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x68d510e65a31487L

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, p2}, Labcd/Sa;->P8(I)I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_2

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1, p2}, Labcd/Sa;->we(I)I

    move-result v0

    if-ge v1, v0, :cond_6

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Labcd/de;->DW(Labcd/Sa;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-virtual {p1, v0}, Labcd/Sa;->XL(I)I

    move-result v0

    iget v1, p0, Labcd/de;->u7:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    :goto_2
    invoke-virtual {p1, p2}, Labcd/Sa;->we(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-virtual {p1, v1}, Labcd/Sa;->P8(I)I

    move-result v2

    const/16 v3, 0xcb

    if-ne v2, v3, :cond_4

    invoke-static {p1, v1}, Labcd/qe;->Mr(Labcd/Sa;I)I

    move-result v2

    iget v3, p0, Labcd/de;->we:I

    if-ne v2, v3, :cond_3

    invoke-virtual {p1, v1}, Labcd/Sa;->we(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v1, v3}, Labcd/Sa;->Zo(II)I

    move-result v3

    invoke-direct {p0, p1, v3}, Labcd/de;->j6(Labcd/Sa;I)V

    iget-object v3, p0, Labcd/de;->Zo:Labcd/sc;

    invoke-virtual {v3, p3}, Labcd/sc;->DW(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_3
    iget v3, p0, Labcd/de;->tp:I

    if-ne v2, v3, :cond_4

    invoke-virtual {p1, v1}, Labcd/Sa;->we(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v1, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Labcd/de;->j6(Labcd/Sa;I)V

    iget-object v0, p0, Labcd/de;->Zo:Labcd/sc;

    invoke-virtual {v0}, Labcd/sc;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/de;->DW:Z

    if-eqz v0, :cond_7

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    throw v1
.end method

.method private j6(Labcd/Sa;ILjava/lang/String;)Ljava/lang/String;
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x2ed7455e2db3100L
    .end annotation

    const-wide v8, -0xaf841c6d8cd53a5L    # -5.570356856855873E255

    :try_start_0
    sget-boolean v0, Labcd/de;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0xaf841c6d8cd53a5L    # -5.570356856855873E255

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, p2}, Labcd/Sa;->P8(I)I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_2

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1, p2}, Labcd/Sa;->we(I)I

    move-result v0

    if-ge v1, v0, :cond_6

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Labcd/de;->j6(Labcd/Sa;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-virtual {p1, v0}, Labcd/Sa;->XL(I)I

    move-result v0

    iget v1, p0, Labcd/de;->gn:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    :goto_2
    invoke-virtual {p1, p2}, Labcd/Sa;->we(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-virtual {p1, v1}, Labcd/Sa;->P8(I)I

    move-result v2

    const/16 v3, 0xcb

    if-ne v2, v3, :cond_4

    invoke-static {p1, v1}, Labcd/qe;->Mr(Labcd/Sa;I)I

    move-result v2

    iget v3, p0, Labcd/de;->EQ:I

    if-ne v2, v3, :cond_3

    invoke-virtual {p1, v1}, Labcd/Sa;->we(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v1, v3}, Labcd/Sa;->Zo(II)I

    move-result v3

    invoke-direct {p0, p1, v3}, Labcd/de;->j6(Labcd/Sa;I)V

    iget-object v3, p0, Labcd/de;->Zo:Labcd/sc;

    invoke-virtual {v3, p3}, Labcd/sc;->DW(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_3
    iget v3, p0, Labcd/de;->tp:I

    if-ne v2, v3, :cond_4

    invoke-virtual {p1, v1}, Labcd/Sa;->we(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v1, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Labcd/de;->j6(Labcd/Sa;I)V

    iget-object v0, p0, Labcd/de;->Zo:Labcd/sc;

    invoke-virtual {v0}, Labcd/sc;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/de;->DW:Z

    if-eqz v0, :cond_7

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    throw v1
.end method

.method private j6()V
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x5ba19167399510c3L
    .end annotation

    const-wide v8, -0x595813d9ca029730L

    :try_start_0
    sget-boolean v0, Labcd/de;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x595813d9ca029730L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/de;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->Mr:Labcd/Ea;

    invoke-virtual {v0}, Labcd/Ea;->Zo()Labcd/_b;

    move-result-object v1

    :cond_1
    :goto_0
    iget-object v0, v1, Labcd/_b;->v5:Labcd/_b$a;

    invoke-virtual {v0}, Labcd/_b$a;->j6()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v1, Labcd/_b;->v5:Labcd/_b$a;

    invoke-virtual {v0}, Labcd/_b$a;->FH()Labcd/Da;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Da;->gn()Labcd/la;

    move-result-object v0

    instance-of v0, v0, Labcd/me;

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/de;->v5:Labcd/Mb;

    invoke-virtual {v2}, Labcd/Da;->EQ()I

    move-result v3

    invoke-virtual {v0, v3}, Labcd/Mb;->j6(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Labcd/Da;->a8()J

    move-result-wide v4

    iget-object v0, p0, Labcd/de;->v5:Labcd/Mb;

    invoke-virtual {v2}, Labcd/Da;->EQ()I

    move-result v3

    invoke-virtual {v0, v3}, Labcd/Mb;->DW(I)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    :cond_2
    invoke-virtual {v2}, Labcd/Da;->gn()Labcd/la;

    move-result-object v0

    invoke-interface {v0}, Labcd/la;->v5()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/na;

    instance-of v4, v0, Labcd/ne;

    if-eqz v4, :cond_3

    iget-object v3, p0, Labcd/de;->FH:Labcd/La;

    iget-object v3, v3, Labcd/La;->U2:Labcd/Va;

    invoke-virtual {v3, v2, v0}, Labcd/Va;->DW(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/de;->j6(Labcd/Sa;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Labcd/de;->Hw:Labcd/_b;

    invoke-virtual {v3, v2}, Labcd/_b;->DW(Labcd/Da;)V

    :goto_1
    iget-object v3, p0, Labcd/de;->v5:Labcd/Mb;

    invoke-virtual {v2}, Labcd/Da;->EQ()I

    move-result v4

    invoke-virtual {v2}, Labcd/Da;->a8()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Labcd/Mb;->DW(IJ)V

    iget-object v2, p0, Labcd/de;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->U2:Labcd/Va;

    invoke-virtual {v2, v0}, Labcd/Va;->j6(Labcd/Sa;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/de;->DW:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v8, v9, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4
    throw v0

    :cond_5
    :try_start_1
    iget-object v3, p0, Labcd/de;->Hw:Labcd/_b;

    invoke-virtual {v3, v2}, Labcd/_b;->FH(Labcd/Da;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_6
    return-void
.end method

.method private j6(Labcd/Sa;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x5377012c250d7d0dL
    .end annotation

    const-wide v2, 0x232c0b8f69d0b928L

    :try_start_0
    sget-boolean v0, Labcd/de;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x232c0b8f69d0b928L

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/de;->Zo:Labcd/sc;

    invoke-virtual {v0}, Labcd/sc;->DW()V

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-virtual {p1, v0}, Labcd/Sa;->P8(I)I

    move-result v1

    const/16 v4, 0x10

    if-eq v1, v4, :cond_4

    const/16 v4, 0x11

    if-eq v1, v4, :cond_4

    const/16 v4, 0x1a

    if-eq v1, v4, :cond_2

    const/16 v4, 0x32

    if-eq v1, v4, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Labcd/de;->Zo:Labcd/sc;

    invoke-virtual {p1, v0}, Labcd/Sa;->XL(I)I

    move-result v0

    invoke-virtual {v1, v0}, Labcd/sc;->j6(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/de;->DW:Z

    if-eqz v0, :cond_3

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1

    :cond_4
    const/4 v0, 0x1

    :goto_1
    :try_start_1
    invoke-virtual {p1, p2}, Labcd/Sa;->we(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-virtual {p1, v1}, Labcd/Sa;->P8(I)I

    move-result v4

    const/16 v5, 0x12

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Labcd/de;->Zo:Labcd/sc;

    invoke-virtual {p1, v1}, Labcd/Sa;->Mr(I)[C

    move-result-object v5

    invoke-virtual {p1, v1}, Labcd/Sa;->a8(I)I

    move-result v6

    invoke-virtual {p1, v1}, Labcd/Sa;->U2(I)I

    move-result v1

    invoke-virtual {v4, v5, v6, v1}, Labcd/sc;->j6([CII)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private j6(Labcd/Sa;)Z
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x3ba46739ddae93acL
    .end annotation

    const-wide v4, 0x38dcce1b503c68c3L    # 8.668220760045557E-35

    :try_start_0
    sget-boolean v0, Labcd/de;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x38dcce1b503c68c3L    # 8.668220760045557E-35

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Labcd/Sa;->aM()I

    move-result v0

    invoke-direct {p0, p1, v0}, Labcd/de;->DW(Labcd/Sa;I)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-virtual {p1, v1}, Labcd/Sa;->P8(I)I

    move-result v1

    const/16 v2, 0xd7

    if-ne v1, v2, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Labcd/Sa;->Zo(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Labcd/Sa;->Zo(II)I

    move-result v0

    iget-object v1, p0, Labcd/de;->VH:Labcd/sc;

    invoke-virtual {v1}, Labcd/sc;->DW()V

    iget-object v1, p0, Labcd/de;->VH:Labcd/sc;

    invoke-virtual {p1, v0}, Labcd/Sa;->Mr(I)[C

    move-result-object v2

    invoke-virtual {p1, v0}, Labcd/Sa;->a8(I)I

    move-result v3

    invoke-virtual {p1, v0}, Labcd/Sa;->U2(I)I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Labcd/sc;->j6([CII)V

    iget-object v0, p0, Labcd/de;->VH:Labcd/sc;

    const-string v1, "\"-//OASIS//DTD Entity Resolution XML Catalog V1.0//EN\""

    invoke-virtual {v0, v1}, Labcd/sc;->DW(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/de;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method


# virtual methods
.method public DW(Ljava/lang/String;)Labcd/Da;
    .registers 10

    const-wide v6, 0x19d8d323d14e5597L

    :try_start_0
    sget-boolean v0, Labcd/de;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x19d8d323d14e5597L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Labcd/de;->j6()V

    iget-object v0, p0, Labcd/de;->Hw:Labcd/_b;

    iget-object v0, v0, Labcd/_b;->v5:Labcd/_b$a;

    invoke-virtual {v0}, Labcd/_b$a;->DW()V

    :cond_1
    iget-object v0, p0, Labcd/de;->Hw:Labcd/_b;

    iget-object v0, v0, Labcd/_b;->v5:Labcd/_b$a;

    invoke-virtual {v0}, Labcd/_b$a;->j6()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Labcd/de;->Hw:Labcd/_b;

    iget-object v0, v0, Labcd/_b;->v5:Labcd/_b$a;

    invoke-virtual {v0}, Labcd/_b$a;->FH()Labcd/Da;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Da;->gn()Labcd/la;

    move-result-object v0

    invoke-interface {v0}, Labcd/la;->v5()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/na;

    instance-of v3, v0, Labcd/ne;

    if-eqz v3, :cond_2

    iget-object v3, p0, Labcd/de;->FH:Labcd/La;

    iget-object v3, v3, Labcd/La;->U2:Labcd/Va;

    invoke-virtual {v3, v1, v0}, Labcd/Va;->DW(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Sa;->aM()I

    move-result v3

    invoke-direct {p0, v0, v3, p1}, Labcd/de;->DW(Labcd/Sa;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v4, "file:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/io/File;

    invoke-virtual {v1}, Labcd/Da;->QX()Labcd/Da;

    move-result-object v5

    invoke-virtual {v5}, Labcd/Da;->XL()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Labcd/de;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->Mr:Labcd/Ea;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/Ea;->DW(Ljava/lang/String;)Labcd/Da;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_3
    iget-object v3, p0, Labcd/de;->FH:Labcd/La;

    iget-object v3, v3, Labcd/La;->U2:Labcd/Va;

    invoke-virtual {v3, v0}, Labcd/Va;->j6(Labcd/Sa;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/de;->DW:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public j6(Ljava/lang/String;)Labcd/Da;
    .registers 10

    const-wide v6, -0x1d2ac9b3c4bf7b11L    # -1.2508386092510296E168

    :try_start_0
    sget-boolean v0, Labcd/de;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1d2ac9b3c4bf7b11L    # -1.2508386092510296E168

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Labcd/de;->j6()V

    iget-object v0, p0, Labcd/de;->Hw:Labcd/_b;

    iget-object v0, v0, Labcd/_b;->v5:Labcd/_b$a;

    invoke-virtual {v0}, Labcd/_b$a;->DW()V

    :cond_1
    iget-object v0, p0, Labcd/de;->Hw:Labcd/_b;

    iget-object v0, v0, Labcd/_b;->v5:Labcd/_b$a;

    invoke-virtual {v0}, Labcd/_b$a;->j6()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Labcd/de;->Hw:Labcd/_b;

    iget-object v0, v0, Labcd/_b;->v5:Labcd/_b$a;

    invoke-virtual {v0}, Labcd/_b$a;->FH()Labcd/Da;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Da;->gn()Labcd/la;

    move-result-object v0

    invoke-interface {v0}, Labcd/la;->v5()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/na;

    instance-of v3, v0, Labcd/ne;

    if-eqz v3, :cond_2

    iget-object v3, p0, Labcd/de;->FH:Labcd/La;

    iget-object v3, v3, Labcd/La;->U2:Labcd/Va;

    invoke-virtual {v3, v1, v0}, Labcd/Va;->DW(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Sa;->aM()I

    move-result v3

    invoke-direct {p0, v0, v3, p1}, Labcd/de;->j6(Labcd/Sa;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v4, "file:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/io/File;

    invoke-virtual {v1}, Labcd/Da;->QX()Labcd/Da;

    move-result-object v5

    invoke-virtual {v5}, Labcd/Da;->XL()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Labcd/de;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->Mr:Labcd/Ea;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/Ea;->DW(Ljava/lang/String;)Labcd/Da;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_3
    iget-object v3, p0, Labcd/de;->FH:Labcd/La;

    iget-object v3, v3, Labcd/La;->U2:Labcd/Va;

    invoke-virtual {v3, v0}, Labcd/Va;->j6(Labcd/Sa;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/de;->DW:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

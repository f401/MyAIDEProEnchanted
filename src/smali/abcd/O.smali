.class public Labcd/O;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/O$a;
    }
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
.field private final FH:Labcd/ea;
    .annotation runtime Labcd/ru;
        field = 0x2a3646d3b9c72ef0L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x5b73c6f46d670ba4L

    const-class v0, Labcd/O;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/ea;)V
    .registers 8

    const-wide v4, -0x268eb13549b1b53dL    # -7.150882312303005E122

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/O;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x268eb13549b1b53dL    # -7.150882312303005E122

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/O;->FH:Labcd/ea;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/O;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public DW(Labcd/Sa;II)Labcd/Aa;
    .registers 14

    const-wide v8, -0x917d075087fac38L

    :try_start_0
    sget-boolean v0, Labcd/O;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x917d075087fac38L

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, p2, p3}, Labcd/Sa;->u7(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1, v0}, Labcd/Sa;->Zo(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_1
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {p1, v0}, Labcd/Sa;->v5(I)Labcd/Aa;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/O;->DW:Z

    if-eqz v0, :cond_2

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public DW(Labcd/Sa;IIII)Z
    .registers 16

    :try_start_0
    sget-boolean v0, Labcd/O;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x390e6e731b3123cL

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-ne p3, p5, :cond_1

    if-eq p2, p4, :cond_2

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_2
    invoke-virtual {p1, p2, p3, p4, p5}, Labcd/Sa;->v5(IIII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1, p2, p3, p4, p5}, Labcd/Sa;->DW(IIII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    invoke-virtual {p1, v0, v1}, Labcd/Sa;->QX(II)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    :cond_3
    :try_start_1
    iget-object v1, p0, Labcd/O;->FH:Labcd/ea;

    iget-object v1, v1, Labcd/La;->a8:Labcd/Ba;

    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v2

    invoke-virtual {p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v3

    invoke-virtual {p1, v0}, Labcd/Sa;->er(I)I

    move-result v0

    invoke-virtual {p1, v0}, Labcd/Sa;->J8(I)I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Labcd/Ba;->j6(Labcd/Da;Labcd/na;I)Labcd/ua;

    move-result-object v1

    invoke-virtual {v1}, Labcd/ua;->XG()Labcd/Hb;

    move-result-object v2

    iget-object v0, v2, Labcd/Hb;->Hw:Labcd/Hb$a;

    invoke-virtual {v0}, Labcd/Hb$a;->DW()V

    :cond_4
    iget-object v0, v2, Labcd/Hb;->Hw:Labcd/Hb$a;

    invoke-virtual {v0}, Labcd/Hb$a;->j6()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v2, Labcd/Hb;->Hw:Labcd/Hb$a;

    invoke-virtual {v0}, Labcd/Hb$a;->Hw()Labcd/Aa;

    move-result-object v0

    check-cast v0, Labcd/Ia;

    invoke-virtual {v0}, Labcd/Ia;->XL()I

    move-result v3

    invoke-static {v3}, Labcd/Ma;->j6(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Labcd/Ia;->FH()Labcd/ua;

    move-result-object v0

    if-eq v0, v1, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Labcd/ua;->yO()Labcd/Hb;

    move-result-object v2

    iget-object v0, v2, Labcd/Hb;->Hw:Labcd/Hb$a;

    invoke-virtual {v0}, Labcd/Hb$a;->DW()V

    :cond_6
    iget-object v0, v2, Labcd/Hb;->Hw:Labcd/Hb$a;

    invoke-virtual {v0}, Labcd/Hb$a;->j6()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v2, Labcd/Hb;->Hw:Labcd/Hb$a;

    invoke-virtual {v0}, Labcd/Hb$a;->Hw()Labcd/Aa;

    move-result-object v0

    check-cast v0, Labcd/Ia;

    invoke-virtual {v0}, Labcd/Ia;->XL()I

    move-result v3

    invoke-static {v3}, Labcd/Ma;->j6(I)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Labcd/Ia;->FH()Labcd/ua;

    move-result-object v3

    if-eq v3, v1, :cond_6

    invoke-virtual {v0}, Labcd/Ia;->ko()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v0}, Labcd/Ia;->et()Z
    :try_end_1
    .catch Labcd/jc; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_6

    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_1

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/O;->DW:Z

    if-eqz v0, :cond_8

    const-wide v2, 0x390e6e731b3123cL

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    throw v1

    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method public FH(Labcd/Sa;II)Labcd/Za;
    .registers 16

    const-wide v10, 0xc4ccd36c7611d3fL

    const/4 v7, 0x0

    :try_start_0
    sget-boolean v0, Labcd/O;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0xc4ccd36c7611d3fL

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, p2, p3}, Labcd/Sa;->u7(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1, v0}, Labcd/Sa;->XL(I)I

    move-result v6

    invoke-virtual {p1, v0}, Labcd/Sa;->Zo(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/16 v2, 0x20

    if-eq v1, v2, :cond_2

    :cond_1
    move-object v0, v7

    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {p1, v0}, Labcd/Sa;->VH(I)I

    move-result v5

    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v1

    invoke-virtual {p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v2

    invoke-virtual {p1, v5}, Labcd/Sa;->vy(I)I

    move-result v3

    invoke-virtual {p1, v5}, Labcd/Sa;->BT(I)I

    move-result v4

    invoke-virtual {p1, v5}, Labcd/Sa;->Ws(I)I

    move-result v5

    invoke-virtual {p1, v0}, Labcd/Sa;->ro(I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p1, v0}, Labcd/Sa;->u7(I)Labcd/Ya;

    move-result-object v7

    :cond_3
    new-instance v0, Labcd/Za;

    invoke-direct/range {v0 .. v7}, Labcd/Za;-><init>(Labcd/Da;Labcd/na;IIIILabcd/Ya;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/O;->DW:Z

    if-eqz v0, :cond_4

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v10

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method

.method public FH(Labcd/Sa;IIII)Z
    .registers 16

    :try_start_0
    sget-boolean v0, Labcd/O;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x10ce0d6cbea0e8c8L    # -4.251695364503682E227

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-ne p3, p5, :cond_1

    if-eq p2, p4, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    invoke-virtual {p1, p2, p3, p4, p5}, Labcd/Sa;->tp(IIII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1, v0}, Labcd/Sa;->ef(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/O;->DW:Z

    if-eqz v0, :cond_3

    const-wide v2, -0x10ce0d6cbea0e8c8L    # -4.251695364503682E227

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method public Hw(Labcd/Sa;II)Z
    .registers 14

    const-wide v8, 0x5b0466233629a3ddL    # 2.8279809590087254E130

    const/4 v6, 0x1

    :try_start_0
    sget-boolean v0, Labcd/O;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x5b0466233629a3ddL    # 2.8279809590087254E130

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, p2, p3}, Labcd/Sa;->u7(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1, v0}, Labcd/Sa;->Zo(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eq v0, v6, :cond_2

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    move v0, v6

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/O;->DW:Z

    if-eqz v0, :cond_3

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method public Hw(Labcd/Sa;IIII)Z
    .registers 16

    :try_start_0
    sget-boolean v0, Labcd/O;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x8d6cf33fd0158a0L

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    if-ne p3, p5, :cond_2

    if-ne p2, p4, :cond_2

    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p1, p2, p3, p4, p5}, Labcd/Sa;->u7(IIII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p1, v1}, Labcd/Sa;->er(I)I

    move-result v1

    invoke-virtual {p1, v1}, Labcd/Sa;->I(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/O;->DW:Z

    if-eqz v0, :cond_3

    const-wide v2, -0x8d6cf33fd0158a0L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method public VH(Labcd/Sa;IIII)Labcd/O$a;
    .registers 16

    :try_start_0
    sget-boolean v0, Labcd/O;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x400e6111bfa56e60L    # 3.797397134052332

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-ne p3, p5, :cond_1

    if-ne p2, p4, :cond_1

    new-instance v0, Labcd/O$a;

    invoke-direct {v0, p0}, Labcd/O$a;-><init>(Labcd/O;)V

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1, p2, p3, p4, p5}, Labcd/Sa;->tp(IIII)I

    move-result v1

    invoke-virtual {p1, p2, p3, p4, p5}, Labcd/Sa;->DW(IIII)I

    move-result v0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    if-eq v1, v0, :cond_3

    new-instance v0, Labcd/O$a;

    invoke-direct {v0, p0}, Labcd/O$a;-><init>(Labcd/O;)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Labcd/O$a;->VH:Z

    invoke-virtual {p1, v1}, Labcd/Sa;->vy(I)I

    move-result v2

    iput v2, v0, Labcd/O$a;->FH:I

    invoke-virtual {p1, v1}, Labcd/Sa;->BT(I)I

    move-result v2

    iput v2, v0, Labcd/O$a;->Hw:I

    invoke-virtual {p1, v1}, Labcd/Sa;->QX(I)I

    move-result v2

    iput v2, v0, Labcd/O$a;->v5:I

    invoke-virtual {p1, v1}, Labcd/Sa;->Ws(I)I

    move-result v1

    iput v1, v0, Labcd/O$a;->Zo:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/O;->DW:Z

    if-eqz v0, :cond_2

    const-wide v2, 0x400e6111bfa56e60L    # 3.797397134052332

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1

    :cond_3
    :try_start_1
    invoke-virtual {p1, p2, p3, p4, p5}, Labcd/Sa;->Hw(IIII)Labcd/Cb;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v0, Labcd/O$a;

    invoke-direct {v0, p0}, Labcd/O$a;-><init>(Labcd/O;)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Labcd/O$a;->VH:Z

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Labcd/Cb;->DW(I)I

    move-result v2

    invoke-virtual {p1, v2}, Labcd/Sa;->vy(I)I

    move-result v2

    iput v2, v0, Labcd/O$a;->FH:I

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Labcd/Cb;->DW(I)I

    move-result v2

    invoke-virtual {p1, v2}, Labcd/Sa;->BT(I)I

    move-result v2

    iput v2, v0, Labcd/O$a;->Hw:I

    invoke-virtual {v1}, Labcd/Cb;->Hw()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Labcd/Cb;->DW(I)I

    move-result v2

    invoke-virtual {p1, v2}, Labcd/Sa;->QX(I)I

    move-result v2

    iput v2, v0, Labcd/O$a;->v5:I

    invoke-virtual {v1}, Labcd/Cb;->Hw()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Labcd/Cb;->DW(I)I

    move-result v1

    invoke-virtual {p1, v1}, Labcd/Sa;->Ws(I)I

    move-result v1

    iput v1, v0, Labcd/O$a;->Zo:I

    goto/16 :goto_0

    :cond_4
    new-instance v0, Labcd/O$a;

    invoke-direct {v0, p0}, Labcd/O$a;-><init>(Labcd/O;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public VH(Labcd/Sa;II)Z
    .registers 14

    const-wide v8, 0xb97c0bf4a9dfda1L    # 8.09954525707738E-253

    const/4 v6, 0x1

    :try_start_0
    sget-boolean v0, Labcd/O;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0xb97c0bf4a9dfda1L    # 8.09954525707738E-253

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, p2, p3}, Labcd/Sa;->u7(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1, v0}, Labcd/Sa;->XL(I)I

    invoke-virtual {p1, v0}, Labcd/Sa;->Zo(I)I

    move-result v1

    if-eq v1, v6, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    invoke-virtual {p1, v0}, Labcd/Sa;->VH(I)I

    move-result v0

    invoke-virtual {p1, v0}, Labcd/Sa;->Zo(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ne v0, v6, :cond_1

    move v0, v6

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/O;->DW:Z

    if-eqz v0, :cond_3

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method public Zo(Labcd/Sa;II)Z
    .registers 14

    const-wide v8, 0x34f5486d782a6471L    # 1.3887753538525908E-53

    const/4 v6, 0x1

    :try_start_0
    sget-boolean v0, Labcd/O;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x34f5486d782a6471L    # 1.3887753538525908E-53

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, p2, p3}, Labcd/Sa;->u7(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1, v0}, Labcd/Sa;->XL(I)I

    invoke-virtual {p1, v0}, Labcd/Sa;->Zo(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eq v0, v6, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    move v0, v6

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/O;->DW:Z

    if-eqz v0, :cond_3

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method public Zo(Labcd/Sa;IIII)Z
    .registers 16

    :try_start_0
    sget-boolean v0, Labcd/O;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0xb007df98f80a54cL

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, p2, p3, p4, p5}, Labcd/Sa;->v5(IIII)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/O;->DW:Z

    if-eqz v0, :cond_2

    const-wide v2, 0xb007df98f80a54cL

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public j6(Labcd/Sa;II)Labcd/Aa;
    .registers 14

    const-wide v8, 0x53fe8b8f6de19ea5L    # 4.077753751022803E96

    const/4 v6, -0x1

    :try_start_0
    sget-boolean v0, Labcd/O;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x53fe8b8f6de19ea5L    # 4.077753751022803E96

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, p2, p3}, Labcd/Sa;->u7(II)I

    move-result v0

    if-ne v0, v6, :cond_2

    invoke-virtual {p1, p2, p3}, Labcd/Sa;->Ws(II)I

    move-result v0

    if-eq v0, v6, :cond_1

    invoke-virtual {p1, v0}, Labcd/Sa;->er(I)I

    move-result v1

    invoke-virtual {p1, v1}, Labcd/Sa;->ro(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Labcd/Sa;->er(I)I

    move-result v0

    invoke-virtual {p1, v0}, Labcd/Sa;->u7(I)Labcd/Ya;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Aa;->rN()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Labcd/O;->DW(Labcd/Sa;II)Labcd/Aa;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/O;->DW:Z

    if-eqz v0, :cond_3

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method public j6(Labcd/Sa;IIII)Z
    .registers 16

    :try_start_0
    sget-boolean v0, Labcd/O;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x1d0311efdff6a03dL    # 6.316327609815021E-169

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, p2, p3, p4, p5}, Labcd/Sa;->Zo(IIII)Labcd/Cb;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Labcd/Cb;->Hw()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_3

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Labcd/Cb;->DW(I)I

    move-result v3

    invoke-virtual {p1, v3}, Labcd/Sa;->we(I)I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {v2, v1}, Labcd/Cb;->DW(I)I

    move-result v3

    invoke-virtual {p1, v3, v0}, Labcd/Sa;->Zo(II)I

    move-result v3

    invoke-virtual {p1, v3}, Labcd/Sa;->ca(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_1

    :try_start_1
    iget-object v4, p0, Labcd/O;->FH:Labcd/ea;

    iget-object v4, v4, Labcd/La;->a8:Labcd/Ba;

    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v5

    invoke-virtual {p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v6

    invoke-virtual {p1, v3}, Labcd/Sa;->J8(I)I

    move-result v3

    invoke-virtual {v4, v5, v6, v3}, Labcd/Ba;->DW(Labcd/Da;Labcd/na;I)Labcd/Ia;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Ia;->ko()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Labcd/Ia;->et()Z
    :try_end_1
    .catch Labcd/jc; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x1

    :goto_2
    return v0

    :catch_0
    move-exception v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :catch_1
    move-exception v1

    sget-boolean v0, Labcd/O;->DW:Z

    if-eqz v0, :cond_4

    const-wide v2, 0x1d0311efdff6a03dL    # 6.316327609815021E-169

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method

.method public v5(Labcd/Sa;II)Z
    .registers 14

    const-wide v8, -0x1a86b937eb73a2a0L    # -6.555324424010336E180

    :try_start_0
    sget-boolean v0, Labcd/O;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x1a86b937eb73a2a0L    # -6.555324424010336E180

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, p2, p3}, Labcd/Sa;->u7(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1, v0}, Labcd/Sa;->Zo(I)I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_3

    const/16 v2, 0xb

    if-eq v1, v2, :cond_3

    const/16 v2, 0xd

    if-eq v1, v2, :cond_3

    const/16 v2, 0xf

    if-eq v1, v2, :cond_3

    const/16 v2, 0x13

    if-eq v1, v2, :cond_3

    const/16 v2, 0x15

    if-eq v1, v2, :cond_3

    const/16 v2, 0x10

    if-eq v1, v2, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    invoke-virtual {p1, v0}, Labcd/Sa;->v5(I)Labcd/Aa;

    move-result-object v0

    check-cast v0, Labcd/Ia;

    iget-object v1, p0, Labcd/O;->FH:Labcd/ea;

    iget-object v1, v1, Labcd/La;->Mr:Labcd/Ea;

    invoke-virtual {v0}, Labcd/Ia;->Zo()Labcd/Da;

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/Ea;->we(Labcd/Da;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/O;->DW:Z

    if-eqz v0, :cond_4

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method

.method public v5(Labcd/Sa;IIII)Z
    .registers 16

    :try_start_0
    sget-boolean v0, Labcd/O;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x1111ccb13aef26fL    # -2.6477000221769605E303

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, p2, p3}, Labcd/Sa;->tp(II)I

    move-result v0

    invoke-virtual {p1, p4, p5}, Labcd/Sa;->u7(II)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/O;->DW:Z

    if-eqz v0, :cond_2

    const-wide v2, -0x1111ccb13aef26fL    # -2.6477000221769605E303

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

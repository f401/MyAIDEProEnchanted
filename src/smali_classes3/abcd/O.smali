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
    .registers 3

    const-class v0, Labcd/O;

    const-wide v1, -0x5b73c6f46d670ba4L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/ea;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, -0x268eb13549b1b53dL  # -7.150882312303005E122

    :try_start_6
    sget-boolean v3, Labcd/O;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/O;->FH:Labcd/ea;
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Labcd/O;->DW:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method


# virtual methods
.method public DW(Labcd/Sa;II)Labcd/Aa;
    .registers 12

    :try_start_0
    sget-boolean v0, Labcd/O;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x917d075087fac38L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    invoke-virtual {p1, p2, p3}, Labcd/Sa;->u7(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2c

    invoke-virtual {p1, v0}, Labcd/Sa;->Zo(I)I

    move-result v1

    packed-switch v1, :pswitch_data_4a

    :pswitch_26  #0x12
    goto :goto_2c

    :pswitch_27  #0x6, 0x7, 0x8, 0x9, 0xa, 0xb, 0xc, 0xd, 0xe, 0xf, 0x10, 0x11, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19
    invoke-virtual {p1, v0}, Labcd/Sa;->v5(I)Labcd/Aa;

    move-result-object p1
    :try_end_2b
    .catchall {:try_start_0 .. :try_end_2b} :catchall_2e

    return-object p1

    :cond_2c
    :goto_2c
    const/4 p1, 0x0

    return-object p1

    :catchall_2e
    move-exception v0

    sget-boolean v1, Labcd/O;->DW:Z

    if-eqz v1, :cond_48

    const-wide v2, -0x917d075087fac38L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_48
    throw v0

    nop

    :pswitch_data_4a
    .packed-switch 0x6
        :pswitch_27  #00000006
        :pswitch_27  #00000007
        :pswitch_27  #00000008
        :pswitch_27  #00000009
        :pswitch_27  #0000000a
        :pswitch_27  #0000000b
        :pswitch_27  #0000000c
        :pswitch_27  #0000000d
        :pswitch_27  #0000000e
        :pswitch_27  #0000000f
        :pswitch_27  #00000010
        :pswitch_27  #00000011
        :pswitch_26  #00000012
        :pswitch_27  #00000013
        :pswitch_27  #00000014
        :pswitch_27  #00000015
        :pswitch_27  #00000016
        :pswitch_27  #00000017
        :pswitch_27  #00000018
        :pswitch_27  #00000019
    .end packed-switch
.end method

.method public DW(Labcd/Sa;IIII)Z
    .registers 16

    :try_start_0
    sget-boolean v0, Labcd/O;->j6:Z

    if-eqz v0, :cond_22

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x390e6e731b3123cL

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    if-ne p3, p5, :cond_b5

    if-eq p2, p4, :cond_28

    goto/16 :goto_b5

    :cond_28
    invoke-virtual {p1, p2, p3, p4, p5}, Labcd/Sa;->v5(IIII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b5

    invoke-virtual {p1, p2, p3, p4, p5}, Labcd/Sa;->DW(IIII)I

    move-result v2

    if-eq v2, v1, :cond_3b

    invoke-virtual {p1, v0, v2}, Labcd/Sa;->QX(II)Z

    move-result v1
    :try_end_39
    .catchall {:try_start_0 .. :try_end_39} :catchall_b7

    if-nez v1, :cond_b5

    :cond_3b
    :try_start_3b
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

    move-result-object v0

    invoke-virtual {v0}, Labcd/ua;->XG()Labcd/Hb;

    move-result-object v1

    iget-object v2, v1, Labcd/Hb;->Hw:Labcd/Hb$a;

    invoke-virtual {v2}, Labcd/Hb$a;->DW()V

    :cond_5c
    iget-object v2, v1, Labcd/Hb;->Hw:Labcd/Hb$a;

    invoke-virtual {v2}, Labcd/Hb$a;->j6()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_7e

    iget-object v2, v1, Labcd/Hb;->Hw:Labcd/Hb$a;

    invoke-virtual {v2}, Labcd/Hb$a;->Hw()Labcd/Aa;

    move-result-object v2

    check-cast v2, Labcd/Ia;

    invoke-virtual {v2}, Labcd/Ia;->XL()I

    move-result v4

    invoke-static {v4}, Labcd/Ma;->j6(I)Z

    move-result v4

    if-eqz v4, :cond_5c

    invoke-virtual {v2}, Labcd/Ia;->FH()Labcd/ua;

    move-result-object v2

    if-eq v2, v0, :cond_5c

    return v3

    :cond_7e
    invoke-virtual {v0}, Labcd/ua;->yO()Labcd/Hb;

    move-result-object v1

    iget-object v2, v1, Labcd/Hb;->Hw:Labcd/Hb$a;

    invoke-virtual {v2}, Labcd/Hb$a;->DW()V

    :cond_87
    iget-object v2, v1, Labcd/Hb;->Hw:Labcd/Hb$a;

    invoke-virtual {v2}, Labcd/Hb$a;->j6()Z

    move-result v2

    if-eqz v2, :cond_b5

    iget-object v2, v1, Labcd/Hb;->Hw:Labcd/Hb$a;

    invoke-virtual {v2}, Labcd/Hb$a;->Hw()Labcd/Aa;

    move-result-object v2

    check-cast v2, Labcd/Ia;

    invoke-virtual {v2}, Labcd/Ia;->XL()I

    move-result v4

    invoke-static {v4}, Labcd/Ma;->j6(I)Z

    move-result v4

    if-eqz v4, :cond_87

    invoke-virtual {v2}, Labcd/Ia;->FH()Labcd/ua;

    move-result-object v4

    if-eq v4, v0, :cond_87

    invoke-virtual {v2}, Labcd/Ia;->ko()Z

    move-result v4

    if-nez v4, :cond_b3

    invoke-virtual {v2}, Labcd/Ia;->et()Z

    move-result v2
    :try_end_b1
    .catch Labcd/jc; {:try_start_3b .. :try_end_b1} :catch_b4
    .catchall {:try_start_3b .. :try_end_b1} :catchall_b7

    if-eqz v2, :cond_87

    :cond_b3
    return v3

    :catch_b4
    move-exception p1

    :cond_b5
    :goto_b5
    const/4 p1, 0x0

    return p1

    :catchall_b7
    move-exception v0

    sget-boolean v1, Labcd/O;->DW:Z

    if-eqz v1, :cond_db

    const-wide v2, 0x390e6e731b3123cL

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

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_db
    goto :goto_dd

    :goto_dc
    throw v0

    :goto_dd
    goto :goto_dc
.end method

.method public FH(Labcd/Sa;II)Labcd/Za;
    .registers 15

    :try_start_0
    sget-boolean v0, Labcd/O;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0xc4ccd36c7611d3fL

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    invoke-virtual {p1, p2, p3}, Labcd/Sa;->u7(II)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_60

    invoke-virtual {p1, v0}, Labcd/Sa;->XL(I)I

    move-result v9

    invoke-virtual {p1, v0}, Labcd/Sa;->Zo(I)I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_36

    const/4 v3, 0x2

    if-eq v1, v3, :cond_36

    const/4 v3, 0x3

    if-eq v1, v3, :cond_36

    const/16 v3, 0x20

    if-eq v1, v3, :cond_36

    goto :goto_60

    :cond_36
    invoke-virtual {p1, v0}, Labcd/Sa;->VH(I)I

    move-result v1

    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v4

    invoke-virtual {p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v5

    invoke-virtual {p1, v1}, Labcd/Sa;->vy(I)I

    move-result v6

    invoke-virtual {p1, v1}, Labcd/Sa;->BT(I)I

    move-result v7

    invoke-virtual {p1, v1}, Labcd/Sa;->Ws(I)I

    move-result v8

    invoke-virtual {p1, v0}, Labcd/Sa;->ro(I)Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-virtual {p1, v0}, Labcd/Sa;->u7(I)Labcd/Ya;

    move-result-object v2

    :cond_58
    move-object v10, v2

    new-instance v0, Labcd/Za;

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Labcd/Za;-><init>(Labcd/Da;Labcd/na;IIIILabcd/Ya;)V
    :try_end_5f
    .catchall {:try_start_0 .. :try_end_5f} :catchall_61

    return-object v0

    :cond_60
    :goto_60
    return-object v2

    :catchall_61
    move-exception v0

    sget-boolean v1, Labcd/O;->DW:Z

    if-eqz v1, :cond_7b

    const-wide v2, 0xc4ccd36c7611d3fL

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7b
    throw v0
.end method

.method public FH(Labcd/Sa;IIII)Z
    .registers 16

    :try_start_0
    sget-boolean v0, Labcd/O;->j6:Z

    if-eqz v0, :cond_22

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x10ce0d6cbea0e8c8L  # -4.251695364503682E227

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    if-ne p3, p5, :cond_36

    if-eq p2, p4, :cond_27

    goto :goto_36

    :cond_27
    invoke-virtual {p1, p2, p3, p4, p5}, Labcd/Sa;->tp(IIII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_36

    invoke-virtual {p1, v0}, Labcd/Sa;->ef(I)Z

    move-result p1
    :try_end_32
    .catchall {:try_start_0 .. :try_end_32} :catchall_38

    if-eqz p1, :cond_36

    const/4 p1, 0x1

    return p1

    :cond_36
    :goto_36
    const/4 p1, 0x0

    return p1

    :catchall_38
    move-exception v0

    sget-boolean v1, Labcd/O;->DW:Z

    if-eqz v1, :cond_5c

    const-wide v2, -0x10ce0d6cbea0e8c8L  # -4.251695364503682E227

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

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5c
    throw v0
.end method

.method public Hw(Labcd/Sa;II)Z
    .registers 12

    :try_start_0
    sget-boolean v0, Labcd/O;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x5b0466233629a3ddL  # 2.8279809590087254E130

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    invoke-virtual {p1, p2, p3}, Labcd/Sa;->u7(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2c

    invoke-virtual {p1, v0}, Labcd/Sa;->Zo(I)I

    move-result p1
    :try_end_23
    .catchall {:try_start_0 .. :try_end_23} :catchall_2e

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2b

    const/16 p3, 0x20

    if-eq p1, p3, :cond_2b

    goto :goto_2c

    :cond_2b
    return p2

    :cond_2c
    :goto_2c
    const/4 p1, 0x0

    return p1

    :catchall_2e
    move-exception v0

    sget-boolean v1, Labcd/O;->DW:Z

    if-eqz v1, :cond_48

    const-wide v2, 0x5b0466233629a3ddL  # 2.8279809590087254E130

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_48
    throw v0
.end method

.method public Hw(Labcd/Sa;IIII)Z
    .registers 16

    :try_start_0
    sget-boolean v0, Labcd/O;->j6:Z

    if-eqz v0, :cond_22

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x8d6cf33fd0158a0L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    const/4 v0, 0x0

    if-ne p3, p5, :cond_28

    if-ne p2, p4, :cond_28

    return v0

    :cond_28
    invoke-virtual {p1, p2, p3, p4, p5}, Labcd/Sa;->u7(IIII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3a

    invoke-virtual {p1, v1}, Labcd/Sa;->er(I)I

    move-result v1

    invoke-virtual {p1, v1}, Labcd/Sa;->I(I)Z

    move-result p1
    :try_end_37
    .catchall {:try_start_0 .. :try_end_37} :catchall_3b

    if-nez p1, :cond_3a

    const/4 v0, 0x1

    :cond_3a
    return v0

    :catchall_3b
    move-exception v0

    sget-boolean v1, Labcd/O;->DW:Z

    if-eqz v1, :cond_5f

    const-wide v2, -0x8d6cf33fd0158a0L

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

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5f
    throw v0
.end method

.method public VH(Labcd/Sa;IIII)Labcd/O$a;
    .registers 16

    :try_start_0
    sget-boolean v0, Labcd/O;->j6:Z

    if-eqz v0, :cond_22

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x400e6111bfa56e60L  # 3.797397134052332

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    if-ne p3, p5, :cond_2c

    if-ne p2, p4, :cond_2c

    new-instance v0, Labcd/O$a;

    invoke-direct {v0, p0}, Labcd/O$a;-><init>(Labcd/O;)V

    return-object v0

    :cond_2c
    invoke-virtual {p1, p2, p3, p4, p5}, Labcd/Sa;->tp(IIII)I

    move-result v0

    invoke-virtual {p1, p2, p3, p4, p5}, Labcd/Sa;->DW(IIII)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v2, :cond_5a

    if-eq v0, v1, :cond_5a

    new-instance v1, Labcd/O$a;

    invoke-direct {v1, p0}, Labcd/O$a;-><init>(Labcd/O;)V

    iput-boolean v3, v1, Labcd/O$a;->VH:Z

    invoke-virtual {p1, v0}, Labcd/Sa;->vy(I)I

    move-result v2

    iput v2, v1, Labcd/O$a;->FH:I

    invoke-virtual {p1, v0}, Labcd/Sa;->BT(I)I

    move-result v2

    iput v2, v1, Labcd/O$a;->Hw:I

    invoke-virtual {p1, v0}, Labcd/Sa;->QX(I)I

    move-result v2

    iput v2, v1, Labcd/O$a;->v5:I

    invoke-virtual {p1, v0}, Labcd/Sa;->Ws(I)I

    move-result v0

    iput v0, v1, Labcd/O$a;->Zo:I

    return-object v1

    :cond_5a
    invoke-virtual {p1, p2, p3, p4, p5}, Labcd/Sa;->Hw(IIII)Labcd/Cb;

    move-result-object v0

    if-eqz v0, :cond_9b

    new-instance v1, Labcd/O$a;

    invoke-direct {v1, p0}, Labcd/O$a;-><init>(Labcd/O;)V

    iput-boolean v3, v1, Labcd/O$a;->VH:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Labcd/Cb;->DW(I)I

    move-result v4

    invoke-virtual {p1, v4}, Labcd/Sa;->vy(I)I

    move-result v4

    iput v4, v1, Labcd/O$a;->FH:I

    invoke-virtual {v0, v2}, Labcd/Cb;->DW(I)I

    move-result v2

    invoke-virtual {p1, v2}, Labcd/Sa;->BT(I)I

    move-result v2

    iput v2, v1, Labcd/O$a;->Hw:I

    invoke-virtual {v0}, Labcd/Cb;->Hw()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Labcd/Cb;->DW(I)I

    move-result v2

    invoke-virtual {p1, v2}, Labcd/Sa;->QX(I)I

    move-result v2

    iput v2, v1, Labcd/O$a;->v5:I

    invoke-virtual {v0}, Labcd/Cb;->Hw()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Labcd/Cb;->DW(I)I

    move-result v0

    invoke-virtual {p1, v0}, Labcd/Sa;->Ws(I)I

    move-result v0

    iput v0, v1, Labcd/O$a;->Zo:I

    return-object v1

    :cond_9b
    new-instance v0, Labcd/O$a;

    invoke-direct {v0, p0}, Labcd/O$a;-><init>(Labcd/O;)V
    :try_end_a0
    .catchall {:try_start_0 .. :try_end_a0} :catchall_a1

    return-object v0

    :catchall_a1
    move-exception v0

    sget-boolean v1, Labcd/O;->DW:Z

    if-eqz v1, :cond_c5

    const-wide v2, 0x400e6111bfa56e60L  # 3.797397134052332

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

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c5
    throw v0
.end method

.method public VH(Labcd/Sa;II)Z
    .registers 12

    :try_start_0
    sget-boolean v0, Labcd/O;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0xb97c0bf4a9dfda1L  # 8.09954525707738E-253

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    invoke-virtual {p1, p2, p3}, Labcd/Sa;->u7(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3b

    invoke-virtual {p1, v0}, Labcd/Sa;->XL(I)I

    invoke-virtual {p1, v0}, Labcd/Sa;->Zo(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_30

    const/4 v3, 0x2

    if-eq v1, v3, :cond_30

    const/4 v3, 0x3

    if-eq v1, v3, :cond_30

    goto :goto_3b

    :cond_30
    invoke-virtual {p1, v0}, Labcd/Sa;->VH(I)I

    move-result v0

    invoke-virtual {p1, v0}, Labcd/Sa;->Zo(I)I

    move-result p1
    :try_end_38
    .catchall {:try_start_0 .. :try_end_38} :catchall_3d

    if-ne p1, v2, :cond_3b

    return v2

    :cond_3b
    :goto_3b
    const/4 p1, 0x0

    return p1

    :catchall_3d
    move-exception v0

    sget-boolean v1, Labcd/O;->DW:Z

    if-eqz v1, :cond_57

    const-wide v2, 0xb97c0bf4a9dfda1L  # 8.09954525707738E-253

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_57
    throw v0
.end method

.method public Zo(Labcd/Sa;II)Z
    .registers 12

    :try_start_0
    sget-boolean v0, Labcd/O;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x34f5486d782a6471L  # 1.3887753538525908E-53

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    invoke-virtual {p1, p2, p3}, Labcd/Sa;->u7(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_35

    invoke-virtual {p1, v0}, Labcd/Sa;->XL(I)I

    invoke-virtual {p1, v0}, Labcd/Sa;->Zo(I)I

    move-result p1
    :try_end_26
    .catchall {:try_start_0 .. :try_end_26} :catchall_37

    const/4 p2, 0x1

    if-eq p1, p2, :cond_34

    const/4 p3, 0x2

    if-eq p1, p3, :cond_34

    const/4 p3, 0x3

    if-eq p1, p3, :cond_34

    const/16 p3, 0x20

    if-eq p1, p3, :cond_34

    goto :goto_35

    :cond_34
    return p2

    :cond_35
    :goto_35
    const/4 p1, 0x0

    return p1

    :catchall_37
    move-exception v0

    sget-boolean v1, Labcd/O;->DW:Z

    if-eqz v1, :cond_51

    const-wide v2, 0x34f5486d782a6471L  # 1.3887753538525908E-53

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_51
    throw v0
.end method

.method public Zo(Labcd/Sa;IIII)Z
    .registers 16

    :try_start_0
    sget-boolean v0, Labcd/O;->j6:Z

    if-eqz v0, :cond_22

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0xb007df98f80a54cL

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    invoke-virtual {p1, p2, p3, p4, p5}, Labcd/Sa;->v5(IIII)I

    move-result p1
    :try_end_26
    .catchall {:try_start_0 .. :try_end_26} :catchall_2d

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2b

    const/4 p1, 0x1

    return p1

    :cond_2b
    const/4 p1, 0x0

    return p1

    :catchall_2d
    move-exception v0

    sget-boolean v1, Labcd/O;->DW:Z

    if-eqz v1, :cond_51

    const-wide v2, 0xb007df98f80a54cL

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

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_51
    throw v0
.end method

.method public j6(Labcd/Sa;II)Labcd/Aa;
    .registers 12

    :try_start_0
    sget-boolean v0, Labcd/O;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x53fe8b8f6de19ea5L  # 4.077753751022803E96

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    invoke-virtual {p1, p2, p3}, Labcd/Sa;->u7(II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_40

    invoke-virtual {p1, p2, p3}, Labcd/Sa;->Ws(II)I

    move-result v0

    if-eq v0, v1, :cond_3e

    invoke-virtual {p1, v0}, Labcd/Sa;->er(I)I

    move-result v1

    invoke-virtual {p1, v1}, Labcd/Sa;->ro(I)Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-virtual {p1, v0}, Labcd/Sa;->er(I)I

    move-result v0

    invoke-virtual {p1, v0}, Labcd/Sa;->u7(I)Labcd/Ya;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Aa;->rN()Z

    move-result p1

    if-eqz p1, :cond_3e

    return-object v0

    :cond_3e
    const/4 p1, 0x0

    return-object p1

    :cond_40
    invoke-virtual {p0, p1, p2, p3}, Labcd/O;->DW(Labcd/Sa;II)Labcd/Aa;

    move-result-object p1
    :try_end_44
    .catchall {:try_start_0 .. :try_end_44} :catchall_45

    return-object p1

    :catchall_45
    move-exception v0

    sget-boolean v1, Labcd/O;->DW:Z

    if-eqz v1, :cond_5f

    const-wide v2, 0x53fe8b8f6de19ea5L  # 4.077753751022803E96

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5f
    throw v0
.end method

.method public j6(Labcd/Sa;IIII)Z
    .registers 16

    :try_start_0
    sget-boolean v0, Labcd/O;->j6:Z

    if-eqz v0, :cond_22

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x1d0311efdff6a03dL  # 6.316327609815021E-169

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    invoke-virtual {p1, p2, p3, p4, p5}, Labcd/Sa;->Zo(IIII)Labcd/Cb;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_72

    invoke-virtual {v0}, Labcd/Cb;->Hw()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_2f
    if-ltz v2, :cond_72

    const/4 v4, 0x0

    :goto_32
    invoke-virtual {v0, v2}, Labcd/Cb;->DW(I)I

    move-result v5

    invoke-virtual {p1, v5}, Labcd/Sa;->we(I)I

    move-result v5

    if-ge v4, v5, :cond_6f

    invoke-virtual {v0, v2}, Labcd/Cb;->DW(I)I

    move-result v5

    invoke-virtual {p1, v5, v4}, Labcd/Sa;->Zo(II)I

    move-result v5

    invoke-virtual {p1, v5}, Labcd/Sa;->ca(I)Z

    move-result v6
    :try_end_48
    .catchall {:try_start_0 .. :try_end_48} :catchall_73

    if-eqz v6, :cond_6c

    :try_start_4a
    iget-object v6, p0, Labcd/O;->FH:Labcd/ea;

    iget-object v6, v6, Labcd/La;->a8:Labcd/Ba;

    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v7

    invoke-virtual {p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v8

    invoke-virtual {p1, v5}, Labcd/Sa;->J8(I)I

    move-result v5

    invoke-virtual {v6, v7, v8, v5}, Labcd/Ba;->DW(Labcd/Da;Labcd/na;I)Labcd/Ia;

    move-result-object v5

    invoke-virtual {v5}, Labcd/Ia;->ko()Z

    move-result v6

    if-nez v6, :cond_6c

    invoke-virtual {v5}, Labcd/Ia;->et()Z

    move-result v5
    :try_end_68
    .catch Labcd/jc; {:try_start_4a .. :try_end_68} :catch_6b
    .catchall {:try_start_4a .. :try_end_68} :catchall_73

    if-nez v5, :cond_6c

    return v3

    :catch_6b
    move-exception v5

    :cond_6c
    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    :cond_6f
    add-int/lit8 v2, v2, -0x1

    goto :goto_2f

    :cond_72
    return v1

    :catchall_73
    move-exception v0

    sget-boolean v1, Labcd/O;->DW:Z

    if-eqz v1, :cond_97

    const-wide v2, 0x1d0311efdff6a03dL  # 6.316327609815021E-169

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

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_97
    goto :goto_99

    :goto_98
    throw v0

    :goto_99
    goto :goto_98
.end method

.method public v5(Labcd/Sa;II)Z
    .registers 12

    :try_start_0
    sget-boolean v0, Labcd/O;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x1a86b937eb73a2a0L  # -6.555324424010336E180

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    invoke-virtual {p1, p2, p3}, Labcd/Sa;->u7(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_55

    invoke-virtual {p1, v0}, Labcd/Sa;->Zo(I)I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_53

    const/16 v2, 0xb

    if-eq v1, v2, :cond_53

    const/16 v2, 0xd

    if-eq v1, v2, :cond_53

    const/16 v2, 0xf

    if-eq v1, v2, :cond_53

    const/16 v2, 0x13

    if-eq v1, v2, :cond_53

    const/16 v2, 0x15

    if-eq v1, v2, :cond_53

    const/16 v2, 0x10

    if-eq v1, v2, :cond_3f

    goto :goto_55

    :cond_3f
    invoke-virtual {p1, v0}, Labcd/Sa;->v5(I)Labcd/Aa;

    move-result-object v0

    check-cast v0, Labcd/Ia;

    iget-object v1, p0, Labcd/O;->FH:Labcd/ea;

    iget-object v1, v1, Labcd/La;->Mr:Labcd/Ea;

    invoke-virtual {v0}, Labcd/Ia;->Zo()Labcd/Da;

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/Ea;->we(Labcd/Da;)Z

    move-result p1
    :try_end_51
    .catchall {:try_start_0 .. :try_end_51} :catchall_57

    if-eqz p1, :cond_55

    :cond_53
    const/4 p1, 0x1

    return p1

    :cond_55
    :goto_55
    const/4 p1, 0x0

    return p1

    :catchall_57
    move-exception v0

    sget-boolean v1, Labcd/O;->DW:Z

    if-eqz v1, :cond_71

    const-wide v2, -0x1a86b937eb73a2a0L  # -6.555324424010336E180

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_71
    throw v0
.end method

.method public v5(Labcd/Sa;IIII)Z
    .registers 16

    :try_start_0
    sget-boolean v0, Labcd/O;->j6:Z

    if-eqz v0, :cond_22

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x1111ccb13aef26fL  # -2.6477000221769605E303

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    invoke-virtual {p1, p2, p3}, Labcd/Sa;->tp(II)I

    move-result v0

    invoke-virtual {p1, p4, p5}, Labcd/Sa;->u7(II)I

    move-result p1
    :try_end_2a
    .catchall {:try_start_0 .. :try_end_2a} :catchall_35

    const/4 p2, -0x1

    if-eq v0, p2, :cond_33

    const/4 p2, 0x1

    if-eq p1, p2, :cond_33

    if-ne v0, p1, :cond_33

    return p2

    :cond_33
    const/4 p1, 0x0

    return p1

    :catchall_35
    move-exception v0

    sget-boolean v1, Labcd/O;->DW:Z

    if-eqz v1, :cond_59

    const-wide v2, -0x1111ccb13aef26fL  # -2.6477000221769605E303

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

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_59
    throw v0
.end method

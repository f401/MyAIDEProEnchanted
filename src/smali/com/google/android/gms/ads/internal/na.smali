.class public final Lcom/google/android/gms/ads/internal/na;
.super Lcom/google/android/gms/ads/internal/aa;

# interfaces
.implements Lcom/google/android/gms/internal/ads/ja;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private QX:Lcom/google/android/gms/internal/ads/kk;

.field private Ws:Z

.field private XL:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/ta;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/zzbbi;)V
    .registers 14

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/aa;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/ads/internal/ta;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/na;->XL:Z

    return-void
.end method

.method private final DW(Lcom/google/android/gms/internal/ads/kk;Lcom/google/android/gms/internal/ads/kk;)Z
    .registers 26

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v2, 0x0

    const/16 v16, 0x0

    const/4 v14, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/ads/internal/na;->Zo(Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    invoke-virtual {v3}, Lcom/google/android/gms/ads/internal/Y;->Hw()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v2, "Native ad does not have custom rendering mode."

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/a;->J0(I)V

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    :try_start_0
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/kk;->XL:Lcom/google/android/gms/internal/ads/Je;

    if-eqz v3, :cond_1

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/kk;->XL:Lcom/google/android/gms/internal/ads/Je;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Je;->fP()Lcom/google/android/gms/internal/ads/Ye;

    move-result-object v3

    move-object/from16 v22, v3

    :goto_1
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/kk;->XL:Lcom/google/android/gms/internal/ads/Je;

    if-eqz v3, :cond_2

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/kk;->XL:Lcom/google/android/gms/internal/ads/Je;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Je;->WB()Lcom/google/android/gms/internal/ads/Se;

    move-result-object v3

    move-object/from16 v21, v3

    :goto_2
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/kk;->XL:Lcom/google/android/gms/internal/ads/Je;

    if-eqz v3, :cond_3

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/kk;->XL:Lcom/google/android/gms/internal/ads/Je;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Je;->ko()Lcom/google/android/gms/internal/ads/Ve;

    move-result-object v3

    move-object/from16 v20, v3

    :goto_3
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/kk;->XL:Lcom/google/android/gms/internal/ads/Je;

    if-eqz v3, :cond_4

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/kk;->XL:Lcom/google/android/gms/internal/ads/Je;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Je;->pl()Lcom/google/android/gms/internal/ads/ab;

    move-result-object v3

    :goto_4
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/aa;->FH(Lcom/google/android/gms/internal/ads/kk;)Ljava/lang/String;

    move-result-object v18

    if-eqz v22, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/Y;->Mr:Lcom/google/android/gms/internal/ads/ub;

    if-eqz v4, :cond_6

    new-instance v3, Lcom/google/android/gms/internal/ads/da;

    invoke-interface/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/Ye;->a8()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/Ye;->Hw()Ljava/util/List;

    move-result-object v5

    invoke-interface/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/Ye;->ro()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/Ye;->CU()Lcom/google/android/gms/internal/ads/Ga;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/Ye;->CU()Lcom/google/android/gms/internal/ads/Ga;

    move-result-object v7

    :goto_5
    invoke-interface/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/Ye;->gn()Ljava/lang/String;

    move-result-object v8

    invoke-interface/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/Ye;->jJ()Ljava/lang/String;

    move-result-object v9

    invoke-interface/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/Ye;->yO()D

    move-result-wide v10

    invoke-interface/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/Ye;->wc()Ljava/lang/String;

    move-result-object v12

    invoke-interface/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/Ye;->kQ()Ljava/lang/String;

    move-result-object v13

    invoke-interface/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/Ye;->getVideoController()Lcom/google/android/gms/internal/ads/kI;

    move-result-object v15

    invoke-interface/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/Ye;->aq()Labcd/ox;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-interface/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/Ye;->aq()Labcd/ox;

    move-result-object v2

    invoke-static {v2}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object/from16 v16, v2

    :goto_6
    const/4 v14, 0x0

    invoke-interface/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/Ye;->BT()Labcd/ox;

    move-result-object v17

    invoke-interface/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/Ye;->getExtras()Landroid/os/Bundle;

    move-result-object v19

    invoke-direct/range {v3 .. v19}, Lcom/google/android/gms/internal/ads/da;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ga;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/P;Lcom/google/android/gms/internal/ads/kI;Landroid/view/View;Labcd/ox;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/ha;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v5, v2, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v7, v2, Lcom/google/android/gms/ads/internal/Y;->Hw:Lcom/google/android/gms/internal/ads/ix;

    move-object/from16 v6, p0

    move-object/from16 v8, v22

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/ha;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ja;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/Ye;Lcom/google/android/gms/internal/ads/ka;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/da;->j6(Lcom/google/android/gms/internal/ads/ia;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gms/ads/internal/na;->j6(Lcom/google/android/gms/internal/ads/da;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_7
    invoke-super/range {p0 .. p2}, Lcom/google/android/gms/ads/internal/aa;->j6(Lcom/google/android/gms/internal/ads/kk;Lcom/google/android/gms/internal/ads/kk;)Z

    move-result v2

    goto/16 :goto_0

    :cond_1
    const/4 v3, 0x0

    move-object/from16 v22, v3

    goto/16 :goto_1

    :cond_2
    const/4 v3, 0x0

    move-object/from16 v21, v3

    goto/16 :goto_2

    :cond_3
    const/4 v3, 0x0

    move-object/from16 v20, v3

    goto/16 :goto_3

    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_4

    :cond_5
    const/4 v7, 0x0

    goto :goto_5

    :cond_6
    if-eqz v21, :cond_8

    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/Y;->Mr:Lcom/google/android/gms/internal/ads/ub;

    if-eqz v4, :cond_8

    new-instance v3, Lcom/google/android/gms/internal/ads/da;

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/Se;->a8()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/Se;->Hw()Ljava/util/List;

    move-result-object v5

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/Se;->ro()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/Se;->CU()Lcom/google/android/gms/internal/ads/Ga;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/Se;->CU()Lcom/google/android/gms/internal/ads/Ga;

    move-result-object v7

    :goto_8
    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/Se;->gn()Ljava/lang/String;

    move-result-object v8

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/Se;->yO()D

    move-result-wide v10

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/Se;->wc()Ljava/lang/String;

    move-result-object v12

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/Se;->kQ()Ljava/lang/String;

    move-result-object v13

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/Se;->getVideoController()Lcom/google/android/gms/internal/ads/kI;

    move-result-object v15

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/Se;->aq()Labcd/ox;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/Se;->aq()Labcd/ox;

    move-result-object v2

    invoke-static {v2}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object/from16 v16, v2

    :goto_9
    const/4 v9, 0x0

    const/4 v14, 0x0

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/Se;->BT()Labcd/ox;

    move-result-object v17

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/Se;->getExtras()Landroid/os/Bundle;

    move-result-object v19

    invoke-direct/range {v3 .. v19}, Lcom/google/android/gms/internal/ads/da;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ga;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/P;Lcom/google/android/gms/internal/ads/kI;Landroid/view/View;Labcd/ox;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/ha;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v5, v2, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v7, v2, Lcom/google/android/gms/ads/internal/Y;->Hw:Lcom/google/android/gms/internal/ads/ix;

    move-object/from16 v6, p0

    move-object/from16 v8, v21

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/ha;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ja;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/Se;Lcom/google/android/gms/internal/ads/ka;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/da;->j6(Lcom/google/android/gms/internal/ads/ia;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gms/ads/internal/na;->j6(Lcom/google/android/gms/internal/ads/da;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7

    :catch_0
    move-exception v2

    const-string v3, "#007 Could not call remote method."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/a;->J0(I)V

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_7
    const/4 v7, 0x0

    goto :goto_8

    :cond_8
    if-eqz v21, :cond_a

    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/Y;->aM:Lcom/google/android/gms/internal/ads/fb;

    if-eqz v4, :cond_a

    new-instance v3, Lcom/google/android/gms/internal/ads/W;

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/Se;->a8()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/Se;->Hw()Ljava/util/List;

    move-result-object v5

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/Se;->ro()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/Se;->CU()Lcom/google/android/gms/internal/ads/Ga;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/Se;->CU()Lcom/google/android/gms/internal/ads/Ga;

    move-result-object v7

    :goto_a
    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/Se;->gn()Ljava/lang/String;

    move-result-object v8

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/Se;->yO()D

    move-result-wide v9

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/Se;->wc()Ljava/lang/String;

    move-result-object v11

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/Se;->kQ()Ljava/lang/String;

    move-result-object v12

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/Se;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/Se;->getVideoController()Lcom/google/android/gms/internal/ads/kI;

    move-result-object v15

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/Se;->aq()Labcd/ox;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/Se;->aq()Labcd/ox;

    move-result-object v2

    invoke-static {v2}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object/from16 v16, v2

    :goto_b
    const/4 v13, 0x0

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/Se;->BT()Labcd/ox;

    move-result-object v17

    invoke-direct/range {v3 .. v18}, Lcom/google/android/gms/internal/ads/W;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ga;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/P;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/kI;Landroid/view/View;Labcd/ox;Ljava/lang/String;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/ha;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v5, v2, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v7, v2, Lcom/google/android/gms/ads/internal/Y;->Hw:Lcom/google/android/gms/internal/ads/ix;

    move-object/from16 v6, p0

    move-object/from16 v8, v21

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/ha;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ja;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/Se;Lcom/google/android/gms/internal/ads/ka;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/W;->j6(Lcom/google/android/gms/internal/ads/ia;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/gms/ads/internal/qa;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v3}, Lcom/google/android/gms/ads/internal/qa;-><init>(Lcom/google/android/gms/ads/internal/na;Lcom/google/android/gms/internal/ads/W;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_7

    :cond_9
    const/4 v7, 0x0

    goto :goto_a

    :cond_a
    if-eqz v20, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/Y;->Mr:Lcom/google/android/gms/internal/ads/ub;

    if-eqz v4, :cond_c

    new-instance v3, Lcom/google/android/gms/internal/ads/da;

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/Ve;->a8()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/Ve;->Hw()Ljava/util/List;

    move-result-object v5

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/Ve;->ro()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/Ve;->gG()Lcom/google/android/gms/internal/ads/Ga;

    move-result-object v7

    if-eqz v7, :cond_b

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/Ve;->gG()Lcom/google/android/gms/internal/ads/Ga;

    move-result-object v7

    :goto_c
    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/Ve;->gn()Ljava/lang/String;

    move-result-object v8

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/Ve;->jJ()Ljava/lang/String;

    move-result-object v9

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/Ve;->getVideoController()Lcom/google/android/gms/internal/ads/kI;

    move-result-object v15

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/Ve;->aq()Labcd/ox;

    move-result-object v10

    if-eqz v10, :cond_11

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/Ve;->aq()Labcd/ox;

    move-result-object v2

    invoke-static {v2}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object/from16 v16, v2

    :goto_d
    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/Ve;->BT()Labcd/ox;

    move-result-object v17

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/Ve;->getExtras()Landroid/os/Bundle;

    move-result-object v19

    invoke-direct/range {v3 .. v19}, Lcom/google/android/gms/internal/ads/da;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ga;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/P;Lcom/google/android/gms/internal/ads/kI;Landroid/view/View;Labcd/ox;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/ha;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v5, v2, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v7, v2, Lcom/google/android/gms/ads/internal/Y;->Hw:Lcom/google/android/gms/internal/ads/ix;

    move-object/from16 v6, p0

    move-object/from16 v8, v20

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/ha;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ja;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/Ve;Lcom/google/android/gms/internal/ads/ka;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/da;->j6(Lcom/google/android/gms/internal/ads/ia;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gms/ads/internal/na;->j6(Lcom/google/android/gms/internal/ads/da;)V

    goto/16 :goto_7

    :cond_b
    const/4 v7, 0x0

    goto :goto_c

    :cond_c
    if-eqz v20, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/Y;->j3:Lcom/google/android/gms/internal/ads/ib;

    if-eqz v2, :cond_f

    new-instance v6, Lcom/google/android/gms/internal/ads/Y;

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/Ve;->a8()Ljava/lang/String;

    move-result-object v7

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/Ve;->Hw()Ljava/util/List;

    move-result-object v8

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/Ve;->ro()Ljava/lang/String;

    move-result-object v9

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/Ve;->gG()Lcom/google/android/gms/internal/ads/Ga;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/Ve;->gG()Lcom/google/android/gms/internal/ads/Ga;

    move-result-object v10

    :goto_e
    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/Ve;->gn()Ljava/lang/String;

    move-result-object v11

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/Ve;->jJ()Ljava/lang/String;

    move-result-object v12

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/Ve;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/Ve;->getVideoController()Lcom/google/android/gms/internal/ads/kI;

    move-result-object v15

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/Ve;->aq()Labcd/ox;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/Ve;->aq()Labcd/ox;

    move-result-object v2

    invoke-static {v2}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object/from16 v16, v2

    :cond_d
    const/4 v13, 0x0

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/Ve;->BT()Labcd/ox;

    move-result-object v17

    invoke-direct/range {v6 .. v18}, Lcom/google/android/gms/internal/ads/Y;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ga;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/P;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/kI;Landroid/view/View;Labcd/ox;Ljava/lang/String;)V

    new-instance v7, Lcom/google/android/gms/internal/ads/ha;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v8, v2, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v10, v2, Lcom/google/android/gms/ads/internal/Y;->Hw:Lcom/google/android/gms/internal/ads/ix;

    move-object/from16 v9, p0

    move-object/from16 v11, v20

    move-object v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/internal/ads/ha;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ja;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/Ve;Lcom/google/android/gms/internal/ads/ka;)V

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/Y;->j6(Lcom/google/android/gms/internal/ads/ia;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/ads/internal/ra;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v6}, Lcom/google/android/gms/ads/internal/ra;-><init>(Lcom/google/android/gms/ads/internal/na;Lcom/google/android/gms/internal/ads/Y;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_7

    :cond_e
    const/4 v10, 0x0

    goto :goto_e

    :cond_f
    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/Y;->lg:Labcd/x;

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/Y;->lg:Labcd/x;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/ab;->vJ()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Labcd/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_10

    sget-object v2, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/gms/ads/internal/sa;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v3}, Lcom/google/android/gms/ads/internal/sa;-><init>(Lcom/google/android/gms/ads/internal/na;Lcom/google/android/gms/internal/ads/ab;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_7

    :cond_10
    const-string v2, "No matching mapper/listener for retrieved native ad template."

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/a;->J0(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_11
    move-object/from16 v16, v2

    goto/16 :goto_d

    :cond_12
    move-object/from16 v16, v13

    goto/16 :goto_b

    :cond_13
    move-object/from16 v16, v9

    goto/16 :goto_9

    :cond_14
    move-object/from16 v16, v14

    goto/16 :goto_6
.end method

.method private final FH(Lcom/google/android/gms/internal/ads/kk;Lcom/google/android/gms/internal/ads/kk;)Z
    .registers 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/s;->j6(Lcom/google/android/gms/internal/ads/kk;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    instance-of v0, v1, Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->destroy()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->removeView(Landroid/view/View;)V

    :cond_2
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/s;->DW(Lcom/google/android/gms/internal/ads/kk;)Z

    move-result v0

    if-nez v0, :cond_3

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/google/android/gms/ads/internal/a;->FH(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getChildCount()I

    move-result v0

    if-le v0, v3, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->showNext()V

    :cond_4
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    invoke-virtual {v1, v0}, Landroid/widget/ViewSwitcher;->removeView(Landroid/view/View;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/Y;->FH()V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->Ej()Lcom/google/android/gms/internal/ads/zzwf;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzwf;->Zo:I

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->Ej()Lcom/google/android/gms/internal/ads/zzwf;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzwf;->FH:I

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->requestLayout()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    invoke-virtual {v0, v2}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    move v0, v3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v1

    const-string v3, "AdLoaderManager.swapBannerViews"

    invoke-virtual {v1, v0, v3}, Lcom/google/android/gms/internal/ads/pk;->j6(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v1, "Could not add mediation view to view hierarchy."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v2

    goto/16 :goto_0
.end method

.method private static j6(Lcom/google/android/gms/internal/ads/lk;I)Lcom/google/android/gms/internal/ads/kk;
    .registers 49

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/lk;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzasi;->FH:Lcom/google/android/gms/internal/ads/zzwb;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/lk;->DW:Lcom/google/android/gms/internal/ads/zzasm;

    iget-object v5, v6, Lcom/google/android/gms/internal/ads/zzasm;->v5:Ljava/util/List;

    iget-object v7, v6, Lcom/google/android/gms/internal/ads/zzasm;->VH:Ljava/util/List;

    iget-object v8, v6, Lcom/google/android/gms/internal/ads/zzasm;->EQ:Ljava/util/List;

    iget v9, v6, Lcom/google/android/gms/internal/ads/zzasm;->J0:I

    iget-wide v10, v6, Lcom/google/android/gms/internal/ads/zzasm;->we:J

    iget-object v12, v2, Lcom/google/android/gms/internal/ads/zzasi;->u7:Ljava/lang/String;

    iget-boolean v13, v6, Lcom/google/android/gms/internal/ads/zzasm;->u7:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/lk;->FH:Lcom/google/android/gms/internal/ads/qe;

    move-object/from16 v17, v0

    iget-wide v0, v6, Lcom/google/android/gms/internal/ads/zzasm;->tp:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/lk;->Hw:Lcom/google/android/gms/internal/ads/zzwf;

    move-object/from16 v21, v0

    iget-wide v0, v6, Lcom/google/android/gms/internal/ads/zzasm;->gn:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/lk;->Zo:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/lk;->VH:J

    move-wide/from16 v26, v0

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzasm;->QX:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/lk;->gn:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzasm;->P8:Lcom/google/android/gms/internal/ads/zzawd;

    move-object/from16 v31, v0

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzasm;->ei:Ljava/util/List;

    move-object/from16 v32, v0

    new-instance v2, Lcom/google/android/gms/internal/ads/kk;

    const/4 v4, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v30, 0x0

    iget-boolean v0, v6, Lcom/google/android/gms/internal/ads/zzasm;->SI:Z

    move/from16 v34, v0

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzasm;->KD:Lcom/google/android/gms/internal/ads/zzaso;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzasm;->sh:Ljava/util/List;

    move-object/from16 v37, v0

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzasm;->ef:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/lk;->u7:Lcom/google/android/gms/internal/ads/YF;

    move-object/from16 v39, v0

    iget-boolean v0, v6, Lcom/google/android/gms/internal/ads/zzasm;->Mz:Z

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/lk;->tp:Z

    move/from16 v41, v0

    iget-boolean v0, v6, Lcom/google/android/gms/internal/ads/zzasm;->ca:Z

    move/from16 v42, v0

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzasm;->x9:Ljava/util/List;

    move-object/from16 v43, v0

    iget-boolean v0, v6, Lcom/google/android/gms/internal/ads/zzasm;->Qq:Z

    move/from16 v44, v0

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzasm;->sy:Ljava/lang/String;

    move-object/from16 v45, v0

    iget-boolean v0, v6, Lcom/google/android/gms/internal/ads/zzasm;->lp:Z

    move/from16 v46, v0

    move/from16 v6, p1

    move-object/from16 v33, v32

    invoke-direct/range {v2 .. v46}, Lcom/google/android/gms/internal/ads/kk;-><init>(Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/Mo;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/ads/pe;Lcom/google/android/gms/internal/ads/Je;Ljava/lang/String;Lcom/google/android/gms/internal/ads/qe;Lcom/google/android/gms/internal/ads/se;JLcom/google/android/gms/internal/ads/zzwf;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/ka;Lcom/google/android/gms/internal/ads/zzawd;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/ads/zzaso;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/YF;ZZZLjava/util/List;ZLjava/lang/String;Z)V

    return-object v2
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/da;)V
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/pa;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/pa;-><init>(Lcom/google/android/gms/ads/internal/na;Lcom/google/android/gms/internal/ads/da;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final zg()Lcom/google/android/gms/internal/ads/qe;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/kk;->Ws:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->j3:Lcom/google/android/gms/internal/ads/qe;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final BN()V
    .registers 3

    const-string v0, "#005 Unexpected call to an abstract (unimplemented) method."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected final BT(Labcd/ox;)V
    .registers 4

    if-eqz p1, :cond_1

    invoke-static {p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/ia;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/ads/ia;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ia;->DY()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    const/4 v1, 0x0

    invoke-super {p0, v0, v1}, Lcom/google/android/gms/ads/internal/aa;->DW(Lcom/google/android/gms/internal/ads/kk;Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final DW(Lcom/google/android/gms/internal/ads/ga;)V
    .registers 4

    const-string v0, "#005 Unexpected call to an abstract (unimplemented) method."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final DW(Lcom/google/android/gms/internal/ads/ia;)V
    .registers 4

    const-string v0, "#005 Unexpected call to an abstract (unimplemented) method."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final F3()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-eqz v0, :cond_0

    const-string v1, "com.google.ads.mediation.admob.AdMobAdapter"

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->aM:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->QX:Lcom/google/android/gms/internal/ads/pe;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pe;->DW()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->Vq()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/ads/internal/aa;->F3()V

    goto :goto_0
.end method

.method public final HO()V
    .registers 3

    const-string v0, "#005 Unexpected call to an abstract (unimplemented) method."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final VH(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "setAllowedAdTypes must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/Y;->vy:Ljava/util/List;

    return-void
.end method

.method public final Ws(Z)V
    .registers 3

    const-string v0, "setManualImpressionsEnabled must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/na;->Ws:Z

    return-void
.end method

.method public final Zo(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "setNativeTemplates must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/Y;->ro:Ljava/util/List;

    return-void
.end method

.method public final cX()Z
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/na;->zg()Lcom/google/android/gms/internal/ads/qe;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/na;->zg()Lcom/google/android/gms/internal/ads/qe;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/qe;->XL:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final cb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/lb;
    .registers 3

    const-string v0, "getOnCustomClickListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->a8:Labcd/x;

    invoke-virtual {v0, p1}, Labcd/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/lb;

    return-object v0
.end method

.method public final er()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/na;->XL:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/aa;->er()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native Ad does not support resume()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final g0()V
    .registers 3

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/a;->g0()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->QX:Lcom/google/android/gms/internal/ads/pe;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pe;->j6()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/Y;->BT:Lcom/google/android/gms/internal/ads/rb;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-static {v0}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Lcom/google/android/gms/internal/ads/rb;->j6(Lcom/google/android/gms/internal/ads/IH;Labcd/ox;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    const/4 v1, 0x0

    invoke-super {p0, v0, v1}, Lcom/google/android/gms/ads/internal/aa;->DW(Lcom/google/android/gms/internal/ads/kk;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final getVideoController()Lcom/google/android/gms/internal/ads/kI;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final ir()Z
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/na;->zg()Lcom/google/android/gms/internal/ads/qe;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/na;->zg()Lcom/google/android/gms/internal/ads/qe;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/qe;->aM:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j6(Landroid/view/View;)V
    .registers 4

    const-string v0, "#005 Unexpected call to an abstract (unimplemented) method."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/J;)V
    .registers 4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CustomRendering is not supported by AdLoaderManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/D;)V
    .registers 12

    const/4 v4, 0x0

    const/4 v2, 0x0

    iput-object v4, p0, Lcom/google/android/gms/ads/internal/na;->QX:Lcom/google/android/gms/internal/ads/kk;

    iget v0, p1, Lcom/google/android/gms/internal/ads/lk;->v5:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    invoke-static {p1, v0}, Lcom/google/android/gms/ads/internal/na;->j6(Lcom/google/android/gms/internal/ads/lk;I)Lcom/google/android/gms/internal/ads/kk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/na;->QX:Lcom/google/android/gms/internal/ads/kk;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/na;->QX:Lcom/google/android/gms/internal/ads/kk;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/oa;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/oa;-><init>(Lcom/google/android/gms/ads/internal/na;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/lk;->DW:Lcom/google/android/gms/internal/ads/zzasm;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->u7:Z

    if-nez v0, :cond_0

    const-string v0, "partialAdState is not mediation"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    invoke-static {p1, v2}, Lcom/google/android/gms/ads/internal/na;->j6(Lcom/google/android/gms/internal/ads/lk;I)Lcom/google/android/gms/internal/ads/kk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/na;->QX:Lcom/google/android/gms/internal/ads/kk;

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/lk;->Hw:Lcom/google/android/gms/internal/ads/zzwf;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/Y;->u7:Lcom/google/android/gms/internal/ads/zzwf;

    :cond_3
    iget-object v8, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iput v2, v8, Lcom/google/android/gms/ads/internal/Y;->cb:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->Hw()Lcom/google/android/gms/internal/ads/zg;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v3, v1, Lcom/google/android/gms/ads/internal/Y;->Hw:Lcom/google/android/gms/internal/ads/ix;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/aa;->J0:Lcom/google/android/gms/internal/ads/Ge;

    move-object v1, p0

    move-object v2, p1

    move-object v6, p0

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zg;->j6(Landroid/content/Context;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/Mo;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/Ag;Lcom/google/android/gms/internal/ads/D;)Lcom/google/android/gms/internal/ads/hl;

    move-result-object v0

    iput-object v0, v8, Lcom/google/android/gms/ads/internal/Y;->gn:Lcom/google/android/gms/internal/ads/hl;

    goto :goto_1
.end method

.method protected final j6(Lcom/google/android/gms/internal/ads/kk;Lcom/google/android/gms/internal/ads/kk;)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/Y;->Hw()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-boolean v2, p2, Lcom/google/android/gms/internal/ads/kk;->Ws:Z

    if-nez v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/a;->J0(I)V

    const-string v1, "newState is not mediation."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/kk;->QX:Lcom/google/android/gms/internal/ads/pe;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/pe;->j6()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/Y;->Hw()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/Z;->j6()Lcom/google/android/gms/internal/ads/zzazc;

    move-result-object v2

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/kk;->P8:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzazc;->FH(Ljava/lang/String;)V

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/aa;->j6(Lcom/google/android/gms/internal/ads/kk;Lcom/google/android/gms/internal/ads/kk;)Z

    move-result v2

    if-nez v2, :cond_4

    :goto_1
    move v2, v0

    :goto_2
    if-eqz v2, :cond_0

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/na;->XL:Z

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    new-array v3, v1, [Ljava/lang/Integer;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v2}, Lcom/google/android/gms/ads/internal/na;->VH(Ljava/util/List;)V

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/Y;->Hw()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/ads/internal/na;->FH(Lcom/google/android/gms/internal/ads/kk;Lcom/google/android/gms/internal/ads/kk;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/a;->J0(I)V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/Y;->v5()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-super {p0, p2, v0}, Lcom/google/android/gms/ads/internal/aa;->j6(Lcom/google/android/gms/internal/ads/kk;Z)V

    :cond_6
    move v2, v1

    goto :goto_2

    :cond_7
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/kk;->QX:Lcom/google/android/gms/internal/ads/pe;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/pe;->DW()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/ads/internal/na;->DW(Lcom/google/android/gms/internal/ads/kk;Lcom/google/android/gms/internal/ads/kk;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_8
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/a;->J0(I)V

    const-string v1, "Response is neither banner nor native."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AdLoader API does not support custom rendering."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzwb;)Z
    .registers 27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/Y;->vy:Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/Y;->vy:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_1

    const-string v2, "Requesting only banner Ad from AdLoader or calling loadAd on returned banner is not yet supported"

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jm;->j6(Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/a;->J0(I)V

    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/Y;->BT:Lcom/google/android/gms/internal/ads/rb;

    if-eqz v2, :cond_5

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzwb;->gn:Z

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/gms/ads/internal/na;->Ws:Z

    if-ne v2, v11, :cond_2

    :goto_2
    invoke-super/range {p0 .. p1}, Lcom/google/android/gms/ads/internal/a;->j6(Lcom/google/android/gms/internal/ads/zzwb;)Z

    move-result v2

    goto :goto_1

    :cond_2
    move-object/from16 v0, p1

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzwb;->j6:I

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzwb;->DW:J

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzwb;->FH:Landroid/os/Bundle;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzwb;->Hw:I

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzwb;->v5:Ljava/util/List;

    move-object/from16 v0, p1

    iget-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzwb;->Zo:Z

    move-object/from16 v0, p1

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzwb;->VH:I

    if-nez v2, :cond_3

    if-eqz v11, :cond_4

    :cond_3
    const/4 v11, 0x1

    :goto_3
    new-instance v2, Lcom/google/android/gms/internal/ads/zzwb;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzwb;->u7:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzwb;->tp:Lcom/google/android/gms/internal/ads/zzzs;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzwb;->EQ:Landroid/location/Location;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzwb;->we:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzwb;->J0:Landroid/os/Bundle;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzwb;->J8:Landroid/os/Bundle;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzwb;->Ws:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzwb;->QX:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzwb;->XL:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzwb;->aM:Z

    move/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzwb;->Mr:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzwb;->U2:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-direct/range {v2 .. v24}, Lcom/google/android/gms/internal/ads/zzwb;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/ads/zzzs;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/ads/zzvv;ILjava/lang/String;)V

    move-object/from16 p1, v2

    goto :goto_2

    :cond_4
    const/4 v11, 0x0

    goto :goto_3

    :cond_5
    invoke-super/range {p0 .. p1}, Lcom/google/android/gms/ads/internal/a;->j6(Lcom/google/android/gms/internal/ads/zzwb;)Z

    move-result v2

    goto/16 :goto_1
.end method

.method protected final j6(Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/kk;Z)Z
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public final ji()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-eqz v0, :cond_0

    const-string v1, "com.google.ads.mediation.admob.AdMobAdapter"

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->aM:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->QX:Lcom/google/android/gms/internal/ads/pe;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pe;->DW()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->ya()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/ads/internal/aa;->ji()V

    goto :goto_0
.end method

.method public final jn()Z
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/na;->zg()Lcom/google/android/gms/internal/ads/qe;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/na;->zg()Lcom/google/android/gms/internal/ads/qe;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/qe;->QX:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final pause()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/na;->XL:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/aa;->pause()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native Ad does not support pause()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final qI()V
    .registers 3

    const-string v0, "#005 Unexpected call to an abstract (unimplemented) method."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method final synthetic s0()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/na;->QX:Lcom/google/android/gms/internal/ads/kk;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/aa;->j6(Lcom/google/android/gms/internal/ads/kk;)V

    return-void
.end method

.method public final showInterstitial()V
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Interstitial is not supported by AdLoaderManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

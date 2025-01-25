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

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/na;->XL:Z

    return-void
.end method

.method private final DW(Lcom/google/android/gms/internal/ads/kk;Lcom/google/android/gms/internal/ads/kk;)Z
    .registers 30

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Lcom/google/android/gms/ads/internal/na;->Zo(Ljava/util/List;)V

    iget-object v2, v7, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/Y;->Hw()Z

    move-result v2

    const/4 v8, 0x0

    if-nez v2, :cond_1a

    const-string v0, "Native ad does not have custom rendering mode."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    :goto_16
    invoke-virtual {v7, v8}, Lcom/google/android/gms/ads/internal/a;->J0(I)V

    return v8

    :cond_1a
    :try_start_1a
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/kk;->XL:Lcom/google/android/gms/internal/ads/Je;

    if-eqz v2, :cond_26

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/kk;->XL:Lcom/google/android/gms/internal/ads/Je;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Je;->fP()Lcom/google/android/gms/internal/ads/Ye;

    move-result-object v2

    move-object v5, v2

    goto :goto_27

    :cond_26
    move-object v5, v1

    :goto_27
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/kk;->XL:Lcom/google/android/gms/internal/ads/Je;

    if-eqz v2, :cond_33

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/kk;->XL:Lcom/google/android/gms/internal/ads/Je;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Je;->WB()Lcom/google/android/gms/internal/ads/Se;

    move-result-object v2

    move-object v6, v2

    goto :goto_34

    :cond_33
    move-object v6, v1

    :goto_34
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/kk;->XL:Lcom/google/android/gms/internal/ads/Je;

    if-eqz v2, :cond_40

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/kk;->XL:Lcom/google/android/gms/internal/ads/Je;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Je;->ko()Lcom/google/android/gms/internal/ads/Ve;

    move-result-object v2

    move-object v9, v2

    goto :goto_41

    :cond_40
    move-object v9, v1

    :goto_41
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/kk;->XL:Lcom/google/android/gms/internal/ads/Je;

    if-eqz v2, :cond_4c

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/kk;->XL:Lcom/google/android/gms/internal/ads/Je;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Je;->pl()Lcom/google/android/gms/internal/ads/ab;

    move-result-object v2

    goto :goto_4d

    :cond_4c
    move-object v2, v1

    :goto_4d
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/aa;->FH(Lcom/google/android/gms/internal/ads/kk;)Ljava/lang/String;

    move-result-object v3

    if-eqz v5, :cond_c7

    iget-object v4, v7, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/Y;->Mr:Lcom/google/android/gms/internal/ads/ub;

    if-eqz v4, :cond_c7

    new-instance v9, Lcom/google/android/gms/internal/ads/da;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Ye;->a8()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Ye;->Hw()Ljava/util/List;

    move-result-object v12

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Ye;->ro()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Ye;->CU()Lcom/google/android/gms/internal/ads/Ga;

    move-result-object v2

    if-eqz v2, :cond_73

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Ye;->CU()Lcom/google/android/gms/internal/ads/Ga;

    move-result-object v2

    move-object v14, v2

    goto :goto_74

    :cond_73
    move-object v14, v1

    :goto_74
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Ye;->gn()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Ye;->jJ()Ljava/lang/String;

    move-result-object v16

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Ye;->yO()D

    move-result-wide v17

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Ye;->wc()Ljava/lang/String;

    move-result-object v19

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Ye;->kQ()Ljava/lang/String;

    move-result-object v20

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Ye;->getVideoController()Lcom/google/android/gms/internal/ads/kI;

    move-result-object v22

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Ye;->aq()Labcd/ox;

    move-result-object v2

    if-eqz v2, :cond_9c

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Ye;->aq()Labcd/ox;

    move-result-object v1

    invoke-static {v1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    :cond_9c
    move-object/from16 v23, v1

    const/16 v21, 0x0

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Ye;->BT()Labcd/ox;

    move-result-object v24

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Ye;->getExtras()Landroid/os/Bundle;

    move-result-object v26

    move-object v10, v9

    move-object/from16 v25, v3

    invoke-direct/range {v10 .. v26}, Lcom/google/android/gms/internal/ads/da;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ga;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/P;Lcom/google/android/gms/internal/ads/kI;Landroid/view/View;Labcd/ox;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v10, Lcom/google/android/gms/internal/ads/ha;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/Y;->Hw:Lcom/google/android/gms/internal/ads/ix;

    move-object v1, v10

    move-object/from16 v3, p0

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/ha;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ja;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/Ye;Lcom/google/android/gms/internal/ads/ka;)V

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/da;->j6(Lcom/google/android/gms/internal/ads/ia;)V

    :goto_c2
    invoke-direct {v7, v9}, Lcom/google/android/gms/ads/internal/na;->j6(Lcom/google/android/gms/internal/ads/da;)V

    goto/16 :goto_2af

    :cond_c7
    if-eqz v6, :cond_138

    iget-object v4, v7, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/Y;->Mr:Lcom/google/android/gms/internal/ads/ub;

    if-eqz v4, :cond_138

    new-instance v9, Lcom/google/android/gms/internal/ads/da;

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Se;->a8()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Se;->Hw()Ljava/util/List;

    move-result-object v12

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Se;->ro()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Se;->CU()Lcom/google/android/gms/internal/ads/Ga;

    move-result-object v2

    if-eqz v2, :cond_e9

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Se;->CU()Lcom/google/android/gms/internal/ads/Ga;

    move-result-object v2

    move-object v14, v2

    goto :goto_ea

    :cond_e9
    move-object v14, v1

    :goto_ea
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Se;->gn()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Se;->yO()D

    move-result-wide v17

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Se;->wc()Ljava/lang/String;

    move-result-object v19

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Se;->kQ()Ljava/lang/String;

    move-result-object v20

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Se;->getVideoController()Lcom/google/android/gms/internal/ads/kI;

    move-result-object v22

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Se;->aq()Labcd/ox;

    move-result-object v2

    if-eqz v2, :cond_10e

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Se;->aq()Labcd/ox;

    move-result-object v1

    invoke-static {v1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    :cond_10e
    move-object/from16 v23, v1

    const/16 v16, 0x0

    const/16 v21, 0x0

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Se;->BT()Labcd/ox;

    move-result-object v24

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Se;->getExtras()Landroid/os/Bundle;

    move-result-object v26

    move-object v10, v9

    move-object/from16 v25, v3

    invoke-direct/range {v10 .. v26}, Lcom/google/android/gms/internal/ads/da;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ga;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/P;Lcom/google/android/gms/internal/ads/kI;Landroid/view/View;Labcd/ox;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v10, Lcom/google/android/gms/internal/ads/ha;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/Y;->Hw:Lcom/google/android/gms/internal/ads/ix;

    move-object v1, v10

    move-object/from16 v3, p0

    move-object v5, v6

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/ha;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ja;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/Se;Lcom/google/android/gms/internal/ads/ka;)V

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/da;->j6(Lcom/google/android/gms/internal/ads/ia;)V

    goto :goto_c2

    :cond_138
    if-eqz v6, :cond_1b2

    iget-object v4, v7, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/Y;->aM:Lcom/google/android/gms/internal/ads/fb;

    if-eqz v4, :cond_1b2

    new-instance v9, Lcom/google/android/gms/internal/ads/W;

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Se;->a8()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Se;->Hw()Ljava/util/List;

    move-result-object v12

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Se;->ro()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Se;->CU()Lcom/google/android/gms/internal/ads/Ga;

    move-result-object v2

    if-eqz v2, :cond_15a

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Se;->CU()Lcom/google/android/gms/internal/ads/Ga;

    move-result-object v2

    move-object v14, v2

    goto :goto_15b

    :cond_15a
    move-object v14, v1

    :goto_15b
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Se;->gn()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Se;->yO()D

    move-result-wide v16

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Se;->wc()Ljava/lang/String;

    move-result-object v18

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Se;->kQ()Ljava/lang/String;

    move-result-object v19

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Se;->getExtras()Landroid/os/Bundle;

    move-result-object v21

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Se;->getVideoController()Lcom/google/android/gms/internal/ads/kI;

    move-result-object v22

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Se;->aq()Labcd/ox;

    move-result-object v2

    if-eqz v2, :cond_183

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Se;->aq()Labcd/ox;

    move-result-object v1

    invoke-static {v1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    :cond_183
    move-object/from16 v23, v1

    const/16 v20, 0x0

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Se;->BT()Labcd/ox;

    move-result-object v24

    move-object v10, v9

    move-object/from16 v25, v3

    invoke-direct/range {v10 .. v25}, Lcom/google/android/gms/internal/ads/W;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ga;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/P;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/kI;Landroid/view/View;Labcd/ox;Ljava/lang/String;)V

    new-instance v10, Lcom/google/android/gms/internal/ads/ha;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/Y;->Hw:Lcom/google/android/gms/internal/ads/ix;

    move-object v1, v10

    move-object/from16 v3, p0

    move-object v5, v6

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/ha;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ja;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/Se;Lcom/google/android/gms/internal/ads/ka;)V

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/W;->j6(Lcom/google/android/gms/internal/ads/ia;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/ads/internal/qa;

    invoke-direct {v2, v7, v9}, Lcom/google/android/gms/ads/internal/qa;-><init>(Lcom/google/android/gms/ads/internal/na;Lcom/google/android/gms/internal/ads/W;)V

    :goto_1ad
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2af

    :cond_1b2
    if-eqz v9, :cond_220

    iget-object v4, v7, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/Y;->Mr:Lcom/google/android/gms/internal/ads/ub;

    if-eqz v4, :cond_220

    new-instance v6, Lcom/google/android/gms/internal/ads/da;

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Ve;->a8()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Ve;->Hw()Ljava/util/List;

    move-result-object v12

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Ve;->ro()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Ve;->gG()Lcom/google/android/gms/internal/ads/Ga;

    move-result-object v2

    if-eqz v2, :cond_1d4

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Ve;->gG()Lcom/google/android/gms/internal/ads/Ga;

    move-result-object v2

    move-object v14, v2

    goto :goto_1d5

    :cond_1d4
    move-object v14, v1

    :goto_1d5
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Ve;->gn()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Ve;->jJ()Ljava/lang/String;

    move-result-object v16

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Ve;->getVideoController()Lcom/google/android/gms/internal/ads/kI;

    move-result-object v22

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Ve;->aq()Labcd/ox;

    move-result-object v2

    if-eqz v2, :cond_1f1

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Ve;->aq()Labcd/ox;

    move-result-object v1

    invoke-static {v1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    :cond_1f1
    move-object/from16 v23, v1

    const-wide/high16 v17, -0x4010000000000000L  # -1.0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Ve;->BT()Labcd/ox;

    move-result-object v24

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Ve;->getExtras()Landroid/os/Bundle;

    move-result-object v26

    move-object v10, v6

    move-object/from16 v25, v3

    invoke-direct/range {v10 .. v26}, Lcom/google/android/gms/internal/ads/da;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ga;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/P;Lcom/google/android/gms/internal/ads/kI;Landroid/view/View;Labcd/ox;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v10, Lcom/google/android/gms/internal/ads/ha;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/Y;->Hw:Lcom/google/android/gms/internal/ads/ix;

    move-object v1, v10

    move-object/from16 v3, p0

    move-object v5, v9

    move-object v9, v6

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/ha;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ja;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/Ve;Lcom/google/android/gms/internal/ads/ka;)V

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/da;->j6(Lcom/google/android/gms/internal/ads/ia;)V

    goto/16 :goto_c2

    :cond_220
    if-eqz v9, :cond_28f

    iget-object v4, v7, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/Y;->j3:Lcom/google/android/gms/internal/ads/ib;

    if-eqz v4, :cond_28f

    new-instance v6, Lcom/google/android/gms/internal/ads/Y;

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Ve;->a8()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Ve;->Hw()Ljava/util/List;

    move-result-object v12

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Ve;->ro()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Ve;->gG()Lcom/google/android/gms/internal/ads/Ga;

    move-result-object v2

    if-eqz v2, :cond_242

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Ve;->gG()Lcom/google/android/gms/internal/ads/Ga;

    move-result-object v2

    move-object v14, v2

    goto :goto_243

    :cond_242
    move-object v14, v1

    :goto_243
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Ve;->gn()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Ve;->jJ()Ljava/lang/String;

    move-result-object v16

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Ve;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Ve;->getVideoController()Lcom/google/android/gms/internal/ads/kI;

    move-result-object v19

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Ve;->aq()Labcd/ox;

    move-result-object v2

    if-eqz v2, :cond_263

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Ve;->aq()Labcd/ox;

    move-result-object v1

    invoke-static {v1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    :cond_263
    move-object/from16 v20, v1

    const/16 v17, 0x0

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Ve;->BT()Labcd/ox;

    move-result-object v21

    move-object v10, v6

    move-object/from16 v22, v3

    invoke-direct/range {v10 .. v22}, Lcom/google/android/gms/internal/ads/Y;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ga;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/P;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/kI;Landroid/view/View;Labcd/ox;Ljava/lang/String;)V

    new-instance v10, Lcom/google/android/gms/internal/ads/ha;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/Y;->Hw:Lcom/google/android/gms/internal/ads/ix;

    move-object v1, v10

    move-object/from16 v3, p0

    move-object v5, v9

    move-object v9, v6

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/ha;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ja;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/Ve;Lcom/google/android/gms/internal/ads/ka;)V

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/Y;->j6(Lcom/google/android/gms/internal/ads/ia;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/ads/internal/ra;

    invoke-direct {v2, v7, v9}, Lcom/google/android/gms/ads/internal/ra;-><init>(Lcom/google/android/gms/ads/internal/na;Lcom/google/android/gms/internal/ads/Y;)V

    goto/16 :goto_1ad

    :cond_28f
    if-eqz v2, :cond_2b4

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->lg:Labcd/x;

    if-eqz v1, :cond_2b4

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->lg:Labcd/x;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/ab;->vJ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Labcd/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2b4

    sget-object v1, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/ads/internal/sa;

    invoke-direct {v3, v7, v2}, Lcom/google/android/gms/ads/internal/sa;-><init>(Lcom/google/android/gms/ads/internal/na;Lcom/google/android/gms/internal/ads/ab;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2af
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_2af} :catch_2bd

    :goto_2af
    invoke-super/range {p0 .. p2}, Lcom/google/android/gms/ads/internal/aa;->j6(Lcom/google/android/gms/internal/ads/kk;Lcom/google/android/gms/internal/ads/kk;)Z

    move-result v0

    return v0

    :cond_2b4
    :try_start_2b4
    const-string v0, "No matching mapper/listener for retrieved native ad template."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/google/android/gms/ads/internal/a;->J0(I)V
    :try_end_2bc
    .catch Landroid/os/RemoteException; {:try_start_2b4 .. :try_end_2bc} :catch_2bd

    return v8

    :catch_2bd
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16
.end method

.method private final FH(Lcom/google/android/gms/internal/ads/kk;Lcom/google/android/gms/internal/ads/kk;)Z
    .registers 7

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/s;->j6(Lcom/google/android/gms/internal/ads/kk;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_23

    instance-of v3, v2, Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v3, :cond_1c

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Mo;->destroy()V

    :cond_1c
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    invoke-virtual {v3, v2}, Landroid/widget/ViewSwitcher;->removeView(Landroid/view/View;)V

    :cond_23
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/s;->DW(Lcom/google/android/gms/internal/ads/kk;)Z

    move-result p2

    if-nez p2, :cond_3d

    :try_start_29
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/a;->FH(Landroid/view/View;)V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2d

    goto :goto_3d

    :catchall_2d
    move-exception p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object p2

    const-string v0, "AdLoaderManager.swapBannerViews"

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/ads/pk;->j6(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string p2, "Could not add mediation view to view hierarchy."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    :cond_3d
    :goto_3d
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    invoke-virtual {p2}, Landroid/widget/ViewSwitcher;->getChildCount()I

    move-result p2

    const/4 v0, 0x1

    if-le p2, v0, :cond_4f

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    invoke-virtual {p2}, Landroid/widget/ViewSwitcher;->showNext()V

    :cond_4f
    if-eqz p1, :cond_67

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    invoke-virtual {p1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_62

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    invoke-virtual {p2, p1}, Landroid/widget/ViewSwitcher;->removeView(Landroid/view/View;)V

    :cond_62
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/Y;->FH()V

    :cond_67
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->Ej()Lcom/google/android/gms/internal/ads/zzwf;

    move-result-object p2

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzwf;->Zo:I

    invoke-virtual {p1, p2}, Landroid/widget/ViewSwitcher;->setMinimumWidth(I)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->Ej()Lcom/google/android/gms/internal/ads/zzwf;

    move-result-object p2

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzwf;->FH:I

    invoke-virtual {p1, p2}, Landroid/widget/ViewSwitcher;->setMinimumHeight(I)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    invoke-virtual {p1}, Landroid/widget/ViewSwitcher;->requestLayout()V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    invoke-virtual {p1, v1}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    return v0
.end method

.method private static j6(Lcom/google/android/gms/internal/ads/lk;I)Lcom/google/android/gms/internal/ads/kk;
    .registers 49

    move-object/from16 v0, p0

    move/from16 v5, p1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/lk;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzasi;->FH:Lcom/google/android/gms/internal/ads/zzwb;

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/lk;->DW:Lcom/google/android/gms/internal/ads/zzasm;

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzasm;->v5:Ljava/util/List;

    iget-object v6, v15, Lcom/google/android/gms/internal/ads/zzasm;->VH:Ljava/util/List;

    iget-object v7, v15, Lcom/google/android/gms/internal/ads/zzasm;->EQ:Ljava/util/List;

    iget v8, v15, Lcom/google/android/gms/internal/ads/zzasm;->J0:I

    iget-wide v9, v15, Lcom/google/android/gms/internal/ads/zzasm;->we:J

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzasi;->u7:Ljava/lang/String;

    iget-boolean v12, v15, Lcom/google/android/gms/internal/ads/zzasm;->u7:Z

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/lk;->FH:Lcom/google/android/gms/internal/ads/qe;

    move-object/from16 v16, v1

    iget-wide v13, v15, Lcom/google/android/gms/internal/ads/zzasm;->tp:J

    move-wide/from16 v18, v13

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/lk;->Hw:Lcom/google/android/gms/internal/ads/zzwf;

    move-object/from16 v20, v1

    iget-wide v13, v15, Lcom/google/android/gms/internal/ads/zzasm;->gn:J

    move-wide/from16 v21, v13

    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/lk;->Zo:J

    move-wide/from16 v23, v13

    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/lk;->VH:J

    move-wide/from16 v25, v13

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzasm;->QX:Ljava/lang/String;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/lk;->gn:Lorg/json/JSONObject;

    move-object/from16 v28, v1

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzasm;->P8:Lcom/google/android/gms/internal/ads/zzawd;

    move-object/from16 v30, v1

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzasm;->ei:Ljava/util/List;

    move-object/from16 v31, v1

    move-object/from16 v32, v1

    new-instance v46, Lcom/google/android/gms/internal/ads/kk;

    move-object/from16 v1, v46

    const/4 v3, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    move-object v3, v15

    move-object/from16 v15, v17

    const/16 v29, 0x0

    iget-boolean v13, v3, Lcom/google/android/gms/internal/ads/zzasm;->SI:Z

    move/from16 v33, v13

    iget-object v13, v3, Lcom/google/android/gms/internal/ads/zzasm;->KD:Lcom/google/android/gms/internal/ads/zzaso;

    move-object/from16 v34, v13

    const/16 v35, 0x0

    iget-object v13, v3, Lcom/google/android/gms/internal/ads/zzasm;->sh:Ljava/util/List;

    move-object/from16 v36, v13

    iget-object v13, v3, Lcom/google/android/gms/internal/ads/zzasm;->ef:Ljava/lang/String;

    move-object/from16 v37, v13

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/lk;->u7:Lcom/google/android/gms/internal/ads/YF;

    move-object/from16 v38, v13

    iget-boolean v13, v3, Lcom/google/android/gms/internal/ads/zzasm;->Mz:Z

    move/from16 v39, v13

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/lk;->tp:Z

    move/from16 v40, v0

    iget-boolean v0, v3, Lcom/google/android/gms/internal/ads/zzasm;->ca:Z

    move/from16 v41, v0

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzasm;->x9:Ljava/util/List;

    move-object/from16 v42, v0

    iget-boolean v0, v3, Lcom/google/android/gms/internal/ads/zzasm;->Qq:Z

    move/from16 v43, v0

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzasm;->sy:Ljava/lang/String;

    move-object/from16 v44, v0

    iget-boolean v0, v3, Lcom/google/android/gms/internal/ads/zzasm;->lp:Z

    move/from16 v45, v0

    const/4 v3, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v1 .. v45}, Lcom/google/android/gms/internal/ads/kk;-><init>(Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/Mo;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/ads/pe;Lcom/google/android/gms/internal/ads/Je;Ljava/lang/String;Lcom/google/android/gms/internal/ads/qe;Lcom/google/android/gms/internal/ads/se;JLcom/google/android/gms/internal/ads/zzwf;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/ka;Lcom/google/android/gms/internal/ads/zzawd;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/ads/zzaso;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/YF;ZZZLjava/util/List;ZLjava/lang/String;Z)V

    return-object v46
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

    if-eqz v0, :cond_d

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/kk;->Ws:Z

    if-eqz v1, :cond_d

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->j3:Lcom/google/android/gms/internal/ads/qe;

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0
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
    .registers 3

    if-eqz p1, :cond_7

    invoke-static {p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/ia;

    if-eqz v0, :cond_11

    check-cast p1, Lcom/google/android/gms/internal/ads/ia;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ia;->DY()V

    :cond_11
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/ads/internal/aa;->DW(Lcom/google/android/gms/internal/ads/kk;Z)V

    return-void
.end method

.method public final DW(Lcom/google/android/gms/internal/ads/ga;)V
    .registers 3

    const-string p1, "#005 Unexpected call to an abstract (unimplemented) method."

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final DW(Lcom/google/android/gms/internal/ads/ia;)V
    .registers 3

    const-string p1, "#005 Unexpected call to an abstract (unimplemented) method."

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final F3()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-eqz v0, :cond_22

    const-string v1, "com.google.ads.mediation.admob.AdMobAdapter"

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->aM:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->QX:Lcom/google/android/gms/internal/ads/pe;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pe;->DW()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->Vq()V

    return-void

    :cond_22
    invoke-super {p0}, Lcom/google/android/gms/ads/internal/aa;->F3()V

    return-void
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
            "Ljava/util/List<",
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
            "Ljava/util/List<",
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

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/na;->zg()Lcom/google/android/gms/internal/ads/qe;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/qe;->XL:Z

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public final cb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/lb;
    .registers 3

    const-string v0, "getOnCustomClickListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->a8:Labcd/x;

    invoke-virtual {v0, p1}, Labcd/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/lb;

    return-object p1
.end method

.method public final er()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/na;->XL:Z

    if-eqz v0, :cond_8

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/aa;->er()V

    return-void

    :cond_8
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

    if-eqz v0, :cond_31

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->QX:Lcom/google/android/gms/internal/ads/pe;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pe;->j6()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/Y;->BT:Lcom/google/android/gms/internal/ads/rb;

    if-eqz v1, :cond_31

    :try_start_19
    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-static {v0}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Lcom/google/android/gms/internal/ads/rb;->j6(Lcom/google/android/gms/internal/ads/IH;Labcd/ox;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    const/4 v1, 0x0

    invoke-super {p0, v0, v1}, Lcom/google/android/gms/ads/internal/aa;->DW(Lcom/google/android/gms/internal/ads/kk;Z)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_2a} :catch_2b

    return-void

    :catch_2b
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_31
    return-void
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

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/na;->zg()Lcom/google/android/gms/internal/ads/qe;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/qe;->aM:Z

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public final j6(Landroid/view/View;)V
    .registers 3

    const-string p1, "#005 Unexpected call to an abstract (unimplemented) method."

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/J;)V
    .registers 3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "CustomRendering is not supported by AdLoaderManager."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/D;)V
    .registers 13

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/na;->QX:Lcom/google/android/gms/internal/ads/kk;

    iget v0, p1, Lcom/google/android/gms/internal/ads/lk;->v5:I

    const/4 v1, -0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_10

    invoke-static {p1, v0}, Lcom/google/android/gms/ads/internal/na;->j6(Lcom/google/android/gms/internal/ads/lk;I)Lcom/google/android/gms/internal/ads/kk;

    move-result-object v0

    :goto_d
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/na;->QX:Lcom/google/android/gms/internal/ads/kk;

    goto :goto_20

    :cond_10
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/lk;->DW:Lcom/google/android/gms/internal/ads/zzasm;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->u7:Z

    if-nez v0, :cond_20

    const-string v0, "partialAdState is not mediation"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    invoke-static {p1, v2}, Lcom/google/android/gms/ads/internal/na;->j6(Lcom/google/android/gms/internal/ads/lk;I)Lcom/google/android/gms/internal/ads/kk;

    move-result-object v0

    goto :goto_d

    :cond_20
    :goto_20
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/na;->QX:Lcom/google/android/gms/internal/ads/kk;

    if-eqz v0, :cond_2f

    sget-object p1, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance p2, Lcom/google/android/gms/ads/internal/oa;

    invoke-direct {p2, p0}, Lcom/google/android/gms/ads/internal/oa;-><init>(Lcom/google/android/gms/ads/internal/na;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2f
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/lk;->Hw:Lcom/google/android/gms/internal/ads/zzwf;

    if-eqz v0, :cond_37

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/Y;->u7:Lcom/google/android/gms/internal/ads/zzwf;

    :cond_37
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iput v2, v0, Lcom/google/android/gms/ads/internal/Y;->cb:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->Hw()Lcom/google/android/gms/internal/ads/zg;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/Y;->Hw:Lcom/google/android/gms/internal/ads/ix;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/aa;->J0:Lcom/google/android/gms/internal/ads/Ge;

    move-object v3, p0

    move-object v4, p1

    move-object v8, p0

    move-object v9, p2

    invoke-static/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/zg;->j6(Landroid/content/Context;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/Mo;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/Ag;Lcom/google/android/gms/internal/ads/D;)Lcom/google/android/gms/internal/ads/hl;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/Y;->gn:Lcom/google/android/gms/internal/ads/hl;

    return-void
.end method

.method protected final j6(Lcom/google/android/gms/internal/ads/kk;Lcom/google/android/gms/internal/ads/kk;)Z
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/Y;->Hw()Z

    move-result v0

    if-eqz v0, :cond_91

    iget-boolean v0, p2, Lcom/google/android/gms/internal/ads/kk;->Ws:Z

    const/4 v1, 0x0

    if-nez v0, :cond_16

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/a;->J0(I)V

    const-string p1, "newState is not mediation."

    :goto_12
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return v1

    :cond_16
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/kk;->QX:Lcom/google/android/gms/internal/ads/pe;

    const/4 v2, 0x1

    if-eqz v0, :cond_64

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pe;->j6()Z

    move-result v0

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/Y;->Hw()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/Z;->j6()Lcom/google/android/gms/internal/ads/zzazc;

    move-result-object v0

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/kk;->P8:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzazc;->FH(Ljava/lang/String;)V

    :cond_38
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/aa;->j6(Lcom/google/android/gms/internal/ads/kk;Lcom/google/android/gms/internal/ads/kk;)Z

    move-result v0

    if-nez v0, :cond_3f

    goto :goto_50

    :cond_3f
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/Y;->Hw()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/ads/internal/na;->FH(Lcom/google/android/gms/internal/ads/kk;Lcom/google/android/gms/internal/ads/kk;)Z

    move-result p1

    if-nez p1, :cond_52

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/a;->J0(I)V

    :goto_50
    const/4 p1, 0x0

    goto :goto_5e

    :cond_52
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/Y;->v5()Z

    move-result p1

    if-nez p1, :cond_5d

    invoke-super {p0, p2, v1}, Lcom/google/android/gms/ads/internal/aa;->j6(Lcom/google/android/gms/internal/ads/kk;Z)V

    :cond_5d
    const/4 p1, 0x1

    :goto_5e
    if-nez p1, :cond_61

    return v1

    :cond_61
    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/na;->XL:Z

    goto :goto_75

    :cond_64
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/kk;->QX:Lcom/google/android/gms/internal/ads/pe;

    if-eqz v0, :cond_8b

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pe;->DW()Z

    move-result v0

    if-eqz v0, :cond_8b

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/ads/internal/na;->DW(Lcom/google/android/gms/internal/ads/kk;Lcom/google/android/gms/internal/ads/kk;)Z

    move-result p1

    if-nez p1, :cond_75

    return v1

    :cond_75
    :goto_75
    new-instance p1, Ljava/util/ArrayList;

    new-array p2, v2, [Ljava/lang/Integer;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v1

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/na;->VH(Ljava/util/List;)V

    return v2

    :cond_8b
    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/a;->J0(I)V

    const-string p1, "Response is neither banner nor native."

    goto :goto_12

    :cond_91
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "AdLoader API does not support custom rendering."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_9a

    :goto_99
    throw p1

    :goto_9a
    goto :goto_99
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzwb;)Z
    .registers 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/Y;->vy:Ljava/util/List;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_25

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_25

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/Y;->vy:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_25

    const/4 v2, 0x1

    goto :goto_26

    :cond_25
    const/4 v2, 0x0

    :goto_26
    if-eqz v2, :cond_31

    const-string v1, "Requesting only banner Ad from AdLoader or calling loadAd on returned banner is not yet supported"

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->j6(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/google/android/gms/ads/internal/a;->J0(I)V

    return v4

    :cond_31
    iget-object v2, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/Y;->BT:Lcom/google/android/gms/internal/ads/rb;

    if-eqz v2, :cond_92

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzwb;->gn:Z

    iget-boolean v5, v0, Lcom/google/android/gms/ads/internal/na;->Ws:Z

    if-ne v2, v5, :cond_3e

    goto :goto_8d

    :cond_3e
    iget v7, v1, Lcom/google/android/gms/internal/ads/zzwb;->j6:I

    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/zzwb;->DW:J

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzwb;->FH:Landroid/os/Bundle;

    iget v11, v1, Lcom/google/android/gms/internal/ads/zzwb;->Hw:I

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzwb;->v5:Ljava/util/List;

    iget-boolean v13, v1, Lcom/google/android/gms/internal/ads/zzwb;->Zo:Z

    iget v14, v1, Lcom/google/android/gms/internal/ads/zzwb;->VH:I

    if-nez v2, :cond_53

    if-eqz v5, :cond_51

    goto :goto_53

    :cond_51
    const/4 v15, 0x0

    goto :goto_54

    :cond_53
    :goto_53
    const/4 v15, 0x1

    :goto_54
    new-instance v2, Lcom/google/android/gms/internal/ads/zzwb;

    move-object v6, v2

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzwb;->u7:Ljava/lang/String;

    move-object/from16 v16, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzwb;->tp:Lcom/google/android/gms/internal/ads/zzzs;

    move-object/from16 v17, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzwb;->EQ:Landroid/location/Location;

    move-object/from16 v18, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzwb;->we:Ljava/lang/String;

    move-object/from16 v19, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzwb;->J0:Landroid/os/Bundle;

    move-object/from16 v20, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzwb;->J8:Landroid/os/Bundle;

    move-object/from16 v21, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzwb;->Ws:Ljava/util/List;

    move-object/from16 v22, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzwb;->QX:Ljava/lang/String;

    move-object/from16 v23, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzwb;->XL:Ljava/lang/String;

    move-object/from16 v24, v3

    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzwb;->aM:Z

    move/from16 v25, v3

    const/16 v26, 0x0

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzwb;->Mr:I

    move/from16 v27, v3

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzwb;->U2:Ljava/lang/String;

    move-object/from16 v28, v1

    invoke-direct/range {v6 .. v28}, Lcom/google/android/gms/internal/ads/zzwb;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/ads/zzzs;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/ads/zzvv;ILjava/lang/String;)V

    move-object v1, v2

    :goto_8d
    invoke-super {v0, v1}, Lcom/google/android/gms/ads/internal/a;->j6(Lcom/google/android/gms/internal/ads/zzwb;)Z

    move-result v1

    return v1

    :cond_92
    invoke-super/range {p0 .. p1}, Lcom/google/android/gms/ads/internal/a;->j6(Lcom/google/android/gms/internal/ads/zzwb;)Z

    move-result v1

    return v1
.end method

.method protected final j6(Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/kk;Z)Z
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public final ji()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-eqz v0, :cond_22

    const-string v1, "com.google.ads.mediation.admob.AdMobAdapter"

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->aM:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->QX:Lcom/google/android/gms/internal/ads/pe;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pe;->DW()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->ya()V

    return-void

    :cond_22
    invoke-super {p0}, Lcom/google/android/gms/ads/internal/aa;->ji()V

    return-void
.end method

.method public final jn()Z
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/na;->zg()Lcom/google/android/gms/internal/ads/qe;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/na;->zg()Lcom/google/android/gms/internal/ads/qe;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/qe;->QX:Z

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public final pause()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/na;->XL:Z

    if-eqz v0, :cond_8

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/aa;->pause()V

    return-void

    :cond_8
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

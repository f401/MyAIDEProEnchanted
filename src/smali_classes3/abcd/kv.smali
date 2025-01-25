.class public Labcd/kv;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/kv$a;,
        Labcd/kv$b;
    }
.end annotation


# static fields
.field private static DW:Z

.field private static FH:Ljava/lang/Object;

.field private static Hw:Labcd/kv$b;

.field private static j6:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Labcd/kv;->j6:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Labcd/kv;->FH:Ljava/lang/Object;

    new-instance v0, Labcd/kv$b;

    invoke-direct {v0}, Labcd/kv$b;-><init>()V

    sput-object v0, Labcd/kv;->Hw:Labcd/kv$b;

    return-void
.end method

.method public static DW()J
    .registers 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private static DW(Labcd/iv;)V
    .registers 10

    sget-object v0, Labcd/kv;->FH:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Labcd/kv;->Hw:Labcd/kv$b;

    invoke-virtual {p0}, Labcd/Vu;->tp()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_39

    invoke-virtual {p0}, Labcd/Vu;->u7()J

    move-result-wide v4

    invoke-virtual {p0}, Labcd/Vu;->gn()J

    move-result-wide v6

    iget-object v2, v1, Labcd/kv$b;->J0:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_1a7

    invoke-interface {v2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1a7

    iget-object p0, v1, Labcd/kv$b;->J0:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6, v7, v4, v5, v3}, Labcd/Ev;->j6(JJZ)V

    goto/16 :goto_1a7

    :cond_39
    invoke-virtual {p0}, Labcd/Iu;->vy()Z

    move-result v2

    if-eqz v2, :cond_46

    iget-object v1, v1, Labcd/kv$b;->gn:Ljava/util/List;

    :goto_41
    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1a7

    :cond_46
    invoke-virtual {p0}, Labcd/Iu;->ro()Z

    move-result v2

    if-eqz v2, :cond_4f

    iget-object v1, v1, Labcd/kv$b;->v5:Ljava/util/List;

    goto :goto_41

    :cond_4f
    invoke-virtual {p0}, Labcd/Iu;->nw()Z

    move-result v2

    if-eqz v2, :cond_58

    iget-object v1, v1, Labcd/kv$b;->FH:Ljava/util/List;

    goto :goto_41

    :cond_58
    invoke-virtual {p0}, Labcd/Iu;->cn()Z

    move-result v2

    if-eqz v2, :cond_61

    iget-object v1, v1, Labcd/kv$b;->Hw:Ljava/util/List;

    goto :goto_41

    :cond_61
    invoke-virtual {p0}, Labcd/Iu;->P8()Z

    move-result v2

    if-eqz v2, :cond_6a

    iget-object v1, v1, Labcd/kv$b;->VH:Ljava/util/List;

    goto :goto_41

    :cond_6a
    invoke-virtual {p0}, Labcd/Iu;->ei()Z

    move-result v2

    if-eqz v2, :cond_73

    iget-object v1, v1, Labcd/kv$b;->Zo:Ljava/util/List;

    goto :goto_41

    :cond_73
    invoke-virtual {p0}, Labcd/Iu;->KD()Z

    move-result v2

    if-eqz v2, :cond_7c

    iget-object v1, v1, Labcd/kv$b;->j6:Ljava/util/List;

    goto :goto_41

    :cond_7c
    invoke-virtual {p0}, Labcd/Iu;->SI()Z

    move-result v2

    if-eqz v2, :cond_85

    iget-object v1, v1, Labcd/kv$b;->DW:Ljava/util/List;

    goto :goto_41

    :cond_85
    invoke-virtual {p0}, Labcd/hv;->VH()Z

    move-result v2

    if-eqz v2, :cond_b8

    invoke-virtual {p0}, Labcd/hv;->Zo()J

    move-result-wide v4

    invoke-virtual {p0}, Labcd/hv;->v5()J

    move-result-wide v6

    iget-object v2, v1, Labcd/kv$b;->J8:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_1a7

    invoke-interface {v2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1a7

    iget-object p0, v1, Labcd/kv$b;->J8:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6, v7, v4, v5, v3}, Labcd/Ev;->DW(JJZ)V

    goto/16 :goto_1a7

    :cond_b8
    invoke-virtual {p0}, Labcd/Iu;->BT()Z

    move-result v2

    if-eqz v2, :cond_c1

    iget-object v1, v1, Labcd/kv$b;->we:Ljava/util/List;

    goto :goto_41

    :cond_c1
    invoke-virtual {p0}, Labcd/Bv;->Mr()Z

    move-result v2

    if-eqz v2, :cond_cb

    iget-object v1, v1, Labcd/kv$b;->Ws:Ljava/util/List;

    goto/16 :goto_41

    :cond_cb
    invoke-virtual {p0}, Labcd/Bv;->J0()Z

    move-result v2

    if-eqz v2, :cond_d5

    iget-object v1, v1, Labcd/kv$b;->u7:Ljava/util/List;

    goto/16 :goto_41

    :cond_d5
    invoke-virtual {p0}, Labcd/Bv;->J8()Z

    move-result v2

    if-eqz v2, :cond_df

    iget-object v1, v1, Labcd/kv$b;->tp:Ljava/util/List;

    goto/16 :goto_41

    :cond_df
    invoke-virtual {p0}, Labcd/Bv;->Ws()Z

    move-result v2

    if-eqz v2, :cond_e9

    iget-object v1, v1, Labcd/kv$b;->EQ:Ljava/util/List;

    goto/16 :goto_41

    :cond_e9
    invoke-virtual {p0}, Labcd/Bv;->rN()Z

    move-result v2

    if-eqz v2, :cond_f3

    iget-object v1, v1, Labcd/kv$b;->aM:Ljava/util/List;

    goto/16 :goto_41

    :cond_f3
    invoke-virtual {p0}, Labcd/Bv;->lg()Z

    move-result v2

    if-eqz v2, :cond_fd

    iget-object v1, v1, Labcd/kv$b;->j3:Ljava/util/List;

    goto/16 :goto_41

    :cond_fd
    invoke-virtual {p0}, Labcd/Bv;->yS()Z

    move-result v2

    if-eqz v2, :cond_107

    iget-object v1, v1, Labcd/kv$b;->XL:Ljava/util/List;

    goto/16 :goto_41

    :cond_107
    invoke-virtual {p0}, Labcd/Bv;->gW()Z

    move-result v2

    if-eqz v2, :cond_111

    iget-object v1, v1, Labcd/kv$b;->QX:Ljava/util/List;

    goto/16 :goto_41

    :cond_111
    invoke-virtual {p0}, Labcd/Bv;->XL()Z

    move-result v2

    if-eqz v2, :cond_11b

    iget-object v1, v1, Labcd/kv$b;->U2:Ljava/util/List;

    goto/16 :goto_41

    :cond_11b
    invoke-virtual {p0}, Labcd/Bv;->er()Z

    move-result v2

    if-eqz v2, :cond_125

    iget-object v1, v1, Labcd/kv$b;->Mr:Ljava/util/List;

    goto/16 :goto_41

    :cond_125
    invoke-virtual {p0}, Labcd/Bv;->QX()Z

    move-result v2

    if-eqz v2, :cond_13f

    iget-object v1, v1, Labcd/kv$b;->a8:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1a7

    goto/16 :goto_41

    :cond_13f
    invoke-virtual {p0}, Labcd/Bv;->U2()Z

    move-result v2

    if-eqz v2, :cond_159

    iget-object v1, v1, Labcd/kv$b;->lg:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1a7

    goto/16 :goto_41

    :cond_159
    invoke-virtual {p0}, Labcd/Bv;->aM()Z

    move-result v2

    if-eqz v2, :cond_173

    iget-object v1, v1, Labcd/kv$b;->rN:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1a7

    goto/16 :goto_41

    :cond_173
    invoke-virtual {p0}, Labcd/Bv;->j3()Z

    move-result v2

    if-eqz v2, :cond_18d

    iget-object v1, v1, Labcd/kv$b;->er:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1a7

    goto/16 :goto_41

    :cond_18d
    invoke-virtual {p0}, Labcd/Bv;->a8()Z

    move-result v2

    if-eqz v2, :cond_1a7

    iget-object v1, v1, Labcd/kv$b;->yS:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1a7

    goto/16 :goto_41

    :cond_1a7
    :goto_1a7
    monitor-exit v0

    return-void

    :catchall_1a9
    move-exception p0

    monitor-exit v0
    :try_end_1ab
    .catchall {:try_start_3 .. :try_end_1ab} :catchall_1a9

    goto :goto_1ad

    :goto_1ac
    throw p0

    :goto_1ad
    goto :goto_1ac
.end method

.method public static DW(Landroid/app/Activity;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/appfour/backbone/api/Api;->identifier(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "onActivityStarted"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Labcd/kv;->j6(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {}, Labcd/kv;->DW()J

    move-result-wide v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v3

    iget-object v3, v3, Labcd/kv$b;->tp:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/iv;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v0, v1, v3, v4}, Labcd/kv;->j6(JLabcd/iv;[Ljava/lang/Object;)V

    goto :goto_2d

    :cond_43
    return-void
.end method

.method public static DW(Landroid/app/Activity;Lcom/appfour/backbone/api/objects/InAppProduct;)V
    .registers 9

    const-string v0, "onInAppProductPurchase"

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/InAppProduct;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/kv;->j6(Ljava/lang/String;Ljava/lang/CharSequence;)V

    sget-boolean v0, Labcd/kv$a;->j6:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    sput-boolean v1, Labcd/kv$a;->Hw:Z

    :cond_10
    invoke-static {}, Labcd/kv;->DW()J

    move-result-wide v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v4

    iget-object v4, v4, Labcd/kv$b;->Zo:Ljava/util/List;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/iv;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    aput-object p1, v5, v1

    invoke-static {v2, v3, v4, v5}, Labcd/kv;->j6(JLabcd/iv;[Ljava/lang/Object;)V

    goto :goto_23

    :cond_3b
    return-void
.end method

.method public static DW(Lcom/appfour/backbone/api/objects/UserActionWindow;)V
    .registers 1

    return-void
.end method

.method public static DW(Lcom/appfour/backbone/api/objects/UserTouchAction;Landroid/view/View;)V
    .registers 9

    const-string v0, "onLongPress"

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/kv;->j6(Ljava/lang/String;Ljava/lang/CharSequence;)V

    sget-boolean v0, Labcd/kv$a;->j6:Z

    if-eqz v0, :cond_46

    sget-object v0, Labcd/kv$a;->EQ:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    sget-object v0, Labcd/kv$a;->EQ:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    sget-object v0, Labcd/kv$a;->EQ:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getActivityClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_46
    invoke-static {}, Labcd/kv;->DW()J

    move-result-wide v0

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v2

    iget-object v2, v2, Labcd/kv$b;->lg:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ac

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v3

    iget-object v3, v3, Labcd/kv$b;->lg:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7b
    :goto_7b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ac

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/iv;

    invoke-virtual {v3}, Labcd/Bv;->EQ()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_7b

    invoke-virtual {v3}, Labcd/Bv;->EQ()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7b

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getActivity()Landroid/app/Activity;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v0, v1, v3, v4}, Labcd/kv;->j6(JLabcd/iv;[Ljava/lang/Object;)V

    goto :goto_7b

    :cond_ac
    return-void
.end method

.method public static DW(Lcom/appfour/backbone/api/objects/UserTouchAction;Landroid/view/View;Ljava/lang/Object;ILandroid/view/View;)V
    .registers 12

    const-string v0, "onItemLongPress"

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/kv;->j6(Ljava/lang/String;Ljava/lang/CharSequence;)V

    sget-boolean v0, Labcd/kv$a;->j6:Z

    if-eqz v0, :cond_46

    sget-object v0, Labcd/kv$a;->J0:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    sget-object v0, Labcd/kv$a;->J0:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    sget-object v0, Labcd/kv$a;->J0:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getActivityClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_46
    invoke-static {}, Labcd/kv;->DW()J

    move-result-wide v0

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v2

    iget-object v2, v2, Labcd/kv$b;->er:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b9

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v3

    iget-object v3, v3, Labcd/kv$b;->er:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7b
    :goto_7b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/iv;

    invoke-virtual {v3}, Labcd/Bv;->EQ()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_7b

    invoke-virtual {v3}, Labcd/Bv;->EQ()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7b

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getActivity()Landroid/app/Activity;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    const/4 v5, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    aput-object p4, v4, v5

    invoke-static {v0, v1, v3, v4}, Labcd/kv;->j6(JLabcd/iv;[Ljava/lang/Object;)V

    goto :goto_7b

    :cond_b9
    return-void
.end method

.method public static DW(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Labcd/iv;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/iv;

    invoke-static {v0}, Labcd/kv;->DW(Labcd/iv;)V

    goto :goto_4

    :cond_14
    return-void
.end method

.method public static FH()V
    .registers 6

    const-string v0, "onUpdate"

    const-string v1, ""

    invoke-static {v0, v1}, Labcd/kv;->j6(Ljava/lang/String;Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v1

    iget-object v1, v1, Labcd/kv$b;->Hw:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/iv;

    invoke-static {}, Lcom/appfour/backbone/api/Api;->getLastUpdateTime()J

    move-result-wide v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v1, v2}, Labcd/kv;->j6(JLabcd/iv;[Ljava/lang/Object;)V

    goto :goto_16

    :cond_2d
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v1

    iget-object v1, v1, Labcd/kv$b;->v5:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/iv;

    invoke-static {}, Lcom/appfour/backbone/api/Api;->getLastUpdateTime()J

    move-result-wide v3

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v1, v5}, Labcd/kv;->j6(JLabcd/iv;[Ljava/lang/Object;)V

    goto :goto_3c

    :cond_52
    return-void
.end method

.method public static FH(Landroid/app/Activity;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/appfour/backbone/api/Api;->identifier(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "onActivityStopped"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Labcd/kv;->j6(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {}, Labcd/kv;->DW()J

    move-result-wide v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v3

    iget-object v3, v3, Labcd/kv$b;->EQ:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/iv;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v0, v1, v3, v4}, Labcd/kv;->j6(JLabcd/iv;[Ljava/lang/Object;)V

    goto :goto_2d

    :cond_43
    return-void
.end method

.method public static FH(Lcom/appfour/backbone/api/objects/UserActionWindow;)V
    .registers 7

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserActionWindow;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":editor_handle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "onWindowHidden"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Labcd/kv;->j6(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {}, Labcd/kv;->DW()J

    move-result-wide v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v3

    iget-object v3, v3, Labcd/kv$b;->XL:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/iv;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v0, v1, v3, v4}, Labcd/kv;->j6(JLabcd/iv;[Ljava/lang/Object;)V

    goto :goto_36

    :cond_4c
    return-void
.end method

.method private static Hw()Labcd/kv$b;
    .registers 2

    sget-object v0, Labcd/kv;->FH:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Labcd/kv;->Hw:Labcd/kv$b;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static Hw(Lcom/appfour/backbone/api/objects/UserActionWindow;)V
    .registers 7

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserActionWindow;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":editor_handle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "onWindowShown"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Labcd/kv;->j6(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {}, Labcd/kv;->DW()J

    move-result-wide v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v3

    iget-object v3, v3, Labcd/kv$b;->QX:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/iv;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v0, v1, v3, v4}, Labcd/kv;->j6(JLabcd/iv;[Ljava/lang/Object;)V

    goto :goto_36

    :cond_4c
    return-void
.end method

.method public static j6(Labcd/iv;JJ)J
    .registers 8

    invoke-virtual {p0}, Labcd/Iu;->KD()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/appfour/backbone/api/Api;->isMainProcess()Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_10

    :cond_f
    move-wide p1, v1

    :goto_10
    return-wide p1

    :cond_11
    invoke-virtual {p0}, Labcd/Iu;->SI()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {}, Lcom/appfour/backbone/api/Api;->isMainProcess()Z

    move-result p0

    if-eqz p0, :cond_1e

    goto :goto_1f

    :cond_1e
    move-wide p1, v1

    :goto_1f
    return-wide p1

    :cond_20
    invoke-virtual {p0}, Labcd/Iu;->ro()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-static {}, Lcom/appfour/backbone/api/Api;->isMainProcess()Z

    move-result p0

    if-eqz p0, :cond_2d

    goto :goto_2e

    :cond_2d
    move-wide p1, v1

    :goto_2e
    return-wide p1

    :cond_2f
    invoke-virtual {p0}, Labcd/Iu;->cn()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-static {}, Lcom/appfour/backbone/api/Api;->isMainProcess()Z

    move-result p0

    if-eqz p0, :cond_3c

    goto :goto_3d

    :cond_3c
    move-wide p1, v1

    :goto_3d
    return-wide p1

    :cond_3e
    invoke-virtual {p0}, Labcd/Iu;->nw()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-static {}, Lcom/appfour/backbone/api/Api;->isMainProcess()Z

    move-result p0

    if-eqz p0, :cond_4b

    goto :goto_4c

    :cond_4b
    move-wide p1, v1

    :goto_4c
    return-wide p1

    :cond_4d
    invoke-virtual {p0}, Labcd/Vu;->tp()Z

    move-result v0

    if-eqz v0, :cond_69

    sget-boolean v0, Labcd/kv$a;->j6:Z

    if-eqz v0, :cond_68

    sget-object v0, Labcd/kv$a;->QX:Ljava/util/Set;

    invoke-virtual {p0}, Labcd/Vu;->gn()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_68

    return-wide p3

    :cond_68
    return-wide p1

    :cond_69
    invoke-virtual {p0}, Labcd/Iu;->vy()Z

    move-result v0

    if-eqz v0, :cond_70

    return-wide p1

    :cond_70
    invoke-virtual {p0}, Labcd/Iu;->P8()Z

    move-result v0

    if-eqz v0, :cond_80

    sget-boolean p0, Labcd/kv$a;->j6:Z

    if-eqz p0, :cond_7f

    sget-boolean p0, Labcd/kv$a;->v5:Z

    if-nez p0, :cond_7f

    return-wide p3

    :cond_7f
    return-wide p1

    :cond_80
    invoke-virtual {p0}, Labcd/Iu;->ei()Z

    move-result v0

    if-eqz v0, :cond_90

    sget-boolean p0, Labcd/kv$a;->j6:Z

    if-eqz p0, :cond_8f

    sget-boolean p0, Labcd/kv$a;->Hw:Z

    if-nez p0, :cond_8f

    return-wide p3

    :cond_8f
    return-wide p1

    :cond_90
    invoke-virtual {p0}, Labcd/hv;->VH()Z

    move-result v0

    if-eqz v0, :cond_ac

    sget-boolean v0, Labcd/kv$a;->j6:Z

    if-eqz v0, :cond_ab

    sget-object v0, Labcd/kv$a;->QX:Ljava/util/Set;

    invoke-virtual {p0}, Labcd/hv;->v5()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ab

    return-wide p3

    :cond_ab
    return-wide p1

    :cond_ac
    invoke-virtual {p0}, Labcd/Iu;->BT()Z

    move-result v0

    if-eqz v0, :cond_bc

    sget-boolean p0, Labcd/kv$a;->j6:Z

    if-eqz p0, :cond_bb

    sget-boolean p0, Labcd/kv$a;->FH:Z

    if-nez p0, :cond_bb

    return-wide p3

    :cond_bb
    return-wide p1

    :cond_bc
    invoke-virtual {p0}, Labcd/Bv;->J8()Z

    move-result v0

    if-eqz v0, :cond_c3

    return-wide p1

    :cond_c3
    invoke-virtual {p0}, Labcd/Bv;->Ws()Z

    move-result v0

    if-eqz v0, :cond_ca

    return-wide p1

    :cond_ca
    invoke-virtual {p0}, Labcd/Bv;->J0()Z

    move-result v0

    if-eqz v0, :cond_d1

    return-wide p1

    :cond_d1
    invoke-virtual {p0}, Labcd/Bv;->Mr()Z

    move-result v0

    if-eqz v0, :cond_d8

    return-wide p1

    :cond_d8
    invoke-virtual {p0}, Labcd/Bv;->gW()Z

    move-result v0

    if-eqz v0, :cond_df

    return-wide p1

    :cond_df
    invoke-virtual {p0}, Labcd/Bv;->rN()Z

    move-result v0

    if-eqz v0, :cond_ef

    sget-boolean p0, Labcd/kv$a;->j6:Z

    if-eqz p0, :cond_ee

    sget-boolean p0, Labcd/kv$a;->gn:Z

    if-nez p0, :cond_ee

    return-wide p3

    :cond_ee
    return-wide p1

    :cond_ef
    invoke-virtual {p0}, Labcd/Bv;->lg()Z

    move-result v0

    if-eqz v0, :cond_ff

    sget-boolean p0, Labcd/kv$a;->j6:Z

    if-eqz p0, :cond_fe

    sget-boolean p0, Labcd/kv$a;->u7:Z

    if-nez p0, :cond_fe

    return-wide p3

    :cond_fe
    return-wide p1

    :cond_ff
    invoke-virtual {p0}, Labcd/Bv;->yS()Z

    move-result v0

    if-eqz v0, :cond_106

    return-wide p1

    :cond_106
    invoke-virtual {p0}, Labcd/Bv;->er()Z

    move-result v0

    if-eqz v0, :cond_116

    sget-boolean p0, Labcd/kv$a;->j6:Z

    if-eqz p0, :cond_115

    sget-boolean p0, Labcd/kv$a;->VH:Z

    if-nez p0, :cond_115

    return-wide p3

    :cond_115
    return-wide p1

    :cond_116
    invoke-virtual {p0}, Labcd/Bv;->XL()Z

    move-result v0

    if-eqz v0, :cond_126

    sget-boolean p0, Labcd/kv$a;->j6:Z

    if-eqz p0, :cond_125

    sget-boolean p0, Labcd/kv$a;->Zo:Z

    if-nez p0, :cond_125

    return-wide p3

    :cond_125
    return-wide p1

    :cond_126
    invoke-virtual {p0}, Labcd/Bv;->QX()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_164

    sget-boolean v0, Labcd/kv$a;->j6:Z

    if-eqz v0, :cond_163

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v0

    if-ne v0, v1, :cond_140

    sget-object p0, Labcd/kv$a;->tp:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_163

    return-wide p3

    :cond_140
    sget-object v0, Labcd/kv$a;->tp:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_162

    invoke-virtual {p0}, Labcd/Bv;->EQ()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_163

    invoke-virtual {p0}, Labcd/Bv;->EQ()Ljava/lang/Class;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_163

    :cond_162
    return-wide p3

    :cond_163
    return-wide p1

    :cond_164
    invoke-virtual {p0}, Labcd/Bv;->U2()Z

    move-result v0

    if-eqz v0, :cond_1a1

    sget-boolean v0, Labcd/kv$a;->j6:Z

    if-eqz v0, :cond_1a0

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v0

    if-ne v0, v1, :cond_17d

    sget-object p0, Labcd/kv$a;->EQ:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1a0

    return-wide p3

    :cond_17d
    sget-object v0, Labcd/kv$a;->EQ:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_19f

    invoke-virtual {p0}, Labcd/Bv;->EQ()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1a0

    invoke-virtual {p0}, Labcd/Bv;->EQ()Ljava/lang/Class;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a0

    :cond_19f
    return-wide p3

    :cond_1a0
    return-wide p1

    :cond_1a1
    invoke-virtual {p0}, Labcd/Bv;->aM()Z

    move-result v0

    if-eqz v0, :cond_1de

    sget-boolean v0, Labcd/kv$a;->j6:Z

    if-eqz v0, :cond_1dd

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v0

    if-ne v0, v1, :cond_1ba

    sget-object p0, Labcd/kv$a;->we:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1dd

    return-wide p3

    :cond_1ba
    sget-object v0, Labcd/kv$a;->we:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_1dc

    invoke-virtual {p0}, Labcd/Bv;->EQ()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1dd

    invoke-virtual {p0}, Labcd/Bv;->EQ()Ljava/lang/Class;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1dd

    :cond_1dc
    return-wide p3

    :cond_1dd
    return-wide p1

    :cond_1de
    invoke-virtual {p0}, Labcd/Bv;->j3()Z

    move-result v0

    if-eqz v0, :cond_21b

    sget-boolean v0, Labcd/kv$a;->j6:Z

    if-eqz v0, :cond_21a

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v0

    if-ne v0, v1, :cond_1f7

    sget-object p0, Labcd/kv$a;->J0:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_21a

    return-wide p3

    :cond_1f7
    sget-object v0, Labcd/kv$a;->J0:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_219

    invoke-virtual {p0}, Labcd/Bv;->EQ()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_21a

    invoke-virtual {p0}, Labcd/Bv;->EQ()Ljava/lang/Class;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_21a

    :cond_219
    return-wide p3

    :cond_21a
    return-wide p1

    :cond_21b
    invoke-virtual {p0}, Labcd/Bv;->a8()Z

    move-result v0

    if-eqz v0, :cond_257

    sget-boolean v0, Labcd/kv$a;->j6:Z

    if-eqz v0, :cond_257

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v0

    if-ne v0, v1, :cond_234

    sget-object p0, Labcd/kv$a;->J8:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_257

    return-wide p3

    :cond_234
    sget-object v0, Labcd/kv$a;->J8:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_256

    invoke-virtual {p0}, Labcd/Bv;->EQ()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_257

    invoke-virtual {p0}, Labcd/Bv;->EQ()Ljava/lang/Class;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_257

    :cond_256
    return-wide p3

    :cond_257
    return-wide p1
.end method

.method public static j6()V
    .registers 2

    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Labcd/kv$a;->Ws:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Labcd/kv$a;->QX:Ljava/util/Set;

    return-void
.end method

.method public static j6(JJ)V
    .registers 4

    sget-boolean p2, Labcd/kv$a;->j6:Z

    if-nez p2, :cond_8

    sget-boolean p2, Labcd/kv;->DW:Z

    if-nez p2, :cond_11

    :cond_8
    sget-object p2, Labcd/kv$a;->Ws:Ljava/util/Set;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_11
    return-void
.end method

.method private static varargs j6(JLabcd/iv;[Ljava/lang/Object;)V
    .registers 6

    invoke-virtual {p2}, Labcd/yu;->DW()Labcd/jv;

    move-result-object v0

    if-eqz v0, :cond_30

    :try_start_6
    sget-object v0, Labcd/kv;->j6:Ljava/lang/ThreadLocal;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    invoke-virtual {p2}, Labcd/yu;->DW()Labcd/jv;

    move-result-object v0

    invoke-interface {v0, p3}, Labcd/jv;->j6([Ljava/lang/Object;)Lcom/appfour/backbone/api/objects/EventData;

    move-result-object p3
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_19

    goto :goto_1e

    :catchall_19
    move-exception p3

    :try_start_1a
    invoke-virtual {p2, p0, p1, p3}, Labcd/yu;->j6(JLjava/lang/Throwable;)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_29

    const/4 p3, 0x0

    :goto_1e
    sget-object v0, Labcd/kv;->j6:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    if-eqz p3, :cond_30

    invoke-virtual {p2, p0, p1, p3}, Labcd/yu;->j6(JLcom/appfour/backbone/api/objects/EventData;)V

    goto :goto_30

    :catchall_29
    move-exception p0

    sget-object p1, Labcd/kv;->j6:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    throw p0

    :cond_30
    :goto_30
    return-void
.end method

.method public static varargs j6(JLjava/lang/Object;[Ljava/lang/Object;)V
    .registers 9

    invoke-static {}, Labcd/kv;->v5()Z

    move-result v0

    if-nez v0, :cond_5e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "onEnter"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Labcd/kv;->j6(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {}, Labcd/kv;->DW()J

    move-result-wide v0

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v2

    iget-object v2, v2, Labcd/kv$b;->J0:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_5e

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/iv;

    array-length v2, p3

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    :goto_4f
    array-length v4, p3

    if-ge v3, v4, :cond_5a

    add-int/lit8 v4, v3, 0x1

    aget-object v3, p3, v3

    aput-object v3, v2, v4

    move v3, v4

    goto :goto_4f

    :cond_5a
    invoke-static {v0, v1, p1, v2}, Labcd/kv;->j6(JLabcd/iv;[Ljava/lang/Object;)V

    goto :goto_3b

    :cond_5e
    return-void
.end method

.method public static varargs j6(JLjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 11

    invoke-static {}, Labcd/kv;->v5()Z

    move-result v0

    if-nez v0, :cond_7c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "onThrow"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Labcd/kv;->j6(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {}, Labcd/kv;->DW()J

    move-result-wide v0

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v2

    iget-object v2, v2, Labcd/kv$b;->J8:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_7c

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3b
    :goto_3b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/iv;

    invoke-virtual {p1}, Labcd/hv;->FH()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_57

    invoke-virtual {p1}, Labcd/hv;->FH()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_61

    :cond_57
    invoke-virtual {p1}, Labcd/hv;->Hw()J

    move-result-wide v2

    invoke-static {p2, v2, v3}, Labcd/Ev;->DW(Ljava/lang/Object;J)Z

    move-result v2

    if-eqz v2, :cond_3b

    :cond_61
    array-length v2, p4

    add-int/lit8 v2, v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 v4, 0x1

    aput-object p2, v2, v4

    :goto_6c
    array-length v4, p4

    if-ge v3, v4, :cond_78

    add-int/lit8 v4, v3, 0x2

    aget-object v5, p4, v3

    aput-object v5, v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_6c

    :cond_78
    invoke-static {v0, v1, p1, v2}, Labcd/kv;->j6(JLabcd/iv;[Ljava/lang/Object;)V

    goto :goto_3b

    :cond_7c
    return-void
.end method

.method private static j6(Labcd/iv;)V
    .registers 11

    sget-object v0, Labcd/kv;->FH:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Labcd/kv;->Hw:Labcd/kv$b;

    invoke-virtual {p0}, Labcd/Vu;->tp()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_42

    invoke-virtual {p0}, Labcd/Vu;->u7()J

    move-result-wide v4

    invoke-virtual {p0}, Labcd/Vu;->gn()J

    move-result-wide v6

    iget-object v2, v1, Labcd/kv$b;->J0:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    iget-object v2, v1, Labcd/kv$b;->J0:Ljava/util/Map;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v2, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    iget-object v1, v1, Labcd/kv$b;->J0:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v6, v7, v4, v5, v3}, Labcd/Ev;->j6(JJZ)V

    goto/16 :goto_25a

    :cond_42
    invoke-virtual {p0}, Labcd/Iu;->vy()Z

    move-result v2

    if-eqz v2, :cond_4f

    iget-object v1, v1, Labcd/kv$b;->gn:Ljava/util/List;

    :goto_4a
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_25a

    :cond_4f
    invoke-virtual {p0}, Labcd/Iu;->ro()Z

    move-result v2

    if-eqz v2, :cond_58

    iget-object v1, v1, Labcd/kv$b;->v5:Ljava/util/List;

    goto :goto_4a

    :cond_58
    invoke-virtual {p0}, Labcd/Iu;->nw()Z

    move-result v2

    if-eqz v2, :cond_61

    iget-object v1, v1, Labcd/kv$b;->FH:Ljava/util/List;

    goto :goto_4a

    :cond_61
    invoke-virtual {p0}, Labcd/Iu;->cn()Z

    move-result v2

    if-eqz v2, :cond_6a

    iget-object v1, v1, Labcd/kv$b;->Hw:Ljava/util/List;

    goto :goto_4a

    :cond_6a
    invoke-virtual {p0}, Labcd/Iu;->P8()Z

    move-result v2

    if-eqz v2, :cond_73

    iget-object v1, v1, Labcd/kv$b;->VH:Ljava/util/List;

    goto :goto_4a

    :cond_73
    invoke-virtual {p0}, Labcd/Iu;->ei()Z

    move-result v2

    if-eqz v2, :cond_7c

    iget-object v1, v1, Labcd/kv$b;->Zo:Ljava/util/List;

    goto :goto_4a

    :cond_7c
    invoke-virtual {p0}, Labcd/Iu;->KD()Z

    move-result v2

    if-eqz v2, :cond_85

    iget-object v1, v1, Labcd/kv$b;->j6:Ljava/util/List;

    goto :goto_4a

    :cond_85
    invoke-virtual {p0}, Labcd/Iu;->SI()Z

    move-result v2

    if-eqz v2, :cond_8e

    iget-object v1, v1, Labcd/kv$b;->DW:Ljava/util/List;

    goto :goto_4a

    :cond_8e
    invoke-virtual {p0}, Labcd/hv;->VH()Z

    move-result v2

    if-eqz v2, :cond_ca

    invoke-virtual {p0}, Labcd/hv;->Zo()J

    move-result-wide v4

    invoke-virtual {p0}, Labcd/hv;->v5()J

    move-result-wide v6

    iget-object v2, v1, Labcd/kv$b;->J8:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b6

    iget-object v2, v1, Labcd/kv$b;->J8:Ljava/util/Map;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v2, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b6
    iget-object v1, v1, Labcd/kv$b;->J8:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v6, v7, v4, v5, v3}, Labcd/Ev;->DW(JJZ)V

    goto/16 :goto_25a

    :cond_ca
    invoke-virtual {p0}, Labcd/Iu;->BT()Z

    move-result v2

    if-eqz v2, :cond_d4

    iget-object v1, v1, Labcd/kv$b;->we:Ljava/util/List;

    goto/16 :goto_4a

    :cond_d4
    invoke-virtual {p0}, Labcd/Bv;->J8()Z

    move-result v2

    if-eqz v2, :cond_de

    iget-object v1, v1, Labcd/kv$b;->tp:Ljava/util/List;

    goto/16 :goto_4a

    :cond_de
    invoke-virtual {p0}, Labcd/Bv;->Ws()Z

    move-result v2

    if-eqz v2, :cond_e8

    iget-object v1, v1, Labcd/kv$b;->EQ:Ljava/util/List;

    goto/16 :goto_4a

    :cond_e8
    invoke-virtual {p0}, Labcd/Bv;->J0()Z

    move-result v2

    if-eqz v2, :cond_f2

    iget-object v1, v1, Labcd/kv$b;->u7:Ljava/util/List;

    goto/16 :goto_4a

    :cond_f2
    invoke-virtual {p0}, Labcd/Bv;->Mr()Z

    move-result v2

    if-eqz v2, :cond_fc

    iget-object v1, v1, Labcd/kv$b;->Ws:Ljava/util/List;

    goto/16 :goto_4a

    :cond_fc
    invoke-virtual {p0}, Labcd/Bv;->rN()Z

    move-result v2

    if-eqz v2, :cond_106

    iget-object v1, v1, Labcd/kv$b;->aM:Ljava/util/List;

    goto/16 :goto_4a

    :cond_106
    invoke-virtual {p0}, Labcd/Bv;->lg()Z

    move-result v2

    if-eqz v2, :cond_110

    iget-object v1, v1, Labcd/kv$b;->j3:Ljava/util/List;

    goto/16 :goto_4a

    :cond_110
    invoke-virtual {p0}, Labcd/Bv;->gW()Z

    move-result v2

    if-eqz v2, :cond_11a

    iget-object v1, v1, Labcd/kv$b;->QX:Ljava/util/List;

    goto/16 :goto_4a

    :cond_11a
    invoke-virtual {p0}, Labcd/Bv;->yS()Z

    move-result v2

    if-eqz v2, :cond_124

    iget-object v1, v1, Labcd/kv$b;->XL:Ljava/util/List;

    goto/16 :goto_4a

    :cond_124
    invoke-virtual {p0}, Labcd/Bv;->er()Z

    move-result v2

    if-eqz v2, :cond_12e

    iget-object v1, v1, Labcd/kv$b;->Mr:Ljava/util/List;

    goto/16 :goto_4a

    :cond_12e
    invoke-virtual {p0}, Labcd/Bv;->XL()Z

    move-result v2

    if-eqz v2, :cond_138

    iget-object v1, v1, Labcd/kv$b;->U2:Ljava/util/List;

    goto/16 :goto_4a

    :cond_138
    invoke-virtual {p0}, Labcd/Bv;->QX()Z

    move-result v2

    if-eqz v2, :cond_172

    iget-object v2, v1, Labcd/kv$b;->a8:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_160

    iget-object v2, v1, Labcd/kv$b;->a8:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_160
    iget-object v1, v1, Labcd/kv$b;->a8:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    goto/16 :goto_4a

    :cond_172
    invoke-virtual {p0}, Labcd/Bv;->U2()Z

    move-result v2

    if-eqz v2, :cond_1ac

    iget-object v2, v1, Labcd/kv$b;->lg:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19a

    iget-object v2, v1, Labcd/kv$b;->lg:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19a
    iget-object v1, v1, Labcd/kv$b;->lg:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    goto/16 :goto_4a

    :cond_1ac
    invoke-virtual {p0}, Labcd/Bv;->aM()Z

    move-result v2

    if-eqz v2, :cond_1e6

    iget-object v2, v1, Labcd/kv$b;->rN:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d4

    iget-object v2, v1, Labcd/kv$b;->rN:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d4
    iget-object v1, v1, Labcd/kv$b;->rN:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    goto/16 :goto_4a

    :cond_1e6
    invoke-virtual {p0}, Labcd/Bv;->j3()Z

    move-result v2

    if-eqz v2, :cond_220

    iget-object v2, v1, Labcd/kv$b;->er:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20e

    iget-object v2, v1, Labcd/kv$b;->er:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20e
    iget-object v1, v1, Labcd/kv$b;->er:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    goto/16 :goto_4a

    :cond_220
    invoke-virtual {p0}, Labcd/Bv;->a8()Z

    move-result v2

    if-eqz v2, :cond_25a

    iget-object v2, v1, Labcd/kv$b;->yS:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_248

    iget-object v2, v1, Labcd/kv$b;->yS:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_248
    iget-object v1, v1, Labcd/kv$b;->yS:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    goto/16 :goto_4a

    :cond_25a
    :goto_25a
    monitor-exit v0

    return-void

    :catchall_25c
    move-exception p0

    monitor-exit v0
    :try_end_25e
    .catchall {:try_start_3 .. :try_end_25e} :catchall_25c

    goto :goto_260

    :goto_25f
    throw p0

    :goto_260
    goto :goto_25f
.end method

.method public static j6(Landroid/app/Activity;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/appfour/backbone/api/Api;->identifier(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "onActivityCreated"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Labcd/kv;->j6(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {}, Labcd/kv;->DW()J

    move-result-wide v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v3

    iget-object v3, v3, Labcd/kv$b;->u7:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/iv;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v0, v1, v3, v4}, Labcd/kv;->j6(JLabcd/iv;[Ljava/lang/Object;)V

    goto :goto_2d

    :cond_43
    return-void
.end method

.method public static j6(Landroid/app/Activity;Lcom/appfour/backbone/api/objects/InAppProduct;)V
    .registers 9

    const-string v0, "onInAppProductImpression"

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/InAppProduct;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/kv;->j6(Ljava/lang/String;Ljava/lang/CharSequence;)V

    sget-boolean v0, Labcd/kv$a;->j6:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    sput-boolean v1, Labcd/kv$a;->v5:Z

    :cond_10
    invoke-static {}, Labcd/kv;->DW()J

    move-result-wide v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v4

    iget-object v4, v4, Labcd/kv$b;->VH:Ljava/util/List;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/iv;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    aput-object p1, v5, v1

    invoke-static {v2, v3, v4, v5}, Labcd/kv;->j6(JLabcd/iv;[Ljava/lang/Object;)V

    goto :goto_23

    :cond_3b
    return-void
.end method

.method public static j6(Landroid/app/Application;)V
    .registers 7

    const-string v0, "onApplicationCreate"

    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/kv;->j6(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {}, Labcd/kv;->DW()J

    move-result-wide v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v3

    iget-object v3, v3, Labcd/kv$b;->gn:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/iv;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v0, v1, v3, v4}, Labcd/kv;->j6(JLabcd/iv;[Ljava/lang/Object;)V

    goto :goto_1c

    :cond_32
    return-void
.end method

.method public static j6(Lcom/appfour/backbone/api/objects/Market;)V
    .registers 7

    const-string v0, "onInstall"

    const-string v1, ""

    invoke-static {v0, v1}, Labcd/kv;->j6(Ljava/lang/String;Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v1

    iget-object v1, v1, Labcd/kv$b;->FH:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/iv;

    invoke-static {}, Lcom/appfour/backbone/api/Api;->getInstallTime()J

    move-result-wide v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v2

    invoke-static {v3, v4, v1, v5}, Labcd/kv;->j6(JLabcd/iv;[Ljava/lang/Object;)V

    goto :goto_16

    :cond_30
    new-instance p0, Ljava/util/ArrayList;

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v0

    iget-object v0, v0, Labcd/kv$b;->v5:Ljava/util/List;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/iv;

    invoke-static {}, Lcom/appfour/backbone/api/Api;->getInstallTime()J

    move-result-wide v3

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v0, v1}, Labcd/kv;->j6(JLabcd/iv;[Ljava/lang/Object;)V

    goto :goto_3f

    :cond_55
    return-void
.end method

.method public static j6(Lcom/appfour/backbone/api/objects/MarketReferrer;JJ)V
    .registers 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v1

    iget-object v1, v1, Labcd/kv$b;->j6:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/iv;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    invoke-static {p1, p2, v1, v3}, Labcd/kv;->j6(JLabcd/iv;[Ljava/lang/Object;)V

    goto :goto_f

    :cond_25
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object p2

    iget-object p2, p2, Labcd/kv$b;->DW:Ljava/util/List;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_34
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Labcd/iv;

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/MarketReferrer;->getMarket()Lcom/appfour/backbone/api/objects/Market;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p3, p4, p2, v0}, Labcd/kv;->j6(JLabcd/iv;[Ljava/lang/Object;)V

    goto :goto_34

    :cond_4c
    return-void
.end method

.method public static j6(Lcom/appfour/backbone/api/objects/UserActionWindow;)V
    .registers 1

    return-void
.end method

.method public static j6(Lcom/appfour/backbone/api/objects/UserInputAction;)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "onInput"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Labcd/kv;->j6(Ljava/lang/String;Ljava/lang/CharSequence;)V

    sget-boolean v0, Labcd/kv$a;->j6:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    sput-boolean v1, Labcd/kv$a;->Zo:Z

    :cond_1d
    invoke-static {}, Labcd/kv;->DW()J

    move-result-wide v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v4

    iget-object v4, v4, Labcd/kv$b;->U2:Ljava/util/List;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/iv;

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-static {v2, v3, v4, v5}, Labcd/kv;->j6(JLabcd/iv;[Ljava/lang/Object;)V

    goto :goto_30

    :cond_45
    return-void
.end method

.method public static j6(Lcom/appfour/backbone/api/objects/UserLaunchAction;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/appfour/backbone/api/Api;->identifier(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "onLaunched"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Labcd/kv;->j6(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {}, Labcd/kv;->DW()J

    move-result-wide v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v3

    iget-object v3, v3, Labcd/kv$b;->Ws:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/iv;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v0, v1, v3, v4}, Labcd/kv;->j6(JLabcd/iv;[Ljava/lang/Object;)V

    goto :goto_2d

    :cond_43
    return-void
.end method

.method public static j6(Lcom/appfour/backbone/api/objects/UserNotification;)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "onNotification"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Labcd/kv;->j6(Ljava/lang/String;Ljava/lang/CharSequence;)V

    sget-boolean v0, Labcd/kv$a;->j6:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    sput-boolean v1, Labcd/kv$a;->gn:Z

    :cond_1d
    invoke-static {}, Labcd/kv;->DW()J

    move-result-wide v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v4

    iget-object v4, v4, Labcd/kv$b;->aM:Ljava/util/List;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/iv;

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-static {v2, v3, v4, v5}, Labcd/kv;->j6(JLabcd/iv;[Ljava/lang/Object;)V

    goto :goto_30

    :cond_45
    return-void
.end method

.method public static j6(Lcom/appfour/backbone/api/objects/UserNotificationAction;)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "onNotificationAction"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Labcd/kv;->j6(Ljava/lang/String;Ljava/lang/CharSequence;)V

    sget-boolean v0, Labcd/kv$a;->j6:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    sput-boolean v1, Labcd/kv$a;->u7:Z

    :cond_1d
    invoke-static {}, Labcd/kv;->DW()J

    move-result-wide v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v4

    iget-object v4, v4, Labcd/kv$b;->j3:Ljava/util/List;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/iv;

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-static {v2, v3, v4, v5}, Labcd/kv;->j6(JLabcd/iv;[Ljava/lang/Object;)V

    goto :goto_30

    :cond_45
    return-void
.end method

.method public static j6(Lcom/appfour/backbone/api/objects/UserTouchAction;)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "onTouch"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Labcd/kv;->j6(Ljava/lang/String;Ljava/lang/CharSequence;)V

    sget-boolean v0, Labcd/kv$a;->j6:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    sput-boolean v1, Labcd/kv$a;->VH:Z

    :cond_1d
    invoke-static {}, Labcd/kv;->DW()J

    move-result-wide v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v4

    iget-object v4, v4, Labcd/kv$b;->Mr:Ljava/util/List;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/iv;

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-static {v2, v3, v4, v5}, Labcd/kv;->j6(JLabcd/iv;[Ljava/lang/Object;)V

    goto :goto_30

    :cond_45
    return-void
.end method

.method public static j6(Lcom/appfour/backbone/api/objects/UserTouchAction;Landroid/view/MenuItem;)V
    .registers 8

    const-string v0, "onMenuItemSelected"

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/kv;->j6(Ljava/lang/String;Ljava/lang/CharSequence;)V

    sget-boolean v0, Labcd/kv$a;->j6:Z

    if-eqz v0, :cond_46

    sget-object v0, Labcd/kv$a;->J8:Ljava/util/Map;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    sget-object v0, Labcd/kv$a;->J8:Ljava/util/Map;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    sget-object v0, Labcd/kv$a;->J8:Ljava/util/Map;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getActivityClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_46
    invoke-static {}, Labcd/kv;->DW()J

    move-result-wide v0

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v2

    iget-object v2, v2, Labcd/kv$b;->yS:Ljava/util/Map;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v3

    iget-object v3, v3, Labcd/kv$b;->yS:Ljava/util/Map;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7b
    :goto_7b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/iv;

    invoke-virtual {v3}, Labcd/Bv;->EQ()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_7b

    invoke-virtual {v3}, Labcd/Bv;->EQ()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7b

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v0, v1, v3, v4}, Labcd/kv;->j6(JLabcd/iv;[Ljava/lang/Object;)V

    goto :goto_7b

    :cond_a8
    return-void
.end method

.method public static j6(Lcom/appfour/backbone/api/objects/UserTouchAction;Landroid/view/View;)V
    .registers 9

    const-string v0, "onClick"

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/kv;->j6(Ljava/lang/String;Ljava/lang/CharSequence;)V

    sget-boolean v0, Labcd/kv$a;->j6:Z

    if-eqz v0, :cond_46

    sget-object v0, Labcd/kv$a;->tp:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    sget-object v0, Labcd/kv$a;->tp:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    sget-object v0, Labcd/kv$a;->tp:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getActivityClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_46
    invoke-static {}, Labcd/kv;->DW()J

    move-result-wide v0

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v2

    iget-object v2, v2, Labcd/kv$b;->a8:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b2

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v3

    iget-object v3, v3, Labcd/kv$b;->a8:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7b
    :goto_7b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/iv;

    invoke-virtual {v3}, Labcd/Bv;->EQ()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_7b

    invoke-virtual {v3}, Labcd/Bv;->EQ()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_7b

    invoke-virtual {v3}, Labcd/Bv;->EQ()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7b

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getActivity()Landroid/app/Activity;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v0, v1, v3, v4}, Labcd/kv;->j6(JLabcd/iv;[Ljava/lang/Object;)V

    goto :goto_7b

    :cond_b2
    return-void
.end method

.method public static j6(Lcom/appfour/backbone/api/objects/UserTouchAction;Landroid/view/View;Ljava/lang/Object;ILandroid/view/View;)V
    .registers 12

    const-string v0, "onItemClick"

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/kv;->j6(Ljava/lang/String;Ljava/lang/CharSequence;)V

    sget-boolean v0, Labcd/kv$a;->j6:Z

    if-eqz v0, :cond_46

    sget-object v0, Labcd/kv$a;->we:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    sget-object v0, Labcd/kv$a;->we:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    sget-object v0, Labcd/kv$a;->we:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getActivityClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_46
    invoke-static {}, Labcd/kv;->DW()J

    move-result-wide v0

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v2

    iget-object v2, v2, Labcd/kv$b;->rN:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b9

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v3

    iget-object v3, v3, Labcd/kv$b;->rN:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7b
    :goto_7b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/iv;

    invoke-virtual {v3}, Labcd/Bv;->EQ()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_7b

    invoke-virtual {v3}, Labcd/Bv;->EQ()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7b

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getActivity()Landroid/app/Activity;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    const/4 v5, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    aput-object p4, v4, v5

    invoke-static {v0, v1, v3, v4}, Labcd/kv;->j6(JLabcd/iv;[Ljava/lang/Object;)V

    goto :goto_7b

    :cond_b9
    return-void
.end method

.method private static j6(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "Hook"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static j6(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 9

    sget-boolean v0, Labcd/kv$a;->j6:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    sput-boolean v1, Labcd/kv$a;->FH:Z

    :cond_7
    invoke-static {}, Labcd/kv;->DW()J

    move-result-wide v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v4

    iget-object v4, v4, Labcd/kv$b;->we:Ljava/util/List;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/iv;

    invoke-virtual {v4}, Labcd/hv;->FH()Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_36

    invoke-virtual {v4}, Labcd/hv;->FH()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    :cond_36
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    aput-object p1, v5, v1

    invoke-static {v2, v3, v4, v5}, Labcd/kv;->j6(JLabcd/iv;[Ljava/lang/Object;)V

    goto :goto_1a

    :cond_42
    return-void
.end method

.method public static j6(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Labcd/iv;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/iv;

    invoke-static {v0}, Labcd/kv;->j6(Labcd/iv;)V

    goto :goto_4

    :cond_14
    return-void
.end method

.method public static j6(Z)V
    .registers 3

    const/4 v0, 0x1

    sput-boolean v0, Labcd/kv;->DW:Z

    sput-boolean p0, Labcd/kv$a;->j6:Z

    invoke-static {}, Labcd/kv;->DW()J

    move-result-wide v0

    sput-wide v0, Labcd/kv$a;->DW:J

    return-void
.end method

.method private static v5()Z
    .registers 1

    sget-object v0, Labcd/kv;->j6:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18

    sget-object v0, Labcd/kv;->j6:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

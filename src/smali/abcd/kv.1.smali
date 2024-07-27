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
            "Ljava/lang/ThreadLocal",
            "<",
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
    .registers 9

    sget-object v1, Labcd/kv;->FH:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Labcd/kv;->Hw:Labcd/kv$b;

    invoke-virtual {p0}, Labcd/Vu;->tp()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Labcd/Vu;->u7()J

    move-result-wide v4

    invoke-virtual {p0}, Labcd/Vu;->gn()J

    move-result-wide v6

    iget-object v0, v2, Labcd/kv$b;->J0:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v2, Labcd/kv$b;->J0:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {v6, v7, v4, v5, v0}, Labcd/Ev;->j6(JJZ)V

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    invoke-virtual {p0}, Labcd/Iu;->vy()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v2, Labcd/kv$b;->gn:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    invoke-virtual {p0}, Labcd/Iu;->ro()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v2, Labcd/kv$b;->v5:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Labcd/Iu;->nw()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v2, Labcd/kv$b;->FH:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Labcd/Iu;->cn()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v2, Labcd/kv$b;->Hw:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Labcd/Iu;->P8()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v2, Labcd/kv$b;->VH:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Labcd/Iu;->ei()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v2, Labcd/kv$b;->Zo:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Labcd/Iu;->KD()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v2, Labcd/kv$b;->j6:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Labcd/Iu;->SI()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v2, Labcd/kv$b;->DW:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_9
    invoke-virtual {p0}, Labcd/hv;->VH()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Labcd/hv;->Zo()J

    move-result-wide v4

    invoke-virtual {p0}, Labcd/hv;->v5()J

    move-result-wide v6

    iget-object v0, v2, Labcd/kv$b;->J8:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v2, Labcd/kv$b;->J8:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {v6, v7, v4, v5, v0}, Labcd/Ev;->DW(JJZ)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0}, Labcd/Iu;->BT()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v2, Labcd/kv$b;->we:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0}, Labcd/Bv;->Mr()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v2, Labcd/kv$b;->Ws:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0}, Labcd/Bv;->J0()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v2, Labcd/kv$b;->u7:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p0}, Labcd/Bv;->J8()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v2, Labcd/kv$b;->tp:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p0}, Labcd/Bv;->Ws()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v2, Labcd/kv$b;->EQ:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_f
    invoke-virtual {p0}, Labcd/Bv;->rN()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, v2, Labcd/kv$b;->aM:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_10
    invoke-virtual {p0}, Labcd/Bv;->lg()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v2, Labcd/kv$b;->j3:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_11
    invoke-virtual {p0}, Labcd/Bv;->yS()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, v2, Labcd/kv$b;->XL:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_12
    invoke-virtual {p0}, Labcd/Bv;->gW()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, v2, Labcd/kv$b;->QX:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_13
    invoke-virtual {p0}, Labcd/Bv;->XL()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, v2, Labcd/kv$b;->U2:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_14
    invoke-virtual {p0}, Labcd/Bv;->er()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, v2, Labcd/kv$b;->Mr:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_15
    invoke-virtual {p0}, Labcd/Bv;->QX()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, v2, Labcd/kv$b;->a8:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_16
    invoke-virtual {p0}, Labcd/Bv;->U2()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, v2, Labcd/kv$b;->lg:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_17
    invoke-virtual {p0}, Labcd/Bv;->aM()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, v2, Labcd/kv$b;->rN:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_18
    invoke-virtual {p0}, Labcd/Bv;->j3()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, v2, Labcd/kv$b;->er:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_19
    invoke-virtual {p0}, Labcd/Bv;->a8()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v2, Labcd/kv$b;->yS:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
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

    move-result-wide v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v1

    iget-object v1, v1, Labcd/kv$b;->tp:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/iv;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v2, v3, v0, v4}, Labcd/kv;->j6(JLabcd/iv;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static DW(Landroid/app/Activity;Lcom/appfour/backbone/api/objects/InAppProduct;)V
    .registers 9

    const/4 v6, 0x1

    const-string v0, "onInAppProductPurchase"

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/InAppProduct;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/kv;->j6(Ljava/lang/String;Ljava/lang/CharSequence;)V

    sget-boolean v0, Labcd/kv$a;->j6:Z

    if-eqz v0, :cond_0

    sput-boolean v6, Labcd/kv$a;->Hw:Z

    :cond_0
    invoke-static {}, Labcd/kv;->DW()J

    move-result-wide v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v1

    iget-object v1, v1, Labcd/kv$b;->Zo:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/iv;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    aput-object p1, v4, v6

    invoke-static {v2, v3, v0, v4}, Labcd/kv;->j6(JLabcd/iv;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
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

    if-eqz v0, :cond_1

    sget-object v0, Labcd/kv$a;->EQ:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Labcd/kv$a;->EQ:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
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

    :cond_1
    invoke-static {}, Labcd/kv;->DW()J

    move-result-wide v2

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v0

    iget-object v0, v0, Labcd/kv$b;->lg:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v0

    iget-object v0, v0, Labcd/kv$b;->lg:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/iv;

    invoke-virtual {v0}, Labcd/Bv;->EQ()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Labcd/Bv;->EQ()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getActivity()Landroid/app/Activity;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v2, v3, v0, v4}, Labcd/kv;->j6(JLabcd/iv;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static DW(Lcom/appfour/backbone/api/objects/UserTouchAction;Landroid/view/View;Ljava/lang/Object;ILandroid/view/View;)V
    .registers 12

    const-string v0, "onItemLongPress"

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/kv;->j6(Ljava/lang/String;Ljava/lang/CharSequence;)V

    sget-boolean v0, Labcd/kv$a;->j6:Z

    if-eqz v0, :cond_1

    sget-object v0, Labcd/kv$a;->J0:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Labcd/kv$a;->J0:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
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

    :cond_1
    invoke-static {}, Labcd/kv;->DW()J

    move-result-wide v2

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v0

    iget-object v0, v0, Labcd/kv$b;->er:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v0

    iget-object v0, v0, Labcd/kv$b;->er:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/iv;

    invoke-virtual {v0}, Labcd/Bv;->EQ()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Labcd/Bv;->EQ()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

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

    invoke-static {v2, v3, v0, v4}, Labcd/kv;->j6(JLabcd/iv;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static DW(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Labcd/iv;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/iv;

    invoke-static {v0}, Labcd/kv;->DW(Labcd/iv;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static FH()V
    .registers 6

    const/4 v5, 0x0

    const-string v0, "onUpdate"

    const-string v1, ""

    invoke-static {v0, v1}, Labcd/kv;->j6(Ljava/lang/String;Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v1

    iget-object v1, v1, Labcd/kv$b;->Hw:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/iv;

    invoke-static {}, Lcom/appfour/backbone/api/Api;->getLastUpdateTime()J

    move-result-wide v2

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v0, v4}, Labcd/kv;->j6(JLabcd/iv;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v1

    iget-object v1, v1, Labcd/kv$b;->v5:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/iv;

    invoke-static {}, Lcom/appfour/backbone/api/Api;->getLastUpdateTime()J

    move-result-wide v2

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v0, v4}, Labcd/kv;->j6(JLabcd/iv;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
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

    move-result-wide v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v1

    iget-object v1, v1, Labcd/kv$b;->EQ:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/iv;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v2, v3, v0, v4}, Labcd/kv;->j6(JLabcd/iv;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static FH(Lcom/appfour/backbone/api/objects/UserActionWindow;)V
    .registers 7

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserActionWindow;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":editor_handle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
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

    move-result-wide v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v1

    iget-object v1, v1, Labcd/kv$b;->XL:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/iv;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v2, v3, v0, v4}, Labcd/kv;->j6(JLabcd/iv;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static Hw()Labcd/kv$b;
    .registers 2

    sget-object v1, Labcd/kv;->FH:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Labcd/kv;->Hw:Labcd/kv$b;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static Hw(Lcom/appfour/backbone/api/objects/UserActionWindow;)V
    .registers 7

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserActionWindow;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":editor_handle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
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

    move-result-wide v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v1

    iget-object v1, v1, Labcd/kv$b;->QX:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/iv;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v2, v3, v0, v4}, Labcd/kv;->j6(JLabcd/iv;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static j6(Labcd/iv;JJ)J
    .registers 10

    const-wide/16 v0, 0x0

    const/4 v3, -0x1

    invoke-virtual {p0}, Labcd/Iu;->KD()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/appfour/backbone/api/Api;->isMainProcess()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-wide p1

    :cond_1
    move-wide p1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Labcd/Iu;->SI()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/appfour/backbone/api/Api;->isMainProcess()Z

    move-result v2

    if-nez v2, :cond_0

    move-wide p1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Labcd/Iu;->ro()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/appfour/backbone/api/Api;->isMainProcess()Z

    move-result v2

    if-nez v2, :cond_0

    move-wide p1, v0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Labcd/Iu;->cn()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/appfour/backbone/api/Api;->isMainProcess()Z

    move-result v2

    if-nez v2, :cond_0

    move-wide p1, v0

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Labcd/Iu;->nw()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/appfour/backbone/api/Api;->isMainProcess()Z

    move-result v2

    if-nez v2, :cond_0

    move-wide p1, v0

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Labcd/Vu;->tp()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-boolean v0, Labcd/kv$a;->j6:Z

    if-eqz v0, :cond_0

    sget-object v0, Labcd/kv$a;->QX:Ljava/util/Set;

    invoke-virtual {p0}, Labcd/Vu;->gn()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move-wide p1, p3

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Labcd/Iu;->vy()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Labcd/Iu;->P8()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-boolean v0, Labcd/kv$a;->j6:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Labcd/kv$a;->v5:Z

    if-nez v0, :cond_0

    move-wide p1, p3

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Labcd/Iu;->ei()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-boolean v0, Labcd/kv$a;->j6:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Labcd/kv$a;->Hw:Z

    if-nez v0, :cond_0

    move-wide p1, p3

    goto :goto_0

    :cond_9
    invoke-virtual {p0}, Labcd/hv;->VH()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-boolean v0, Labcd/kv$a;->j6:Z

    if-eqz v0, :cond_0

    sget-object v0, Labcd/kv$a;->QX:Ljava/util/Set;

    invoke-virtual {p0}, Labcd/hv;->v5()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move-wide p1, p3

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0}, Labcd/Iu;->BT()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-boolean v0, Labcd/kv$a;->j6:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Labcd/kv$a;->FH:Z

    if-nez v0, :cond_0

    move-wide p1, p3

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0}, Labcd/Bv;->J8()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Labcd/Bv;->Ws()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Labcd/Bv;->J0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Labcd/Bv;->Mr()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Labcd/Bv;->gW()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Labcd/Bv;->rN()Z

    move-result v0

    if-eqz v0, :cond_c

    sget-boolean v0, Labcd/kv$a;->j6:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Labcd/kv$a;->gn:Z

    if-nez v0, :cond_0

    move-wide p1, p3

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0}, Labcd/Bv;->lg()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-boolean v0, Labcd/kv$a;->j6:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Labcd/kv$a;->u7:Z

    if-nez v0, :cond_0

    move-wide p1, p3

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p0}, Labcd/Bv;->yS()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Labcd/Bv;->er()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-boolean v0, Labcd/kv$a;->j6:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Labcd/kv$a;->VH:Z

    if-nez v0, :cond_0

    move-wide p1, p3

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p0}, Labcd/Bv;->XL()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-boolean v0, Labcd/kv$a;->j6:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Labcd/kv$a;->Zo:Z

    if-nez v0, :cond_0

    move-wide p1, p3

    goto/16 :goto_0

    :cond_f
    invoke-virtual {p0}, Labcd/Bv;->QX()Z

    move-result v0

    if-eqz v0, :cond_12

    sget-boolean v0, Labcd/kv$a;->j6:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v0

    if-ne v0, v3, :cond_10

    sget-object v0, Labcd/kv$a;->tp:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-wide p1, p3

    goto/16 :goto_0

    :cond_10
    sget-object v0, Labcd/kv$a;->tp:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Labcd/Bv;->EQ()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Labcd/Bv;->EQ()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_11
    move-wide p1, p3

    goto/16 :goto_0

    :cond_12
    invoke-virtual {p0}, Labcd/Bv;->U2()Z

    move-result v0

    if-eqz v0, :cond_15

    sget-boolean v0, Labcd/kv$a;->j6:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v0

    if-ne v0, v3, :cond_13

    sget-object v0, Labcd/kv$a;->EQ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-wide p1, p3

    goto/16 :goto_0

    :cond_13
    sget-object v0, Labcd/kv$a;->EQ:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Labcd/Bv;->EQ()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Labcd/Bv;->EQ()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_14
    move-wide p1, p3

    goto/16 :goto_0

    :cond_15
    invoke-virtual {p0}, Labcd/Bv;->aM()Z

    move-result v0

    if-eqz v0, :cond_18

    sget-boolean v0, Labcd/kv$a;->j6:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v0

    if-ne v0, v3, :cond_16

    sget-object v0, Labcd/kv$a;->we:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-wide p1, p3

    goto/16 :goto_0

    :cond_16
    sget-object v0, Labcd/kv$a;->we:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Labcd/Bv;->EQ()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Labcd/Bv;->EQ()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_17
    move-wide p1, p3

    goto/16 :goto_0

    :cond_18
    invoke-virtual {p0}, Labcd/Bv;->j3()Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-boolean v0, Labcd/kv$a;->j6:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v0

    if-ne v0, v3, :cond_19

    sget-object v0, Labcd/kv$a;->J0:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-wide p1, p3

    goto/16 :goto_0

    :cond_19
    sget-object v0, Labcd/kv$a;->J0:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Labcd/Bv;->EQ()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Labcd/Bv;->EQ()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1a
    move-wide p1, p3

    goto/16 :goto_0

    :cond_1b
    invoke-virtual {p0}, Labcd/Bv;->a8()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Labcd/kv$a;->j6:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v0

    if-ne v0, v3, :cond_1c

    sget-object v0, Labcd/kv$a;->J8:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-wide p1, p3

    goto/16 :goto_0

    :cond_1c
    sget-object v0, Labcd/kv$a;->J8:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Labcd/Bv;->EQ()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Labcd/Bv;->EQ()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1d
    move-wide p1, p3

    goto/16 :goto_0
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
    .registers 6

    sget-boolean v0, Labcd/kv$a;->j6:Z

    if-nez v0, :cond_0

    sget-boolean v0, Labcd/kv;->DW:Z

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Labcd/kv$a;->Ws:Ljava/util/Set;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private static varargs j6(JLabcd/iv;[Ljava/lang/Object;)V
    .registers 8

    invoke-virtual {p2}, Labcd/yu;->DW()Labcd/jv;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Labcd/kv;->j6:Ljava/lang/ThreadLocal;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    invoke-virtual {p2}, Labcd/yu;->DW()Labcd/jv;

    move-result-object v1

    invoke-interface {v1, p3}, Labcd/jv;->j6([Ljava/lang/Object;)Lcom/appfour/backbone/api/objects/EventData;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    sget-object v1, Labcd/kv;->j6:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    if-eqz v0, :cond_0

    invoke-virtual {p2, p0, p1, v0}, Labcd/yu;->j6(JLcom/appfour/backbone/api/objects/EventData;)V

    :cond_0
    return-void

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {p2, p0, p1, v1}, Labcd/yu;->j6(JLjava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Labcd/kv;->j6:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    throw v0
.end method

.method public static varargs j6(JLjava/lang/Object;[Ljava/lang/Object;)V
    .registers 12

    const/4 v2, 0x0

    invoke-static {}, Labcd/kv;->v5()Z

    move-result v0

    if-nez v0, :cond_1

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

    move-result-wide v4

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v0

    iget-object v0, v0, Labcd/kv$b;->J0:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/iv;

    array-length v1, p3

    add-int/lit8 v1, v1, 0x1

    new-array v7, v1, [Ljava/lang/Object;

    aput-object p2, v7, v2

    move v1, v2

    :goto_1
    array-length v3, p3

    if-ge v1, v3, :cond_0

    add-int/lit8 v3, v1, 0x1

    aget-object v1, p3, v1

    aput-object v1, v7, v3

    move v1, v3

    goto :goto_1

    :cond_0
    invoke-static {v4, v5, v0, v7}, Labcd/kv;->j6(JLabcd/iv;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static varargs j6(JLjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 15

    const/4 v2, 0x0

    invoke-static {}, Labcd/kv;->v5()Z

    move-result v0

    if-nez v0, :cond_4

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

    move-result-wide v4

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v0

    iget-object v0, v0, Labcd/kv$b;->J8:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/iv;

    invoke-virtual {v0}, Labcd/hv;->FH()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Labcd/hv;->FH()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    invoke-virtual {v0}, Labcd/hv;->Hw()J

    move-result-wide v6

    invoke-static {p2, v6, v7}, Labcd/Ev;->DW(Ljava/lang/Object;J)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    array-length v1, p4

    add-int/lit8 v1, v1, 0x2

    new-array v6, v1, [Ljava/lang/Object;

    aput-object p3, v6, v2

    const/4 v1, 0x1

    aput-object p2, v6, v1

    move v1, v2

    :goto_1
    array-length v7, p4

    if-ge v1, v7, :cond_3

    add-int/lit8 v7, v1, 0x2

    aget-object v8, p4, v1

    aput-object v8, v6, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-static {v4, v5, v0, v6}, Labcd/kv;->j6(JLabcd/iv;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static j6(Labcd/iv;)V
    .registers 10

    sget-object v1, Labcd/kv;->FH:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Labcd/kv;->Hw:Labcd/kv$b;

    invoke-virtual {p0}, Labcd/Vu;->tp()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Labcd/Vu;->u7()J

    move-result-wide v2

    invoke-virtual {p0}, Labcd/Vu;->gn()J

    move-result-wide v4

    iget-object v6, v0, Labcd/kv$b;->J0:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, v0, Labcd/kv$b;->J0:Ljava/util/Map;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, v0, Labcd/kv$b;->J0:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    invoke-static {v4, v5, v2, v3, v0}, Labcd/Ev;->j6(JJZ)V

    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    :cond_2
    invoke-virtual {p0}, Labcd/Iu;->vy()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, v0, Labcd/kv$b;->gn:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    invoke-virtual {p0}, Labcd/Iu;->ro()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, v0, Labcd/kv$b;->v5:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Labcd/Iu;->nw()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v0, v0, Labcd/kv$b;->FH:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Labcd/Iu;->cn()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v0, v0, Labcd/kv$b;->Hw:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Labcd/Iu;->P8()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v0, v0, Labcd/kv$b;->VH:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Labcd/Iu;->ei()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v0, v0, Labcd/kv$b;->Zo:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Labcd/Iu;->KD()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v0, v0, Labcd/kv$b;->j6:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_9
    invoke-virtual {p0}, Labcd/Iu;->SI()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v0, v0, Labcd/kv$b;->DW:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_a
    invoke-virtual {p0}, Labcd/hv;->VH()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {p0}, Labcd/hv;->Zo()J

    move-result-wide v2

    invoke-virtual {p0}, Labcd/hv;->v5()J

    move-result-wide v4

    iget-object v6, v0, Labcd/kv$b;->J8:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, v0, Labcd/kv$b;->J8:Ljava/util/Map;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    iget-object v0, v0, Labcd/kv$b;->J8:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    invoke-static {v4, v5, v2, v3, v0}, Labcd/Ev;->DW(JJZ)V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0}, Labcd/Iu;->BT()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v0, v0, Labcd/kv$b;->we:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p0}, Labcd/Bv;->J8()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v0, v0, Labcd/kv$b;->tp:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p0}, Labcd/Bv;->Ws()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v0, v0, Labcd/kv$b;->EQ:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_f
    invoke-virtual {p0}, Labcd/Bv;->J0()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v0, v0, Labcd/kv$b;->u7:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_10
    invoke-virtual {p0}, Labcd/Bv;->Mr()Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v0, v0, Labcd/kv$b;->Ws:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_11
    invoke-virtual {p0}, Labcd/Bv;->rN()Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v0, v0, Labcd/kv$b;->aM:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_12
    invoke-virtual {p0}, Labcd/Bv;->lg()Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v0, v0, Labcd/kv$b;->j3:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_13
    invoke-virtual {p0}, Labcd/Bv;->gW()Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v0, v0, Labcd/kv$b;->QX:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_14
    invoke-virtual {p0}, Labcd/Bv;->yS()Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v0, v0, Labcd/kv$b;->XL:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_15
    invoke-virtual {p0}, Labcd/Bv;->er()Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v0, v0, Labcd/kv$b;->Mr:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_16
    invoke-virtual {p0}, Labcd/Bv;->XL()Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v0, v0, Labcd/kv$b;->U2:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_17
    invoke-virtual {p0}, Labcd/Bv;->QX()Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, v0, Labcd/kv$b;->a8:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    iget-object v2, v0, Labcd/kv$b;->a8:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    iget-object v0, v0, Labcd/kv$b;->a8:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_19
    invoke-virtual {p0}, Labcd/Bv;->U2()Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, v0, Labcd/kv$b;->lg:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    iget-object v2, v0, Labcd/kv$b;->lg:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    iget-object v0, v0, Labcd/kv$b;->lg:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1b
    invoke-virtual {p0}, Labcd/Bv;->aM()Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, v0, Labcd/kv$b;->rN:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    iget-object v2, v0, Labcd/kv$b;->rN:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    iget-object v0, v0, Labcd/kv$b;->rN:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1d
    invoke-virtual {p0}, Labcd/Bv;->j3()Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, v0, Labcd/kv$b;->er:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    iget-object v2, v0, Labcd/kv$b;->er:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    iget-object v0, v0, Labcd/kv$b;->er:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1f
    invoke-virtual {p0}, Labcd/Bv;->a8()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Labcd/kv$b;->yS:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    iget-object v2, v0, Labcd/kv$b;->yS:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    iget-object v0, v0, Labcd/kv$b;->yS:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/Bv;->we()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
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

    move-result-wide v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v1

    iget-object v1, v1, Labcd/kv$b;->u7:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/iv;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v2, v3, v0, v4}, Labcd/kv;->j6(JLabcd/iv;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static j6(Landroid/app/Activity;Lcom/appfour/backbone/api/objects/InAppProduct;)V
    .registers 9

    const/4 v6, 0x1

    const-string v0, "onInAppProductImpression"

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/InAppProduct;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/kv;->j6(Ljava/lang/String;Ljava/lang/CharSequence;)V

    sget-boolean v0, Labcd/kv$a;->j6:Z

    if-eqz v0, :cond_0

    sput-boolean v6, Labcd/kv$a;->v5:Z

    :cond_0
    invoke-static {}, Labcd/kv;->DW()J

    move-result-wide v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v1

    iget-object v1, v1, Labcd/kv$b;->VH:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/iv;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    aput-object p1, v4, v6

    invoke-static {v2, v3, v0, v4}, Labcd/kv;->j6(JLabcd/iv;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static j6(Landroid/app/Application;)V
    .registers 7

    const-string v0, "onApplicationCreate"

    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/kv;->j6(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {}, Labcd/kv;->DW()J

    move-result-wide v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v1

    iget-object v1, v1, Labcd/kv$b;->gn:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/iv;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v2, v3, v0, v4}, Labcd/kv;->j6(JLabcd/iv;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static j6(Lcom/appfour/backbone/api/objects/Market;)V
    .registers 7

    const/4 v5, 0x0

    const-string v0, "onInstall"

    const-string v1, ""

    invoke-static {v0, v1}, Labcd/kv;->j6(Ljava/lang/String;Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v1

    iget-object v1, v1, Labcd/kv$b;->FH:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/iv;

    invoke-static {}, Lcom/appfour/backbone/api/Api;->getInstallTime()J

    move-result-wide v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v5

    invoke-static {v2, v3, v0, v4}, Labcd/kv;->j6(JLabcd/iv;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v1

    iget-object v1, v1, Labcd/kv$b;->v5:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/iv;

    invoke-static {}, Lcom/appfour/backbone/api/Api;->getInstallTime()J

    move-result-wide v2

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v0, v4}, Labcd/kv;->j6(JLabcd/iv;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static j6(Lcom/appfour/backbone/api/objects/MarketReferrer;JJ)V
    .registers 12

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v1

    iget-object v1, v1, Labcd/kv$b;->j6:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/iv;

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-static {p1, p2, v0, v2}, Labcd/kv;->j6(JLabcd/iv;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v1

    iget-object v1, v1, Labcd/kv$b;->DW:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/iv;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/MarketReferrer;->getMarket()Lcom/appfour/backbone/api/objects/Market;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p3, p4, v0, v2}, Labcd/kv;->j6(JLabcd/iv;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static j6(Lcom/appfour/backbone/api/objects/UserActionWindow;)V
    .registers 1

    return-void
.end method

.method public static j6(Lcom/appfour/backbone/api/objects/UserInputAction;)V
    .registers 8

    const/4 v6, 0x1

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

    if-eqz v0, :cond_0

    sput-boolean v6, Labcd/kv$a;->Zo:Z

    :cond_0
    invoke-static {}, Labcd/kv;->DW()J

    move-result-wide v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v1

    iget-object v1, v1, Labcd/kv$b;->U2:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/iv;

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v2, v3, v0, v4}, Labcd/kv;->j6(JLabcd/iv;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
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

    move-result-wide v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v1

    iget-object v1, v1, Labcd/kv$b;->Ws:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/iv;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v2, v3, v0, v4}, Labcd/kv;->j6(JLabcd/iv;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static j6(Lcom/appfour/backbone/api/objects/UserNotification;)V
    .registers 8

    const/4 v6, 0x1

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

    if-eqz v0, :cond_0

    sput-boolean v6, Labcd/kv$a;->gn:Z

    :cond_0
    invoke-static {}, Labcd/kv;->DW()J

    move-result-wide v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v1

    iget-object v1, v1, Labcd/kv$b;->aM:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/iv;

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v2, v3, v0, v4}, Labcd/kv;->j6(JLabcd/iv;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static j6(Lcom/appfour/backbone/api/objects/UserNotificationAction;)V
    .registers 8

    const/4 v6, 0x1

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

    if-eqz v0, :cond_0

    sput-boolean v6, Labcd/kv$a;->u7:Z

    :cond_0
    invoke-static {}, Labcd/kv;->DW()J

    move-result-wide v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v1

    iget-object v1, v1, Labcd/kv$b;->j3:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/iv;

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v2, v3, v0, v4}, Labcd/kv;->j6(JLabcd/iv;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static j6(Lcom/appfour/backbone/api/objects/UserTouchAction;)V
    .registers 8

    const/4 v6, 0x1

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

    if-eqz v0, :cond_0

    sput-boolean v6, Labcd/kv$a;->VH:Z

    :cond_0
    invoke-static {}, Labcd/kv;->DW()J

    move-result-wide v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v1

    iget-object v1, v1, Labcd/kv$b;->Mr:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/iv;

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v2, v3, v0, v4}, Labcd/kv;->j6(JLabcd/iv;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static j6(Lcom/appfour/backbone/api/objects/UserTouchAction;Landroid/view/MenuItem;)V
    .registers 8

    const-string v0, "onMenuItemSelected"

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/kv;->j6(Ljava/lang/String;Ljava/lang/CharSequence;)V

    sget-boolean v0, Labcd/kv$a;->j6:Z

    if-eqz v0, :cond_1

    sget-object v0, Labcd/kv$a;->J8:Ljava/util/Map;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Labcd/kv$a;->J8:Ljava/util/Map;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
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

    :cond_1
    invoke-static {}, Labcd/kv;->DW()J

    move-result-wide v2

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v0

    iget-object v0, v0, Labcd/kv$b;->yS:Ljava/util/Map;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v0

    iget-object v0, v0, Labcd/kv$b;->yS:Ljava/util/Map;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/iv;

    invoke-virtual {v0}, Labcd/Bv;->EQ()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Labcd/Bv;->EQ()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v2, v3, v0, v4}, Labcd/kv;->j6(JLabcd/iv;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static j6(Lcom/appfour/backbone/api/objects/UserTouchAction;Landroid/view/View;)V
    .registers 9

    const-string v0, "onClick"

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/kv;->j6(Ljava/lang/String;Ljava/lang/CharSequence;)V

    sget-boolean v0, Labcd/kv$a;->j6:Z

    if-eqz v0, :cond_1

    sget-object v0, Labcd/kv$a;->tp:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Labcd/kv$a;->tp:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
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

    :cond_1
    invoke-static {}, Labcd/kv;->DW()J

    move-result-wide v2

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v0

    iget-object v0, v0, Labcd/kv$b;->a8:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v0

    iget-object v0, v0, Labcd/kv$b;->a8:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/iv;

    invoke-virtual {v0}, Labcd/Bv;->EQ()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Labcd/Bv;->EQ()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Labcd/Bv;->EQ()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getActivity()Landroid/app/Activity;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v2, v3, v0, v4}, Labcd/kv;->j6(JLabcd/iv;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static j6(Lcom/appfour/backbone/api/objects/UserTouchAction;Landroid/view/View;Ljava/lang/Object;ILandroid/view/View;)V
    .registers 12

    const-string v0, "onItemClick"

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/kv;->j6(Ljava/lang/String;Ljava/lang/CharSequence;)V

    sget-boolean v0, Labcd/kv$a;->j6:Z

    if-eqz v0, :cond_1

    sget-object v0, Labcd/kv$a;->we:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Labcd/kv$a;->we:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
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

    :cond_1
    invoke-static {}, Labcd/kv;->DW()J

    move-result-wide v2

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v0

    iget-object v0, v0, Labcd/kv$b;->rN:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v0

    iget-object v0, v0, Labcd/kv$b;->rN:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/iv;

    invoke-virtual {v0}, Labcd/Bv;->EQ()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Labcd/Bv;->EQ()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

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

    invoke-static {v2, v3, v0, v4}, Labcd/kv;->j6(JLabcd/iv;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static j6(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "Hook"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static j6(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 9

    const/4 v6, 0x1

    sget-boolean v0, Labcd/kv$a;->j6:Z

    if-eqz v0, :cond_0

    sput-boolean v6, Labcd/kv$a;->FH:Z

    :cond_0
    invoke-static {}, Labcd/kv;->DW()J

    move-result-wide v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Labcd/kv;->Hw()Labcd/kv$b;

    move-result-object v1

    iget-object v1, v1, Labcd/kv$b;->we:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/iv;

    invoke-virtual {v0}, Labcd/hv;->FH()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Labcd/hv;->FH()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_2
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    aput-object p1, v4, v6

    invoke-static {v2, v3, v0, v4}, Labcd/kv;->j6(JLabcd/iv;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static j6(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Labcd/iv;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/iv;

    invoke-static {v0}, Labcd/kv;->j6(Labcd/iv;)V

    goto :goto_0

    :cond_0
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

    if-eqz v0, :cond_0

    sget-object v0, Labcd/kv;->j6:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

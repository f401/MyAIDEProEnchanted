.class public Labcd/Bk;
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
.field private FH:Ljava/util/Map;
    .annotation runtime Labcd/ru;
        field = 0x2a675a58ca3e0850L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/aide/common/u;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Bk;

    const-wide v1, 0x1326a32fbfacc290L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x2bb38091e3d190e3L  # 3.566527766110863E-98

    :try_start_6
    sget-boolean v3, Labcd/Bk;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Labcd/Bk;->FH:Ljava/util/Map;
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v3

    sget-boolean v4, Labcd/Bk;->DW:Z

    if-eqz v4, :cond_20

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v3
.end method

.method private DW(Labcd/Wl;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x2e9c76d416931b25L
    .end annotation

    const-wide v0, 0x2316d686cb05a88bL

    :try_start_5
    sget-boolean v2, Labcd/Bk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    instance-of v2, p1, Labcd/Xl;

    if-eqz v2, :cond_18

    move-object v2, p1

    check-cast v2, Labcd/Xl;

    invoke-interface {v2}, Labcd/Xl;->v5()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    return-object p1

    :catchall_21
    move-exception v2

    sget-boolean v3, Labcd/Bk;->DW:Z

    if-eqz v3, :cond_29

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    throw v2
.end method

.method private FH()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x2a38a0d1ce9beca0L
    .end annotation

    const-wide v0, -0x89968c3a64aec8cL

    :try_start_5
    sget-boolean v2, Labcd/Bk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_51

    :cond_c
    :try_start_c
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    const-string v3, "KeybindingsService_2"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Labcd/Bk;->FH:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/aide/common/u;

    invoke-virtual {v4}, Lcom/aide/common/u;->Hw()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_28

    :cond_48
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_4b
    .catchall {:try_start_c .. :try_end_4b} :catchall_4c

    goto :goto_50

    :catchall_4c
    move-exception v2

    :try_start_4d
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_51

    :goto_50
    return-void

    :catchall_51
    move-exception v2

    sget-boolean v3, Labcd/Bk;->DW:Z

    if-eqz v3, :cond_59

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_59
    goto :goto_5b

    :goto_5a
    throw v2

    :goto_5b
    goto :goto_5a
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v0, 0x4924a010c3b684fbL  # 2.299792871923596E44

    :try_start_5
    sget-boolean v2, Labcd/Bk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Bk;->FH:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    invoke-direct {p0}, Labcd/Bk;->FH()V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Labcd/Bk;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public j6(Labcd/Wl;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/Wl;",
            ")",
            "Ljava/util/List<",
            "Lcom/aide/common/u;",
            ">;"
        }
    .end annotation

    const-wide v0, -0x5401b5e36928100L

    :try_start_5
    sget-boolean v2, Labcd/Bk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Labcd/Bk;->FH:Ljava/util/Map;

    invoke-direct {p0, p1}, Labcd/Bk;->DW(Labcd/Wl;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/common/u;

    if-eqz v3, :cond_23

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_38

    :cond_23
    invoke-interface {p1}, Labcd/Wl;->FH()Lcom/aide/common/u;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    instance-of v3, p1, Labcd/am;

    if-eqz v3, :cond_38

    move-object v3, p1

    check-cast v3, Labcd/am;

    invoke-interface {v3}, Labcd/am;->Hw()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_39

    :cond_38
    :goto_38
    return-object v2

    :catchall_39
    move-exception v2

    sget-boolean v3, Labcd/Bk;->DW:Z

    if-eqz v3, :cond_41

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_41
    throw v2
.end method

.method public j6()V
    .registers 7

    const-wide v0, 0x1850bf1e5645426fL

    :try_start_5
    sget-boolean v2, Labcd/Bk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_54

    :cond_c
    :try_start_c
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    const-string v3, "KeybindingsService_2"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_23
    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_23

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/aide/common/u;->j6(Ljava/lang/String;)Lcom/aide/common/u;

    move-result-object v4

    if-eqz v4, :cond_23

    iget-object v5, p0, Labcd/Bk;->FH:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4e
    .catchall {:try_start_c .. :try_end_4e} :catchall_4f

    goto :goto_23

    :catchall_4f
    move-exception v2

    :try_start_50
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_54

    :cond_53
    return-void

    :catchall_54
    move-exception v2

    sget-boolean v3, Labcd/Bk;->DW:Z

    if-eqz v3, :cond_5c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_5c
    goto :goto_5e

    :goto_5d
    throw v2

    :goto_5e
    goto :goto_5d
.end method

.method public j6(Labcd/Wl;Lcom/aide/common/u;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Bk;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x93b9e85861d9cecL

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    if-nez p2, :cond_18

    iget-object v0, p0, Labcd/Bk;->FH:Ljava/util/Map;

    invoke-direct {p0, p1}, Labcd/Bk;->DW(Labcd/Wl;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    :cond_18
    iget-object v0, p0, Labcd/Bk;->FH:Ljava/util/Map;

    invoke-direct {p0, p1}, Labcd/Bk;->DW(Labcd/Wl;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_21
    invoke-direct {p0}, Labcd/Bk;->FH()V
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_25

    return-void

    :catchall_25
    move-exception v0

    sget-boolean v1, Labcd/Bk;->DW:Z

    if-eqz v1, :cond_36

    const-wide v2, -0x93b9e85861d9cecL

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_36
    throw v0
.end method

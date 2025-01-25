.class public Labcd/Ti;
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


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Ti;

    const-wide v1, 0x52a21aef21e89338L  # 1.1525302163522628E90

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x170d6e4600618fe8L  # -3.470175220366117E197

    :try_start_6
    sget-boolean v3, Labcd/Ti;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/Ti;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static DW(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Ti;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x1acd809796bc9053L  # -2.998298435100034E179

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1, v0, v1}, Labcd/Ti;->j6(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/List;)V
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    return-object v1

    :catchall_1b
    move-exception v0

    sget-boolean v1, Labcd/Ti;->DW:Z

    if-eqz v1, :cond_2c

    const-wide v2, -0x1acd809796bc9053L  # -2.998298435100034E179

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    throw v0
.end method

.method public static j6(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Ti;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x2d222e85296e3169L  # -1.5185227589570616E91

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, p1, v0}, Labcd/Ti;->j6(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    return-object v0

    :catchall_16
    move-exception v0

    sget-boolean v1, Labcd/Ti;->DW:Z

    if-eqz v1, :cond_27

    const-wide v2, -0x2d222e85296e3169L  # -1.5185227589570616E91

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v0
.end method

.method private static j6(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .registers 11
    .annotation runtime Labcd/su;
        method = 0xeb45f99d55592c8L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Ti;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x1822aff37037750cL  # -2.0896471111360875E192

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    invoke-interface {p2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_23

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_23
    invoke-interface {p2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p1, p2}, Labcd/Ti;->j6(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_39
    .catchall {:try_start_0 .. :try_end_39} :catchall_3b

    goto :goto_2a

    :cond_3a
    return-void

    :catchall_3b
    move-exception v0

    sget-boolean v1, Labcd/Ti;->DW:Z

    if-eqz v1, :cond_4d

    const-wide v2, -0x1822aff37037750cL  # -2.0896471111360875E192

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4d
    goto :goto_4f

    :goto_4e
    throw v0

    :goto_4f
    goto :goto_4e
.end method

.method private static j6(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/List;)V
    .registers 13
    .annotation runtime Labcd/su;
        method = -0x1fc90881364bf569L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Ti;->j6:Z

    if-eqz v0, :cond_11

    const-wide v1, -0x4363c02b565775ebL  # -9.800958213661056E-17

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-interface {p2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {p3, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_23
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p1, p2, p3}, Labcd/Ti;->j6(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/List;)V
    :try_end_3c
    .catchall {:try_start_0 .. :try_end_3c} :catchall_3e

    goto :goto_2d

    :cond_3d
    return-void

    :catchall_3e
    move-exception v0

    sget-boolean v1, Labcd/Ti;->DW:Z

    if-eqz v1, :cond_51

    const-wide v2, -0x4363c02b565775ebL  # -9.800958213661056E-17

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_51
    goto :goto_53

    :goto_52
    throw v0

    :goto_53
    goto :goto_52
.end method

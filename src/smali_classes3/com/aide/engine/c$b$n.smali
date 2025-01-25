.class Lcom/aide/engine/c$b$n;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/mb;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/engine/c$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "n"
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
.field final FH:Lcom/aide/engine/c$b;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/engine/c$b$n;

    const-wide v1, 0x691f74fdd39f73L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Lcom/aide/engine/c$b;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x132633b9fd583acL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x254c06777519a708L

    :try_start_6
    sget-boolean v3, Lcom/aide/engine/c$b$n;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/aide/engine/c$b$n;->FH:Lcom/aide/engine/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Lcom/aide/engine/c$b$n;->DW:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method

.method synthetic constructor <init>(Lcom/aide/engine/c$b;Lcom/aide/engine/b;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$n;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x57b0684bd6d31245L  # -1.603603259631656E-114

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Lcom/aide/engine/c$b$n;-><init>(Lcom/aide/engine/c$b;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$n;->DW:Z

    if-eqz v1, :cond_22

    const-wide v2, -0x57b0684bd6d31245L  # -1.603603259631656E-114

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v0
.end method


# virtual methods
.method public j6(Labcd/Da;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x2d8f0056b0a75cbL
    .end annotation

    const-wide v0, -0x3d0499dcff13e18L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$n;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$n;->FH:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/aide/engine/c$b$n;->FH:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v2

    invoke-virtual {p1}, Labcd/Da;->XL()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/aide/engine/M;->Zo(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_26

    :cond_25
    return-void

    :catchall_26
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$n;->DW:Z

    if-eqz v3, :cond_2e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    throw v2
.end method

.method public j6(Labcd/Da;IIIIIIII)V
    .registers 23
    .annotation runtime Labcd/su;
        method = -0x156c82f151e19a18L
    .end annotation

    move-object v0, p0

    sget-boolean v1, Lcom/aide/engine/c$b$n;->j6:Z

    if-eqz v1, :cond_65

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v2, Ljava/lang/Integer;

    move v5, p2

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/Integer;

    move/from16 v6, p3

    invoke-direct {v2, v6}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/Integer;

    move/from16 v7, p4

    invoke-direct {v2, v7}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/Integer;

    move/from16 v8, p5

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/Integer;

    move/from16 v9, p6

    invoke-direct {v2, v9}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/Integer;

    move/from16 v10, p7

    invoke-direct {v2, v10}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x6

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/Integer;

    move/from16 v11, p8

    invoke-direct {v2, v11}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x7

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/Integer;

    move/from16 v12, p9

    invoke-direct {v2, v12}, Ljava/lang/Integer;-><init>(I)V

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-wide v2, -0x224e118bc7522badL  # -2.186621564959194E143

    invoke-static {v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_74

    :cond_65
    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    :goto_74
    iget-object v1, v0, Lcom/aide/engine/c$b$n;->FH:Lcom/aide/engine/c$b;

    iget-object v1, v1, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v1}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v1

    if-eqz v1, :cond_9c

    iget-object v1, v0, Lcom/aide/engine/c$b$n;->FH:Lcom/aide/engine/c$b;

    iget-object v1, v1, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v1}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v3

    invoke-virtual {p1}, Labcd/Da;->XL()Ljava/lang/String;

    move-result-object v4

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-interface/range {v3 .. v12}, Lcom/aide/engine/M;->j6(Ljava/lang/String;IIIIIIII)V

    :cond_9c
    return-void
.end method

.method public j6(Labcd/na;IIIIZ)V
    .registers 15
    .annotation runtime Labcd/su;
        method = -0x1634f136556f335L
    .end annotation

    sget-boolean v0, Lcom/aide/engine/c$b$n;->j6:Z

    if-eqz v0, :cond_3a

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p5}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p6}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-wide v1, -0x1b41bfd2d1cd3d40L  # -1.915370279405444E177

    invoke-static {v1, v2, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_3a
    iget-object v0, p0, Lcom/aide/engine/c$b$n;->FH:Lcom/aide/engine/c$b;

    iget-object v0, v0, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v0}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v0

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/aide/engine/c$b$n;->FH:Lcom/aide/engine/c$b;

    iget-object v0, v0, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v0}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v1

    invoke-interface {p1}, Labcd/na;->j6()Ljava/lang/String;

    move-result-object v2

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/aide/engine/M;->j6(Ljava/lang/String;IIIIZ)V

    :cond_58
    return-void
.end method

.class Lcom/aide/engine/c$b$o;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/nb;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/engine/c$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "o"
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
.field private FH:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = -0xd28e8f816424c6bL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aide/engine/SourceEntity;",
            ">;"
        }
    .end annotation
.end field

.field final Hw:Lcom/aide/engine/c$b;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/engine/c$b$o;

    const-wide v1, -0x2248134fac3f228L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Lcom/aide/engine/c$b;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x9afcb12c223fe98L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x10a4f23d90140c78L

    :try_start_6
    sget-boolean v3, Lcom/aide/engine/c$b$o;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/aide/engine/c$b$o;->Hw:Lcom/aide/engine/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Lcom/aide/engine/c$b$o;->DW:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method

.method synthetic constructor <init>(Lcom/aide/engine/c$b;Lcom/aide/engine/b;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$o;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x50afa73b81433433L  # 4.691451069675676E80

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Lcom/aide/engine/c$b$o;-><init>(Lcom/aide/engine/c$b;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$o;->DW:Z

    if-eqz v1, :cond_22

    const-wide v2, 0x50afa73b81433433L  # 4.691451069675676E80

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v0
.end method


# virtual methods
.method public DW()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x27c734c681ad2ea9L
    .end annotation

    const-wide v0, -0x5841cfc794318ebL

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$o;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$o;->Hw:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    iget-object v3, p0, Lcom/aide/engine/c$b$o;->FH:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/aide/engine/c;->FH(Lcom/aide/engine/c;Ljava/util/List;)Ljava/util/List;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aide/engine/c$b$o;->FH:Ljava/util/List;
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$o;->DW:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method public j6()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1f68172f27d51520L
    .end annotation

    const-wide v0, -0x2df28a8fd1724294L  # -1.8313146767368221E87

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$o;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/aide/engine/c$b$o;->FH:Ljava/util/List;
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$o;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public j6(Labcd/Aa;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x9d96c8d6840714dL
    .end annotation

    const-wide v0, -0x40974706748a60fL

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$o;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1}, Labcd/Aa;->rN()Z

    move-result v2

    if-eqz v2, :cond_1f

    new-instance v2, Lcom/aide/engine/SourceEntity;

    iget-object v3, p0, Lcom/aide/engine/c$b$o;->Hw:Lcom/aide/engine/c$b;

    invoke-static {v3}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, p1, v4}, Lcom/aide/engine/SourceEntity;-><init>(Labcd/La;Labcd/Aa;I)V

    goto :goto_2a

    :cond_1f
    new-instance v2, Lcom/aide/engine/SourceEntity;

    iget-object v3, p0, Lcom/aide/engine/c$b$o;->Hw:Lcom/aide/engine/c$b;

    invoke-static {v3}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/aide/engine/SourceEntity;-><init>(Labcd/La;Labcd/Aa;)V

    :goto_2a
    iget-object v3, p0, Lcom/aide/engine/c$b$o;->FH:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_30

    return-void

    :catchall_30
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$o;->DW:Z

    if-eqz v3, :cond_38

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_38
    throw v2
.end method

.method public j6(Labcd/Za;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x47856d116b770374L
    .end annotation

    const-wide v0, -0x2f99a28074c65f88L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$o;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$o;->FH:Ljava/util/List;

    new-instance v3, Lcom/aide/engine/SourceEntity;

    iget-object v4, p0, Lcom/aide/engine/c$b$o;->Hw:Lcom/aide/engine/c$b;

    invoke-static {v4}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, p1}, Lcom/aide/engine/SourceEntity;-><init>(Labcd/La;ZLabcd/Za;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1e

    return-void

    :catchall_1e
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$o;->DW:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method public j6(Ljava/lang/String;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x36b267b96f61e118L
    .end annotation

    const-wide v0, -0x190618ae237c218cL  # -1.1270866793338365E188

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$o;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$o;->FH:Ljava/util/List;

    new-instance v3, Lcom/aide/engine/SourceEntity;

    const/4 v4, 0x1

    invoke-direct {v3, p1, v4}, Lcom/aide/engine/SourceEntity;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$o;->DW:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v2
.end method

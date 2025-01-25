.class Lcom/aide/engine/c$b$l;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/kb;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/engine/c$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "l"
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
.field private FH:Ljava/util/ArrayList;
    .annotation runtime Labcd/ru;
        field = -0x25fe06d223ba7b00L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/aide/engine/SourceEntity;",
            ">;"
        }
    .end annotation
.end field

.field private Hw:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0xb2b948565f6ef27L
    .end annotation
.end field

.field final v5:Lcom/aide/engine/c$b;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/engine/c$b$l;

    const-wide v1, -0x2822c75811b34c4L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Lcom/aide/engine/c$b;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x96571224ac56f09L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x4415d239b77c8175L  # 1.0063249152872843E20

    :try_start_6
    sget-boolean v3, Lcom/aide/engine/c$b$l;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/aide/engine/c$b$l;->v5:Lcom/aide/engine/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Lcom/aide/engine/c$b$l;->DW:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method

.method synthetic constructor <init>(Lcom/aide/engine/c$b;Lcom/aide/engine/b;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$l;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x9e289f09ee4bd58L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Lcom/aide/engine/c$b$l;-><init>(Lcom/aide/engine/c$b;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$l;->DW:Z

    if-eqz v1, :cond_22

    const-wide v2, 0x9e289f09ee4bd58L

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
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x3d971c9bfe864a40L
    .end annotation

    const-wide v0, -0x11f49c06b7d2ada0L  # -1.2376194855945934E222

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$l;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$l;->v5:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/aide/engine/c$b$l;->v5:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/engine/c$b$l;->Hw:Ljava/lang/String;

    iget-object v4, p0, Lcom/aide/engine/c$b$l;->FH:Ljava/util/ArrayList;

    invoke-interface {v2, v3, v4}, Lcom/aide/engine/M;->j6(Ljava/lang/String;Ljava/util/List;)V
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_26

    :cond_25
    return-void

    :catchall_26
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$l;->DW:Z

    if-eqz v3, :cond_2e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2e
    throw v2
.end method

.method public FH()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x123fa36ec3874800L
    .end annotation

    const-wide v0, -0x317259a6072d84a8L  # -2.5579433794643205E70

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$l;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$l;->v5:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v2

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/aide/engine/c$b$l;->v5:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/engine/c$b$l;->Hw:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/aide/engine/M;->Hw(Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_24

    :cond_23
    return-void

    :catchall_24
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$l;->DW:Z

    if-eqz v3, :cond_2c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2c
    throw v2
.end method

.method public Hw()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x3995b52c276cfb48L
    .end annotation

    const-wide v0, -0x62fc75d34049c3f4L  # -6.471893170266416E-169

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$l;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$l;->v5:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/aide/engine/c$b$l;->v5:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/engine/c$b$l;->Hw:Ljava/lang/String;

    iget-object v4, p0, Lcom/aide/engine/c$b$l;->FH:Ljava/util/ArrayList;

    invoke-interface {v2, v3, v4}, Lcom/aide/engine/M;->DW(Ljava/lang/String;Ljava/util/List;)V
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_26

    :cond_25
    return-void

    :catchall_26
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$l;->DW:Z

    if-eqz v3, :cond_2e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2e
    throw v2
.end method

.method public j6(Labcd/Aa;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x29e39b40adf9af30L
    .end annotation

    const-wide v0, -0x1a5403e0bea143a0L  # -5.806178936498689E181

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$l;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/engine/SourceEntity;

    iget-object v3, p0, Lcom/aide/engine/c$b$l;->v5:Lcom/aide/engine/c$b;

    invoke-static {v3}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/aide/engine/SourceEntity;-><init>(Labcd/La;Labcd/Aa;)V

    iget-object v3, p0, Lcom/aide/engine/c$b$l;->v5:Lcom/aide/engine/c$b;

    invoke-static {v3}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aide/engine/SourceEntity;->j6(Labcd/La;)V

    iget-object v3, p0, Lcom/aide/engine/c$b$l;->FH:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_26

    return-void

    :catchall_26
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$l;->DW:Z

    if-eqz v3, :cond_2e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    throw v2
.end method

.method public j6(Labcd/Da;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x26606180e378b7bcL
    .end annotation

    const-wide v0, -0x28cdf0c4a7ea0418L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$l;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/engine/SourceEntity;

    iget-object v3, p0, Lcom/aide/engine/c$b$l;->v5:Lcom/aide/engine/c$b;

    invoke-static {v3}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/aide/engine/SourceEntity;-><init>(Labcd/ea;Labcd/Da;)V

    iget-object v3, p0, Lcom/aide/engine/c$b$l;->FH:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$l;->DW:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public j6(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x2d5a2a989b7a44ffL
    .end annotation

    const-wide v0, 0xf4811515dd6bd7bL  # 4.730935670385778E-235

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$l;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/aide/engine/c$b$l;->FH:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/aide/engine/c$b$l;->Hw:Ljava/lang/String;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$l;->DW:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public v5()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x590806c1e82a4fc8L
    .end annotation

    const-wide v0, -0x4af31b959efaf914L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$l;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$l;->v5:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v2

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/aide/engine/c$b$l;->v5:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/engine/c$b$l;->Hw:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/aide/engine/M;->v5(Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_24

    :cond_23
    return-void

    :catchall_24
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$l;->DW:Z

    if-eqz v3, :cond_2c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2c
    throw v2
.end method

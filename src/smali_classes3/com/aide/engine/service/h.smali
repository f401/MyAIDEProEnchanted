.class Lcom/aide/engine/service/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/engine/a;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/engine/service/l;->j6(Lcom/aide/engine/service/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final FH:Lcom/aide/engine/service/m;

.field final Hw:Lcom/aide/engine/service/l;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x1bd72709e548b1bdL

    const-wide v2, 0x12ff82881c7ab5edL

    const-class v4, Lcom/aide/engine/service/h;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/engine/service/l;Lcom/aide/engine/service/m;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/engine/service/h;->Hw:Lcom/aide/engine/service/l;

    iput-object p2, p0, Lcom/aide/engine/service/h;->FH:Lcom/aide/engine/service/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public VH(Z)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x366f3a9cef5a4017L
    .end annotation

    const-wide v0, -0x2589b16ed9e59480L  # -6.04000702778937E127

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/h;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_17

    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/aide/engine/service/h;->FH:Lcom/aide/engine/service/m;

    invoke-interface {v2, p1}, Lcom/aide/engine/service/m;->VH(Z)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_12
    .catchall {:try_start_c .. :try_end_11} :catchall_17

    goto :goto_16

    :catch_12
    move-exception v2

    :try_start_13
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    :goto_16
    return-void

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/h;->DW:Z

    if-eqz v3, :cond_24

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method public j6()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x2843c560cd274549L
    .end annotation

    const-wide v0, 0x10bd6c8cb5804f4L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/h;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/h;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public j6(Ljava/io/IOException;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x15d58e39e3e21b38L
    .end annotation

    const-wide v0, -0x6d57e4a5fda0fdfL  # -4.58861210300723E275

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/h;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_1b

    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/aide/engine/service/h;->FH:Lcom/aide/engine/service/m;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/aide/engine/service/m;->Zo(Ljava/lang/String;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_16
    .catchall {:try_start_c .. :try_end_15} :catchall_1b

    goto :goto_1a

    :catch_16
    move-exception v2

    :try_start_17
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    :goto_1a
    return-void

    :catchall_1b
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/h;->DW:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method public j6(Ljava/util/Set;Ljava/util/Map;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x7a9d9c62b1d7593L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/h;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x4835b20826e87258L  # 7.382574616112177E39

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/h;->DW:Z

    if-eqz v1, :cond_1e

    const-wide v2, 0x4835b20826e87258L  # 7.382574616112177E39

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v0
.end method

.method public j6(Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x18beeb0800d80cf8L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/h;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, -0xc5ca09d21040dcdL

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    :cond_10
    return-void

    :catchall_11
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/h;->DW:Z

    if-eqz v1, :cond_23

    const-wide v2, -0xc5ca09d21040dcdL

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v0
.end method

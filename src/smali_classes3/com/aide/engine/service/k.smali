.class Lcom/aide/engine/service/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/engine/Q;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/engine/service/l;->j6(Lcom/aide/engine/service/w;)V
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
.field final FH:Lcom/aide/engine/service/w;

.field final Hw:Lcom/aide/engine/service/l;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x1bd72709e548b1bdL

    const-wide v2, 0x1300b2f7d6bb11f8L

    const-class v4, Lcom/aide/engine/service/k;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/engine/service/l;Lcom/aide/engine/service/w;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/engine/service/k;->Hw:Lcom/aide/engine/service/l;

    iput-object p2, p0, Lcom/aide/engine/service/k;->FH:Lcom/aide/engine/service/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1f4c0a098b362520L
    .end annotation

    const-wide v0, -0xde891bba831e1ddL  # -3.905911200542414E241

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/k;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_17

    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/aide/engine/service/k;->FH:Lcom/aide/engine/service/w;

    invoke-interface {v2, p1}, Lcom/aide/engine/service/w;->DW(Ljava/lang/String;)V
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

    sget-boolean v3, Lcom/aide/engine/service/k;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public br()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0xf3843ec9fe841c4L
    .end annotation

    const-wide v0, 0x2ee5e6e647bbd313L  # 9.019324449902418E-83

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/k;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_17

    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/aide/engine/service/k;->FH:Lcom/aide/engine/service/w;

    invoke-interface {v2}, Lcom/aide/engine/service/w;->br()V
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

    sget-boolean v3, Lcom/aide/engine/service/k;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public j6(Ljava/util/List;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x2f4f23d8ef6cd9dbL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aide/engine/FindResult;",
            ">;)V"
        }
    .end annotation

    const-wide v0, -0xba11b0efcda2de0L  # -3.539115850093555E252

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/k;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_17

    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/aide/engine/service/k;->FH:Lcom/aide/engine/service/w;

    invoke-interface {v2, p1}, Lcom/aide/engine/service/w;->j6(Ljava/util/List;)V
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

    sget-boolean v3, Lcom/aide/engine/service/k;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

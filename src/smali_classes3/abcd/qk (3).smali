.class Labcd/qk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/rk;->run()V
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
.field final FH:Ljava/util/Map;

.field final Hw:Landroid/app/PendingIntent;

.field final v5:Labcd/rk;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x6e165979867cddf9L

    const-wide v2, -0x1063f173030b5c71L  # -4.2537841661984455E229

    const-class v4, Labcd/qk;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/rk;Ljava/util/Map;Landroid/app/PendingIntent;)V
    .registers 4

    iput-object p1, p0, Labcd/qk;->v5:Labcd/rk;

    iput-object p2, p0, Labcd/qk;->FH:Ljava/util/Map;

    iput-object p3, p0, Labcd/qk;->Hw:Landroid/app/PendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x7dc8ca1e9b495b4L
    .end annotation

    const-wide v0, -0x531db1947ce61749L  # -1.7552241246352554E-92

    :try_start_5
    sget-boolean v2, Labcd/qk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/qk;->v5:Labcd/rk;

    iget-object v2, v2, Labcd/rk;->v5:Labcd/yk;

    invoke-static {v2}, Labcd/yk;->j6(Labcd/yk;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Labcd/qk;->FH:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v2, p0, Labcd/qk;->v5:Labcd/rk;

    iget-object v2, v2, Labcd/rk;->v5:Labcd/yk;

    iget-object v3, p0, Labcd/qk;->Hw:Landroid/app/PendingIntent;

    invoke-static {v2, v3}, Labcd/yk;->j6(Labcd/yk;Landroid/app/PendingIntent;)V
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_23

    return-void

    :catchall_23
    move-exception v2

    sget-boolean v3, Labcd/qk;->DW:Z

    if-eqz v3, :cond_2b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2b
    throw v2
.end method

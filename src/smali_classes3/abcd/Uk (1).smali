.class Labcd/Uk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Zk;->FH(Ljava/lang/String;)V
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
.field final FH:Ljava/lang/String;

.field final Hw:Ljava/lang/String;

.field final v5:Labcd/Zk;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x6fdf4c80cc5fd710L  # -5.378732710479451E-231

    const-wide v2, 0xa8b78b30f9d9968L

    const-class v4, Labcd/Uk;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/Zk;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Labcd/Uk;->v5:Labcd/Zk;

    iput-object p2, p0, Labcd/Uk;->FH:Ljava/lang/String;

    iput-object p3, p0, Labcd/Uk;->Hw:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x493b501afa3a477L
    .end annotation

    const-wide v0, 0xe7cd20f6c31e597L  # 6.915533401041606E-239

    :try_start_5
    sget-boolean v2, Labcd/Uk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Uk;->v5:Labcd/Zk;

    iget-object v3, p0, Labcd/Uk;->FH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Labcd/Zk;->er(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_20

    :try_start_13
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v2

    iget-object v3, p0, Labcd/Uk;->Hw:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Labcd/Nk;->j6(Ljava/lang/String;Z)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1d} :catch_1e
    .catchall {:try_start_13 .. :try_end_1d} :catchall_20

    goto :goto_1f

    :catch_1e
    move-exception v0

    :goto_1f
    return-void

    :catchall_20
    move-exception v2

    sget-boolean v3, Labcd/Uk;->DW:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method

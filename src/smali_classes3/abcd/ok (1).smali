.class Labcd/ok;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/yk;->j6(Ljava/util/Set;Labcd/yk$a;)V
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
.field final FH:Ljava/util/Set;

.field final Hw:Labcd/yk$a;

.field final v5:Labcd/yk;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x6e165979867cddf9L

    const-wide v2, 0x59ab15a91efbc2cL

    const-class v4, Labcd/ok;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/yk;Ljava/util/Set;Labcd/yk$a;)V
    .registers 4

    iput-object p1, p0, Labcd/ok;->v5:Labcd/yk;

    iput-object p2, p0, Labcd/ok;->FH:Ljava/util/Set;

    iput-object p3, p0, Labcd/ok;->Hw:Labcd/yk$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0xb2d27d6d16024d0L
    .end annotation

    const-wide v0, 0x20ab633727d453e0L

    :try_start_5
    sget-boolean v2, Labcd/ok;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_66

    :cond_c
    :try_start_c
    iget-object v2, p0, Labcd/ok;->v5:Labcd/yk;

    invoke-static {v2}, Labcd/yk;->Hw(Labcd/yk;)V

    iget-object v2, p0, Labcd/ok;->v5:Labcd/yk;

    iget-object v3, p0, Labcd/ok;->FH:Ljava/util/Set;

    invoke-static {v2, v3}, Labcd/yk;->j6(Labcd/yk;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Labcd/ok;->Hw:Labcd/yk$a;

    invoke-interface {v3, v2}, Labcd/yk$a;->j6(Ljava/util/Map;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1e} :catch_5a
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_1e} :catch_4f
    .catch Labcd/yk$b; {:try_start_c .. :try_end_1e} :catch_3f
    .catch Labcd/yk$c; {:try_start_c .. :try_end_1e} :catch_34
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_1e} :catch_26
    .catchall {:try_start_c .. :try_end_1e} :catchall_1f

    goto :goto_65

    :catchall_1f
    move-exception v2

    :try_start_20
    iget-object v3, p0, Labcd/ok;->v5:Labcd/yk;

    invoke-virtual {v3, v2}, Labcd/yk;->j6(Ljava/lang/Throwable;)V

    goto :goto_65

    :catch_26
    move-exception v2

    iget-object v3, p0, Labcd/ok;->v5:Labcd/yk;

    invoke-virtual {v3, v2}, Labcd/yk;->j6(Ljava/lang/Throwable;)V

    iget-object v2, p0, Labcd/ok;->Hw:Labcd/yk$a;

    const-string v3, "Internal error in in-app billing (JSON parse)."

    :goto_30
    invoke-interface {v2, v3}, Labcd/yk$a;->j6(Ljava/lang/String;)V

    goto :goto_65

    :catch_34
    move-exception v2

    iget-object v3, p0, Labcd/ok;->v5:Labcd/yk;

    invoke-virtual {v3, v2}, Labcd/yk;->j6(Ljava/lang/Throwable;)V

    iget-object v2, p0, Labcd/ok;->Hw:Labcd/yk$a;

    const-string v3, "Internal error in in-app billing (cancelled)."

    goto :goto_30

    :catch_3f
    move-exception v2

    iget-object v3, p0, Labcd/ok;->v5:Labcd/yk;

    invoke-virtual {v3, v2}, Labcd/yk;->j6(Ljava/lang/Throwable;)V

    iget-object v3, p0, Labcd/ok;->Hw:Labcd/yk$a;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Labcd/yk$a;->j6(Ljava/lang/String;)V

    goto :goto_65

    :catch_4f
    move-exception v2

    iget-object v3, p0, Labcd/ok;->v5:Labcd/yk;

    invoke-virtual {v3, v2}, Labcd/yk;->j6(Ljava/lang/Throwable;)V

    iget-object v2, p0, Labcd/ok;->Hw:Labcd/yk$a;

    const-string v3, "Internal error in in-app billing (interrupted)."

    goto :goto_30

    :catch_5a
    move-exception v2

    iget-object v3, p0, Labcd/ok;->v5:Labcd/yk;

    invoke-virtual {v3, v2}, Labcd/yk;->j6(Ljava/lang/Throwable;)V

    iget-object v2, p0, Labcd/ok;->Hw:Labcd/yk$a;

    const-string v3, "Error communicating with Play Store service."
    :try_end_64
    .catchall {:try_start_20 .. :try_end_64} :catchall_66

    goto :goto_30

    :goto_65
    return-void

    :catchall_66
    move-exception v2

    sget-boolean v3, Labcd/ok;->DW:Z

    if-eqz v3, :cond_6e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_6e
    goto :goto_70

    :goto_6f
    throw v2

    :goto_70
    goto :goto_6f
.end method

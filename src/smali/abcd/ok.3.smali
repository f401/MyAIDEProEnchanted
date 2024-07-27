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
    .registers 6

    const-class v0, Labcd/ok;

    const-wide v2, -0x6e165979867cddf9L

    const-wide v4, 0x59ab15a91efbc2cL

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v2, 0x20ab633727d453e0L

    :try_start_0
    sget-boolean v0, Labcd/ok;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x20ab633727d453e0L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    iget-object v0, p0, Labcd/ok;->v5:Labcd/yk;

    invoke-static {v0}, Labcd/yk;->Hw(Labcd/yk;)V

    iget-object v0, p0, Labcd/ok;->v5:Labcd/yk;

    iget-object v1, p0, Labcd/ok;->FH:Ljava/util/Set;

    invoke-static {v0, v1}, Labcd/yk;->j6(Labcd/yk;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Labcd/ok;->Hw:Labcd/yk$a;

    invoke-interface {v1, v0}, Labcd/yk$a;->j6(Ljava/util/Map;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Labcd/yk$b; {:try_start_1 .. :try_end_1} :catch_4
    .catch Labcd/yk$c; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Labcd/ok;->v5:Labcd/yk;

    invoke-virtual {v1, v0}, Labcd/yk;->j6(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Labcd/ok;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0

    :catch_2
    move-exception v0

    :try_start_3
    iget-object v1, p0, Labcd/ok;->v5:Labcd/yk;

    invoke-virtual {v1, v0}, Labcd/yk;->j6(Ljava/lang/Throwable;)V

    iget-object v0, p0, Labcd/ok;->Hw:Labcd/yk$a;

    const-string v1, "Internal error in in-app billing (JSON parse)."

    invoke-interface {v0, v1}, Labcd/yk$a;->j6(Ljava/lang/String;)V

    goto :goto_0

    :catch_3
    move-exception v0

    iget-object v1, p0, Labcd/ok;->v5:Labcd/yk;

    invoke-virtual {v1, v0}, Labcd/yk;->j6(Ljava/lang/Throwable;)V

    iget-object v0, p0, Labcd/ok;->Hw:Labcd/yk$a;

    const-string v1, "Internal error in in-app billing (cancelled)."

    invoke-interface {v0, v1}, Labcd/yk$a;->j6(Ljava/lang/String;)V

    goto :goto_0

    :catch_4
    move-exception v0

    iget-object v1, p0, Labcd/ok;->v5:Labcd/yk;

    invoke-virtual {v1, v0}, Labcd/yk;->j6(Ljava/lang/Throwable;)V

    iget-object v1, p0, Labcd/ok;->Hw:Labcd/yk$a;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Labcd/yk$a;->j6(Ljava/lang/String;)V

    goto :goto_0

    :catch_5
    move-exception v0

    iget-object v1, p0, Labcd/ok;->v5:Labcd/yk;

    invoke-virtual {v1, v0}, Labcd/yk;->j6(Ljava/lang/Throwable;)V

    iget-object v0, p0, Labcd/ok;->Hw:Labcd/yk$a;

    const-string v1, "Internal error in in-app billing (interrupted)."

    invoke-interface {v0, v1}, Labcd/yk$a;->j6(Ljava/lang/String;)V

    goto :goto_0

    :catch_6
    move-exception v0

    iget-object v1, p0, Labcd/ok;->v5:Labcd/yk;

    invoke-virtual {v1, v0}, Labcd/yk;->j6(Ljava/lang/Throwable;)V

    iget-object v0, p0, Labcd/ok;->Hw:Labcd/yk$a;

    const-string v1, "Error communicating with Play Store service."

    invoke-interface {v0, v1}, Labcd/yk$a;->j6(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

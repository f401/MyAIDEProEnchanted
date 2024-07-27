.class Labcd/rk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/yk;->j6(Ljava/lang/String;ZLjava/lang/String;)V
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

.field final Hw:Z

.field final v5:Labcd/yk;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Labcd/rk;

    const-wide v2, -0x6e165979867cddf9L

    const-wide v4, 0x59b19ad57624050L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/yk;Ljava/lang/String;Z)V
    .registers 4

    iput-object p1, p0, Labcd/rk;->v5:Labcd/yk;

    iput-object p2, p0, Labcd/rk;->FH:Ljava/lang/String;

    iput-boolean p3, p0, Labcd/rk;->Hw:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic j6(Labcd/qu;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 13

    invoke-interface/range {p0 .. p5}, Labcd/qu;->j6(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(Landroid/os/Bundle;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x4b8cac8c4c53847L
    .end annotation

    const-wide v8, -0x532675b03ed0f180L    # -1.2244103417382688E-92

    :try_start_0
    sget-boolean v0, Labcd/rk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x532675b03ed0f180L    # -1.2244103417382688E-92

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    iget-object v0, p0, Labcd/rk;->v5:Labcd/yk;

    invoke-static {v0}, Labcd/yk;->Hw(Labcd/yk;)V

    iget-object v0, p0, Labcd/rk;->v5:Labcd/yk;

    iget-object v1, p0, Labcd/rk;->FH:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/yk;->j6(Labcd/yk;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v6

    iget-object v0, p0, Labcd/rk;->v5:Labcd/yk;

    invoke-static {v0}, Labcd/yk;->VH(Labcd/yk;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Labcd/rk;->v5:Labcd/yk;

    invoke-static {v0}, Labcd/yk;->v5(Labcd/yk;)Labcd/qu;

    move-result-object v0

    sget-object v2, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    iget-object v3, p0, Labcd/rk;->FH:Ljava/lang/String;

    iget-boolean v1, p0, Labcd/rk;->Hw:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Labcd/yk$c; {:try_start_1 .. :try_end_1} :catch_6
    .catch Labcd/yk$b; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz v1, :cond_1

    const-string v4, "subs"

    :goto_0
    const/4 v1, 0x3

    :try_start_2
    iget-object v5, p0, Labcd/rk;->v5:Labcd/yk;

    invoke-static {v5}, Labcd/yk;->VH(Labcd/yk;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Labcd/rk;->j6(Labcd/qu;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "RESPONSE_CODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Labcd/yk$f;->j6(I)Labcd/yk$f;

    move-result-object v1

    iget-object v2, p0, Labcd/rk;->v5:Labcd/yk;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resp code for intent getting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Labcd/yk;->VH(Ljava/lang/String;)V

    sget-object v2, Labcd/yk$f;->j6:Labcd/yk$f;

    if-ne v1, v2, :cond_2

    const-string v1, "BUY_INTENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iget-object v1, p0, Labcd/rk;->v5:Labcd/yk;

    invoke-static {v1}, Labcd/yk;->DW(Labcd/yk;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Labcd/qk;

    invoke-direct {v2, p0, v6, v0}, Labcd/qk;-><init>(Labcd/rk;Ljava/util/Map;Landroid/app/PendingIntent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Labcd/yk$c; {:try_start_2 .. :try_end_2} :catch_6
    .catch Labcd/yk$b; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    :goto_1
    return-void

    :cond_1
    const-string v4, "inapp"

    goto :goto_0

    :cond_2
    :try_start_3
    sget-object v0, Labcd/yk$f;->gn:Labcd/yk$f;

    if-ne v1, v0, :cond_4

    iget-object v0, p0, Labcd/rk;->v5:Labcd/yk;

    invoke-virtual {v0}, Labcd/yk;->j6()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Labcd/yk$c; {:try_start_3 .. :try_end_3} :catch_6
    .catch Labcd/yk$b; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_4
    iget-object v1, p0, Labcd/rk;->v5:Labcd/yk;

    invoke-static {v1}, Labcd/yk;->FH(Labcd/yk;)V

    iget-object v1, p0, Labcd/rk;->v5:Labcd/yk;

    invoke-virtual {v1, v0}, Labcd/yk;->j6(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    sget-boolean v1, Labcd/rk;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v8, v9, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    :try_start_5
    invoke-static {v1}, Labcd/yk;->j6(Labcd/yk$f;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Labcd/yk$c; {:try_start_5 .. :try_end_5} :catch_6
    .catch Labcd/yk$b; {:try_start_5 .. :try_end_5} :catch_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_6
    iget-object v1, p0, Labcd/rk;->v5:Labcd/yk;

    invoke-virtual {v1, v0}, Labcd/yk;->j6(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_3
    move-exception v0

    iget-object v1, p0, Labcd/rk;->v5:Labcd/yk;

    invoke-virtual {v1, v0}, Labcd/yk;->j6(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_4
    move-exception v0

    iget-object v1, p0, Labcd/rk;->v5:Labcd/yk;

    invoke-virtual {v1, v0}, Labcd/yk;->j6(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_5
    move-exception v0

    iget-object v1, p0, Labcd/rk;->v5:Labcd/yk;

    invoke-virtual {v1, v0}, Labcd/yk;->j6(Ljava/lang/Throwable;)V

    iget-object v1, p0, Labcd/rk;->v5:Labcd/yk;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Labcd/yk;->j6(Labcd/yk;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    :catch_6
    move-exception v0

    goto :goto_1
.end method

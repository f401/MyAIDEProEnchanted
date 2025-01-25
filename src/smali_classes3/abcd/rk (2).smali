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
    .registers 5

    const-wide v0, -0x6e165979867cddf9L

    const-wide v2, 0x59b19ad57624050L

    const-class v4, Labcd/rk;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
    .registers 14

    invoke-interface/range {p0 .. p5}, Labcd/qu;->j6(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(Landroid/os/Bundle;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method


# virtual methods
.method public run()V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x4b8cac8c4c53847L
    .end annotation

    const-wide v0, -0x532675b03ed0f180L  # -1.2244103417382688E-92

    :try_start_5
    sget-boolean v2, Labcd/rk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_cd

    :cond_c
    :try_start_c
    iget-object v2, p0, Labcd/rk;->v5:Labcd/yk;

    invoke-static {v2}, Labcd/yk;->Hw(Labcd/yk;)V

    iget-object v2, p0, Labcd/rk;->v5:Labcd/yk;

    iget-object v3, p0, Labcd/rk;->FH:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v2, v3}, Labcd/yk;->j6(Labcd/yk;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Labcd/rk;->v5:Labcd/yk;

    invoke-static {v3}, Labcd/yk;->VH(Labcd/yk;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v3

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v4}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v3, p0, Labcd/rk;->v5:Labcd/yk;

    invoke-static {v3}, Labcd/yk;->v5(Labcd/yk;)Labcd/qu;

    move-result-object v4

    sget-object v6, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    iget-object v7, p0, Labcd/rk;->FH:Ljava/lang/String;

    iget-boolean v3, p0, Labcd/rk;->Hw:Z
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_3f} :catch_c3
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_3f} :catch_bf
    .catch Labcd/yk$c; {:try_start_c .. :try_end_3f} :catch_bd
    .catch Labcd/yk$b; {:try_start_c .. :try_end_3f} :catch_ad
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_3f} :catch_a9
    .catchall {:try_start_c .. :try_end_3f} :catchall_a2

    if-eqz v3, :cond_44

    const-string v3, "subs"

    goto :goto_46

    :cond_44
    const-string v3, "inapp"

    :goto_46
    move-object v8, v3

    const/4 v5, 0x3

    :try_start_48
    iget-object v3, p0, Labcd/rk;->v5:Labcd/yk;

    invoke-static {v3}, Labcd/yk;->VH(Labcd/yk;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Ljava/lang/String;

    invoke-static/range {v4 .. v9}, Labcd/rk;->j6(Labcd/qu;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "RESPONSE_CODE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Labcd/yk$f;->j6(I)Labcd/yk$f;

    move-result-object v4

    iget-object v5, p0, Labcd/rk;->v5:Labcd/yk;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resp code for intent getting: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Labcd/yk;->VH(Ljava/lang/String;)V

    sget-object v5, Labcd/yk$f;->j6:Labcd/yk$f;

    if-ne v4, v5, :cond_94

    const-string v4, "BUY_INTENT"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    iget-object v4, p0, Labcd/rk;->v5:Labcd/yk;

    invoke-static {v4}, Labcd/yk;->DW(Labcd/yk;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Labcd/qk;

    invoke-direct {v5, p0, v2, v3}, Labcd/qk;-><init>(Labcd/rk;Ljava/util/Map;Landroid/app/PendingIntent;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_cc

    :cond_94
    sget-object v2, Labcd/yk$f;->gn:Labcd/yk$f;

    if-ne v4, v2, :cond_9e

    iget-object v2, p0, Labcd/rk;->v5:Labcd/yk;

    invoke-virtual {v2}, Labcd/yk;->j6()V

    goto :goto_cc

    :cond_9e
    invoke-static {v4}, Labcd/yk;->j6(Labcd/yk$f;)V
    :try_end_a1
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_a1} :catch_c3
    .catch Ljava/lang/InterruptedException; {:try_start_48 .. :try_end_a1} :catch_bf
    .catch Labcd/yk$c; {:try_start_48 .. :try_end_a1} :catch_bd
    .catch Labcd/yk$b; {:try_start_48 .. :try_end_a1} :catch_ad
    .catch Lorg/json/JSONException; {:try_start_48 .. :try_end_a1} :catch_a9
    .catchall {:try_start_48 .. :try_end_a1} :catchall_a2

    goto :goto_cc

    :catchall_a2
    move-exception v2

    :try_start_a3
    iget-object v3, p0, Labcd/rk;->v5:Labcd/yk;

    :goto_a5
    invoke-virtual {v3, v2}, Labcd/yk;->j6(Ljava/lang/Throwable;)V

    goto :goto_cc

    :catch_a9
    move-exception v2

    iget-object v3, p0, Labcd/rk;->v5:Labcd/yk;

    goto :goto_a5

    :catch_ad
    move-exception v2

    iget-object v3, p0, Labcd/rk;->v5:Labcd/yk;

    invoke-virtual {v3, v2}, Labcd/yk;->j6(Ljava/lang/Throwable;)V

    iget-object v3, p0, Labcd/rk;->v5:Labcd/yk;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Labcd/yk;->j6(Labcd/yk;Ljava/lang/String;)V

    goto :goto_cc

    :catch_bd
    move-exception v0

    goto :goto_cc

    :catch_bf
    move-exception v2

    iget-object v3, p0, Labcd/rk;->v5:Labcd/yk;

    goto :goto_a5

    :catch_c3
    move-exception v2

    iget-object v3, p0, Labcd/rk;->v5:Labcd/yk;

    invoke-static {v3}, Labcd/yk;->FH(Labcd/yk;)V

    iget-object v3, p0, Labcd/rk;->v5:Labcd/yk;
    :try_end_cb
    .catchall {:try_start_a3 .. :try_end_cb} :catchall_cd

    goto :goto_a5

    :goto_cc
    return-void

    :catchall_cd
    move-exception v2

    sget-boolean v3, Labcd/rk;->DW:Z

    if-eqz v3, :cond_d5

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_d5
    goto :goto_d7

    :goto_d6
    throw v2

    :goto_d7
    goto :goto_d6
.end method

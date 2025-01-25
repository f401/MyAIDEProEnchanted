.class Labcd/Fi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Ji;->EQ()Z
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
.field final FH:Labcd/Ji;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x3cc87a6d76bb9749L  # 6.7940744100194515E-16

    const-wide v2, -0x2372cf898a40c13L  # -8.117518648680569E297

    const-class v4, Labcd/Fi;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/Ji;)V
    .registers 2

    iput-object p1, p0, Labcd/Fi;->FH:Labcd/Ji;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x124aa1fcda8cb7b5L
    .end annotation

    const-wide v0, 0x5a8a6315a8486d90L  # 1.428956478041875E128

    :try_start_5
    sget-boolean v2, Labcd/Fi;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Fi;->FH:Labcd/Ji;

    invoke-static {v2}, Labcd/Ji;->EQ(Labcd/Ji;)Z

    move-result v2

    if-nez v2, :cond_26

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    new-instance v3, Labcd/Ei;

    invoke-direct {v3, p0}, Labcd/Ei;-><init>(Labcd/Fi;)V

    const-string v4, "Dropbox"

    const-string v5, "Do you want to connect to your Dropbox?"

    const/4 v6, 0x0

    invoke-static {v2, v4, v5, v3, v6}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_3f

    :cond_26
    iget-object v2, p0, Labcd/Fi;->FH:Labcd/Ji;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Labcd/Ji;->j6(Labcd/Ji;Z)Z

    iget-object v2, p0, Labcd/Fi;->FH:Labcd/Ji;

    invoke-static {v2}, Labcd/Ji;->u7(Labcd/Ji;)Labcd/Dw;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Dw;->FH()Labcd/Zw;

    move-result-object v2

    check-cast v2, Lcom/dropbox/client2/android/a;

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/dropbox/client2/android/a;->j6(Landroid/content/Context;)V
    :try_end_3f
    .catchall {:try_start_5 .. :try_end_3f} :catchall_40

    :goto_3f
    return-void

    :catchall_40
    move-exception v2

    sget-boolean v3, Labcd/Fi;->DW:Z

    if-eqz v3, :cond_48

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_48
    throw v2
.end method

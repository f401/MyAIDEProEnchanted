.class final Labcd/Fv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Hv;->u7()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    invoke-static {}, Labcd/Hv;->j6()V

    invoke-static {}, Labcd/Hv;->DW()V
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    goto :goto_d

    :catchall_7
    move-exception v0

    const-string v1, "Runtime Error"

    invoke-static {v1, v0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_d
    invoke-static {}, Labcd/Hv;->v5()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Labcd/Hv;->FH()Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {}, Labcd/Hv;->Hw()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_22

    const-wide/16 v2, 0x3e8

    goto :goto_24

    :cond_22
    const-wide/16 v2, 0xa

    :goto_24
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

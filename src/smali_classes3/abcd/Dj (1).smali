.class Labcd/Dj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Kj;->DW(Landroid/app/Activity;)V
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
.field final FH:Landroid/app/Activity;

.field final Hw:Labcd/Kj;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x201ef30e74f91a7L

    const-wide v2, -0x123780eb665c8cc1L  # -6.917819836558788E220

    const-class v4, Labcd/Dj;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/Kj;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Labcd/Dj;->Hw:Labcd/Kj;

    iput-object p2, p0, Labcd/Dj;->FH:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x11ad47ec2ebb08a8L
    .end annotation

    const-wide v0, 0x5d8e19a0e6cb8810L  # 4.588133748387055E142

    :try_start_5
    sget-boolean v2, Labcd/Dj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_3d

    :cond_c
    :try_start_c
    invoke-static {}, Lcom/aide/ui/build/android/Q;->Zo()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Labcd/FileSystemUtils;->deleteAll(Ljava/lang/String;)V

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d06f2

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/s1243808733/util/Toasty;->toast(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_26} :catch_27
    .catchall {:try_start_c .. :try_end_26} :catchall_3d

    goto :goto_3c

    :catch_27
    move-exception v2

    :try_start_28
    iget-object v3, p0, Labcd/Dj;->FH:Landroid/app/Activity;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v4
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_3d

    if-eqz v4, :cond_33

    const-string v4, "卸载失败"

    goto :goto_35

    .line 99
    :cond_33
    const-string v4, "Uninstallation failed"

    .line 0
    :goto_35
    :try_start_35
    invoke-virtual {v2}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_3d

    :goto_3c
    return-void

    .line 99
    :catchall_3d
    move-exception v2

    sget-boolean v3, Labcd/Dj;->DW:Z

    if-eqz v3, :cond_45

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_45
    throw v2
.end method

.class Labcd/Gj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Kj;->j6(Landroid/app/Activity;Ljava/lang/String;)V
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
.field final FH:Labcd/Kj;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x201ef30e74f91a7L

    const-wide v2, -0x1238f29951727a90L  # -6.510015267601613E220

    const-class v4, Labcd/Gj;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/Kj;)V
    .registers 2

    iput-object p1, p0, Labcd/Gj;->FH:Labcd/Kj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0xb8748499b5316d0L
    .end annotation

    const-wide v0, 0xb2217b421bf8f0dL  # 4.81986061600767E-255

    :try_start_5
    sget-boolean v2, Labcd/Gj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v4, "com.aide.ndk"

    const-string v5, "aideInstallNdkSupport"

    invoke-static {v3, v4, v5}, Labcd/F;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v3, 0x40080000  # 2.125f

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_3e

    :try_start_29
    invoke-static {}, Lcom/aide/ui/U;->VH()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_30
    .catch Landroid/content/ActivityNotFoundException; {:try_start_29 .. :try_end_30} :catch_31
    .catchall {:try_start_29 .. :try_end_30} :catchall_3e

    goto :goto_3d

    :catch_31
    move-exception v2

    :try_start_32
    invoke-static {}, Lcom/aide/ui/U;->VH()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "Google Play Store"

    const-string v4, "Google Play Store App could not be opened. Not installed?"

    invoke-static {v2, v3, v4}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_3e

    :goto_3d
    return-void

    :catchall_3e
    move-exception v2

    sget-boolean v3, Labcd/Gj;->DW:Z

    if-eqz v3, :cond_46

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_46
    throw v2
.end method

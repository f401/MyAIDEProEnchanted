.class Labcd/Mj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Nj;->run()V
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
.field final FH:Labcd/Nj;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0xa9ebdf3cdd29105L

    const-wide v2, 0xd598c2913d60a3L

    const-class v4, Labcd/Mj;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/Nj;)V
    .registers 2

    iput-object p1, p0, Labcd/Mj;->FH:Labcd/Nj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x23e7b4a0fac09a1L
    .end annotation

    const-wide v0, 0x3863b98824b50eb1L  # 4.637262591468522E-37

    :try_start_5
    sget-boolean v2, Labcd/Mj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v4, "com.aide.ndk"

    const-string v5, "aideuninstallNdkSupport"

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

    sget-boolean v3, Labcd/Mj;->DW:Z

    if-eqz v3, :cond_46

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_46
    throw v2
.end method

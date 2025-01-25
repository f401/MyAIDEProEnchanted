.class final Lcom/aide/ui/htmluidesigner/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/htmluidesigner/WebDesignActivity;->j6(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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
.field final FH:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x308f47b38f2dc5f5L  # -4.726645632267079E74

    const-wide v2, -0x33fee24bacd8da1dL  # -1.3429884889821467E58

    const-class v4, Lcom/aide/ui/htmluidesigner/h;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/htmluidesigner/h;->FH:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x14a8e64f50b4078L
    .end annotation

    const-wide v0, -0x228561e10c6d99b5L  # -2.0286533407296206E142

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/htmluidesigner/h;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_56

    :cond_c
    :try_start_c
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "logcat -v threadtime"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x14

    invoke-direct {v3, v4, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    :cond_26
    :goto_26
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_55

    const-string v4, "console.log"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_26

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.aide.ui"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "com.aide.runtime.VIEW_LOGCAT_ENTRY"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "lines"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/aide/ui/htmluidesigner/h;->FH:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_53} :catch_54
    .catchall {:try_start_c .. :try_end_53} :catchall_56

    goto :goto_26

    :catch_54
    move-exception v0

    :cond_55
    return-void

    :catchall_56
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/htmluidesigner/h;->DW:Z

    if-eqz v3, :cond_5e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_5e
    goto :goto_60

    :goto_5f
    throw v2

    :goto_60
    goto :goto_5f
.end method

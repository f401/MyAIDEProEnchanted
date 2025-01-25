.class Lcom/aide/ui/build/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/build/OutputConsoleActivity;->gn()V
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
.field final FH:Lcom/aide/ui/build/OutputConsoleActivity;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0xa1c6947f77ec70dL

    const-wide v2, -0x184f1c312d7be47L

    const-class v4, Lcom/aide/ui/build/q;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/build/OutputConsoleActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/build/q;->FH:Lcom/aide/ui/build/OutputConsoleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11
    .annotation runtime Labcd/su;
        method = 0xf56373aec589a01L
    .end annotation

    const-wide v0, -0x8d654cac04d5208L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/q;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/q;->FH:Lcom/aide/ui/build/OutputConsoleActivity;

    invoke-virtual {v2}, Lcom/aide/ui/build/OutputConsoleActivity;->j6()Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/aide/ui/build/q;->FH:Lcom/aide/ui/build/OutputConsoleActivity;

    invoke-static {v2}, Lcom/aide/ui/build/OutputConsoleActivity;->DW(Lcom/aide/ui/build/OutputConsoleActivity;)Landroid/media/SoundPool;

    move-result-object v3

    iget-object v2, p0, Lcom/aide/ui/build/q;->FH:Lcom/aide/ui/build/OutputConsoleActivity;

    invoke-static {v2}, Lcom/aide/ui/build/OutputConsoleActivity;->Hw(Lcom/aide/ui/build/OutputConsoleActivity;)I

    move-result v4

    const/high16 v5, 0x3f800000  # 1.0f

    const/high16 v6, 0x3f800000  # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000  # 1.0f

    invoke-virtual/range {v3 .. v9}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_2b
    iget-object v2, p0, Lcom/aide/ui/build/q;->FH:Lcom/aide/ui/build/OutputConsoleActivity;

    invoke-virtual {v2}, Lcom/aide/ui/build/OutputConsoleActivity;->DW()Z

    move-result v2
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_7f

    const-string v3, "EXTRA_TRAINER_SUCCESS"

    if-eqz v2, :cond_54

    :try_start_35
    iget-object v2, p0, Lcom/aide/ui/build/q;->FH:Lcom/aide/ui/build/OutputConsoleActivity;

    invoke-static {v2}, Lcom/aide/ui/build/OutputConsoleActivity;->FH(Lcom/aide/ui/build/OutputConsoleActivity;)Lcom/aide/common/TextToSpeechHelper;

    move-result-object v2

    iget-object v4, p0, Lcom/aide/ui/build/q;->FH:Lcom/aide/ui/build/OutputConsoleActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "EXTRA_TRAINER_LOCALE"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/aide/ui/build/q;->FH:Lcom/aide/ui/build/OutputConsoleActivity;

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/aide/common/TextToSpeechHelper;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :cond_54
    iget-object v2, p0, Lcom/aide/ui/build/q;->FH:Lcom/aide/ui/build/OutputConsoleActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "EXTRA_TRAINER_SUCCESS_TITLE"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/aide/ui/build/q;->FH:Lcom/aide/ui/build/OutputConsoleActivity;

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/aide/ui/build/q;->FH:Lcom/aide/ui/build/OutputConsoleActivity;

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "EXTRA_TRAINER_SUCCESS_BUTTON"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/aide/ui/build/p;

    invoke-direct {v6, p0}, Lcom/aide/ui/build/p;-><init>(Lcom/aide/ui/build/q;)V

    invoke-static {v2, v4, v3, v5, v6}, Lcom/aide/ui/build/OutputConsoleActivity;->j6(Lcom/aide/ui/build/OutputConsoleActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_7e
    .catchall {:try_start_35 .. :try_end_7e} :catchall_7f

    return-void

    :catchall_7f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/q;->DW:Z

    if-eqz v3, :cond_87

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_87
    throw v2
.end method

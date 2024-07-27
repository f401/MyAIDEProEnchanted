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
    .registers 6

    const-class v0, Lcom/aide/ui/build/q;

    const-wide v2, 0xa1c6947f77ec70dL

    const-wide v4, -0x184f1c312d7be47L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v8, -0x8d654cac04d5208L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/q;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x8d654cac04d5208L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/build/q;->FH:Lcom/aide/ui/build/OutputConsoleActivity;

    invoke-virtual {v0}, Lcom/aide/ui/build/OutputConsoleActivity;->j6()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/build/q;->FH:Lcom/aide/ui/build/OutputConsoleActivity;

    invoke-static {v0}, Lcom/aide/ui/build/OutputConsoleActivity;->DW(Lcom/aide/ui/build/OutputConsoleActivity;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/build/q;->FH:Lcom/aide/ui/build/OutputConsoleActivity;

    invoke-static {v1}, Lcom/aide/ui/build/OutputConsoleActivity;->Hw(Lcom/aide/ui/build/OutputConsoleActivity;)I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_1
    iget-object v0, p0, Lcom/aide/ui/build/q;->FH:Lcom/aide/ui/build/OutputConsoleActivity;

    invoke-virtual {v0}, Lcom/aide/ui/build/OutputConsoleActivity;->DW()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aide/ui/build/q;->FH:Lcom/aide/ui/build/OutputConsoleActivity;

    invoke-static {v0}, Lcom/aide/ui/build/OutputConsoleActivity;->FH(Lcom/aide/ui/build/OutputConsoleActivity;)Lcom/aide/common/TextToSpeechHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/build/q;->FH:Lcom/aide/ui/build/OutputConsoleActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXTRA_TRAINER_LOCALE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aide/ui/build/q;->FH:Lcom/aide/ui/build/OutputConsoleActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_TRAINER_SUCCESS"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/aide/common/TextToSpeechHelper;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/aide/ui/build/q;->FH:Lcom/aide/ui/build/OutputConsoleActivity;

    iget-object v1, p0, Lcom/aide/ui/build/q;->FH:Lcom/aide/ui/build/OutputConsoleActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXTRA_TRAINER_SUCCESS_TITLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aide/ui/build/q;->FH:Lcom/aide/ui/build/OutputConsoleActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_TRAINER_SUCCESS"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/build/q;->FH:Lcom/aide/ui/build/OutputConsoleActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "EXTRA_TRAINER_SUCCESS_BUTTON"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/build/p;

    invoke-direct {v4, p0}, Lcom/aide/ui/build/p;-><init>(Lcom/aide/ui/build/q;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/aide/ui/build/OutputConsoleActivity;->j6(Lcom/aide/ui/build/OutputConsoleActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/q;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v8, v9, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

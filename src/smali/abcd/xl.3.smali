.class Labcd/xl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Cl;->g3()V
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
.field final FH:Labcd/Cl;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Labcd/xl;

    const-wide v2, -0x20d2e6e11ba0079cL    # -2.9765480524345248E150

    const-wide v4, 0x4a72dd6b51dd160L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/Cl;)V
    .registers 2

    iput-object p1, p0, Labcd/xl;->FH:Labcd/Cl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11
    .annotation runtime Labcd/su;
        method = 0xcb104df42d56da5L
    .end annotation

    const-wide v8, 0x45c206b777089adL

    :try_start_0
    sget-boolean v0, Labcd/xl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x45c206b777089adL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/xl;->FH:Labcd/Cl;

    invoke-static {v0}, Labcd/Cl;->DW(Labcd/Cl;)V

    invoke-static {}, Lcom/aide/ui/aa;->J8()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/xl;->FH:Labcd/Cl;

    invoke-static {v0}, Labcd/Cl;->FH(Labcd/Cl;)Lcom/aide/common/TextToSpeechHelper;

    move-result-object v0

    iget-object v1, p0, Labcd/xl;->FH:Labcd/Cl;

    invoke-virtual {v1}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/trainer/g$d;->Zo()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Labcd/xl;->FH:Labcd/Cl;

    invoke-virtual {v3}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/trainer/g$i;->FH()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Labcd/xl;->FH:Labcd/Cl;

    invoke-virtual {v3}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/trainer/g$d;->J0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/aide/common/TextToSpeechHelper;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/aide/ui/aa;->J0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Labcd/xl;->FH:Labcd/Cl;

    invoke-static {v0}, Labcd/Cl;->v5(Labcd/Cl;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Labcd/xl;->FH:Labcd/Cl;

    invoke-static {v1}, Labcd/Cl;->Hw(Labcd/Cl;)I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_2
    iget-object v0, p0, Labcd/xl;->FH:Labcd/Cl;

    iget-object v1, p0, Labcd/xl;->FH:Labcd/Cl;

    invoke-virtual {v1}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/Cl;->j6(Labcd/Cl;Lcom/aide/ui/trainer/g$i;)V

    iget-object v0, p0, Labcd/xl;->FH:Labcd/Cl;

    invoke-static {v0}, Labcd/Cl;->Zo(Labcd/Cl;)V

    iget-object v0, p0, Labcd/xl;->FH:Labcd/Cl;

    invoke-static {v0}, Labcd/Cl;->VH(Labcd/Cl;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/xl;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v8, v9, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

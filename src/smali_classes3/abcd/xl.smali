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
    .registers 5

    const-wide v0, -0x20d2e6e11ba0079cL  # -2.9765480524345248E150

    const-wide v2, 0x4a72dd6b51dd160L

    const-class v4, Labcd/xl;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v0, 0x45c206b777089adL

    :try_start_5
    sget-boolean v2, Labcd/xl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/xl;->FH:Labcd/Cl;

    invoke-static {v2}, Labcd/Cl;->DW(Labcd/Cl;)V

    invoke-static {}, Lcom/aide/ui/aa;->J8()Z

    move-result v2

    if-eqz v2, :cond_52

    iget-object v2, p0, Labcd/xl;->FH:Labcd/Cl;

    invoke-static {v2}, Labcd/Cl;->FH(Labcd/Cl;)Lcom/aide/common/TextToSpeechHelper;

    move-result-object v2

    iget-object v3, p0, Labcd/xl;->FH:Labcd/Cl;

    invoke-virtual {v3}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/trainer/g$d;->Zo()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Labcd/xl;->FH:Labcd/Cl;

    invoke-virtual {v5}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v5

    invoke-virtual {v5}, Lcom/aide/ui/trainer/g$i;->FH()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Labcd/xl;->FH:Labcd/Cl;

    invoke-virtual {v5}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v5

    invoke-virtual {v5}, Lcom/aide/ui/trainer/g$d;->J0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/aide/common/TextToSpeechHelper;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :cond_52
    invoke-static {}, Lcom/aide/ui/aa;->J0()Z

    move-result v2

    if-eqz v2, :cond_6f

    iget-object v2, p0, Labcd/xl;->FH:Labcd/Cl;

    invoke-static {v2}, Labcd/Cl;->v5(Labcd/Cl;)Landroid/media/SoundPool;

    move-result-object v3

    iget-object v2, p0, Labcd/xl;->FH:Labcd/Cl;

    invoke-static {v2}, Labcd/Cl;->Hw(Labcd/Cl;)I

    move-result v4

    const/high16 v5, 0x3f800000  # 1.0f

    const/high16 v6, 0x3f800000  # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000  # 1.0f

    invoke-virtual/range {v3 .. v9}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_6f
    iget-object v2, p0, Labcd/xl;->FH:Labcd/Cl;

    invoke-virtual {v2}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v3

    invoke-static {v2, v3}, Labcd/Cl;->j6(Labcd/Cl;Lcom/aide/ui/trainer/g$i;)V

    iget-object v2, p0, Labcd/xl;->FH:Labcd/Cl;

    invoke-static {v2}, Labcd/Cl;->Zo(Labcd/Cl;)V

    iget-object v2, p0, Labcd/xl;->FH:Labcd/Cl;

    invoke-static {v2}, Labcd/Cl;->VH(Labcd/Cl;)V
    :try_end_82
    .catchall {:try_start_5 .. :try_end_82} :catchall_83

    return-void

    :catchall_83
    move-exception v2

    sget-boolean v3, Labcd/xl;->DW:Z

    if-eqz v3, :cond_8b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_8b
    throw v2
.end method

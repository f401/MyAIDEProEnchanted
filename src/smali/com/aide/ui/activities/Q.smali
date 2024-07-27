.class Lcom/aide/ui/activities/Q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/activities/S;->j6(Ljava/lang/String;)V
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
.field final FH:Ljava/lang/String;

.field final Hw:Lcom/aide/ui/activities/S;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/activities/Q;

    const-wide v2, -0x16d3b28e19a2a2b8L    # -4.2312847618367747E198

    const-wide v4, 0xe320945d0ccdbf0L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/activities/S;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/activities/Q;->Hw:Lcom/aide/ui/activities/S;

    iput-object p2, p0, Lcom/aide/ui/activities/Q;->FH:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x19ec4ea5a1506c5fL
    .end annotation

    const-wide v2, 0xa33064d17fc4960L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/Q;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xa33064d17fc4960L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/activities/Q;->Hw:Lcom/aide/ui/activities/S;

    iget-object v0, v0, Lcom/aide/ui/activities/S;->FH:Lcom/aide/ui/activities/ShopLearningPopupActivity;

    invoke-static {v0}, Lcom/aide/ui/activities/ShopLearningPopupActivity;->Hw(Lcom/aide/ui/activities/ShopLearningPopupActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/aide/ui/activities/Q;->Hw:Lcom/aide/ui/activities/S;

    iget-object v0, v0, Lcom/aide/ui/activities/S;->FH:Lcom/aide/ui/activities/ShopLearningPopupActivity;

    invoke-static {v0}, Lcom/aide/ui/activities/ShopLearningPopupActivity;->j6(Lcom/aide/ui/activities/ShopLearningPopupActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aide/ui/activities/Q;->Hw:Lcom/aide/ui/activities/S;

    iget-object v0, v0, Lcom/aide/ui/activities/S;->FH:Lcom/aide/ui/activities/ShopLearningPopupActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lcom/aide/ui/activities/Q;->Hw:Lcom/aide/ui/activities/S;

    iget-object v0, v0, Lcom/aide/ui/activities/S;->FH:Lcom/aide/ui/activities/ShopLearningPopupActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/Q;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LearningShopErrorShown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aide/ui/activities/Q;->FH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aide/ui/activities/Q;->Hw:Lcom/aide/ui/activities/S;

    iget-object v0, v0, Lcom/aide/ui/activities/S;->FH:Lcom/aide/ui/activities/ShopLearningPopupActivity;

    iget-object v0, v0, Lcom/aide/ui/activities/ShopLearningPopupActivity;->Hw:Landroid/app/AlertDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/aide/ui/activities/Q;->Hw:Lcom/aide/ui/activities/S;

    iget-object v0, v0, Lcom/aide/ui/activities/S;->FH:Lcom/aide/ui/activities/ShopLearningPopupActivity;

    iget-object v1, p0, Lcom/aide/ui/activities/Q;->FH:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/aide/ui/activities/ShopLearningPopupActivity;->j6(Lcom/aide/ui/activities/ShopLearningPopupActivity;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

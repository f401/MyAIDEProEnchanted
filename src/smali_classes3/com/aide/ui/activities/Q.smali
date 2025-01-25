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
    .registers 5

    const-wide v0, -0x16d3b28e19a2a2b8L  # -4.2312847618367747E198

    const-wide v2, 0xe320945d0ccdbf0L

    const-class v4, Lcom/aide/ui/activities/Q;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v0, 0xa33064d17fc4960L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/Q;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/activities/Q;->Hw:Lcom/aide/ui/activities/S;

    iget-object v2, v2, Lcom/aide/ui/activities/S;->FH:Lcom/aide/ui/activities/ShopLearningPopupActivity;

    invoke-static {v2}, Lcom/aide/ui/activities/ShopLearningPopupActivity;->Hw(Lcom/aide/ui/activities/ShopLearningPopupActivity;)Z

    move-result v2

    if-eqz v2, :cond_17

    return-void

    :cond_17
    iget-object v2, p0, Lcom/aide/ui/activities/Q;->Hw:Lcom/aide/ui/activities/S;

    iget-object v2, v2, Lcom/aide/ui/activities/S;->FH:Lcom/aide/ui/activities/ShopLearningPopupActivity;

    invoke-static {v2}, Lcom/aide/ui/activities/ShopLearningPopupActivity;->j6(Lcom/aide/ui/activities/ShopLearningPopupActivity;)Z

    move-result v2

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/aide/ui/activities/Q;->Hw:Lcom/aide/ui/activities/S;

    iget-object v2, v2, Lcom/aide/ui/activities/S;->FH:Lcom/aide/ui/activities/ShopLearningPopupActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setResult(I)V

    iget-object v2, p0, Lcom/aide/ui/activities/Q;->Hw:Lcom/aide/ui/activities/S;

    iget-object v2, v2, Lcom/aide/ui/activities/S;->FH:Lcom/aide/ui/activities/ShopLearningPopupActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    return-void

    :cond_31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LearningShopErrorShown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/aide/ui/activities/Q;->FH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Labcd/F;->j6(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aide/ui/activities/Q;->Hw:Lcom/aide/ui/activities/S;

    iget-object v2, v2, Lcom/aide/ui/activities/S;->FH:Lcom/aide/ui/activities/ShopLearningPopupActivity;

    iget-object v2, v2, Lcom/aide/ui/activities/ShopLearningPopupActivity;->Hw:Landroid/app/AlertDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v2, p0, Lcom/aide/ui/activities/Q;->Hw:Lcom/aide/ui/activities/S;

    iget-object v2, v2, Lcom/aide/ui/activities/S;->FH:Lcom/aide/ui/activities/ShopLearningPopupActivity;

    iget-object v3, p0, Lcom/aide/ui/activities/Q;->FH:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/aide/ui/activities/ShopLearningPopupActivity;->j6(Lcom/aide/ui/activities/ShopLearningPopupActivity;Ljava/lang/String;)V
    :try_end_5a
    .catchall {:try_start_5 .. :try_end_5a} :catchall_5b

    return-void

    :catchall_5b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/Q;->DW:Z

    if-eqz v3, :cond_63

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_63
    throw v2
.end method

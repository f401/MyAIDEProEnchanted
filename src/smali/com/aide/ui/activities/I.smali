.class Lcom/aide/ui/activities/I;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/activities/J;->j6(Ljava/lang/String;)V
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

.field final Hw:Lcom/aide/ui/activities/J;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/activities/I;

    const-wide v2, 0x25f9816461dca1e8L

    const-wide v4, 0x193070ca2e8606c0L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/activities/J;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/activities/I;->Hw:Lcom/aide/ui/activities/J;

    iput-object p2, p0, Lcom/aide/ui/activities/I;->FH:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x9f0cf5ce8b96c88L
    .end annotation

    const-wide v2, -0x1420b9060bd24b40L    # -4.113064836956361E211

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/I;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1420b9060bd24b40L    # -4.113064836956361E211

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/activities/I;->Hw:Lcom/aide/ui/activities/J;

    iget-object v0, v0, Lcom/aide/ui/activities/J;->FH:Lcom/aide/ui/activities/ShopExpertPopupActivity;

    invoke-static {v0}, Lcom/aide/ui/activities/ShopExpertPopupActivity;->FH(Lcom/aide/ui/activities/ShopExpertPopupActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/aide/ui/activities/I;->Hw:Lcom/aide/ui/activities/J;

    iget-object v0, v0, Lcom/aide/ui/activities/J;->FH:Lcom/aide/ui/activities/ShopExpertPopupActivity;

    invoke-static {v0}, Lcom/aide/ui/activities/ShopExpertPopupActivity;->j6(Lcom/aide/ui/activities/ShopExpertPopupActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aide/ui/activities/I;->Hw:Lcom/aide/ui/activities/J;

    iget-object v0, v0, Lcom/aide/ui/activities/J;->FH:Lcom/aide/ui/activities/ShopExpertPopupActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lcom/aide/ui/activities/I;->Hw:Lcom/aide/ui/activities/J;

    iget-object v0, v0, Lcom/aide/ui/activities/J;->FH:Lcom/aide/ui/activities/ShopExpertPopupActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/I;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExpertShopErrorShown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aide/ui/activities/I;->FH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aide/ui/activities/I;->Hw:Lcom/aide/ui/activities/J;

    iget-object v0, v0, Lcom/aide/ui/activities/J;->FH:Lcom/aide/ui/activities/ShopExpertPopupActivity;

    iget-object v0, v0, Lcom/aide/ui/activities/ShopExpertPopupActivity;->Hw:Landroid/app/AlertDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/aide/ui/activities/I;->Hw:Lcom/aide/ui/activities/J;

    iget-object v0, v0, Lcom/aide/ui/activities/J;->FH:Lcom/aide/ui/activities/ShopExpertPopupActivity;

    iget-object v1, p0, Lcom/aide/ui/activities/I;->FH:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/aide/ui/activities/ShopExpertPopupActivity;->j6(Lcom/aide/ui/activities/ShopExpertPopupActivity;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

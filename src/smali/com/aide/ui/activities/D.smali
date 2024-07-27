.class Lcom/aide/ui/activities/D;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/activities/G;->j6(Landroid/app/Activity;)Landroid/app/Dialog;
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
.field final FH:Lcom/aide/ui/activities/G;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/activities/D;

    const-wide v2, 0x25f9816461dca1e8L

    const-wide v4, 0x192f97e205d83ab0L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/activities/G;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/activities/D;->FH:Lcom/aide/ui/activities/G;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x86eec0a2bea93d7L
    .end annotation

    const-wide v2, -0x1fd7570febc417f5L    # -1.6531769065106548E155

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/D;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1fd7570febc417f5L    # -1.6531769065106548E155

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-string v0, "Cancelled free version in expert shop."

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aide/ui/activities/D;->FH:Lcom/aide/ui/activities/G;

    iget-object v0, v0, Lcom/aide/ui/activities/G;->gn:Lcom/aide/ui/activities/ShopExpertPopupActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lcom/aide/ui/activities/D;->FH:Lcom/aide/ui/activities/G;

    iget-object v0, v0, Lcom/aide/ui/activities/G;->gn:Lcom/aide/ui/activities/ShopExpertPopupActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/D;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

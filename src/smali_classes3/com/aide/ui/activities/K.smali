.class Lcom/aide/ui/activities/K;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/activities/O;->j6(Landroid/app/Activity;)Landroid/app/Dialog;
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
.field final FH:Lcom/aide/ui/activities/O;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x16d3b28e19a2a2b8L  # -4.2312847618367747E198

    const-wide v2, 0xe303b897be9de68L

    const-class v4, Lcom/aide/ui/activities/K;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/activities/O;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/activities/K;->FH:Lcom/aide/ui/activities/O;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x44ecedb38fac900L
    .end annotation

    const-wide v0, 0x15314a8534f6e64bL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/K;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const-string v2, "Cancelled free version in learning shop."

    invoke-static {v2}, Labcd/F;->j6(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aide/ui/activities/K;->FH:Lcom/aide/ui/activities/O;

    iget-object v2, v2, Lcom/aide/ui/activities/O;->gn:Lcom/aide/ui/activities/ShopLearningPopupActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setResult(I)V

    iget-object v2, p0, Lcom/aide/ui/activities/K;->FH:Lcom/aide/ui/activities/O;

    iget-object v2, v2, Lcom/aide/ui/activities/O;->gn:Lcom/aide/ui/activities/ShopLearningPopupActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    return-void

    :catchall_21
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/K;->DW:Z

    if-eqz v3, :cond_29

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    throw v2
.end method

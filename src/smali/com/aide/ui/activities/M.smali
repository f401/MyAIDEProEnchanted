.class Lcom/aide/ui/activities/M;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .registers 6

    const-class v0, Lcom/aide/ui/activities/M;

    const-wide v2, -0x16d3b28e19a2a2b8L    # -4.2312847618367747E198

    const-wide v4, 0xe311b09949605f0L    # 2.565323621852334E-240

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/activities/O;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/activities/M;->FH:Lcom/aide/ui/activities/O;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x7370a0f5f76dc53L
    .end annotation

    const-wide v6, 0x30e68c31eceea94bL    # 3.9879719311183076E-73

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/M;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x30e68c31eceea94bL    # 3.9879719311183076E-73

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-string v0, "Clicked on Buy monthly in learning shop."

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/U;->VH()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/aide/ui/activities/M;->FH:Lcom/aide/ui/activities/O;

    iget-object v2, v2, Lcom/aide/ui/activities/O;->gn:Lcom/aide/ui/activities/ShopLearningPopupActivity;

    invoke-static {v2}, Lcom/aide/ui/activities/ShopLearningPopupActivity;->DW(Lcom/aide/ui/activities/ShopLearningPopupActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/activities/M;->FH:Lcom/aide/ui/activities/O;

    iget-object v3, v3, Lcom/aide/ui/activities/O;->gn:Lcom/aide/ui/activities/ShopLearningPopupActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "EXTRA_LINKID"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Labcd/Ek;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aide/ui/activities/M;->FH:Lcom/aide/ui/activities/O;

    iget-object v0, v0, Lcom/aide/ui/activities/O;->gn:Lcom/aide/ui/activities/ShopLearningPopupActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/M;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

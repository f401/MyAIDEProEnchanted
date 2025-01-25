.class Lcom/aide/ui/activities/F;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .registers 5

    const-wide v0, 0x25f9816461dca1e8L

    const-wide v2, 0x192fcbd283cabec0L

    const-class v4, Lcom/aide/ui/activities/F;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/activities/G;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/activities/F;->FH:Lcom/aide/ui/activities/G;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x46c99cb3e5c1a0L
    .end annotation

    const-wide v0, 0x5be64b3be07fdb20L  # 5.063767825950212E134

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/F;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const-string v2, "Clicked on Buy in expert shop."

    invoke-static {v2}, Labcd/F;->j6(Ljava/lang/String;)V

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->VH()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/aide/ui/activities/F;->FH:Lcom/aide/ui/activities/G;

    iget-object v4, v4, Lcom/aide/ui/activities/G;->gn:Lcom/aide/ui/activities/ShopExpertPopupActivity;

    invoke-static {v4}, Lcom/aide/ui/activities/ShopExpertPopupActivity;->DW(Lcom/aide/ui/activities/ShopExpertPopupActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/aide/ui/activities/F;->FH:Lcom/aide/ui/activities/G;

    iget-object v5, v5, Lcom/aide/ui/activities/G;->gn:Lcom/aide/ui/activities/ShopExpertPopupActivity;

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "EXTRA_LINKID"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Labcd/Ek;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aide/ui/activities/F;->FH:Lcom/aide/ui/activities/G;

    iget-object v2, v2, Lcom/aide/ui/activities/G;->gn:Lcom/aide/ui/activities/ShopExpertPopupActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V
    :try_end_39
    .catchall {:try_start_5 .. :try_end_39} :catchall_3a

    return-void

    :catchall_3a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/F;->DW:Z

    if-eqz v3, :cond_42

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_42
    throw v2
.end method

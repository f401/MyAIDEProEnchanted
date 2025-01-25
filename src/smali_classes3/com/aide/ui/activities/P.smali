.class Lcom/aide/ui/activities/P;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/activities/S;->j6(Ljava/util/Map;)V
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
.field final FH:Ljava/util/Map;

.field final Hw:Lcom/aide/ui/activities/S;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x16d3b28e19a2a2b8L  # -4.2312847618367747E198

    const-wide v2, 0xe3199854fd953cdL  # 2.639419966089001E-240

    const-class v4, Lcom/aide/ui/activities/P;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/activities/S;Ljava/util/Map;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/activities/P;->Hw:Lcom/aide/ui/activities/S;

    iput-object p2, p0, Lcom/aide/ui/activities/P;->FH:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x194e7f4550ce405L
    .end annotation

    const-wide v0, 0xa273fe026c7a2bdL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/P;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/activities/P;->Hw:Lcom/aide/ui/activities/S;

    iget-object v2, v2, Lcom/aide/ui/activities/S;->FH:Lcom/aide/ui/activities/ShopLearningPopupActivity;

    invoke-static {v2}, Lcom/aide/ui/activities/ShopLearningPopupActivity;->Hw(Lcom/aide/ui/activities/ShopLearningPopupActivity;)Z

    move-result v2

    if-eqz v2, :cond_17

    return-void

    :cond_17
    const-string v2, "LerningShopOKShown"

    invoke-static {v2}, Labcd/F;->j6(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aide/ui/activities/P;->Hw:Lcom/aide/ui/activities/S;

    iget-object v2, v2, Lcom/aide/ui/activities/S;->FH:Lcom/aide/ui/activities/ShopLearningPopupActivity;

    iget-object v3, p0, Lcom/aide/ui/activities/P;->FH:Ljava/util/Map;

    invoke-static {v2, v3}, Lcom/aide/ui/activities/ShopLearningPopupActivity;->j6(Lcom/aide/ui/activities/ShopLearningPopupActivity;Ljava/util/Map;)Ljava/util/Map;

    iget-object v2, p0, Lcom/aide/ui/activities/P;->Hw:Lcom/aide/ui/activities/S;

    iget-object v2, v2, Lcom/aide/ui/activities/S;->FH:Lcom/aide/ui/activities/ShopLearningPopupActivity;

    invoke-static {v2}, Lcom/aide/ui/activities/ShopLearningPopupActivity;->v5(Lcom/aide/ui/activities/ShopLearningPopupActivity;)V
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_2d

    return-void

    :catchall_2d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/P;->DW:Z

    if-eqz v3, :cond_35

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_35
    throw v2
.end method

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
    .registers 6

    const-class v0, Lcom/aide/ui/activities/P;

    const-wide v2, -0x16d3b28e19a2a2b8L    # -4.2312847618367747E198

    const-wide v4, 0xe3199854fd953cdL    # 2.639419966089001E-240

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v2, 0xa273fe026c7a2bdL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/P;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xa273fe026c7a2bdL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/activities/P;->Hw:Lcom/aide/ui/activities/S;

    iget-object v0, v0, Lcom/aide/ui/activities/S;->FH:Lcom/aide/ui/activities/ShopLearningPopupActivity;

    invoke-static {v0}, Lcom/aide/ui/activities/ShopLearningPopupActivity;->Hw(Lcom/aide/ui/activities/ShopLearningPopupActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const-string v0, "LerningShopOKShown"

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aide/ui/activities/P;->Hw:Lcom/aide/ui/activities/S;

    iget-object v0, v0, Lcom/aide/ui/activities/S;->FH:Lcom/aide/ui/activities/ShopLearningPopupActivity;

    iget-object v1, p0, Lcom/aide/ui/activities/P;->FH:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/aide/ui/activities/ShopLearningPopupActivity;->j6(Lcom/aide/ui/activities/ShopLearningPopupActivity;Ljava/util/Map;)Ljava/util/Map;

    iget-object v0, p0, Lcom/aide/ui/activities/P;->Hw:Lcom/aide/ui/activities/S;

    iget-object v0, v0, Lcom/aide/ui/activities/S;->FH:Lcom/aide/ui/activities/ShopLearningPopupActivity;

    invoke-static {v0}, Lcom/aide/ui/activities/ShopLearningPopupActivity;->v5(Lcom/aide/ui/activities/ShopLearningPopupActivity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/P;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

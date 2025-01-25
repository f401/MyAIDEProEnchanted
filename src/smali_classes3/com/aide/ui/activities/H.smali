.class Lcom/aide/ui/activities/H;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/activities/J;->j6(Ljava/util/Map;)V
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

.field final Hw:Lcom/aide/ui/activities/J;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x25f9816461dca1e8L

    const-wide v2, 0x193056d17aef5059L  # 2.346992695265388E-187

    const-class v4, Lcom/aide/ui/activities/H;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/activities/J;Ljava/util/Map;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/activities/H;->Hw:Lcom/aide/ui/activities/J;

    iput-object p2, p0, Lcom/aide/ui/activities/H;->FH:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0xbd5dc242d35d28L
    .end annotation

    const-wide v0, -0x142b84fc111c30abL  # -2.6932591160280283E211

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/H;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/activities/H;->Hw:Lcom/aide/ui/activities/J;

    iget-object v2, v2, Lcom/aide/ui/activities/J;->FH:Lcom/aide/ui/activities/ShopExpertPopupActivity;

    invoke-static {v2}, Lcom/aide/ui/activities/ShopExpertPopupActivity;->FH(Lcom/aide/ui/activities/ShopExpertPopupActivity;)Z

    move-result v2

    if-eqz v2, :cond_17

    return-void

    :cond_17
    const-string v2, "ExpertShopOKShown"

    invoke-static {v2}, Labcd/F;->j6(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aide/ui/activities/H;->Hw:Lcom/aide/ui/activities/J;

    iget-object v2, v2, Lcom/aide/ui/activities/J;->FH:Lcom/aide/ui/activities/ShopExpertPopupActivity;

    iget-object v3, p0, Lcom/aide/ui/activities/H;->FH:Ljava/util/Map;

    invoke-static {v2, v3}, Lcom/aide/ui/activities/ShopExpertPopupActivity;->j6(Lcom/aide/ui/activities/ShopExpertPopupActivity;Ljava/util/Map;)Ljava/util/Map;

    iget-object v2, p0, Lcom/aide/ui/activities/H;->Hw:Lcom/aide/ui/activities/J;

    iget-object v2, v2, Lcom/aide/ui/activities/J;->FH:Lcom/aide/ui/activities/ShopExpertPopupActivity;

    invoke-static {v2}, Lcom/aide/ui/activities/ShopExpertPopupActivity;->Hw(Lcom/aide/ui/activities/ShopExpertPopupActivity;)V
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_2d

    return-void

    :catchall_2d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/H;->DW:Z

    if-eqz v3, :cond_35

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_35
    throw v2
.end method

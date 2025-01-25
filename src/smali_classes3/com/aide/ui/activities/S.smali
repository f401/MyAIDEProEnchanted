.class Lcom/aide/ui/activities/S;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/yk$a;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/activities/ShopLearningPopupActivity;->DW()V
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
.field final FH:Lcom/aide/ui/activities/ShopLearningPopupActivity;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x16d3b28e19a2a2b8L  # -4.2312847618367747E198

    const-wide v2, -0x5fbed261c38cf0b0L

    const-class v4, Lcom/aide/ui/activities/S;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/activities/ShopLearningPopupActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/activities/S;->FH:Lcom/aide/ui/activities/ShopLearningPopupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x1054dde515fc85a0L
    .end annotation

    const-wide v0, 0x5bbb23147d044a40L  # 7.704783307613557E133

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/S;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/ui/activities/Q;

    invoke-direct {v2, p0, p1}, Lcom/aide/ui/activities/Q;-><init>(Lcom/aide/ui/activities/S;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/S;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public j6(Ljava/util/Map;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x3bc5a3ffce26bd0L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Labcd/yk$g;",
            ">;)V"
        }
    .end annotation

    const-wide v0, 0x22e65cd36a37fd90L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/S;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/ui/activities/P;

    invoke-direct {v2, p0, p1}, Lcom/aide/ui/activities/P;-><init>(Lcom/aide/ui/activities/S;Ljava/util/Map;)V

    invoke-static {v2}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/S;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v2
.end method

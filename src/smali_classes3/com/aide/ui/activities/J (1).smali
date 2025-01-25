.class Lcom/aide/ui/activities/J;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/yk$a;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/activities/ShopExpertPopupActivity;->FH()V
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
.field final FH:Lcom/aide/ui/activities/ShopExpertPopupActivity;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x25f9816461dca1e8L

    const-wide v2, -0x356ced43cbf9f4f8L  # -1.7840313609698902E51

    const-class v4, Lcom/aide/ui/activities/J;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/activities/ShopExpertPopupActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/activities/J;->FH:Lcom/aide/ui/activities/ShopExpertPopupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1074d0cd68aa4c8bL
    .end annotation

    const-wide v0, -0x57f130fe8d9e8238L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/J;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/ui/activities/I;

    invoke-direct {v2, p0, p1}, Lcom/aide/ui/activities/I;-><init>(Lcom/aide/ui/activities/J;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/J;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public j6(Ljava/util/Map;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x1e2fe869678c531L
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

    const-wide v0, -0x101735ea3b8973f8L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/J;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/ui/activities/H;

    invoke-direct {v2, p0, p1}, Lcom/aide/ui/activities/H;-><init>(Lcom/aide/ui/activities/J;Ljava/util/Map;)V

    invoke-static {v2}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/J;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v2
.end method

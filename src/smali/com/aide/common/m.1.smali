.class Lcom/aide/common/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/common/n;->onTouchEvent(Landroid/view/MotionEvent;)Z
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
.field final FH:Lcom/aide/common/n;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/common/m;

    const-wide v2, 0xe01194377bb6361L

    const-wide v4, 0x44b72d5d6f760d75L    # 1.0945126531908688E23

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/common/n;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/common/m;->FH:Lcom/aide/common/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1870922e7496b48dL
    .end annotation

    const-wide v2, 0x10f7dc638245c89fL    # 6.29520646422856E-227

    :try_start_0
    sget-boolean v0, Lcom/aide/common/m;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x10f7dc638245c89fL    # 6.29520646422856E-227

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/common/m;->FH:Lcom/aide/common/n;

    invoke-static {v0}, Lcom/aide/common/n;->j6(Lcom/aide/common/n;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/common/m;->FH:Lcom/aide/common/n;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/aide/common/n;->j6(Lcom/aide/common/n;Z)Z

    iget-object v0, p0, Lcom/aide/common/m;->FH:Lcom/aide/common/n;

    invoke-static {v0}, Lcom/aide/common/n;->DW(Lcom/aide/common/n;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/m;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

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
    .registers 5

    const-wide v0, 0xe01194377bb6361L

    const-wide v2, 0x44b72d5d6f760d75L  # 1.0945126531908688E23

    const-class v4, Lcom/aide/common/m;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v0, 0x10f7dc638245c89fL  # 6.29520646422856E-227

    :try_start_5
    sget-boolean v2, Lcom/aide/common/m;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/common/m;->FH:Lcom/aide/common/n;

    invoke-static {v2}, Lcom/aide/common/n;->j6(Lcom/aide/common/n;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/aide/common/m;->FH:Lcom/aide/common/n;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/aide/common/n;->j6(Lcom/aide/common/n;Z)Z

    iget-object v2, p0, Lcom/aide/common/m;->FH:Lcom/aide/common/n;

    invoke-static {v2}, Lcom/aide/common/n;->DW(Lcom/aide/common/n;)V
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_20

    :cond_1f
    return-void

    :catchall_20
    move-exception v2

    sget-boolean v3, Lcom/aide/common/m;->DW:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method

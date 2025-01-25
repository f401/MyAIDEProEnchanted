.class Lcom/aide/ui/views/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/views/CodeEditTextScrollView$a;->onClick()V
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
.field final FH:Lcom/aide/ui/views/CodeEditTextScrollView$a;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x1397ababe31175c3L  # -1.6380927349548788E214

    const-wide v2, -0x3caecc04d8811c97L  # -1.9368913586064804E16

    const-class v4, Lcom/aide/ui/views/p;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/views/CodeEditTextScrollView$a;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/views/p;->FH:Lcom/aide/ui/views/CodeEditTextScrollView$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0xa838ee17da2e000L
    .end annotation

    const-wide v0, 0x373115c1e014d3e5L  # 7.661174279370959E-43

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/p;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/p;->FH:Lcom/aide/ui/views/CodeEditTextScrollView$a;

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->hide()V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/p;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1a
    throw v2
.end method

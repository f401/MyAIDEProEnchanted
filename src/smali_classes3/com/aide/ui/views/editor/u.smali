.class public Lcom/aide/ui/views/editor/u;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
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
.field public FH:F

.field public Hw:F


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/views/editor/u;

    const-wide v1, 0x46119b77e2111683L  # 3.487484672518446E29

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(FF)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/u;->j6:Z

    if-eqz v0, :cond_17

    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p2}, Ljava/lang/Float;-><init>(F)V

    const-wide v2, 0x124500c957b2c7d4L

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/aide/ui/views/editor/u;->FH:F

    iput p2, p0, Lcom/aide/ui/views/editor/u;->Hw:F
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/u;->DW:Z

    if-eqz v1, :cond_38

    const-wide v2, 0x124500c957b2c7d4L

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Float;

    invoke-direct {v5, p1}, Ljava/lang/Float;-><init>(F)V

    new-instance v6, Ljava/lang/Float;

    invoke-direct {v6, p2}, Ljava/lang/Float;-><init>(F)V

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_38
    throw v0
.end method

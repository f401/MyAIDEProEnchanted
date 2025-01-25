.class abstract Lcom/aide/ui/views/editor/va$b;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/views/editor/va;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "b"
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
.field private FH:Labcd/fm;
    .annotation runtime Labcd/ru;
        field = -0x2d9817c6279544e8L
    .end annotation
.end field

.field final Hw:Lcom/aide/ui/views/editor/va;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/views/editor/va$b;

    const-wide v1, 0x13f780424ad20a80L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method protected constructor <init>(Lcom/aide/ui/views/editor/va;Labcd/fm;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x27ba0292fa6de4f0L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va$b;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x4770ded548fecc4cL  # 1.4015414857301773E36

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/aide/ui/views/editor/va$b;->Hw:Lcom/aide/ui/views/editor/va;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/aide/ui/views/editor/va$b;->FH:Labcd/fm;
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/va$b;->DW:Z

    if-eqz v1, :cond_26

    const-wide v2, 0x4770ded548fecc4cL  # 1.4015414857301773E36

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v0
.end method


# virtual methods
.method public abstract DW()Lcom/aide/ui/views/editor/va$b;
.end method

.method public j6()Labcd/fm;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x374fe326179ce17L
    .end annotation

    const-wide v0, 0x39ccc0d9472cf8bL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/va$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/ui/views/editor/va$b;->FH:Labcd/fm;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/va$b;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public abstract j6(Lcom/aide/ui/views/editor/g;)V
.end method

.method public abstract j6(Lcom/aide/ui/views/editor/va$b;)Z
.end method

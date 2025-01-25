.class abstract Lcom/aide/ui/views/editor/OEditor$e;
.super Lcom/aide/ui/views/editor/a;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/views/editor/OEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "e"
.end annotation


# static fields
.field private static Hw:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static v5:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# instance fields
.field final Zo:Lcom/aide/ui/views/editor/OEditor;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/views/editor/OEditor$e;

    const-wide v1, -0x5332704ad125efd9L  # -7.08591168287604E-93

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Lcom/aide/ui/views/editor/OEditor;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x5cfdd3e06c096e4L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0xb0d8518000a9a0L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/views/editor/OEditor$e;->Hw:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/aide/ui/views/editor/OEditor$e;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-direct {p0}, Lcom/aide/ui/views/editor/a;-><init>()V
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/views/editor/OEditor$e;->v5:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method

.method synthetic constructor <init>(Lcom/aide/ui/views/editor/OEditor;Lcom/aide/ui/views/editor/O;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/OEditor$e;->Hw:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x58375cede722fa1bL  # -4.88494219355534E-117

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Lcom/aide/ui/views/editor/OEditor$e;-><init>(Lcom/aide/ui/views/editor/OEditor;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/OEditor$e;->v5:Z

    if-eqz v1, :cond_22

    const-wide v2, -0x58375cede722fa1bL  # -4.88494219355534E-117

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v0
.end method


# virtual methods
.method protected abstract DW()V
.end method

.method public j6()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x330066dfc8dac460L
    .end annotation

    const-wide v0, -0x1b892965ba868660L  # -9.037766086878771E175

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/OEditor$e;->Hw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/OEditor$e;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->J0()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor$e;->DW()V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    :cond_17
    return-void

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/OEditor$e;->v5:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v2
.end method

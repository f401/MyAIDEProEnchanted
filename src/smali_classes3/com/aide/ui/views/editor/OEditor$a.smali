.class abstract Lcom/aide/ui/views/editor/OEditor$a;
.super Lcom/aide/ui/views/editor/ta;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/views/editor/OEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "a"
.end annotation


# static fields
.field private static VH:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static Zo:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field final gn:Lcom/aide/ui/views/editor/OEditor;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/views/editor/OEditor$a;

    const-wide v1, 0x41ed3b328256a67fL  # 3.923350546707824E9

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Lcom/aide/ui/views/editor/OEditor;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x72778f4b0e24930L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x14916f20962e3100L  # 1.325752133329452E-209

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/views/editor/OEditor$a;->Zo:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/aide/ui/views/editor/OEditor$a;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-direct {p0}, Lcom/aide/ui/views/editor/ta;-><init>()V
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/views/editor/OEditor$a;->VH:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method

.method synthetic constructor <init>(Lcom/aide/ui/views/editor/OEditor;Lcom/aide/ui/views/editor/O;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/OEditor$a;->Zo:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x2c88e0a216ae26f7L  # -1.2057963213106929E94

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Lcom/aide/ui/views/editor/OEditor$a;-><init>(Lcom/aide/ui/views/editor/OEditor;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/OEditor$a;->VH:Z

    if-eqz v1, :cond_22

    const-wide v2, -0x2c88e0a216ae26f7L  # -1.2057963213106929E94

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
        method = -0xeda8e1d11707cd0L
    .end annotation

    const-wide v0, -0x1fb3f40af6142af8L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/OEditor$a;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/OEditor$a;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->J0()Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/aide/ui/views/editor/OEditor$a;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-static {v2}, Lcom/aide/ui/views/editor/OEditor;->Zo(Lcom/aide/ui/views/editor/OEditor;)Z

    move-result v2

    if-nez v2, :cond_22

    iget-object v2, p0, Lcom/aide/ui/views/editor/OEditor$a;->gn:Lcom/aide/ui/views/editor/OEditor;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/editor/OConsole;->setSelectionVisibility(Z)V

    :cond_22
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor$a;->DW()V
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_26

    return-void

    :catchall_26
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/OEditor$a;->VH:Z

    if-eqz v3, :cond_2e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2e
    throw v2
.end method

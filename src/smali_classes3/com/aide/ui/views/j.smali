.class Lcom/aide/ui/views/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/ui/views/editor/t;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/views/CodeEditTextScrollView;->onFinishInflate()V
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
.field final FH:Lcom/aide/ui/views/CodeEditTextScrollView;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x1531a05ac6f9b43cL

    const-wide v2, -0x1ed93d8111a83b21L  # -9.999428725393734E159

    const-class v4, Lcom/aide/ui/views/j;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/views/CodeEditTextScrollView;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/views/j;->FH:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Lcom/aide/ui/views/editor/OConsole;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x779f64279e051ebL
    .end annotation

    const-wide v0, 0x445edaf3184a4e03L  # 2.276717211353244E21

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/j;->FH:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditTextScrollView;->FH()V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/j;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public j6(Lcom/aide/ui/views/editor/OConsole;Z)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x1054011c6dabcf3bL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/j;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x1495027b35b2b655L  # 1.597653971299573E-209

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Lcom/aide/ui/views/j;->FH:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditTextScrollView;->FH()V
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/j;->DW:Z

    if-eqz v1, :cond_2c

    const-wide v2, 0x1495027b35b2b655L  # 1.597653971299573E-209

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    throw v0
.end method

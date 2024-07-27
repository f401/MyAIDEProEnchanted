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
    .registers 6

    const-class v0, Lcom/aide/ui/views/j;

    const-wide v2, 0x1531a05ac6f9b43cL

    const-wide v4, -0x1ed93d8111a83b21L    # -9.999428725393734E159

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v2, 0x445edaf3184a4e03L    # 2.276717211353244E21

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/j;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x445edaf3184a4e03L    # 2.276717211353244E21

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/j;->FH:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditTextScrollView;->FH()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/j;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Lcom/aide/ui/views/editor/OConsole;Z)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x1054011c6dabcf3bL
    .end annotation

    const-wide v2, 0x1495027b35b2b655L    # 1.597653971299573E-209

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/j;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v4, 0x1495027b35b2b655L    # 1.597653971299573E-209

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/j;->FH:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditTextScrollView;->FH()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/j;->DW:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.class Lcom/aide/ui/views/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/ui/views/editor/n;


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

    const-wide v2, -0x1ed8ebeb9e005254L

    const-class v4, Lcom/aide/ui/views/i;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/views/CodeEditTextScrollView;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/views/i;->FH:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Lcom/aide/ui/views/editor/OConsole;IIZ)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x4f4108181d6b350L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/i;->j6:Z

    if-eqz v0, :cond_1d

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p4}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x451b20d43eba9ed7L  # 8.199007021722566E24

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    iget-object v0, p0, Lcom/aide/ui/views/i;->FH:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6()Z

    iget-object v0, p0, Lcom/aide/ui/views/i;->FH:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditTextScrollView;->FH()V
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_28

    return-void

    :catchall_28
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/i;->DW:Z

    if-eqz v1, :cond_47

    const-wide v2, 0x451b20d43eba9ed7L  # 8.199007021722566E24

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p4}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_47
    throw v0
.end method

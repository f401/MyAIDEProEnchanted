.class Lcom/aide/ui/debugger/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/debugger/DebugView;->DW()V
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
.field final FH:Landroid/widget/ListView;

.field final Hw:Lcom/aide/ui/debugger/DebugView;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x2dc08d82614a4f83L  # 2.600291149899644E-88

    const-wide v2, -0x2c4331b5033ce160L  # -2.4034719962774696E95

    const-class v4, Lcom/aide/ui/debugger/b;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/debugger/DebugView;Landroid/widget/ListView;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/debugger/b;->Hw:Lcom/aide/ui/debugger/DebugView;

    iput-object p2, p0, Lcom/aide/ui/debugger/b;->FH:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 15
    .annotation runtime Labcd/su;
        method = -0x6e04e8d6fc0ac69L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/b;->j6:Z

    if-eqz v0, :cond_19

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Long;

    invoke-direct {v7, p4, p5}, Ljava/lang/Long;-><init>(J)V

    const-wide v1, -0x44feb7489b607db8L  # -1.7871287133141816E-24

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    iget-object v0, p0, Lcom/aide/ui/debugger/b;->FH:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/debugger/DebugView$a;

    iget-object v1, v0, Lcom/aide/ui/debugger/DebugView$a;->Hw:Lcom/aide/ui/debugger/Debugger$a;

    if-eqz v1, :cond_2f

    iget-object v0, v0, Lcom/aide/ui/debugger/DebugView$a;->Hw:Lcom/aide/ui/debugger/Debugger$a;

    invoke-virtual {v0}, Lcom/aide/ui/debugger/Debugger$a;->j6()V

    goto :goto_42

    :cond_2f
    iget-object v1, v0, Lcom/aide/ui/debugger/DebugView$a;->FH:Lcom/aide/ui/debugger/Debugger$c;

    if-eqz v1, :cond_39

    iget-object v0, v0, Lcom/aide/ui/debugger/DebugView$a;->FH:Lcom/aide/ui/debugger/Debugger$c;

    invoke-virtual {v0}, Lcom/aide/ui/debugger/Debugger$c;->j6()V

    goto :goto_42

    :cond_39
    iget-object v1, v0, Lcom/aide/ui/debugger/DebugView$a;->v5:Lcom/aide/ui/debugger/Debugger$b;

    if-eqz v1, :cond_42

    iget-object v0, v0, Lcom/aide/ui/debugger/DebugView$a;->v5:Lcom/aide/ui/debugger/Debugger$b;

    invoke-virtual {v0}, Lcom/aide/ui/debugger/Debugger$b;->DW()V
    :try_end_42
    .catchall {:try_start_0 .. :try_end_42} :catchall_43

    :cond_42
    :goto_42
    return-void

    :catchall_43
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/debugger/b;->DW:Z

    if-eqz v1, :cond_5e

    const-wide v2, -0x44feb7489b607db8L  # -1.7871287133141816E-24

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Long;

    invoke-direct {v8, p4, p5}, Ljava/lang/Long;-><init>(J)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5e
    throw v0
.end method

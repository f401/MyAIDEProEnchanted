.class Lcom/aide/ui/views/editor/da;
.super Lcom/aide/ui/views/editor/ta;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/views/editor/OEditor;->KD()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
    .registers 5

    const-wide v0, -0x617ac3500286c73bL

    const-wide v2, -0x15ffde979654e08dL  # -3.951071730444177E202

    const-class v4, Lcom/aide/ui/views/editor/da;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/views/editor/OEditor;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/views/editor/da;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-direct {p0}, Lcom/aide/ui/views/editor/ta;-><init>()V

    return-void
.end method


# virtual methods
.method public j6()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x3cc4dd1e4418a6c9L
    .end annotation

    const-wide v0, 0x3b838e4d0fea5730L  # 5.17639393467447E-22

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/da;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/da;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OEditor;->lg()Z

    move-result v2

    if-eqz v2, :cond_8e

    iget-object v2, p0, Lcom/aide/ui/views/editor/da;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->J0()Z

    move-result v2

    if-eqz v2, :cond_4a

    iget-object v2, p0, Lcom/aide/ui/views/editor/da;->gn:Lcom/aide/ui/views/editor/OEditor;

    sget-object v3, Lcom/aide/ui/views/editor/OEditor$b;->j6:Lcom/aide/ui/views/editor/OEditor$b;

    invoke-static {v2, v3}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor;Lcom/aide/ui/views/editor/OEditor$b;)V

    iget-object v2, p0, Lcom/aide/ui/views/editor/da;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/g;->BT()V

    iget-object v2, p0, Lcom/aide/ui/views/editor/da;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getFirstSelectedColumn()I

    move-result v3

    iget-object v4, p0, Lcom/aide/ui/views/editor/da;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v4}, Lcom/aide/ui/views/editor/OConsole;->getFirstSelectedLine()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/aide/ui/views/editor/OConsole;->v5(II)V

    iget-object v2, p0, Lcom/aide/ui/views/editor/da;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OEditor;->BT()V

    iget-object v2, p0, Lcom/aide/ui/views/editor/da;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/g;->BT()V

    goto :goto_8e

    :cond_4a
    iget-object v2, p0, Lcom/aide/ui/views/editor/da;->gn:Lcom/aide/ui/views/editor/OEditor;

    sget-object v3, Lcom/aide/ui/views/editor/OEditor$b;->Hw:Lcom/aide/ui/views/editor/OEditor$b;

    invoke-static {v2, v3}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor;Lcom/aide/ui/views/editor/OEditor$b;)V

    iget-object v2, p0, Lcom/aide/ui/views/editor/da;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v2

    iget-object v3, p0, Lcom/aide/ui/views/editor/da;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v3}, Lcom/aide/ui/views/editor/OConsole;->getCaretColumn()I

    move-result v3

    iget-object v4, p0, Lcom/aide/ui/views/editor/da;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v4}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/aide/ui/views/editor/g;->EQ(I)I

    move-result v4

    if-eq v3, v4, :cond_75

    iget-object v4, p0, Lcom/aide/ui/views/editor/da;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v4}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v4

    iget-object v5, p0, Lcom/aide/ui/views/editor/da;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v4, v3, v2, v5}, Lcom/aide/ui/views/editor/g;->DW(IILjava/lang/Object;)V

    goto :goto_8e

    :cond_75
    iget-object v3, p0, Lcom/aide/ui/views/editor/da;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v3}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/views/editor/g;->v5()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_8e

    iget-object v3, p0, Lcom/aide/ui/views/editor/da;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v3}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v3

    iget-object v4, p0, Lcom/aide/ui/views/editor/da;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v3, v2, v4}, Lcom/aide/ui/views/editor/g;->j6(ILjava/lang/Object;)V
    :try_end_8e
    .catchall {:try_start_5 .. :try_end_8e} :catchall_8f

    :cond_8e
    :goto_8e
    return-void

    :catchall_8f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/da;->VH:Z

    if-eqz v3, :cond_97

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_97
    throw v2
.end method

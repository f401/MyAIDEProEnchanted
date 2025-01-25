.class Lcom/aide/ui/views/editor/ca;
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

    const-wide v2, -0x15ffc7db08eb2300L  # -3.972826343927839E202

    const-class v4, Lcom/aide/ui/views/editor/ca;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/views/editor/OEditor;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/views/editor/ca;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-direct {p0}, Lcom/aide/ui/views/editor/ta;-><init>()V

    return-void
.end method


# virtual methods
.method public j6()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x4196e4bb4ee99d89L
    .end annotation

    const-wide v0, 0x3a64f3c746ce6aa1L  # 2.115637551547294E-27

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/ca;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/ca;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OEditor;->lg()Z

    move-result v2

    if-eqz v2, :cond_7c

    iget-object v2, p0, Lcom/aide/ui/views/editor/ca;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->J0()Z

    move-result v2

    if-eqz v2, :cond_4a

    iget-object v2, p0, Lcom/aide/ui/views/editor/ca;->gn:Lcom/aide/ui/views/editor/OEditor;

    sget-object v3, Lcom/aide/ui/views/editor/OEditor$b;->j6:Lcom/aide/ui/views/editor/OEditor$b;

    invoke-static {v2, v3}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor;Lcom/aide/ui/views/editor/OEditor$b;)V

    iget-object v2, p0, Lcom/aide/ui/views/editor/ca;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/g;->BT()V

    iget-object v2, p0, Lcom/aide/ui/views/editor/ca;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getFirstSelectedColumn()I

    move-result v3

    iget-object v4, p0, Lcom/aide/ui/views/editor/ca;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v4}, Lcom/aide/ui/views/editor/OConsole;->getFirstSelectedLine()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/aide/ui/views/editor/OConsole;->v5(II)V

    iget-object v2, p0, Lcom/aide/ui/views/editor/ca;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OEditor;->BT()V

    iget-object v2, p0, Lcom/aide/ui/views/editor/ca;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/g;->BT()V

    goto :goto_7c

    :cond_4a
    iget-object v2, p0, Lcom/aide/ui/views/editor/ca;->gn:Lcom/aide/ui/views/editor/OEditor;

    sget-object v3, Lcom/aide/ui/views/editor/OEditor$b;->v5:Lcom/aide/ui/views/editor/OEditor$b;

    invoke-static {v2, v3}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor;Lcom/aide/ui/views/editor/OEditor$b;)V

    iget-object v2, p0, Lcom/aide/ui/views/editor/ca;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v2

    iget-object v3, p0, Lcom/aide/ui/views/editor/ca;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v3}, Lcom/aide/ui/views/editor/OConsole;->getCaretColumn()I

    move-result v3

    if-eqz v3, :cond_6d

    iget-object v4, p0, Lcom/aide/ui/views/editor/ca;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v4}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v4

    add-int/lit8 v3, v3, -0x1

    iget-object v5, p0, Lcom/aide/ui/views/editor/ca;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v4, v3, v2, v5}, Lcom/aide/ui/views/editor/g;->DW(IILjava/lang/Object;)V

    goto :goto_7c

    :cond_6d
    if-eqz v2, :cond_7c

    iget-object v3, p0, Lcom/aide/ui/views/editor/ca;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v3}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v3

    add-int/lit8 v2, v2, -0x1

    iget-object v4, p0, Lcom/aide/ui/views/editor/ca;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v3, v2, v4}, Lcom/aide/ui/views/editor/g;->j6(ILjava/lang/Object;)V
    :try_end_7c
    .catchall {:try_start_5 .. :try_end_7c} :catchall_7d

    :cond_7c
    :goto_7c
    return-void

    :catchall_7d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/ca;->VH:Z

    if-eqz v3, :cond_85

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_85
    throw v2
.end method

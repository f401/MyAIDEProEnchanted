.class Lcom/aide/ui/views/editor/Z;
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

    const-wide v2, -0x160053a7ed2d578bL  # -3.879085086032969E202

    const-class v4, Lcom/aide/ui/views/editor/Z;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/views/editor/OEditor;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/views/editor/Z;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-direct {p0}, Lcom/aide/ui/views/editor/ta;-><init>()V

    return-void
.end method


# virtual methods
.method public j6()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x50e00181ff7c15b7L
    .end annotation

    const-wide v0, 0x3827f1ed2175a53dL  # 3.5184051401223457E-38

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/Z;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/Z;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OEditor;->lg()Z

    move-result v2

    if-eqz v2, :cond_62

    iget-object v2, p0, Lcom/aide/ui/views/editor/Z;->gn:Lcom/aide/ui/views/editor/OEditor;

    sget-object v3, Lcom/aide/ui/views/editor/OEditor$b;->DW:Lcom/aide/ui/views/editor/OEditor$b;

    invoke-static {v2, v3}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor;Lcom/aide/ui/views/editor/OEditor$b;)V

    iget-object v2, p0, Lcom/aide/ui/views/editor/Z;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->J0()Z

    move-result v2

    if-eqz v2, :cond_46

    iget-object v2, p0, Lcom/aide/ui/views/editor/Z;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/g;->BT()V

    iget-object v2, p0, Lcom/aide/ui/views/editor/Z;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OEditor;->BT()V

    iget-object v2, p0, Lcom/aide/ui/views/editor/Z;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getFirstSelectedColumn()I

    move-result v3

    iget-object v4, p0, Lcom/aide/ui/views/editor/Z;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v4}, Lcom/aide/ui/views/editor/OConsole;->getFirstSelectedLine()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/aide/ui/views/editor/OConsole;->v5(II)V

    iget-object v2, p0, Lcom/aide/ui/views/editor/Z;->gn:Lcom/aide/ui/views/editor/OEditor;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/editor/OConsole;->setSelectionVisibility(Z)V

    :cond_46
    iget-object v2, p0, Lcom/aide/ui/views/editor/Z;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v2

    iget-object v3, p0, Lcom/aide/ui/views/editor/Z;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v3}, Lcom/aide/ui/views/editor/OConsole;->getCaretColumn()I

    move-result v3

    iget-object v4, p0, Lcom/aide/ui/views/editor/Z;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v4}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v4

    iget-object v5, p0, Lcom/aide/ui/views/editor/Z;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v4, v3, v2, v5}, Lcom/aide/ui/views/editor/g;->j6(IILjava/lang/Object;)V

    iget-object v4, p0, Lcom/aide/ui/views/editor/Z;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v4, v2, v3}, Lcom/aide/ui/views/editor/OEditor;->u7(II)V
    :try_end_62
    .catchall {:try_start_5 .. :try_end_62} :catchall_63

    :cond_62
    return-void

    :catchall_63
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/Z;->VH:Z

    if-eqz v3, :cond_6b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_6b
    throw v2
.end method

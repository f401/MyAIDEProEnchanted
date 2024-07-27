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
    .registers 6

    const-class v0, Lcom/aide/ui/views/editor/ca;

    const-wide v2, -0x617ac3500286c73bL

    const-wide v4, -0x15ffc7db08eb2300L    # -3.972826343927839E202

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v4, 0x3a64f3c746ce6aa1L    # 2.115637551547294E-27

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/ca;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3a64f3c746ce6aa1L    # 2.115637551547294E-27

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/ca;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OEditor;->lg()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/views/editor/ca;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OConsole;->J0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aide/ui/views/editor/ca;->gn:Lcom/aide/ui/views/editor/OEditor;

    sget-object v1, Lcom/aide/ui/views/editor/OEditor$b;->j6:Lcom/aide/ui/views/editor/OEditor$b;

    invoke-static {v0, v1}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor;Lcom/aide/ui/views/editor/OEditor$b;)V

    iget-object v0, p0, Lcom/aide/ui/views/editor/ca;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/g;->BT()V

    iget-object v0, p0, Lcom/aide/ui/views/editor/ca;->gn:Lcom/aide/ui/views/editor/OEditor;

    iget-object v1, p0, Lcom/aide/ui/views/editor/ca;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v1}, Lcom/aide/ui/views/editor/OConsole;->getFirstSelectedColumn()I

    move-result v1

    iget-object v2, p0, Lcom/aide/ui/views/editor/ca;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getFirstSelectedLine()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/aide/ui/views/editor/OConsole;->v5(II)V

    iget-object v0, p0, Lcom/aide/ui/views/editor/ca;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OEditor;->BT()V

    iget-object v0, p0, Lcom/aide/ui/views/editor/ca;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/g;->BT()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/aide/ui/views/editor/ca;->gn:Lcom/aide/ui/views/editor/OEditor;

    sget-object v1, Lcom/aide/ui/views/editor/OEditor$b;->v5:Lcom/aide/ui/views/editor/OEditor$b;

    invoke-static {v0, v1}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor;Lcom/aide/ui/views/editor/OEditor$b;)V

    iget-object v0, p0, Lcom/aide/ui/views/editor/ca;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v0

    iget-object v1, p0, Lcom/aide/ui/views/editor/ca;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v1}, Lcom/aide/ui/views/editor/OConsole;->getCaretColumn()I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/aide/ui/views/editor/ca;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v2

    add-int/lit8 v1, v1, -0x1

    iget-object v3, p0, Lcom/aide/ui/views/editor/ca;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2, v1, v0, v3}, Lcom/aide/ui/views/editor/g;->DW(IILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/ca;->VH:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    if-eqz v0, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/aide/ui/views/editor/ca;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v1}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Lcom/aide/ui/views/editor/ca;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v1, v0, v2}, Lcom/aide/ui/views/editor/g;->j6(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

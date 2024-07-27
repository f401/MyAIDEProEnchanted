.class Lcom/aide/ui/views/editor/P;
.super Lcom/aide/ui/views/editor/ta;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/views/editor/OEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "P"
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
.field private gn:Lcom/aide/ui/views/editor/OEditor$a;
    .annotation runtime Labcd/ru;
        field = -0x2db1cd09f3eda458L
    .end annotation
.end field

.field final u7:Lcom/aide/ui/views/editor/OEditor;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/views/editor/P;

    const-wide v2, -0x617ac3500286c73bL

    const-wide v4, -0x24d966df3a2d5968L    # -1.2531444635630718E131

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/views/editor/OEditor;Lcom/aide/ui/views/editor/OEditor$a;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/views/editor/P;->u7:Lcom/aide/ui/views/editor/OEditor;

    invoke-direct {p0}, Lcom/aide/ui/views/editor/ta;-><init>()V

    iput-object p2, p0, Lcom/aide/ui/views/editor/P;->gn:Lcom/aide/ui/views/editor/OEditor$a;

    return-void
.end method


# virtual methods
.method public j6()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x6cedf166fbdf12dL
    .end annotation

    const-wide v4, 0x652da36be4a703bL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/P;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x652da36be4a703bL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/P;->u7:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OConsole;->J0()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/views/editor/P;->u7:Lcom/aide/ui/views/editor/OEditor;

    iget-object v1, p0, Lcom/aide/ui/views/editor/P;->u7:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v1}, Lcom/aide/ui/views/editor/OConsole;->getCaretColumn()I

    move-result v1

    iget-object v2, p0, Lcom/aide/ui/views/editor/P;->u7:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/aide/ui/views/editor/OConsole;->DW(IIZ)V

    :cond_1
    iget-object v0, p0, Lcom/aide/ui/views/editor/P;->u7:Lcom/aide/ui/views/editor/OEditor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor;Z)Z

    iget-object v0, p0, Lcom/aide/ui/views/editor/P;->gn:Lcom/aide/ui/views/editor/OEditor$a;

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OEditor$a;->j6()V

    iget-object v0, p0, Lcom/aide/ui/views/editor/P;->u7:Lcom/aide/ui/views/editor/OEditor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor;Z)Z

    iget-object v0, p0, Lcom/aide/ui/views/editor/P;->u7:Lcom/aide/ui/views/editor/OEditor;

    iget-object v1, p0, Lcom/aide/ui/views/editor/P;->u7:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v1}, Lcom/aide/ui/views/editor/OConsole;->getCaretColumn()I

    move-result v1

    iget-object v2, p0, Lcom/aide/ui/views/editor/P;->u7:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/aide/ui/views/editor/OConsole;->Zo(II)V

    iget-object v0, p0, Lcom/aide/ui/views/editor/P;->u7:Lcom/aide/ui/views/editor/OEditor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aide/ui/views/editor/OConsole;->setSelectionVisibility(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/P;->VH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

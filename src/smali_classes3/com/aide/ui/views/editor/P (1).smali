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
    .registers 5

    const-wide v0, -0x617ac3500286c73bL

    const-wide v2, -0x24d966df3a2d5968L  # -1.2531444635630718E131

    const-class v4, Lcom/aide/ui/views/editor/P;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v0, 0x652da36be4a703bL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/P;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/P;->u7:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->J0()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_24

    iget-object v2, p0, Lcom/aide/ui/views/editor/P;->u7:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getCaretColumn()I

    move-result v4

    iget-object v5, p0, Lcom/aide/ui/views/editor/P;->u7:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v5}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v5

    invoke-virtual {v2, v4, v5, v3}, Lcom/aide/ui/views/editor/OConsole;->DW(IIZ)V

    :cond_24
    iget-object v2, p0, Lcom/aide/ui/views/editor/P;->u7:Lcom/aide/ui/views/editor/OEditor;

    invoke-static {v2, v3}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor;Z)Z

    iget-object v2, p0, Lcom/aide/ui/views/editor/P;->gn:Lcom/aide/ui/views/editor/OEditor$a;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OEditor$a;->j6()V

    iget-object v2, p0, Lcom/aide/ui/views/editor/P;->u7:Lcom/aide/ui/views/editor/OEditor;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor;Z)Z

    iget-object v2, p0, Lcom/aide/ui/views/editor/P;->u7:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getCaretColumn()I

    move-result v4

    iget-object v5, p0, Lcom/aide/ui/views/editor/P;->u7:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v5}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/aide/ui/views/editor/OConsole;->Zo(II)V

    iget-object v2, p0, Lcom/aide/ui/views/editor/P;->u7:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/editor/OConsole;->setSelectionVisibility(Z)V
    :try_end_48
    .catchall {:try_start_5 .. :try_end_48} :catchall_49

    return-void

    :catchall_49
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/P;->VH:Z

    if-eqz v3, :cond_51

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_51
    throw v2
.end method

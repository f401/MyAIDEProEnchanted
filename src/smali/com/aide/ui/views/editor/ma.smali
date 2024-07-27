.class Lcom/aide/ui/views/editor/ma;
.super Lcom/aide/ui/views/editor/OEditor$a;


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
.field private static tp:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static u7:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field final EQ:Lcom/aide/ui/views/editor/OEditor;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/views/editor/ma;

    const-wide v2, -0x617ac3500286c73bL

    const-wide v4, 0x24fe1db382f5df20L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/views/editor/OEditor;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/views/editor/ma;->EQ:Lcom/aide/ui/views/editor/OEditor;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/aide/ui/views/editor/OEditor$a;-><init>(Lcom/aide/ui/views/editor/OEditor;Lcom/aide/ui/views/editor/O;)V

    return-void
.end method


# virtual methods
.method public DW()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0xc950a4bda4a7d88L
    .end annotation

    const-wide v4, -0x1ef4ae4545c9995L    # -1.748259784653437E299

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/ma;->u7:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1ef4ae4545c9995L    # -1.748259784653437E299

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/ma;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v0

    iget-object v1, p0, Lcom/aide/ui/views/editor/ma;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v1}, Lcom/aide/ui/views/editor/OConsole;->getCaretColumn()I

    move-result v1

    iget-object v2, p0, Lcom/aide/ui/views/editor/ma;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-static {v2}, Lcom/aide/ui/views/editor/OEditor;->Hw(Lcom/aide/ui/views/editor/OEditor;)Lcom/aide/ui/views/editor/OEditor$b;

    move-result-object v2

    sget-object v3, Lcom/aide/ui/views/editor/OEditor$b;->Zo:Lcom/aide/ui/views/editor/OEditor$b;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/aide/ui/views/editor/ma;->EQ:Lcom/aide/ui/views/editor/OEditor;

    sget-object v3, Lcom/aide/ui/views/editor/OEditor$b;->Zo:Lcom/aide/ui/views/editor/OEditor$b;

    invoke-static {v2, v3}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor;Lcom/aide/ui/views/editor/OEditor$b;)V

    iget-object v2, p0, Lcom/aide/ui/views/editor/ma;->EQ:Lcom/aide/ui/views/editor/OEditor;

    iget-object v3, p0, Lcom/aide/ui/views/editor/ma;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v3, v1, v0}, Lcom/aide/ui/views/editor/OConsole;->j6(II)F

    move-result v1

    invoke-static {v2, v1}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor;F)V

    :cond_1
    iget-object v1, p0, Lcom/aide/ui/views/editor/ma;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v1}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v1

    invoke-interface {v1}, Lcom/aide/ui/views/editor/o;->v5()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/aide/ui/views/editor/ma;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v1, v0}, Lcom/aide/ui/views/editor/OConsole;->Zo(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/aide/ui/views/editor/ma;->EQ:Lcom/aide/ui/views/editor/OEditor;

    iget-object v2, p0, Lcom/aide/ui/views/editor/ma;->EQ:Lcom/aide/ui/views/editor/OEditor;

    iget-object v3, p0, Lcom/aide/ui/views/editor/ma;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-static {v3}, Lcom/aide/ui/views/editor/OEditor;->v5(Lcom/aide/ui/views/editor/OEditor;)F

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/aide/ui/views/editor/OConsole;->j6(FI)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/aide/ui/views/editor/OConsole;->v5(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/ma;->tp:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

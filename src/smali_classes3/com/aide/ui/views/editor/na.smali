.class Lcom/aide/ui/views/editor/na;
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
    .registers 5

    const-wide v0, -0x617ac3500286c73bL

    const-wide v2, 0x24fe465d8d4e04b1L  # 1.7060985174999943E-130

    const-class v4, Lcom/aide/ui/views/editor/na;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/views/editor/OEditor;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/views/editor/na;->EQ:Lcom/aide/ui/views/editor/OEditor;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/aide/ui/views/editor/OEditor$a;-><init>(Lcom/aide/ui/views/editor/OEditor;Lcom/aide/ui/views/editor/O;)V

    return-void
.end method


# virtual methods
.method public DW()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x87c08544fadb784L
    .end annotation

    const-wide v0, -0x17b7350a8358040L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/na;->u7:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/na;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v2

    iget-object v3, p0, Lcom/aide/ui/views/editor/na;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v3}, Lcom/aide/ui/views/editor/OConsole;->getCaretColumn()I

    move-result v3

    iget-object v4, p0, Lcom/aide/ui/views/editor/na;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-static {v4}, Lcom/aide/ui/views/editor/OEditor;->Hw(Lcom/aide/ui/views/editor/OEditor;)Lcom/aide/ui/views/editor/OEditor$b;

    move-result-object v4

    sget-object v5, Lcom/aide/ui/views/editor/OEditor$b;->Zo:Lcom/aide/ui/views/editor/OEditor$b;

    if-eq v4, v5, :cond_32

    iget-object v4, p0, Lcom/aide/ui/views/editor/na;->EQ:Lcom/aide/ui/views/editor/OEditor;

    sget-object v5, Lcom/aide/ui/views/editor/OEditor$b;->Zo:Lcom/aide/ui/views/editor/OEditor$b;

    invoke-static {v4, v5}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor;Lcom/aide/ui/views/editor/OEditor$b;)V

    iget-object v4, p0, Lcom/aide/ui/views/editor/na;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v4, v3, v2}, Lcom/aide/ui/views/editor/OConsole;->j6(II)F

    move-result v3

    invoke-static {v4, v3}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor;F)V

    :cond_32
    const/4 v3, 0x0

    :cond_33
    :goto_33
    if-lez v2, :cond_4e

    const/16 v4, 0xa

    if-lt v3, v4, :cond_41

    iget-object v4, p0, Lcom/aide/ui/views/editor/na;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v4, v2}, Lcom/aide/ui/views/editor/OConsole;->Zo(I)Z

    move-result v4

    if-eqz v4, :cond_4e

    :cond_41
    add-int/lit8 v2, v2, -0x1

    iget-object v4, p0, Lcom/aide/ui/views/editor/na;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v4, v2}, Lcom/aide/ui/views/editor/OConsole;->Zo(I)Z

    move-result v4

    if-nez v4, :cond_33

    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    :cond_4e
    iget-object v3, p0, Lcom/aide/ui/views/editor/na;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-static {v3}, Lcom/aide/ui/views/editor/OEditor;->v5(Lcom/aide/ui/views/editor/OEditor;)F

    move-result v4

    invoke-virtual {v3, v4, v2}, Lcom/aide/ui/views/editor/OConsole;->j6(FI)I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lcom/aide/ui/views/editor/OConsole;->v5(II)V
    :try_end_5b
    .catchall {:try_start_5 .. :try_end_5b} :catchall_5c

    return-void

    :catchall_5c
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/na;->tp:Z

    if-eqz v3, :cond_64

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_64
    goto :goto_66

    :goto_65
    throw v2

    :goto_66
    goto :goto_65
.end method

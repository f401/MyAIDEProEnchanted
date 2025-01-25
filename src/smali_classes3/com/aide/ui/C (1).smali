.class Lcom/aide/ui/C;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/ui/views/editor/n;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/AIDEEditor;->sh()V
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
.field final FH:Lcom/aide/ui/AIDEEditor;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0xa1a685f40ce8470L  # -8.299751922617364E259

    const-wide v2, -0x1d02339394fa72dbL  # -7.028658124975042E168

    const-class v4, Lcom/aide/ui/C;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/AIDEEditor;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/C;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Lcom/aide/ui/views/editor/OConsole;IIZ)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x44a80c19ee085ebL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/C;->j6:Z

    if-eqz v0, :cond_1d

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p4}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x5eb3afe34b231e7L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    invoke-static {}, Lcom/aide/ui/U;->XL()Labcd/Ak;

    move-result-object v0

    new-instance v7, Labcd/Tl;

    iget-object v1, p0, Lcom/aide/ui/C;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v1}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/aide/ui/C;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-static {v1}, Lcom/aide/ui/AIDEEditor;->j3(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v1

    add-int/lit8 v3, v1, 0x1

    iget-object v1, p0, Lcom/aide/ui/C;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-static {v1}, Lcom/aide/ui/AIDEEditor;->Mr(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/views/editor/OConsole;->getCaretColumn()I

    move-result v1

    add-int/lit8 v4, v1, 0x1

    iget-object v1, p0, Lcom/aide/ui/C;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-static {v1}, Lcom/aide/ui/AIDEEditor;->U2(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v1

    add-int/lit8 v5, v1, 0x1

    iget-object v1, p0, Lcom/aide/ui/C;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-static {v1}, Lcom/aide/ui/AIDEEditor;->a8(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/views/editor/OConsole;->getCaretColumn()I

    move-result v1

    add-int/lit8 v6, v1, 0x1

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Labcd/Tl;-><init>(Ljava/lang/String;IIII)V

    invoke-virtual {v0, v7}, Labcd/Ak;->j6(Labcd/Tl;)V
    :try_end_60
    .catchall {:try_start_0 .. :try_end_60} :catchall_61

    return-void

    :catchall_61
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/C;->DW:Z

    if-eqz v1, :cond_80

    const-wide v2, 0x5eb3afe34b231e7L

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

    :cond_80
    throw v0
.end method

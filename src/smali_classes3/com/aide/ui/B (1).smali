.class Lcom/aide/ui/B;
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

    const-wide v2, -0x1d01f2386efbd4d8L  # -7.088875720502318E168

    const-class v4, Lcom/aide/ui/B;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/AIDEEditor;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/B;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Lcom/aide/ui/views/editor/OConsole;IIZ)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x10ec00fca777d58cL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/B;->j6:Z

    if-eqz v0, :cond_1d

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p4}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x13671a5b0dcbf6a0L  # 3.350893170217509E-215

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    iget-object v0, p0, Lcom/aide/ui/B;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-static {v0}, Lcom/aide/ui/AIDEEditor;->aM(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/j;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/B;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-static {v1}, Lcom/aide/ui/AIDEEditor;->QX(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/aide/ui/B;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-static {v2}, Lcom/aide/ui/AIDEEditor;->XL(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getCaretColumn()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/aide/ui/j;->j6(II)V
    :try_end_3e
    .catchall {:try_start_0 .. :try_end_3e} :catchall_3f

    return-void

    :catchall_3f
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/B;->DW:Z

    if-eqz v1, :cond_5e

    const-wide v2, 0x13671a5b0dcbf6a0L  # 3.350893170217509E-215

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

    :cond_5e
    throw v0
.end method

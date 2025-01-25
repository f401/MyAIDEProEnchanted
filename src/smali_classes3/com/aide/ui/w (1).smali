.class Lcom/aide/ui/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/ui/views/CodeEditText$d;


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

    const-wide v2, -0x1d00ab70ad60bb27L  # -7.38996374921357E168

    const-class v4, Lcom/aide/ui/w;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/AIDEEditor;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/w;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(IIII)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x2b42a3a5015633fL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/w;->j6:Z

    if-eqz v0, :cond_21

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x65c6876dc2dd778L

    move-object v3, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    iget-object v0, p0, Lcom/aide/ui/w;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/aide/ui/AIDEEditor;->j6(IIII)V

    iget-object v0, p0, Lcom/aide/ui/w;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditor;->getEditorPager()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->J0()V

    iget-object v0, p0, Lcom/aide/ui/w;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText;->gn()V
    :try_end_34
    .catchall {:try_start_0 .. :try_end_34} :catchall_35

    return-void

    :catchall_35
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/w;->DW:Z

    if-eqz v1, :cond_58

    const-wide v2, -0x65c6876dc2dd778L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_58
    throw v0
.end method

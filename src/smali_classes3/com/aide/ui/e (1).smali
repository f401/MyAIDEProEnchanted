.class Lcom/aide/ui/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/ui/views/CustomKeysListView$a;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/j;->j6(Ljava/util/List;Z)V
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
.field final FH:Lcom/aide/ui/j;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x18aea3fc0f53a649L  # 8.596259399597165E-190

    const-wide v2, -0x61f19d5438494053L

    const-class v4, Lcom/aide/ui/e;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/j;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/e;->FH:Lcom/aide/ui/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x1613d2a6e0350614L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/e;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x707ff09eb357a65L  # 8.66357733878938E-275

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Lcom/aide/ui/e;->FH:Lcom/aide/ui/j;

    invoke-static {v0}, Lcom/aide/ui/j;->DW(Lcom/aide/ui/j;)Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/aide/ui/views/CodeEditText;->j6(ILandroid/view/KeyEvent;)Z

    move-result p1
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    return p1

    :catchall_1c
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/e;->DW:Z

    if-eqz v1, :cond_31

    const-wide v2, 0x707ff09eb357a65L  # 8.66357733878938E-275

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x725a7075a7bb4a5L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/e;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x4aa09116dbc4320L

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Lcom/aide/ui/e;->FH:Lcom/aide/ui/j;

    invoke-static {v0}, Lcom/aide/ui/j;->DW(Lcom/aide/ui/j;)Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/aide/ui/views/CodeEditText;->DW(ILandroid/view/KeyEvent;)Z

    move-result p1
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    return p1

    :catchall_1c
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/e;->DW:Z

    if-eqz v1, :cond_31

    const-wide v2, 0x4aa09116dbc4320L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v0
.end method

.class Lcom/aide/ui/AIDEEditor$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/ui/views/editor/p;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/AIDEEditor$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
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
.field final FH:Lcom/aide/ui/AIDEEditor$a;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x4e96d2689bcb1bL

    const-class v0, Lcom/aide/ui/AIDEEditor$a$a;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Lcom/aide/ui/AIDEEditor$a;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x11d102e64f349c5L
    .end annotation

    const-wide v4, 0x1b8465f15018f4a7L    # 4.027028247906102E-176

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1b8465f15018f4a7L    # 4.027028247906102E-176

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/AIDEEditor$a$a;->FH:Lcom/aide/ui/AIDEEditor$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor$a$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method synthetic constructor <init>(Lcom/aide/ui/AIDEEditor$a;Lcom/aide/ui/u;)V
    .registers 10

    const-wide v2, -0x36facc8fc566de14L    # -5.90995706583864E43

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x36facc8fc566de14L    # -5.90995706583864E43

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/aide/ui/AIDEEditor$a$a;-><init>(Lcom/aide/ui/AIDEEditor$a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a$a;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private j6()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1dbd4e9a0eda6c55L
    .end annotation

    const-wide v2, 0x33bcb0021e1814a3L    # 1.7852295185750548E-59

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x33bcb0021e1814a3L    # 1.7852295185750548E-59

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->gn()Lcom/aide/ui/debugger/Debugger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/debugger/Debugger;->tp()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a$a;->FH:Lcom/aide/ui/AIDEEditor$a;

    invoke-static {v0}, Lcom/aide/ui/AIDEEditor$a;->v5(Lcom/aide/ui/AIDEEditor$a;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a$a;->FH:Lcom/aide/ui/AIDEEditor$a;

    invoke-static {v0}, Lcom/aide/ui/AIDEEditor$a;->v5(Lcom/aide/ui/AIDEEditor$a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".java"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a$a;->FH:Lcom/aide/ui/AIDEEditor$a;

    invoke-static {v0}, Lcom/aide/ui/AIDEEditor$a;->v5(Lcom/aide/ui/AIDEEditor$a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/aide/ui/U;->gn()Lcom/aide/ui/debugger/Debugger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/debugger/Debugger;->j3()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor$a$a;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method


# virtual methods
.method public DW(Lcom/aide/ui/views/editor/o;IIII)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0x4612962872490091L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a$a;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x16a00bae36e4673L

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a$a;->FH:Lcom/aide/ui/AIDEEditor$a;

    invoke-static {v0}, Lcom/aide/ui/AIDEEditor$a;->j6(Lcom/aide/ui/AIDEEditor$a;)Labcd/em;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a$a;->FH:Lcom/aide/ui/AIDEEditor$a;

    invoke-static {v0}, Lcom/aide/ui/AIDEEditor$a;->j6(Lcom/aide/ui/AIDEEditor$a;)Labcd/em;

    move-result-object v0

    invoke-virtual {v0, p3, p2, p5, p4}, Labcd/em;->FH(IIII)V

    :cond_1
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a$a;->FH:Lcom/aide/ui/AIDEEditor$a;

    invoke-static {v0}, Lcom/aide/ui/AIDEEditor$a;->DW(Lcom/aide/ui/AIDEEditor$a;)Labcd/em;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a$a;->FH:Lcom/aide/ui/AIDEEditor$a;

    invoke-static {v0}, Lcom/aide/ui/AIDEEditor$a;->DW(Lcom/aide/ui/AIDEEditor$a;)Labcd/em;

    move-result-object v0

    invoke-virtual {v0, p3, p2, p5, p4}, Labcd/em;->FH(IIII)V

    :cond_2
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a$a;->FH:Lcom/aide/ui/AIDEEditor$a;

    invoke-static {v0}, Lcom/aide/ui/AIDEEditor$a;->FH(Lcom/aide/ui/AIDEEditor$a;)Labcd/em;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a$a;->FH:Lcom/aide/ui/AIDEEditor$a;

    invoke-static {v0}, Lcom/aide/ui/AIDEEditor$a;->FH(Lcom/aide/ui/AIDEEditor$a;)Labcd/em;

    move-result-object v0

    invoke-virtual {v0, p3, p2, p5, p4}, Labcd/em;->FH(IIII)V

    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a$a;->FH:Lcom/aide/ui/AIDEEditor$a;

    invoke-static {v0}, Lcom/aide/ui/AIDEEditor$a;->Hw(Lcom/aide/ui/AIDEEditor$a;)V

    :cond_3
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor$a$a;->j6()V

    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Xj;->VH()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a$a;->DW:Z

    if-eqz v0, :cond_4

    const-wide v2, 0x16a00bae36e4673L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method

.method public j6(Lcom/aide/ui/views/editor/o;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xfabda05cc5e1abbL
    .end annotation

    const-wide v2, 0x445fa5191baad5fL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x445fa5191baad5fL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor$a$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Lcom/aide/ui/views/editor/o;IIII)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0x31f42f379a1640ffL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a$a;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x2393b703c55fe7cbL    # -1.6446964049889257E137

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a$a;->FH:Lcom/aide/ui/AIDEEditor$a;

    invoke-static {v0}, Lcom/aide/ui/AIDEEditor$a;->j6(Lcom/aide/ui/AIDEEditor$a;)Labcd/em;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a$a;->FH:Lcom/aide/ui/AIDEEditor$a;

    invoke-static {v0}, Lcom/aide/ui/AIDEEditor$a;->j6(Lcom/aide/ui/AIDEEditor$a;)Labcd/em;

    move-result-object v0

    invoke-virtual {v0, p3, p2, p5, p4}, Labcd/em;->DW(IIII)V

    :cond_1
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a$a;->FH:Lcom/aide/ui/AIDEEditor$a;

    invoke-static {v0}, Lcom/aide/ui/AIDEEditor$a;->DW(Lcom/aide/ui/AIDEEditor$a;)Labcd/em;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a$a;->FH:Lcom/aide/ui/AIDEEditor$a;

    invoke-static {v0}, Lcom/aide/ui/AIDEEditor$a;->DW(Lcom/aide/ui/AIDEEditor$a;)Labcd/em;

    move-result-object v0

    invoke-virtual {v0, p3, p2, p5, p4}, Labcd/em;->DW(IIII)V

    :cond_2
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a$a;->FH:Lcom/aide/ui/AIDEEditor$a;

    invoke-static {v0}, Lcom/aide/ui/AIDEEditor$a;->FH(Lcom/aide/ui/AIDEEditor$a;)Labcd/em;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a$a;->FH:Lcom/aide/ui/AIDEEditor$a;

    invoke-static {v0}, Lcom/aide/ui/AIDEEditor$a;->FH(Lcom/aide/ui/AIDEEditor$a;)Labcd/em;

    move-result-object v0

    invoke-virtual {v0, p3, p2, p5, p4}, Labcd/em;->DW(IIII)V

    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a$a;->FH:Lcom/aide/ui/AIDEEditor$a;

    invoke-static {v0}, Lcom/aide/ui/AIDEEditor$a;->Hw(Lcom/aide/ui/AIDEEditor$a;)V

    :cond_3
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor$a$a;->j6()V

    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Xj;->VH()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a$a;->DW:Z

    if-eqz v0, :cond_4

    const-wide v2, -0x2393b703c55fe7cbL    # -1.6446964049889257E137

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method

.method public j6(Lcom/aide/ui/views/editor/o;III[C)V
    .registers 16
    .annotation runtime Labcd/su;
        method = -0xcaeaba5530e0f2fL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a$a;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x2096788e41da7aafL

    move-object v2, p0

    move-object v3, p1

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor$a$a;->j6()V

    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Xj;->VH()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a$a;->DW:Z

    if-eqz v0, :cond_1

    const-wide v2, 0x2096788e41da7aafL

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    move-object v9, p5

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

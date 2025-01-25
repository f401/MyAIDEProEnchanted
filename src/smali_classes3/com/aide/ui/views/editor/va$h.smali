.class Lcom/aide/ui/views/editor/va$h;
.super Lcom/aide/ui/views/editor/va$i;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/views/editor/va;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "h"
.end annotation


# static fields
.field private static EQ:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static tp:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field final we:Lcom/aide/ui/views/editor/va;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/views/editor/va$h;

    const-wide v1, 0x1a407424e2efe500L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/views/editor/va;Labcd/fm;Labcd/hm;C)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x2f82c093c1185bf8L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va$h;->tp:Z

    if-eqz v0, :cond_15

    new-instance v7, Ljava/lang/Character;

    invoke-direct {v7, p4}, Ljava/lang/Character;-><init>(C)V

    const-wide v1, -0x373a6f2580fdbaedL  # -3.7572981931488E42

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    iput-object p1, p0, Lcom/aide/ui/views/editor/va$h;->we:Lcom/aide/ui/views/editor/va;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aide/ui/views/editor/va$i;-><init>(Lcom/aide/ui/views/editor/va;Labcd/fm;Labcd/hm;C)V
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/va$h;->EQ:Z

    if-eqz v1, :cond_32

    const-wide v2, -0x373a6f2580fdbaedL  # -3.7572981931488E42

    const/4 v4, 0x0

    new-instance v8, Ljava/lang/Character;

    invoke-direct {v8, p4}, Ljava/lang/Character;-><init>(C)V

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    throw v0
.end method

.method public constructor <init>(Lcom/aide/ui/views/editor/va;Labcd/fm;Labcd/hm;Ljava/lang/String;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x24479f6eb3539adL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va$h;->tp:Z

    if-eqz v0, :cond_11

    const-wide v1, -0x732550363b88818L  # -8.024779938321627E273

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iput-object p1, p0, Lcom/aide/ui/views/editor/va$h;->we:Lcom/aide/ui/views/editor/va;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aide/ui/views/editor/va$i;-><init>(Lcom/aide/ui/views/editor/va;Labcd/fm;Labcd/hm;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/va$h;->EQ:Z

    if-eqz v1, :cond_2a

    const-wide v2, -0x732550363b88818L  # -8.024779938321627E273

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2a
    throw v0
.end method

.method public constructor <init>(Lcom/aide/ui/views/editor/va;Lcom/aide/ui/views/editor/va$c;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x4a88d356114d450L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va$h;->tp:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x20f8b0aabaae7efdL  # 7.542669995348123E-150

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/aide/ui/views/editor/va$h;->we:Lcom/aide/ui/views/editor/va;

    invoke-direct {p0, p1, p2}, Lcom/aide/ui/views/editor/va$i;-><init>(Lcom/aide/ui/views/editor/va;Lcom/aide/ui/views/editor/va$i;)V
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/va$h;->EQ:Z

    if-eqz v1, :cond_24

    const-wide v2, 0x20f8b0aabaae7efdL  # 7.542669995348123E-150

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    throw v0
.end method


# virtual methods
.method public DW()Lcom/aide/ui/views/editor/va$b;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x4ad69a8ced70e834L
    .end annotation

    const-wide v0, -0x3dc81a328588ac2fL  # -1.0263969650332741E11

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/va$h;->tp:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/ui/views/editor/va$c;

    iget-object v3, p0, Lcom/aide/ui/views/editor/va$h;->we:Lcom/aide/ui/views/editor/va;

    invoke-direct {v2, v3, p0}, Lcom/aide/ui/views/editor/va$c;-><init>(Lcom/aide/ui/views/editor/va;Lcom/aide/ui/views/editor/va$h;)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-object v2

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/va$h;->EQ:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public j6(Lcom/aide/ui/views/editor/g;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x3cbd89c622d883fL
    .end annotation

    const-wide v0, 0x61460e3cb8a66ea8L  # 3.8760275867872636E160

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/va$h;->tp:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    iget-object v3, p0, Lcom/aide/ui/views/editor/va$h;->we:Lcom/aide/ui/views/editor/va;

    invoke-virtual {p1, v2, v3}, Lcom/aide/ui/views/editor/g;->j6(Labcd/hm;Ljava/lang/Object;)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/va$h;->EQ:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public j6(Lcom/aide/ui/views/editor/va$b;)Z
    .registers 15
    .annotation runtime Labcd/su;
        method = -0x1ac6a70d30decf9L
    .end annotation

    const-wide v0, -0x19e1319d9ec0a090L  # -8.181168605001693E183

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/va$h;->tp:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    instance-of v2, p1, Lcom/aide/ui/views/editor/va$h;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_8b

    move-object v2, p1

    check-cast v2, Lcom/aide/ui/views/editor/va$h;

    iget-object v5, p0, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    invoke-virtual {v5}, Labcd/hm;->Hw()I

    move-result v5

    iget-object v6, p0, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    invoke-virtual {v6}, Labcd/hm;->FH()I

    move-result v6

    iget-object v7, p0, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    invoke-virtual {v7}, Labcd/hm;->DW()I

    move-result v7

    iget-object v8, p0, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    invoke-virtual {v8}, Labcd/hm;->j6()I

    move-result v8

    iget-object v9, v2, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    invoke-virtual {v9}, Labcd/hm;->Hw()I

    move-result v9

    iget-object v10, v2, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    invoke-virtual {v10}, Labcd/hm;->FH()I

    move-result v10

    iget-object v11, v2, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    invoke-virtual {v11}, Labcd/hm;->DW()I

    move-result v11

    iget-object v12, v2, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    invoke-virtual {v12}, Labcd/hm;->j6()I

    move-result v12

    if-ne v9, v5, :cond_6c

    if-ne v10, v6, :cond_6c

    iget-object v3, p0, Lcom/aide/ui/views/editor/va$i;->gn:Ljava/lang/StringBuffer;

    iget-object v2, v2, Lcom/aide/ui/views/editor/va$i;->gn:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-ne v9, v11, :cond_5f

    iget-object v2, p0, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    add-int/2addr v8, v12

    sub-int/2addr v8, v10

    add-int/2addr v8, v4

    invoke-virtual {v2, v8}, Labcd/hm;->j6(I)V

    goto :goto_6b

    :cond_5f
    iget-object v2, p0, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    invoke-virtual {v2, v12}, Labcd/hm;->j6(I)V

    iget-object v2, p0, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    add-int/2addr v7, v11

    sub-int/2addr v7, v9

    invoke-virtual {v2, v7}, Labcd/hm;->DW(I)V

    :goto_6b
    return v4

    :cond_6c
    if-ne v11, v5, :cond_f4

    sub-int/2addr v6, v4

    if-ne v12, v6, :cond_f4

    iget-object v5, p0, Lcom/aide/ui/views/editor/va$i;->gn:Ljava/lang/StringBuffer;

    iget-object v2, v2, Lcom/aide/ui/views/editor/va$i;->gn:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v3, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/Object;)Ljava/lang/StringBuffer;

    if-ne v9, v11, :cond_80

    iget-object v2, p0, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    invoke-virtual {v2, v10}, Labcd/hm;->FH(I)V

    goto :goto_8a

    :cond_80
    iget-object v2, p0, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    invoke-virtual {v2, v10}, Labcd/hm;->FH(I)V

    iget-object v2, p0, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    invoke-virtual {v2, v9}, Labcd/hm;->Hw(I)V

    :goto_8a
    return v4

    :cond_8b
    instance-of v2, p1, Lcom/aide/ui/views/editor/va$f;

    if-eqz v2, :cond_f4

    move-object v2, p1

    check-cast v2, Lcom/aide/ui/views/editor/va$f;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/va$d;->Hw()I

    move-result v5

    iget-object v6, p0, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    invoke-virtual {v6}, Labcd/hm;->Hw()I

    move-result v6

    const/16 v7, 0xa

    if-ne v5, v6, :cond_c4

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/va$d;->FH()I

    move-result v5

    iget-object v6, p0, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    invoke-virtual {v6}, Labcd/hm;->FH()I

    move-result v6

    if-ne v5, v6, :cond_c4

    iget-object v2, p0, Lcom/aide/ui/views/editor/va$i;->gn:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Labcd/hm;->j6(I)V

    iget-object v2, p0, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    iget-object v3, p0, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    invoke-virtual {v3}, Labcd/hm;->DW()I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Labcd/hm;->DW(I)V

    return v4

    :cond_c4
    invoke-virtual {v2}, Lcom/aide/ui/views/editor/va$d;->Hw()I

    move-result v5

    iget-object v6, p0, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    invoke-virtual {v6}, Labcd/hm;->Hw()I

    move-result v6

    sub-int/2addr v6, v4

    if-ne v5, v6, :cond_f4

    iget-object v5, p0, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    invoke-virtual {v5}, Labcd/hm;->FH()I

    move-result v5

    if-nez v5, :cond_f4

    iget-object v5, p0, Lcom/aide/ui/views/editor/va$i;->gn:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v3, v7}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/va$d;->FH()I

    move-result v2

    invoke-virtual {v3, v2}, Labcd/hm;->FH(I)V

    iget-object v2, p0, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    iget-object v3, p0, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    invoke-virtual {v3}, Labcd/hm;->Hw()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Labcd/hm;->Hw(I)V
    :try_end_f3
    .catchall {:try_start_5 .. :try_end_f3} :catchall_f5

    return v4

    :cond_f4
    return v3

    :catchall_f5
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/va$h;->EQ:Z

    if-eqz v3, :cond_fd

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_fd
    throw v2
.end method

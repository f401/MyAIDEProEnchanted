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
    .registers 4

    const-wide v2, 0x1a407424e2efe500L

    const-class v0, Lcom/aide/ui/views/editor/va$h;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/views/editor/va;Labcd/fm;Labcd/hm;C)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x2f82c093c1185bf8L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va$h;->tp:Z

    if-eqz v0, :cond_0

    new-instance v6, Ljava/lang/Character;

    invoke-direct {v6, p4}, Ljava/lang/Character;-><init>(C)V

    const-wide v0, -0x373a6f2580fdbaedL    # -3.7572981931488E42

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/views/editor/va$h;->we:Lcom/aide/ui/views/editor/va;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aide/ui/views/editor/va$i;-><init>(Lcom/aide/ui/views/editor/va;Labcd/fm;Labcd/hm;C)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/va$h;->EQ:Z

    if-eqz v0, :cond_1

    const-wide v2, -0x373a6f2580fdbaedL    # -3.7572981931488E42

    const/4 v4, 0x0

    new-instance v8, Ljava/lang/Character;

    invoke-direct {v8, p4}, Ljava/lang/Character;-><init>(C)V

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public constructor <init>(Lcom/aide/ui/views/editor/va;Labcd/fm;Labcd/hm;Ljava/lang/String;)V
    .registers 15
    .annotation runtime Labcd/su;
        method = 0x24479f6eb3539adL
    .end annotation

    const-wide v8, -0x732550363b88818L    # -8.024779938321627E273

    const/4 v7, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va$h;->tp:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x732550363b88818L    # -8.024779938321627E273

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/views/editor/va$h;->we:Lcom/aide/ui/views/editor/va;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aide/ui/views/editor/va$i;-><init>(Lcom/aide/ui/views/editor/va;Labcd/fm;Labcd/hm;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/va$h;->EQ:Z

    if-eqz v0, :cond_1

    move-wide v2, v8

    move-object v4, v7

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public constructor <init>(Lcom/aide/ui/views/editor/va;Lcom/aide/ui/views/editor/va$c;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x4a88d356114d450L
    .end annotation

    const-wide v2, 0x20f8b0aabaae7efdL    # 7.542669995348123E-150

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va$h;->tp:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x20f8b0aabaae7efdL    # 7.542669995348123E-150

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/views/editor/va$h;->we:Lcom/aide/ui/views/editor/va;

    invoke-direct {p0, p1, p2}, Lcom/aide/ui/views/editor/va$i;-><init>(Lcom/aide/ui/views/editor/va;Lcom/aide/ui/views/editor/va$i;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/va$h;->EQ:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method


# virtual methods
.method public DW()Lcom/aide/ui/views/editor/va$b;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x4ad69a8ced70e834L
    .end annotation

    const-wide v2, -0x3dc81a328588ac2fL    # -1.0263969650332741E11

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va$h;->tp:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3dc81a328588ac2fL    # -1.0263969650332741E11

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/ui/views/editor/va$c;

    iget-object v1, p0, Lcom/aide/ui/views/editor/va$h;->we:Lcom/aide/ui/views/editor/va;

    invoke-direct {v0, v1, p0}, Lcom/aide/ui/views/editor/va$c;-><init>(Lcom/aide/ui/views/editor/va;Lcom/aide/ui/views/editor/va$h;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/va$h;->EQ:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Lcom/aide/ui/views/editor/g;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x3cbd89c622d883fL
    .end annotation

    const-wide v2, 0x61460e3cb8a66ea8L    # 3.8760275867872636E160

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va$h;->tp:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x61460e3cb8a66ea8L    # 3.8760275867872636E160

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    iget-object v1, p0, Lcom/aide/ui/views/editor/va$h;->we:Lcom/aide/ui/views/editor/va;

    invoke-virtual {p1, v0, v1}, Lcom/aide/ui/views/editor/g;->j6(Labcd/hm;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/va$h;->EQ:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Lcom/aide/ui/views/editor/va$b;)Z
    .registers 18
    .annotation runtime Labcd/su;
        method = -0x1ac6a70d30decf9L
    .end annotation

    const-wide v14, -0x19e1319d9ec0a090L    # -8.181168605001693E183

    const/4 v4, 0x0

    const/4 v3, 0x1

    :try_start_0
    sget-boolean v2, Lcom/aide/ui/views/editor/va$h;->tp:Z

    if-eqz v2, :cond_0

    const-wide v6, -0x19e1319d9ec0a090L    # -8.181168605001693E183

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v6, v7, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/aide/ui/views/editor/va$h;

    if-eqz v2, :cond_5

    move-object/from16 v0, p1

    check-cast v0, Lcom/aide/ui/views/editor/va$h;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    invoke-virtual {v5}, Labcd/hm;->Hw()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    invoke-virtual {v6}, Labcd/hm;->FH()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    invoke-virtual {v7}, Labcd/hm;->DW()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

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

    if-ne v9, v5, :cond_3

    if-ne v10, v6, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/aide/ui/views/editor/va$i;->gn:Ljava/lang/StringBuffer;

    iget-object v2, v2, Lcom/aide/ui/views/editor/va$i;->gn:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-ne v9, v11, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    add-int v4, v8, v12

    sub-int/2addr v4, v10

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Labcd/hm;->j6(I)V

    :goto_0
    move v2, v3

    :goto_1
    return v2

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    invoke-virtual {v2, v12}, Labcd/hm;->j6(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    add-int v4, v7, v11

    sub-int/2addr v4, v9

    invoke-virtual {v2, v4}, Labcd/hm;->DW(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/va$h;->EQ:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v2, v14, v15, v0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v2

    :cond_3
    if-ne v11, v5, :cond_7

    add-int/lit8 v5, v6, -0x1

    if-ne v12, v5, :cond_7

    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/aide/ui/views/editor/va$i;->gn:Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    iget-object v2, v2, Lcom/aide/ui/views/editor/va$i;->gn:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v5, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/Object;)Ljava/lang/StringBuffer;

    if-ne v9, v11, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    invoke-virtual {v2, v10}, Labcd/hm;->FH(I)V

    :goto_2
    move v2, v3

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    invoke-virtual {v2, v10}, Labcd/hm;->FH(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    invoke-virtual {v2, v9}, Labcd/hm;->Hw(I)V

    goto :goto_2

    :cond_5
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/aide/ui/views/editor/va$f;

    if-eqz v2, :cond_7

    move-object/from16 v0, p1

    check-cast v0, Lcom/aide/ui/views/editor/va$f;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/va$d;->Hw()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    invoke-virtual {v6}, Labcd/hm;->Hw()I

    move-result v6

    if-ne v5, v6, :cond_6

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/va$d;->FH()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    invoke-virtual {v6}, Labcd/hm;->FH()I

    move-result v6

    if-ne v5, v6, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aide/ui/views/editor/va$i;->gn:Ljava/lang/StringBuffer;

    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Labcd/hm;->j6(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    invoke-virtual {v4}, Labcd/hm;->DW()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Labcd/hm;->DW(I)V

    move v2, v3

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v2}, Lcom/aide/ui/views/editor/va$d;->Hw()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    invoke-virtual {v6}, Labcd/hm;->Hw()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    invoke-virtual {v5}, Labcd/hm;->FH()I

    move-result v5

    if-nez v5, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/aide/ui/views/editor/va$i;->gn:Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    const/16 v6, 0xa

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/va$d;->FH()I

    move-result v2

    invoke-virtual {v4, v2}, Labcd/hm;->FH(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    invoke-virtual {v4}, Labcd/hm;->Hw()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Labcd/hm;->Hw(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move v2, v3

    goto/16 :goto_1

    :cond_7
    move v2, v4

    goto/16 :goto_1
.end method

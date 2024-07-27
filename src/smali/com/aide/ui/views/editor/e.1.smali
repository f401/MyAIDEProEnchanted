.class Lcom/aide/ui/views/editor/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/ui/views/editor/p;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/views/editor/g;->cn()V
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
.field final FH:Lcom/aide/ui/views/editor/g;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/views/editor/e;

    const-wide v2, 0x9bc2c072ae09d4fL

    const-wide v4, 0x3871418313d5da17L    # 8.113688165408099E-37

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/views/editor/g;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/views/editor/e;->FH:Lcom/aide/ui/views/editor/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW(Lcom/aide/ui/views/editor/o;IIII)V
    .registers 16
    .annotation runtime Labcd/su;
        method = -0x2717a8683c1091L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/e;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x16fcfe36b80f7ad5L    # -7.103955469355362E197

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/e;->FH:Lcom/aide/ui/views/editor/g;

    invoke-static {v0}, Lcom/aide/ui/views/editor/g;->FH(Lcom/aide/ui/views/editor/g;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/hm;

    invoke-virtual {v0, p3, p2}, Labcd/hm;->j6(II)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Labcd/hm;->DW()I

    move-result v3

    if-ne p3, v3, :cond_1

    invoke-virtual {v0}, Labcd/hm;->j6()I

    move-result v3

    if-eq p2, v3, :cond_3

    :cond_1
    :goto_1
    invoke-virtual {v0, p5, p4}, Labcd/hm;->j6(II)Z

    move-result v3

    if-eq v1, v3, :cond_4

    iget-object v0, p0, Lcom/aide/ui/views/editor/e;->FH:Lcom/aide/ui/views/editor/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aide/ui/views/editor/g;->j6(Ljava/util/List;)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {v0, p2, p3, p4, p5}, Labcd/hm;->FH(IIII)Labcd/hm;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/e;->DW:Z

    if-eqz v0, :cond_5

    const-wide v2, -0x16fcfe36b80f7ad5L    # -7.103955469355362E197

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

    :cond_5
    throw v1

    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/aide/ui/views/editor/e;->FH:Lcom/aide/ui/views/editor/g;

    invoke-static {v0}, Lcom/aide/ui/views/editor/g;->Hw(Lcom/aide/ui/views/editor/g;)Lcom/aide/ui/views/editor/g$a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aide/ui/views/editor/e;->FH:Lcom/aide/ui/views/editor/g;

    invoke-static {v0}, Lcom/aide/ui/views/editor/g;->Hw(Lcom/aide/ui/views/editor/g;)Lcom/aide/ui/views/editor/g$a;

    move-result-object v0

    iget-object v0, v0, Lcom/aide/ui/views/editor/g$a;->FH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v1, 0x0

    :cond_7
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/hm;

    iget-object v2, p0, Lcom/aide/ui/views/editor/e;->FH:Lcom/aide/ui/views/editor/g;

    invoke-static {v2}, Lcom/aide/ui/views/editor/g;->Hw(Lcom/aide/ui/views/editor/g;)Lcom/aide/ui/views/editor/g$a;

    move-result-object v2

    iget-object v2, v2, Lcom/aide/ui/views/editor/g$a;->Hw:Labcd/hm;

    if-eq v2, v0, :cond_7

    invoke-virtual {v0, p3, p2}, Labcd/hm;->j6(II)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Labcd/hm;->DW()I

    move-result v2

    if-ne p3, v2, :cond_8

    invoke-virtual {v0}, Labcd/hm;->j6()I

    move-result v2

    if-eq p2, v2, :cond_9

    :cond_8
    const/4 v2, 0x1

    :goto_4
    invoke-virtual {v0, p5, p4}, Labcd/hm;->j6(II)Z

    move-result v4

    if-eq v2, v4, :cond_a

    iget-object v0, p0, Lcom/aide/ui/views/editor/e;->FH:Lcom/aide/ui/views/editor/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aide/ui/views/editor/g;->j6(Ljava/util/List;)V

    goto :goto_2

    :cond_9
    const/4 v2, 0x0

    goto :goto_4

    :cond_a
    if-eqz v2, :cond_b

    if-ne p3, p5, :cond_c

    move-object v1, v0

    :cond_b
    invoke-virtual {v0, p2, p3, p4, p5}, Labcd/hm;->FH(IIII)Labcd/hm;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v4, p0, Lcom/aide/ui/views/editor/e;->FH:Lcom/aide/ui/views/editor/g;

    invoke-virtual {v4, v2, v0}, Lcom/aide/ui/views/editor/b;->j6(Labcd/hm;Labcd/hm;)V

    goto :goto_3

    :cond_c
    iget-object v0, p0, Lcom/aide/ui/views/editor/e;->FH:Lcom/aide/ui/views/editor/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aide/ui/views/editor/g;->j6(Ljava/util/List;)V

    goto/16 :goto_2

    :cond_d
    iget-object v0, p0, Lcom/aide/ui/views/editor/e;->FH:Lcom/aide/ui/views/editor/g;

    invoke-static {v0}, Lcom/aide/ui/views/editor/g;->Hw(Lcom/aide/ui/views/editor/g;)Lcom/aide/ui/views/editor/g$a;

    move-result-object v0

    iget-object v0, v0, Lcom/aide/ui/views/editor/g$a;->Hw:Labcd/hm;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/aide/ui/views/editor/e;->FH:Lcom/aide/ui/views/editor/g;

    invoke-static {v0}, Lcom/aide/ui/views/editor/g;->Hw(Lcom/aide/ui/views/editor/g;)Lcom/aide/ui/views/editor/g$a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/aide/ui/views/editor/g$a;->Zo:Z

    if-nez v0, :cond_2

    if-eqz v1, :cond_e

    iget-object v0, p0, Lcom/aide/ui/views/editor/e;->FH:Lcom/aide/ui/views/editor/g;

    invoke-static {v0, v1}, Lcom/aide/ui/views/editor/g;->j6(Lcom/aide/ui/views/editor/g;Labcd/hm;)V

    goto/16 :goto_2

    :cond_e
    iget-object v0, p0, Lcom/aide/ui/views/editor/e;->FH:Lcom/aide/ui/views/editor/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aide/ui/views/editor/g;->j6(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method public j6(Lcom/aide/ui/views/editor/o;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x77e5224a4d27253L
    .end annotation

    const-wide v2, 0x2dec65a8ff346a0dL    # 1.7843720554205983E-87

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/e;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2dec65a8ff346a0dL    # 1.7843720554205983E-87

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/e;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Lcom/aide/ui/views/editor/o;IIII)V
    .registers 16
    .annotation runtime Labcd/su;
        method = -0x188fcd4ddae0c4b7L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/e;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x12fca5d9407c2bf1L    # -1.3342468827810086E217

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/e;->FH:Lcom/aide/ui/views/editor/g;

    invoke-static {v0}, Lcom/aide/ui/views/editor/g;->FH(Lcom/aide/ui/views/editor/g;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/hm;

    invoke-virtual {v0, p3, p2}, Labcd/hm;->j6(II)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez p2, :cond_2

    invoke-virtual {v0}, Labcd/hm;->FH()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Labcd/hm;->Hw()I

    move-result v3

    if-ne v3, p3, :cond_2

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v0, p2, p3, p4, p5}, Labcd/hm;->DW(IIII)Labcd/hm;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/e;->DW:Z

    if-eqz v0, :cond_1

    const-wide v2, -0x12fca5d9407c2bf1L    # -1.3342468827810086E217

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

    :cond_1
    throw v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :try_start_1
    invoke-virtual {v0, p2, p3, p4, p5}, Labcd/hm;->j6(IIII)Labcd/hm;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/aide/ui/views/editor/e;->FH:Lcom/aide/ui/views/editor/g;

    invoke-static {v0}, Lcom/aide/ui/views/editor/g;->Hw(Lcom/aide/ui/views/editor/g;)Lcom/aide/ui/views/editor/g$a;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/aide/ui/views/editor/e;->FH:Lcom/aide/ui/views/editor/g;

    invoke-static {v0}, Lcom/aide/ui/views/editor/g;->Hw(Lcom/aide/ui/views/editor/g;)Lcom/aide/ui/views/editor/g$a;

    move-result-object v0

    iget-object v0, v0, Lcom/aide/ui/views/editor/g$a;->FH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v1, 0x0

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/hm;

    iget-object v2, p0, Lcom/aide/ui/views/editor/e;->FH:Lcom/aide/ui/views/editor/g;

    invoke-static {v2}, Lcom/aide/ui/views/editor/g;->Hw(Lcom/aide/ui/views/editor/g;)Lcom/aide/ui/views/editor/g$a;

    move-result-object v2

    iget-object v2, v2, Lcom/aide/ui/views/editor/g$a;->Hw:Labcd/hm;

    if-eq v2, v0, :cond_5

    invoke-virtual {v0, p3, p2}, Labcd/hm;->j6(II)Z

    move-result v5

    if-eqz v5, :cond_6

    if-nez p2, :cond_6

    invoke-virtual {v0}, Labcd/hm;->FH()I

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0}, Labcd/hm;->Hw()I

    move-result v2

    if-ne v2, p3, :cond_6

    const/4 v2, 0x1

    move v3, v2

    :goto_3
    if-eqz v5, :cond_d

    if-nez v3, :cond_d

    if-ne p3, p5, :cond_7

    move-object v2, v0

    :goto_4
    if-eqz v3, :cond_9

    invoke-virtual {v0, p2, p3, p4, p5}, Labcd/hm;->DW(IIII)Labcd/hm;

    move-result-object v1

    :goto_5
    if-eqz v1, :cond_c

    iget-object v3, p0, Lcom/aide/ui/views/editor/e;->FH:Lcom/aide/ui/views/editor/g;

    invoke-virtual {v3, v1, v0}, Lcom/aide/ui/views/editor/b;->j6(Labcd/hm;Labcd/hm;)V

    move-object v1, v2

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    move v3, v2

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/aide/ui/views/editor/e;->FH:Lcom/aide/ui/views/editor/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aide/ui/views/editor/g;->j6(Ljava/util/List;)V

    :cond_8
    :goto_6
    return-void

    :cond_9
    invoke-virtual {v0, p2, p3, p4, p5}, Labcd/hm;->j6(IIII)Labcd/hm;

    move-result-object v1

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lcom/aide/ui/views/editor/e;->FH:Lcom/aide/ui/views/editor/g;

    invoke-static {v0}, Lcom/aide/ui/views/editor/g;->Hw(Lcom/aide/ui/views/editor/g;)Lcom/aide/ui/views/editor/g$a;

    move-result-object v0

    iget-object v0, v0, Lcom/aide/ui/views/editor/g$a;->Hw:Labcd/hm;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/aide/ui/views/editor/e;->FH:Lcom/aide/ui/views/editor/g;

    invoke-static {v0}, Lcom/aide/ui/views/editor/g;->Hw(Lcom/aide/ui/views/editor/g;)Lcom/aide/ui/views/editor/g$a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/aide/ui/views/editor/g$a;->Zo:Z

    if-nez v0, :cond_8

    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/aide/ui/views/editor/e;->FH:Lcom/aide/ui/views/editor/g;

    invoke-static {v0, v1}, Lcom/aide/ui/views/editor/g;->j6(Lcom/aide/ui/views/editor/g;Labcd/hm;)V

    goto :goto_6

    :cond_b
    iget-object v0, p0, Lcom/aide/ui/views/editor/e;->FH:Lcom/aide/ui/views/editor/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aide/ui/views/editor/g;->j6(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :cond_c
    move-object v1, v2

    goto :goto_2

    :cond_d
    move-object v2, v1

    goto :goto_4
.end method

.method public j6(Lcom/aide/ui/views/editor/o;III[C)V
    .registers 16
    .annotation runtime Labcd/su;
        method = -0x49de276ba8a6a9f5L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/e;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x3f152150e03cebd9L    # -55029.47262720047

    move-object v2, p0

    move-object v3, p1

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/e;->DW:Z

    if-eqz v0, :cond_1

    const-wide v2, -0x3f152150e03cebd9L    # -55029.47262720047

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

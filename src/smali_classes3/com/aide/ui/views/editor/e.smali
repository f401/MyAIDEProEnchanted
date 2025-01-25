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
    .registers 5

    const-wide v0, 0x9bc2c072ae09d4fL

    const-wide v2, 0x3871418313d5da17L  # 8.113688165408099E-37

    const-class v4, Lcom/aide/ui/views/editor/e;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    if-eqz v0, :cond_22

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x16fcfe36b80f7ad5L  # -7.103955469355362E197

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    iget-object v0, p0, Lcom/aide/ui/views/editor/e;->FH:Lcom/aide/ui/views/editor/g;

    invoke-static {v0}, Lcom/aide/ui/views/editor/g;->FH(Lcom/aide/ui/views/editor/g;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_5e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/hm;

    invoke-virtual {v1, p3, p2}, Labcd/hm;->j6(II)Z

    move-result v5

    if-eqz v5, :cond_4e

    invoke-virtual {v1}, Labcd/hm;->DW()I

    move-result v5

    if-ne p3, v5, :cond_4d

    invoke-virtual {v1}, Labcd/hm;->j6()I

    move-result v5

    if-eq p2, v5, :cond_4e

    :cond_4d
    const/4 v2, 0x1

    :cond_4e
    invoke-virtual {v1, p5, p4}, Labcd/hm;->j6(II)Z

    move-result v3

    if-eq v2, v3, :cond_5a

    iget-object v0, p0, Lcom/aide/ui/views/editor/e;->FH:Lcom/aide/ui/views/editor/g;

    invoke-virtual {v0, v4}, Lcom/aide/ui/views/editor/g;->j6(Ljava/util/List;)V

    return-void

    :cond_5a
    invoke-virtual {v1, p2, p3, p4, p5}, Labcd/hm;->FH(IIII)Labcd/hm;

    goto :goto_2c

    :cond_5e
    iget-object v0, p0, Lcom/aide/ui/views/editor/e;->FH:Lcom/aide/ui/views/editor/g;

    invoke-static {v0}, Lcom/aide/ui/views/editor/g;->Hw(Lcom/aide/ui/views/editor/g;)Lcom/aide/ui/views/editor/g$a;

    move-result-object v0

    if-eqz v0, :cond_e3

    iget-object v0, p0, Lcom/aide/ui/views/editor/e;->FH:Lcom/aide/ui/views/editor/g;

    invoke-static {v0}, Lcom/aide/ui/views/editor/g;->Hw(Lcom/aide/ui/views/editor/g;)Lcom/aide/ui/views/editor/g$a;

    move-result-object v0

    iget-object v0, v0, Lcom/aide/ui/views/editor/g$a;->FH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, v4

    :cond_73
    :goto_73
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/hm;

    iget-object v6, p0, Lcom/aide/ui/views/editor/e;->FH:Lcom/aide/ui/views/editor/g;

    invoke-static {v6}, Lcom/aide/ui/views/editor/g;->Hw(Lcom/aide/ui/views/editor/g;)Lcom/aide/ui/views/editor/g$a;

    move-result-object v6

    iget-object v6, v6, Lcom/aide/ui/views/editor/g$a;->Hw:Labcd/hm;

    if-eq v6, v5, :cond_73

    invoke-virtual {v5, p3, p2}, Labcd/hm;->j6(II)Z

    move-result v6

    if-eqz v6, :cond_9d

    invoke-virtual {v5}, Labcd/hm;->DW()I

    move-result v6

    if-ne p3, v6, :cond_9b

    invoke-virtual {v5}, Labcd/hm;->j6()I

    move-result v6

    if-eq p2, v6, :cond_9d

    :cond_9b
    const/4 v6, 0x1

    goto :goto_9e

    :cond_9d
    const/4 v6, 0x0

    :goto_9e
    invoke-virtual {v5, p5, p4}, Labcd/hm;->j6(II)Z

    move-result v7

    if-eq v6, v7, :cond_aa

    iget-object v0, p0, Lcom/aide/ui/views/editor/e;->FH:Lcom/aide/ui/views/editor/g;

    invoke-virtual {v0, v4}, Lcom/aide/ui/views/editor/g;->j6(Ljava/util/List;)V

    return-void

    :cond_aa
    if-eqz v6, :cond_b6

    if-ne p3, p5, :cond_b0

    move-object v1, v5

    goto :goto_b6

    :cond_b0
    iget-object v0, p0, Lcom/aide/ui/views/editor/e;->FH:Lcom/aide/ui/views/editor/g;

    invoke-virtual {v0, v4}, Lcom/aide/ui/views/editor/g;->j6(Ljava/util/List;)V

    return-void

    :cond_b6
    :goto_b6
    invoke-virtual {v5, p2, p3, p4, p5}, Labcd/hm;->FH(IIII)Labcd/hm;

    move-result-object v6

    if-eqz v6, :cond_73

    iget-object v7, p0, Lcom/aide/ui/views/editor/e;->FH:Lcom/aide/ui/views/editor/g;

    invoke-virtual {v7, v6, v5}, Lcom/aide/ui/views/editor/b;->j6(Labcd/hm;Labcd/hm;)V

    goto :goto_73

    :cond_c2
    iget-object v0, p0, Lcom/aide/ui/views/editor/e;->FH:Lcom/aide/ui/views/editor/g;

    invoke-static {v0}, Lcom/aide/ui/views/editor/g;->Hw(Lcom/aide/ui/views/editor/g;)Lcom/aide/ui/views/editor/g$a;

    move-result-object v0

    iget-object v0, v0, Lcom/aide/ui/views/editor/g$a;->Hw:Labcd/hm;

    if-nez v0, :cond_e3

    iget-object v0, p0, Lcom/aide/ui/views/editor/e;->FH:Lcom/aide/ui/views/editor/g;

    invoke-static {v0}, Lcom/aide/ui/views/editor/g;->Hw(Lcom/aide/ui/views/editor/g;)Lcom/aide/ui/views/editor/g$a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/aide/ui/views/editor/g$a;->Zo:Z

    if-nez v0, :cond_e3

    if-eqz v1, :cond_de

    iget-object v0, p0, Lcom/aide/ui/views/editor/e;->FH:Lcom/aide/ui/views/editor/g;

    invoke-static {v0, v1}, Lcom/aide/ui/views/editor/g;->j6(Lcom/aide/ui/views/editor/g;Labcd/hm;)V

    goto :goto_e3

    :cond_de
    iget-object v0, p0, Lcom/aide/ui/views/editor/e;->FH:Lcom/aide/ui/views/editor/g;

    invoke-virtual {v0, v4}, Lcom/aide/ui/views/editor/g;->j6(Ljava/util/List;)V
    :try_end_e3
    .catchall {:try_start_0 .. :try_end_e3} :catchall_e4

    :cond_e3
    :goto_e3
    return-void

    :catchall_e4
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/e;->DW:Z

    if-eqz v1, :cond_108

    const-wide v2, -0x16fcfe36b80f7ad5L  # -7.103955469355362E197

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_108
    goto :goto_10a

    :goto_109
    throw v0

    :goto_10a
    goto :goto_109
.end method

.method public j6(Lcom/aide/ui/views/editor/o;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x77e5224a4d27253L
    .end annotation

    const-wide v0, 0x2dec65a8ff346a0dL  # 1.7843720554205983E-87

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/e;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/e;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public j6(Lcom/aide/ui/views/editor/o;IIII)V
    .registers 16
    .annotation runtime Labcd/su;
        method = -0x188fcd4ddae0c4b7L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/e;->j6:Z

    if-eqz v0, :cond_22

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x12fca5d9407c2bf1L  # -1.3342468827810086E217

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    iget-object v0, p0, Lcom/aide/ui/views/editor/e;->FH:Lcom/aide/ui/views/editor/g;

    invoke-static {v0}, Lcom/aide/ui/views/editor/g;->FH(Lcom/aide/ui/views/editor/g;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/hm;

    invoke-virtual {v1, p3, p2}, Labcd/hm;->j6(II)Z

    move-result v4

    if-eqz v4, :cond_4f

    if-nez p2, :cond_4f

    invoke-virtual {v1}, Labcd/hm;->FH()I

    move-result v4

    if-nez v4, :cond_4f

    invoke-virtual {v1}, Labcd/hm;->Hw()I

    move-result v4

    if-ne v4, p3, :cond_4f

    const/4 v2, 0x1

    :cond_4f
    if-eqz v2, :cond_55

    invoke-virtual {v1, p2, p3, p4, p5}, Labcd/hm;->DW(IIII)Labcd/hm;

    goto :goto_2c

    :cond_55
    invoke-virtual {v1, p2, p3, p4, p5}, Labcd/hm;->j6(IIII)Labcd/hm;

    goto :goto_2c

    :cond_59
    iget-object v0, p0, Lcom/aide/ui/views/editor/e;->FH:Lcom/aide/ui/views/editor/g;

    invoke-static {v0}, Lcom/aide/ui/views/editor/g;->Hw(Lcom/aide/ui/views/editor/g;)Lcom/aide/ui/views/editor/g$a;

    move-result-object v0

    if-eqz v0, :cond_de

    iget-object v0, p0, Lcom/aide/ui/views/editor/e;->FH:Lcom/aide/ui/views/editor/g;

    invoke-static {v0}, Lcom/aide/ui/views/editor/g;->Hw(Lcom/aide/ui/views/editor/g;)Lcom/aide/ui/views/editor/g$a;

    move-result-object v0

    iget-object v0, v0, Lcom/aide/ui/views/editor/g$a;->FH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v4, v1

    :cond_6f
    :goto_6f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_bd

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/hm;

    iget-object v6, p0, Lcom/aide/ui/views/editor/e;->FH:Lcom/aide/ui/views/editor/g;

    invoke-static {v6}, Lcom/aide/ui/views/editor/g;->Hw(Lcom/aide/ui/views/editor/g;)Lcom/aide/ui/views/editor/g$a;

    move-result-object v6

    iget-object v6, v6, Lcom/aide/ui/views/editor/g$a;->Hw:Labcd/hm;

    if-eq v6, v5, :cond_6f

    invoke-virtual {v5, p3, p2}, Labcd/hm;->j6(II)Z

    move-result v6

    if-eqz v6, :cond_9b

    if-nez p2, :cond_9b

    invoke-virtual {v5}, Labcd/hm;->FH()I

    move-result v7

    if-nez v7, :cond_9b

    invoke-virtual {v5}, Labcd/hm;->Hw()I

    move-result v7

    if-ne v7, p3, :cond_9b

    const/4 v7, 0x1

    goto :goto_9c

    :cond_9b
    const/4 v7, 0x0

    :goto_9c
    if-eqz v6, :cond_aa

    if-nez v7, :cond_aa

    if-ne p3, p5, :cond_a4

    move-object v4, v5

    goto :goto_aa

    :cond_a4
    iget-object v0, p0, Lcom/aide/ui/views/editor/e;->FH:Lcom/aide/ui/views/editor/g;

    invoke-virtual {v0, v1}, Lcom/aide/ui/views/editor/g;->j6(Ljava/util/List;)V

    return-void

    :cond_aa
    :goto_aa
    if-eqz v7, :cond_b1

    invoke-virtual {v5, p2, p3, p4, p5}, Labcd/hm;->DW(IIII)Labcd/hm;

    move-result-object v6

    goto :goto_b5

    :cond_b1
    invoke-virtual {v5, p2, p3, p4, p5}, Labcd/hm;->j6(IIII)Labcd/hm;

    move-result-object v6

    :goto_b5
    if-eqz v6, :cond_6f

    iget-object v7, p0, Lcom/aide/ui/views/editor/e;->FH:Lcom/aide/ui/views/editor/g;

    invoke-virtual {v7, v6, v5}, Lcom/aide/ui/views/editor/b;->j6(Labcd/hm;Labcd/hm;)V

    goto :goto_6f

    :cond_bd
    iget-object v0, p0, Lcom/aide/ui/views/editor/e;->FH:Lcom/aide/ui/views/editor/g;

    invoke-static {v0}, Lcom/aide/ui/views/editor/g;->Hw(Lcom/aide/ui/views/editor/g;)Lcom/aide/ui/views/editor/g$a;

    move-result-object v0

    iget-object v0, v0, Lcom/aide/ui/views/editor/g$a;->Hw:Labcd/hm;

    if-nez v0, :cond_de

    iget-object v0, p0, Lcom/aide/ui/views/editor/e;->FH:Lcom/aide/ui/views/editor/g;

    invoke-static {v0}, Lcom/aide/ui/views/editor/g;->Hw(Lcom/aide/ui/views/editor/g;)Lcom/aide/ui/views/editor/g$a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/aide/ui/views/editor/g$a;->Zo:Z

    if-nez v0, :cond_de

    if-eqz v4, :cond_d9

    iget-object v0, p0, Lcom/aide/ui/views/editor/e;->FH:Lcom/aide/ui/views/editor/g;

    invoke-static {v0, v4}, Lcom/aide/ui/views/editor/g;->j6(Lcom/aide/ui/views/editor/g;Labcd/hm;)V

    goto :goto_de

    :cond_d9
    iget-object v0, p0, Lcom/aide/ui/views/editor/e;->FH:Lcom/aide/ui/views/editor/g;

    invoke-virtual {v0, v1}, Lcom/aide/ui/views/editor/g;->j6(Ljava/util/List;)V
    :try_end_de
    .catchall {:try_start_0 .. :try_end_de} :catchall_df

    :cond_de
    :goto_de
    return-void

    :catchall_df
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/e;->DW:Z

    if-eqz v1, :cond_103

    const-wide v2, -0x12fca5d9407c2bf1L  # -1.3342468827810086E217

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_103
    goto :goto_105

    :goto_104
    throw v0

    :goto_105
    goto :goto_104
.end method

.method public j6(Lcom/aide/ui/views/editor/o;III[C)V
    .registers 16
    .annotation runtime Labcd/su;
        method = -0x49de276ba8a6a9f5L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/e;->j6:Z

    if-eqz v0, :cond_1e

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x3f152150e03cebd9L  # -55029.47262720047

    move-object v3, p0

    move-object v4, p1

    move-object v8, p5

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_1f

    :cond_1e
    return-void

    :catchall_1f
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/e;->DW:Z

    if-eqz v1, :cond_3f

    const-wide v2, -0x3f152150e03cebd9L  # -55029.47262720047

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v9, p5

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3f
    throw v0
.end method

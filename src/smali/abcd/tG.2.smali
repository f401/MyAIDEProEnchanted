.class Labcd/tG;
.super Labcd/XF;


# instance fields
.field private final j6:Labcd/qG;


# direct methods
.method constructor <init>(Labcd/qG;)V
    .registers 2

    invoke-direct {p0}, Labcd/XF;-><init>()V

    iput-object p1, p0, Labcd/tG;->j6:Labcd/qG;

    return-void
.end method


# virtual methods
.method DW()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method j6()Labcd/dG;
    .registers 10

    const/4 v0, 0x1

    const/4 v3, 0x0

    iget-object v7, p0, Labcd/tG;->j6:Labcd/qG;

    invoke-virtual {v7}, Labcd/qG;->VH()Labcd/yG;

    move-result-object v5

    invoke-virtual {v7}, Labcd/qG;->gn()Labcd/jK;

    move-result-object v6

    iget-object v1, p0, Labcd/tG;->j6:Labcd/qG;

    iget-object v1, v1, Labcd/qG;->u7:Labcd/LF;

    iget-object v2, v7, Labcd/qG;->DW:Labcd/IE;

    iget-object v4, v7, Labcd/qG;->gn:Ljava/util/ArrayList;

    invoke-virtual {v2, v7, v4}, Labcd/IE;->j6(Labcd/qG;Ljava/util/Collection;)V

    sget-object v2, Labcd/yG;->Hw:Labcd/yG;

    if-ne v5, v2, :cond_1

    sget-object v2, Labcd/jK;->j6:Labcd/jK;

    if-ne v6, v2, :cond_0

    new-instance v0, Labcd/ZF;

    invoke-direct {v0, v7}, Labcd/ZF;-><init>(Labcd/qG;)V

    iget-object v2, p0, Labcd/tG;->j6:Labcd/qG;

    iput-object v0, v2, Labcd/qG;->tp:Labcd/XF;

    sget-object v3, Labcd/LF;->j6:Labcd/LF;

    iput-object v3, v2, Labcd/qG;->u7:Labcd/LF;

    invoke-virtual {v0, v1}, Labcd/ZF;->j6(Labcd/LF;)V

    invoke-virtual {v0}, Labcd/ZF;->j6()Labcd/dG;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->cannotCombineTreeFilterWithRevFilter:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v6, v4, v3

    aput-object v5, v4, v0

    invoke-static {v2, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Labcd/LF;->j6(I)Z

    move-result v8

    iget-object v2, p0, Labcd/tG;->j6:Labcd/qG;

    sget-object v4, Labcd/kG;->v5:Labcd/kG;

    invoke-virtual {v2, v4}, Labcd/qG;->j6(Labcd/kG;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v4, p0, Labcd/tG;->j6:Labcd/qG;

    instance-of v4, v4, Labcd/_F;

    if-eqz v4, :cond_6

    :goto_1
    if-eqz v0, :cond_d

    if-nez v8, :cond_d

    move v2, v3

    :goto_2
    instance-of v0, v1, Labcd/QF;

    if-eqz v0, :cond_7

    move-object v0, v1

    check-cast v0, Labcd/QF;

    move-object v4, v0

    :goto_3
    sget-object v0, Labcd/jK;->j6:Labcd/jK;

    if-eq v6, v0, :cond_8

    new-instance v0, Labcd/sG;

    invoke-direct {v0, v7, v6}, Labcd/sG;-><init>(Labcd/qG;Labcd/jK;)V

    invoke-static {v5, v0}, Labcd/vG;->j6(Labcd/yG;Labcd/yG;)Labcd/yG;

    move-result-object v0

    const/4 v6, 0x6

    move-object v5, v0

    :goto_4
    iget-object v0, p0, Labcd/tG;->j6:Labcd/qG;

    iput-object v1, v0, Labcd/qG;->u7:Labcd/LF;

    instance-of v1, v0, Labcd/TF;

    if-eqz v1, :cond_9

    new-instance v1, Labcd/SF;

    check-cast v0, Labcd/TF;

    invoke-direct {v1, v0, v4}, Labcd/SF;-><init>(Labcd/TF;Labcd/XF;)V

    move-object v0, v1

    :cond_2
    :goto_5
    invoke-virtual {v0}, Labcd/XF;->DW()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    new-instance v1, Labcd/rG;

    new-instance v3, Labcd/UF;

    invoke-direct {v3, v0}, Labcd/UF;-><init>(Labcd/XF;)V

    invoke-direct {v1, v3}, Labcd/rG;-><init>(Labcd/XF;)V

    move-object v0, v1

    :cond_3
    iget-object v1, p0, Labcd/tG;->j6:Labcd/qG;

    sget-object v3, Labcd/kG;->FH:Labcd/kG;

    invoke-virtual {v1, v3}, Labcd/qG;->j6(Labcd/kG;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Labcd/XF;->DW()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_4

    new-instance v1, Labcd/uG;

    invoke-direct {v1, v0}, Labcd/uG;-><init>(Labcd/XF;)V

    move-object v0, v1

    :cond_4
    iget-object v1, p0, Labcd/tG;->j6:Labcd/qG;

    sget-object v3, Labcd/kG;->Hw:Labcd/kG;

    invoke-virtual {v1, v3}, Labcd/qG;->j6(Labcd/kG;)Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v1, Labcd/YF;

    invoke-direct {v1, v0}, Labcd/YF;-><init>(Labcd/XF;)V

    :goto_6
    if-eqz v2, :cond_a

    new-instance v0, Labcd/PF;

    invoke-direct {v0, v7, v1}, Labcd/PF;-><init>(Labcd/qG;Labcd/XF;)V

    move-object v1, v0

    :cond_5
    :goto_7
    iput-object v1, v7, Labcd/qG;->tp:Labcd/XF;

    invoke-virtual {v1}, Labcd/XF;->j6()Labcd/dG;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    new-instance v0, Labcd/QF;

    invoke-direct {v0, v1}, Labcd/QF;-><init>(Labcd/XF;)V

    move-object v4, v0

    goto :goto_3

    :cond_8
    move v6, v3

    goto :goto_4

    :cond_9
    new-instance v0, Labcd/aG;

    invoke-direct {v0, v7, v4, v5, v6}, Labcd/aG;-><init>(Labcd/qG;Labcd/QF;Labcd/yG;I)V

    if-eqz v2, :cond_2

    iput-boolean v3, v0, Labcd/aG;->gn:Z

    goto :goto_5

    :cond_a
    if-eqz v8, :cond_5

    invoke-virtual {v4}, Labcd/QF;->Hw()Labcd/dG;

    move-result-object v0

    if-eqz v0, :cond_b

    new-instance v0, Labcd/RF;

    invoke-direct {v0, v1}, Labcd/RF;-><init>(Labcd/XF;)V

    :goto_8
    new-instance v1, Labcd/VF;

    invoke-direct {v1, v0}, Labcd/VF;-><init>(Labcd/XF;)V

    goto :goto_7

    :cond_b
    move-object v0, v1

    goto :goto_8

    :cond_c
    move-object v1, v0

    goto :goto_6

    :cond_d
    move v2, v0

    goto/16 :goto_2
.end method

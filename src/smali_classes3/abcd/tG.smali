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
    .registers 11

    iget-object v0, p0, Labcd/tG;->j6:Labcd/qG;

    invoke-virtual {v0}, Labcd/qG;->VH()Labcd/yG;

    move-result-object v1

    invoke-virtual {v0}, Labcd/qG;->gn()Labcd/jK;

    move-result-object v2

    iget-object v3, p0, Labcd/tG;->j6:Labcd/qG;

    iget-object v3, v3, Labcd/qG;->u7:Labcd/LF;

    iget-object v4, v0, Labcd/qG;->DW:Labcd/IE;

    iget-object v5, v0, Labcd/qG;->gn:Ljava/util/ArrayList;

    invoke-virtual {v4, v0, v5}, Labcd/IE;->j6(Labcd/qG;Ljava/util/Collection;)V

    sget-object v4, Labcd/yG;->Hw:Labcd/yG;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v1, v4, :cond_4b

    sget-object v4, Labcd/jK;->j6:Labcd/jK;

    if-ne v2, v4, :cond_34

    new-instance v1, Labcd/ZF;

    invoke-direct {v1, v0}, Labcd/ZF;-><init>(Labcd/qG;)V

    iget-object v0, p0, Labcd/tG;->j6:Labcd/qG;

    iput-object v1, v0, Labcd/qG;->tp:Labcd/XF;

    sget-object v2, Labcd/LF;->j6:Labcd/LF;

    iput-object v2, v0, Labcd/qG;->u7:Labcd/LF;

    invoke-virtual {v1, v3}, Labcd/ZF;->j6(Labcd/LF;)V

    invoke-virtual {v1}, Labcd/ZF;->j6()Labcd/dG;

    move-result-object v0

    return-object v0

    :cond_34
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->cannotCombineTreeFilterWithRevFilter:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    aput-object v1, v4, v6

    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4b
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Labcd/LF;->j6(I)Z

    move-result v7

    iget-object v8, p0, Labcd/tG;->j6:Labcd/qG;

    sget-object v9, Labcd/kG;->v5:Labcd/kG;

    invoke-virtual {v8, v9}, Labcd/qG;->j6(Labcd/kG;)Z

    move-result v8

    if-nez v8, :cond_61

    iget-object v9, p0, Labcd/tG;->j6:Labcd/qG;

    instance-of v9, v9, Labcd/_F;

    if-eqz v9, :cond_61

    goto :goto_62

    :cond_61
    move v6, v8

    :goto_62
    if-eqz v6, :cond_67

    if-nez v7, :cond_67

    const/4 v6, 0x0

    :cond_67
    instance-of v8, v3, Labcd/QF;

    if-eqz v8, :cond_6f

    move-object v8, v3

    check-cast v8, Labcd/QF;

    goto :goto_74

    :cond_6f
    new-instance v8, Labcd/QF;

    invoke-direct {v8, v3}, Labcd/QF;-><init>(Labcd/XF;)V

    :goto_74
    sget-object v9, Labcd/jK;->j6:Labcd/jK;

    if-eq v2, v9, :cond_83

    new-instance v9, Labcd/sG;

    invoke-direct {v9, v0, v2}, Labcd/sG;-><init>(Labcd/qG;Labcd/jK;)V

    invoke-static {v1, v9}, Labcd/vG;->j6(Labcd/yG;Labcd/yG;)Labcd/yG;

    move-result-object v1

    const/4 v2, 0x6

    goto :goto_84

    :cond_83
    const/4 v2, 0x0

    :goto_84
    iget-object v9, p0, Labcd/tG;->j6:Labcd/qG;

    iput-object v3, v9, Labcd/qG;->u7:Labcd/LF;

    instance-of v3, v9, Labcd/TF;

    if-eqz v3, :cond_94

    new-instance v1, Labcd/SF;

    check-cast v9, Labcd/TF;

    invoke-direct {v1, v9, v8}, Labcd/SF;-><init>(Labcd/TF;Labcd/XF;)V

    goto :goto_9e

    :cond_94
    new-instance v3, Labcd/aG;

    invoke-direct {v3, v0, v8, v1, v2}, Labcd/aG;-><init>(Labcd/qG;Labcd/QF;Labcd/yG;I)V

    if-eqz v6, :cond_9d

    iput-boolean v5, v3, Labcd/aG;->gn:Z

    :cond_9d
    move-object v1, v3

    :goto_9e
    invoke-virtual {v1}, Labcd/XF;->DW()I

    move-result v2

    and-int/2addr v2, v4

    if-eqz v2, :cond_b0

    new-instance v2, Labcd/rG;

    new-instance v3, Labcd/UF;

    invoke-direct {v3, v1}, Labcd/UF;-><init>(Labcd/XF;)V

    invoke-direct {v2, v3}, Labcd/rG;-><init>(Labcd/XF;)V

    move-object v1, v2

    :cond_b0
    iget-object v2, p0, Labcd/tG;->j6:Labcd/qG;

    sget-object v3, Labcd/kG;->FH:Labcd/kG;

    invoke-virtual {v2, v3}, Labcd/qG;->j6(Labcd/kG;)Z

    move-result v2

    if-eqz v2, :cond_c8

    invoke-virtual {v1}, Labcd/XF;->DW()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_c8

    new-instance v2, Labcd/uG;

    invoke-direct {v2, v1}, Labcd/uG;-><init>(Labcd/XF;)V

    move-object v1, v2

    :cond_c8
    iget-object v2, p0, Labcd/tG;->j6:Labcd/qG;

    sget-object v3, Labcd/kG;->Hw:Labcd/kG;

    invoke-virtual {v2, v3}, Labcd/qG;->j6(Labcd/kG;)Z

    move-result v2

    if-eqz v2, :cond_d8

    new-instance v2, Labcd/YF;

    invoke-direct {v2, v1}, Labcd/YF;-><init>(Labcd/XF;)V

    move-object v1, v2

    :cond_d8
    if-eqz v6, :cond_e1

    new-instance v2, Labcd/PF;

    invoke-direct {v2, v0, v1}, Labcd/PF;-><init>(Labcd/qG;Labcd/XF;)V

    :goto_df
    move-object v1, v2

    goto :goto_f5

    :cond_e1
    if-eqz v7, :cond_f5

    invoke-virtual {v8}, Labcd/QF;->Hw()Labcd/dG;

    move-result-object v2

    if-eqz v2, :cond_ef

    new-instance v2, Labcd/RF;

    invoke-direct {v2, v1}, Labcd/RF;-><init>(Labcd/XF;)V

    move-object v1, v2

    :cond_ef
    new-instance v2, Labcd/VF;

    invoke-direct {v2, v1}, Labcd/VF;-><init>(Labcd/XF;)V

    goto :goto_df

    :cond_f5
    :goto_f5
    iput-object v1, v0, Labcd/qG;->tp:Labcd/XF;

    invoke-virtual {v1}, Labcd/XF;->j6()Labcd/dG;

    move-result-object v0

    return-object v0
.end method

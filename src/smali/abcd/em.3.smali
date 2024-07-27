.class public Labcd/em;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/em$a;,
        Labcd/em$b;,
        Labcd/em$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
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
.field private FH:Ljava/util/Vector;
    .annotation runtime Labcd/ru;
        field = 0x14271dfbaf5d79f9L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lem$b",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private Hw:Z
    .annotation runtime Labcd/ru;
        field = 0x15524b45f1dd411bL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x12b16362dda4929bL    # -3.3768778649494603E218

    const-class v0, Labcd/em;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, 0x1ce0200ad31de8efL

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/em;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1ce0200ad31de8efL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/em;->Hw:Z

    invoke-virtual {p0}, Labcd/em;->j6()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/em;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private DW(I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0xc9cd215d7a70cd8L
    .end annotation

    const-wide v6, -0x15cede37a46a3f57L    # -3.3570995962327415E203

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Labcd/em;->j6:Z

    if-eqz v0, :cond_0

    const-wide v2, -0x15cede37a46a3f57L    # -3.3570995962327415E203

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget-object v0, p0, Labcd/em;->FH:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-gt v0, p1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Labcd/em;->FH:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/em$b;

    if-eqz v0, :cond_1

    new-instance v3, Labcd/em$b;

    const/4 v2, 0x0

    invoke-direct {v3, v2}, Labcd/em$b;-><init>(Labcd/dm;)V

    invoke-static {v0}, Labcd/em$b;->j6(Labcd/em$b;)Labcd/em$a;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_d

    invoke-static {v2}, Labcd/em$a;->DW(Labcd/em$a;)I

    move-result v0

    if-ltz v0, :cond_c

    invoke-static {v2}, Labcd/em$a;->FH(Labcd/em$a;)Labcd/em$a;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_3

    invoke-static {v2}, Labcd/em$a;->Hw(Labcd/em$a;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0}, Labcd/em$a;->Hw(Labcd/em$a;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {v0}, Labcd/em$a;->j6(Labcd/em$a;)I

    move-result v4

    invoke-static {v2}, Labcd/em$a;->j6(Labcd/em$a;)I

    move-result v5

    if-lt v4, v5, :cond_4

    invoke-static {v2}, Labcd/em$a;->DW(Labcd/em$a;)I

    move-result v4

    invoke-static {v0}, Labcd/em$a;->DW(Labcd/em$a;)I

    move-result v5

    if-lt v4, v5, :cond_4

    const/4 v4, -0x1

    invoke-static {v0, v4}, Labcd/em$a;->DW(Labcd/em$a;I)I

    :cond_3
    :goto_3
    invoke-static {v2}, Labcd/em$a;->FH(Labcd/em$a;)Labcd/em$a;

    move-result-object v0

    if-nez v1, :cond_b

    invoke-static {v3, v2}, Labcd/em$b;->j6(Labcd/em$b;Labcd/em$a;)Labcd/em$a;

    :goto_4
    const/4 v1, 0x0

    invoke-static {v2, v1}, Labcd/em$a;->j6(Labcd/em$a;Labcd/em$a;)Labcd/em$a;

    move-object v1, v2

    move-object v2, v0

    goto :goto_1

    :cond_4
    invoke-static {v0}, Labcd/em$a;->j6(Labcd/em$a;)I

    move-result v4

    invoke-static {v2}, Labcd/em$a;->j6(Labcd/em$a;)I

    move-result v5

    if-gt v4, v5, :cond_6

    invoke-static {v2}, Labcd/em$a;->DW(Labcd/em$a;)I

    move-result v4

    invoke-static {v0}, Labcd/em$a;->DW(Labcd/em$a;)I

    move-result v5

    if-gt v4, v5, :cond_6

    invoke-static {v0}, Labcd/em$a;->j6(Labcd/em$a;)I

    move-result v4

    invoke-static {v2, v4}, Labcd/em$a;->j6(Labcd/em$a;I)I

    invoke-static {v0}, Labcd/em$a;->DW(Labcd/em$a;)I

    move-result v4

    invoke-static {v2, v4}, Labcd/em$a;->DW(Labcd/em$a;I)I

    const/4 v4, -0x1

    invoke-static {v0, v4}, Labcd/em$a;->DW(Labcd/em$a;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/em;->DW:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v6, v7, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v0

    :cond_6
    :try_start_1
    invoke-static {v0}, Labcd/em$a;->j6(Labcd/em$a;)I

    move-result v4

    invoke-static {v2}, Labcd/em$a;->j6(Labcd/em$a;)I

    move-result v5

    if-gt v4, v5, :cond_7

    invoke-static {v2}, Labcd/em$a;->j6(Labcd/em$a;)I

    move-result v4

    invoke-static {v0}, Labcd/em$a;->DW(Labcd/em$a;)I

    move-result v5

    if-gt v4, v5, :cond_7

    invoke-static {v0}, Labcd/em$a;->j6(Labcd/em$a;)I

    move-result v4

    invoke-static {v2, v4}, Labcd/em$a;->j6(Labcd/em$a;I)I

    const/4 v4, -0x1

    invoke-static {v0, v4}, Labcd/em$a;->DW(Labcd/em$a;I)I

    goto :goto_3

    :cond_7
    invoke-static {v0}, Labcd/em$a;->j6(Labcd/em$a;)I

    move-result v4

    invoke-static {v2}, Labcd/em$a;->DW(Labcd/em$a;)I

    move-result v5

    if-gt v4, v5, :cond_8

    invoke-static {v2}, Labcd/em$a;->DW(Labcd/em$a;)I

    move-result v4

    invoke-static {v0}, Labcd/em$a;->DW(Labcd/em$a;)I

    move-result v5

    if-gt v4, v5, :cond_8

    invoke-static {v0}, Labcd/em$a;->DW(Labcd/em$a;)I

    move-result v4

    invoke-static {v2, v4}, Labcd/em$a;->DW(Labcd/em$a;I)I

    const/4 v4, -0x1

    invoke-static {v0, v4}, Labcd/em$a;->DW(Labcd/em$a;I)I

    goto/16 :goto_3

    :cond_8
    invoke-static {v2}, Labcd/em$a;->DW(Labcd/em$a;)I

    move-result v4

    invoke-static {v0}, Labcd/em$a;->j6(Labcd/em$a;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_9

    invoke-static {v0}, Labcd/em$a;->DW(Labcd/em$a;)I

    move-result v4

    invoke-static {v2, v4}, Labcd/em$a;->DW(Labcd/em$a;I)I

    const/4 v4, -0x1

    invoke-static {v0, v4}, Labcd/em$a;->DW(Labcd/em$a;I)I

    goto/16 :goto_3

    :cond_9
    invoke-static {v2}, Labcd/em$a;->j6(Labcd/em$a;)I

    move-result v4

    invoke-static {v0}, Labcd/em$a;->DW(Labcd/em$a;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    if-ne v4, v5, :cond_a

    invoke-static {v0}, Labcd/em$a;->j6(Labcd/em$a;)I

    move-result v4

    invoke-static {v2, v4}, Labcd/em$a;->j6(Labcd/em$a;I)I

    const/4 v4, -0x1

    invoke-static {v0, v4}, Labcd/em$a;->DW(Labcd/em$a;I)I

    goto/16 :goto_3

    :cond_a
    invoke-static {v0}, Labcd/em$a;->FH(Labcd/em$a;)Labcd/em$a;

    move-result-object v0

    goto/16 :goto_2

    :cond_b
    invoke-static {v1, v2}, Labcd/em$a;->j6(Labcd/em$a;Labcd/em$a;)Labcd/em$a;

    goto/16 :goto_4

    :cond_c
    invoke-static {v2}, Labcd/em$a;->FH(Labcd/em$a;)Labcd/em$a;

    move-result-object v2

    goto/16 :goto_1

    :cond_d
    iget-object v0, p0, Labcd/em;->FH:Ljava/util/Vector;

    invoke-virtual {v0, v3, p1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private FH(III)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0xc358b0ffa3c76edL
    .end annotation

    const-wide v8, 0x2399d7e2a5570200L    # 3.472242033202724E-137

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Labcd/em;->j6:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x2399d7e2a5570200L    # 3.472242033202724E-137

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/em;->FH:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/em$b;

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {v0}, Labcd/em$b;->j6(Labcd/em$b;)Labcd/em$a;

    move-result-object v2

    move-object v1, v6

    :goto_1
    if-eqz v2, :cond_a

    invoke-static {v2}, Labcd/em$a;->j6(Labcd/em$a;)I

    move-result v3

    if-gt p2, v3, :cond_5

    invoke-static {v2}, Labcd/em$a;->DW(Labcd/em$a;)I

    move-result v3

    if-gt v3, p3, :cond_5

    if-nez v1, :cond_3

    invoke-static {v2}, Labcd/em$a;->FH(Labcd/em$a;)Labcd/em$a;

    move-result-object v3

    invoke-static {v0, v3}, Labcd/em$b;->j6(Labcd/em$b;Labcd/em$a;)Labcd/em$a;

    :goto_2
    invoke-static {v2}, Labcd/em$a;->FH(Labcd/em$a;)Labcd/em$a;

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-static {v2}, Labcd/em$a;->FH(Labcd/em$a;)Labcd/em$a;

    move-result-object v3

    invoke-static {v1, v3}, Labcd/em$a;->j6(Labcd/em$a;Labcd/em$a;)Labcd/em$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/em;->DW:Z

    if-eqz v0, :cond_4

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1

    :cond_5
    :try_start_1
    invoke-static {v2}, Labcd/em$a;->j6(Labcd/em$a;)I

    move-result v3

    if-le p2, v3, :cond_8

    invoke-static {v2}, Labcd/em$a;->DW(Labcd/em$a;)I

    move-result v3

    if-le v3, p3, :cond_8

    new-instance v3, Labcd/em$a;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Labcd/em$a;-><init>(Labcd/dm;)V

    if-nez v1, :cond_7

    invoke-static {v0, v3}, Labcd/em$b;->j6(Labcd/em$b;Labcd/em$a;)Labcd/em$a;

    :goto_3
    invoke-static {v3, v2}, Labcd/em$a;->j6(Labcd/em$a;Labcd/em$a;)Labcd/em$a;

    invoke-static {v2}, Labcd/em$a;->Hw(Labcd/em$a;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Labcd/em$a;->j6(Labcd/em$a;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Labcd/em$a;->j6(Labcd/em$a;)I

    move-result v1

    invoke-static {v3, v1}, Labcd/em$a;->j6(Labcd/em$a;I)I

    add-int/lit8 v1, p2, -0x1

    invoke-static {v3, v1}, Labcd/em$a;->DW(Labcd/em$a;I)I

    add-int/lit8 v1, p3, 0x1

    invoke-static {v2, v1}, Labcd/em$a;->j6(Labcd/em$a;I)I

    :cond_6
    :goto_4
    move-object v1, v2

    goto :goto_2

    :cond_7
    invoke-static {v1, v3}, Labcd/em$a;->j6(Labcd/em$a;Labcd/em$a;)Labcd/em$a;

    goto :goto_3

    :cond_8
    invoke-static {v2}, Labcd/em$a;->j6(Labcd/em$a;)I

    move-result v1

    if-gt p2, v1, :cond_9

    invoke-static {v2}, Labcd/em$a;->j6(Labcd/em$a;)I

    move-result v1

    if-gt v1, p3, :cond_9

    add-int/lit8 v1, p3, 0x1

    invoke-static {v2, v1}, Labcd/em$a;->j6(Labcd/em$a;I)I

    goto :goto_4

    :cond_9
    invoke-static {v2}, Labcd/em$a;->DW(Labcd/em$a;)I

    move-result v1

    if-gt p2, v1, :cond_6

    invoke-static {v2}, Labcd/em$a;->DW(Labcd/em$a;)I

    move-result v1

    if-gt v1, p3, :cond_6

    add-int/lit8 v1, p2, -0x1

    invoke-static {v2, v1}, Labcd/em$a;->DW(Labcd/em$a;I)I

    goto :goto_4

    :cond_a
    invoke-static {v0}, Labcd/em$b;->j6(Labcd/em$b;)Labcd/em$a;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Labcd/em;->FH:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private j6(Ljava/lang/Object;IIIZ)V
    .registers 16
    .annotation runtime Labcd/su;
        method = -0x304c5cb6dfaeb3dcL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IIIZ)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/em;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p5}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v0, 0xf57f0f7d0f78c51L    # 9.412192082491584E-235

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/em;->FH:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-gt v0, p2, :cond_1

    iget-object v0, p0, Labcd/em;->FH:Ljava/util/Vector;

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    :cond_1
    iget-object v0, p0, Labcd/em;->FH:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/em$b;

    if-nez v0, :cond_6

    iget-object v1, p0, Labcd/em;->FH:Ljava/util/Vector;

    new-instance v0, Labcd/em$b;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Labcd/em$b;-><init>(Labcd/dm;)V

    invoke-virtual {v1, v0, p2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    move-object v3, v0

    :goto_0
    if-eqz p5, :cond_5

    invoke-static {v3}, Labcd/em$b;->j6(Labcd/em$b;)Labcd/em$a;

    move-result-object v1

    const/4 v0, 0x0

    :goto_1
    if-eqz v1, :cond_2

    invoke-static {v1}, Labcd/em$a;->FH(Labcd/em$a;)Labcd/em$a;

    move-result-object v2

    move-object v0, v1

    move-object v1, v2

    goto :goto_1

    :cond_2
    new-instance v1, Labcd/em$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Labcd/em$a;-><init>(Labcd/dm;)V

    invoke-static {v1, p3}, Labcd/em$a;->j6(Labcd/em$a;I)I

    invoke-static {v1, p4}, Labcd/em$a;->DW(Labcd/em$a;I)I

    invoke-static {v1, p1}, Labcd/em$a;->j6(Labcd/em$a;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_3

    invoke-static {v3, v1}, Labcd/em$b;->j6(Labcd/em$b;Labcd/em$a;)Labcd/em$a;

    :goto_2
    const/4 v0, 0x0

    invoke-static {v1, v0}, Labcd/em$a;->j6(Labcd/em$a;Labcd/em$a;)Labcd/em$a;

    :goto_3
    return-void

    :cond_3
    invoke-static {v0, v1}, Labcd/em$a;->j6(Labcd/em$a;Labcd/em$a;)Labcd/em$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/em;->DW:Z

    if-eqz v0, :cond_4

    const-wide v2, 0xf57f0f7d0f78c51L    # 9.412192082491584E-235

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Boolean;

    invoke-direct {v9, p5}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1

    :cond_5
    :try_start_1
    new-instance v0, Labcd/em$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Labcd/em$a;-><init>(Labcd/dm;)V

    invoke-static {v0, p3}, Labcd/em$a;->j6(Labcd/em$a;I)I

    invoke-static {v0, p4}, Labcd/em$a;->DW(Labcd/em$a;I)I

    invoke-static {v0, p1}, Labcd/em$a;->j6(Labcd/em$a;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Labcd/em$b;->j6(Labcd/em$b;)Labcd/em$a;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/em$a;->j6(Labcd/em$a;Labcd/em$a;)Labcd/em$a;

    invoke-static {v3, v0}, Labcd/em$b;->j6(Labcd/em$b;Labcd/em$a;)Labcd/em$a;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_6
    move-object v3, v0

    goto :goto_0
.end method

.method private v5(II)V
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x78cb594e48613e8L
    .end annotation

    const-wide v2, 0x21047a1ee9d4263fL

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Labcd/em;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v6, 0x21047a1ee9d4263fL

    invoke-static {v6, v7, p0, v0, v4}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-gez p1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Labcd/em;->FH:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-gtz p2, :cond_4

    iget-object v0, p0, Labcd/em;->FH:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/em;->DW:Z

    if-eqz v0, :cond_3

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1

    :cond_4
    :try_start_1
    iget-object v0, p0, Labcd/em;->FH:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/em$b;

    if-eqz v0, :cond_1

    invoke-static {v0}, Labcd/em$b;->j6(Labcd/em$b;)Labcd/em$a;

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_8

    invoke-static {v4}, Labcd/em$a;->j6(Labcd/em$a;)I

    move-result v5

    if-gt p2, v5, :cond_6

    if-nez v1, :cond_5

    invoke-static {v4}, Labcd/em$a;->FH(Labcd/em$a;)Labcd/em$a;

    move-result-object v5

    invoke-static {v0, v5}, Labcd/em$b;->j6(Labcd/em$b;Labcd/em$a;)Labcd/em$a;

    :goto_2
    invoke-static {v4}, Labcd/em$a;->FH(Labcd/em$a;)Labcd/em$a;

    move-result-object v4

    goto :goto_1

    :cond_5
    invoke-static {v4}, Labcd/em$a;->FH(Labcd/em$a;)Labcd/em$a;

    move-result-object v5

    invoke-static {v1, v5}, Labcd/em$a;->j6(Labcd/em$a;Labcd/em$a;)Labcd/em$a;

    goto :goto_2

    :cond_6
    invoke-static {v4}, Labcd/em$a;->j6(Labcd/em$a;)I

    move-result v1

    if-le p2, v1, :cond_7

    invoke-static {v4}, Labcd/em$a;->DW(Labcd/em$a;)I

    move-result v1

    if-lt v1, p2, :cond_7

    invoke-static {v4}, Labcd/em$a;->DW(Labcd/em$a;)I

    move-result v1

    const v5, 0x7fffffff

    if-eq v1, v5, :cond_7

    add-int/lit8 v1, p2, -0x1

    invoke-static {v4, v1}, Labcd/em$a;->DW(Labcd/em$a;I)I

    :cond_7
    move-object v1, v4

    goto :goto_2

    :cond_8
    invoke-static {v0}, Labcd/em$b;->j6(Labcd/em$b;)Labcd/em$a;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Labcd/em;->FH:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public DW()Labcd/fm;
    .registers 5

    const-wide v2, 0x11a8d44c5545659L

    :try_start_0
    sget-boolean v0, Labcd/em;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x11a8d44c5545659L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Labcd/em;->DW(II)Labcd/fm;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/em;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public DW(II)Labcd/fm;
    .registers 12

    const-wide v2, -0x39c5f6e2e7844d20L    # -2.062752764926668E30

    const/4 v5, -0x1

    :try_start_0
    sget-boolean v0, Labcd/em;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v6, -0x39c5f6e2e7844d20L    # -2.062752764926668E30

    invoke-static {v6, v7, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    move v4, p1

    :goto_0
    :try_start_1
    iget-object v0, p0, Labcd/em;->FH:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v4, v0, :cond_7

    iget-object v0, p0, Labcd/em;->FH:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/em$b;

    if-eqz v0, :cond_6

    invoke-static {v0}, Labcd/em$b;->j6(Labcd/em$b;)Labcd/em$a;

    move-result-object v1

    move v0, v5

    :goto_1
    if-eqz v1, :cond_5

    if-ne v4, p1, :cond_1

    invoke-static {v1}, Labcd/em$a;->j6(Labcd/em$a;)I

    move-result v6

    if-le v6, p2, :cond_4

    :cond_1
    if-eq v0, v5, :cond_2

    invoke-static {v1}, Labcd/em$a;->j6(Labcd/em$a;)I

    move-result v6

    if-le v0, v6, :cond_4

    :cond_2
    invoke-static {v1}, Labcd/em$a;->j6(Labcd/em$a;)I

    move-result v6

    if-nez v6, :cond_3

    if-eqz v4, :cond_3

    invoke-static {v1}, Labcd/em$a;->Hw(Labcd/em$a;)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v4, -0x1

    const v8, 0x7fffffff

    invoke-virtual {p0, v6, v7, v8}, Labcd/em;->j6(Ljava/lang/Object;II)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    invoke-static {v1}, Labcd/em$a;->j6(Labcd/em$a;)I

    move-result v0

    :cond_4
    invoke-static {v1}, Labcd/em$a;->FH(Labcd/em$a;)Labcd/em$a;

    move-result-object v1

    goto :goto_1

    :cond_5
    if-eq v0, v5, :cond_6

    new-instance v1, Labcd/fm;

    invoke-direct {v1, v4, v0}, Labcd/fm;-><init>(II)V

    return-object v1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    move p2, v5

    goto :goto_0

    :cond_7
    new-instance v0, Labcd/bm;

    invoke-direct {v0}, Labcd/bm;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v1

    move p1, v4

    :goto_2
    sget-boolean v0, Labcd/em;->DW:Z

    if-eqz v0, :cond_8

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    throw v1

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public final DW(III)V
    .registers 14

    const-wide v8, 0x5725810ebd541b60L    # 6.464431069427088E111

    const/4 v6, 0x0

    const v7, 0x7fffffff

    :try_start_0
    sget-boolean v0, Labcd/em;->j6:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x5725810ebd541b60L    # 6.464431069427088E111

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-gez p1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Labcd/em;->FH:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Labcd/em;->FH:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/em$b;

    if-eqz v0, :cond_1

    add-int v1, p2, p3

    add-int/lit8 v3, v1, -0x1

    invoke-static {v0}, Labcd/em$b;->j6(Labcd/em$b;)Labcd/em$a;

    move-result-object v2

    move-object v1, v6

    :goto_1
    if-eqz v2, :cond_b

    invoke-static {v2}, Labcd/em$a;->j6(Labcd/em$a;)I

    move-result v4

    if-ge p2, v4, :cond_5

    invoke-static {v2}, Labcd/em$a;->j6(Labcd/em$a;)I

    move-result v4

    if-ge v3, v4, :cond_5

    invoke-static {v2}, Labcd/em$a;->DW(Labcd/em$a;)I

    move-result v1

    if-eq v1, v7, :cond_3

    invoke-static {v2}, Labcd/em$a;->DW(Labcd/em$a;)I

    move-result v1

    sub-int/2addr v1, p3

    invoke-static {v2, v1}, Labcd/em$a;->DW(Labcd/em$a;I)I

    :cond_3
    invoke-static {v2}, Labcd/em$a;->j6(Labcd/em$a;)I

    move-result v1

    sub-int/2addr v1, p3

    invoke-static {v2, v1}, Labcd/em$a;->j6(Labcd/em$a;I)I

    :cond_4
    :goto_2
    move-object v1, v2

    :goto_3
    invoke-static {v2}, Labcd/em$a;->FH(Labcd/em$a;)Labcd/em$a;

    move-result-object v2

    goto :goto_1

    :cond_5
    invoke-static {v2}, Labcd/em$a;->j6(Labcd/em$a;)I

    move-result v4

    if-gt p2, v4, :cond_8

    invoke-static {v2}, Labcd/em$a;->DW(Labcd/em$a;)I

    move-result v4

    if-gt v4, v3, :cond_8

    if-nez v1, :cond_7

    invoke-static {v2}, Labcd/em$a;->FH(Labcd/em$a;)Labcd/em$a;

    move-result-object v4

    invoke-static {v0, v4}, Labcd/em$b;->j6(Labcd/em$b;Labcd/em$a;)Labcd/em$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/em;->DW:Z

    if-eqz v0, :cond_6

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    throw v1

    :cond_7
    :try_start_1
    invoke-static {v2}, Labcd/em$a;->FH(Labcd/em$a;)Labcd/em$a;

    move-result-object v4

    invoke-static {v1, v4}, Labcd/em$a;->j6(Labcd/em$a;Labcd/em$a;)Labcd/em$a;

    goto :goto_3

    :cond_8
    invoke-static {v2}, Labcd/em$a;->j6(Labcd/em$a;)I

    move-result v1

    if-le p2, v1, :cond_9

    invoke-static {v2}, Labcd/em$a;->DW(Labcd/em$a;)I

    move-result v1

    if-le v1, v3, :cond_9

    invoke-static {v2}, Labcd/em$a;->DW(Labcd/em$a;)I

    move-result v1

    if-eq v1, v7, :cond_4

    invoke-static {v2}, Labcd/em$a;->DW(Labcd/em$a;)I

    move-result v1

    sub-int/2addr v1, p3

    invoke-static {v2, v1}, Labcd/em$a;->DW(Labcd/em$a;I)I

    goto :goto_2

    :cond_9
    invoke-static {v2}, Labcd/em$a;->j6(Labcd/em$a;)I

    move-result v1

    if-gt p2, v1, :cond_a

    invoke-static {v2}, Labcd/em$a;->j6(Labcd/em$a;)I

    move-result v1

    if-gt v1, v3, :cond_a

    invoke-static {v2, p2}, Labcd/em$a;->j6(Labcd/em$a;I)I

    invoke-static {v2}, Labcd/em$a;->DW(Labcd/em$a;)I

    move-result v1

    if-eq v1, v7, :cond_4

    invoke-static {v2}, Labcd/em$a;->DW(Labcd/em$a;)I

    move-result v1

    sub-int/2addr v1, p3

    invoke-static {v2, v1}, Labcd/em$a;->DW(Labcd/em$a;I)I

    goto :goto_2

    :cond_a
    invoke-static {v2}, Labcd/em$a;->DW(Labcd/em$a;)I

    move-result v1

    if-gt p2, v1, :cond_4

    invoke-static {v2}, Labcd/em$a;->DW(Labcd/em$a;)I

    move-result v1

    if-gt v1, v3, :cond_4

    invoke-static {v2}, Labcd/em$a;->DW(Labcd/em$a;)I

    move-result v1

    if-eq v1, v7, :cond_4

    add-int/lit8 v1, p2, -0x1

    invoke-static {v2, v1}, Labcd/em$a;->DW(Labcd/em$a;I)I

    goto/16 :goto_2

    :cond_b
    invoke-static {v0}, Labcd/em$b;->j6(Labcd/em$b;)Labcd/em$a;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Labcd/em;->FH:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public final DW(IIII)V
    .registers 15

    :try_start_0
    sget-boolean v0, Labcd/em;->j6:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x5fe900915a07b20L    # -4.945688479238066E279

    move-object v2, p0

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-ne p1, p3, :cond_2

    sub-int v0, p4, p2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Labcd/em;->j6(III)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    add-int/lit8 v8, p1, 0x1

    iget-object v0, p0, Labcd/em;->FH:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-gt v8, v0, :cond_3

    move v0, v8

    :goto_1
    if-gt v0, p3, :cond_3

    iget-object v1, p0, Labcd/em;->FH:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v8}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Labcd/em;->FH:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p3, v0, :cond_5

    iget-object v0, p0, Labcd/em;->FH:Ljava/util/Vector;

    invoke-virtual {v0, p3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/em$b;

    :goto_2
    if-eqz v0, :cond_7

    invoke-static {v0}, Labcd/em$b;->j6(Labcd/em$b;)Labcd/em$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    add-int/lit8 v0, p4, 0x1

    if-lez v0, :cond_7

    move v0, p4

    :goto_3
    if-eqz v1, :cond_6

    add-int/lit8 v2, v0, 0x1

    add-int/2addr p2, v2

    const v3, 0x7fffffff

    if-eq v0, v3, :cond_4

    add-int/2addr v0, v2

    :cond_4
    :try_start_1
    invoke-static {v1}, Labcd/em$a;->FH(Labcd/em$a;)Labcd/em$a;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    move p4, v0

    :cond_7
    :try_start_2
    iget-object v0, p0, Labcd/em;->FH:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_8

    iget-object v0, p0, Labcd/em;->FH:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/em$b;

    move-object v9, v0

    :goto_4
    if-eqz v9, :cond_1

    invoke-static {v9}, Labcd/em$b;->j6(Labcd/em$b;)Labcd/em$a;

    move-result-object v6

    const/4 v7, 0x0

    :goto_5
    if-eqz v6, :cond_f

    invoke-static {v6}, Labcd/em$a;->j6(Labcd/em$a;)I

    move-result v0

    if-ge v0, p2, :cond_c

    invoke-static {v6}, Labcd/em$a;->DW(Labcd/em$a;)I

    move-result v0

    if-gt p2, v0, :cond_c

    move v2, v8

    :goto_6
    if-ge v2, p3, :cond_9

    invoke-static {v6}, Labcd/em$a;->Hw(Labcd/em$a;)Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Labcd/em;->j6(Ljava/lang/Object;IIIZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_8
    const/4 v0, 0x0

    move-object v9, v0

    goto :goto_4

    :cond_9
    invoke-static {v6}, Labcd/em$a;->DW(Labcd/em$a;)I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_a

    invoke-static {v6}, Labcd/em$a;->Hw(Labcd/em$a;)Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p3

    invoke-direct/range {v0 .. v5}, Labcd/em;->j6(Ljava/lang/Object;IIIZ)V

    :goto_7
    const v0, 0x7fffffff

    invoke-static {v6, v0}, Labcd/em$a;->DW(Labcd/em$a;I)I

    move-object v0, v6

    :goto_8
    invoke-static {v6}, Labcd/em$a;->FH(Labcd/em$a;)Labcd/em$a;

    move-result-object v6

    move-object v7, v0

    goto :goto_5

    :cond_a
    invoke-static {v6}, Labcd/em$a;->Hw(Labcd/em$a;)Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v6}, Labcd/em$a;->DW(Labcd/em$a;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, 0x1

    add-int v4, v0, p4

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p3

    invoke-direct/range {v0 .. v5}, Labcd/em;->j6(Ljava/lang/Object;IIIZ)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    :catch_0
    move-exception v1

    :goto_9
    sget-boolean v0, Labcd/em;->DW:Z

    if-eqz v0, :cond_b

    const-wide v2, -0x5fe900915a07b20L    # -4.945688479238066E279

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b
    throw v1

    :cond_c
    :try_start_3
    invoke-static {v6}, Labcd/em$a;->j6(Labcd/em$a;)I

    move-result v0

    if-lt v0, p2, :cond_10

    invoke-static {v6}, Labcd/em$a;->DW(Labcd/em$a;)I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_d

    invoke-static {v6}, Labcd/em$a;->Hw(Labcd/em$a;)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, p4, 0x1

    invoke-static {v6}, Labcd/em$a;->j6(Labcd/em$a;)I

    move-result v2

    add-int/2addr v0, v2

    sub-int v3, v0, p2

    const v4, 0x7fffffff

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p3

    invoke-direct/range {v0 .. v5}, Labcd/em;->j6(Ljava/lang/Object;IIIZ)V

    :goto_a
    if-nez v7, :cond_e

    invoke-static {v6}, Labcd/em$a;->FH(Labcd/em$a;)Labcd/em$a;

    move-result-object v0

    invoke-static {v9, v0}, Labcd/em$b;->j6(Labcd/em$b;Labcd/em$a;)Labcd/em$a;

    move-object v0, v7

    goto :goto_8

    :cond_d
    invoke-static {v6}, Labcd/em$a;->Hw(Labcd/em$a;)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, p4, 0x1

    invoke-static {v6}, Labcd/em$a;->j6(Labcd/em$a;)I

    move-result v2

    add-int/2addr v2, v0

    sub-int v3, v2, p2

    invoke-static {v6}, Labcd/em$a;->j6(Labcd/em$a;)I

    move-result v2

    add-int/2addr v0, v2

    sub-int/2addr v0, p2

    invoke-static {v6}, Labcd/em$a;->DW(Labcd/em$a;)I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {v6}, Labcd/em$a;->j6(Labcd/em$a;)I

    move-result v2

    sub-int v4, v0, v2

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p3

    invoke-direct/range {v0 .. v5}, Labcd/em;->j6(Ljava/lang/Object;IIIZ)V

    goto :goto_a

    :cond_e
    invoke-static {v6}, Labcd/em$a;->FH(Labcd/em$a;)Labcd/em$a;

    move-result-object v0

    invoke-static {v7, v0}, Labcd/em$a;->j6(Labcd/em$a;Labcd/em$a;)Labcd/em$a;

    move-object v0, v7

    goto/16 :goto_8

    :cond_f
    invoke-static {v9}, Labcd/em$b;->j6(Labcd/em$b;)Labcd/em$a;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Labcd/em;->FH:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_1
    move-exception v1

    move p4, v0

    goto/16 :goto_9

    :cond_10
    move-object v0, v7

    goto/16 :goto_8
.end method

.method public final DW(Ljava/lang/Object;II)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    const-wide v8, -0x5e135b1575d49c37L

    :try_start_0
    sget-boolean v0, Labcd/em;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x5e135b1575d49c37L

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Labcd/em;->j6(Ljava/lang/Object;IIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/em;->DW:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public final FH(IIII)V
    .registers 14

    :try_start_0
    sget-boolean v0, Labcd/em;->j6:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x1a8f14ed495894f5L    # -4.387659974771162E180

    move-object v2, p0

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-ne p1, p3, :cond_1

    sub-int v0, p4, p2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Labcd/em;->DW(III)V

    :goto_0
    return-void

    :cond_1
    add-int/lit8 v1, p1, 0x1

    move v0, v1

    :goto_1
    if-ge v0, p3, :cond_3

    iget-object v2, p0, Labcd/em;->FH:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Labcd/em;->FH:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->removeElementAt(I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1, p2}, Labcd/em;->v5(II)V

    if-ltz p4, :cond_4

    const/4 v0, 0x0

    add-int/lit8 v2, p4, 0x0

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Labcd/em;->DW(III)V

    :cond_4
    invoke-virtual {p0, p1, p2}, Labcd/em;->Hw(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/em;->DW:Z

    if-eqz v0, :cond_5

    const-wide v2, -0x1a8f14ed495894f5L    # -4.387659974771162E180

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v1
.end method

.method public final FH(II)Z
    .registers 11

    const-wide v2, 0x13ad450b4743a5b8L    # 6.792527609365689E-214

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Labcd/em;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v6, 0x13ad450b4743a5b8L    # 6.792527609365689E-214

    invoke-static {v6, v7, p0, v0, v4}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-gez p1, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Labcd/em;->FH:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Labcd/em;->FH:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/em$b;

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {v0}, Labcd/em$b;->j6(Labcd/em$b;)Labcd/em$a;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_5

    invoke-static {v0}, Labcd/em$a;->j6(Labcd/em$a;)I

    move-result v4

    if-gt v4, p2, :cond_4

    invoke-static {v0}, Labcd/em$a;->DW(Labcd/em$a;)I

    move-result v4

    if-gt p2, v4, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    invoke-static {v0}, Labcd/em$a;->FH(Labcd/em$a;)Labcd/em$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/em;->DW:Z

    if-eqz v0, :cond_6

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    throw v1
.end method

.method public final Hw(II)V
    .registers 13

    const-wide v8, 0x5acf2b79c7b05b59L    # 2.7007385812261164E129

    const v6, 0x7fffffff

    :try_start_0
    sget-boolean v0, Labcd/em;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x5acf2b79c7b05b59L    # 2.7007385812261164E129

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-gez p2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-ltz p1, :cond_1

    iget-object v0, p0, Labcd/em;->FH:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Labcd/em;->FH:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/em$b;

    if-nez v0, :cond_6

    iget-object v0, p0, Labcd/em;->FH:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElementAt(I)V

    iget-object v0, p0, Labcd/em;->FH:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/em$b;

    if-eqz v0, :cond_1

    invoke-static {v0}, Labcd/em$b;->j6(Labcd/em$b;)Labcd/em$a;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_1

    invoke-static {v0}, Labcd/em$a;->j6(Labcd/em$a;)I

    move-result v1

    sub-int v2, v6, p2

    add-int/lit8 v2, v2, 0x0

    if-le v1, v2, :cond_3

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Labcd/em$a;->j6(Labcd/em$a;I)I

    :goto_2
    invoke-static {v0}, Labcd/em$a;->DW(Labcd/em$a;)I

    move-result v1

    if-le v1, v2, :cond_5

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Labcd/em$a;->DW(Labcd/em$a;I)I

    :goto_3
    invoke-static {v0}, Labcd/em$a;->FH(Labcd/em$a;)Labcd/em$a;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-static {v0}, Labcd/em$a;->j6(Labcd/em$a;)I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    add-int/2addr v1, p2

    invoke-static {v0, v1}, Labcd/em$a;->j6(Labcd/em$a;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/em;->DW:Z

    if-eqz v0, :cond_4

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1

    :cond_5
    :try_start_1
    invoke-static {v0}, Labcd/em$a;->DW(Labcd/em$a;)I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    add-int/2addr v1, p2

    invoke-static {v0, v1}, Labcd/em$a;->DW(Labcd/em$a;I)I

    goto :goto_3

    :cond_6
    iget-object v1, p0, Labcd/em;->FH:Ljava/util/Vector;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/em$b;

    iget-object v3, p0, Labcd/em;->FH:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->removeElementAt(I)V

    if-eqz v1, :cond_1

    invoke-static {v0}, Labcd/em$b;->j6(Labcd/em$b;)Labcd/em$a;

    move-result-object v3

    const/4 v2, 0x0

    :goto_4
    if-eqz v3, :cond_b

    invoke-static {v3}, Labcd/em$a;->j6(Labcd/em$a;)I

    move-result v4

    if-ge v4, p2, :cond_7

    if-nez p2, :cond_8

    :cond_7
    if-nez v2, :cond_a

    invoke-static {v3}, Labcd/em$a;->FH(Labcd/em$a;)Labcd/em$a;

    move-result-object v4

    invoke-static {v0, v4}, Labcd/em$b;->j6(Labcd/em$b;Labcd/em$a;)Labcd/em$a;

    :goto_5
    invoke-static {v3}, Labcd/em$a;->FH(Labcd/em$a;)Labcd/em$a;

    move-result-object v3

    goto :goto_4

    :cond_8
    invoke-static {v3}, Labcd/em$a;->DW(Labcd/em$a;)I

    move-result v2

    if-lt v2, p2, :cond_9

    add-int/lit8 v2, p2, -0x1

    invoke-static {v3, v2}, Labcd/em$a;->DW(Labcd/em$a;I)I

    :cond_9
    move-object v2, v3

    goto :goto_5

    :cond_a
    invoke-static {v3}, Labcd/em$a;->FH(Labcd/em$a;)Labcd/em$a;

    move-result-object v4

    invoke-static {v2, v4}, Labcd/em$a;->j6(Labcd/em$a;Labcd/em$a;)Labcd/em$a;

    goto :goto_5

    :cond_b
    invoke-static {v1}, Labcd/em$b;->j6(Labcd/em$b;)Labcd/em$a;

    move-result-object v0

    move-object v7, v0

    :goto_6
    if-eqz v7, :cond_e

    invoke-static {v7}, Labcd/em$a;->j6(Labcd/em$a;)I

    move-result v0

    sub-int v1, v6, p2

    add-int/lit8 v1, v1, 0x0

    if-le v0, v1, :cond_c

    move v3, v6

    :goto_7
    invoke-static {v7}, Labcd/em$a;->DW(Labcd/em$a;)I

    move-result v0

    if-le v0, v1, :cond_d

    move v4, v6

    :goto_8
    invoke-static {v7}, Labcd/em$a;->Hw(Labcd/em$a;)Ljava/lang/Object;

    move-result-object v1

    const/4 v5, 0x1

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Labcd/em;->j6(Ljava/lang/Object;IIIZ)V

    invoke-static {v7}, Labcd/em$a;->FH(Labcd/em$a;)Labcd/em$a;

    move-result-object v0

    move-object v7, v0

    goto :goto_6

    :cond_c
    invoke-static {v7}, Labcd/em$a;->j6(Labcd/em$a;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    add-int v3, v0, p2

    goto :goto_7

    :cond_d
    invoke-static {v7}, Labcd/em$a;->DW(Labcd/em$a;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    add-int v4, v0, p2

    goto :goto_8

    :cond_e
    invoke-direct {p0, p1}, Labcd/em;->DW(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public j6(Labcd/fm;)Labcd/fm;
    .registers 6

    const-wide v2, -0x2780ce3bcdecacddL    # -1.966595104662088E118

    :try_start_0
    sget-boolean v0, Labcd/em;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2780ce3bcdecacddL    # -1.966595104662088E118

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Labcd/fm;->DW()I

    move-result v0

    invoke-virtual {p1}, Labcd/fm;->j6()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Labcd/em;->DW(II)Labcd/fm;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/em;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public final j6(II)Ljava/util/Enumeration;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Enumeration",
            "<TT;>;"
        }
    .end annotation

    const-wide v2, 0x5171467a300452e0L    # 2.0975119794726493E84

    :try_start_0
    sget-boolean v0, Labcd/em;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x5171467a300452e0L    # 2.0975119794726493E84

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-gez p1, :cond_1

    new-instance v0, Labcd/em$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Labcd/em$c;-><init>(Labcd/em$a;I)V

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Labcd/em;->FH:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_3

    new-instance v0, Labcd/em$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Labcd/em$c;-><init>(Labcd/em$a;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/em;->DW:Z

    if-eqz v0, :cond_2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1

    :cond_3
    :try_start_1
    iget-object v0, p0, Labcd/em;->FH:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/em$b;

    if-nez v0, :cond_4

    new-instance v0, Labcd/em$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Labcd/em$c;-><init>(Labcd/em$a;I)V

    goto :goto_0

    :cond_4
    new-instance v1, Labcd/em$c;

    invoke-static {v0}, Labcd/em$b;->j6(Labcd/em$b;)Labcd/em$a;

    move-result-object v0

    invoke-direct {v1, v0, p2}, Labcd/em$c;-><init>(Labcd/em$a;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    goto :goto_0
.end method

.method public final j6()V
    .registers 5

    const-wide v2, -0x14972406b7a5c0d7L    # -2.5539678079884042E209

    :try_start_0
    sget-boolean v0, Labcd/em;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x14972406b7a5c0d7L    # -2.5539678079884042E209

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Labcd/em;->FH:Ljava/util/Vector;

    iget-object v0, p0, Labcd/em;->FH:Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/em;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public final j6(III)V
    .registers 14

    const-wide v8, -0x590b16ade32308ffL    # -5.061334635092771E-121

    const v6, 0x7fffffff

    :try_start_0
    sget-boolean v0, Labcd/em;->j6:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x590b16ade32308ffL    # -5.061334635092771E-121

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-gez p1, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Labcd/em;->FH:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Labcd/em;->FH:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/em$b;

    if-eqz v0, :cond_1

    invoke-static {v0}, Labcd/em$b;->j6(Labcd/em$b;)Labcd/em$a;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Labcd/em$a;->j6(Labcd/em$a;)I

    move-result v1

    if-le p2, v1, :cond_6

    invoke-static {v0}, Labcd/em$a;->DW(Labcd/em$a;)I

    move-result v1

    if-lt v1, p2, :cond_6

    invoke-static {v0}, Labcd/em$a;->DW(Labcd/em$a;)I

    move-result v1

    sub-int v2, v6, p3

    if-le v1, v2, :cond_4

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Labcd/em$a;->DW(Labcd/em$a;I)I

    :cond_3
    :goto_1
    invoke-static {v0}, Labcd/em$a;->FH(Labcd/em$a;)Labcd/em$a;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-static {v0}, Labcd/em$a;->DW(Labcd/em$a;)I

    move-result v1

    add-int/2addr v1, p3

    invoke-static {v0, v1}, Labcd/em$a;->DW(Labcd/em$a;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/em;->DW:Z

    if-eqz v0, :cond_5

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v1

    :cond_6
    :try_start_1
    invoke-static {v0}, Labcd/em$a;->j6(Labcd/em$a;)I

    move-result v1

    if-ne p2, v1, :cond_9

    iget-boolean v1, p0, Labcd/em;->Hw:Z

    if-nez v1, :cond_7

    if-nez p2, :cond_9

    invoke-static {v0}, Labcd/em$a;->Hw(Labcd/em$a;)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    const v3, 0x7fffffff

    invoke-virtual {p0, v1, v2, v3}, Labcd/em;->j6(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_7
    invoke-static {v0}, Labcd/em$a;->DW(Labcd/em$a;)I

    move-result v1

    sub-int v2, v6, p3

    if-le v1, v2, :cond_8

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Labcd/em$a;->DW(Labcd/em$a;I)I

    goto :goto_1

    :cond_8
    invoke-static {v0}, Labcd/em$a;->DW(Labcd/em$a;)I

    move-result v1

    add-int/2addr v1, p3

    invoke-static {v0, v1}, Labcd/em$a;->DW(Labcd/em$a;I)I

    goto :goto_1

    :cond_9
    invoke-static {v0}, Labcd/em$a;->j6(Labcd/em$a;)I

    move-result v1

    if-gt p2, v1, :cond_3

    invoke-static {v0}, Labcd/em$a;->j6(Labcd/em$a;)I

    move-result v1

    sub-int v2, v6, p3

    if-le v1, v2, :cond_a

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Labcd/em$a;->j6(Labcd/em$a;I)I

    :goto_2
    invoke-static {v0}, Labcd/em$a;->DW(Labcd/em$a;)I

    move-result v1

    if-le v1, v2, :cond_b

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Labcd/em$a;->DW(Labcd/em$a;I)I

    goto :goto_1

    :cond_a
    invoke-static {v0}, Labcd/em$a;->j6(Labcd/em$a;)I

    move-result v1

    add-int/2addr v1, p3

    invoke-static {v0, v1}, Labcd/em$a;->j6(Labcd/em$a;I)I

    goto :goto_2

    :cond_b
    invoke-static {v0}, Labcd/em$a;->DW(Labcd/em$a;)I

    move-result v1

    add-int/2addr v1, p3

    invoke-static {v0, v1}, Labcd/em$a;->DW(Labcd/em$a;I)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public final j6(IIII)V
    .registers 14

    :try_start_0
    sget-boolean v0, Labcd/em;->j6:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x22fbf1aa4fbb066dL

    move-object v2, p0

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-le p1, p3, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-ltz p3, :cond_1

    if-ne p1, p3, :cond_3

    if-gt p2, p4, :cond_1

    :cond_3
    if-gez p1, :cond_4

    const/4 p1, 0x0

    const/4 p2, 0x0

    :cond_4
    iget-object v0, p0, Labcd/em;->FH:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p3, v0, :cond_5

    iget-object v0, p0, Labcd/em;->FH:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 p3, v0, -0x1

    if-gt p1, p3, :cond_1

    const p4, 0x7fffffff

    :cond_5
    if-ne p1, p3, :cond_7

    invoke-direct {p0, p1, p2, p4}, Labcd/em;->FH(III)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/em;->DW:Z

    if-eqz v0, :cond_6

    const-wide v2, 0x22fbf1aa4fbb066dL

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    throw v1

    :cond_7
    const v0, 0x7fffffff

    :try_start_1
    invoke-direct {p0, p1, p2, v0}, Labcd/em;->FH(III)V

    add-int/lit8 v0, p1, 0x1

    :goto_1
    if-ge v0, p3, :cond_8

    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-direct {p0, v0, v1, v2}, Labcd/em;->FH(III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0, p4}, Labcd/em;->FH(III)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final j6(Ljava/lang/Object;IIII)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IIII)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/em;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x46fc85f9ebc8bf83L    # 9.25635458127461E33

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    if-gez p2, :cond_6

    const/4 v2, 0x0

    :goto_0
    if-le v2, p4, :cond_1

    :goto_1
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Labcd/em;->FH:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-gt v0, p4, :cond_2

    iget-object v0, p0, Labcd/em;->FH:Ljava/util/Vector;

    add-int/lit8 v1, p4, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    :cond_2
    if-ne v2, p4, :cond_4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p5

    invoke-direct/range {v0 .. v5}, Labcd/em;->j6(Ljava/lang/Object;IIIZ)V

    invoke-direct {p0, v2}, Labcd/em;->DW(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    move p2, v2

    :goto_2
    sget-boolean v0, Labcd/em;->DW:Z

    if-eqz v0, :cond_3

    const-wide v2, 0x46fc85f9ebc8bf83L    # 9.25635458127461E33

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

    :cond_3
    throw v1

    :cond_4
    const v4, 0x7fffffff

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    :try_start_2
    invoke-direct/range {v0 .. v5}, Labcd/em;->j6(Ljava/lang/Object;IIIZ)V

    invoke-direct {p0, v2}, Labcd/em;->DW(I)V

    add-int/lit8 v5, v2, 0x1

    :goto_3
    if-ge v5, p4, :cond_5

    const/4 v6, 0x0

    const v7, 0x7fffffff

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Labcd/em;->j6(Ljava/lang/Object;IIIZ)V

    invoke-direct {p0, v5}, Labcd/em;->DW(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move v5, p4

    move v7, p5

    invoke-direct/range {v3 .. v8}, Labcd/em;->j6(Ljava/lang/Object;IIIZ)V

    invoke-direct {p0, p4}, Labcd/em;->DW(I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2

    :cond_6
    move v2, p2

    goto :goto_0
.end method

.method public final j6(I)Z
    .registers 8

    const-wide v4, -0x3360376c06e3839fL    # -1.2768532002184457E61

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Labcd/em;->j6:Z

    if-eqz v0, :cond_0

    const-wide v2, -0x3360376c06e3839fL    # -1.2768532002184457E61

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    if-gez p1, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Labcd/em;->FH:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Labcd/em;->FH:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/em$b;

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {v0}, Labcd/em$b;->j6(Labcd/em$b;)Labcd/em$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/em;->DW:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v0
.end method

.method public final j6(Ljava/lang/Object;II)Z
    .registers 14

    const-wide v8, -0x267e4f5e002d970L    # -9.853127589474627E296

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Labcd/em;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x267e4f5e002d970L    # -9.853127589474627E296

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-gez p2, :cond_1

    move v0, v6

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Labcd/em;->FH:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p2, v0, :cond_2

    move v0, v6

    goto :goto_0

    :cond_2
    iget-object v0, p0, Labcd/em;->FH:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/em$b;

    if-nez v0, :cond_3

    move v0, v6

    goto :goto_0

    :cond_3
    invoke-static {v0}, Labcd/em$b;->j6(Labcd/em$b;)Labcd/em$a;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_5

    invoke-static {v0}, Labcd/em$a;->j6(Labcd/em$a;)I

    move-result v1

    if-gt v1, p3, :cond_4

    invoke-static {v0}, Labcd/em$a;->DW(Labcd/em$a;)I

    move-result v1

    if-gt p3, v1, :cond_4

    invoke-static {v0}, Labcd/em$a;->Hw(Labcd/em$a;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    invoke-static {v0}, Labcd/em$a;->FH(Labcd/em$a;)Labcd/em$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :cond_5
    move v0, v6

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/em;->DW:Z

    if-eqz v0, :cond_6

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    const-wide v4, -0x11fa94253c0b2c60L    # -9.679051127466032E221

    :try_start_0
    sget-boolean v0, Labcd/em;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x11fa94253c0b2c60L    # -9.679051127466032E221

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-string v0, "{\n"

    const/4 v1, 0x0

    :goto_0
    :try_start_1
    iget-object v2, p0, Labcd/em;->FH:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Labcd/em;->FH:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/em$b;

    if-eqz v0, :cond_1

    invoke-static {v0}, Labcd/em$b;->j6(Labcd/em$b;)Labcd/em$a;

    move-result-object v3

    move-object v0, v2

    :goto_1
    if-eqz v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Labcd/em$a;->j6(Labcd/em$a;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Labcd/em$a;->DW(Labcd/em$a;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "), "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Labcd/em$a;->FH(Labcd/em$a;)Labcd/em$a;

    move-result-object v2

    move-object v3, v2

    goto :goto_1

    :cond_1
    move-object v0, v2

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/em;->DW:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4
    throw v0
.end method

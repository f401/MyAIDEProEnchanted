.class public Labcd/Kd;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
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
.field private final FH:Labcd/La;
    .annotation runtime Labcd/ru;
        field = 0x20fbb073e45498cL
    .end annotation
.end field

.field private final Hw:Labcd/Vd;
    .annotation runtime Labcd/ru;
        field = -0x1e32313721814ac9L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x2f5855f7a7a480L    # -4.67819814662351E307

    const-class v0, Labcd/Kd;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/La;Labcd/Vd;)V
    .registers 10

    const-wide v2, 0x3726523dce4d4467L    # 5.004598587169754E-43

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Kd;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3726523dce4d4467L    # 5.004598587169754E-43

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Kd;->FH:Labcd/La;

    iput-object p2, p0, Labcd/Kd;->Hw:Labcd/Vd;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Kd;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private DW(Labcd/Sa;II)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x3d4cc994bc42bb48L
    .end annotation

    const-wide v8, 0x149cb88699134e47L

    const/4 v6, -0x1

    :try_start_0
    sget-boolean v0, Labcd/Kd;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x149cb88699134e47L

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, p2, p3, p2, p3}, Labcd/Sa;->v5(IIII)I

    move-result v0

    invoke-virtual {p1, p2, p3, p2, p3}, Labcd/Sa;->j6(IIII)I

    move-result v1

    if-ne v1, v6, :cond_4

    :goto_0
    if-ne v0, v6, :cond_1

    invoke-virtual {p1}, Labcd/Sa;->aM()I

    move-result v0

    :cond_1
    new-instance v1, Labcd/bc;

    invoke-direct {v1}, Labcd/bc;-><init>()V

    :goto_1
    if-eq v0, v6, :cond_3

    invoke-virtual {p1, v0}, Labcd/Sa;->P8(I)I

    move-result v1

    const/16 v2, 0x7c

    if-ne v1, v2, :cond_5

    invoke-virtual {p1, v0}, Labcd/Sa;->we(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-direct {p0, p1, v1}, Labcd/Kd;->j6(Labcd/Sa;I)V

    invoke-virtual {p1, v0}, Labcd/Sa;->we(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p1, v0, v1}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-direct {p0, p1, v1}, Labcd/Kd;->j6(Labcd/Sa;I)V

    :cond_2
    :goto_2
    invoke-virtual {p1}, Labcd/Sa;->aM()I

    move-result v1

    if-ne v0, v1, :cond_8

    :cond_3
    invoke-direct {p0, p1}, Labcd/Kd;->j6(Labcd/Sa;)V

    invoke-direct {p0}, Labcd/Kd;->j6()V

    return-void

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v0}, Labcd/Sa;->P8(I)I

    move-result v1

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_7

    invoke-virtual {p1, v0}, Labcd/Sa;->we(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-direct {p0, p1, v1}, Labcd/Kd;->j6(Labcd/Sa;I)V

    invoke-virtual {p1, v0}, Labcd/Sa;->we(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p1, v0, v1}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-direct {p0, p1, v1}, Labcd/Kd;->j6(Labcd/Sa;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Kd;->DW:Z

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

    :cond_7
    :try_start_1
    invoke-virtual {p1, v0}, Labcd/Sa;->P8(I)I

    move-result v1

    const/16 v2, 0xdf

    if-ne v1, v2, :cond_2

    invoke-direct {p0, p1, v0}, Labcd/Kd;->j6(Labcd/Sa;I)V

    goto :goto_2

    :cond_8
    invoke-virtual {p1, v0}, Labcd/Sa;->er(I)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_1
.end method

.method private FH(Labcd/Da;II)I
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x330953474e744c74L
    .end annotation

    const-wide v8, -0x1e369b2c8e3ffeb3L    # -1.1424474829040458E163

    :try_start_0
    sget-boolean v0, Labcd/Kd;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x1e369b2c8e3ffeb3L    # -1.1424474829040458E163

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, p2, p3}, Labcd/Da;->j6(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    add-int/lit8 v2, v0, -0x2

    if-ltz v2, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Kd;->DW:Z

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

    :cond_2
    return v0
.end method

.method private FH(Labcd/Sa;II)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x29fb1b2101b479fL
    .end annotation

    const-wide v8, -0x4500925ce7268f70L    # -1.6248034724213743E-24

    const/4 v7, -0x1

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Kd;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x4500925ce7268f70L    # -1.6248034724213743E-24

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v1

    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->VH:Labcd/ab;

    invoke-interface {v0}, Labcd/ab;->j6()V

    invoke-virtual {p1, p2, p3}, Labcd/Sa;->u7(II)I

    move-result v0

    if-eq v0, v7, :cond_1

    invoke-virtual {p1, v0}, Labcd/Sa;->er(I)I

    move-result v2

    invoke-virtual {p1, v2}, Labcd/Sa;->P8(I)I

    move-result v3

    const/16 v4, 0x9f

    if-eq v3, v4, :cond_7

    const/16 v4, 0xa1

    if-eq v3, v4, :cond_4

    :cond_1
    invoke-virtual {p1, p2, p3}, Labcd/Sa;->J8(II)I

    move-result v0

    if-eq v0, v7, :cond_2

    invoke-virtual {p1, v0}, Labcd/Sa;->P8(I)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Labcd/Kd;->DW(Labcd/Sa;II)V

    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->VH:Labcd/ab;

    iget-object v2, p0, Labcd/Kd;->Hw:Labcd/Vd;

    invoke-direct {p0, v1, p2, p3}, Labcd/Kd;->FH(Labcd/Da;II)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v7}, Labcd/ab;->j6(Labcd/Da;Labcd/na;IIIZZ)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Labcd/Sa;->Zo(II)I

    move-result v2

    if-ne v2, v0, :cond_5

    invoke-direct {p0, p1, p2, p3}, Labcd/Kd;->DW(Labcd/Sa;II)V

    :cond_5
    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->VH:Labcd/ab;

    iget-object v2, p0, Labcd/Kd;->Hw:Labcd/Vd;

    invoke-direct {p0, v1, p2, p3}, Labcd/Kd;->FH(Labcd/Da;II)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v7}, Labcd/ab;->j6(Labcd/Da;Labcd/na;IIIZZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Kd;->DW:Z

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

    :cond_7
    :try_start_1
    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Da;->P8()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->VH:Labcd/ab;

    const-string v3, "Members"

    invoke-interface {v0, v3}, Labcd/ab;->FH(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v2, v0}, Labcd/Sa;->Zo(II)I

    move-result v3

    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->yS:Labcd/Fa;

    invoke-virtual {v0, p1, v3}, Labcd/Fa;->v5(Labcd/Sa;I)V

    new-instance v4, Labcd/bc;

    invoke-direct {v4}, Labcd/bc;-><init>()V

    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->yS:Labcd/Fa;

    invoke-virtual {v0, p1, v3}, Labcd/Fa;->j6(Labcd/Sa;I)Labcd/Ab;

    move-result-object v5

    move v2, v6

    :goto_1
    invoke-virtual {v5}, Labcd/Ab;->Hw()I

    move-result v0

    if-ge v2, v0, :cond_8

    invoke-virtual {v5, v2}, Labcd/Ab;->j6(I)Labcd/Aa;

    move-result-object v0

    check-cast v0, Labcd/Ia;

    invoke-virtual {v0}, Labcd/Ia;->we()I

    move-result v6

    invoke-virtual {v4, v6}, Labcd/bc;->DW(I)V

    iget-object v6, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v6, v6, Labcd/La;->VH:Labcd/ab;

    invoke-interface {v6, v0}, Labcd/ab;->j6(Labcd/Aa;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_8
    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->yS:Labcd/Fa;

    invoke-virtual {v0, p1, v3}, Labcd/Fa;->DW(Labcd/Sa;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Za;

    invoke-virtual {v0}, Labcd/Za;->Hw()I

    move-result v3

    invoke-virtual {v4, v3}, Labcd/bc;->j6(I)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v3, v3, Labcd/La;->VH:Labcd/ab;

    invoke-interface {v3, v0}, Labcd/ab;->j6(Labcd/Za;)V

    goto :goto_2

    :cond_a
    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->yS:Labcd/Fa;

    invoke-virtual {v0, p1}, Labcd/Fa;->j6(Labcd/Sa;)V

    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->VH:Labcd/ab;

    iget-object v2, p0, Labcd/Kd;->Hw:Labcd/Vd;

    invoke-direct {p0, v1, p2, p3}, Labcd/Kd;->FH(Labcd/Da;II)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v7}, Labcd/ab;->j6(Labcd/Da;Labcd/na;IIIZZ)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private Hw(Labcd/Sa;II)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x2d07591eb6181a20L
    .end annotation

    const-wide v8, -0x30c9f86c041c415L    # -7.734619705412274E293

    :try_start_0
    sget-boolean v0, Labcd/Kd;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x30c9f86c041c415L    # -7.734619705412274E293

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v0

    invoke-virtual {v0, p2}, Labcd/Da;->DW(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, p3, -0x1

    if-ge v1, v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_3

    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_4
    invoke-direct {p0, v1}, Labcd/Kd;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "else"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Labcd/Kd;->j6(Labcd/Sa;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Kd;->DW:Z

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

.method private j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x25a9e6f36eb85900L
    .end annotation

    const-wide v2, 0x179e2f81fc4c91cdL    # 6.461038110427378E-195

    :try_start_0
    sget-boolean v0, Labcd/Kd;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x179e2f81fc4c91cdL    # 6.461038110427378E-195

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    const-string v0, ""

    :goto_1
    return-object v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Kd;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method private j6()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x54f5a2e58f8015L
    .end annotation

    const-wide v2, 0x19403d01954315fcL

    :try_start_0
    sget-boolean v0, Labcd/Kd;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x19403d01954315fcL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->VH:Labcd/ab;

    const-string v1, "console.log("

    invoke-interface {v0, v1}, Labcd/ab;->DW(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->VH:Labcd/ab;

    const-string v1, "break"

    invoke-interface {v0, v1}, Labcd/ab;->DW(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->VH:Labcd/ab;

    const-string v1, "case"

    invoke-interface {v0, v1}, Labcd/ab;->DW(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->VH:Labcd/ab;

    const-string v1, "catch"

    invoke-interface {v0, v1}, Labcd/ab;->DW(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->VH:Labcd/ab;

    const-string v1, "continue"

    invoke-interface {v0, v1}, Labcd/ab;->DW(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->VH:Labcd/ab;

    const-string v1, "default"

    invoke-interface {v0, v1}, Labcd/ab;->DW(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->VH:Labcd/ab;

    const-string v1, "do"

    invoke-interface {v0, v1}, Labcd/ab;->DW(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->VH:Labcd/ab;

    const-string v1, "else"

    invoke-interface {v0, v1}, Labcd/ab;->DW(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->VH:Labcd/ab;

    const-string v1, "false"

    invoke-interface {v0, v1}, Labcd/ab;->DW(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->VH:Labcd/ab;

    const-string v1, "finally"

    invoke-interface {v0, v1}, Labcd/ab;->DW(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->VH:Labcd/ab;

    const-string v1, "for"

    invoke-interface {v0, v1}, Labcd/ab;->DW(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->VH:Labcd/ab;

    const-string v1, "if"

    invoke-interface {v0, v1}, Labcd/ab;->DW(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->VH:Labcd/ab;

    const-string v1, "instanceof"

    invoke-interface {v0, v1}, Labcd/ab;->DW(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->VH:Labcd/ab;

    const-string v1, "new"

    invoke-interface {v0, v1}, Labcd/ab;->DW(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->VH:Labcd/ab;

    const-string v1, "null"

    invoke-interface {v0, v1}, Labcd/ab;->DW(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->VH:Labcd/ab;

    const-string v1, "return"

    invoke-interface {v0, v1}, Labcd/ab;->DW(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->VH:Labcd/ab;

    const-string v1, "switch"

    invoke-interface {v0, v1}, Labcd/ab;->DW(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->VH:Labcd/ab;

    const-string v1, "this"

    invoke-interface {v0, v1}, Labcd/ab;->DW(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->VH:Labcd/ab;

    const-string v1, "throw"

    invoke-interface {v0, v1}, Labcd/ab;->DW(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->VH:Labcd/ab;

    const-string v1, "true"

    invoke-interface {v0, v1}, Labcd/ab;->DW(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->VH:Labcd/ab;

    const-string v1, "try"

    invoke-interface {v0, v1}, Labcd/ab;->DW(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->VH:Labcd/ab;

    const-string v1, "void"

    invoke-interface {v0, v1}, Labcd/ab;->DW(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->VH:Labcd/ab;

    const-string v1, "while"

    invoke-interface {v0, v1}, Labcd/ab;->DW(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->VH:Labcd/ab;

    const-string v1, "with"

    invoke-interface {v0, v1}, Labcd/ab;->DW(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->VH:Labcd/ab;

    const-string v1, "function"

    invoke-interface {v0, v1}, Labcd/ab;->DW(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->VH:Labcd/ab;

    const-string v1, "var"

    invoke-interface {v0, v1}, Labcd/ab;->DW(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->VH:Labcd/ab;

    const-string v1, "in"

    invoke-interface {v0, v1}, Labcd/ab;->DW(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Kd;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private j6(Labcd/Sa;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x2a9d2018dab33e60L
    .end annotation

    const-wide v8, 0x692e58fe62a527dL

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Kd;->j6:Z

    if-eqz v0, :cond_0

    const-wide v2, 0x692e58fe62a527dL

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v3, Labcd/Yb;

    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->a8:Labcd/Ba;

    invoke-direct {v3, v0}, Labcd/Yb;-><init>(Labcd/Ba;)V

    invoke-virtual {p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v0

    invoke-interface {v0}, Labcd/na;->Hw()Labcd/ga;

    move-result-object v0

    check-cast v0, Labcd/Jd;

    invoke-virtual {v0, p1}, Labcd/Jd;->v5(Labcd/Sa;)Labcd/Ab;

    move-result-object v4

    move v2, v1

    :goto_0
    invoke-virtual {v4}, Labcd/Ab;->Hw()I

    move-result v0

    if-ge v2, v0, :cond_6

    invoke-virtual {v4, v2}, Labcd/Ab;->j6(I)Labcd/Aa;

    move-result-object v0

    check-cast v0, Labcd/ua;

    invoke-virtual {v0}, Labcd/ua;->XG()Labcd/Hb;

    move-result-object v5

    iget-object v1, v5, Labcd/Hb;->Hw:Labcd/Hb$a;

    invoke-virtual {v1}, Labcd/Hb$a;->DW()V

    :cond_1
    :goto_1
    iget-object v1, v5, Labcd/Hb;->Hw:Labcd/Hb$a;

    invoke-virtual {v1}, Labcd/Hb$a;->j6()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v5, Labcd/Hb;->Hw:Labcd/Hb$a;

    invoke-virtual {v1}, Labcd/Hb$a;->Hw()Labcd/Aa;

    move-result-object v1

    check-cast v1, Labcd/Ia;

    invoke-virtual {v3, v1}, Labcd/Yb;->j6(Labcd/Aa;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v6, v6, Labcd/La;->VH:Labcd/ab;

    const/4 v7, 0x0

    invoke-interface {v6, v1, v7}, Labcd/ab;->j6(Labcd/Aa;Z)V

    invoke-virtual {v3, v1}, Labcd/Yb;->DW(Labcd/Aa;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Kd;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v8, v9, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    :try_start_1
    invoke-virtual {v0}, Labcd/ua;->yO()Labcd/Hb;

    move-result-object v1

    iget-object v0, v1, Labcd/Hb;->Hw:Labcd/Hb$a;

    invoke-virtual {v0}, Labcd/Hb$a;->DW()V

    :cond_4
    :goto_2
    iget-object v0, v1, Labcd/Hb;->Hw:Labcd/Hb$a;

    invoke-virtual {v0}, Labcd/Hb$a;->j6()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Labcd/Hb;->Hw:Labcd/Hb$a;

    invoke-virtual {v0}, Labcd/Hb$a;->Hw()Labcd/Aa;

    move-result-object v0

    check-cast v0, Labcd/Ia;

    invoke-virtual {v3, v0}, Labcd/Yb;->j6(Labcd/Aa;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v5, v5, Labcd/La;->VH:Labcd/ab;

    const/4 v6, 0x0

    invoke-interface {v5, v0, v6}, Labcd/ab;->j6(Labcd/Aa;Z)V

    invoke-virtual {v3, v0}, Labcd/Yb;->DW(Labcd/Aa;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_6
    return-void
.end method

.method private j6(Labcd/Sa;I)V
    .registers 15
    .annotation runtime Labcd/su;
        method = -0x2b4caf3d6fe72d30L
    .end annotation

    const-wide v10, -0x17ef93ac05110213L    # -1.8732418998632366E193

    const/4 v8, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Kd;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x17ef93ac05110213L    # -1.8732418998632366E193

    invoke-static {v2, v3, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, p2}, Labcd/Sa;->P8(I)I

    move-result v0

    const/16 v1, 0x7c

    if-eq v0, v1, :cond_3

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_4

    const/16 v1, 0xbf

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    :goto_0
    invoke-virtual {p1, p2}, Labcd/Sa;->we(I)I

    move-result v1

    move v0, v8

    :goto_1
    if-ge v0, v1, :cond_4

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v2

    invoke-direct {p0, p1, v2}, Labcd/Kd;->j6(Labcd/Sa;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v6

    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v9, v0, Labcd/La;->VH:Labcd/ab;

    new-instance v0, Labcd/Za;

    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v1

    invoke-virtual {p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v2

    invoke-virtual {p1, v6}, Labcd/Sa;->vy(I)I

    move-result v3

    invoke-virtual {p1, v6}, Labcd/Sa;->BT(I)I

    move-result v4

    invoke-virtual {p1, v6}, Labcd/Sa;->Ws(I)I

    move-result v5

    invoke-virtual {p1, v6}, Labcd/Sa;->XL(I)I

    move-result v6

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Labcd/Za;-><init>(Labcd/Da;Labcd/na;IIIILabcd/Ya;)V

    invoke-interface {v9, v0}, Labcd/ab;->j6(Labcd/Za;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Kd;->DW:Z

    if-eqz v0, :cond_2

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v10

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1

    :cond_3
    :try_start_1
    invoke-virtual {p1, p2}, Labcd/Sa;->we(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v6

    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v8, v0, Labcd/La;->VH:Labcd/ab;

    new-instance v0, Labcd/Za;

    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v1

    invoke-virtual {p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v2

    invoke-virtual {p1, v6}, Labcd/Sa;->vy(I)I

    move-result v3

    invoke-virtual {p1, v6}, Labcd/Sa;->BT(I)I

    move-result v4

    invoke-virtual {p1, v6}, Labcd/Sa;->Ws(I)I

    move-result v5

    invoke-virtual {p1, v6}, Labcd/Sa;->XL(I)I

    move-result v6

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Labcd/Za;-><init>(Labcd/Da;Labcd/na;IIIILabcd/Ya;)V

    invoke-interface {v8, v0}, Labcd/ab;->j6(Labcd/Za;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    return-void
.end method


# virtual methods
.method public DW(Labcd/Da;II)V
    .registers 14

    const-wide v8, 0x1c85024033d2ed0L

    :try_start_0
    sget-boolean v0, Labcd/Kd;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x1c85024033d2ed0L

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, p2, p3}, Labcd/Da;->j6(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Labcd/Kd;->j6(Labcd/Da;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Kd;->DW:Z

    if-eqz v0, :cond_3

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method public j6(Labcd/Da;II)V
    .registers 14

    const-wide v8, 0x2a9cba99c9d2480L

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Kd;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x2a9cba99c9d2480L

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->U2:Labcd/Va;

    iget-object v1, p0, Labcd/Kd;->Hw:Labcd/Vd;

    invoke-virtual {v0, p1, v1}, Labcd/Va;->DW(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Da;->P8()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v2, p2, p3}, Labcd/Sa;->v5(II)I

    move-result v3

    const/4 v0, -0x1

    if-eq v3, v0, :cond_7

    invoke-virtual {v2, v3}, Labcd/Sa;->er(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Labcd/Sa;->Zo(II)I

    move-result v1

    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->yS:Labcd/Fa;

    invoke-virtual {v0, v2, v1}, Labcd/Fa;->v5(Labcd/Sa;I)V

    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->yS:Labcd/Fa;

    invoke-virtual {v0, v2, v1}, Labcd/Fa;->FH(Labcd/Sa;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Ia;

    iget-object v5, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v5, v5, Labcd/La;->VH:Labcd/ab;

    const/4 v7, 0x0

    invoke-interface {v5, v0, v7}, Labcd/ab;->DW(Labcd/Aa;Labcd/Ya;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Kd;->DW:Z

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

    :cond_2
    :try_start_1
    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->yS:Labcd/Fa;

    invoke-virtual {v0, v2, v1}, Labcd/Fa;->Hw(Labcd/Sa;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v4, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v4, v4, Labcd/La;->VH:Labcd/ab;

    invoke-interface {v4, v0}, Labcd/ab;->j6(Ljava/util/List;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->yS:Labcd/Fa;

    invoke-virtual {v0, v2}, Labcd/Fa;->j6(Labcd/Sa;)V

    invoke-virtual {v2, v3}, Labcd/Sa;->we(I)I

    move-result v1

    const/4 v0, 0x2

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_4

    :goto_2
    new-array v4, v0, [I

    new-array v5, v0, [I

    move v0, v6

    move v1, v6

    :goto_3
    invoke-virtual {v2, v3}, Labcd/Sa;->we(I)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_5

    invoke-virtual {v2, v3, v0}, Labcd/Sa;->Zo(II)I

    move-result v6

    invoke-virtual {v2, v6}, Labcd/Sa;->vy(I)I

    move-result v7

    aput v7, v4, v1

    invoke-virtual {v2, v6}, Labcd/Sa;->BT(I)I

    move-result v6

    aput v6, v5, v1

    add-int/lit8 v6, v1, 0x1

    add-int/lit8 v0, v0, 0x2

    move v1, v6

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v2, v3}, Labcd/Sa;->we(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v3, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-virtual {v2, v0}, Labcd/Sa;->vy(I)I

    move-result v0

    aput v0, v4, v1

    invoke-virtual {v2, v3}, Labcd/Sa;->we(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v3, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-virtual {v2, v0}, Labcd/Sa;->BT(I)I

    move-result v0

    aput v0, v5, v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    aget v0, v4, v1

    if-nez v0, :cond_6

    add-int/lit8 v0, v1, -0x1

    aget v2, v4, v0

    aput v2, v4, v1

    aget v0, v5, v0

    add-int/lit8 v0, v0, 0x1

    aput v0, v5, v1

    :cond_6
    :try_start_2
    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->VH:Labcd/ab;

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Labcd/ab;->j6(Labcd/Da;II[I[I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_7
    return-void
.end method

.method public j6(Labcd/Sa;II)V
    .registers 14

    const-wide v8, -0x2efb184bc099e3L

    :try_start_0
    sget-boolean v0, Labcd/Kd;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x2efb184bc099e3L

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Labcd/Kd;->FH(Labcd/Sa;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Kd;->DW:Z

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

.method public j6(Labcd/Sa;IIIZ)V
    .registers 16

    :try_start_0
    sget-boolean v0, Labcd/Kd;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p5}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v0, 0x205d9f53a31a50d0L    # 8.837349134461595E-153

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, -0x1

    if-ne p4, v0, :cond_2

    invoke-direct {p0, p1, p2, p3}, Labcd/Kd;->Hw(Labcd/Sa;II)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v0

    invoke-virtual {v0, p2}, Labcd/Da;->DW(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v2, p3, -0x1

    if-lt v0, v2, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "else"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->VH:Labcd/ab;

    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v1

    invoke-interface {v0, v1}, Labcd/ab;->j6(Labcd/Da;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Kd;->DW:Z

    if-eqz v0, :cond_3

    const-wide v2, 0x205d9f53a31a50d0L    # 8.837349134461595E-153

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

    :cond_3
    throw v1

    :cond_4
    add-int/lit8 v0, p4, -0x1

    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-nez v2, :cond_5

    add-int/lit8 v0, v0, 0x1

    if-ge v0, p3, :cond_1

    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->VH:Labcd/ab;

    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v1

    invoke-interface {v0, v1}, Labcd/ab;->j6(Labcd/Da;)V

    invoke-direct {p0, p1, p2, p3}, Labcd/Kd;->Hw(Labcd/Sa;II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

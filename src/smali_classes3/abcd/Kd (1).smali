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
    .registers 3

    const-class v0, Labcd/Kd;

    const-wide v1, -0x2f5855f7a7a480L  # -4.67819814662351E307

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/La;Labcd/Vd;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Kd;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x3726523dce4d4467L  # 5.004598587169754E-43

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Kd;->FH:Labcd/La;

    iput-object p2, p0, Labcd/Kd;->Hw:Labcd/Vd;
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v0

    sget-boolean v1, Labcd/Kd;->DW:Z

    if-eqz v1, :cond_26

    const-wide v2, 0x3726523dce4d4467L  # 5.004598587169754E-43

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v0
.end method

.method private DW(Labcd/Sa;II)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x3d4cc994bc42bb48L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Kd;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x149cb88699134e47L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    invoke-virtual {p1, p2, p3, p2, p3}, Labcd/Sa;->v5(IIII)I

    move-result v0

    invoke-virtual {p1, p2, p3, p2, p3}, Labcd/Sa;->j6(IIII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_24

    goto :goto_25

    :cond_24
    move v0, v1

    :goto_25
    if-ne v0, v2, :cond_2b

    invoke-virtual {p1}, Labcd/Sa;->aM()I

    move-result v0

    :cond_2b
    new-instance v1, Labcd/bc;

    invoke-direct {v1}, Labcd/bc;-><init>()V

    :goto_30
    if-eq v0, v2, :cond_8c

    invoke-virtual {p1, v0}, Labcd/Sa;->P8(I)I

    move-result v1

    const/16 v3, 0x7c

    if-ne v1, v3, :cond_55

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

    :goto_51
    invoke-direct {p0, p1, v1}, Labcd/Kd;->j6(Labcd/Sa;I)V

    goto :goto_80

    :cond_55
    invoke-virtual {p1, v0}, Labcd/Sa;->P8(I)I

    move-result v1

    const/16 v3, 0x7d

    if-ne v1, v3, :cond_75

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

    goto :goto_51

    :cond_75
    invoke-virtual {p1, v0}, Labcd/Sa;->P8(I)I

    move-result v1

    const/16 v3, 0xdf

    if-ne v1, v3, :cond_80

    invoke-direct {p0, p1, v0}, Labcd/Kd;->j6(Labcd/Sa;I)V

    :cond_80
    :goto_80
    invoke-virtual {p1}, Labcd/Sa;->aM()I

    move-result v1

    if-ne v0, v1, :cond_87

    goto :goto_8c

    :cond_87
    invoke-virtual {p1, v0}, Labcd/Sa;->er(I)I

    move-result v0

    goto :goto_30

    :cond_8c
    :goto_8c
    invoke-direct {p0, p1}, Labcd/Kd;->j6(Labcd/Sa;)V

    invoke-direct {p0}, Labcd/Kd;->j6()V
    :try_end_92
    .catchall {:try_start_0 .. :try_end_92} :catchall_93

    return-void

    :catchall_93
    move-exception v0

    sget-boolean v1, Labcd/Kd;->DW:Z

    if-eqz v1, :cond_ad

    const-wide v2, 0x149cb88699134e47L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_ad
    goto :goto_af

    :goto_ae
    throw v0

    :goto_af
    goto :goto_ae
.end method

.method private FH(Labcd/Da;II)I
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x330953474e744c74L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Kd;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x1e369b2c8e3ffeb3L  # -1.1424474829040458E163

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    invoke-virtual {p1, p2, p3}, Labcd/Da;->j6(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    :goto_22
    add-int/lit8 v2, v1, -0x2

    if-ltz v2, :cond_33

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2
    :try_end_2e
    .catchall {:try_start_0 .. :try_end_2e} :catchall_34

    if-eqz v2, :cond_33

    add-int/lit8 v1, v1, -0x1

    goto :goto_22

    :cond_33
    return v1

    :catchall_34
    move-exception v0

    sget-boolean v1, Labcd/Kd;->DW:Z

    if-eqz v1, :cond_4e

    const-wide v2, -0x1e369b2c8e3ffeb3L  # -1.1424474829040458E163

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4e
    goto :goto_50

    :goto_4f
    throw v0

    :goto_50
    goto :goto_4f
.end method

.method private FH(Labcd/Sa;II)V
    .registers 13
    .annotation runtime Labcd/su;
        method = 0x29fb1b2101b479fL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Kd;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x4500925ce7268f70L  # -1.6248034724213743E-24

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v2

    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->VH:Labcd/ab;

    invoke-interface {v0}, Labcd/ab;->j6()V

    invoke-virtual {p1, p2, p3}, Labcd/Sa;->u7(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e3

    invoke-virtual {p1, v0}, Labcd/Sa;->er(I)I

    move-result v3

    invoke-virtual {p1, v3}, Labcd/Sa;->P8(I)I

    move-result v4

    const/16 v5, 0x9f

    const/4 v6, 0x0

    if-eq v4, v5, :cond_58

    const/16 v5, 0xa1

    if-eq v4, v5, :cond_3d

    goto/16 :goto_e3

    :cond_3d
    invoke-virtual {p1, v3, v6}, Labcd/Sa;->Zo(II)I

    move-result v1

    if-ne v1, v0, :cond_46

    invoke-direct {p0, p1, p2, p3}, Labcd/Kd;->DW(Labcd/Sa;II)V

    :cond_46
    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v1, v0, Labcd/La;->VH:Labcd/ab;

    iget-object v3, p0, Labcd/Kd;->Hw:Labcd/Vd;

    invoke-direct {p0, v2, p2, p3}, Labcd/Kd;->FH(Labcd/Da;II)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v4, p2

    move v5, p3

    invoke-interface/range {v1 .. v8}, Labcd/ab;->j6(Labcd/Da;Labcd/na;IIIZZ)V

    return-void

    :cond_58
    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Da;->P8()Z

    move-result v0

    if-eqz v0, :cond_e2

    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->VH:Labcd/ab;

    const-string v1, "Members"

    invoke-interface {v0, v1}, Labcd/ab;->FH(Ljava/lang/String;)V

    invoke-virtual {p1, v3, v6}, Labcd/Sa;->Zo(II)I

    move-result v0

    iget-object v1, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v1, v1, Labcd/La;->yS:Labcd/Fa;

    invoke-virtual {v1, p1, v0}, Labcd/Fa;->v5(Labcd/Sa;I)V

    new-instance v1, Labcd/bc;

    invoke-direct {v1}, Labcd/bc;-><init>()V

    iget-object v3, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v3, v3, Labcd/La;->yS:Labcd/Fa;

    invoke-virtual {v3, p1, v0}, Labcd/Fa;->j6(Labcd/Sa;I)Labcd/Ab;

    move-result-object v3

    :goto_83
    invoke-virtual {v3}, Labcd/Ab;->Hw()I

    move-result v4

    if-ge v6, v4, :cond_a0

    invoke-virtual {v3, v6}, Labcd/Ab;->j6(I)Labcd/Aa;

    move-result-object v4

    check-cast v4, Labcd/Ia;

    invoke-virtual {v4}, Labcd/Ia;->we()I

    move-result v5

    invoke-virtual {v1, v5}, Labcd/bc;->DW(I)V

    iget-object v5, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v5, v5, Labcd/La;->VH:Labcd/ab;

    invoke-interface {v5, v4}, Labcd/ab;->j6(Labcd/Aa;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_83

    :cond_a0
    iget-object v3, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v3, v3, Labcd/La;->yS:Labcd/Fa;

    invoke-virtual {v3, p1, v0}, Labcd/Fa;->DW(Labcd/Sa;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_ac
    :goto_ac
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ca

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/Za;

    invoke-virtual {v3}, Labcd/Za;->Hw()I

    move-result v4

    invoke-virtual {v1, v4}, Labcd/bc;->j6(I)Z

    move-result v4

    if-nez v4, :cond_ac

    iget-object v4, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v4, v4, Labcd/La;->VH:Labcd/ab;

    invoke-interface {v4, v3}, Labcd/ab;->j6(Labcd/Za;)V

    goto :goto_ac

    :cond_ca
    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->yS:Labcd/Fa;

    invoke-virtual {v0, p1}, Labcd/Fa;->j6(Labcd/Sa;)V

    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v1, v0, Labcd/La;->VH:Labcd/ab;

    iget-object v3, p0, Labcd/Kd;->Hw:Labcd/Vd;

    invoke-direct {p0, v2, p2, p3}, Labcd/Kd;->FH(Labcd/Da;II)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v4, p2

    move v5, p3

    invoke-interface/range {v1 .. v8}, Labcd/ab;->j6(Labcd/Da;Labcd/na;IIIZZ)V

    :cond_e2
    return-void

    :cond_e3
    :goto_e3
    invoke-virtual {p1, p2, p3}, Labcd/Sa;->J8(II)I

    move-result v0

    if-eq v0, v1, :cond_f0

    invoke-virtual {p1, v0}, Labcd/Sa;->P8(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_104

    :cond_f0
    invoke-direct {p0, p1, p2, p3}, Labcd/Kd;->DW(Labcd/Sa;II)V

    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v1, v0, Labcd/La;->VH:Labcd/ab;

    iget-object v3, p0, Labcd/Kd;->Hw:Labcd/Vd;

    invoke-direct {p0, v2, p2, p3}, Labcd/Kd;->FH(Labcd/Da;II)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v4, p2

    move v5, p3

    invoke-interface/range {v1 .. v8}, Labcd/ab;->j6(Labcd/Da;Labcd/na;IIIZZ)V
    :try_end_104
    .catchall {:try_start_0 .. :try_end_104} :catchall_105

    :cond_104
    return-void

    :catchall_105
    move-exception v0

    sget-boolean v1, Labcd/Kd;->DW:Z

    if-eqz v1, :cond_11f

    const-wide v2, -0x4500925ce7268f70L  # -1.6248034724213743E-24

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11f
    goto :goto_121

    :goto_120
    throw v0

    :goto_121
    goto :goto_120
.end method

.method private Hw(Labcd/Sa;II)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x2d07591eb6181a20L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Kd;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x30c9f86c041c415L  # -7.734619705412274E293

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v0

    invoke-virtual {v0, p2}, Labcd/Da;->DW(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, p3, -0x1

    if-ge v1, v2, :cond_29

    return-void

    :cond_29
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_88

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x2e

    if-eq v2, v4, :cond_50

    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v4

    if-eqz v4, :cond_88

    :cond_50
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_67

    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-eqz v0, :cond_67

    return-void

    :cond_67
    invoke-direct {p0, v3}, Labcd/Kd;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "else"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_74

    return-void

    :cond_74
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_85

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v0

    if-nez v0, :cond_85

    return-void

    :cond_85
    invoke-virtual {p0, p1, p2, p3}, Labcd/Kd;->j6(Labcd/Sa;II)V
    :try_end_88
    .catchall {:try_start_0 .. :try_end_88} :catchall_89

    :cond_88
    return-void

    :catchall_89
    move-exception v0

    sget-boolean v1, Labcd/Kd;->DW:Z

    if-eqz v1, :cond_a3

    const-wide v2, -0x30c9f86c041c415L  # -7.734619705412274E293

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a3
    throw v0
.end method

.method private j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x25a9e6f36eb85900L
    .end annotation

    const-wide v0, 0x179e2f81fc4c91cdL  # 6.461038110427378E-195

    :try_start_5
    sget-boolean v2, Labcd/Kd;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_12
    if-ltz v2, :cond_21

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v3

    if-eqz v3, :cond_21

    add-int/lit8 v2, v2, -0x1

    goto :goto_12

    :cond_21
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_37

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_2c

    const-string p1, ""

    return-object p1

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    :try_start_2e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_37

    return-object p1

    :catchall_37
    move-exception v2

    sget-boolean v3, Labcd/Kd;->DW:Z

    if-eqz v3, :cond_3f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3f
    goto :goto_41

    :goto_40
    throw v2

    :goto_41
    goto :goto_40
.end method

.method private j6()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x54f5a2e58f8015L
    .end annotation

    const-wide v0, 0x19403d01954315fcL

    :try_start_5
    sget-boolean v2, Labcd/Kd;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->VH:Labcd/ab;

    const-string v3, "console.log("

    invoke-interface {v2, v3}, Labcd/ab;->DW(Ljava/lang/String;)V

    iget-object v2, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->VH:Labcd/ab;

    const-string v3, "break"

    invoke-interface {v2, v3}, Labcd/ab;->DW(Ljava/lang/String;)V

    iget-object v2, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->VH:Labcd/ab;

    const-string v3, "case"

    invoke-interface {v2, v3}, Labcd/ab;->DW(Ljava/lang/String;)V

    iget-object v2, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->VH:Labcd/ab;

    const-string v3, "catch"

    invoke-interface {v2, v3}, Labcd/ab;->DW(Ljava/lang/String;)V

    iget-object v2, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->VH:Labcd/ab;

    const-string v3, "continue"

    invoke-interface {v2, v3}, Labcd/ab;->DW(Ljava/lang/String;)V

    iget-object v2, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->VH:Labcd/ab;

    const-string v3, "default"

    invoke-interface {v2, v3}, Labcd/ab;->DW(Ljava/lang/String;)V

    iget-object v2, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->VH:Labcd/ab;

    const-string v3, "do"

    invoke-interface {v2, v3}, Labcd/ab;->DW(Ljava/lang/String;)V

    iget-object v2, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->VH:Labcd/ab;

    const-string v3, "else"

    invoke-interface {v2, v3}, Labcd/ab;->DW(Ljava/lang/String;)V

    iget-object v2, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->VH:Labcd/ab;

    const-string v3, "false"

    invoke-interface {v2, v3}, Labcd/ab;->DW(Ljava/lang/String;)V

    iget-object v2, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->VH:Labcd/ab;

    const-string v3, "finally"

    invoke-interface {v2, v3}, Labcd/ab;->DW(Ljava/lang/String;)V

    iget-object v2, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->VH:Labcd/ab;

    const-string v3, "for"

    invoke-interface {v2, v3}, Labcd/ab;->DW(Ljava/lang/String;)V

    iget-object v2, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->VH:Labcd/ab;

    const-string v3, "if"

    invoke-interface {v2, v3}, Labcd/ab;->DW(Ljava/lang/String;)V

    iget-object v2, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->VH:Labcd/ab;

    const-string v3, "instanceof"

    invoke-interface {v2, v3}, Labcd/ab;->DW(Ljava/lang/String;)V

    iget-object v2, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->VH:Labcd/ab;

    const-string v3, "new"

    invoke-interface {v2, v3}, Labcd/ab;->DW(Ljava/lang/String;)V

    iget-object v2, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->VH:Labcd/ab;

    const-string v3, "null"

    invoke-interface {v2, v3}, Labcd/ab;->DW(Ljava/lang/String;)V

    iget-object v2, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->VH:Labcd/ab;

    const-string v3, "return"

    invoke-interface {v2, v3}, Labcd/ab;->DW(Ljava/lang/String;)V

    iget-object v2, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->VH:Labcd/ab;

    const-string v3, "switch"

    invoke-interface {v2, v3}, Labcd/ab;->DW(Ljava/lang/String;)V

    iget-object v2, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->VH:Labcd/ab;

    const-string v3, "this"

    invoke-interface {v2, v3}, Labcd/ab;->DW(Ljava/lang/String;)V

    iget-object v2, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->VH:Labcd/ab;

    const-string v3, "throw"

    invoke-interface {v2, v3}, Labcd/ab;->DW(Ljava/lang/String;)V

    iget-object v2, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->VH:Labcd/ab;

    const-string v3, "true"

    invoke-interface {v2, v3}, Labcd/ab;->DW(Ljava/lang/String;)V

    iget-object v2, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->VH:Labcd/ab;

    const-string v3, "try"

    invoke-interface {v2, v3}, Labcd/ab;->DW(Ljava/lang/String;)V

    iget-object v2, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->VH:Labcd/ab;

    const-string v3, "void"

    invoke-interface {v2, v3}, Labcd/ab;->DW(Ljava/lang/String;)V

    iget-object v2, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->VH:Labcd/ab;

    const-string v3, "while"

    invoke-interface {v2, v3}, Labcd/ab;->DW(Ljava/lang/String;)V

    iget-object v2, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->VH:Labcd/ab;

    const-string v3, "with"

    invoke-interface {v2, v3}, Labcd/ab;->DW(Ljava/lang/String;)V

    iget-object v2, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->VH:Labcd/ab;

    const-string v3, "function"

    invoke-interface {v2, v3}, Labcd/ab;->DW(Ljava/lang/String;)V

    iget-object v2, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->VH:Labcd/ab;

    const-string v3, "var"

    invoke-interface {v2, v3}, Labcd/ab;->DW(Ljava/lang/String;)V

    iget-object v2, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->VH:Labcd/ab;

    const-string v3, "in"

    invoke-interface {v2, v3}, Labcd/ab;->DW(Ljava/lang/String;)V
    :try_end_ff
    .catchall {:try_start_5 .. :try_end_ff} :catchall_100

    return-void

    :catchall_100
    move-exception v2

    sget-boolean v3, Labcd/Kd;->DW:Z

    if-eqz v3, :cond_108

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_108
    throw v2
.end method

.method private j6(Labcd/Sa;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x2a9d2018dab33e60L
    .end annotation

    const-wide v0, 0x692e58fe62a527dL

    :try_start_5
    sget-boolean v2, Labcd/Kd;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Labcd/Yb;

    iget-object v3, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v3, v3, Labcd/La;->a8:Labcd/Ba;

    invoke-direct {v2, v3}, Labcd/Yb;-><init>(Labcd/Ba;)V

    invoke-virtual {p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v3

    invoke-interface {v3}, Labcd/na;->Hw()Labcd/ga;

    move-result-object v3

    check-cast v3, Labcd/Jd;

    invoke-virtual {v3, p1}, Labcd/Jd;->v5(Labcd/Sa;)Labcd/Ab;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_25
    invoke-virtual {v3}, Labcd/Ab;->Hw()I

    move-result v6

    if-ge v5, v6, :cond_88

    invoke-virtual {v3, v5}, Labcd/Ab;->j6(I)Labcd/Aa;

    move-result-object v6

    check-cast v6, Labcd/ua;

    invoke-virtual {v6}, Labcd/ua;->XG()Labcd/Hb;

    move-result-object v7

    iget-object v8, v7, Labcd/Hb;->Hw:Labcd/Hb$a;

    invoke-virtual {v8}, Labcd/Hb$a;->DW()V

    :cond_3a
    :goto_3a
    iget-object v8, v7, Labcd/Hb;->Hw:Labcd/Hb$a;

    invoke-virtual {v8}, Labcd/Hb$a;->j6()Z

    move-result v8

    if-eqz v8, :cond_5b

    iget-object v8, v7, Labcd/Hb;->Hw:Labcd/Hb$a;

    invoke-virtual {v8}, Labcd/Hb$a;->Hw()Labcd/Aa;

    move-result-object v8

    check-cast v8, Labcd/Ia;

    invoke-virtual {v2, v8}, Labcd/Yb;->j6(Labcd/Aa;)Z

    move-result v9

    if-nez v9, :cond_3a

    iget-object v9, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v9, v9, Labcd/La;->VH:Labcd/ab;

    invoke-interface {v9, v8, v4}, Labcd/ab;->j6(Labcd/Aa;Z)V

    invoke-virtual {v2, v8}, Labcd/Yb;->DW(Labcd/Aa;)V

    goto :goto_3a

    :cond_5b
    invoke-virtual {v6}, Labcd/ua;->yO()Labcd/Hb;

    move-result-object v6

    iget-object v7, v6, Labcd/Hb;->Hw:Labcd/Hb$a;

    invoke-virtual {v7}, Labcd/Hb$a;->DW()V

    :cond_64
    :goto_64
    iget-object v7, v6, Labcd/Hb;->Hw:Labcd/Hb$a;

    invoke-virtual {v7}, Labcd/Hb$a;->j6()Z

    move-result v7

    if-eqz v7, :cond_85

    iget-object v7, v6, Labcd/Hb;->Hw:Labcd/Hb$a;

    invoke-virtual {v7}, Labcd/Hb$a;->Hw()Labcd/Aa;

    move-result-object v7

    check-cast v7, Labcd/Ia;

    invoke-virtual {v2, v7}, Labcd/Yb;->j6(Labcd/Aa;)Z

    move-result v8

    if-nez v8, :cond_64

    iget-object v8, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v8, v8, Labcd/La;->VH:Labcd/ab;

    invoke-interface {v8, v7, v4}, Labcd/ab;->j6(Labcd/Aa;Z)V

    invoke-virtual {v2, v7}, Labcd/Yb;->DW(Labcd/Aa;)V
    :try_end_84
    .catchall {:try_start_5 .. :try_end_84} :catchall_89

    goto :goto_64

    :cond_85
    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    :cond_88
    return-void

    :catchall_89
    move-exception v2

    sget-boolean v3, Labcd/Kd;->DW:Z

    if-eqz v3, :cond_91

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_91
    goto :goto_93

    :goto_92
    throw v2

    :goto_93
    goto :goto_92
.end method

.method private j6(Labcd/Sa;I)V
    .registers 15
    .annotation runtime Labcd/su;
        method = -0x2b4caf3d6fe72d30L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Kd;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x17ef93ac05110213L  # -1.8732418998632366E193

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-virtual {p1, p2}, Labcd/Sa;->P8(I)I

    move-result v0

    const/16 v1, 0x7c

    if-eq v0, v1, :cond_62

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_61

    const/16 v1, 0xbf

    const/4 v2, 0x0

    if-eq v0, v1, :cond_27

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_27

    goto :goto_51

    :cond_27
    invoke-virtual {p1, p2, v2}, Labcd/Sa;->Zo(II)I

    move-result v0

    iget-object v1, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v1, v1, Labcd/La;->VH:Labcd/ab;

    new-instance v11, Labcd/Za;

    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v4

    invoke-virtual {p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v5

    invoke-virtual {p1, v0}, Labcd/Sa;->vy(I)I

    move-result v6

    invoke-virtual {p1, v0}, Labcd/Sa;->BT(I)I

    move-result v7

    invoke-virtual {p1, v0}, Labcd/Sa;->Ws(I)I

    move-result v8

    invoke-virtual {p1, v0}, Labcd/Sa;->XL(I)I

    move-result v9

    const/4 v10, 0x0

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Labcd/Za;-><init>(Labcd/Da;Labcd/na;IIIILabcd/Ya;)V

    invoke-interface {v1, v11}, Labcd/ab;->j6(Labcd/Za;)V

    :goto_51
    invoke-virtual {p1, p2}, Labcd/Sa;->we(I)I

    move-result v0

    :goto_55
    if-ge v2, v0, :cond_61

    invoke-virtual {p1, p2, v2}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-direct {p0, p1, v1}, Labcd/Kd;->j6(Labcd/Sa;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_55

    :cond_61
    return-void

    :cond_62
    invoke-virtual {p1, p2}, Labcd/Sa;->we(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_94

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    iget-object v1, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v1, v1, Labcd/La;->VH:Labcd/ab;

    new-instance v10, Labcd/Za;

    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v3

    invoke-virtual {p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v4

    invoke-virtual {p1, v0}, Labcd/Sa;->vy(I)I

    move-result v5

    invoke-virtual {p1, v0}, Labcd/Sa;->BT(I)I

    move-result v6

    invoke-virtual {p1, v0}, Labcd/Sa;->Ws(I)I

    move-result v7

    invoke-virtual {p1, v0}, Labcd/Sa;->XL(I)I

    move-result v8

    const/4 v9, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Labcd/Za;-><init>(Labcd/Da;Labcd/na;IIIILabcd/Ya;)V

    invoke-interface {v1, v10}, Labcd/ab;->j6(Labcd/Za;)V
    :try_end_94
    .catchall {:try_start_0 .. :try_end_94} :catchall_95

    :cond_94
    return-void

    :catchall_95
    move-exception v0

    sget-boolean v1, Labcd/Kd;->DW:Z

    if-eqz v1, :cond_aa

    const-wide v2, -0x17ef93ac05110213L  # -1.8732418998632366E193

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_aa
    goto :goto_ac

    :goto_ab
    throw v0

    :goto_ac
    goto :goto_ab
.end method


# virtual methods
.method public DW(Labcd/Da;II)V
    .registers 12

    :try_start_0
    sget-boolean v0, Labcd/Kd;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x1c85024033d2ed0L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    invoke-virtual {p1, p2, p3}, Labcd/Da;->j6(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_37

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_34

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_37

    :cond_34
    invoke-virtual {p0, p1, p2, p3}, Labcd/Kd;->j6(Labcd/Da;II)V
    :try_end_37
    .catchall {:try_start_0 .. :try_end_37} :catchall_38

    :cond_37
    return-void

    :catchall_38
    move-exception v0

    sget-boolean v1, Labcd/Kd;->DW:Z

    if-eqz v1, :cond_52

    const-wide v2, 0x1c85024033d2ed0L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_52
    throw v0
.end method

.method public j6(Labcd/Da;II)V
    .registers 15

    :try_start_0
    sget-boolean v0, Labcd/Kd;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x2a9cba99c9d2480L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->U2:Labcd/Va;

    iget-object v1, p0, Labcd/Kd;->Hw:Labcd/Vd;

    invoke-virtual {v0, p1, v1}, Labcd/Va;->DW(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Da;->P8()Z

    move-result v1

    if-eqz v1, :cond_f4

    invoke-virtual {v0, p2, p3}, Labcd/Sa;->v5(II)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_f4

    invoke-virtual {v0, v1}, Labcd/Sa;->er(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Labcd/Sa;->Zo(II)I

    move-result v2

    iget-object v4, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v4, v4, Labcd/La;->yS:Labcd/Fa;

    invoke-virtual {v4, v0, v2}, Labcd/Fa;->v5(Labcd/Sa;I)V

    iget-object v4, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v4, v4, Labcd/La;->yS:Labcd/Fa;

    invoke-virtual {v4, v0, v2}, Labcd/Fa;->FH(Labcd/Sa;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_64

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/Ia;

    iget-object v6, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v6, v6, Labcd/La;->VH:Labcd/ab;

    const/4 v7, 0x0

    invoke-interface {v6, v5, v7}, Labcd/ab;->DW(Labcd/Aa;Labcd/Ya;)V

    goto :goto_4f

    :cond_64
    iget-object v4, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v4, v4, Labcd/La;->yS:Labcd/Fa;

    invoke-virtual {v4, v0, v2}, Labcd/Fa;->Hw(Labcd/Sa;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_70
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_84

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    iget-object v5, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v5, v5, Labcd/La;->VH:Labcd/ab;

    invoke-interface {v5, v4}, Labcd/ab;->j6(Ljava/util/List;)V

    goto :goto_70

    :cond_84
    iget-object v2, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->yS:Labcd/Fa;

    invoke-virtual {v2, v0}, Labcd/Fa;->j6(Labcd/Sa;)V

    invoke-virtual {v0, v1}, Labcd/Sa;->we(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v4, 0x2

    div-int/2addr v2, v4

    if-nez v2, :cond_96

    goto :goto_98

    :cond_96
    add-int/lit8 v4, v2, 0x1

    :goto_98
    new-array v9, v4, [I

    new-array v10, v4, [I

    const/4 v2, 0x0

    :goto_9d
    invoke-virtual {v0, v1}, Labcd/Sa;->we(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_ba

    invoke-virtual {v0, v1, v3}, Labcd/Sa;->Zo(II)I

    move-result v4

    invoke-virtual {v0, v4}, Labcd/Sa;->vy(I)I

    move-result v5

    aput v5, v9, v2

    invoke-virtual {v0, v4}, Labcd/Sa;->BT(I)I

    move-result v4

    aput v4, v10, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x2

    goto :goto_9d

    :cond_ba
    invoke-virtual {v0, v1}, Labcd/Sa;->we(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v1, v3}, Labcd/Sa;->Zo(II)I

    move-result v3

    invoke-virtual {v0, v3}, Labcd/Sa;->vy(I)I

    move-result v3

    aput v3, v9, v2

    invoke-virtual {v0, v1}, Labcd/Sa;->we(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v1, v3}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-virtual {v0, v1}, Labcd/Sa;->BT(I)I

    move-result v0

    aput v0, v10, v2
    :try_end_da
    .catchall {:try_start_0 .. :try_end_da} :catchall_f5

    aget v0, v9, v2

    if-nez v0, :cond_ea

    add-int/lit8 v0, v2, -0x1

    aget v1, v9, v0

    aput v1, v9, v2

    aget v0, v10, v0

    add-int/lit8 v0, v0, 0x1

    aput v0, v10, v2

    :cond_ea
    :try_start_ea
    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v5, v0, Labcd/La;->VH:Labcd/ab;

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-interface/range {v5 .. v10}, Labcd/ab;->j6(Labcd/Da;II[I[I)V
    :try_end_f4
    .catchall {:try_start_ea .. :try_end_f4} :catchall_f5

    :cond_f4
    return-void

    :catchall_f5
    move-exception v0

    sget-boolean v1, Labcd/Kd;->DW:Z

    if-eqz v1, :cond_10f

    const-wide v2, 0x2a9cba99c9d2480L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10f
    goto :goto_111

    :goto_110
    throw v0

    :goto_111
    goto :goto_110
.end method

.method public j6(Labcd/Sa;II)V
    .registers 12

    :try_start_0
    sget-boolean v0, Labcd/Kd;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x2efb184bc099e3L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    invoke-direct {p0, p1, p2, p3}, Labcd/Kd;->FH(Labcd/Sa;II)V
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception v0

    sget-boolean v1, Labcd/Kd;->DW:Z

    if-eqz v1, :cond_36

    const-wide v2, -0x2efb184bc099e3L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_36
    throw v0
.end method

.method public j6(Labcd/Sa;IIIZ)V
    .registers 16

    :try_start_0
    sget-boolean v0, Labcd/Kd;->j6:Z

    if-eqz v0, :cond_22

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p5}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x205d9f53a31a50d0L  # 8.837349134461595E-153

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    const/4 v0, -0x1

    if-ne p4, v0, :cond_29

    invoke-direct {p0, p1, p2, p3}, Labcd/Kd;->Hw(Labcd/Sa;II)V

    goto :goto_77

    :cond_29
    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v0

    invoke-virtual {v0, p2}, Labcd/Da;->DW(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, p3, -0x1

    if-ge v1, v2, :cond_3a

    return-void

    :cond_3a
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "else"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->VH:Labcd/ab;

    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v1

    invoke-interface {v0, v1}, Labcd/ab;->j6(Labcd/Da;)V

    return-void

    :cond_53
    add-int/lit8 v1, p4, -0x1

    :cond_55
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_77

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    add-int/lit8 v1, v1, 0x1

    if-nez v2, :cond_55

    if-ge v1, p3, :cond_77

    iget-object v0, p0, Labcd/Kd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->VH:Labcd/ab;

    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v1

    invoke-interface {v0, v1}, Labcd/ab;->j6(Labcd/Da;)V

    invoke-direct {p0, p1, p2, p3}, Labcd/Kd;->Hw(Labcd/Sa;II)V
    :try_end_77
    .catchall {:try_start_0 .. :try_end_77} :catchall_78

    :cond_77
    :goto_77
    return-void

    :catchall_78
    move-exception v0

    sget-boolean v1, Labcd/Kd;->DW:Z

    if-eqz v1, :cond_9c

    const-wide v2, 0x205d9f53a31a50d0L  # 8.837349134461595E-153

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Boolean;

    invoke-direct {v9, p5}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9c
    goto :goto_9e

    :goto_9d
    throw v0

    :goto_9e
    goto :goto_9d
.end method

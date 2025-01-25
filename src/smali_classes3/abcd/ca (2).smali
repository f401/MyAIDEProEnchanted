.class public Labcd/ca;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/ca$a;
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
.field private final FH:Labcd/ea;
    .annotation runtime Labcd/ru;
        field = -0x13b58db85a12dd84L
    .end annotation
.end field

.field private Hw:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = 0x154f7bc5fdc7b4a0L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/ca;

    const-wide v1, 0x4ba14c8627ddb80L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/ea;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, -0x18b3ccfcbedf3710L  # -3.9263149283834655E189

    :try_start_6
    sget-boolean v3, Labcd/ca;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/ca;->FH:Labcd/ea;
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Labcd/ca;->DW:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method

.method static synthetic DW(Labcd/ca;)Labcd/ea;
    .registers 1

    iget-object p0, p0, Labcd/ca;->FH:Labcd/ea;

    return-object p0
.end method

.method private DW(Ljava/lang/String;)Ljava/util/List;
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x14702ba03f054d60L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-wide v0, -0x7da9538faa19a5L

    :try_start_5
    sget-boolean v2, Labcd/ca;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Labcd/ca$a;->j6:Labcd/ca$a;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_98

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    sget-object v8, Labcd/ba;->j6:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v8, v8, v9

    const/4 v9, 0x1

    const/16 v10, 0x24

    if-eq v8, v9, :cond_8e

    const/4 v9, 0x2

    const/16 v11, 0x28

    if-eq v8, v9, :cond_65

    const/4 v9, 0x3

    if-eq v8, v9, :cond_44

    const/4 v9, 0x4

    if-eq v8, v9, :cond_3d

    goto :goto_95

    :cond_3d
    const/16 v8, 0x29

    if-ne v7, v8, :cond_95

    :cond_41
    sget-object v3, Labcd/ca$a;->FH:Labcd/ca$a;

    goto :goto_95

    :cond_44
    if-ne v7, v10, :cond_60

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v3
    :try_end_4a
    .catchall {:try_start_5 .. :try_end_4a} :catchall_9c

    if-lez v3, :cond_5d

    :try_start_4c
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5b
    .catch Ljava/lang/NumberFormatException; {:try_start_4c .. :try_end_5b} :catch_5c
    .catchall {:try_start_4c .. :try_end_5b} :catchall_9c

    goto :goto_5d

    :catch_5c
    move-exception v3

    :cond_5d
    :goto_5d
    :try_start_5d
    sget-object v3, Labcd/ca$a;->j6:Labcd/ca$a;

    goto :goto_95

    :cond_60
    if-ne v7, v11, :cond_95

    :goto_62
    sget-object v3, Labcd/ca$a;->Hw:Labcd/ca$a;

    goto :goto_95

    :cond_65
    if-ne v7, v10, :cond_7f

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v3
    :try_end_6b
    .catchall {:try_start_5d .. :try_end_6b} :catchall_9c

    if-lez v3, :cond_5d

    :try_start_6d
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7c
    .catch Ljava/lang/NumberFormatException; {:try_start_6d .. :try_end_7c} :catch_7d
    .catchall {:try_start_6d .. :try_end_7c} :catchall_9c

    goto :goto_5d

    :catch_7d
    move-exception v3

    goto :goto_5d

    :cond_7f
    if-ne v7, v11, :cond_82

    goto :goto_62

    :cond_82
    const/16 v8, 0x30

    if-lt v7, v8, :cond_41

    const/16 v8, 0x39

    if-gt v7, v8, :cond_41

    :try_start_8a
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_95

    :cond_8e
    if-ne v7, v10, :cond_95

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    sget-object v3, Labcd/ca$a;->DW:Labcd/ca$a;

    :cond_95
    :goto_95
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    :cond_98
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_9b
    .catchall {:try_start_8a .. :try_end_9b} :catchall_9c

    return-object v2

    :catchall_9c
    move-exception v2

    sget-boolean v3, Labcd/ca;->DW:Z

    if-eqz v3, :cond_a4

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_a4
    goto :goto_a6

    :goto_a5
    throw v2

    :goto_a6
    goto :goto_a5
.end method

.method private FH(Ljava/lang/String;)I
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x474f0bb498a291c3L
    .end annotation

    const-wide v0, 0xd5acae6245b8f0L

    :try_start_5
    sget-boolean v2, Labcd/ca;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_2a

    :cond_c
    const/4 v2, 0x0

    const/16 v3, 0x3d

    :try_start_f
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1b

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1b
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_27} :catch_28
    .catchall {:try_start_f .. :try_end_27} :catchall_2a

    return p1

    :catch_28
    move-exception p1

    return v2

    :catchall_2a
    move-exception v2

    sget-boolean v3, Labcd/ca;->DW:Z

    if-eqz v3, :cond_32

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    throw v2
.end method

.method private j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x15e621c586f36df3L
    .end annotation

    const-string v0, "$"

    const-wide v1, 0x1d631589ac389fd4L

    :try_start_7
    sget-boolean v3, Labcd/ca;->j6:Z

    if-eqz v3, :cond_e

    invoke-static {v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_29

    const-string v4, ""

    if-nez v3, :cond_17

    return-object v4

    :cond_17
    :try_start_17
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    return-object v4

    :cond_1e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1
    :try_end_28
    .catchall {:try_start_17 .. :try_end_28} :catchall_29

    return-object p1

    :catchall_29
    move-exception v0

    sget-boolean v3, Labcd/ca;->DW:Z

    if-eqz v3, :cond_31

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v0
.end method

.method static synthetic j6(Labcd/ca;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Labcd/ca;->Hw:Ljava/util/List;

    return-object p0
.end method

.method private j6(Ljava/lang/String;ILjava/util/Map;Labcd/Da;IILabcd/na;)Ljava/util/List;
    .registers 22
    .annotation runtime Labcd/su;
        method = 0x42f8a3e9f0a6696bL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Labcd/Da;",
            "II",
            "Labcd/na;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object v7, p0

    move/from16 v8, p2

    sget-boolean v0, Labcd/ca;->j6:Z

    const/4 v9, 0x0

    if-eqz v0, :cond_3b

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v9

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v8}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    new-instance v1, Ljava/lang/Integer;

    move/from16 v10, p5

    invoke-direct {v1, v10}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    move/from16 v11, p6

    invoke-direct {v1, v11}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v1, 0x6

    aput-object p7, v0, v1

    const-wide v1, -0x2e305524d6f8f6f0L  # -1.2303857147718022E86

    invoke-static {v1, v2, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_3f

    :cond_3b
    move/from16 v10, p5

    move/from16 v11, p6

    :goto_3f
    move-object v12, p1

    :goto_40
    const/16 v0, 0x24

    invoke-virtual {v12, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4a

    goto :goto_52

    :cond_4a
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v12, v0, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v4

    if-ne v4, v2, :cond_55

    :goto_52
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    :cond_55
    move v13, v4

    :goto_56
    if-eq v13, v2, :cond_6f

    const/16 v4, 0x29

    invoke-virtual {v12, v4, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v4

    if-lt v4, v13, :cond_6f

    const/16 v4, 0x28

    invoke-virtual {v12, v4, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v4

    if-ge v4, v13, :cond_6f

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v0, v13}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v13

    goto :goto_56

    :cond_6f
    add-int/lit8 v0, v13, 0x1

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Labcd/ca;->FH(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v8, :cond_8d

    move-object v0, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Labcd/ca;->j6(Ljava/lang/String;Ljava/util/Map;Labcd/Da;IILabcd/na;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8d

    return-object v0

    :cond_8d
    invoke-virtual {v12, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    goto :goto_40
.end method

.method private j6(Ljava/lang/String;Ljava/util/List;Labcd/Da;IILabcd/na;)Ljava/util/List;
    .registers 15
    .annotation runtime Labcd/su;
        method = 0x4a94d38d72e5a71L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Labcd/Da;",
            "II",
            "Labcd/na;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Labcd/ca;->j6:Z

    if-eqz v0, :cond_2b

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p5}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const-wide v1, 0x5d4d178d795f31d8L

    invoke-static {v1, v2, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_2b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/ca;->Hw:Ljava/util/List;

    new-instance v2, Labcd/aa;

    invoke-direct {v2, p0}, Labcd/aa;-><init>(Labcd/ca;)V

    invoke-interface {p6}, Labcd/na;->u7()Labcd/qa;

    move-result-object v1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p1

    move-object v7, p2

    invoke-interface/range {v1 .. v7}, Labcd/qa;->j6(Labcd/nb;Labcd/Da;IILjava/lang/String;Ljava/util/List;)V

    iget-object p1, p0, Labcd/ca;->Hw:Ljava/util/List;

    return-object p1
.end method

.method private j6(Ljava/lang/String;Ljava/util/Map;Labcd/Da;IILabcd/na;)Ljava/util/List;
    .registers 20
    .annotation runtime Labcd/su;
        method = 0x28721a40f406e400L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Labcd/Da;",
            "II",
            "Labcd/na;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object v7, p0

    move-object v0, p1

    move-object v1, p2

    sget-boolean v2, Labcd/ca;->j6:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_33

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    aput-object v1, v2, v4

    const/4 v5, 0x2

    aput-object p3, v2, v5

    new-instance v5, Ljava/lang/Integer;

    move/from16 v6, p4

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    const/4 v8, 0x3

    aput-object v5, v2, v8

    new-instance v5, Ljava/lang/Integer;

    move/from16 v8, p5

    invoke-direct {v5, v8}, Ljava/lang/Integer;-><init>(I)V

    const/4 v9, 0x4

    aput-object v5, v2, v9

    const/4 v5, 0x5

    aput-object p6, v2, v5

    const-wide v9, -0x3e593c194e51b249L  # -1.9096866484043667E8

    invoke-static {v9, v10, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_37

    :cond_33
    move/from16 v6, p4

    move/from16 v8, p5

    :goto_37
    const/16 v2, 0x3d

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v9, 0x0

    const/4 v10, -0x1

    if-ne v5, v10, :cond_42

    return-object v9

    :cond_42
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/2addr v2, v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x28

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v5, v10, :cond_58

    return-object v9

    :cond_58
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/2addr v2, v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v4

    invoke-virtual {v0, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_c5

    :goto_79
    const/16 v9, 0x2c

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-eq v11, v10, :cond_ae

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    invoke-virtual {v0, v3, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Labcd/ca;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {p2, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9d

    invoke-direct {p0, v11}, Labcd/ca;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    :cond_9d
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/2addr v9, v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v0, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_79

    :cond_ae
    invoke-direct {p0, v0}, Labcd/ca;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c2

    invoke-direct {p0, v0}, Labcd/ca;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_c2
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c5
    move-object v0, p0

    move-object v1, v5

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Labcd/ca;->j6(Ljava/lang/String;Ljava/util/List;Labcd/Da;IILabcd/na;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public j6(Ljava/util/Map;Ljava/lang/String;IILabcd/Da;II)I
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "II",
            "Labcd/Da;",
            "II)I"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    sget-boolean v0, Labcd/ca;->j6:Z

    const/4 v14, 0x0

    if-eqz v0, :cond_49

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v9, v0, v14

    const/4 v1, 0x1

    aput-object v10, v0, v1

    new-instance v1, Ljava/lang/Integer;

    move/from16 v2, p3

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    new-instance v1, Ljava/lang/Integer;

    move/from16 v3, p4

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x3

    aput-object v1, v0, v4

    const/4 v1, 0x4

    aput-object v11, v0, v1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v12}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x5

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v13}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x6

    aput-object v1, v0, v4

    const-wide v4, 0xe19cbf24300db0L

    invoke-static {v4, v5, v8, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_4d

    :cond_49
    move/from16 v2, p3

    move/from16 v3, p4

    :goto_4d
    iget-object v0, v8, Labcd/ca;->FH:Labcd/ea;

    iget-object v0, v0, Labcd/La;->U2:Labcd/Va;

    invoke-virtual {v0, v11, v12, v13}, Labcd/Va;->FH(Labcd/Da;II)Labcd/Sa;

    move-result-object v15

    invoke-virtual {v15}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v0

    invoke-interface {v0}, Labcd/na;->u7()Labcd/qa;

    move-result-object v0

    if-eqz v0, :cond_11b

    invoke-direct {v8, v10}, Labcd/ca;->DW(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move v7, v3

    :goto_68
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_119

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/Integer;

    const/4 v0, -0x1

    if-ne v2, v0, :cond_7e

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v5, v0

    goto :goto_7f

    :cond_7e
    move v5, v2

    :goto_7f
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v5, :cond_10d

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v15}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v3, p1

    move-object/from16 v4, p5

    move v14, v5

    move/from16 v5, p6

    move-object v8, v6

    move/from16 v6, p7

    move v10, v7

    move-object/from16 v7, v17

    invoke-direct/range {v0 .. v7}, Labcd/ca;->j6(Ljava/lang/String;ILjava/util/Map;Labcd/Da;IILabcd/na;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_ce

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "V"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10f

    :cond_ce
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v14, :cond_f5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v10, v1, :cond_dc

    const/4 v7, 0x0

    goto :goto_dd

    :cond_dc
    move v7, v10

    :goto_dd
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    goto :goto_111

    :cond_f5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_110

    :cond_10d
    move v14, v5

    move v10, v7

    :goto_10f
    const/4 v2, 0x0

    :goto_110
    move v7, v10

    :goto_111
    move-object/from16 v8, p0

    move-object/from16 v10, p2

    move v2, v14

    const/4 v14, 0x0

    goto/16 :goto_68

    :cond_119
    move v10, v7

    goto :goto_11c

    :cond_11b
    move v10, v3

    :goto_11c
    return v10
.end method

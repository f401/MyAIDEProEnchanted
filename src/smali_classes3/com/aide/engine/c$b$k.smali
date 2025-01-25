.class Lcom/aide/engine/c$b$k;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/jb;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/engine/c$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "k"
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
.field private FH:Ljava/util/ArrayList;
    .annotation runtime Labcd/ru;
        field = -0xb2d969253de7d94L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/aide/engine/SourceEntity;",
            ">;"
        }
    .end annotation
.end field

.field final Hw:Lcom/aide/engine/c$b;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/engine/c$b$k;

    const-wide v1, 0x89542060c04b418L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Lcom/aide/engine/c$b;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x83057dc2b538c89L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x11f6641b230f9437L  # -1.1571210098287739E222

    :try_start_6
    sget-boolean v3, Lcom/aide/engine/c$b$k;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/aide/engine/c$b$k;->Hw:Lcom/aide/engine/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/aide/engine/c$b$k;->FH:Ljava/util/ArrayList;
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v3

    sget-boolean v4, Lcom/aide/engine/c$b$k;->DW:Z

    if-eqz v4, :cond_22

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v3
.end method

.method synthetic constructor <init>(Lcom/aide/engine/c$b;Lcom/aide/engine/b;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$k;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x13750c6be776a2d0L  # 6.105829876921819E-215

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Lcom/aide/engine/c$b$k;-><init>(Lcom/aide/engine/c$b;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$k;->DW:Z

    if-eqz v1, :cond_22

    const-wide v2, 0x13750c6be776a2d0L  # 6.105829876921819E-215

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v0
.end method


# virtual methods
.method public j6()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x395581e9e3f0ab1L
    .end annotation

    const-wide v0, 0x5003aa3bd063359L  # 1.3642296917417E-284

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$k;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$k;->FH:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$k;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public j6(Labcd/Aa;IIIIIII)V
    .registers 22
    .annotation runtime Labcd/su;
        method = -0x142cdaaf94eaaec7L
    .end annotation

    move-object v0, p0

    sget-boolean v1, Lcom/aide/engine/c$b$k;->j6:Z

    if-eqz v1, :cond_5a

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v2, Ljava/lang/Integer;

    move v6, p2

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/Integer;

    move/from16 v7, p3

    invoke-direct {v2, v7}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/Integer;

    move/from16 v8, p4

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/Integer;

    move/from16 v9, p5

    invoke-direct {v2, v9}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/Integer;

    move/from16 v10, p6

    invoke-direct {v2, v10}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/Integer;

    move/from16 v11, p7

    invoke-direct {v2, v11}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x6

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/Integer;

    move/from16 v12, p8

    invoke-direct {v2, v12}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-wide v2, 0x3bc5a30c620d7e7L

    invoke-static {v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_67

    :cond_5a
    move v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    :goto_67
    new-instance v1, Lcom/aide/engine/SourceEntity;

    iget-object v2, v0, Lcom/aide/engine/c$b$k;->Hw:Lcom/aide/engine/c$b;

    invoke-static {v2}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v4

    move-object v3, v1

    move-object v5, p1

    move v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-direct/range {v3 .. v12}, Lcom/aide/engine/SourceEntity;-><init>(Labcd/La;Labcd/Aa;IIIIIII)V

    iget-object v2, v0, Lcom/aide/engine/c$b$k;->FH:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public j6(Labcd/Aa;IIIIIIII)V
    .registers 26
    .annotation runtime Labcd/su;
        method = 0x37a57297f467fb50L
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p9

    sget-boolean v2, Lcom/aide/engine/c$b$k;->j6:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_67

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    new-instance v5, Ljava/lang/Integer;

    move/from16 v8, p2

    invoke-direct {v5, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v2, v3

    new-instance v5, Ljava/lang/Integer;

    move/from16 v9, p3

    invoke-direct {v5, v9}, Ljava/lang/Integer;-><init>(I)V

    const/4 v6, 0x2

    aput-object v5, v2, v6

    new-instance v5, Ljava/lang/Integer;

    move/from16 v10, p4

    invoke-direct {v5, v10}, Ljava/lang/Integer;-><init>(I)V

    const/4 v6, 0x3

    aput-object v5, v2, v6

    new-instance v5, Ljava/lang/Integer;

    move/from16 v11, p5

    invoke-direct {v5, v11}, Ljava/lang/Integer;-><init>(I)V

    const/4 v6, 0x4

    aput-object v5, v2, v6

    new-instance v5, Ljava/lang/Integer;

    move/from16 v12, p6

    invoke-direct {v5, v12}, Ljava/lang/Integer;-><init>(I)V

    const/4 v6, 0x5

    aput-object v5, v2, v6

    new-instance v5, Ljava/lang/Integer;

    move/from16 v13, p7

    invoke-direct {v5, v13}, Ljava/lang/Integer;-><init>(I)V

    const/4 v6, 0x6

    aput-object v5, v2, v6

    new-instance v5, Ljava/lang/Integer;

    move/from16 v14, p8

    invoke-direct {v5, v14}, Ljava/lang/Integer;-><init>(I)V

    const/4 v6, 0x7

    aput-object v5, v2, v6

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v1}, Ljava/lang/Integer;-><init>(I)V

    const/16 v6, 0x8

    aput-object v5, v2, v6

    const-wide v5, 0x3e281291a29dd6cL

    invoke-static {v5, v6, v0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_75

    :cond_67
    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    :goto_75
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_7b
    if-ge v2, v1, :cond_8f

    iget-object v5, v0, Lcom/aide/engine/c$b$k;->FH:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v1

    add-int/2addr v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_7b

    :cond_8f
    :goto_8f
    if-ge v4, v1, :cond_9e

    iget-object v2, v0, Lcom/aide/engine/c$b$k;->FH:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_8f

    :cond_9e
    new-instance v1, Lcom/aide/engine/SourceEntity;

    iget-object v2, v0, Lcom/aide/engine/c$b$k;->Hw:Lcom/aide/engine/c$b;

    invoke-static {v2}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v6

    move-object v5, v1

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    invoke-direct/range {v5 .. v15}, Lcom/aide/engine/SourceEntity;-><init>(Labcd/La;Labcd/Aa;IIIIIIILjava/util/List;)V

    iget-object v2, v0, Lcom/aide/engine/c$b$k;->FH:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public j6(Labcd/Da;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x29f0d98c00d9d670L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$k;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0xf96c75af576e98cL

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_17
    if-ge v1, p2, :cond_2b

    iget-object v2, p0, Lcom/aide/engine/c$b$k;->FH:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, p2

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_2b
    iget-object v1, p0, Lcom/aide/engine/c$b$k;->Hw:Lcom/aide/engine/c$b;

    iget-object v1, v1, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v1}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v1

    if-eqz v1, :cond_48

    iget-object v1, p0, Lcom/aide/engine/c$b$k;->Hw:Lcom/aide/engine/c$b;

    iget-object v1, v1, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v1}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v1

    invoke-virtual {p1}, Labcd/Da;->XL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Labcd/Da;->a8()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/aide/engine/M;->j6(Ljava/lang/String;JLjava/util/List;)V

    :cond_48
    iget-object v0, p0, Lcom/aide/engine/c$b$k;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_4d
    .catchall {:try_start_0 .. :try_end_4d} :catchall_4e

    return-void

    :catchall_4e
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$k;->DW:Z

    if-eqz v1, :cond_63

    const-wide v2, 0xf96c75af576e98cL

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_63
    goto :goto_65

    :goto_64
    throw v0

    :goto_65
    goto :goto_64
.end method

.method public j6(Labcd/na;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x45be48f883cc340L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$k;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x2d78fbfdadfae680L

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_18
    if-ge v2, p2, :cond_2c

    iget-object v3, p0, Lcom/aide/engine/c$b$k;->FH:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, p2

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_2c
    :goto_2c
    if-ge v1, p2, :cond_3c

    iget-object v2, p0, Lcom/aide/engine/c$b$k;->FH:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_3c
    new-instance v1, Lcom/aide/engine/SourceEntity;

    iget-object v2, p0, Lcom/aide/engine/c$b$k;->Hw:Lcom/aide/engine/c$b;

    invoke-static {v2}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v2

    invoke-direct {v1, v2, p1, v0}, Lcom/aide/engine/SourceEntity;-><init>(Labcd/La;Labcd/na;Ljava/util/List;)V

    iget-object v0, p0, Lcom/aide/engine/c$b$k;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4c
    .catchall {:try_start_0 .. :try_end_4c} :catchall_4d

    return-void

    :catchall_4d
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$k;->DW:Z

    if-eqz v1, :cond_62

    const-wide v2, 0x2d78fbfdadfae680L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_62
    goto :goto_64

    :goto_63
    throw v0

    :goto_64
    goto :goto_63
.end method

.method public j6(Ljava/lang/String;ZIIIIIIII)V
    .registers 28
    .annotation runtime Labcd/su;
        method = -0x33b1571ddd7161bL
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p10

    sget-boolean v2, Lcom/aide/engine/c$b$k;->j6:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_72

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    new-instance v5, Ljava/lang/Boolean;

    move/from16 v8, p2

    invoke-direct {v5, v8}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v2, v4

    new-instance v5, Ljava/lang/Integer;

    move/from16 v9, p3

    invoke-direct {v5, v9}, Ljava/lang/Integer;-><init>(I)V

    const/4 v6, 0x2

    aput-object v5, v2, v6

    new-instance v5, Ljava/lang/Integer;

    move/from16 v10, p4

    invoke-direct {v5, v10}, Ljava/lang/Integer;-><init>(I)V

    const/4 v6, 0x3

    aput-object v5, v2, v6

    new-instance v5, Ljava/lang/Integer;

    move/from16 v11, p5

    invoke-direct {v5, v11}, Ljava/lang/Integer;-><init>(I)V

    const/4 v6, 0x4

    aput-object v5, v2, v6

    new-instance v5, Ljava/lang/Integer;

    move/from16 v12, p6

    invoke-direct {v5, v12}, Ljava/lang/Integer;-><init>(I)V

    const/4 v6, 0x5

    aput-object v5, v2, v6

    new-instance v5, Ljava/lang/Integer;

    move/from16 v13, p7

    invoke-direct {v5, v13}, Ljava/lang/Integer;-><init>(I)V

    const/4 v6, 0x6

    aput-object v5, v2, v6

    new-instance v5, Ljava/lang/Integer;

    move/from16 v14, p8

    invoke-direct {v5, v14}, Ljava/lang/Integer;-><init>(I)V

    const/4 v6, 0x7

    aput-object v5, v2, v6

    new-instance v5, Ljava/lang/Integer;

    move/from16 v15, p9

    invoke-direct {v5, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v6, 0x8

    aput-object v5, v2, v6

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v1}, Ljava/lang/Integer;-><init>(I)V

    const/16 v6, 0x9

    aput-object v5, v2, v6

    const-wide v5, -0x15ceabe80b0aaa25L  # -3.3956101267204714E203

    invoke-static {v5, v6, v0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_82

    :cond_72
    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    move/from16 v15, p9

    :goto_82
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    :goto_88
    if-ge v5, v1, :cond_9c

    iget-object v6, v0, Lcom/aide/engine/c$b$k;->FH:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v1

    add-int/2addr v7, v5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_88

    :cond_9c
    :goto_9c
    if-ge v3, v1, :cond_ab

    iget-object v5, v0, Lcom/aide/engine/c$b$k;->FH:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_9c

    :cond_ab
    new-instance v1, Lcom/aide/engine/SourceEntity;

    iget-object v3, v0, Lcom/aide/engine/c$b$k;->Hw:Lcom/aide/engine/c$b;

    invoke-static {v3}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v6

    move-object v5, v1

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    move/from16 v15, p9

    move-object/from16 v16, v2

    invoke-direct/range {v5 .. v16}, Lcom/aide/engine/SourceEntity;-><init>(Labcd/La;Ljava/lang/String;ZIIIIIIILjava/util/List;)V

    iget-object v2, v0, Lcom/aide/engine/c$b$k;->FH:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

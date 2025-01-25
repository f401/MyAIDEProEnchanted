.class Lcom/aide/engine/c$b$i;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/hb;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/engine/c$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "i"
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
.field private FH:Lcom/aide/engine/E;
    .annotation runtime Labcd/ru;
        field = 0x2818c7effc2d9bcfL
    .end annotation
.end field

.field private Hw:Ljava/util/ArrayList;
    .annotation runtime Labcd/ru;
        field = -0x1aa784f685687190L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/aide/engine/Modification;",
            ">;"
        }
    .end annotation
.end field

.field final Zo:Lcom/aide/engine/c$b;

.field private v5:Ljava/util/ArrayList;
    .annotation runtime Labcd/ru;
        field = -0xcde0cd51b45cc40L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/engine/c$b$i;

    const-wide v1, 0x1fb1f8dacf93ec17L  # 5.236014134253735E-156

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Lcom/aide/engine/c$b;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x11183858c8c6c1dL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x20e0403a9f5d65edL  # 2.482272428693561E-150

    :try_start_6
    sget-boolean v3, Lcom/aide/engine/c$b$i;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/aide/engine/c$b$i;->Zo:Lcom/aide/engine/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Lcom/aide/engine/c$b$i;->DW:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method

.method synthetic constructor <init>(Lcom/aide/engine/c$b;Lcom/aide/engine/b;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$i;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x324f0397c668afa8L  # -1.7888309368697574E66

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Lcom/aide/engine/c$b$i;-><init>(Lcom/aide/engine/c$b;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$i;->DW:Z

    if-eqz v1, :cond_22

    const-wide v2, -0x324f0397c668afa8L  # -1.7888309368697574E66

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v0
.end method


# virtual methods
.method public DW()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1be8f63878f1d0b1L
    .end annotation

    const-wide v0, -0xcc17cfaeb23a180L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$i;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$i;->Zo:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    iget-object v3, p0, Lcom/aide/engine/c$b$i;->Hw:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lcom/aide/engine/c;->DW(Lcom/aide/engine/c;Ljava/util/List;)Ljava/util/List;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aide/engine/c$b$i;->Hw:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/aide/engine/c$b$i;->Zo:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->Od(Lcom/aide/engine/c;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_31

    :try_start_21
    iget-object v3, p0, Lcom/aide/engine/c$b$i;->Zo:Lcom/aide/engine/c$b;

    iget-object v3, v3, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v3}, Lcom/aide/engine/c;->Od(Lcom/aide/engine/c;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    monitor-exit v2

    return-void

    :catchall_2e
    move-exception v3

    monitor-exit v2
    :try_end_30
    .catchall {:try_start_21 .. :try_end_30} :catchall_2e

    :try_start_30
    throw v3
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_31

    :catchall_31
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$i;->DW:Z

    if-eqz v3, :cond_39

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_39
    throw v2
.end method

.method public DW(Labcd/Da;II)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x2052309b697fd8cdL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$i;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x41315b4ec70eae14L  # -3.652969503368242E-6

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    iget-object v0, p0, Lcom/aide/engine/c$b$i;->Hw:Ljava/util/ArrayList;

    new-instance v1, Lcom/aide/engine/Modification;

    invoke-virtual {p1}, Labcd/Da;->XL()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, p2, p3, v2, v3}, Lcom/aide/engine/Modification;-><init>(IILjava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_28

    return-void

    :catchall_28
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$i;->DW:Z

    if-eqz v1, :cond_42

    const-wide v2, -0x41315b4ec70eae14L  # -3.652969503368242E-6

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_42
    throw v0
.end method

.method public DW(Labcd/Da;IIII)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0xe6d273ece87f83fL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$i;->j6:Z

    if-eqz v0, :cond_22

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x33c39fa28eb4520L  # -9.86620036935519E292

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_23

    :cond_22
    return-void

    :catchall_23
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$i;->DW:Z

    if-eqz v1, :cond_47

    const-wide v2, -0x33c39fa28eb4520L  # -9.86620036935519E292

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

    :cond_47
    throw v0
.end method

.method public DW(Labcd/Da;IIIIII)V
    .registers 20
    .annotation runtime Labcd/su;
        method = -0x5f744f23bfb555bdL
    .end annotation

    move-object v0, p0

    sget-boolean v1, Lcom/aide/engine/c$b$i;->j6:Z

    if-eqz v1, :cond_4e

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v2, Ljava/lang/Integer;

    move v4, p2

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/Integer;

    move v5, p3

    invoke-direct {v2, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/Integer;

    move/from16 v6, p4

    invoke-direct {v2, v6}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/Integer;

    move/from16 v7, p5

    invoke-direct {v2, v7}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/Integer;

    move/from16 v9, p6

    invoke-direct {v2, v9}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/Integer;

    move/from16 v10, p7

    invoke-direct {v2, v10}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-wide v2, -0x2d93d90fb0f58a40L  # -1.1200556505964367E89

    invoke-static {v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_58

    :cond_4e
    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v9, p6

    move/from16 v10, p7

    :goto_58
    iget-object v1, v0, Lcom/aide/engine/c$b$i;->Hw:Ljava/util/ArrayList;

    new-instance v2, Lcom/aide/engine/Modification;

    invoke-virtual {p1}, Labcd/Da;->XL()Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x1

    move-object v3, v2

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v3 .. v11}, Lcom/aide/engine/Modification;-><init>(IIIILjava/lang/String;IIZ)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public DW(Labcd/Da;IIIILjava/lang/String;)V
    .registers 18
    .annotation runtime Labcd/su;
        method = -0x244c8ca8110560b0L
    .end annotation

    move-object v0, p0

    sget-boolean v1, Lcom/aide/engine/c$b$i;->j6:Z

    if-eqz v1, :cond_3c

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v2, Ljava/lang/Integer;

    move v4, p2

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/Integer;

    move v5, p3

    invoke-direct {v2, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/Integer;

    move v6, p4

    invoke-direct {v2, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/Integer;

    move/from16 v7, p5

    invoke-direct {v2, v7}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const/4 v2, 0x5

    aput-object p6, v1, v2

    const-wide v2, 0x1f3e3cef3b5e6d07L

    invoke-static {v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_41

    :cond_3c
    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    :goto_41
    iget-object v1, v0, Lcom/aide/engine/c$b$i;->Hw:Ljava/util/ArrayList;

    new-instance v2, Lcom/aide/engine/Modification;

    invoke-virtual {p1}, Labcd/Da;->XL()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    move-object v3, v2

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move-object/from16 v9, p6

    invoke-direct/range {v3 .. v10}, Lcom/aide/engine/Modification;-><init>(IIIILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public DW(Labcd/Da;Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x592284520fe7cf95L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$i;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x57498cdd0a5d4cc0L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/engine/c$b$i;->Hw:Ljava/util/ArrayList;

    new-instance v1, Lcom/aide/engine/Modification;

    invoke-virtual {p1}, Labcd/Da;->XL()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/aide/engine/Modification;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$i;->DW:Z

    if-eqz v1, :cond_2c

    const-wide v2, -0x57498cdd0a5d4cc0L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    throw v0
.end method

.method public DW(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x18180cae8ddc74ccL
    .end annotation

    const-wide v0, 0x44401e387d538943L  # 5.946510667938502E20

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$i;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$i;->Zo:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->oY(Lcom/aide/engine/c;)Lcom/aide/engine/J;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/aide/engine/J;->DW(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$i;->DW:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public EQ()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x102d49b7d0073dL
    .end annotation

    const-wide v0, -0xeee36d04a85b350L  # -4.524098691832798E236

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$i;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$i;->Zo:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->oY(Lcom/aide/engine/c;)Lcom/aide/engine/J;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/engine/c$b$i;->Hw:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/aide/engine/J;->DW(Ljava/util/List;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aide/engine/c$b$i;->Hw:Ljava/util/ArrayList;
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$i;->DW:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public EQ(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0xe96d68ea8b76819L
    .end annotation

    const-wide v0, 0x224f184ff63be14L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$i;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$i;->Zo:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->oY(Lcom/aide/engine/c;)Lcom/aide/engine/J;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/aide/engine/J;->u7(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$i;->DW:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public FH()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x68e305c85045938L
    .end annotation

    const-wide v0, -0x7c25b14565a71efL

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$i;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$i;->Zo:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->oY(Lcom/aide/engine/c;)Lcom/aide/engine/J;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/engine/c$b$i;->Hw:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/aide/engine/J;->FH(Ljava/util/List;)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$i;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public FH(Labcd/Da;IIII)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0x9456b969e6be74L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$i;->j6:Z

    if-eqz v0, :cond_22

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x233db7b56564659dL  # -6.8036340924558E138

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    iget-object v0, p0, Lcom/aide/engine/c$b$i;->Hw:Ljava/util/ArrayList;

    new-instance v8, Lcom/aide/engine/Modification;

    invoke-virtual {p1}, Labcd/Da;->XL()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    move-object v1, v8

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v1 .. v7}, Lcom/aide/engine/Modification;-><init>(IIIILjava/lang/String;Z)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catchall {:try_start_0 .. :try_end_36} :catchall_37

    return-void

    :catchall_37
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$i;->DW:Z

    if-eqz v1, :cond_5b

    const-wide v2, -0x233db7b56564659dL  # -6.8036340924558E138

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

    :cond_5b
    throw v0
.end method

.method public FH(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x10507e6eb41637fbL
    .end annotation

    const-wide v0, -0x13a9248c5b8208c0L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$i;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$i;->Zo:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->oY(Lcom/aide/engine/c;)Lcom/aide/engine/J;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/aide/engine/J;->FH(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$i;->DW:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public Hw()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x493d43a1e6d788ffL
    .end annotation

    const-wide v0, -0x6ceea4894c19dfd0L  # -7.86728349701991E-217

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$i;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$i;->Zo:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->oY(Lcom/aide/engine/c;)Lcom/aide/engine/J;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/engine/c$b$i;->Hw:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/aide/engine/J;->J0(Ljava/util/List;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aide/engine/c$b$i;->Hw:Ljava/util/ArrayList;
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$i;->DW:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public Hw(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x2eb91487e60fbec7L
    .end annotation

    const-wide v0, -0x3e07a27931fe94b0L  # -6.540520672088699E9

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$i;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$i;->Zo:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->oY(Lcom/aide/engine/c;)Lcom/aide/engine/J;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/aide/engine/J;->Hw(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$i;->DW:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public J0()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x5c51926c4206c98L
    .end annotation

    const-wide v0, -0xa868391f2ccc631L  # -7.653479248344519E257

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$i;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$i;->Zo:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->oY(Lcom/aide/engine/c;)Lcom/aide/engine/J;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/engine/c$b$i;->Hw:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/aide/engine/c$b$i;->v5:Ljava/util/ArrayList;

    invoke-interface {v2, v3, v4}, Lcom/aide/engine/J;->j6(Ljava/util/List;Ljava/util/List;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aide/engine/c$b$i;->Hw:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/aide/engine/c$b$i;->v5:Ljava/util/ArrayList;
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    return-void

    :catchall_21
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$i;->DW:Z

    if-eqz v3, :cond_29

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_29
    throw v2
.end method

.method public J8()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0xcbf1a53b0b8cbL
    .end annotation

    const-wide v0, 0x1bd31bd0c9fe4700L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$i;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$i;->Zo:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->oY(Lcom/aide/engine/c;)Lcom/aide/engine/J;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/engine/c$b$i;->Hw:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/aide/engine/J;->u7(Ljava/util/List;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aide/engine/c$b$i;->Hw:Ljava/util/ArrayList;
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$i;->DW:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public QX()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x501071db6e82ec60L
    .end annotation

    const-wide v0, 0x375d5dc5faf0c7f3L  # 5.2673221324644584E-42

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$i;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$i;->Zo:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->oY(Lcom/aide/engine/c;)Lcom/aide/engine/J;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/engine/c$b$i;->Hw:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/aide/engine/J;->Zo(Ljava/util/List;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aide/engine/c$b$i;->Hw:Ljava/util/ArrayList;
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$i;->DW:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public VH()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x31c6a7e561b31de8L
    .end annotation

    const-wide v0, 0x1a33cfc4b94b8461L  # 1.865013968595245E-182

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$i;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$i;->Zo:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->oY(Lcom/aide/engine/c;)Lcom/aide/engine/J;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/engine/c$b$i;->Hw:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/aide/engine/J;->VH(Ljava/util/List;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aide/engine/c$b$i;->Hw:Ljava/util/ArrayList;
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$i;->DW:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public VH(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xf489edce164c188L
    .end annotation

    const-wide v0, 0x4141467aa152807L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$i;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$i;->Zo:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->oY(Lcom/aide/engine/c;)Lcom/aide/engine/J;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/aide/engine/J;->tp(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$i;->DW:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public Ws()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x75601ff5fbf7f480L
    .end annotation

    const-wide v0, 0x6c1da257847950bbL  # 6.2351858134762855E212

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$i;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$i;->Zo:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->oY(Lcom/aide/engine/c;)Lcom/aide/engine/J;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/engine/c$b$i;->Hw:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/aide/engine/c$b$i;->v5:Ljava/util/ArrayList;

    invoke-interface {v2, v3, v4}, Lcom/aide/engine/J;->DW(Ljava/util/List;Ljava/util/List;)V
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$i;->DW:Z

    if-eqz v3, :cond_24

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method public XL()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x3ced645fc9e82270L
    .end annotation

    const-wide v0, -0x3cfc3b892dffc87L  # -1.582197033609029E290

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$i;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$i;->Zo:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->oY(Lcom/aide/engine/c;)Lcom/aide/engine/J;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/engine/c$b$i;->Hw:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/aide/engine/J;->EQ(Ljava/util/List;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aide/engine/c$b$i;->Hw:Ljava/util/ArrayList;
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$i;->DW:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public Zo()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x6a0f2dbf10194ee5L
    .end annotation

    const-wide v0, -0x2aa774f5a9626924L  # -1.3742584634070644E103

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$i;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$i;->Zo:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->oY(Lcom/aide/engine/c;)Lcom/aide/engine/J;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/engine/c$b$i;->Hw:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/aide/engine/J;->we(Ljava/util/List;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aide/engine/c$b$i;->Hw:Ljava/util/ArrayList;
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$i;->DW:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public Zo(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xbf678efbdae29fL
    .end annotation

    const-wide v0, -0x21d32ebaaad1af8L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$i;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$i;->Zo:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->oY(Lcom/aide/engine/c;)Lcom/aide/engine/J;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/aide/engine/J;->VH(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$i;->DW:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public aM()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x40df5c0ee6f3737fL
    .end annotation

    const-wide v0, 0x459a639156feacd4L  # 2.0417450648520255E27

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$i;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/aide/engine/c$b$i;->Hw:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/aide/engine/c$b$i;->v5:Ljava/util/ArrayList;

    new-instance v2, Lcom/aide/engine/E;

    invoke-direct {v2}, Lcom/aide/engine/E;-><init>()V

    iput-object v2, p0, Lcom/aide/engine/c$b$i;->FH:Lcom/aide/engine/E;
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$i;->DW:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2a
    throw v2
.end method

.method public gn()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x2dada203109e08a7L
    .end annotation

    const-wide v0, 0x7578e2c0024a530L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$i;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$i;->Zo:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->oY(Lcom/aide/engine/c;)Lcom/aide/engine/J;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/engine/c$b$i;->Hw:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/aide/engine/J;->Hw(Ljava/util/List;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aide/engine/c$b$i;->Hw:Ljava/util/ArrayList;
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$i;->DW:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public gn(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x26a31d9b0d6adef0L
    .end annotation

    const-wide v0, -0x27dcd709fbd3ebc1L  # -3.774712964079631E116

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$i;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$i;->v5:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$i;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public j3()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x3e94959d896935efL
    .end annotation

    const-wide v0, 0x6cfd851e442e10L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$i;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$i;->Zo:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->oY(Lcom/aide/engine/c;)Lcom/aide/engine/J;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/engine/c$b$i;->Hw:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/aide/engine/J;->J8(Ljava/util/List;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aide/engine/c$b$i;->Hw:Ljava/util/ArrayList;
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$i;->DW:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public j6()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x3faa77506c7799dL
    .end annotation

    const-wide v0, -0xa07aa6b04360c8L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$i;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$i;->Zo:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->oY(Lcom/aide/engine/c;)Lcom/aide/engine/J;

    move-result-object v2

    invoke-interface {v2}, Lcom/aide/engine/J;->j6()V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$i;->DW:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public j6(Labcd/Da;II)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x1b8799c7425ee1a0L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$i;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x319cf16814f871b7L  # 1.0483938759738624E-69

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    iget-object v0, p0, Lcom/aide/engine/c$b$i;->Hw:Ljava/util/ArrayList;

    new-instance v1, Lcom/aide/engine/Modification;

    invoke-virtual {p1}, Labcd/Da;->XL()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, p3, v2}, Lcom/aide/engine/Modification;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_26
    .catchall {:try_start_0 .. :try_end_26} :catchall_27

    return-void

    :catchall_27
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$i;->DW:Z

    if-eqz v1, :cond_41

    const-wide v2, 0x319cf16814f871b7L  # 1.0483938759738624E-69

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_41
    throw v0
.end method

.method public j6(Labcd/Da;III)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x357ea5635e2e48d4L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$i;->j6:Z

    if-eqz v0, :cond_1d

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x12289c0865f495bfL  # -1.3211017922612993E221

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    iget-object v0, p0, Lcom/aide/engine/c$b$i;->Hw:Ljava/util/ArrayList;

    new-instance v1, Lcom/aide/engine/Modification;

    invoke-virtual {p1}, Labcd/Da;->XL()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2, p3, p4}, Lcom/aide/engine/Modification;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catchall {:try_start_0 .. :try_end_2b} :catchall_2c

    return-void

    :catchall_2c
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$i;->DW:Z

    if-eqz v1, :cond_4b

    const-wide v2, -0x12289c0865f495bfL  # -1.3211017922612993E221

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4b
    throw v0
.end method

.method public j6(Labcd/Da;IIII)V
    .registers 16
    .annotation runtime Labcd/su;
        method = -0x715532c4bde2614L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$i;->j6:Z

    if-eqz v0, :cond_22

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0xd7f79bb702ad3f9L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    iget-object v0, p0, Lcom/aide/engine/c$b$i;->Hw:Ljava/util/ArrayList;

    new-instance v7, Lcom/aide/engine/Modification;

    invoke-virtual {p1}, Labcd/Da;->XL()Ljava/lang/String;

    move-result-object v6

    move-object v1, v7

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/aide/engine/Modification;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catchall {:try_start_0 .. :try_end_35} :catchall_36

    return-void

    :catchall_36
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$i;->DW:Z

    if-eqz v1, :cond_5a

    const-wide v2, -0xd7f79bb702ad3f9L

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

    :cond_5a
    throw v0
.end method

.method public j6(Labcd/Da;IIIIII)V
    .registers 19
    .annotation runtime Labcd/su;
        method = -0x5560d874e1a1fe5L
    .end annotation

    move-object v0, p0

    sget-boolean v1, Lcom/aide/engine/c$b$i;->j6:Z

    if-eqz v1, :cond_4d

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v2, Ljava/lang/Integer;

    move v4, p2

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/Integer;

    move v5, p3

    invoke-direct {v2, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/Integer;

    move v6, p4

    invoke-direct {v2, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/Integer;

    move/from16 v7, p5

    invoke-direct {v2, v7}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/Integer;

    move/from16 v9, p6

    invoke-direct {v2, v9}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/Integer;

    move/from16 v10, p7

    invoke-direct {v2, v10}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-wide v2, 0x2037ea1e4525d320L

    invoke-static {v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_56

    :cond_4d
    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v9, p6

    move/from16 v10, p7

    :goto_56
    iget-object v1, v0, Lcom/aide/engine/c$b$i;->Hw:Ljava/util/ArrayList;

    new-instance v2, Lcom/aide/engine/Modification;

    invoke-virtual {p1}, Labcd/Da;->XL()Ljava/lang/String;

    move-result-object v8

    move-object v3, v2

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v3 .. v10}, Lcom/aide/engine/Modification;-><init>(IIIILjava/lang/String;II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public j6(Labcd/Da;IIIILjava/lang/String;)V
    .registers 18
    .annotation runtime Labcd/su;
        method = 0x2198c4dda63dcecL
    .end annotation

    move-object v0, p0

    move v2, p2

    move v4, p4

    sget-boolean v1, Lcom/aide/engine/c$b$i;->j6:Z

    if-eqz v1, :cond_3c

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v5, 0x1

    aput-object v3, v1, v5

    new-instance v3, Ljava/lang/Integer;

    move v5, p3

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v6, 0x2

    aput-object v3, v1, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v6, 0x3

    aput-object v3, v1, v6

    new-instance v3, Ljava/lang/Integer;

    move/from16 v6, p5

    invoke-direct {v3, v6}, Ljava/lang/Integer;-><init>(I)V

    const/4 v7, 0x4

    aput-object v3, v1, v7

    const/4 v3, 0x5

    aput-object p6, v1, v3

    const-wide v7, 0x380eed2c9d1eaddL

    invoke-static {v7, v8, p0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_3f

    :cond_3c
    move v5, p3

    move/from16 v6, p5

    :goto_3f
    if-lez v2, :cond_5b

    if-ltz v4, :cond_5b

    iget-object v9, v0, Lcom/aide/engine/c$b$i;->Hw:Ljava/util/ArrayList;

    new-instance v10, Lcom/aide/engine/Modification;

    invoke-virtual {p1}, Labcd/Da;->XL()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object v1, v10

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object v6, v7

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/aide/engine/Modification;-><init>(IIIILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5b
    return-void
.end method

.method public j6(Labcd/Da;IILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x1261a4e113f5b89dL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/Da;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/aide/engine/c$b$i;->j6:Z

    if-eqz v0, :cond_2e

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const/4 v1, 0x6

    aput-object p7, v0, v1

    const-wide v1, -0xb274c5192735610L

    invoke-static {v1, v2, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_2e
    iget-object v0, p0, Lcom/aide/engine/c$b$i;->Zo:Lcom/aide/engine/c$b;

    iget-object v0, v0, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-virtual {p1}, Labcd/Da;->XL()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/aide/engine/c;->j6(Lcom/aide/engine/c;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/aide/engine/c$b$i;->Zo:Lcom/aide/engine/c$b;

    iget-object p1, p1, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {p1, p2}, Lcom/aide/engine/c;->j6(Lcom/aide/engine/c;I)I

    iget-object p1, p0, Lcom/aide/engine/c$b$i;->Zo:Lcom/aide/engine/c$b;

    iget-object p1, p1, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {p1, p3}, Lcom/aide/engine/c;->FH(Lcom/aide/engine/c;I)I

    iget-object p1, p0, Lcom/aide/engine/c$b$i;->FH:Lcom/aide/engine/E;

    iput-object p6, p1, Lcom/aide/engine/E;->v5:Ljava/util/List;

    iput-object p5, p1, Lcom/aide/engine/E;->Hw:Ljava/util/List;

    iput-object p7, p1, Lcom/aide/engine/E;->Zo:Ljava/util/List;

    iput-object p4, p1, Lcom/aide/engine/E;->FH:Ljava/util/List;

    iget-object p1, p0, Lcom/aide/engine/c$b$i;->Zo:Lcom/aide/engine/c$b;

    iget-object p1, p1, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {p1}, Lcom/aide/engine/c;->oY(Lcom/aide/engine/c;)Lcom/aide/engine/J;

    move-result-object p1

    iget-object p2, p0, Lcom/aide/engine/c$b$i;->FH:Lcom/aide/engine/E;

    invoke-interface {p1, p2}, Lcom/aide/engine/J;->j6(Lcom/aide/engine/E;)V

    return-void
.end method

.method public j6(Labcd/Da;Labcd/Da;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x4b219ef9ee5dd6adL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$i;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x34ae0cd64c7c81e0L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/engine/c$b$i;->Hw:Ljava/util/ArrayList;

    new-instance v1, Lcom/aide/engine/Modification;

    invoke-virtual {p1}, Labcd/Da;->XL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Labcd/Da;->XL()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/aide/engine/Modification;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_20

    return-void

    :catchall_20
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$i;->DW:Z

    if-eqz v1, :cond_31

    const-wide v2, 0x34ae0cd64c7c81e0L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v0
.end method

.method public j6(Labcd/Da;Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x1e24e7a72c93539dL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$i;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x1f505bece7d2f5a8L  # -5.430212214468029E157

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/engine/c$b$i;->Hw:Ljava/util/ArrayList;

    new-instance v1, Lcom/aide/engine/Modification;

    invoke-virtual {p1}, Labcd/Da;->XL()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p2, v3}, Lcom/aide/engine/Modification;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$i;->DW:Z

    if-eqz v1, :cond_2d

    const-wide v2, -0x1f505bece7d2f5a8L  # -5.430212214468029E157

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    throw v0
.end method

.method public j6(Labcd/na;Ljava/util/Set;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x3a8731dbf93c98c8L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/na;",
            "Ljava/util/Set<",
            "+",
            "Labcd/ha;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$i;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x1b025d7808f1e5a5L  # -3.002207657748797E178

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/engine/c$b$i;->Zo:Lcom/aide/engine/c$b;

    iget-object v0, v0, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v0}, Lcom/aide/engine/c;->oY(Lcom/aide/engine/c;)Lcom/aide/engine/J;

    move-result-object v0

    invoke-interface {p1}, Labcd/na;->j6()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/aide/engine/J;->j6(Ljava/lang/String;Ljava/util/Set;)V
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$i;->DW:Z

    if-eqz v1, :cond_2d

    const-wide v2, -0x1b025d7808f1e5a5L  # -3.002207657748797E178

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    throw v0
.end method

.method public j6(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x6e5021a636756b09L
    .end annotation

    const-wide v0, 0x5917dcb211d2d9d0L  # 1.5404471121347865E121

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$i;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$i;->Zo:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->oY(Lcom/aide/engine/c;)Lcom/aide/engine/J;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/aide/engine/J;->j6(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$i;->DW:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x46ae5b3861c5e328L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$i;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x462936ba56fefc4dL  # -4.493789372198462E-30

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/engine/c$b$i;->Zo:Lcom/aide/engine/c$b;

    iget-object v0, v0, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v0}, Lcom/aide/engine/c;->oY(Lcom/aide/engine/c;)Lcom/aide/engine/J;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/aide/engine/J;->j6(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$i;->DW:Z

    if-eqz v1, :cond_29

    const-wide v2, -0x462936ba56fefc4dL  # -4.493789372198462E-30

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    throw v0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;III)V
    .registers 19
    .annotation runtime Labcd/su;
        method = -0x117cb1b7dd7cdc81L
    .end annotation

    move-object v0, p0

    sget-boolean v1, Lcom/aide/engine/c$b$i;->j6:Z

    if-eqz v1, :cond_41

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    new-instance v2, Ljava/lang/Boolean;

    move v6, p3

    invoke-direct {v2, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    aput-object p4, v1, v2

    new-instance v2, Ljava/lang/Integer;

    move/from16 v8, p5

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/Integer;

    move/from16 v9, p6

    invoke-direct {v2, v9}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/Integer;

    move/from16 v10, p7

    invoke-direct {v2, v10}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-wide v2, 0x2a10a9c282dba48L

    invoke-static {v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_48

    :cond_41
    move v6, p3

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    :goto_48
    iget-object v1, v0, Lcom/aide/engine/c$b$i;->Zo:Lcom/aide/engine/c$b;

    iget-object v1, v1, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v1}, Lcom/aide/engine/c;->oY(Lcom/aide/engine/c;)Lcom/aide/engine/J;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-interface/range {v3 .. v10}, Lcom/aide/engine/J;->j6(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;III)V

    return-void
.end method

.method public j6(Ljava/lang/String;Ljava/util/Hashtable;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x702a93772250ccbL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$i;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x240c9d6b63fac8b0L  # 4.921126059878511E-135

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/engine/c$b$i;->Zo:Lcom/aide/engine/c$b;

    iget-object v0, v0, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v0}, Lcom/aide/engine/c;->oY(Lcom/aide/engine/c;)Lcom/aide/engine/J;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/aide/engine/J;->j6(Ljava/lang/String;Ljava/util/Hashtable;)V
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$i;->DW:Z

    if-eqz v1, :cond_29

    const-wide v2, 0x240c9d6b63fac8b0L  # 4.921126059878511E-135

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    throw v0
.end method

.method public tp()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x510577767a48167L
    .end annotation

    const-wide v0, -0xfcd61ad7a822c0L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$i;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$i;->Zo:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->oY(Lcom/aide/engine/c;)Lcom/aide/engine/J;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/engine/c$b$i;->Hw:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/aide/engine/J;->gn(Ljava/util/List;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aide/engine/c$b$i;->Hw:Ljava/util/ArrayList;
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$i;->DW:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public tp(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x1fc9640cf193ba0L
    .end annotation

    const-wide v0, 0x699c4d4f721e67cbL  # 5.415943890530312E200

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$i;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$i;->Zo:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->oY(Lcom/aide/engine/c;)Lcom/aide/engine/J;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/aide/engine/J;->gn(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$i;->DW:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public u7()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x51f40d7b80cb079L
    .end annotation

    const-wide v0, -0xafb61b58db146bcL

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$i;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$i;->Zo:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->oY(Lcom/aide/engine/c;)Lcom/aide/engine/J;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/engine/c$b$i;->Hw:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/aide/engine/J;->tp(Ljava/util/List;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aide/engine/c$b$i;->Hw:Ljava/util/ArrayList;
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$i;->DW:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public u7(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x23f00cb10a0f2cb8L
    .end annotation

    const-wide v0, 0x111dbc548de081d3L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$i;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$i;->Zo:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->oY(Lcom/aide/engine/c;)Lcom/aide/engine/J;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/aide/engine/J;->Zo(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$i;->DW:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public v5()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1e9d8adc5e1e3840L
    .end annotation

    const-wide v0, 0x10579dd461acb927L  # 6.084701248189448E-230

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$i;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$i;->Zo:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->oY(Lcom/aide/engine/c;)Lcom/aide/engine/J;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/engine/c$b$i;->Hw:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/aide/engine/J;->v5(Ljava/util/List;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aide/engine/c$b$i;->Hw:Ljava/util/ArrayList;
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$i;->DW:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public v5(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xee430b9cf9571d4L
    .end annotation

    const-wide v0, 0x406e1254ba63eddL

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$i;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$i;->Zo:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->oY(Lcom/aide/engine/c;)Lcom/aide/engine/J;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/aide/engine/J;->v5(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$i;->DW:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public we()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x47b389fbce65811L
    .end annotation

    const-wide v0, -0x5a85d812e05b350L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$i;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$i;->Zo:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->oY(Lcom/aide/engine/c;)Lcom/aide/engine/J;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/engine/c$b$i;->Hw:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/aide/engine/J;->j6(Ljava/util/List;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aide/engine/c$b$i;->Hw:Ljava/util/ArrayList;
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$i;->DW:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v2
.end method

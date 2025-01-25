.class public Lcom/aide/ui/trainer/g$d;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/trainer/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
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
.field private FH:Lorg/w3c/dom/Element;
    .annotation runtime Labcd/ru;
        field = 0x358ae902bc6277c9L
    .end annotation
.end field

.field private Hw:Lcom/aide/ui/trainer/g$g;
    .annotation runtime Labcd/ru;
        field = 0x1a46197d69b0a71fL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/trainer/g$d;

    const-wide v1, -0x7280ec929e720dc4L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/aide/ui/trainer/g$g;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$d;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x181a0d325add1d68L  # -3.129328174200038E192

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/ui/trainer/g$d;->FH:Lorg/w3c/dom/Element;

    iput-object p2, p0, Lcom/aide/ui/trainer/g$d;->Hw:Lcom/aide/ui/trainer/g$g;
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$d;->DW:Z

    if-eqz v1, :cond_26

    const-wide v2, -0x181a0d325add1d68L  # -3.129328174200038E192

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v0
.end method


# virtual methods
.method public DW()I
    .registers 5

    const-wide v0, 0x19242ba85fd978a8L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/g$d;->FH:Lorg/w3c/dom/Element;

    const-string v3, "CodeHint"

    invoke-static {v2, v3}, Lcom/aide/ui/trainer/g;->v5(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    if-eqz v2, :cond_18

    const/4 v0, 0x0

    return v0

    :cond_18
    iget-object v2, p0, Lcom/aide/ui/trainer/g$d;->FH:Lorg/w3c/dom/Element;

    const-string v3, "CodeHint_1"

    invoke-static {v2, v3}, Lcom/aide/ui/trainer/g;->v5(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    if-eqz v2, :cond_24

    const/4 v0, 0x1

    return v0

    :cond_24
    iget-object v2, p0, Lcom/aide/ui/trainer/g$d;->FH:Lorg/w3c/dom/Element;

    const-string v3, "CodeHint_2"

    invoke-static {v2, v3}, Lcom/aide/ui/trainer/g;->v5(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    if-eqz v2, :cond_30

    const/4 v0, 0x2

    return v0

    :cond_30
    iget-object v2, p0, Lcom/aide/ui/trainer/g$d;->FH:Lorg/w3c/dom/Element;

    const-string v3, "CodeHint_3"

    invoke-static {v2, v3}, Lcom/aide/ui/trainer/g;->v5(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    if-eqz v2, :cond_3c

    const/4 v0, 0x3

    return v0

    :cond_3c
    iget-object v2, p0, Lcom/aide/ui/trainer/g$d;->FH:Lorg/w3c/dom/Element;

    const-string v3, "CodeHint_4"

    invoke-static {v2, v3}, Lcom/aide/ui/trainer/g;->v5(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    if-eqz v2, :cond_48

    const/4 v0, 0x4

    return v0

    :cond_48
    iget-object v2, p0, Lcom/aide/ui/trainer/g$d;->FH:Lorg/w3c/dom/Element;

    const-string v3, "CodeHint_5"

    invoke-static {v2, v3}, Lcom/aide/ui/trainer/g;->v5(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    if-eqz v2, :cond_54

    const/4 v0, 0x5

    return v0

    :cond_54
    iget-object v2, p0, Lcom/aide/ui/trainer/g$d;->FH:Lorg/w3c/dom/Element;

    const-string v3, "CodeHint_6"

    invoke-static {v2, v3}, Lcom/aide/ui/trainer/g;->v5(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    if-eqz v2, :cond_60

    const/4 v0, 0x6

    return v0

    :cond_60
    iget-object v2, p0, Lcom/aide/ui/trainer/g$d;->FH:Lorg/w3c/dom/Element;

    const-string v3, "CodeHint_7"

    invoke-static {v2, v3}, Lcom/aide/ui/trainer/g;->v5(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    if-eqz v2, :cond_6c

    const/4 v0, 0x7

    return v0

    :cond_6c
    iget-object v2, p0, Lcom/aide/ui/trainer/g$d;->FH:Lorg/w3c/dom/Element;

    const-string v3, "CodeHint_8"

    invoke-static {v2, v3}, Lcom/aide/ui/trainer/g;->v5(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    if-eqz v2, :cond_79

    const/16 v0, 0x8

    return v0

    :cond_79
    iget-object v2, p0, Lcom/aide/ui/trainer/g$d;->FH:Lorg/w3c/dom/Element;

    const-string v3, "CodeHint_9"

    invoke-static {v2, v3}, Lcom/aide/ui/trainer/g;->v5(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    if-eqz v2, :cond_86

    const/16 v0, 0x9

    return v0

    :cond_86
    iget-object v2, p0, Lcom/aide/ui/trainer/g$d;->FH:Lorg/w3c/dom/Element;

    const-string v3, "CodeHint_10"

    invoke-static {v2, v3}, Lcom/aide/ui/trainer/g;->v5(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0
    :try_end_8e
    .catchall {:try_start_5 .. :try_end_8e} :catchall_95

    if-eqz v0, :cond_93

    const/16 v0, 0xa

    return v0

    :cond_93
    const/4 v0, -0x1

    return v0

    :catchall_95
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$d;->DW:Z

    if-eqz v3, :cond_9d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_9d
    throw v2
.end method

.method public DW(I)Lcom/aide/ui/trainer/g$f;
    .registers 7

    const-wide v0, 0xe61b8fb2f24da8dL  # 2.126280072660184E-239

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    new-instance v2, Lcom/aide/ui/trainer/g$f;

    iget-object v3, p0, Lcom/aide/ui/trainer/g$d;->FH:Lorg/w3c/dom/Element;

    const-string v4, "SourceCode"

    invoke-static {v3, v4, p1}, Lcom/aide/ui/trainer/g;->j6(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/aide/ui/trainer/g$f;-><init>(Lorg/w3c/dom/Element;)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return-object v2

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$d;->DW:Z

    if-eqz v3, :cond_27

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v2
.end method

.method public EQ()I
    .registers 6

    const-wide v0, 0x10c2a12828a6be80L  # 6.1437697814172E-228

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/g$d;->FH:Lorg/w3c/dom/Element;

    const-string v3, "Run"

    invoke-static {v2, v3}, Lcom/aide/ui/trainer/g;->v5(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    const-string v3, "success_duration"

    const/16 v4, 0xa

    invoke-static {v2, v3, v4}, Lcom/aide/ui/trainer/g;->j6(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return v0

    :catchall_1d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$d;->DW:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public FH()Ljava/lang/String;
    .registers 5

    const-wide v0, -0x1a443590a4dc92f7L  # -1.1531819817033796E182

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/trainer/g$d;->J8()Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/aide/ui/trainer/g$d;->FH:Lorg/w3c/dom/Element;

    const-string v3, "designer_task"

    invoke-static {v2, v3}, Lcom/aide/ui/trainer/g;->FH(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1b
    invoke-virtual {p0}, Lcom/aide/ui/trainer/g$d;->J0()Ljava/lang/String;

    move-result-object v0
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_20

    return-object v0

    :catchall_20
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$d;->DW:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method

.method public Hw()I
    .registers 5

    const-wide v0, -0x18a5ba66abc56d15L  # -7.315908858404917E189

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/g$d;->FH:Lorg/w3c/dom/Element;

    const-string v3, "ExpectedCode"

    invoke-static {v2, v3}, Lcom/aide/ui/trainer/g;->j6(Lorg/w3c/dom/Element;Ljava/lang/String;)I

    move-result v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$d;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public J0()Ljava/lang/String;
    .registers 5

    const-wide v0, -0x3eab3e198b81d960L  # -5441433.820199639

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/g$d;->FH:Lorg/w3c/dom/Element;

    const-string v3, "task"

    invoke-static {v2, v3}, Lcom/aide/ui/trainer/g;->FH(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$d;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public J8()Z
    .registers 5

    const-wide v0, 0x2c4a1c216c58cd10L  # 2.4447606243789092E-95

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/g$d;->FH:Lorg/w3c/dom/Element;

    const-string v3, "designer_task"

    invoke-static {v2, v3}, Lcom/aide/ui/trainer/g;->Zo(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$d;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public QX()Ljava/lang/String;
    .registers 5

    const-wide v0, -0x2c7bbfe85a149459L  # -2.1120365346997715E94

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/g$d;->FH:Lorg/w3c/dom/Element;

    const-string v3, "Run"

    invoke-static {v2, v3}, Lcom/aide/ui/trainer/g;->v5(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    const-string v3, "file"

    invoke-static {v2, v3}, Lcom/aide/ui/trainer/g;->FH(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    return-object v0

    :catchall_1b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$d;->DW:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method public VH()I
    .registers 6

    const-wide v0, -0x29d17081f71114b8L  # -1.4018100638179276E107

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/g$d;->FH:Lorg/w3c/dom/Element;

    const-string v3, "level"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Lcom/aide/ui/trainer/g;->j6(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return v0

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$d;->DW:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public Ws()Z
    .registers 5

    const-wide v0, -0x14c09e4400970560L  # -4.03008790608324E208

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/trainer/g$d;->VH()I

    move-result v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_16

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$d;->DW:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public XL()Z
    .registers 5

    const-wide v0, 0x1c1f308d625348fbL  # 3.152630768815533E-173

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/g$d;->FH:Lorg/w3c/dom/Element;

    const-string v3, "Run"

    invoke-static {v2, v3}, Lcom/aide/ui/trainer/g;->v5(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_1a

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$d;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public Zo()Ljava/lang/String;
    .registers 5

    const-wide v0, -0x16a71d62f84d9280L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/g$d;->Hw:Lcom/aide/ui/trainer/g$g;

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$i;->VH()Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-object v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$d;->DW:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public gn()Ljava/lang/String;
    .registers 5

    const-wide v0, -0x22a41bb134389911L  # -5.314408663235505E141

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/g$d;->FH:Lorg/w3c/dom/Element;

    const-string v3, "ExpectedOutput"

    invoke-static {v2, v3}, Lcom/aide/ui/trainer/g;->v5(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    const-string v3, "hint"

    invoke-static {v2, v3}, Lcom/aide/ui/trainer/g;->FH(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    return-object v0

    :catchall_1b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$d;->DW:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method public j6(I)Lcom/aide/ui/trainer/g$e;
    .registers 7

    const-wide v0, -0x16fe8f45c4ee4aacL  # -6.51841725682054E197

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    new-instance v2, Lcom/aide/ui/trainer/g$e;

    iget-object v3, p0, Lcom/aide/ui/trainer/g$d;->FH:Lorg/w3c/dom/Element;

    const-string v4, "ExpectedCode"

    invoke-static {v3, v4, p1}, Lcom/aide/ui/trainer/g;->j6(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/aide/ui/trainer/g$e;-><init>(Lorg/w3c/dom/Element;)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return-object v2

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$d;->DW:Z

    if-eqz v3, :cond_27

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v2
.end method

.method public j6()Ljava/lang/String;
    .registers 5

    const-wide v0, -0x2e591dcfbc1cae40L  # -2.2227579362233025E85

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/g$d;->FH:Lorg/w3c/dom/Element;

    const-string v3, "code_file"

    invoke-static {v2, v3}, Lcom/aide/ui/trainer/g;->Hw(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$d;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public tp()I
    .registers 5

    const-wide v0, -0x441506739135db35L  # -4.5697087139502354E-20

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/g$d;->FH:Lorg/w3c/dom/Element;

    const-string v3, "SourceCode"

    invoke-static {v2, v3}, Lcom/aide/ui/trainer/g;->j6(Lorg/w3c/dom/Element;Ljava/lang/String;)I

    move-result v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$d;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public u7()Ljava/lang/String;
    .registers 6

    const-wide v0, -0x7f39a98a15f4483L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/aide/ui/trainer/g$d;->FH:Lorg/w3c/dom/Element;

    const-string v4, "ExpectedOutput"

    invoke-static {v3, v4}, Lcom/aide/ui/trainer/g;->v5(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    const-string v4, "fail"

    invoke-static {v3, v4}, Lcom/aide/ui/trainer/g;->FH(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aide/ui/trainer/g$d;->gn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_33

    return-object v0

    :catchall_33
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$d;->DW:Z

    if-eqz v3, :cond_3b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3b
    throw v2
.end method

.method public v5()Ljava/lang/String;
    .registers 5

    const-wide v0, 0x5a8cf53e1ad84c99L  # 1.5681818454134177E128

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/g$d;->FH:Lorg/w3c/dom/Element;

    const-string v3, "ExpectedOutput"

    invoke-static {v2, v3}, Lcom/aide/ui/trainer/g;->v5(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-static {v2}, Lcom/aide/ui/trainer/g;->j6(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return-object v0

    :catchall_19
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$d;->DW:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method public we()Ljava/lang/String;
    .registers 5

    const-wide v0, -0x6b6c8adf96729191L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/g$d;->FH:Lorg/w3c/dom/Element;

    const-string v3, "Run"

    invoke-static {v2, v3}, Lcom/aide/ui/trainer/g;->v5(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    const-string v3, "success"

    invoke-static {v2, v3}, Lcom/aide/ui/trainer/g;->FH(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    return-object v0

    :catchall_1b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$d;->DW:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_23
    throw v2
.end method

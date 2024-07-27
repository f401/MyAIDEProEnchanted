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
    .registers 4

    const-wide v2, -0x7280ec929e720dc4L

    const-class v0, Lcom/aide/ui/trainer/g$d;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/aide/ui/trainer/g$g;)V
    .registers 10

    const-wide v2, -0x181a0d325add1d68L    # -3.129328174200038E192

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$d;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x181a0d325add1d68L    # -3.129328174200038E192

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/ui/trainer/g$d;->FH:Lorg/w3c/dom/Element;

    iput-object p2, p0, Lcom/aide/ui/trainer/g$d;->Hw:Lcom/aide/ui/trainer/g$g;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/trainer/g$d;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method


# virtual methods
.method public DW()I
    .registers 5

    const-wide v2, 0x19242ba85fd978a8L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$d;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x19242ba85fd978a8L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/trainer/g$d;->FH:Lorg/w3c/dom/Element;

    const-string v1, "CodeHint"

    invoke-static {v0, v1}, Lcom/aide/ui/trainer/g;->v5(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/aide/ui/trainer/g$d;->FH:Lorg/w3c/dom/Element;

    const-string v1, "CodeHint_1"

    invoke-static {v0, v1}, Lcom/aide/ui/trainer/g;->v5(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/aide/ui/trainer/g$d;->FH:Lorg/w3c/dom/Element;

    const-string v1, "CodeHint_2"

    invoke-static {v0, v1}, Lcom/aide/ui/trainer/g;->v5(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/aide/ui/trainer/g$d;->FH:Lorg/w3c/dom/Element;

    const-string v1, "CodeHint_3"

    invoke-static {v0, v1}, Lcom/aide/ui/trainer/g;->v5(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/aide/ui/trainer/g$d;->FH:Lorg/w3c/dom/Element;

    const-string v1, "CodeHint_4"

    invoke-static {v0, v1}, Lcom/aide/ui/trainer/g;->v5(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/aide/ui/trainer/g$d;->FH:Lorg/w3c/dom/Element;

    const-string v1, "CodeHint_5"

    invoke-static {v0, v1}, Lcom/aide/ui/trainer/g;->v5(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v0, 0x5

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/aide/ui/trainer/g$d;->FH:Lorg/w3c/dom/Element;

    const-string v1, "CodeHint_6"

    invoke-static {v0, v1}, Lcom/aide/ui/trainer/g;->v5(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/aide/ui/trainer/g$d;->FH:Lorg/w3c/dom/Element;

    const-string v1, "CodeHint_7"

    invoke-static {v0, v1}, Lcom/aide/ui/trainer/g;->v5(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x7

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/aide/ui/trainer/g$d;->FH:Lorg/w3c/dom/Element;

    const-string v1, "CodeHint_8"

    invoke-static {v0, v1}, Lcom/aide/ui/trainer/g;->v5(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_9

    const/16 v0, 0x8

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lcom/aide/ui/trainer/g$d;->FH:Lorg/w3c/dom/Element;

    const-string v1, "CodeHint_9"

    invoke-static {v0, v1}, Lcom/aide/ui/trainer/g;->v5(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_a

    const/16 v0, 0x9

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lcom/aide/ui/trainer/g$d;->FH:Lorg/w3c/dom/Element;

    const-string v1, "CodeHint_10"

    invoke-static {v0, v1}, Lcom/aide/ui/trainer/g;->v5(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_b

    const/16 v0, 0xa

    goto :goto_0

    :cond_b
    const/4 v0, -0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$d;->DW:Z

    if-eqz v1, :cond_c

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_c
    throw v0
.end method

.method public DW(I)Lcom/aide/ui/trainer/g$f;
    .registers 8

    const-wide v4, 0xe61b8fb2f24da8dL    # 2.126280072660184E-239

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$d;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xe61b8fb2f24da8dL    # 2.126280072660184E-239

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    new-instance v0, Lcom/aide/ui/trainer/g$f;

    iget-object v1, p0, Lcom/aide/ui/trainer/g$d;->FH:Lorg/w3c/dom/Element;

    const-string v2, "SourceCode"

    invoke-static {v1, v2, p1}, Lcom/aide/ui/trainer/g;->j6(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aide/ui/trainer/g$f;-><init>(Lorg/w3c/dom/Element;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$d;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public EQ()I
    .registers 7

    const-wide v4, 0x10c2a12828a6be80L    # 6.1437697814172E-228

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$d;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x10c2a12828a6be80L    # 6.1437697814172E-228

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/trainer/g$d;->FH:Lorg/w3c/dom/Element;

    const-string v1, "Run"

    invoke-static {v0, v1}, Lcom/aide/ui/trainer/g;->v5(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "success_duration"

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Lcom/aide/ui/trainer/g;->j6(Lorg/w3c/dom/Element;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$d;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH()Ljava/lang/String;
    .registers 5

    const-wide v2, -0x1a443590a4dc92f7L    # -1.1531819817033796E182

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$d;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1a443590a4dc92f7L    # -1.1531819817033796E182

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/trainer/g$d;->J8()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/trainer/g$d;->FH:Lorg/w3c/dom/Element;

    const-string v1, "designer_task"

    invoke-static {v0, v1}, Lcom/aide/ui/trainer/g;->FH(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/aide/ui/trainer/g$d;->J0()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$d;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public Hw()I
    .registers 5

    const-wide v2, -0x18a5ba66abc56d15L    # -7.315908858404917E189

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$d;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x18a5ba66abc56d15L    # -7.315908858404917E189

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/trainer/g$d;->FH:Lorg/w3c/dom/Element;

    const-string v1, "ExpectedCode"

    invoke-static {v0, v1}, Lcom/aide/ui/trainer/g;->j6(Lorg/w3c/dom/Element;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$d;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public J0()Ljava/lang/String;
    .registers 5

    const-wide v2, -0x3eab3e198b81d960L    # -5441433.820199639

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$d;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3eab3e198b81d960L    # -5441433.820199639

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/trainer/g$d;->FH:Lorg/w3c/dom/Element;

    const-string v1, "task"

    invoke-static {v0, v1}, Lcom/aide/ui/trainer/g;->FH(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$d;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public J8()Z
    .registers 5

    const-wide v2, 0x2c4a1c216c58cd10L    # 2.4447606243789092E-95

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$d;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2c4a1c216c58cd10L    # 2.4447606243789092E-95

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/trainer/g$d;->FH:Lorg/w3c/dom/Element;

    const-string v1, "designer_task"

    invoke-static {v0, v1}, Lcom/aide/ui/trainer/g;->Zo(Lorg/w3c/dom/Element;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$d;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public QX()Ljava/lang/String;
    .registers 5

    const-wide v2, -0x2c7bbfe85a149459L    # -2.1120365346997715E94

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$d;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2c7bbfe85a149459L    # -2.1120365346997715E94

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/trainer/g$d;->FH:Lorg/w3c/dom/Element;

    const-string v1, "Run"

    invoke-static {v0, v1}, Lcom/aide/ui/trainer/g;->v5(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "file"

    invoke-static {v0, v1}, Lcom/aide/ui/trainer/g;->FH(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$d;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public VH()I
    .registers 7

    const-wide v4, -0x29d17081f71114b8L    # -1.4018100638179276E107

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$d;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x29d17081f71114b8L    # -1.4018100638179276E107

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/trainer/g$d;->FH:Lorg/w3c/dom/Element;

    const-string v1, "level"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/aide/ui/trainer/g;->j6(Lorg/w3c/dom/Element;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$d;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Ws()Z
    .registers 7

    const-wide v4, -0x14c09e4400970560L    # -4.03008790608324E208

    const/4 v0, 0x1

    :try_start_0
    sget-boolean v1, Lcom/aide/ui/trainer/g$d;->j6:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x14c09e4400970560L    # -4.03008790608324E208

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/trainer/g$d;->VH()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$d;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public XL()Z
    .registers 5

    const-wide v2, 0x1c1f308d625348fbL    # 3.152630768815533E-173

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$d;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1c1f308d625348fbL    # 3.152630768815533E-173

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/trainer/g$d;->FH:Lorg/w3c/dom/Element;

    const-string v1, "Run"

    invoke-static {v0, v1}, Lcom/aide/ui/trainer/g;->v5(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$d;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public Zo()Ljava/lang/String;
    .registers 5

    const-wide v2, -0x16a71d62f84d9280L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$d;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x16a71d62f84d9280L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/trainer/g$d;->Hw:Lcom/aide/ui/trainer/g$g;

    invoke-virtual {v0}, Lcom/aide/ui/trainer/g$i;->VH()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$d;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public gn()Ljava/lang/String;
    .registers 5

    const-wide v2, -0x22a41bb134389911L    # -5.314408663235505E141

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$d;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x22a41bb134389911L    # -5.314408663235505E141

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/trainer/g$d;->FH:Lorg/w3c/dom/Element;

    const-string v1, "ExpectedOutput"

    invoke-static {v0, v1}, Lcom/aide/ui/trainer/g;->v5(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "hint"

    invoke-static {v0, v1}, Lcom/aide/ui/trainer/g;->FH(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$d;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(I)Lcom/aide/ui/trainer/g$e;
    .registers 8

    const-wide v4, -0x16fe8f45c4ee4aacL    # -6.51841725682054E197

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$d;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x16fe8f45c4ee4aacL    # -6.51841725682054E197

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    new-instance v0, Lcom/aide/ui/trainer/g$e;

    iget-object v1, p0, Lcom/aide/ui/trainer/g$d;->FH:Lorg/w3c/dom/Element;

    const-string v2, "ExpectedCode"

    invoke-static {v1, v2, p1}, Lcom/aide/ui/trainer/g;->j6(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aide/ui/trainer/g$e;-><init>(Lorg/w3c/dom/Element;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$d;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()Ljava/lang/String;
    .registers 5

    const-wide v2, -0x2e591dcfbc1cae40L    # -2.2227579362233025E85

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$d;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2e591dcfbc1cae40L    # -2.2227579362233025E85

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/trainer/g$d;->FH:Lorg/w3c/dom/Element;

    const-string v1, "code_file"

    invoke-static {v0, v1}, Lcom/aide/ui/trainer/g;->Hw(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$d;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public tp()I
    .registers 5

    const-wide v2, -0x441506739135db35L    # -4.5697087139502354E-20

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$d;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x441506739135db35L    # -4.5697087139502354E-20

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/trainer/g$d;->FH:Lorg/w3c/dom/Element;

    const-string v1, "SourceCode"

    invoke-static {v0, v1}, Lcom/aide/ui/trainer/g;->j6(Lorg/w3c/dom/Element;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$d;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public u7()Ljava/lang/String;
    .registers 7

    const-wide v4, -0x7f39a98a15f4483L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$d;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x7f39a98a15f4483L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aide/ui/trainer/g$d;->FH:Lorg/w3c/dom/Element;

    const-string v2, "ExpectedOutput"

    invoke-static {v1, v2}, Lcom/aide/ui/trainer/g;->v5(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    const-string v2, "fail"

    invoke-static {v1, v2}, Lcom/aide/ui/trainer/g;->FH(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aide/ui/trainer/g$d;->gn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$d;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public v5()Ljava/lang/String;
    .registers 5

    const-wide v2, 0x5a8cf53e1ad84c99L    # 1.5681818454134177E128

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$d;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x5a8cf53e1ad84c99L    # 1.5681818454134177E128

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/trainer/g$d;->FH:Lorg/w3c/dom/Element;

    const-string v1, "ExpectedOutput"

    invoke-static {v0, v1}, Lcom/aide/ui/trainer/g;->v5(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/ui/trainer/g;->j6(Lorg/w3c/dom/Element;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$d;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public we()Ljava/lang/String;
    .registers 5

    const-wide v2, -0x6b6c8adf96729191L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$d;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x6b6c8adf96729191L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/trainer/g$d;->FH:Lorg/w3c/dom/Element;

    const-string v1, "Run"

    invoke-static {v0, v1}, Lcom/aide/ui/trainer/g;->v5(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "success"

    invoke-static {v0, v1}, Lcom/aide/ui/trainer/g;->FH(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$d;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

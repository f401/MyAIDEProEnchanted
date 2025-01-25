.class public Lcom/aide/ui/trainer/g$a;
.super Lcom/aide/ui/trainer/g$c;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/trainer/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static tp:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static u7:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/trainer/g$a;

    const-wide v1, -0x5de48b9b8490eee7L  # -2.198660285544E-144

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/w3c/dom/Document;ILcom/aide/ui/trainer/g$b;)V
    .registers 14

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$a;->u7:Z

    if-eqz v0, :cond_15

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x6cce488e0887d920L

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aide/ui/trainer/g$c;-><init>(Ljava/lang/String;Lorg/w3c/dom/Document;ILcom/aide/ui/trainer/g$b;)V
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$a;->tp:Z

    if-eqz v1, :cond_30

    const-wide v2, 0x6cce488e0887d920L

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v0
.end method

.method private QX()Lcom/aide/ui/trainer/g$h;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x2b89db075e6d884dL
    .end annotation

    const-wide v0, -0x7dcb7f745a8ab3fL  # -5.093124642599157E270

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$a;->u7:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/ui/trainer/g$h;

    iget-object v3, p0, Lcom/aide/ui/trainer/g$c;->FH:Lorg/w3c/dom/Element;

    const-string v4, "Files"

    invoke-static {v3, v4}, Lcom/aide/ui/trainer/g;->v5(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/aide/ui/trainer/g$h;-><init>(Lorg/w3c/dom/Element;)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return-object v2

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$a;->tp:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method static synthetic j6(Lcom/aide/ui/trainer/g$a;)Lcom/aide/ui/trainer/g$h;
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/trainer/g$a;->QX()Lcom/aide/ui/trainer/g$h;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public FH(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 6

    const-wide v0, -0x4fa829ac87ff5d80L  # -8.234486928841201E-76

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$a;->u7:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const-string v2, "templates"

    invoke-virtual {p0}, Lcom/aide/ui/trainer/g$c;->v5()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/aide/ui/trainer/g;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return-object p1

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$a;->tp:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public Ws()Ljava/lang/String;
    .registers 5

    const-wide v0, 0x3b4953b35bf74b23L  # 4.189993321991563E-23

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$a;->u7:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/g$c;->FH:Lorg/w3c/dom/Element;

    const-string v3, "full_title"

    invoke-static {v2, v3}, Lcom/aide/ui/trainer/g;->FH(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$a;->tp:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public j6(I)Lcom/aide/ui/trainer/g$g;
    .registers 7

    const-wide v0, -0x104edc97747a1befL  # -1.0393571299186726E230

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$a;->u7:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    invoke-virtual {p0, p1}, Lcom/aide/ui/trainer/g$c;->DW(I)Lorg/w3c/dom/Element;

    move-result-object v2

    iget v3, p0, Lcom/aide/ui/trainer/g$c;->v5:I

    if-lt p1, v3, :cond_16

    const/4 v3, 0x1

    goto :goto_17

    :cond_16
    const/4 v3, 0x0

    :goto_17
    new-instance v4, Lcom/aide/ui/trainer/g$g;

    invoke-direct {v4, p0, v2, p1, v3}, Lcom/aide/ui/trainer/g$g;-><init>(Lcom/aide/ui/trainer/g$a;Lorg/w3c/dom/Element;IZ)V
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-object v4

    :catchall_1d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$a;->tp:Z

    if-eqz v3, :cond_2a

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2a
    throw v2
.end method

.method public j6(Ljava/lang/String;)Lcom/aide/ui/trainer/g$g;
    .registers 6

    const-wide v0, -0x9c9fb5bfd0b8e00L  # -2.708299180070916E261

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$a;->u7:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-super {p0, p1}, Lcom/aide/ui/trainer/g$c;->j6(Ljava/lang/String;)Lcom/aide/ui/trainer/g$i;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/trainer/g$g;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-object v2

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$a;->tp:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public bridge synthetic j6(I)Lcom/aide/ui/trainer/g$i;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/aide/ui/trainer/g$a;->j6(I)Lcom/aide/ui/trainer/g$g;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic j6(Ljava/lang/String;)Lcom/aide/ui/trainer/g$i;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/aide/ui/trainer/g$a;->j6(Ljava/lang/String;)Lcom/aide/ui/trainer/g$g;

    move-result-object p1

    return-object p1
.end method

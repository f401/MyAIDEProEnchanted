.class public Lcom/aide/ui/trainer/g$j;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/trainer/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
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
        field = -0x153b4c9de8fc9778L
    .end annotation
.end field

.field private Hw:Lcom/aide/ui/trainer/g$c;
    .annotation runtime Labcd/ru;
        field = 0xc6ef732ee77c9bbL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/trainer/g$j;

    const-wide v1, 0x4873a768038eb37L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/trainer/g$c;Lorg/w3c/dom/Element;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$j;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x31cf34e95fbc1430L  # -4.527468496946276E68

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/aide/ui/trainer/g$j;->FH:Lorg/w3c/dom/Element;

    iput-object p1, p0, Lcom/aide/ui/trainer/g$j;->Hw:Lcom/aide/ui/trainer/g$c;
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$j;->DW:Z

    if-eqz v1, :cond_26

    const-wide v2, -0x31cf34e95fbc1430L  # -4.527468496946276E68

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v0
.end method


# virtual methods
.method public DW()Lcom/aide/ui/trainer/g$c;
    .registers 5

    const-wide v0, 0x44ca2ef20d5bce4L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/ui/trainer/g$j;->Hw:Lcom/aide/ui/trainer/g$c;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$j;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public FH()Ljava/lang/String;
    .registers 5

    const-wide v0, 0x47aec59e45aa4becL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/g$j;->FH:Lorg/w3c/dom/Element;

    const-string v3, "description"

    invoke-static {v2, v3}, Lcom/aide/ui/trainer/g;->FH(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/aide/ui/trainer/g$j;->u7()Z

    move-result v3

    if-eqz v3, :cond_2b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (en)"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_2c

    :cond_2b
    return-object v2

    :catchall_2c
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$j;->DW:Z

    if-eqz v3, :cond_34

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_34
    throw v2
.end method

.method public Hw()Ljava/lang/String;
    .registers 5

    const-wide v0, -0x1773497f067bb6f4L  # -4.1920296413148E195

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/g$j;->FH:Lorg/w3c/dom/Element;

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/aide/ui/trainer/g;->Hw(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$j;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public VH()J
    .registers 6

    const-wide v0, 0x3b41b4493883f861L  # 2.928921191513965E-23

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_28

    :cond_c
    :try_start_c
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/aide/ui/trainer/g$j;->FH:Lorg/w3c/dom/Element;

    const-string v4, "release_date"

    invoke-static {v3, v4}, Lcom/aide/ui/trainer/g;->Hw(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_23
    .catch Ljava/text/ParseException; {:try_start_c .. :try_end_23} :catch_24
    .catchall {:try_start_c .. :try_end_23} :catchall_28

    return-wide v0

    :catch_24
    move-exception v0

    const-wide/16 v0, 0x0

    return-wide v0

    :catchall_28
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$j;->DW:Z

    if-eqz v3, :cond_30

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_30
    throw v2
.end method

.method public Zo()Ljava/lang/String;
    .registers 5

    const-wide v0, 0x2fe919c996d17d0fL  # 6.774192331867121E-78

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/g$j;->FH:Lorg/w3c/dom/Element;

    const-string v3, "project_dir"

    invoke-static {v2, v3}, Lcom/aide/ui/trainer/g;->Hw(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$j;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public gn()Ljava/lang/String;
    .registers 5

    const-wide v0, 0x1bfe860fef07100fL  # 7.713285661404452E-174

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/g$j;->FH:Lorg/w3c/dom/Element;

    const-string v3, "title"

    invoke-static {v2, v3}, Lcom/aide/ui/trainer/g;->FH(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$j;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public j6()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "CodeFile"

    const-wide v1, 0xcf820eddb83b3e8L

    :try_start_7
    sget-boolean v3, Lcom/aide/ui/trainer/g$j;->j6:Z

    if-eqz v3, :cond_e

    invoke-static {v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_e
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_14
    iget-object v5, p0, Lcom/aide/ui/trainer/g$j;->FH:Lorg/w3c/dom/Element;

    invoke-static {v5, v0}, Lcom/aide/ui/trainer/g;->j6(Lorg/w3c/dom/Element;Ljava/lang/String;)I

    move-result v5

    if-ge v4, v5, :cond_2e

    iget-object v5, p0, Lcom/aide/ui/trainer/g$j;->FH:Lorg/w3c/dom/Element;

    invoke-static {v5, v0, v4}, Lcom/aide/ui/trainer/g;->j6(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v5

    const-string v6, "name"

    invoke-static {v5, v6}, Lcom/aide/ui/trainer/g;->Hw(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_2f

    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_2e
    return-object v3

    :catchall_2f
    move-exception v0

    sget-boolean v3, Lcom/aide/ui/trainer/g$j;->DW:Z

    if-eqz v3, :cond_37

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_37
    goto :goto_39

    :goto_38
    throw v0

    :goto_39
    goto :goto_38
.end method

.method public u7()Z
    .registers 5

    const-string v0, "en"

    const-wide v1, -0xeff073b11464ec3L  # -2.158506526372522E236

    :try_start_7
    sget-boolean v3, Lcom/aide/ui/trainer/g$j;->j6:Z

    if-eqz v3, :cond_e

    invoke-static {v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_e
    invoke-virtual {p0}, Lcom/aide/ui/trainer/g$j;->v5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-static {}, Lcom/aide/ui/trainer/g;->FH()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_26

    if-nez v0, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    return v0

    :catchall_26
    move-exception v0

    sget-boolean v3, Lcom/aide/ui/trainer/g$j;->DW:Z

    if-eqz v3, :cond_2e

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2e
    throw v0
.end method

.method public v5()Ljava/lang/String;
    .registers 5

    const-wide v0, -0x18ace705fd2a787fL  # -5.318085061229539E189

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/g$j;->FH:Lorg/w3c/dom/Element;

    const-string v3, "title"

    invoke-static {v2, v3}, Lcom/aide/ui/trainer/g;->DW(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$j;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

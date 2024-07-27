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
    .registers 4

    const-wide v2, 0x4873a768038eb37L

    const-class v0, Lcom/aide/ui/trainer/g$j;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/trainer/g$c;Lorg/w3c/dom/Element;)V
    .registers 10

    const-wide v2, -0x31cf34e95fbc1430L    # -4.527468496946276E68

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$j;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x31cf34e95fbc1430L    # -4.527468496946276E68

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/aide/ui/trainer/g$j;->FH:Lorg/w3c/dom/Element;

    iput-object p1, p0, Lcom/aide/ui/trainer/g$j;->Hw:Lcom/aide/ui/trainer/g$c;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/trainer/g$j;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method


# virtual methods
.method public DW()Lcom/aide/ui/trainer/g$c;
    .registers 5

    const-wide v2, 0x44ca2ef20d5bce4L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$j;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x44ca2ef20d5bce4L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/trainer/g$j;->Hw:Lcom/aide/ui/trainer/g$c;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$j;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH()Ljava/lang/String;
    .registers 5

    const-wide v2, 0x47aec59e45aa4becL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$j;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x47aec59e45aa4becL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/trainer/g$j;->FH:Lorg/w3c/dom/Element;

    const-string v1, "description"

    invoke-static {v0, v1}, Lcom/aide/ui/trainer/g;->FH(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/aide/ui/trainer/g$j;->u7()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (en)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$j;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public Hw()Ljava/lang/String;
    .registers 5

    const-wide v2, -0x1773497f067bb6f4L    # -4.1920296413148E195

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$j;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1773497f067bb6f4L    # -4.1920296413148E195

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/trainer/g$j;->FH:Lorg/w3c/dom/Element;

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/aide/ui/trainer/g;->Hw(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$j;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public VH()J
    .registers 7

    const-wide v4, 0x3b41b4493883f861L    # 2.928921191513965E-23

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$j;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3b41b4493883f861L    # 2.928921191513965E-23

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aide/ui/trainer/g$j;->FH:Lorg/w3c/dom/Element;

    const-string v2, "release_date"

    invoke-static {v1, v2}, Lcom/aide/ui/trainer/g;->Hw(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$j;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Zo()Ljava/lang/String;
    .registers 5

    const-wide v2, 0x2fe919c996d17d0fL    # 6.774192331867121E-78

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$j;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2fe919c996d17d0fL    # 6.774192331867121E-78

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/trainer/g$j;->FH:Lorg/w3c/dom/Element;

    const-string v1, "project_dir"

    invoke-static {v0, v1}, Lcom/aide/ui/trainer/g;->Hw(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$j;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public gn()Ljava/lang/String;
    .registers 5

    const-wide v2, 0x1bfe860fef07100fL    # 7.713285661404452E-174

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$j;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1bfe860fef07100fL    # 7.713285661404452E-174

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/trainer/g$j;->FH:Lorg/w3c/dom/Element;

    const-string v1, "title"

    invoke-static {v0, v1}, Lcom/aide/ui/trainer/g;->FH(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$j;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v4, 0xcf820eddb83b3e8L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$j;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xcf820eddb83b3e8L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/aide/ui/trainer/g$j;->FH:Lorg/w3c/dom/Element;

    const-string v3, "CodeFile"

    invoke-static {v2, v3}, Lcom/aide/ui/trainer/g;->j6(Lorg/w3c/dom/Element;Ljava/lang/String;)I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/aide/ui/trainer/g$j;->FH:Lorg/w3c/dom/Element;

    const-string v3, "CodeFile"

    invoke-static {v2, v3, v0}, Lcom/aide/ui/trainer/g;->j6(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v2

    const-string v3, "name"

    invoke-static {v2, v3}, Lcom/aide/ui/trainer/g;->Hw(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$j;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    return-object v1
.end method

.method public u7()Z
    .registers 5

    const-wide v2, -0xeff073b11464ec3L    # -2.158506526372522E236

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$j;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xeff073b11464ec3L    # -2.158506526372522E236

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const-string v0, "en"

    invoke-virtual {p0}, Lcom/aide/ui/trainer/g$j;->v5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "en"

    invoke-static {}, Lcom/aide/ui/trainer/g;->FH()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$j;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public v5()Ljava/lang/String;
    .registers 5

    const-wide v2, -0x18ace705fd2a787fL    # -5.318085061229539E189

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$j;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x18ace705fd2a787fL    # -5.318085061229539E189

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/trainer/g$j;->FH:Lorg/w3c/dom/Element;

    const-string v1, "title"

    invoke-static {v0, v1}, Lcom/aide/ui/trainer/g;->DW(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$j;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

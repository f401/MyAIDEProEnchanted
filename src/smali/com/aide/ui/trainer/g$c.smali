.class public Lcom/aide/ui/trainer/g$c;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/trainer/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
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
.field protected FH:Lorg/w3c/dom/Element;
    .annotation runtime Labcd/ru;
        field = -0x376d8f8aef04cb6dL
    .end annotation
.end field

.field private Hw:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x19f7a73f16294f89L
    .end annotation
.end field

.field private VH:Z
    .annotation runtime Labcd/ru;
        field = 0xdf939caf0ee295fL
    .end annotation
.end field

.field private Zo:I
    .annotation runtime Labcd/ru;
        field = 0x16773b6f259cc38dL
    .end annotation
.end field

.field private gn:Lcom/aide/ui/trainer/g$b;
    .annotation runtime Labcd/ru;
        field = -0x3dbed84ed883f2bL
    .end annotation
.end field

.field protected v5:I
    .annotation runtime Labcd/ru;
        field = -0x2e69ea929201bdd5L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x1c3693469695b5f8L    # 9.127586300078546E-173

    const-class v0, Lcom/aide/ui/trainer/g$c;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/w3c/dom/Document;ILcom/aide/ui/trainer/g$b;)V
    .registers 14

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$c;->j6:Z

    if-eqz v0, :cond_0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x20f933ec15538d5dL    # -5.830005571323792E149

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/aide/ui/trainer/g;->j6(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Element;

    move-result-object v1

    iput-object v1, p0, Lcom/aide/ui/trainer/g$c;->FH:Lorg/w3c/dom/Element;

    iput-object p1, p0, Lcom/aide/ui/trainer/g$c;->Hw:Ljava/lang/String;

    iput p3, p0, Lcom/aide/ui/trainer/g$c;->Zo:I

    iput-object p4, p0, Lcom/aide/ui/trainer/g$c;->gn:Lcom/aide/ui/trainer/g$b;

    invoke-static {}, Lcom/aide/ui/U;->ef()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p4, Lcom/aide/ui/trainer/g$b;->v5:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lcom/aide/ui/trainer/g$c;->VH:Z

    invoke-static {}, Lcom/aide/ui/U;->cb()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    iput v0, p0, Lcom/aide/ui/trainer/g$c;->v5:I

    :goto_0
    return-void

    :cond_3
    const/4 v0, 0x2

    iput v0, p0, Lcom/aide/ui/trainer/g$c;->v5:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/trainer/g$c;->DW:Z

    if-eqz v0, :cond_4

    const-wide v2, -0x20f933ec15538d5dL    # -5.830005571323792E149

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v5, p1

    move-object v6, p2

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method


# virtual methods
.method public DW()Ljava/lang/String;
    .registers 5

    const-wide v2, 0x51815c0a22cd6fb8L    # 4.215477282322753E84

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$c;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x51815c0a22cd6fb8L    # 4.215477282322753E84

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/trainer/g$c;->FH:Lorg/w3c/dom/Element;

    const-string v1, "code_template"

    invoke-static {v0, v1}, Lcom/aide/ui/trainer/g;->FH(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$c;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected DW(I)Lorg/w3c/dom/Element;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x213eb8dfb4cc8ac8L
    .end annotation

    const-wide v2, -0x2bbf775deeb53731L    # -7.06316357727219E97

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$c;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2bbf775deeb53731L    # -7.06316357727219E97

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/trainer/g$c;->FH:Lorg/w3c/dom/Element;

    const-string v1, "Lesson"

    invoke-static {v0, v1, p1}, Lcom/aide/ui/trainer/g;->j6(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$c;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public DW(Ljava/lang/String;)Z
    .registers 6

    const-wide v2, -0x649ed3d7ee07cc4L    # -1.956423591522842E278

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$c;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x649ed3d7ee07cc4L    # -1.956423591522842E278

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/aide/ui/trainer/g$c;->j6(Ljava/lang/String;)Lcom/aide/ui/trainer/g$i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/trainer/g$i;->j6()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$c;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public EQ()I
    .registers 5

    const-wide v2, 0x154b9a190c5481b9L    # 4.298655685949094E-206

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$c;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x154b9a190c5481b9L    # 4.298655685949094E-206

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/trainer/g$c;->FH:Lorg/w3c/dom/Element;

    const-string v1, "Sample"

    invoke-static {v0, v1}, Lcom/aide/ui/trainer/g;->j6(Lorg/w3c/dom/Element;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$c;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH(I)Lcom/aide/ui/trainer/g$j;
    .registers 8

    const-wide v4, 0xa0c9ee6d64cee43L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$c;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xa0c9ee6d64cee43L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    new-instance v0, Lcom/aide/ui/trainer/g$j;

    iget-object v1, p0, Lcom/aide/ui/trainer/g$c;->FH:Lorg/w3c/dom/Element;

    const-string v2, "Sample"

    invoke-static {v1, v2, p1}, Lcom/aide/ui/trainer/g;->j6(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/aide/ui/trainer/g$j;-><init>(Lcom/aide/ui/trainer/g$c;Lorg/w3c/dom/Element;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$c;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH()Ljava/lang/String;
    .registers 5

    const-wide v2, -0x67c93e9a24608b85L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$c;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x67c93e9a24608b85L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/trainer/g$c;->FH:Lorg/w3c/dom/Element;

    const-string v1, "explore_section"

    invoke-static {v0, v1}, Lcom/aide/ui/trainer/g;->FH(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$c;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw()I
    .registers 5

    const-wide v2, 0xe790ab6dea4cfdL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$c;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xe790ab6dea4cfdL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/trainer/g$c;->FH:Lorg/w3c/dom/Element;

    const-string v1, "icon"

    invoke-static {v0, v1}, Lcom/aide/ui/trainer/g;->Hw(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-lez v1, :cond_1

    :try_start_1
    const-class v1, Lcom/aide/ui/R$drawable;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_1
    const v0, 0x7f070076

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$c;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public J0()[Ljava/lang/String;
    .registers 7

    const-wide v4, 0x25afb777548a7d18L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$c;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x25afb777548a7d18L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/trainer/g$c;->FH:Lorg/w3c/dom/Element;

    const-string v1, "title"

    invoke-static {v0, v1}, Lcom/aide/ui/trainer/g;->FH(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    return-object v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$c;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public J8()Z
    .registers 5

    const-wide v2, 0x1153e74a0dcde4f9L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$c;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1153e74a0dcde4f9L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/aide/ui/trainer/g$c;->VH:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$c;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public VH()I
    .registers 5

    const-wide v2, -0x1e010199e559a72bL    # -1.1155055128539093E164

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$c;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1e010199e559a72bL    # -1.1155055128539093E164

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/trainer/g$c;->FH:Lorg/w3c/dom/Element;

    const-string v1, "Lesson"

    invoke-static {v0, v1}, Lcom/aide/ui/trainer/g;->j6(Lorg/w3c/dom/Element;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$c;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Zo()J
    .registers 9

    const-wide v6, -0x535fb6e208f83640L    # -9.759228357951223E-94

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$c;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x535fb6e208f83640L    # -9.759228357951223E-94

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/trainer/g$c;->tp()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/aide/ui/trainer/g$c;->VH()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_3

    invoke-virtual {p0, v2}, Lcom/aide/ui/trainer/g$c;->j6(I)Lcom/aide/ui/trainer/g$i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/ui/trainer/g$i;->u7()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$c;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const-wide v4, 0xce5a71356ee2c0L

    :try_start_0
    sget-boolean v2, Lcom/aide/ui/trainer/g$c;->j6:Z

    if-eqz v2, :cond_0

    const-wide v2, 0xce5a71356ee2c0L

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    instance-of v2, p1, Lcom/aide/ui/trainer/g$c;

    if-eqz v2, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/aide/ui/trainer/g$c;

    move-object v2, v0

    iget-object v2, v2, Lcom/aide/ui/trainer/g$c;->Hw:Ljava/lang/String;

    iget-object v3, p0, Lcom/aide/ui/trainer/g$c;->Hw:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$c;->DW:Z

    if-eqz v3, :cond_2

    invoke-static {v2, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v2
.end method

.method public gn()I
    .registers 5

    const-wide v2, -0x2831072fb3247b55L    # -9.534032149165113E114

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$c;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2831072fb3247b55L    # -9.534032149165113E114

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/aide/ui/trainer/g$c;->Zo:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$c;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(I)Lcom/aide/ui/trainer/g$i;
    .registers 8

    const-wide v4, 0x2fc443f4d381403L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$c;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2fc443f4d381403L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/aide/ui/trainer/g$c;->DW(I)Lorg/w3c/dom/Element;

    move-result-object v1

    iget v0, p0, Lcom/aide/ui/trainer/g$c;->v5:I

    if-lt p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    new-instance v2, Lcom/aide/ui/trainer/g$i;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/aide/ui/trainer/g$i;-><init>(Lcom/aide/ui/trainer/g$c;Lorg/w3c/dom/Element;IZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$c;->DW:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6(Ljava/lang/String;)Lcom/aide/ui/trainer/g$i;
    .registers 8

    const-wide v4, 0x16c41f8273507c4cL    # 5.257840660187937E-199

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$c;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x16c41f8273507c4cL    # 5.257840660187937E-199

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/trainer/g$c;->VH()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/aide/ui/trainer/g$c;->j6(I)Lcom/aide/ui/trainer/g$i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$i;->Zo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {p0, v0}, Lcom/aide/ui/trainer/g$c;->j6(I)Lcom/aide/ui/trainer/g$i;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$c;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public j6()Ljava/lang/String;
    .registers 5

    const-wide v2, -0x1e747dee38cac835L    # -7.734781096773784E161

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$c;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1e747dee38cac835L    # -7.734781096773784E161

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/trainer/g$c;->FH:Lorg/w3c/dom/Element;

    const-string v1, "code_section"

    invoke-static {v0, v1}, Lcom/aide/ui/trainer/g;->FH(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$c;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public tp()J
    .registers 7

    const-wide v4, -0x2309e9946df6a5a4L    # -6.57576250029553E139

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$c;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2309e9946df6a5a4L    # -6.57576250029553E139

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aide/ui/trainer/g$c;->FH:Lorg/w3c/dom/Element;

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

    sget-boolean v1, Lcom/aide/ui/trainer/g$c;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public u7()I
    .registers 5

    const-wide v2, -0x3a004d7b3b4c8bd0L    # -1.5695761729954707E29

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$c;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3a004d7b3b4c8bd0L    # -1.5695761729954707E29

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/trainer/g$c;->gn:Lcom/aide/ui/trainer/g$b;

    iget v0, v0, Lcom/aide/ui/trainer/g$b;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$c;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public v5()Ljava/lang/String;
    .registers 5

    const-wide v2, -0x18d0ffe911ad0e35L    # -1.0790806239148494E189

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$c;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x18d0ffe911ad0e35L    # -1.0790806239148494E189

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/trainer/g$c;->Hw:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$c;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public we()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/aide/ui/trainer/g$j;",
            ">;"
        }
    .end annotation

    const-wide v4, -0x14f934fb28f08a51L    # -3.658889822556457E207

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$c;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x14f934fb28f08a51L    # -3.658889822556457E207

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/aide/ui/trainer/g$c;->EQ()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/aide/ui/trainer/g$c;->FH(I)Lcom/aide/ui/trainer/g$j;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$c;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    return-object v1
.end method

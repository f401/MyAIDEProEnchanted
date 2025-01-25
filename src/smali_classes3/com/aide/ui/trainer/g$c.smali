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
    .registers 3

    const-class v0, Lcom/aide/ui/trainer/g$c;

    const-wide v1, 0x1c3693469695b5f8L  # 9.127586300078546E-173

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/w3c/dom/Document;ILcom/aide/ui/trainer/g$b;)V
    .registers 14

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$c;->j6:Z

    if-eqz v0, :cond_15

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x20f933ec15538d5dL  # -5.830005571323792E149

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/aide/ui/trainer/g;->j6(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Element;

    move-result-object v1

    iput-object v1, p0, Lcom/aide/ui/trainer/g$c;->FH:Lorg/w3c/dom/Element;

    iput-object p1, p0, Lcom/aide/ui/trainer/g$c;->Hw:Ljava/lang/String;

    iput p3, p0, Lcom/aide/ui/trainer/g$c;->Zo:I

    iput-object p4, p0, Lcom/aide/ui/trainer/g$c;->gn:Lcom/aide/ui/trainer/g$b;

    invoke-static {}, Lcom/aide/ui/U;->ef()Z

    move-result v1

    if-nez v1, :cond_39

    iget-object v1, p4, Lcom/aide/ui/trainer/g$b;->v5:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    :cond_39
    const/4 v0, 0x1

    :cond_3a
    iput-boolean v0, p0, Lcom/aide/ui/trainer/g$c;->VH:Z

    invoke-static {}, Lcom/aide/ui/U;->cb()Z

    move-result v0

    if-eqz v0, :cond_46

    const/4 v0, 0x3

    iput v0, p0, Lcom/aide/ui/trainer/g$c;->v5:I

    goto :goto_49

    :cond_46
    const/4 v0, 0x2

    iput v0, p0, Lcom/aide/ui/trainer/g$c;->v5:I
    :try_end_49
    .catchall {:try_start_0 .. :try_end_49} :catchall_4a

    :goto_49
    return-void

    :catchall_4a
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$c;->DW:Z

    if-eqz v1, :cond_61

    const-wide v2, -0x20f933ec15538d5dL  # -5.830005571323792E149

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_61
    throw v0
.end method


# virtual methods
.method public DW()Ljava/lang/String;
    .registers 5

    const-wide v0, 0x51815c0a22cd6fb8L  # 4.215477282322753E84

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$c;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/g$c;->FH:Lorg/w3c/dom/Element;

    const-string v3, "code_template"

    invoke-static {v2, v3}, Lcom/aide/ui/trainer/g;->FH(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$c;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method protected DW(I)Lorg/w3c/dom/Element;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x213eb8dfb4cc8ac8L
    .end annotation

    const-wide v0, -0x2bbf775deeb53731L  # -7.06316357727219E97

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$c;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/g$c;->FH:Lorg/w3c/dom/Element;

    const-string v3, "Lesson"

    invoke-static {v2, v3, p1}, Lcom/aide/ui/trainer/g;->j6(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object p1
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object p1

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$c;->DW:Z

    if-eqz v3, :cond_22

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public DW(Ljava/lang/String;)Z
    .registers 6

    const-wide v0, -0x649ed3d7ee07cc4L  # -1.956423591522842E278

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$c;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p0, p1}, Lcom/aide/ui/trainer/g$c;->j6(Ljava/lang/String;)Lcom/aide/ui/trainer/g$i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$i;->j6()Z

    move-result p1
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return p1

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$c;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public EQ()I
    .registers 5

    const-wide v0, 0x154b9a190c5481b9L  # 4.298655685949094E-206

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$c;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/g$c;->FH:Lorg/w3c/dom/Element;

    const-string v3, "Sample"

    invoke-static {v2, v3}, Lcom/aide/ui/trainer/g;->j6(Lorg/w3c/dom/Element;Ljava/lang/String;)I

    move-result v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$c;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public FH(I)Lcom/aide/ui/trainer/g$j;
    .registers 7

    const-wide v0, 0xa0c9ee6d64cee43L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$c;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    new-instance v2, Lcom/aide/ui/trainer/g$j;

    iget-object v3, p0, Lcom/aide/ui/trainer/g$c;->FH:Lorg/w3c/dom/Element;

    const-string v4, "Sample"

    invoke-static {v3, v4, p1}, Lcom/aide/ui/trainer/g;->j6(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/aide/ui/trainer/g$j;-><init>(Lcom/aide/ui/trainer/g$c;Lorg/w3c/dom/Element;)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return-object v2

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$c;->DW:Z

    if-eqz v3, :cond_27

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v2
.end method

.method public FH()Ljava/lang/String;
    .registers 5

    const-wide v0, -0x67c93e9a24608b85L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$c;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/g$c;->FH:Lorg/w3c/dom/Element;

    const-string v3, "explore_section"

    invoke-static {v2, v3}, Lcom/aide/ui/trainer/g;->FH(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$c;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public Hw()I
    .registers 5

    const-wide v0, 0xe790ab6dea4cfdL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$c;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/g$c;->FH:Lorg/w3c/dom/Element;

    const-string v3, "icon"

    invoke-static {v2, v3}, Lcom/aide/ui/trainer/g;->Hw(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_31

    if-lez v3, :cond_2d

    :try_start_1a
    const-class v3, Lcom/aide/ui/R$drawable;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2b} :catch_2c
    .catchall {:try_start_1a .. :try_end_2b} :catchall_31

    return v0

    :catch_2c
    move-exception v0

    :cond_2d
    const v0, 0x7f070076

    return v0

    :catchall_31
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$c;->DW:Z

    if-eqz v3, :cond_39

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_39
    throw v2
.end method

.method public J0()[Ljava/lang/String;
    .registers 8

    const-wide v0, 0x25afb777548a7d18L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$c;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/g$c;->FH:Lorg/w3c/dom/Element;

    const-string v3, "title"

    invoke-static {v2, v3}, Lcom/aide/ui/trainer/g;->FH(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    add-int/2addr v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_2d

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    aput-object v5, v1, v4

    aput-object v0, v1, v6

    return-object v1

    :catchall_2d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$c;->DW:Z

    if-eqz v3, :cond_35

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_35
    throw v2
.end method

.method public J8()Z
    .registers 5

    const-wide v0, 0x1153e74a0dcde4f9L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$c;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-boolean v0, p0, Lcom/aide/ui/trainer/g$c;->VH:Z
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$c;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public VH()I
    .registers 5

    const-wide v0, -0x1e010199e559a72bL  # -1.1155055128539093E164

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$c;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/g$c;->FH:Lorg/w3c/dom/Element;

    const-string v3, "Lesson"

    invoke-static {v2, v3}, Lcom/aide/ui/trainer/g;->j6(Lorg/w3c/dom/Element;Ljava/lang/String;)I

    move-result v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$c;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public Zo()J
    .registers 9

    const-wide v0, -0x535fb6e208f83640L  # -9.759228357951223E-94

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$c;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/trainer/g$c;->tp()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/aide/ui/trainer/g$c;->VH()I

    move-result v4

    const/4 v5, 0x0

    :goto_15
    if-ge v5, v4, :cond_2c

    invoke-virtual {p0, v5}, Lcom/aide/ui/trainer/g$c;->j6(I)Lcom/aide/ui/trainer/g$i;

    move-result-object v6

    invoke-virtual {v6}, Lcom/aide/ui/trainer/g$i;->u7()Ljava/util/Date;

    move-result-object v6

    if-eqz v6, :cond_29

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_2d

    :cond_29
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :cond_2c
    return-wide v2

    :catchall_2d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$c;->DW:Z

    if-eqz v3, :cond_35

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_35
    goto :goto_37

    :goto_36
    throw v2

    :goto_37
    goto :goto_36
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const-wide v0, 0xce5a71356ee2c0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$c;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    instance-of v2, p1, Lcom/aide/ui/trainer/g$c;

    if-eqz v2, :cond_1f

    move-object v2, p1

    check-cast v2, Lcom/aide/ui/trainer/g$c;

    iget-object v2, v2, Lcom/aide/ui/trainer/g$c;->Hw:Ljava/lang/String;

    iget-object v3, p0, Lcom/aide/ui/trainer/g$c;->Hw:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_21

    if-eqz p1, :cond_1f

    const/4 p1, 0x1

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    :goto_20
    return p1

    :catchall_21
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$c;->DW:Z

    if-eqz v3, :cond_29

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    throw v2
.end method

.method public gn()I
    .registers 5

    const-wide v0, -0x2831072fb3247b55L  # -9.534032149165113E114

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$c;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Lcom/aide/ui/trainer/g$c;->Zo:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$c;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public j6(I)Lcom/aide/ui/trainer/g$i;
    .registers 7

    const-wide v0, 0x2fc443f4d381403L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$c;->j6:Z

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
    new-instance v4, Lcom/aide/ui/trainer/g$i;

    invoke-direct {v4, p0, v2, p1, v3}, Lcom/aide/ui/trainer/g$i;-><init>(Lcom/aide/ui/trainer/g$c;Lorg/w3c/dom/Element;IZ)V
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-object v4

    :catchall_1d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$c;->DW:Z

    if-eqz v3, :cond_2a

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2a
    throw v2
.end method

.method public j6(Ljava/lang/String;)Lcom/aide/ui/trainer/g$i;
    .registers 7

    const-wide v0, 0x16c41f8273507c4cL  # 5.257840660187937E-199

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$c;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/trainer/g$c;->VH()I

    move-result v2

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_25

    invoke-virtual {p0, v3}, Lcom/aide/ui/trainer/g$c;->j6(I)Lcom/aide/ui/trainer/g$i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/ui/trainer/g$i;->Zo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    goto :goto_25

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_25
    :goto_25
    invoke-virtual {p0, v3}, Lcom/aide/ui/trainer/g$c;->j6(I)Lcom/aide/ui/trainer/g$i;

    move-result-object p1
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_2a

    return-object p1

    :catchall_2a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$c;->DW:Z

    if-eqz v3, :cond_32

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    goto :goto_34

    :goto_33
    throw v2

    :goto_34
    goto :goto_33
.end method

.method public j6()Ljava/lang/String;
    .registers 5

    const-wide v0, -0x1e747dee38cac835L  # -7.734781096773784E161

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$c;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/g$c;->FH:Lorg/w3c/dom/Element;

    const-string v3, "code_section"

    invoke-static {v2, v3}, Lcom/aide/ui/trainer/g;->FH(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$c;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public tp()J
    .registers 6

    const-wide v0, -0x2309e9946df6a5a4L  # -6.57576250029553E139

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$c;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_28

    :cond_c
    :try_start_c
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/aide/ui/trainer/g$c;->FH:Lorg/w3c/dom/Element;

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

    sget-boolean v3, Lcom/aide/ui/trainer/g$c;->DW:Z

    if-eqz v3, :cond_30

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_30
    throw v2
.end method

.method public u7()I
    .registers 5

    const-wide v0, -0x3a004d7b3b4c8bd0L  # -1.5695761729954707E29

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$c;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/g$c;->gn:Lcom/aide/ui/trainer/g$b;

    iget v0, v2, Lcom/aide/ui/trainer/g$b;->Hw:I
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return v0

    :catchall_11
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$c;->DW:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v2
.end method

.method public v5()Ljava/lang/String;
    .registers 5

    const-wide v0, -0x18d0ffe911ad0e35L  # -1.0790806239148494E189

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$c;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/ui/trainer/g$c;->Hw:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$c;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public we()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aide/ui/trainer/g$j;",
            ">;"
        }
    .end annotation

    const-wide v0, -0x14f934fb28f08a51L  # -3.658889822556457E207

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$c;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_12
    invoke-virtual {p0}, Lcom/aide/ui/trainer/g$c;->EQ()I

    move-result v4

    if-ge v3, v4, :cond_22

    invoke-virtual {p0, v3}, Lcom/aide/ui/trainer/g$c;->FH(I)Lcom/aide/ui/trainer/g$j;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_23

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_22
    return-object v2

    :catchall_23
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$c;->DW:Z

    if-eqz v3, :cond_2b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2b
    goto :goto_2d

    :goto_2c
    throw v2

    :goto_2d
    goto :goto_2c
.end method

.class Lcom/aide/ui/views/editor/ua;
.super Ljava/io/Reader;


# annotations
.annotation runtime Labcd/xu;
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
.field private EQ:[C
    .annotation runtime Labcd/ru;
        field = 0x3fab81cee2e60a33L
    .end annotation
.end field

.field private FH:Lcom/aide/ui/views/editor/o;
    .annotation runtime Labcd/ru;
        field = 0x5b8e6f7cf847c23L
    .end annotation
.end field

.field private Hw:I
    .annotation runtime Labcd/ru;
        field = 0x126fe0afb2c30239L
    .end annotation
.end field

.field private VH:I
    .annotation runtime Labcd/ru;
        field = 0x24568d3049ff5438L
    .end annotation
.end field

.field private Zo:I
    .annotation runtime Labcd/ru;
        field = 0x2e1f48cf2045e1a8L
    .end annotation
.end field

.field private gn:I
    .annotation runtime Labcd/ru;
        field = 0x526556fb60c6e8dbL
    .end annotation
.end field

.field private tp:I
    .annotation runtime Labcd/ru;
        field = -0x166c41c68ae030L
    .end annotation
.end field

.field private u7:C
    .annotation runtime Labcd/ru;
        field = 0x406f3f3fa1350c1L
    .end annotation
.end field

.field private v5:I
    .annotation runtime Labcd/ru;
        field = -0x1b42ea0130fc997fL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x10dd280165801ecfL    # 1.923070782115833E-227

    const-class v0, Lcom/aide/ui/views/editor/ua;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/views/editor/o;IIIIZLjava/lang/String;)V
    .registers 15
    .annotation runtime Labcd/su;
        method = -0x14606efcfa43eabfL
    .end annotation

    const/4 v6, 0x0

    sget-boolean v0, Lcom/aide/ui/views/editor/ua;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xb5e6665757ea00L

    const/4 v2, 0x0

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x4

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x5

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p6}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    const/4 v4, 0x6

    aput-object p7, v3, v4

    invoke-static {v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    iput-object p1, p0, Lcom/aide/ui/views/editor/ua;->FH:Lcom/aide/ui/views/editor/o;

    iput p2, p0, Lcom/aide/ui/views/editor/ua;->Hw:I

    iput p3, p0, Lcom/aide/ui/views/editor/ua;->v5:I

    invoke-interface {p1}, Lcom/aide/ui/views/editor/o;->v5()I

    move-result v0

    if-ge p5, v0, :cond_2

    iput p5, p0, Lcom/aide/ui/views/editor/ua;->VH:I

    iget v0, p0, Lcom/aide/ui/views/editor/ua;->VH:I

    invoke-interface {p1, v0}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v0

    if-ge p4, v0, :cond_1

    :goto_0
    iput p4, p0, Lcom/aide/ui/views/editor/ua;->Zo:I

    :goto_1
    iget v0, p0, Lcom/aide/ui/views/editor/ua;->VH:I

    if-ne p3, v0, :cond_3

    iget v0, p0, Lcom/aide/ui/views/editor/ua;->Zo:I

    add-int/lit8 v0, v0, 0x1

    :goto_2
    iput v0, p0, Lcom/aide/ui/views/editor/ua;->gn:I

    if-eqz p6, :cond_4

    const/16 v0, 0x20

    :goto_3
    iput-char v0, p0, Lcom/aide/ui/views/editor/ua;->u7:C

    iput v6, p0, Lcom/aide/ui/views/editor/ua;->tp:I

    invoke-virtual {p7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/aide/ui/views/editor/ua;->EQ:[C

    return-void

    :cond_1
    iget v0, p0, Lcom/aide/ui/views/editor/ua;->VH:I

    invoke-interface {p1, v0}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v0

    add-int/lit8 p4, v0, -0x1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/aide/ui/views/editor/o;->v5()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/aide/ui/views/editor/ua;->VH:I

    iget v0, p0, Lcom/aide/ui/views/editor/ua;->VH:I

    invoke-interface {p1, v0}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/aide/ui/views/editor/ua;->Zo:I

    goto :goto_1

    :cond_3
    invoke-interface {p1, p3}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v0

    goto :goto_2

    :cond_4
    const/16 v0, 0x9

    goto :goto_3
.end method


# virtual methods
.method public close()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x27905d89032eb859L
    .end annotation

    const-wide v2, 0x1c5b0336a35ddbe0L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/ua;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1c5b0336a35ddbe0L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/ua;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public read()I
    .registers 7
    .annotation runtime Labcd/su;
        method = -0xe66d6fdf695e121L
    .end annotation

    const-wide v4, 0x9d85408c63f98b0L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/ua;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x9d85408c63f98b0L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/aide/ui/views/editor/ua;->Hw:I

    iget v1, p0, Lcom/aide/ui/views/editor/ua;->gn:I

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/aide/ui/views/editor/ua;->FH:Lcom/aide/ui/views/editor/o;

    iget v1, p0, Lcom/aide/ui/views/editor/ua;->Hw:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/aide/ui/views/editor/ua;->Hw:I

    iget v2, p0, Lcom/aide/ui/views/editor/ua;->v5:I

    invoke-interface {v0, v1, v2}, Lcom/aide/ui/views/editor/o;->FH(II)C

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    :goto_0
    return v0

    :cond_1
    iget-char v0, p0, Lcom/aide/ui/views/editor/ua;->u7:C

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/aide/ui/views/editor/ua;->v5:I

    iget v1, p0, Lcom/aide/ui/views/editor/ua;->VH:I

    if-ne v0, v1, :cond_3

    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/aide/ui/views/editor/ua;->tp:I

    iget-object v1, p0, Lcom/aide/ui/views/editor/ua;->EQ:[C

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcom/aide/ui/views/editor/ua;->EQ:[C

    iget v1, p0, Lcom/aide/ui/views/editor/ua;->tp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/aide/ui/views/editor/ua;->tp:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    aget-char v0, v0, v1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/aide/ui/views/editor/ua;->tp:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/aide/ui/views/editor/ua;->Hw:I

    iget v0, p0, Lcom/aide/ui/views/editor/ua;->v5:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/aide/ui/views/editor/ua;->v5:I

    iget v0, p0, Lcom/aide/ui/views/editor/ua;->v5:I

    iget v1, p0, Lcom/aide/ui/views/editor/ua;->VH:I

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/aide/ui/views/editor/ua;->Zo:I

    add-int/lit8 v0, v0, 0x1

    :goto_1
    iput v0, p0, Lcom/aide/ui/views/editor/ua;->gn:I

    iget-object v0, p0, Lcom/aide/ui/views/editor/ua;->EQ:[C

    iget-object v1, p0, Lcom/aide/ui/views/editor/ua;->EQ:[C

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-char v0, v0, v1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/aide/ui/views/editor/ua;->FH:Lcom/aide/ui/views/editor/o;

    iget v1, p0, Lcom/aide/ui/views/editor/ua;->v5:I

    invoke-interface {v0, v1}, Lcom/aide/ui/views/editor/o;->EQ(I)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/ua;->DW:Z

    if-eqz v1, :cond_6

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_6
    throw v0
.end method

.method public read([CII)I
    .registers 14
    .annotation runtime Labcd/su;
        method = -0xa25e7504468e5b5L
    .end annotation

    const-wide v8, 0x35475798e76813bcL    # 4.874073954570388E-52

    const/4 v6, -0x1

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/ua;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x35475798e76813bcL    # 4.874073954570388E-52

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_8

    if-ltz p3, :cond_7

    if-ltz p2, :cond_6

    add-int v0, p3, p2

    array-length v1, p1

    if-gt v0, v1, :cond_4

    if-nez p3, :cond_2

    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/ua;->read()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ne v0, v6, :cond_3

    move v0, v6

    goto :goto_0

    :cond_3
    add-int/lit8 v1, p2, 0x1

    int-to-char v0, v0

    aput-char v0, p1, p2

    const/4 v0, 0x1

    move p2, v1

    :goto_1
    if-ge v0, p3, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/ua;->read()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-eq v1, v6, :cond_1

    int-to-char v1, v1

    aput-char v1, p1, p2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_4
    :try_start_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    :goto_2
    sget-boolean v0, Lcom/aide/ui/views/editor/ua;->DW:Z

    if-eqz v0, :cond_5

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v1

    :cond_6
    :try_start_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :catch_1
    move-exception v1

    goto :goto_2
.end method

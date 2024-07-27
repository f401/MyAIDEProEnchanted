.class public Labcd/Wb;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Wb$a;
    }
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
.field public final FH:Labcd/Wb$a;

.field private Hw:[I
    .annotation runtime Labcd/ru;
        field = 0x30576fab1d526470L
    .end annotation
.end field

.field private VH:[I
    .annotation runtime Labcd/ru;
        field = 0x384d66fab892f0dcL
    .end annotation
.end field

.field private Zo:[I
    .annotation runtime Labcd/ru;
        field = -0x1692df86c64a46ccL
    .end annotation
.end field

.field private gn:I
    .annotation runtime Labcd/ru;
        field = -0xf8ea7834b78b653L
    .end annotation
.end field

.field private v5:[I
    .annotation runtime Labcd/ru;
        field = -0x32b1a69b837500e0L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x4b8bf94111855133L    # 8.573898506283362E55

    const-class v0, Labcd/Wb;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, -0xbfe1248337f8a3bL    # -6.418188075664849E250

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Wb;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xbfe1248337f8a3bL    # -6.418188075664849E250

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/Wb$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Labcd/Wb$a;-><init>(Labcd/Wb;Labcd/Vb;)V

    iput-object v0, p0, Labcd/Wb;->FH:Labcd/Wb$a;

    const/16 v0, 0xbb8

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/Wb;->Hw:[I

    const/16 v0, 0xbb8

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/Wb;->v5:[I

    const/16 v0, 0x3e8

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/Wb;->Zo:[I

    const/16 v0, 0x3e8

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/Wb;->VH:[I

    const/4 v0, 0x0

    iput v0, p0, Labcd/Wb;->gn:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Wb;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private Hw()V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x211ea463c3cad1bbL
    .end annotation

    const-wide v8, -0x24886f895b7dce08L

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Wb;->j6:Z

    if-eqz v0, :cond_0

    const-wide v2, -0x24886f895b7dce08L

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Wb;->Hw:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v3, v0, [I

    iget-object v0, p0, Labcd/Wb;->Hw:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v4, v0, [I

    iget-object v0, p0, Labcd/Wb;->Hw:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    move v2, v1

    :goto_0
    iget v0, p0, Labcd/Wb;->gn:I

    if-ge v2, v0, :cond_4

    iget-object v0, p0, Labcd/Wb;->Zo:[I

    aget v5, v0, v2

    if-eqz v5, :cond_3

    iget-object v0, p0, Labcd/Wb;->VH:[I

    aget v6, v0, v2

    const v0, 0x7fffffff

    and-int/2addr v0, v5

    array-length v7, v3

    rem-int/2addr v0, v7
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    aget v7, v3, v0

    if-eqz v7, :cond_2

    add-int/lit8 v0, v0, 0x1

    :try_start_1
    array-length v7, v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    if-lt v0, v7, :cond_1

    move v0, v1

    goto :goto_1

    :cond_2
    aput v5, v3, v0

    aput v6, v4, v0

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_4
    :try_start_2
    iput-object v3, p0, Labcd/Wb;->Hw:[I

    iput-object v4, p0, Labcd/Wb;->v5:[I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Wb;->DW:Z

    if-eqz v1, :cond_5

    invoke-static {v0, v8, v9, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_5
    throw v0
.end method

.method private v5()V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x21016aa514fa9d88L
    .end annotation

    const-wide v6, -0x247816c1b3b1bf33L    # -8.486092965981855E132

    :try_start_0
    sget-boolean v0, Labcd/Wb;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x247816c1b3b1bf33L    # -8.486092965981855E132

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Wb;->Zo:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iget-object v1, p0, Labcd/Wb;->Zo:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Labcd/Wb;->Zo:[I

    array-length v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Labcd/Wb;->Zo:[I

    iget-object v0, p0, Labcd/Wb;->VH:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iget-object v1, p0, Labcd/Wb;->VH:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Labcd/Wb;->VH:[I

    array-length v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Labcd/Wb;->VH:[I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Wb;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public DW(I)I
    .registers 10

    const-wide v6, -0x2ec33f939ce500b8L

    :try_start_0
    sget-boolean v0, Labcd/Wb;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2ec33f939ce500b8L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget-object v2, p0, Labcd/Wb;->Hw:[I

    array-length v3, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const v0, 0x7fffffff

    and-int/2addr v0, p1

    rem-int/2addr v0, v3

    const/4 v1, -0x1

    :cond_1
    aget v4, v2, v0

    if-ne v4, p1, :cond_2

    :try_start_1
    iget-object v1, p0, Labcd/Wb;->v5:[I

    aget v1, v1, v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v3, :cond_3

    const/4 v0, 0x0

    :cond_3
    if-nez v4, :cond_1

    return v1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Wb;->DW:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v6, v7, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method public DW()V
    .registers 7

    const-wide v4, -0xc3b42a6fe11a580L    # -4.640316718780249E249

    :try_start_0
    sget-boolean v0, Labcd/Wb;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xc3b42a6fe11a580L    # -4.640316718780249E249

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Wb;->Zo:[I

    array-length v0, v0

    iget v1, p0, Labcd/Wb;->gn:I

    if-gt v0, v1, :cond_1

    invoke-direct {p0}, Labcd/Wb;->v5()V

    :cond_1
    iget-object v0, p0, Labcd/Wb;->Zo:[I

    iget v1, p0, Labcd/Wb;->gn:I

    const/4 v2, 0x0

    aput v2, v0, v1

    iget v0, p0, Labcd/Wb;->gn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Wb;->gn:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Wb;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public FH()V
    .registers 11

    const-wide v8, -0x2f21f1c45fb8a793L    # -3.563725216951662E81

    const/4 v3, 0x0

    const/4 v1, -0x1

    :try_start_0
    sget-boolean v0, Labcd/Wb;->j6:Z

    if-eqz v0, :cond_0

    const-wide v4, -0x2f21f1c45fb8a793L    # -3.563725216951662E81

    invoke-static {v4, v5, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v5, p0, Labcd/Wb;->Hw:[I

    array-length v6, v5

    iget v0, p0, Labcd/Wb;->gn:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Labcd/Wb;->gn:I

    iget-object v0, p0, Labcd/Wb;->Zo:[I

    iget v2, p0, Labcd/Wb;->gn:I

    aget v0, v0, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v0

    :goto_0
    if-eqz v4, :cond_6

    const v0, 0x7fffffff

    and-int/2addr v0, v4

    rem-int v2, v0, v6

    move v0, v1

    :cond_1
    aget v7, v5, v2

    if-ne v7, v4, :cond_2

    move v0, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v6, :cond_3

    move v2, v3

    :cond_3
    if-nez v7, :cond_1

    if-eq v0, v1, :cond_4

    aput v3, v5, v0

    :cond_4
    :try_start_1
    iget v0, p0, Labcd/Wb;->gn:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Labcd/Wb;->gn:I

    iget-object v0, p0, Labcd/Wb;->Zo:[I

    iget v2, p0, Labcd/Wb;->gn:I

    aget v0, v0, v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move v4, v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Wb;->DW:Z

    if-eqz v1, :cond_5

    invoke-static {v0, v8, v9, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_5
    throw v0

    :cond_6
    return-void
.end method

.method public j6()V
    .registers 7

    const-wide v4, -0x612e8c49fc1fd80L

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Wb;->j6:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x612e8c49fc1fd80L

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v1, p0, Labcd/Wb;->gn:I

    if-lez v1, :cond_1

    :goto_0
    iget-object v1, p0, Labcd/Wb;->Hw:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Labcd/Wb;->Hw:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Labcd/Wb;->gn:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Wb;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6(II)V
    .registers 10

    const-wide v2, 0x9a83d7bfda7707L

    :try_start_0
    sget-boolean v0, Labcd/Wb;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x9a83d7bfda7707L

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Wb;->Hw:[I

    array-length v0, v0

    iget v1, p0, Labcd/Wb;->gn:I

    mul-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_1

    invoke-direct {p0}, Labcd/Wb;->Hw()V

    :cond_1
    iget-object v0, p0, Labcd/Wb;->Zo:[I

    array-length v0, v0

    iget v1, p0, Labcd/Wb;->gn:I

    if-gt v0, v1, :cond_2

    invoke-direct {p0}, Labcd/Wb;->v5()V

    :cond_2
    iget-object v0, p0, Labcd/Wb;->Zo:[I

    iget v1, p0, Labcd/Wb;->gn:I

    aput p1, v0, v1

    iget-object v0, p0, Labcd/Wb;->VH:[I

    iget v1, p0, Labcd/Wb;->gn:I

    aput p2, v0, v1

    iget v0, p0, Labcd/Wb;->gn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Wb;->gn:I

    iget-object v1, p0, Labcd/Wb;->Hw:[I

    array-length v4, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const v0, 0x7fffffff

    and-int/2addr v0, p1

    rem-int/2addr v0, v4

    :cond_3
    :goto_0
    aget v5, v1, v0

    if-eqz v5, :cond_4

    add-int/lit8 v0, v0, 0x1

    if-lt v0, v4, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    aput p1, v1, v0

    :try_start_1
    iget-object v1, p0, Labcd/Wb;->v5:[I

    aput p2, v1, v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Wb;->DW:Z

    if-eqz v0, :cond_5

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v1
.end method

.method public j6(I)Z
    .registers 8

    const-wide v4, -0x3ce44d804f08ef3L

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Wb;->j6:Z

    if-eqz v0, :cond_0

    const-wide v2, -0x3ce44d804f08ef3L

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget-object v2, p0, Labcd/Wb;->Hw:[I

    array-length v3, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const v0, 0x7fffffff

    and-int/2addr v0, p1

    rem-int/2addr v0, v3

    :cond_1
    aget v4, v2, v0

    if-ne v4, p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v3, :cond_3

    move v0, v1

    :cond_3
    if-nez v4, :cond_1

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Wb;->DW:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0
.end method

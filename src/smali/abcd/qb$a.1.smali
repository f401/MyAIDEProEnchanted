.class public Labcd/qb$a;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/qb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
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
.field private FH:I
    .annotation runtime Labcd/ru;
        field = 0x215d6f9b72da2bf7L
    .end annotation
.end field

.field private Hw:I
    .annotation runtime Labcd/ru;
        field = 0x1127de79bacad941L
    .end annotation
.end field

.field final VH:Labcd/qb;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field private Zo:I
    .annotation runtime Labcd/ru;
        field = 0x28f00772611a6fb8L
    .end annotation
.end field

.field private v5:I
    .annotation runtime Labcd/ru;
        field = -0x464445ecf5febacL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x1388b979bf79a0c0L

    const-class v0, Labcd/qb$a;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Labcd/qb;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x71f2349853de6b0L
    .end annotation

    const-wide v4, 0xa850832de632337L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/qb$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xa850832de632337L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Labcd/qb$a;->VH:Labcd/qb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Labcd/qb$a;->FH:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/qb$a;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/qb$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method synthetic constructor <init>(Labcd/qb;Labcd/pb;)V
    .registers 10

    const-wide v2, 0x109cc10f8cf1cbd5L

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/qb$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x109cc10f8cf1cbd5L

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Labcd/qb$a;-><init>(Labcd/qb;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/qb$a;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v2, -0xa596b9717169141L    # -5.42456548507035E258

    :try_start_0
    sget-boolean v0, Labcd/qb$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xa596b9717169141L    # -5.42456548507035E258

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Labcd/qb$a;->FH:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/qb$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH()I
    .registers 5

    const-wide v2, -0x2835e03d5eef0c39L    # -8.041722766279748E114

    :try_start_0
    sget-boolean v0, Labcd/qb$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2835e03d5eef0c39L    # -8.041722766279748E114

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/qb$a;->v5:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/qb$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw()I
    .registers 5

    const-wide v2, 0xb311c6ae68e0115L    # 9.11673277007954E-255

    :try_start_0
    sget-boolean v0, Labcd/qb$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xb311c6ae68e0115L    # 9.11673277007954E-255

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/qb$a;->Zo:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/qb$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()Z
    .registers 7

    const-wide v4, -0x16bb31648f3cd9b3L    # -1.2442792445379965E199

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/qb$a;->j6:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x16bb31648f3cd9b3L    # -1.2442792445379965E199

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    :goto_0
    iget v1, p0, Labcd/qb$a;->FH:I

    iget-object v2, p0, Labcd/qb$a;->VH:Labcd/qb;

    invoke-static {v2}, Labcd/qb;->j6(Labcd/qb;)[I

    move-result-object v2

    array-length v2, v2

    if-lt v1, v2, :cond_1

    :goto_1
    return v0

    :cond_1
    iget-object v1, p0, Labcd/qb$a;->VH:Labcd/qb;

    invoke-static {v1}, Labcd/qb;->j6(Labcd/qb;)[I

    move-result-object v1

    iget v2, p0, Labcd/qb$a;->FH:I

    aget v1, v1, v2

    iput v1, p0, Labcd/qb$a;->v5:I

    iget v1, p0, Labcd/qb$a;->v5:I

    if-eqz v1, :cond_3

    iget v1, p0, Labcd/qb$a;->v5:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_3

    iget v0, p0, Labcd/qb$a;->v5:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Labcd/qb$a;->v5:I

    :cond_2
    iget-object v0, p0, Labcd/qb$a;->VH:Labcd/qb;

    invoke-static {v0}, Labcd/qb;->DW(Labcd/qb;)[I

    move-result-object v0

    iget v1, p0, Labcd/qb$a;->FH:I

    aget v0, v0, v1

    iput v0, p0, Labcd/qb$a;->Zo:I

    iget v0, p0, Labcd/qb$a;->FH:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/qb$a;->FH:I

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    iget v1, p0, Labcd/qb$a;->FH:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/qb$a;->FH:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/qb$a;->DW:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4
    throw v0
.end method

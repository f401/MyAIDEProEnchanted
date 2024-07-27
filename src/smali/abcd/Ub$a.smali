.class public Labcd/Ub$a;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Ub;
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
        field = -0x259f74be318ef684L
    .end annotation
.end field

.field private Hw:I
    .annotation runtime Labcd/ru;
        field = -0x14f1ff4ea5eb9d70L
    .end annotation
.end field

.field final Zo:Labcd/Ub;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field private v5:I
    .annotation runtime Labcd/ru;
        field = -0x14f23df48d42cf77L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x4be3089057901390L    # 3.733591175705561E57

    const-class v0, Labcd/Ub$a;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Labcd/Ub;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x29fe825f3278a38L
    .end annotation

    const-wide v4, 0xbc43a2f62a5da0L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Ub$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xbc43a2f62a5da0L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Labcd/Ub$a;->Zo:Labcd/Ub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Labcd/Ub$a;->FH:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ub$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method synthetic constructor <init>(Labcd/Ub;Labcd/Tb;)V
    .registers 10

    const-wide v2, -0x13d2a8b303a6ff0L

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Ub$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x13d2a8b303a6ff0L

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Labcd/Ub$a;-><init>(Labcd/Ub;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Ub$a;->DW:Z

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

    const-wide v2, -0x17113e38940d1a69L    # -2.8738919265876432E197

    :try_start_0
    sget-boolean v0, Labcd/Ub$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x17113e38940d1a69L    # -2.8738919265876432E197

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Labcd/Ub$a;->FH:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ub$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH()I
    .registers 5

    const-wide v2, -0x22b905047934c100L    # -2.189301511126221E141

    :try_start_0
    sget-boolean v0, Labcd/Ub$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x22b905047934c100L    # -2.189301511126221E141

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/Ub$a;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ub$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw()I
    .registers 5

    const-wide v2, -0x22b952433b001ff7L    # -2.1605553928102206E141

    :try_start_0
    sget-boolean v0, Labcd/Ub$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x22b952433b001ff7L    # -2.1605553928102206E141

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/Ub$a;->v5:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ub$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()Z
    .registers 9

    const-wide/16 v0, 0x0

    const-wide v6, -0x4aad4455a06a12e3L    # -7.823294412836625E-52

    :try_start_0
    sget-boolean v2, Labcd/Ub$a;->j6:Z

    if-eqz v2, :cond_0

    const-wide v2, -0x4aad4455a06a12e3L    # -7.823294412836625E-52

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v2, p0, Labcd/Ub$a;->FH:I

    iget-object v3, p0, Labcd/Ub$a;->Zo:Labcd/Ub;

    invoke-static {v3}, Labcd/Ub;->j6(Labcd/Ub;)[J

    move-result-object v3

    array-length v3, v3

    if-lt v2, v3, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Labcd/Ub$a;->Zo:Labcd/Ub;

    invoke-static {v2}, Labcd/Ub;->j6(Labcd/Ub;)[J

    move-result-object v2

    iget v3, p0, Labcd/Ub$a;->FH:I

    aget-wide v2, v2, v3

    iget v4, p0, Labcd/Ub$a;->FH:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Labcd/Ub$a;->FH:I

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v2, v4

    if-nez v4, :cond_3

    :goto_1
    const/16 v2, 0x20

    shr-long v2, v0, v2

    long-to-int v2, v2

    iput v2, p0, Labcd/Ub$a;->Hw:I

    const-wide/16 v2, -0x1

    and-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Labcd/Ub$a;->v5:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ub$a;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    move-wide v0, v2

    goto :goto_1
.end method

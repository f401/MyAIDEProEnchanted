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
    .registers 3

    const-class v0, Labcd/Ub$a;

    const-wide v1, 0x4be3089057901390L  # 3.733591175705561E57

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Labcd/Ub;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x29fe825f3278a38L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0xbc43a2f62a5da0L

    :try_start_6
    sget-boolean v3, Labcd/Ub$a;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Labcd/Ub$a;->Zo:Labcd/Ub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput v3, p0, Labcd/Ub$a;->FH:I
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v3

    sget-boolean v4, Labcd/Ub$a;->DW:Z

    if-eqz v4, :cond_1e

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v3
.end method

.method synthetic constructor <init>(Labcd/Ub;Labcd/Tb;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Ub$a;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x13d2a8b303a6ff0L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Labcd/Ub$a;-><init>(Labcd/Ub;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v0

    sget-boolean v1, Labcd/Ub$a;->DW:Z

    if-eqz v1, :cond_22

    const-wide v2, -0x13d2a8b303a6ff0L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v0
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v0, -0x17113e38940d1a69L  # -2.8738919265876432E197

    :try_start_5
    sget-boolean v2, Labcd/Ub$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    iput v2, p0, Labcd/Ub$a;->FH:I
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/Ub$a;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public FH()I
    .registers 5

    const-wide v0, -0x22b905047934c100L  # -2.189301511126221E141

    :try_start_5
    sget-boolean v2, Labcd/Ub$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Labcd/Ub$a;->Hw:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/Ub$a;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public Hw()I
    .registers 5

    const-wide v0, -0x22b952433b001ff7L  # -2.1605553928102206E141

    :try_start_5
    sget-boolean v2, Labcd/Ub$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Labcd/Ub$a;->v5:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/Ub$a;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public j6()Z
    .registers 10

    const-wide v0, -0x4aad4455a06a12e3L  # -7.823294412836625E-52

    :try_start_5
    sget-boolean v2, Labcd/Ub$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/Ub$a;->FH:I

    iget-object v3, p0, Labcd/Ub$a;->Zo:Labcd/Ub;

    invoke-static {v3}, Labcd/Ub;->j6(Labcd/Ub;)[J

    move-result-object v3

    array-length v3, v3

    if-lt v2, v3, :cond_19

    const/4 v0, 0x0

    return v0

    :cond_19
    iget-object v2, p0, Labcd/Ub$a;->Zo:Labcd/Ub;

    invoke-static {v2}, Labcd/Ub;->j6(Labcd/Ub;)[J

    move-result-object v2

    iget v3, p0, Labcd/Ub$a;->FH:I

    aget-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Labcd/Ub$a;->FH:I

    const-wide/16 v2, 0x0

    cmp-long v6, v4, v2

    if-eqz v6, :cond_c

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-eqz v8, :cond_c

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v8, v4, v6

    if-nez v8, :cond_3d

    move-wide v4, v2

    :cond_3d
    const/16 v2, 0x20

    shr-long v2, v4, v2

    long-to-int v3, v2

    iput v3, p0, Labcd/Ub$a;->Hw:I

    const-wide/16 v2, -0x1

    and-long/2addr v2, v4

    long-to-int v3, v2

    iput v3, p0, Labcd/Ub$a;->v5:I
    :try_end_4a
    .catchall {:try_start_5 .. :try_end_4a} :catchall_4c

    const/4 v0, 0x1

    return v0

    :catchall_4c
    move-exception v2

    sget-boolean v3, Labcd/Ub$a;->DW:Z

    if-eqz v3, :cond_54

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_54
    goto :goto_56

    :goto_55
    throw v2

    :goto_56
    goto :goto_55
.end method

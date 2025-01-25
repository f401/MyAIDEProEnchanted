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
    .registers 3

    const-class v0, Labcd/qb$a;

    const-wide v1, 0x1388b979bf79a0c0L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Labcd/qb;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x71f2349853de6b0L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0xa850832de632337L

    :try_start_6
    sget-boolean v3, Labcd/qb$a;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Labcd/qb$a;->VH:Labcd/qb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput v3, p0, Labcd/qb$a;->FH:I

    iput v3, p0, Labcd/qb$a;->Hw:I
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v3

    sget-boolean v4, Labcd/qb$a;->DW:Z

    if-eqz v4, :cond_20

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v3
.end method

.method synthetic constructor <init>(Labcd/qb;Labcd/pb;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/qb$a;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x109cc10f8cf1cbd5L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Labcd/qb$a;-><init>(Labcd/qb;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v0

    sget-boolean v1, Labcd/qb$a;->DW:Z

    if-eqz v1, :cond_22

    const-wide v2, 0x109cc10f8cf1cbd5L

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

    const-wide v0, -0xa596b9717169141L  # -5.42456548507035E258

    :try_start_5
    sget-boolean v2, Labcd/qb$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    iput v2, p0, Labcd/qb$a;->FH:I
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/qb$a;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public FH()I
    .registers 5

    const-wide v0, -0x2835e03d5eef0c39L  # -8.041722766279748E114

    :try_start_5
    sget-boolean v2, Labcd/qb$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Labcd/qb$a;->v5:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/qb$a;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public Hw()I
    .registers 5

    const-wide v0, 0xb311c6ae68e0115L  # 9.11673277007954E-255

    :try_start_5
    sget-boolean v2, Labcd/qb$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Labcd/qb$a;->Zo:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/qb$a;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public j6()Z
    .registers 7

    const-wide v0, -0x16bb31648f3cd9b3L  # -1.2442792445379965E199

    :try_start_5
    sget-boolean v2, Labcd/qb$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    :goto_c
    iget v2, p0, Labcd/qb$a;->FH:I

    iget-object v3, p0, Labcd/qb$a;->VH:Labcd/qb;

    invoke-static {v3}, Labcd/qb;->j6(Labcd/qb;)[I

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x0

    if-lt v2, v3, :cond_19

    return v4

    :cond_19
    iget-object v2, p0, Labcd/qb$a;->VH:Labcd/qb;

    invoke-static {v2}, Labcd/qb;->j6(Labcd/qb;)[I

    move-result-object v2

    iget v3, p0, Labcd/qb$a;->FH:I

    aget v2, v2, v3

    iput v2, p0, Labcd/qb$a;->v5:I

    if-eqz v2, :cond_43

    const/high16 v5, -0x80000000

    if-eq v2, v5, :cond_43

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_32

    iput v4, p0, Labcd/qb$a;->v5:I

    :cond_32
    iget-object v2, p0, Labcd/qb$a;->VH:Labcd/qb;

    invoke-static {v2}, Labcd/qb;->DW(Labcd/qb;)[I

    move-result-object v2

    iget v3, p0, Labcd/qb$a;->FH:I

    aget v2, v2, v3

    iput v2, p0, Labcd/qb$a;->Zo:I

    const/4 v2, 0x1

    add-int/2addr v3, v2

    iput v3, p0, Labcd/qb$a;->FH:I

    return v2

    :cond_43
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Labcd/qb$a;->FH:I
    :try_end_47
    .catchall {:try_start_5 .. :try_end_47} :catchall_48

    goto :goto_c

    :catchall_48
    move-exception v2

    sget-boolean v3, Labcd/qb$a;->DW:Z

    if-eqz v3, :cond_50

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_50
    goto :goto_52

    :goto_51
    throw v2

    :goto_52
    goto :goto_51
.end method

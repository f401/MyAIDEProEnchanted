.class public Labcd/sb$a;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/sb;
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
        field = 0x27b2ed604383ae2cL
    .end annotation
.end field

.field private Hw:I
    .annotation runtime Labcd/ru;
        field = -0x26dd95450b714b0cL
    .end annotation
.end field

.field final VH:Labcd/sb;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field private Zo:J
    .annotation runtime Labcd/ru;
        field = -0x2aafefcd08a3632fL
    .end annotation
.end field

.field private v5:I
    .annotation runtime Labcd/ru;
        field = 0x1c6c49be662afb13L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x566eff392a5c6ecdL

    const-class v0, Labcd/sb$a;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Labcd/sb;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x3e48e8f8f86a9ef0L
    .end annotation

    const-wide v4, -0x53b4c9a193c0488L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/sb$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x53b4c9a193c0488L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Labcd/sb$a;->VH:Labcd/sb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Labcd/sb$a;->FH:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/sb$a;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/sb$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method synthetic constructor <init>(Labcd/sb;Labcd/rb;)V
    .registers 10

    const-wide v2, -0x1eb77cc38539519L

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/sb$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1eb77cc38539519L

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Labcd/sb$a;-><init>(Labcd/sb;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/sb$a;->DW:Z

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

    const-wide v2, -0x1e4443573dd15dbdL    # -6.2393073600873E162

    :try_start_0
    sget-boolean v0, Labcd/sb$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1e4443573dd15dbdL    # -6.2393073600873E162

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Labcd/sb$a;->FH:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/sb$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH()I
    .registers 5

    const-wide v2, 0x1ada5c3e7df4fd63L

    :try_start_0
    sget-boolean v0, Labcd/sb$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1ada5c3e7df4fd63L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/sb$a;->v5:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/sb$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw()J
    .registers 5

    const-wide v2, -0xe89627bfb754aefL    # -3.681619091891785E238

    :try_start_0
    sget-boolean v0, Labcd/sb$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xe89627bfb754aefL    # -3.681619091891785E238

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-wide v0, p0, Labcd/sb$a;->Zo:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/sb$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()Z
    .registers 7

    const-wide v4, -0x4252e4db85316437L    # -1.3235887939243963E-11

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/sb$a;->j6:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x4252e4db85316437L    # -1.3235887939243963E-11

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    :goto_0
    iget v1, p0, Labcd/sb$a;->FH:I

    iget-object v2, p0, Labcd/sb$a;->VH:Labcd/sb;

    invoke-static {v2}, Labcd/sb;->j6(Labcd/sb;)[I

    move-result-object v2

    array-length v2, v2

    if-lt v1, v2, :cond_1

    :goto_1
    return v0

    :cond_1
    iget-object v1, p0, Labcd/sb$a;->VH:Labcd/sb;

    invoke-static {v1}, Labcd/sb;->j6(Labcd/sb;)[I

    move-result-object v1

    iget v2, p0, Labcd/sb$a;->FH:I

    aget v1, v1, v2

    iput v1, p0, Labcd/sb$a;->v5:I

    iget v1, p0, Labcd/sb$a;->v5:I

    if-eqz v1, :cond_3

    iget v1, p0, Labcd/sb$a;->v5:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_3

    iget v0, p0, Labcd/sb$a;->v5:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Labcd/sb$a;->v5:I

    :cond_2
    iget-object v0, p0, Labcd/sb$a;->VH:Labcd/sb;

    invoke-static {v0}, Labcd/sb;->DW(Labcd/sb;)[J

    move-result-object v0

    iget v1, p0, Labcd/sb$a;->FH:I

    aget-wide v0, v0, v1

    iput-wide v0, p0, Labcd/sb$a;->Zo:J

    iget v0, p0, Labcd/sb$a;->FH:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/sb$a;->FH:I

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    iget v1, p0, Labcd/sb$a;->FH:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/sb$a;->FH:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/sb$a;->DW:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4
    throw v0
.end method

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
    .registers 3

    const-class v0, Labcd/sb$a;

    const-wide v1, -0x566eff392a5c6ecdL

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Labcd/sb;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x3e48e8f8f86a9ef0L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x53b4c9a193c0488L

    :try_start_6
    sget-boolean v3, Labcd/sb$a;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Labcd/sb$a;->VH:Labcd/sb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput v3, p0, Labcd/sb$a;->FH:I

    iput v3, p0, Labcd/sb$a;->Hw:I
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v3

    sget-boolean v4, Labcd/sb$a;->DW:Z

    if-eqz v4, :cond_20

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v3
.end method

.method synthetic constructor <init>(Labcd/sb;Labcd/rb;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/sb$a;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x1eb77cc38539519L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Labcd/sb$a;-><init>(Labcd/sb;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v0

    sget-boolean v1, Labcd/sb$a;->DW:Z

    if-eqz v1, :cond_22

    const-wide v2, -0x1eb77cc38539519L

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

    const-wide v0, -0x1e4443573dd15dbdL  # -6.2393073600873E162

    :try_start_5
    sget-boolean v2, Labcd/sb$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    iput v2, p0, Labcd/sb$a;->FH:I
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/sb$a;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public FH()I
    .registers 5

    const-wide v0, 0x1ada5c3e7df4fd63L

    :try_start_5
    sget-boolean v2, Labcd/sb$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Labcd/sb$a;->v5:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/sb$a;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public Hw()J
    .registers 5

    const-wide v0, -0xe89627bfb754aefL  # -3.681619091891785E238

    :try_start_5
    sget-boolean v2, Labcd/sb$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-wide v0, p0, Labcd/sb$a;->Zo:J
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-wide v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/sb$a;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public j6()Z
    .registers 7

    const-wide v0, -0x4252e4db85316437L  # -1.3235887939243963E-11

    :try_start_5
    sget-boolean v2, Labcd/sb$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    :goto_c
    iget v2, p0, Labcd/sb$a;->FH:I

    iget-object v3, p0, Labcd/sb$a;->VH:Labcd/sb;

    invoke-static {v3}, Labcd/sb;->j6(Labcd/sb;)[I

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x0

    if-lt v2, v3, :cond_19

    return v4

    :cond_19
    iget-object v2, p0, Labcd/sb$a;->VH:Labcd/sb;

    invoke-static {v2}, Labcd/sb;->j6(Labcd/sb;)[I

    move-result-object v2

    iget v3, p0, Labcd/sb$a;->FH:I

    aget v2, v2, v3

    iput v2, p0, Labcd/sb$a;->v5:I

    if-eqz v2, :cond_43

    const/high16 v5, -0x80000000

    if-eq v2, v5, :cond_43

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_32

    iput v4, p0, Labcd/sb$a;->v5:I

    :cond_32
    iget-object v2, p0, Labcd/sb$a;->VH:Labcd/sb;

    invoke-static {v2}, Labcd/sb;->DW(Labcd/sb;)[J

    move-result-object v2

    iget v3, p0, Labcd/sb$a;->FH:I

    aget-wide v4, v2, v3

    iput-wide v4, p0, Labcd/sb$a;->Zo:J

    const/4 v2, 0x1

    add-int/2addr v3, v2

    iput v3, p0, Labcd/sb$a;->FH:I

    return v2

    :cond_43
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Labcd/sb$a;->FH:I
    :try_end_47
    .catchall {:try_start_5 .. :try_end_47} :catchall_48

    goto :goto_c

    :catchall_48
    move-exception v2

    sget-boolean v3, Labcd/sb$a;->DW:Z

    if-eqz v3, :cond_50

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_50
    goto :goto_52

    :goto_51
    throw v2

    :goto_52
    goto :goto_51
.end method

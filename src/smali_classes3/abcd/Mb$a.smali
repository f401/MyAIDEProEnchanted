.class public Labcd/Mb$a;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Mb;
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
        field = 0x4857854b01b5cL
    .end annotation
.end field

.field private Hw:I
    .annotation runtime Labcd/ru;
        field = 0xa2d55f3afcadfc4L
    .end annotation
.end field

.field private VH:I
    .annotation runtime Labcd/ru;
        field = 0x15e34df0be49a650L
    .end annotation
.end field

.field private Zo:J
    .annotation runtime Labcd/ru;
        field = 0x7154f13011b4c79L
    .end annotation
.end field

.field final gn:Labcd/Mb;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field private v5:I
    .annotation runtime Labcd/ru;
        field = -0x221535a110f1d24dL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Mb$a;

    const-wide v1, 0x268889bb892fa76fL  # 4.639928194240425E-123

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Labcd/Mb;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x712bc5e0952620L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x63f1c2f6c44c92cL  # -2.994009129992844E278

    :try_start_6
    sget-boolean v3, Labcd/Mb$a;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Labcd/Mb$a;->gn:Labcd/Mb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput v3, p0, Labcd/Mb$a;->FH:I

    iput v3, p0, Labcd/Mb$a;->Hw:I
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v3

    sget-boolean v4, Labcd/Mb$a;->DW:Z

    if-eqz v4, :cond_20

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v3
.end method

.method synthetic constructor <init>(Labcd/Mb;Labcd/Lb;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Mb$a;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x1140991cd626d5e9L  # 1.401301333523387E-225

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Labcd/Mb$a;-><init>(Labcd/Mb;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v0

    sget-boolean v1, Labcd/Mb$a;->DW:Z

    if-eqz v1, :cond_22

    const-wide v2, 0x1140991cd626d5e9L  # 1.401301333523387E-225

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

    const-wide v0, 0x97d4adc320c1c8bL

    :try_start_5
    sget-boolean v2, Labcd/Mb$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    iput v2, p0, Labcd/Mb$a;->FH:I

    iput v2, p0, Labcd/Mb$a;->Hw:I
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Labcd/Mb$a;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public FH()I
    .registers 5

    const-wide v0, -0xe59e5fb94cb6d55L  # -2.8783981900526355E239

    :try_start_5
    sget-boolean v2, Labcd/Mb$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Labcd/Mb$a;->v5:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/Mb$a;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public Hw()J
    .registers 5

    const-wide v0, -0x200d35861de65b57L  # -1.574656730575594E154

    :try_start_5
    sget-boolean v2, Labcd/Mb$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-wide v0, p0, Labcd/Mb$a;->Zo:J
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-wide v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/Mb$a;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public j6()Z
    .registers 9

    const-wide v0, 0xa0ec3b5318135a1L

    :try_start_5
    sget-boolean v2, Labcd/Mb$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/Mb$a;->Hw:I

    const v3, 0x7fffffff

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_4c

    :goto_15
    iget v2, p0, Labcd/Mb$a;->FH:I

    iget-object v6, p0, Labcd/Mb$a;->gn:Labcd/Mb;

    invoke-static {v6}, Labcd/Mb;->j6(Labcd/Mb;)[I

    move-result-object v6

    array-length v6, v6

    if-lt v2, v6, :cond_21

    return v5

    :cond_21
    iget-object v2, p0, Labcd/Mb$a;->gn:Labcd/Mb;

    invoke-static {v2}, Labcd/Mb;->j6(Labcd/Mb;)[I

    move-result-object v2

    iget v6, p0, Labcd/Mb$a;->FH:I

    aget v2, v2, v6

    iput v2, p0, Labcd/Mb$a;->v5:I

    if-eqz v2, :cond_47

    const/high16 v7, -0x80000000

    if-eq v2, v7, :cond_47

    if-ne v2, v3, :cond_37

    iput v5, p0, Labcd/Mb$a;->v5:I

    :cond_37
    iget-object v2, p0, Labcd/Mb$a;->gn:Labcd/Mb;

    invoke-static {v2}, Labcd/Mb;->DW(Labcd/Mb;)[J

    move-result-object v2

    iget v3, p0, Labcd/Mb$a;->FH:I

    aget-wide v5, v2, v3

    iput-wide v5, p0, Labcd/Mb$a;->Zo:J

    add-int/2addr v3, v4

    iput v3, p0, Labcd/Mb$a;->FH:I

    return v4

    :cond_47
    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Labcd/Mb$a;->FH:I

    goto :goto_15

    :cond_4c
    :goto_4c
    iget-object v2, p0, Labcd/Mb$a;->gn:Labcd/Mb;

    invoke-static {v2}, Labcd/Mb;->j6(Labcd/Mb;)[I

    move-result-object v2

    iget v6, p0, Labcd/Mb$a;->FH:I

    aget v2, v2, v6

    iput v2, p0, Labcd/Mb$a;->v5:I

    if-nez v2, :cond_5b

    return v5

    :cond_5b
    iget v7, p0, Labcd/Mb$a;->VH:I

    if-ne v2, v7, :cond_7d

    if-ne v2, v3, :cond_63

    iput v5, p0, Labcd/Mb$a;->v5:I

    :cond_63
    iget-object v2, p0, Labcd/Mb$a;->gn:Labcd/Mb;

    invoke-static {v2}, Labcd/Mb;->DW(Labcd/Mb;)[J

    move-result-object v2

    iget v3, p0, Labcd/Mb$a;->FH:I

    aget-wide v5, v2, v3

    iput-wide v5, p0, Labcd/Mb$a;->Zo:J

    iget v2, p0, Labcd/Mb$a;->Hw:I

    add-int/2addr v3, v2

    iget-object v2, p0, Labcd/Mb$a;->gn:Labcd/Mb;

    invoke-static {v2}, Labcd/Mb;->j6(Labcd/Mb;)[I

    move-result-object v2

    array-length v2, v2

    rem-int/2addr v3, v2

    iput v3, p0, Labcd/Mb$a;->FH:I

    return v4

    :cond_7d
    iget v2, p0, Labcd/Mb$a;->Hw:I

    add-int/2addr v6, v2

    iget-object v2, p0, Labcd/Mb$a;->gn:Labcd/Mb;

    invoke-static {v2}, Labcd/Mb;->j6(Labcd/Mb;)[I

    move-result-object v2

    array-length v2, v2

    rem-int/2addr v6, v2

    iput v6, p0, Labcd/Mb$a;->FH:I
    :try_end_8a
    .catchall {:try_start_5 .. :try_end_8a} :catchall_8b

    goto :goto_4c

    :catchall_8b
    move-exception v2

    sget-boolean v3, Labcd/Mb$a;->DW:Z

    if-eqz v3, :cond_93

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_93
    goto :goto_95

    :goto_94
    throw v2

    :goto_95
    goto :goto_94
.end method

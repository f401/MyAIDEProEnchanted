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
    .registers 4

    const-wide v2, 0x268889bb892fa76fL    # 4.639928194240425E-123

    const-class v0, Labcd/Mb$a;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Labcd/Mb;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x712bc5e0952620L
    .end annotation

    const-wide v4, -0x63f1c2f6c44c92cL    # -2.994009129992844E278

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Mb$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x63f1c2f6c44c92cL    # -2.994009129992844E278

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Labcd/Mb$a;->gn:Labcd/Mb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Labcd/Mb$a;->FH:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/Mb$a;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Mb$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method synthetic constructor <init>(Labcd/Mb;Labcd/Lb;)V
    .registers 10

    const-wide v2, 0x1140991cd626d5e9L    # 1.401301333523387E-225

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Mb$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1140991cd626d5e9L    # 1.401301333523387E-225

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Labcd/Mb$a;-><init>(Labcd/Mb;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Mb$a;->DW:Z

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

    const-wide v2, 0x97d4adc320c1c8bL

    :try_start_0
    sget-boolean v0, Labcd/Mb$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x97d4adc320c1c8bL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Labcd/Mb$a;->FH:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/Mb$a;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Mb$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH()I
    .registers 5

    const-wide v2, -0xe59e5fb94cb6d55L    # -2.8783981900526355E239

    :try_start_0
    sget-boolean v0, Labcd/Mb$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xe59e5fb94cb6d55L    # -2.8783981900526355E239

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/Mb$a;->v5:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Mb$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw()J
    .registers 5

    const-wide v2, -0x200d35861de65b57L    # -1.574656730575594E154

    :try_start_0
    sget-boolean v0, Labcd/Mb$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x200d35861de65b57L    # -1.574656730575594E154

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-wide v0, p0, Labcd/Mb$a;->Zo:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Mb$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()Z
    .registers 9

    const-wide v6, 0xa0ec3b5318135a1L

    const v4, 0x7fffffff

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v2, Labcd/Mb$a;->j6:Z

    if-eqz v2, :cond_0

    const-wide v2, 0xa0ec3b5318135a1L

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v2, p0, Labcd/Mb$a;->Hw:I

    if-nez v2, :cond_7

    :goto_0
    iget v2, p0, Labcd/Mb$a;->FH:I

    iget-object v3, p0, Labcd/Mb$a;->gn:Labcd/Mb;

    invoke-static {v3}, Labcd/Mb;->j6(Labcd/Mb;)[I

    move-result-object v3

    array-length v3, v3

    if-lt v2, v3, :cond_2

    :cond_1
    :goto_1
    return v0

    :cond_2
    iget-object v2, p0, Labcd/Mb$a;->gn:Labcd/Mb;

    invoke-static {v2}, Labcd/Mb;->j6(Labcd/Mb;)[I

    move-result-object v2

    iget v3, p0, Labcd/Mb$a;->FH:I

    aget v2, v2, v3

    iput v2, p0, Labcd/Mb$a;->v5:I

    iget v2, p0, Labcd/Mb$a;->v5:I

    if-eqz v2, :cond_4

    iget v2, p0, Labcd/Mb$a;->v5:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_4

    iget v0, p0, Labcd/Mb$a;->v5:I

    if-ne v0, v4, :cond_3

    const/4 v0, 0x0

    iput v0, p0, Labcd/Mb$a;->v5:I

    :cond_3
    iget-object v0, p0, Labcd/Mb$a;->gn:Labcd/Mb;

    invoke-static {v0}, Labcd/Mb;->DW(Labcd/Mb;)[J

    move-result-object v0

    iget v2, p0, Labcd/Mb$a;->FH:I

    aget-wide v2, v0, v2

    iput-wide v2, p0, Labcd/Mb$a;->Zo:J

    iget v0, p0, Labcd/Mb$a;->FH:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Mb$a;->FH:I

    move v0, v1

    goto :goto_1

    :cond_4
    iget v2, p0, Labcd/Mb$a;->FH:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Labcd/Mb$a;->FH:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Mb$a;->DW:Z

    if-eqz v1, :cond_5

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_5
    throw v0

    :cond_6
    :try_start_1
    iget v2, p0, Labcd/Mb$a;->FH:I

    iget v3, p0, Labcd/Mb$a;->Hw:I

    add-int/2addr v2, v3

    iget-object v3, p0, Labcd/Mb$a;->gn:Labcd/Mb;

    invoke-static {v3}, Labcd/Mb;->j6(Labcd/Mb;)[I

    move-result-object v3

    array-length v3, v3

    rem-int/2addr v2, v3

    iput v2, p0, Labcd/Mb$a;->FH:I

    :cond_7
    iget-object v2, p0, Labcd/Mb$a;->gn:Labcd/Mb;

    invoke-static {v2}, Labcd/Mb;->j6(Labcd/Mb;)[I

    move-result-object v2

    iget v3, p0, Labcd/Mb$a;->FH:I

    aget v2, v2, v3

    iput v2, p0, Labcd/Mb$a;->v5:I

    iget v2, p0, Labcd/Mb$a;->v5:I

    if-eqz v2, :cond_1

    iget v2, p0, Labcd/Mb$a;->v5:I

    iget v3, p0, Labcd/Mb$a;->VH:I

    if-ne v2, v3, :cond_6

    iget v0, p0, Labcd/Mb$a;->v5:I

    if-ne v0, v4, :cond_8

    const/4 v0, 0x0

    iput v0, p0, Labcd/Mb$a;->v5:I

    :cond_8
    iget-object v0, p0, Labcd/Mb$a;->gn:Labcd/Mb;

    invoke-static {v0}, Labcd/Mb;->DW(Labcd/Mb;)[J

    move-result-object v0

    iget v2, p0, Labcd/Mb$a;->FH:I

    aget-wide v2, v0, v2

    iput-wide v2, p0, Labcd/Mb$a;->Zo:J

    iget v0, p0, Labcd/Mb$a;->FH:I

    iget v2, p0, Labcd/Mb$a;->Hw:I

    add-int/2addr v0, v2

    iget-object v2, p0, Labcd/Mb$a;->gn:Labcd/Mb;

    invoke-static {v2}, Labcd/Mb;->j6(Labcd/Mb;)[I

    move-result-object v2

    array-length v2, v2

    rem-int/2addr v0, v2

    iput v0, p0, Labcd/Mb$a;->FH:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    goto/16 :goto_1
.end method

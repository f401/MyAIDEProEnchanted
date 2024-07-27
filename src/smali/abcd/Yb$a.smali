.class public Labcd/Yb$a;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Yb;
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
        field = 0x1a62ce3b934cd680L
    .end annotation
.end field

.field private Hw:I
    .annotation runtime Labcd/ru;
        field = 0x12b218271e0b3971L
    .end annotation
.end field

.field final v5:Labcd/Yb;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x4921822b68876340L    # -2.1363863677968253E-44

    const-class v0, Labcd/Yb$a;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Labcd/Yb;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x649ce38fad4c1980L
    .end annotation

    const-wide v4, -0xa90bb79d2742429L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Yb$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xa90bb79d2742429L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Labcd/Yb$a;->v5:Labcd/Yb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Labcd/Yb$a;->FH:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Yb$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method synthetic constructor <init>(Labcd/Yb;Labcd/Xb;)V
    .registers 10

    const-wide v2, -0x104d37004113b3dcL    # -1.139230036045897E230

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Yb$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x104d37004113b3dcL    # -1.139230036045897E230

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Labcd/Yb$a;-><init>(Labcd/Yb;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Yb$a;->DW:Z

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

    const-wide v2, -0xe0af6018eecc010L    # -8.76803836585868E240

    :try_start_0
    sget-boolean v0, Labcd/Yb$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xe0af6018eecc010L    # -8.76803836585868E240

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Labcd/Yb$a;->FH:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Yb$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH()Labcd/Aa;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    const-wide v2, 0x2b48481de9789034L

    :try_start_0
    sget-boolean v0, Labcd/Yb$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2b48481de9789034L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Yb$a;->v5:Labcd/Yb;

    invoke-static {v0}, Labcd/Yb;->DW(Labcd/Yb;)Labcd/Ba;

    move-result-object v0

    iget v1, p0, Labcd/Yb$a;->Hw:I

    invoke-virtual {v0, v1}, Labcd/Ba;->FH(I)Labcd/Aa;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Yb$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()Z
    .registers 7

    const-wide v4, 0x5088984d90dbf548L    # 9.113275973394453E79

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Yb$a;->j6:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x5088984d90dbf548L    # 9.113275973394453E79

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v1, p0, Labcd/Yb$a;->FH:I

    iget-object v2, p0, Labcd/Yb$a;->v5:Labcd/Yb;

    invoke-static {v2}, Labcd/Yb;->j6(Labcd/Yb;)[I

    move-result-object v2

    array-length v2, v2

    if-lt v1, v2, :cond_1

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Labcd/Yb$a;->v5:Labcd/Yb;

    invoke-static {v1}, Labcd/Yb;->j6(Labcd/Yb;)[I

    move-result-object v1

    iget v2, p0, Labcd/Yb$a;->FH:I

    aget v1, v1, v2

    iput v1, p0, Labcd/Yb$a;->Hw:I

    iget v1, p0, Labcd/Yb$a;->FH:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/Yb$a;->FH:I

    iget v1, p0, Labcd/Yb$a;->Hw:I

    if-eqz v1, :cond_0

    iget v1, p0, Labcd/Yb$a;->Hw:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    iget v0, p0, Labcd/Yb$a;->Hw:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Labcd/Yb$a;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Yb$a;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

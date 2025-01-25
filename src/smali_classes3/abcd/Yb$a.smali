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
    .registers 3

    const-class v0, Labcd/Yb$a;

    const-wide v1, -0x4921822b68876340L  # -2.1363863677968253E-44

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Labcd/Yb;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x649ce38fad4c1980L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0xa90bb79d2742429L

    :try_start_6
    sget-boolean v3, Labcd/Yb$a;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Labcd/Yb$a;->v5:Labcd/Yb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput v3, p0, Labcd/Yb$a;->FH:I
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v3

    sget-boolean v4, Labcd/Yb$a;->DW:Z

    if-eqz v4, :cond_1e

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v3
.end method

.method synthetic constructor <init>(Labcd/Yb;Labcd/Xb;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Yb$a;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x104d37004113b3dcL  # -1.139230036045897E230

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Labcd/Yb$a;-><init>(Labcd/Yb;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v0

    sget-boolean v1, Labcd/Yb$a;->DW:Z

    if-eqz v1, :cond_22

    const-wide v2, -0x104d37004113b3dcL  # -1.139230036045897E230

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

    const-wide v0, -0xe0af6018eecc010L  # -8.76803836585868E240

    :try_start_5
    sget-boolean v2, Labcd/Yb$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    iput v2, p0, Labcd/Yb$a;->FH:I
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/Yb$a;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public FH()Labcd/Aa;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    const-wide v0, 0x2b48481de9789034L

    :try_start_5
    sget-boolean v2, Labcd/Yb$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Yb$a;->v5:Labcd/Yb;

    invoke-static {v2}, Labcd/Yb;->DW(Labcd/Yb;)Labcd/Ba;

    move-result-object v2

    iget v3, p0, Labcd/Yb$a;->Hw:I

    invoke-virtual {v2, v3}, Labcd/Ba;->FH(I)Labcd/Aa;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return-object v0

    :catchall_19
    move-exception v2

    sget-boolean v3, Labcd/Yb$a;->DW:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method public j6()Z
    .registers 6

    const-wide v0, 0x5088984d90dbf548L  # 9.113275973394453E79

    :try_start_5
    sget-boolean v2, Labcd/Yb$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/Yb$a;->FH:I

    iget-object v3, p0, Labcd/Yb$a;->v5:Labcd/Yb;

    invoke-static {v3}, Labcd/Yb;->j6(Labcd/Yb;)[I

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x0

    if-lt v2, v3, :cond_19

    return v4

    :cond_19
    iget-object v2, p0, Labcd/Yb$a;->v5:Labcd/Yb;

    invoke-static {v2}, Labcd/Yb;->j6(Labcd/Yb;)[I

    move-result-object v2

    iget v3, p0, Labcd/Yb$a;->FH:I

    aget v2, v2, v3

    iput v2, p0, Labcd/Yb$a;->Hw:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Labcd/Yb$a;->FH:I

    if-eqz v2, :cond_c

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_c

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_36

    iput v4, p0, Labcd/Yb$a;->Hw:I
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_38

    :cond_36
    const/4 v0, 0x1

    return v0

    :catchall_38
    move-exception v2

    sget-boolean v3, Labcd/Yb$a;->DW:Z

    if-eqz v3, :cond_40

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_40
    goto :goto_42

    :goto_41
    throw v2

    :goto_42
    goto :goto_41
.end method

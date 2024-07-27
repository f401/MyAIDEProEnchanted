.class public Labcd/Ob$a;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Ob;
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
        field = -0x17376d860ca90ecfL
    .end annotation
.end field

.field private Hw:I
    .annotation runtime Labcd/ru;
        field = -0x286643acd1250021L
    .end annotation
.end field

.field private VH:I
    .annotation runtime Labcd/ru;
        field = 0xf050834173b9c03L
    .end annotation
.end field

.field private Zo:Ljava/lang/Object;
    .annotation runtime Labcd/ru;
        field = -0xfc62a84419ab114L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final gn:Labcd/Ob;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field private v5:I
    .annotation runtime Labcd/ru;
        field = 0x89194a02f648028L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0xe21f5f95bd1c0e0L    # -3.129712156685194E240

    const-class v0, Labcd/Ob$a;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Labcd/Ob;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x29ff2e15742d49L
    .end annotation

    const-wide v4, -0x5b5eea159534dbdL

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Ob$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x5b5eea159534dbdL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Labcd/Ob$a;->gn:Labcd/Ob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Labcd/Ob$a;->FH:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/Ob$a;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ob$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method synthetic constructor <init>(Labcd/Ob;Labcd/Nb;)V
    .registers 10

    const-wide v2, -0x240357e9d7ded04L    # -5.197810289720237E297

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Ob$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x240357e9d7ded04L    # -5.197810289720237E297

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Labcd/Ob$a;-><init>(Labcd/Ob;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Ob$a;->DW:Z

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

    const-wide v2, -0x115f79f4d1338280L    # -7.64524954002801E224

    :try_start_0
    sget-boolean v0, Labcd/Ob$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x115f79f4d1338280L    # -7.64524954002801E224

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Labcd/Ob$a;->FH:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/Ob$a;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ob$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH()I
    .registers 5

    const-wide v2, -0x1e7a1318b9134948L    # -6.165031408826983E161

    :try_start_0
    sget-boolean v0, Labcd/Ob$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1e7a1318b9134948L    # -6.165031408826983E161

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/Ob$a;->v5:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ob$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const-wide v2, -0x2d917c15c2cac160L    # -1.2140771401867234E89

    :try_start_0
    sget-boolean v0, Labcd/Ob$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2d917c15c2cac160L    # -1.2140771401867234E89

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Ob$a;->Zo:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ob$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()Z
    .registers 9

    const-wide v6, -0x373ea31200edf6e0L

    const v4, 0x7fffffff

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v2, Labcd/Ob$a;->j6:Z

    if-eqz v2, :cond_0

    const-wide v2, -0x373ea31200edf6e0L

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v2, p0, Labcd/Ob$a;->Hw:I

    if-nez v2, :cond_7

    :goto_0
    iget v2, p0, Labcd/Ob$a;->FH:I

    iget-object v3, p0, Labcd/Ob$a;->gn:Labcd/Ob;

    invoke-static {v3}, Labcd/Ob;->j6(Labcd/Ob;)[I

    move-result-object v3

    array-length v3, v3

    if-lt v2, v3, :cond_2

    :cond_1
    :goto_1
    return v0

    :cond_2
    iget-object v2, p0, Labcd/Ob$a;->gn:Labcd/Ob;

    invoke-static {v2}, Labcd/Ob;->j6(Labcd/Ob;)[I

    move-result-object v2

    iget v3, p0, Labcd/Ob$a;->FH:I

    aget v2, v2, v3

    iput v2, p0, Labcd/Ob$a;->v5:I

    iget v2, p0, Labcd/Ob$a;->v5:I

    if-eqz v2, :cond_4

    iget v2, p0, Labcd/Ob$a;->v5:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_4

    iget v0, p0, Labcd/Ob$a;->v5:I

    if-ne v0, v4, :cond_3

    const/4 v0, 0x0

    iput v0, p0, Labcd/Ob$a;->v5:I

    :cond_3
    iget-object v0, p0, Labcd/Ob$a;->gn:Labcd/Ob;

    invoke-static {v0}, Labcd/Ob;->DW(Labcd/Ob;)[Ljava/lang/Object;

    move-result-object v0

    iget v2, p0, Labcd/Ob$a;->FH:I

    aget-object v0, v0, v2

    iput-object v0, p0, Labcd/Ob$a;->Zo:Ljava/lang/Object;

    iget v0, p0, Labcd/Ob$a;->FH:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Ob$a;->FH:I

    move v0, v1

    goto :goto_1

    :cond_4
    iget v2, p0, Labcd/Ob$a;->FH:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Labcd/Ob$a;->FH:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ob$a;->DW:Z

    if-eqz v1, :cond_5

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_5
    throw v0

    :cond_6
    :try_start_1
    iget v2, p0, Labcd/Ob$a;->FH:I

    iget v3, p0, Labcd/Ob$a;->Hw:I

    add-int/2addr v2, v3

    iget-object v3, p0, Labcd/Ob$a;->gn:Labcd/Ob;

    invoke-static {v3}, Labcd/Ob;->j6(Labcd/Ob;)[I

    move-result-object v3

    array-length v3, v3

    rem-int/2addr v2, v3

    iput v2, p0, Labcd/Ob$a;->FH:I

    :cond_7
    iget-object v2, p0, Labcd/Ob$a;->gn:Labcd/Ob;

    invoke-static {v2}, Labcd/Ob;->j6(Labcd/Ob;)[I

    move-result-object v2

    iget v3, p0, Labcd/Ob$a;->FH:I

    aget v2, v2, v3

    iput v2, p0, Labcd/Ob$a;->v5:I

    iget v2, p0, Labcd/Ob$a;->v5:I

    if-eqz v2, :cond_1

    iget v2, p0, Labcd/Ob$a;->v5:I

    iget v3, p0, Labcd/Ob$a;->VH:I

    if-ne v2, v3, :cond_6

    iget v0, p0, Labcd/Ob$a;->v5:I

    if-ne v0, v4, :cond_8

    const/4 v0, 0x0

    iput v0, p0, Labcd/Ob$a;->v5:I

    :cond_8
    iget-object v0, p0, Labcd/Ob$a;->gn:Labcd/Ob;

    invoke-static {v0}, Labcd/Ob;->DW(Labcd/Ob;)[Ljava/lang/Object;

    move-result-object v0

    iget v2, p0, Labcd/Ob$a;->FH:I

    aget-object v0, v0, v2

    iput-object v0, p0, Labcd/Ob$a;->Zo:Ljava/lang/Object;

    iget v0, p0, Labcd/Ob$a;->FH:I

    iget v2, p0, Labcd/Ob$a;->Hw:I

    add-int/2addr v0, v2

    iget-object v2, p0, Labcd/Ob$a;->gn:Labcd/Ob;

    invoke-static {v2}, Labcd/Ob;->j6(Labcd/Ob;)[I

    move-result-object v2

    array-length v2, v2

    rem-int/2addr v0, v2

    iput v0, p0, Labcd/Ob$a;->FH:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    goto/16 :goto_1
.end method

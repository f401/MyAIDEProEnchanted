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
    .registers 3

    const-class v0, Labcd/Ob$a;

    const-wide v1, -0xe21f5f95bd1c0e0L  # -3.129712156685194E240

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Labcd/Ob;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x29ff2e15742d49L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x5b5eea159534dbdL

    :try_start_6
    sget-boolean v3, Labcd/Ob$a;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Labcd/Ob$a;->gn:Labcd/Ob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput v3, p0, Labcd/Ob$a;->FH:I

    iput v3, p0, Labcd/Ob$a;->Hw:I
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v3

    sget-boolean v4, Labcd/Ob$a;->DW:Z

    if-eqz v4, :cond_20

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v3
.end method

.method synthetic constructor <init>(Labcd/Ob;Labcd/Nb;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Ob$a;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x240357e9d7ded04L  # -5.197810289720237E297

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Labcd/Ob$a;-><init>(Labcd/Ob;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v0

    sget-boolean v1, Labcd/Ob$a;->DW:Z

    if-eqz v1, :cond_22

    const-wide v2, -0x240357e9d7ded04L  # -5.197810289720237E297

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

    const-wide v0, -0x115f79f4d1338280L  # -7.64524954002801E224

    :try_start_5
    sget-boolean v2, Labcd/Ob$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    iput v2, p0, Labcd/Ob$a;->FH:I

    iput v2, p0, Labcd/Ob$a;->Hw:I
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Labcd/Ob$a;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public FH()I
    .registers 5

    const-wide v0, -0x1e7a1318b9134948L  # -6.165031408826983E161

    :try_start_5
    sget-boolean v2, Labcd/Ob$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Labcd/Ob$a;->v5:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/Ob$a;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public Hw()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const-wide v0, -0x2d917c15c2cac160L  # -1.2140771401867234E89

    :try_start_5
    sget-boolean v2, Labcd/Ob$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Labcd/Ob$a;->Zo:Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/Ob$a;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public j6()Z
    .registers 9

    const-wide v0, -0x373ea31200edf6e0L

    :try_start_5
    sget-boolean v2, Labcd/Ob$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/Ob$a;->Hw:I

    const v3, 0x7fffffff

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_4c

    :goto_15
    iget v2, p0, Labcd/Ob$a;->FH:I

    iget-object v6, p0, Labcd/Ob$a;->gn:Labcd/Ob;

    invoke-static {v6}, Labcd/Ob;->j6(Labcd/Ob;)[I

    move-result-object v6

    array-length v6, v6

    if-lt v2, v6, :cond_21

    return v5

    :cond_21
    iget-object v2, p0, Labcd/Ob$a;->gn:Labcd/Ob;

    invoke-static {v2}, Labcd/Ob;->j6(Labcd/Ob;)[I

    move-result-object v2

    iget v6, p0, Labcd/Ob$a;->FH:I

    aget v2, v2, v6

    iput v2, p0, Labcd/Ob$a;->v5:I

    if-eqz v2, :cond_47

    const/high16 v7, -0x80000000

    if-eq v2, v7, :cond_47

    if-ne v2, v3, :cond_37

    iput v5, p0, Labcd/Ob$a;->v5:I

    :cond_37
    iget-object v2, p0, Labcd/Ob$a;->gn:Labcd/Ob;

    invoke-static {v2}, Labcd/Ob;->DW(Labcd/Ob;)[Ljava/lang/Object;

    move-result-object v2

    iget v3, p0, Labcd/Ob$a;->FH:I

    aget-object v2, v2, v3

    iput-object v2, p0, Labcd/Ob$a;->Zo:Ljava/lang/Object;

    add-int/2addr v3, v4

    iput v3, p0, Labcd/Ob$a;->FH:I

    return v4

    :cond_47
    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Labcd/Ob$a;->FH:I

    goto :goto_15

    :cond_4c
    :goto_4c
    iget-object v2, p0, Labcd/Ob$a;->gn:Labcd/Ob;

    invoke-static {v2}, Labcd/Ob;->j6(Labcd/Ob;)[I

    move-result-object v2

    iget v6, p0, Labcd/Ob$a;->FH:I

    aget v2, v2, v6

    iput v2, p0, Labcd/Ob$a;->v5:I

    if-nez v2, :cond_5b

    return v5

    :cond_5b
    iget v7, p0, Labcd/Ob$a;->VH:I

    if-ne v2, v7, :cond_7d

    if-ne v2, v3, :cond_63

    iput v5, p0, Labcd/Ob$a;->v5:I

    :cond_63
    iget-object v2, p0, Labcd/Ob$a;->gn:Labcd/Ob;

    invoke-static {v2}, Labcd/Ob;->DW(Labcd/Ob;)[Ljava/lang/Object;

    move-result-object v2

    iget v3, p0, Labcd/Ob$a;->FH:I

    aget-object v2, v2, v3

    iput-object v2, p0, Labcd/Ob$a;->Zo:Ljava/lang/Object;

    iget v2, p0, Labcd/Ob$a;->Hw:I

    add-int/2addr v3, v2

    iget-object v2, p0, Labcd/Ob$a;->gn:Labcd/Ob;

    invoke-static {v2}, Labcd/Ob;->j6(Labcd/Ob;)[I

    move-result-object v2

    array-length v2, v2

    rem-int/2addr v3, v2

    iput v3, p0, Labcd/Ob$a;->FH:I

    return v4

    :cond_7d
    iget v2, p0, Labcd/Ob$a;->Hw:I

    add-int/2addr v6, v2

    iget-object v2, p0, Labcd/Ob$a;->gn:Labcd/Ob;

    invoke-static {v2}, Labcd/Ob;->j6(Labcd/Ob;)[I

    move-result-object v2

    array-length v2, v2

    rem-int/2addr v6, v2

    iput v6, p0, Labcd/Ob$a;->FH:I
    :try_end_8a
    .catchall {:try_start_5 .. :try_end_8a} :catchall_8b

    goto :goto_4c

    :catchall_8b
    move-exception v2

    sget-boolean v3, Labcd/Ob$a;->DW:Z

    if-eqz v3, :cond_93

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_93
    goto :goto_95

    :goto_94
    throw v2

    :goto_95
    goto :goto_94
.end method

.class public Labcd/Fb$a;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Fb;
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
        field = -0x1a66f64c75cacc5cL
    .end annotation
.end field

.field private Hw:I
    .annotation runtime Labcd/ru;
        field = 0x1b94545d4c1b7f6cL
    .end annotation
.end field

.field private VH:I
    .annotation runtime Labcd/ru;
        field = -0x93df36b65320000L
    .end annotation
.end field

.field private Zo:I
    .annotation runtime Labcd/ru;
        field = -0x13cf017ec74da4bbL
    .end annotation
.end field

.field final gn:Labcd/Fb;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field private v5:I
    .annotation runtime Labcd/ru;
        field = -0x1280b26aa06d9d01L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Fb$a;

    const-wide v1, 0x44df6e67c967401cL  # 5.937199257569933E23

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Labcd/Fb;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x444242a7eadc514bL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x29a51538240dec0L

    :try_start_6
    sget-boolean v3, Labcd/Fb$a;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Labcd/Fb$a;->gn:Labcd/Fb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput v3, p0, Labcd/Fb$a;->FH:I

    iput v3, p0, Labcd/Fb$a;->Hw:I
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v3

    sget-boolean v4, Labcd/Fb$a;->DW:Z

    if-eqz v4, :cond_20

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v3
.end method

.method synthetic constructor <init>(Labcd/Fb;Labcd/Eb;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Fb$a;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x5b12e0fbfc55280L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Labcd/Fb$a;-><init>(Labcd/Fb;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v0

    sget-boolean v1, Labcd/Fb$a;->DW:Z

    if-eqz v1, :cond_22

    const-wide v2, 0x5b12e0fbfc55280L

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

    const-wide v0, 0x12d1c90f1d35ceb0L  # 5.038328317905106E-218

    :try_start_5
    sget-boolean v2, Labcd/Fb$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    iput v2, p0, Labcd/Fb$a;->FH:I

    iput v2, p0, Labcd/Fb$a;->Hw:I
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Labcd/Fb$a;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public FH()Labcd/Aa;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    const-wide v0, 0x1d6b4042739f2c4cL

    :try_start_5
    sget-boolean v2, Labcd/Fb$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Fb$a;->gn:Labcd/Fb;

    invoke-static {v2}, Labcd/Fb;->j6(Labcd/Fb;)Labcd/Ba;

    move-result-object v2

    iget v3, p0, Labcd/Fb$a;->v5:I

    invoke-virtual {v2, v3}, Labcd/Ba;->FH(I)Labcd/Aa;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return-object v0

    :catchall_19
    move-exception v2

    sget-boolean v3, Labcd/Fb$a;->DW:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method public Hw()Labcd/Aa;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    const-wide v0, 0x31f8c570c27116a8L  # 5.7426049766145075E-68

    :try_start_5
    sget-boolean v2, Labcd/Fb$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Fb$a;->gn:Labcd/Fb;

    invoke-static {v2}, Labcd/Fb;->j6(Labcd/Fb;)Labcd/Ba;

    move-result-object v2

    iget v3, p0, Labcd/Fb$a;->Zo:I

    invoke-virtual {v2, v3}, Labcd/Ba;->FH(I)Labcd/Aa;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return-object v0

    :catchall_19
    move-exception v2

    sget-boolean v3, Labcd/Fb$a;->DW:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method public j6(Labcd/Aa;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    const-wide v0, 0x1041df84e7b1fa45L

    :try_start_5
    sget-boolean v2, Labcd/Fb$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Fb$a;->gn:Labcd/Fb;

    invoke-static {v2}, Labcd/Fb;->j6(Labcd/Fb;)Labcd/Ba;

    move-result-object v2

    invoke-virtual {v2, p1}, Labcd/Ba;->Hw(Labcd/Aa;)I

    move-result v2

    const v3, 0x7fffffff

    if-nez v2, :cond_1e

    const v2, 0x7fffffff

    :cond_1e
    iput v2, p0, Labcd/Fb$a;->VH:I

    and-int/2addr v2, v3

    iget-object v3, p0, Labcd/Fb$a;->gn:Labcd/Fb;

    invoke-static {v3}, Labcd/Fb;->DW(Labcd/Fb;)[I

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, -0x2

    rem-int v3, v2, v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Labcd/Fb$a;->Hw:I

    iget-object v3, p0, Labcd/Fb$a;->gn:Labcd/Fb;

    invoke-static {v3}, Labcd/Fb;->DW(Labcd/Fb;)[I

    move-result-object v3

    array-length v3, v3

    rem-int/2addr v2, v3

    iput v2, p0, Labcd/Fb$a;->FH:I
    :try_end_3a
    .catchall {:try_start_5 .. :try_end_3a} :catchall_3b

    return-void

    :catchall_3b
    move-exception v2

    sget-boolean v3, Labcd/Fb$a;->DW:Z

    if-eqz v3, :cond_43

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_43
    throw v2
.end method

.method public j6()Z
    .registers 9

    const-wide v0, 0xe1d3fe46927b8b8L

    :try_start_5
    sget-boolean v2, Labcd/Fb$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/Fb$a;->Hw:I

    const v3, 0x7fffffff

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_4c

    :goto_15
    iget v2, p0, Labcd/Fb$a;->FH:I

    iget-object v6, p0, Labcd/Fb$a;->gn:Labcd/Fb;

    invoke-static {v6}, Labcd/Fb;->DW(Labcd/Fb;)[I

    move-result-object v6

    array-length v6, v6

    if-lt v2, v6, :cond_21

    return v5

    :cond_21
    iget-object v2, p0, Labcd/Fb$a;->gn:Labcd/Fb;

    invoke-static {v2}, Labcd/Fb;->DW(Labcd/Fb;)[I

    move-result-object v2

    iget v6, p0, Labcd/Fb$a;->FH:I

    aget v2, v2, v6

    iput v2, p0, Labcd/Fb$a;->v5:I

    if-eqz v2, :cond_47

    const/high16 v7, -0x80000000

    if-eq v2, v7, :cond_47

    if-ne v2, v3, :cond_37

    iput v5, p0, Labcd/Fb$a;->v5:I

    :cond_37
    iget-object v2, p0, Labcd/Fb$a;->gn:Labcd/Fb;

    invoke-static {v2}, Labcd/Fb;->FH(Labcd/Fb;)[I

    move-result-object v2

    iget v3, p0, Labcd/Fb$a;->FH:I

    aget v2, v2, v3

    iput v2, p0, Labcd/Fb$a;->Zo:I

    add-int/2addr v3, v4

    iput v3, p0, Labcd/Fb$a;->FH:I

    return v4

    :cond_47
    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Labcd/Fb$a;->FH:I

    goto :goto_15

    :cond_4c
    :goto_4c
    iget-object v2, p0, Labcd/Fb$a;->gn:Labcd/Fb;

    invoke-static {v2}, Labcd/Fb;->DW(Labcd/Fb;)[I

    move-result-object v2

    iget v6, p0, Labcd/Fb$a;->FH:I

    aget v2, v2, v6

    iput v2, p0, Labcd/Fb$a;->v5:I

    if-nez v2, :cond_5b

    return v5

    :cond_5b
    iget v7, p0, Labcd/Fb$a;->VH:I

    if-ne v2, v7, :cond_7d

    if-ne v2, v3, :cond_63

    iput v5, p0, Labcd/Fb$a;->v5:I

    :cond_63
    iget-object v2, p0, Labcd/Fb$a;->gn:Labcd/Fb;

    invoke-static {v2}, Labcd/Fb;->FH(Labcd/Fb;)[I

    move-result-object v2

    iget v3, p0, Labcd/Fb$a;->FH:I

    aget v2, v2, v3

    iput v2, p0, Labcd/Fb$a;->Zo:I

    iget v2, p0, Labcd/Fb$a;->Hw:I

    add-int/2addr v3, v2

    iget-object v2, p0, Labcd/Fb$a;->gn:Labcd/Fb;

    invoke-static {v2}, Labcd/Fb;->DW(Labcd/Fb;)[I

    move-result-object v2

    array-length v2, v2

    rem-int/2addr v3, v2

    iput v3, p0, Labcd/Fb$a;->FH:I

    return v4

    :cond_7d
    iget v2, p0, Labcd/Fb$a;->Hw:I

    add-int/2addr v6, v2

    iget-object v2, p0, Labcd/Fb$a;->gn:Labcd/Fb;

    invoke-static {v2}, Labcd/Fb;->DW(Labcd/Fb;)[I

    move-result-object v2

    array-length v2, v2

    rem-int/2addr v6, v2

    iput v6, p0, Labcd/Fb$a;->FH:I
    :try_end_8a
    .catchall {:try_start_5 .. :try_end_8a} :catchall_8b

    goto :goto_4c

    :catchall_8b
    move-exception v2

    sget-boolean v3, Labcd/Fb$a;->DW:Z

    if-eqz v3, :cond_93

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_93
    goto :goto_95

    :goto_94
    throw v2

    :goto_95
    goto :goto_94
.end method

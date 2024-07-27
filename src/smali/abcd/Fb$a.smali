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
    .registers 4

    const-wide v2, 0x44df6e67c967401cL    # 5.937199257569933E23

    const-class v0, Labcd/Fb$a;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Labcd/Fb;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x444242a7eadc514bL
    .end annotation

    const-wide v4, -0x29a51538240dec0L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Fb$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x29a51538240dec0L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Labcd/Fb$a;->gn:Labcd/Fb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Labcd/Fb$a;->FH:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/Fb$a;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Fb$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method synthetic constructor <init>(Labcd/Fb;Labcd/Eb;)V
    .registers 10

    const-wide v2, 0x5b12e0fbfc55280L

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Fb$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x5b12e0fbfc55280L

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Labcd/Fb$a;-><init>(Labcd/Fb;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Fb$a;->DW:Z

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

    const-wide v2, 0x12d1c90f1d35ceb0L    # 5.038328317905106E-218

    :try_start_0
    sget-boolean v0, Labcd/Fb$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x12d1c90f1d35ceb0L    # 5.038328317905106E-218

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Labcd/Fb$a;->FH:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/Fb$a;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Fb$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH()Labcd/Aa;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    const-wide v2, 0x1d6b4042739f2c4cL

    :try_start_0
    sget-boolean v0, Labcd/Fb$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1d6b4042739f2c4cL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Fb$a;->gn:Labcd/Fb;

    invoke-static {v0}, Labcd/Fb;->j6(Labcd/Fb;)Labcd/Ba;

    move-result-object v0

    iget v1, p0, Labcd/Fb$a;->v5:I

    invoke-virtual {v0, v1}, Labcd/Ba;->FH(I)Labcd/Aa;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Fb$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw()Labcd/Aa;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    const-wide v2, 0x31f8c570c27116a8L    # 5.7426049766145075E-68

    :try_start_0
    sget-boolean v0, Labcd/Fb$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x31f8c570c27116a8L    # 5.7426049766145075E-68

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Fb$a;->gn:Labcd/Fb;

    invoke-static {v0}, Labcd/Fb;->j6(Labcd/Fb;)Labcd/Ba;

    move-result-object v0

    iget v1, p0, Labcd/Fb$a;->Zo:I

    invoke-virtual {v0, v1}, Labcd/Ba;->FH(I)Labcd/Aa;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Fb$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Labcd/Aa;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    const-wide v4, 0x1041df84e7b1fa45L

    const v1, 0x7fffffff

    :try_start_0
    sget-boolean v0, Labcd/Fb$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v2, 0x1041df84e7b1fa45L

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Fb$a;->gn:Labcd/Fb;

    invoke-static {v0}, Labcd/Fb;->j6(Labcd/Fb;)Labcd/Ba;

    move-result-object v0

    invoke-virtual {v0, p1}, Labcd/Ba;->Hw(Labcd/Aa;)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :cond_1
    iput v0, p0, Labcd/Fb$a;->VH:I

    and-int/2addr v0, v1

    iget-object v1, p0, Labcd/Fb$a;->gn:Labcd/Fb;

    invoke-static {v1}, Labcd/Fb;->DW(Labcd/Fb;)[I

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    rem-int v1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/Fb$a;->Hw:I

    iget-object v1, p0, Labcd/Fb$a;->gn:Labcd/Fb;

    invoke-static {v1}, Labcd/Fb;->DW(Labcd/Fb;)[I

    move-result-object v1

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Labcd/Fb$a;->FH:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Fb$a;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6()Z
    .registers 9

    const-wide v6, 0xe1d3fe46927b8b8L

    const v4, 0x7fffffff

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v2, Labcd/Fb$a;->j6:Z

    if-eqz v2, :cond_0

    const-wide v2, 0xe1d3fe46927b8b8L

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v2, p0, Labcd/Fb$a;->Hw:I

    if-nez v2, :cond_7

    :goto_0
    iget v2, p0, Labcd/Fb$a;->FH:I

    iget-object v3, p0, Labcd/Fb$a;->gn:Labcd/Fb;

    invoke-static {v3}, Labcd/Fb;->DW(Labcd/Fb;)[I

    move-result-object v3

    array-length v3, v3

    if-lt v2, v3, :cond_2

    :cond_1
    :goto_1
    return v0

    :cond_2
    iget-object v2, p0, Labcd/Fb$a;->gn:Labcd/Fb;

    invoke-static {v2}, Labcd/Fb;->DW(Labcd/Fb;)[I

    move-result-object v2

    iget v3, p0, Labcd/Fb$a;->FH:I

    aget v2, v2, v3

    iput v2, p0, Labcd/Fb$a;->v5:I

    iget v2, p0, Labcd/Fb$a;->v5:I

    if-eqz v2, :cond_4

    iget v2, p0, Labcd/Fb$a;->v5:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_4

    iget v0, p0, Labcd/Fb$a;->v5:I

    if-ne v0, v4, :cond_3

    const/4 v0, 0x0

    iput v0, p0, Labcd/Fb$a;->v5:I

    :cond_3
    iget-object v0, p0, Labcd/Fb$a;->gn:Labcd/Fb;

    invoke-static {v0}, Labcd/Fb;->FH(Labcd/Fb;)[I

    move-result-object v0

    iget v2, p0, Labcd/Fb$a;->FH:I

    aget v0, v0, v2

    iput v0, p0, Labcd/Fb$a;->Zo:I

    iget v0, p0, Labcd/Fb$a;->FH:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Fb$a;->FH:I

    move v0, v1

    goto :goto_1

    :cond_4
    iget v2, p0, Labcd/Fb$a;->FH:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Labcd/Fb$a;->FH:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Fb$a;->DW:Z

    if-eqz v1, :cond_5

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_5
    throw v0

    :cond_6
    :try_start_1
    iget v2, p0, Labcd/Fb$a;->FH:I

    iget v3, p0, Labcd/Fb$a;->Hw:I

    add-int/2addr v2, v3

    iget-object v3, p0, Labcd/Fb$a;->gn:Labcd/Fb;

    invoke-static {v3}, Labcd/Fb;->DW(Labcd/Fb;)[I

    move-result-object v3

    array-length v3, v3

    rem-int/2addr v2, v3

    iput v2, p0, Labcd/Fb$a;->FH:I

    :cond_7
    iget-object v2, p0, Labcd/Fb$a;->gn:Labcd/Fb;

    invoke-static {v2}, Labcd/Fb;->DW(Labcd/Fb;)[I

    move-result-object v2

    iget v3, p0, Labcd/Fb$a;->FH:I

    aget v2, v2, v3

    iput v2, p0, Labcd/Fb$a;->v5:I

    iget v2, p0, Labcd/Fb$a;->v5:I

    if-eqz v2, :cond_1

    iget v2, p0, Labcd/Fb$a;->v5:I

    iget v3, p0, Labcd/Fb$a;->VH:I

    if-ne v2, v3, :cond_6

    iget v0, p0, Labcd/Fb$a;->v5:I

    if-ne v0, v4, :cond_8

    const/4 v0, 0x0

    iput v0, p0, Labcd/Fb$a;->v5:I

    :cond_8
    iget-object v0, p0, Labcd/Fb$a;->gn:Labcd/Fb;

    invoke-static {v0}, Labcd/Fb;->FH(Labcd/Fb;)[I

    move-result-object v0

    iget v2, p0, Labcd/Fb$a;->FH:I

    aget v0, v0, v2

    iput v0, p0, Labcd/Fb$a;->Zo:I

    iget v0, p0, Labcd/Fb$a;->FH:I

    iget v2, p0, Labcd/Fb$a;->Hw:I

    add-int/2addr v0, v2

    iget-object v2, p0, Labcd/Fb$a;->gn:Labcd/Fb;

    invoke-static {v2}, Labcd/Fb;->DW(Labcd/Fb;)[I

    move-result-object v2

    array-length v2, v2

    rem-int/2addr v0, v2

    iput v0, p0, Labcd/Fb$a;->FH:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    goto/16 :goto_1
.end method

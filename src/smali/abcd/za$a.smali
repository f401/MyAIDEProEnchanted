.class Labcd/za$a;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/za$c;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/za;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
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
.field private FH:[B
    .annotation runtime Labcd/ru;
        field = -0x4d2b1ca13f3142bL
    .end annotation
.end field

.field private Hw:I
    .annotation runtime Labcd/ru;
        field = -0x138effe4bcc75cacL
    .end annotation
.end field

.field final v5:Labcd/za;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x74a5c344f7ad1a0L

    const-class v0, Labcd/za$a;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Labcd/za;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x2a6dbeb7f26dfd0L
    .end annotation

    const-wide v4, -0x3ee16347c3169b39L    # -501550.05948407616

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/za$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3ee16347c3169b39L    # -501550.05948407616

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Labcd/za$a;->v5:Labcd/za;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/za$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method synthetic constructor <init>(Labcd/za;Labcd/wa;)V
    .registers 10

    const-wide v2, 0x34afc912cccc00c3L    # 6.481552936748153E-55

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/za$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x34afc912cccc00c3L    # 6.481552936748153E-55

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Labcd/za$a;-><init>(Labcd/za;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/za$a;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method static synthetic j6(Labcd/za$a;)I
    .registers 2

    iget v0, p0, Labcd/za$a;->Hw:I

    return v0
.end method


# virtual methods
.method public j6(Ljava/io/OutputStream;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x793b6ba41959178L
    .end annotation

    const-wide v4, -0x6e52ae6cafec40L

    :try_start_0
    sget-boolean v0, Labcd/za$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x6e52ae6cafec40L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/za$a;->FH:[B

    const/4 v1, 0x0

    iget v2, p0, Labcd/za$a;->Hw:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/za$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6([BI)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x158b44b1fdc39268L
    .end annotation

    const-wide v2, 0xcc716c4dd225d0L

    :try_start_0
    sget-boolean v0, Labcd/za$a;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0xcc716c4dd225d0L

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/za$a;->FH:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/za$a;->FH:[B

    array-length v0, v0

    if-le p2, v0, :cond_2

    :cond_1
    mul-int/lit8 v0, p2, 0x5

    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Labcd/za$a;->FH:[B

    :cond_2
    const/4 v0, 0x0

    iget-object v1, p0, Labcd/za$a;->FH:[B

    const/4 v4, 0x0

    invoke-static {p1, v0, v1, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p2, p0, Labcd/za$a;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/za$a;->DW:Z

    if-eqz v0, :cond_3

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

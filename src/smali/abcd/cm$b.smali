.class Labcd/cm$b;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/cm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
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
.field private final FH:[B
    .annotation runtime Labcd/ru;
        field = 0x1bb74b9ee25e82c3L
    .end annotation
.end field

.field private final Hw:[B
    .annotation runtime Labcd/ru;
        field = 0x1bb7c24ca9b63044L
    .end annotation
.end field

.field private final v5:I
    .annotation runtime Labcd/ru;
        field = 0x2448a82e83fee194L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x45abd5bc80f3c15L

    const-class v0, Labcd/cm$b;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x6263d3467a4ab0cL
    .end annotation

    const-wide v8, -0x4829b6b3262e9d2bL    # -1.0233380360784582E-39

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/16 v5, 0x100

    :try_start_0
    sget-boolean v0, Labcd/cm$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v2, -0x4829b6b3262e9d2bL    # -1.0233380360784582E-39

    const/4 v0, 0x0

    invoke-static {v2, v3, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Labcd/cm$b;->FH:[B

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Labcd/cm$b;->Hw:[B

    array-length v0, p1

    const/4 v2, 0x1

    if-lt v0, v2, :cond_2

    array-length v0, p1

    if-gt v0, v5, :cond_2

    array-length v0, p1

    iput v0, p0, Labcd/cm$b;->v5:I

    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_1

    iget-object v2, p0, Labcd/cm$b;->FH:[B

    int-to-byte v3, v0

    aput-byte v3, v2, v0

    iget-object v2, p0, Labcd/cm$b;->Hw:[B

    iget v3, p0, Labcd/cm$b;->v5:I

    rem-int v3, v0, v3

    aget-byte v3, p1, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_4

    iget-object v1, p0, Labcd/cm$b;->FH:[B

    aget-byte v1, v1, v2

    add-int/2addr v0, v1

    iget-object v1, p0, Labcd/cm$b;->Hw:[B

    aget-byte v1, v1, v2

    add-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Labcd/cm$b;->FH:[B

    aget-byte v1, v1, v0

    iget-object v3, p0, Labcd/cm$b;->FH:[B

    iget-object v4, p0, Labcd/cm$b;->FH:[B

    aget-byte v4, v4, v2

    aput-byte v4, v3, v0

    iget-object v3, p0, Labcd/cm$b;->FH:[B

    aput-byte v1, v3, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key must be between 1 and 256 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/cm$b;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v8, v9, v6, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    return-void
.end method


# virtual methods
.method public DW([B)[B
    .registers 12
    .annotation runtime Labcd/su;
        method = -0xba9a4af985f7a29L
    .end annotation

    const-wide v8, 0x216de0c0bdbe8c3L

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Labcd/cm$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v2, 0x216de0c0bdbe8c3L

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    array-length v0, p1

    new-array v4, v0, [B

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_0
    array-length v1, p1

    if-ge v3, v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Labcd/cm$b;->FH:[B

    aget-byte v1, v1, v0

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Labcd/cm$b;->FH:[B

    aget-byte v2, v2, v1

    iget-object v5, p0, Labcd/cm$b;->FH:[B

    iget-object v6, p0, Labcd/cm$b;->FH:[B

    aget-byte v6, v6, v0

    aput-byte v6, v5, v1

    iget-object v5, p0, Labcd/cm$b;->FH:[B

    aput-byte v2, v5, v0

    iget-object v2, p0, Labcd/cm$b;->FH:[B

    aget-byte v2, v2, v0

    iget-object v5, p0, Labcd/cm$b;->FH:[B

    aget-byte v5, v5, v1

    iget-object v6, p0, Labcd/cm$b;->FH:[B

    add-int/2addr v2, v5

    and-int/lit16 v2, v2, 0xff

    aget-byte v2, v6, v2

    aget-byte v5, p1, v3

    xor-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v4, v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    move v2, v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/cm$b;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v8, v9, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    return-object v4
.end method

.method public j6([B)[B
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x9a0498937708f7fL
    .end annotation

    const-wide v2, 0x260a373b5ad6411L

    :try_start_0
    sget-boolean v0, Labcd/cm$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x260a373b5ad6411L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1}, Labcd/cm$b;->DW([B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/cm$b;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

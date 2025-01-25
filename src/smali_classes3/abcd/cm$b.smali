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
    .registers 3

    const-class v0, Labcd/cm$b;

    const-wide v1, 0x45abd5bc80f3c15L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x6263d3467a4ab0cL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x4829b6b3262e9d2bL  # -1.0233380360784582E-39

    :try_start_6
    sget-boolean v3, Labcd/cm$b;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v3, 0x100

    new-array v4, v3, [B

    iput-object v4, p0, Labcd/cm$b;->FH:[B

    new-array v4, v3, [B

    iput-object v4, p0, Labcd/cm$b;->Hw:[B

    array-length v4, p1

    const/4 v5, 0x1

    if-lt v4, v5, :cond_53

    array-length v4, p1

    if-gt v4, v3, :cond_53

    array-length v4, p1

    iput v4, p0, Labcd/cm$b;->v5:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_26
    if-ge v5, v3, :cond_3a

    iget-object v6, p0, Labcd/cm$b;->FH:[B

    int-to-byte v7, v5

    aput-byte v7, v6, v5

    iget-object v6, p0, Labcd/cm$b;->Hw:[B

    iget v7, p0, Labcd/cm$b;->v5:I

    rem-int v7, v5, v7

    aget-byte v7, p1, v7

    aput-byte v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    :cond_3a
    const/4 v5, 0x0

    :goto_3b
    if-ge v4, v3, :cond_52

    iget-object v6, p0, Labcd/cm$b;->FH:[B

    aget-byte v7, v6, v4

    add-int/2addr v5, v7

    iget-object v8, p0, Labcd/cm$b;->Hw:[B

    aget-byte v8, v8, v4

    add-int/2addr v5, v8

    and-int/lit16 v5, v5, 0xff

    aget-byte v8, v6, v5

    aput-byte v7, v6, v5

    aput-byte v8, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    :cond_52
    return-void

    :cond_53
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "key must be between 1 and 256 bytes"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_5b
    .catchall {:try_start_6 .. :try_end_5b} :catchall_5b

    :catchall_5b
    move-exception v3

    sget-boolean v4, Labcd/cm$b;->DW:Z

    if-eqz v4, :cond_63

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_63
    goto :goto_65

    :goto_64
    throw v3

    :goto_65
    goto :goto_64
.end method


# virtual methods
.method public DW([B)[B
    .registers 11
    .annotation runtime Labcd/su;
        method = -0xba9a4af985f7a29L
    .end annotation

    const-wide v0, 0x216de0c0bdbe8c3L

    :try_start_5
    sget-boolean v2, Labcd/cm$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    array-length v2, p1

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_12
    array-length v6, p1

    if-ge v3, v6, :cond_36

    add-int/lit8 v4, v4, 0x1

    and-int/lit16 v4, v4, 0xff

    iget-object v6, p0, Labcd/cm$b;->FH:[B

    aget-byte v7, v6, v4

    add-int/2addr v5, v7

    and-int/lit16 v5, v5, 0xff

    aget-byte v8, v6, v5

    aput-byte v7, v6, v5

    aput-byte v8, v6, v4

    aget-byte v7, v6, v5

    add-int/2addr v8, v7

    and-int/lit16 v7, v8, 0xff

    aget-byte v6, v6, v7

    aget-byte v7, p1, v3

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v2, v3
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_37

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_36
    return-object v2

    :catchall_37
    move-exception v2

    sget-boolean v3, Labcd/cm$b;->DW:Z

    if-eqz v3, :cond_3f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3f
    goto :goto_41

    :goto_40
    throw v2

    :goto_41
    goto :goto_40
.end method

.method public j6([B)[B
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x9a0498937708f7fL
    .end annotation

    const-wide v0, 0x260a373b5ad6411L

    :try_start_5
    sget-boolean v2, Labcd/cm$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p0, p1}, Labcd/cm$b;->DW([B)[B

    move-result-object p1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return-object p1

    :catchall_11
    move-exception v2

    sget-boolean v3, Labcd/cm$b;->DW:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    throw v2
.end method

.class Lcom/crashlytics/android/answers/z;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/nz;


# instance fields
.field final DW:Ljava/util/Random;

.field final FH:D

.field final j6:Labcd/nz;


# direct methods
.method public constructor <init>(Labcd/nz;D)V
    .registers 5

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/crashlytics/android/answers/z;-><init>(Labcd/nz;DLjava/util/Random;)V

    return-void
.end method

.method public constructor <init>(Labcd/nz;DLjava/util/Random;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmpg-double v2, p2, v0

    if-ltz v2, :cond_2a

    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    cmpl-double v2, p2, v0

    if-gtz v2, :cond_2a

    if-eqz p1, :cond_22

    if-eqz p4, :cond_1a

    iput-object p1, p0, Lcom/crashlytics/android/answers/z;->j6:Labcd/nz;

    iput-wide p2, p0, Lcom/crashlytics/android/answers/z;->FH:D

    iput-object p4, p0, Lcom/crashlytics/android/answers/z;->DW:Ljava/util/Random;

    return-void

    :cond_1a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "random must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_22
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "backoff must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "jitterPercent must be between 0.0 and 1.0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method j6()D
    .registers 7

    iget-wide v0, p0, Lcom/crashlytics/android/answers/z;->FH:D

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    sub-double v4, v2, v0

    add-double/2addr v0, v2

    sub-double/2addr v0, v4

    iget-object v2, p0, Lcom/crashlytics/android/answers/z;->DW:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    mul-double v0, v0, v2

    add-double/2addr v4, v0

    return-wide v4
.end method

.method public j6(I)J
    .registers 6

    invoke-virtual {p0}, Lcom/crashlytics/android/answers/z;->j6()D

    move-result-wide v0

    iget-object v2, p0, Lcom/crashlytics/android/answers/z;->j6:Labcd/nz;

    invoke-interface {v2, p1}, Labcd/nz;->j6(I)J

    move-result-wide v2

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

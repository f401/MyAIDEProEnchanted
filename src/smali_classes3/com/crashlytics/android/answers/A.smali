.class Lcom/crashlytics/android/answers/A;
.super Ljava/lang/Object;


# instance fields
.field private DW:Labcd/rz;

.field j6:J


# direct methods
.method public constructor <init>(Labcd/rz;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    iput-object p1, p0, Lcom/crashlytics/android/answers/A;->DW:Labcd/rz;

    return-void

    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "retryState must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public DW(J)V
    .registers 3

    iput-wide p1, p0, Lcom/crashlytics/android/answers/A;->j6:J

    iget-object p1, p0, Lcom/crashlytics/android/answers/A;->DW:Labcd/rz;

    invoke-virtual {p1}, Labcd/rz;->FH()Labcd/rz;

    move-result-object p1

    iput-object p1, p0, Lcom/crashlytics/android/answers/A;->DW:Labcd/rz;

    return-void
.end method

.method public j6()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/crashlytics/android/answers/A;->j6:J

    iget-object v0, p0, Lcom/crashlytics/android/answers/A;->DW:Labcd/rz;

    invoke-virtual {v0}, Labcd/rz;->DW()Labcd/rz;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/answers/A;->DW:Labcd/rz;

    return-void
.end method

.method public j6(J)Z
    .registers 7

    iget-object v0, p0, Lcom/crashlytics/android/answers/A;->DW:Labcd/rz;

    invoke-virtual {v0}, Labcd/rz;->j6()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/crashlytics/android/answers/A;->j6:J

    sub-long/2addr p1, v2

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    cmp-long v2, p1, v0

    if-ltz v2, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

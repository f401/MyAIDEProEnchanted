.class Lcom/crashlytics/android/answers/A;
.super Ljava/lang/Object;


# instance fields
.field private DW:Labcd/rz;

.field j6:J


# direct methods
.method public constructor <init>(Labcd/rz;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/crashlytics/android/answers/A;->DW:Labcd/rz;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "retryState must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public DW(J)V
    .registers 4

    iput-wide p1, p0, Lcom/crashlytics/android/answers/A;->j6:J

    iget-object v0, p0, Lcom/crashlytics/android/answers/A;->DW:Labcd/rz;

    invoke-virtual {v0}, Labcd/rz;->FH()Labcd/rz;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/answers/A;->DW:Labcd/rz;

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
    .registers 10

    iget-object v0, p0, Lcom/crashlytics/android/answers/A;->DW:Labcd/rz;

    invoke-virtual {v0}, Labcd/rz;->j6()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/crashlytics/android/answers/A;->j6:J

    sub-long v2, p1, v2

    const-wide/32 v4, 0xf4240

    mul-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

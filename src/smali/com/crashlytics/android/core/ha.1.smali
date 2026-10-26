.class Lcom/crashlytics/android/core/ha;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/Lz;


# instance fields
.field private final j6:Lcom/crashlytics/android/core/Da;


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/core/Da;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/crashlytics/android/core/ha;->j6:Lcom/crashlytics/android/core/Da;

    return-void
.end method


# virtual methods
.method public DW()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/crashlytics/android/core/ha;->j6:Lcom/crashlytics/android/core/Da;

    invoke-interface {v0}, Lcom/crashlytics/android/core/Da;->DW()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public FH()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/crashlytics/android/core/ha;->j6:Lcom/crashlytics/android/core/Da;

    invoke-interface {v0}, Lcom/crashlytics/android/core/Da;->FH()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Hw()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public j6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/crashlytics/android/core/ha;->j6:Lcom/crashlytics/android/core/Da;

    invoke-interface {v0}, Lcom/crashlytics/android/core/Da;->j6()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class final Lcom/crashlytics/android/answers/J;
.super Ljava/lang/Object;


# instance fields
.field public final DW:Ljava/lang/String;

.field private EQ:Ljava/lang/String;

.field public final FH:Ljava/lang/String;

.field public final Hw:Ljava/lang/Boolean;

.field public final VH:Ljava/lang/String;

.field public final Zo:Ljava/lang/String;

.field public final gn:Ljava/lang/String;

.field public final j6:Ljava/lang/String;

.field public final tp:Ljava/lang/String;

.field public final u7:Ljava/lang/String;

.field public final v5:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/crashlytics/android/answers/J;->j6:Ljava/lang/String;

    iput-object p2, p0, Lcom/crashlytics/android/answers/J;->DW:Ljava/lang/String;

    iput-object p3, p0, Lcom/crashlytics/android/answers/J;->FH:Ljava/lang/String;

    iput-object p4, p0, Lcom/crashlytics/android/answers/J;->Hw:Ljava/lang/Boolean;

    iput-object p5, p0, Lcom/crashlytics/android/answers/J;->v5:Ljava/lang/String;

    iput-object p6, p0, Lcom/crashlytics/android/answers/J;->Zo:Ljava/lang/String;

    iput-object p7, p0, Lcom/crashlytics/android/answers/J;->VH:Ljava/lang/String;

    iput-object p8, p0, Lcom/crashlytics/android/answers/J;->gn:Ljava/lang/String;

    iput-object p9, p0, Lcom/crashlytics/android/answers/J;->u7:Ljava/lang/String;

    iput-object p10, p0, Lcom/crashlytics/android/answers/J;->tp:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/crashlytics/android/answers/J;->EQ:Ljava/lang/String;

    if-nez v0, :cond_73

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appBundleId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/crashlytics/android/answers/J;->j6:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", executionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/crashlytics/android/answers/J;->DW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", installationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/crashlytics/android/answers/J;->FH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", limitAdTrackingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/crashlytics/android/answers/J;->Hw:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", betaDeviceToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/crashlytics/android/answers/J;->v5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", buildId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/crashlytics/android/answers/J;->Zo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", osVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/crashlytics/android/answers/J;->VH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/crashlytics/android/answers/J;->gn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appVersionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/crashlytics/android/answers/J;->u7:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appVersionName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/crashlytics/android/answers/J;->tp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/answers/J;->EQ:Ljava/lang/String;

    :cond_73
    iget-object v0, p0, Lcom/crashlytics/android/answers/J;->EQ:Ljava/lang/String;

    return-object v0
.end method

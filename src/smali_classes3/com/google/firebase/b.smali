.class public final Lcom/google/firebase/b;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Ljava/lang/String;

.field private final FH:Ljava/lang/String;

.field private final Hw:Ljava/lang/String;

.field private final VH:Ljava/lang/String;

.field private final Zo:Ljava/lang/String;

.field private final j6:Ljava/lang/String;

.field private final v5:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/util/s;->j6(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "ApplicationId must be set."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/r;->DW(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/firebase/b;->DW:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/firebase/b;->j6:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/b;->FH:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/firebase/b;->Hw:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/firebase/b;->v5:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/firebase/b;->Zo:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/firebase/b;->VH:Ljava/lang/String;

    return-void
.end method

.method public static j6(Landroid/content/Context;)Lcom/google/firebase/b;
    .registers 10

    new-instance v0, Lcom/google/android/gms/common/internal/StringResourceValueReader;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/StringResourceValueReader;-><init>(Landroid/content/Context;)V

    const-string p0, "google_app_id"

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/internal/StringResourceValueReader;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_13

    const/4 p0, 0x0

    return-object p0

    :cond_13
    new-instance p0, Lcom/google/firebase/b;

    const-string v1, "google_api_key"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/StringResourceValueReader;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "firebase_database_url"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/StringResourceValueReader;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "ga_trackingId"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/StringResourceValueReader;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "gcm_defaultSenderId"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/StringResourceValueReader;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "google_storage_bucket"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/StringResourceValueReader;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "project_id"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/StringResourceValueReader;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/google/firebase/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final DW()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/b;->v5:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lcom/google/firebase/b;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lcom/google/firebase/b;

    iget-object v0, p0, Lcom/google/firebase/b;->DW:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/firebase/b;->DW:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/q;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/google/firebase/b;->j6:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/firebase/b;->j6:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/q;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/google/firebase/b;->FH:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/firebase/b;->FH:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/q;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/google/firebase/b;->Hw:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/firebase/b;->Hw:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/q;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/google/firebase/b;->v5:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/firebase/b;->v5:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/q;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/google/firebase/b;->Zo:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/firebase/b;->Zo:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/q;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/google/firebase/b;->VH:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/firebase/b;->VH:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/q;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_50

    const/4 p1, 0x1

    return p1

    :cond_50
    return v1
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/firebase/b;->DW:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/firebase/b;->j6:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/firebase/b;->FH:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/firebase/b;->Hw:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/firebase/b;->v5:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/firebase/b;->Zo:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/firebase/b;->VH:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/q;->j6([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final j6()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/b;->DW:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/q;->j6(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/q$a;

    move-result-object v0

    const-string v1, "applicationId"

    iget-object v2, p0, Lcom/google/firebase/b;->DW:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/q$a;->j6(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/q$a;

    const-string v1, "apiKey"

    iget-object v2, p0, Lcom/google/firebase/b;->j6:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/q$a;->j6(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/q$a;

    const-string v1, "databaseUrl"

    iget-object v2, p0, Lcom/google/firebase/b;->FH:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/q$a;->j6(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/q$a;

    const-string v1, "gcmSenderId"

    iget-object v2, p0, Lcom/google/firebase/b;->v5:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/q$a;->j6(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/q$a;

    const-string v1, "storageBucket"

    iget-object v2, p0, Lcom/google/firebase/b;->Zo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/q$a;->j6(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/q$a;

    const-string v1, "projectId"

    iget-object v2, p0, Lcom/google/firebase/b;->VH:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/q$a;->j6(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/q$a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/q$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

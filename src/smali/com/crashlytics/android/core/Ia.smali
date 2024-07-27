.class Lcom/crashlytics/android/core/Ia;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crashlytics/android/core/ra;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crashlytics/android/core/Ia$a;
    }
.end annotation


# instance fields
.field private final DW:I

.field private FH:Lio/fabric/sdk/android/services/common/z;

.field private final j6:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/crashlytics/android/core/Ia;->j6:Ljava/io/File;

    iput p2, p0, Lcom/crashlytics/android/core/Ia;->DW:I

    return-void
.end method

.method private DW(JLjava/lang/String;)V
    .registers 11

    iget-object v0, p0, Lcom/crashlytics/android/core/Ia;->FH:Lio/fabric/sdk/android/services/common/z;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p3, :cond_3

    const-string v0, "null"

    :goto_1
    :try_start_0
    iget v1, p0, Lcom/crashlytics/android/core/Ia;->DW:I

    div-int/lit8 v1, v1, 0x4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v1, v3, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string v1, "\r"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%d %s%n"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/crashlytics/android/core/Ia;->FH:Lio/fabric/sdk/android/services/common/z;

    invoke-virtual {v1, v0}, Lio/fabric/sdk/android/services/common/z;->j6([B)V

    :goto_2
    iget-object v0, p0, Lcom/crashlytics/android/core/Ia;->FH:Lio/fabric/sdk/android/services/common/z;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/z;->DW()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/core/Ia;->FH:Lio/fabric/sdk/android/services/common/z;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/z;->Hw()I

    move-result v0

    iget v1, p0, Lcom/crashlytics/android/core/Ia;->DW:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/core/Ia;->FH:Lio/fabric/sdk/android/services/common/z;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/z;->FH()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "There was a problem writing to the Crashlytics log."

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    move-object v0, p3

    goto :goto_1
.end method

.method private Zo()V
    .registers 5

    iget-object v0, p0, Lcom/crashlytics/android/core/Ia;->FH:Lio/fabric/sdk/android/services/common/z;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lio/fabric/sdk/android/services/common/z;

    iget-object v1, p0, Lcom/crashlytics/android/core/Ia;->j6:Ljava/io/File;

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/services/common/z;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/crashlytics/android/core/Ia;->FH:Lio/fabric/sdk/android/services/common/z;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not open log file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/crashlytics/android/core/Ia;->j6:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "CrashlyticsCore"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2, v0}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private v5()Lcom/crashlytics/android/core/Ia$a;
    .registers 8

    const/4 v0, 0x0

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/crashlytics/android/core/Ia;->j6:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/crashlytics/android/core/Ia;->Zo()V

    iget-object v1, p0, Lcom/crashlytics/android/core/Ia;->FH:Lio/fabric/sdk/android/services/common/z;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    new-array v2, v0, [I

    aput v6, v2, v6

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/common/z;->Hw()I

    move-result v0

    new-array v1, v0, [B

    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/core/Ia;->FH:Lio/fabric/sdk/android/services/common/z;

    new-instance v3, Lcom/crashlytics/android/core/Ha;

    invoke-direct {v3, p0, v1, v2}, Lcom/crashlytics/android/core/Ha;-><init>(Lcom/crashlytics/android/core/Ia;[B[I)V

    invoke-virtual {v0, v3}, Lio/fabric/sdk/android/services/common/z;->j6(Lio/fabric/sdk/android/services/common/z$c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Lcom/crashlytics/android/core/Ia$a;

    aget v2, v2, v6

    invoke-direct {v0, p0, v1, v2}, Lcom/crashlytics/android/core/Ia$a;-><init>(Lcom/crashlytics/android/core/Ia;[BI)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v3

    const-string v4, "CrashlyticsCore"

    const-string v5, "A problem occurred while reading the Crashlytics log file."

    invoke-interface {v3, v4, v5, v0}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public DW()Lcom/crashlytics/android/core/d;
    .registers 4

    invoke-direct {p0}, Lcom/crashlytics/android/core/Ia;->v5()Lcom/crashlytics/android/core/Ia$a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, v0, Lcom/crashlytics/android/core/Ia$a;->j6:[B

    const/4 v2, 0x0

    iget v0, v0, Lcom/crashlytics/android/core/Ia$a;->DW:I

    invoke-static {v1, v2, v0}, Lcom/crashlytics/android/core/d;->j6([BII)Lcom/crashlytics/android/core/d;

    move-result-object v0

    goto :goto_0
.end method

.method public FH()[B
    .registers 2

    invoke-direct {p0}, Lcom/crashlytics/android/core/Ia;->v5()Lcom/crashlytics/android/core/Ia$a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/crashlytics/android/core/Ia$a;->j6:[B

    goto :goto_0
.end method

.method public Hw()V
    .registers 2

    invoke-virtual {p0}, Lcom/crashlytics/android/core/Ia;->j6()V

    iget-object v0, p0, Lcom/crashlytics/android/core/Ia;->j6:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public j6()V
    .registers 3

    iget-object v0, p0, Lcom/crashlytics/android/core/Ia;->FH:Lio/fabric/sdk/android/services/common/z;

    const-string v1, "There was a problem closing the Crashlytics log file."

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/crashlytics/android/core/Ia;->FH:Lio/fabric/sdk/android/services/common/z;

    return-void
.end method

.method public j6(JLjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lcom/crashlytics/android/core/Ia;->Zo()V

    invoke-direct {p0, p1, p2, p3}, Lcom/crashlytics/android/core/Ia;->DW(JLjava/lang/String;)V

    return-void
.end method

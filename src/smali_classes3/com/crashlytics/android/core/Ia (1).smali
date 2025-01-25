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
    .registers 8

    const-string v0, " "

    iget-object v1, p0, Lcom/crashlytics/android/core/Ia;->FH:Lio/fabric/sdk/android/services/common/z;

    if-nez v1, :cond_7

    return-void

    :cond_7
    if-nez p3, :cond_b

    const-string p3, "null"

    :cond_b
    :try_start_b
    iget v1, p0, Lcom/crashlytics/android/core/Ia;->DW:I

    div-int/lit8 v1, v1, 0x4

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_2f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p3, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_2f
    const-string v1, "\r"

    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "\n"

    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%d %s%n"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v2, p2

    const/4 p1, 0x1

    aput-object p3, v2, p1

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "UTF-8"

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    iget-object p2, p0, Lcom/crashlytics/android/core/Ia;->FH:Lio/fabric/sdk/android/services/common/z;

    invoke-virtual {p2, p1}, Lio/fabric/sdk/android/services/common/z;->j6([B)V

    :goto_5b
    iget-object p1, p0, Lcom/crashlytics/android/core/Ia;->FH:Lio/fabric/sdk/android/services/common/z;

    invoke-virtual {p1}, Lio/fabric/sdk/android/services/common/z;->DW()Z

    move-result p1

    if-nez p1, :cond_7f

    iget-object p1, p0, Lcom/crashlytics/android/core/Ia;->FH:Lio/fabric/sdk/android/services/common/z;

    invoke-virtual {p1}, Lio/fabric/sdk/android/services/common/z;->Hw()I

    move-result p1

    iget p2, p0, Lcom/crashlytics/android/core/Ia;->DW:I

    if-le p1, p2, :cond_7f

    iget-object p1, p0, Lcom/crashlytics/android/core/Ia;->FH:Lio/fabric/sdk/android/services/common/z;

    invoke-virtual {p1}, Lio/fabric/sdk/android/services/common/z;->FH()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_72} :catch_73

    goto :goto_5b

    :catch_73
    move-exception p1

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p2

    const-string p3, "CrashlyticsCore"

    const-string v0, "There was a problem writing to the Crashlytics log."

    invoke-interface {p2, p3, v0, p1}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7f
    return-void
.end method

.method private Zo()V
    .registers 5

    iget-object v0, p0, Lcom/crashlytics/android/core/Ia;->FH:Lio/fabric/sdk/android/services/common/z;

    if-nez v0, :cond_2b

    :try_start_4
    new-instance v0, Lio/fabric/sdk/android/services/common/z;

    iget-object v1, p0, Lcom/crashlytics/android/core/Ia;->j6:Ljava/io/File;

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/services/common/z;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/crashlytics/android/core/Ia;->FH:Lio/fabric/sdk/android/services/common/z;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_d} :catch_e

    goto :goto_2b

    :catch_e
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

    :cond_2b
    :goto_2b
    return-void
.end method

.method private v5()Lcom/crashlytics/android/core/Ia$a;
    .registers 8

    iget-object v0, p0, Lcom/crashlytics/android/core/Ia;->j6:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    :cond_a
    invoke-direct {p0}, Lcom/crashlytics/android/core/Ia;->Zo()V

    iget-object v0, p0, Lcom/crashlytics/android/core/Ia;->FH:Lio/fabric/sdk/android/services/common/z;

    if-nez v0, :cond_12

    return-object v1

    :cond_12
    const/4 v1, 0x0

    filled-new-array {v1}, [I

    move-result-object v2

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/z;->Hw()I

    move-result v0

    new-array v0, v0, [B

    :try_start_1d
    iget-object v3, p0, Lcom/crashlytics/android/core/Ia;->FH:Lio/fabric/sdk/android/services/common/z;

    new-instance v4, Lcom/crashlytics/android/core/Ha;

    invoke-direct {v4, p0, v0, v2}, Lcom/crashlytics/android/core/Ha;-><init>(Lcom/crashlytics/android/core/Ia;[B[I)V

    invoke-virtual {v3, v4}, Lio/fabric/sdk/android/services/common/z;->j6(Lio/fabric/sdk/android/services/common/z$c;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_27} :catch_28

    goto :goto_34

    :catch_28
    move-exception v3

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v4

    const-string v5, "CrashlyticsCore"

    const-string v6, "A problem occurred while reading the Crashlytics log file."

    invoke-interface {v4, v5, v6, v3}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_34
    new-instance v3, Lcom/crashlytics/android/core/Ia$a;

    aget v1, v2, v1

    invoke-direct {v3, p0, v0, v1}, Lcom/crashlytics/android/core/Ia$a;-><init>(Lcom/crashlytics/android/core/Ia;[BI)V

    return-object v3
.end method


# virtual methods
.method public DW()Lcom/crashlytics/android/core/d;
    .registers 4

    invoke-direct {p0}, Lcom/crashlytics/android/core/Ia;->v5()Lcom/crashlytics/android/core/Ia$a;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_11

    :cond_8
    iget-object v1, v0, Lcom/crashlytics/android/core/Ia$a;->j6:[B

    const/4 v2, 0x0

    iget v0, v0, Lcom/crashlytics/android/core/Ia$a;->DW:I

    invoke-static {v1, v2, v0}, Lcom/crashlytics/android/core/d;->j6([BII)Lcom/crashlytics/android/core/d;

    move-result-object v0

    :goto_11
    return-object v0
.end method

.method public FH()[B
    .registers 2

    invoke-direct {p0}, Lcom/crashlytics/android/core/Ia;->v5()Lcom/crashlytics/android/core/Ia$a;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_a

    :cond_8
    iget-object v0, v0, Lcom/crashlytics/android/core/Ia$a;->j6:[B

    :goto_a
    return-object v0
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
    .registers 4

    invoke-direct {p0}, Lcom/crashlytics/android/core/Ia;->Zo()V

    invoke-direct {p0, p1, p2, p3}, Lcom/crashlytics/android/core/Ia;->DW(JLjava/lang/String;)V

    return-void
.end method

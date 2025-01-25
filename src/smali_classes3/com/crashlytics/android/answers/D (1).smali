.class Lcom/crashlytics/android/answers/D;
.super Labcd/uz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Luz<",
        "Lcom/crashlytics/android/answers/I;",
        ">;"
    }
.end annotation


# instance fields
.field private gn:Labcd/Tz;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/crashlytics/android/answers/K;Lio/fabric/sdk/android/services/common/k;Labcd/vz;)V
    .registers 11

    const/16 v5, 0x64

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Labcd/uz;-><init>(Landroid/content/Context;Labcd/sz;Lio/fabric/sdk/android/services/common/k;Labcd/vz;I)V

    return-void
.end method


# virtual methods
.method protected FH()Ljava/lang/String;
    .registers 5

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sa"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Labcd/uz;->FH:Lio/fabric/sdk/android/services/common/k;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/common/k;->j6()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ".tap"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected Zo()I
    .registers 2

    iget-object v0, p0, Lcom/crashlytics/android/answers/D;->gn:Labcd/Tz;

    if-nez v0, :cond_9

    invoke-super {p0}, Labcd/uz;->Zo()I

    move-result v0

    goto :goto_b

    :cond_9
    iget v0, v0, Labcd/Tz;->v5:I

    :goto_b
    return v0
.end method

.method j6(Labcd/Tz;)V
    .registers 2

    iput-object p1, p0, Lcom/crashlytics/android/answers/D;->gn:Labcd/Tz;

    return-void
.end method

.method protected v5()I
    .registers 2

    iget-object v0, p0, Lcom/crashlytics/android/answers/D;->gn:Labcd/Tz;

    if-nez v0, :cond_9

    invoke-super {p0}, Labcd/uz;->v5()I

    move-result v0

    goto :goto_b

    :cond_9
    iget v0, v0, Labcd/Tz;->FH:I

    :goto_b
    return v0
.end method

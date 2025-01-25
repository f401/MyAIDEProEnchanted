.class Lcom/crashlytics/android/core/L;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crashlytics/android/core/W$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/W;->v5(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:I

.field final FH:J

.field final Hw:J

.field final VH:I

.field final Zo:Ljava/util/Map;

.field final gn:Lcom/crashlytics/android/core/W;

.field final j6:I

.field final v5:Z


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/W;IIJJZLjava/util/Map;I)V
    .registers 11

    iput-object p1, p0, Lcom/crashlytics/android/core/L;->gn:Lcom/crashlytics/android/core/W;

    iput p2, p0, Lcom/crashlytics/android/core/L;->j6:I

    iput p3, p0, Lcom/crashlytics/android/core/L;->DW:I

    iput-wide p4, p0, Lcom/crashlytics/android/core/L;->FH:J

    iput-wide p6, p0, Lcom/crashlytics/android/core/L;->Hw:J

    iput-boolean p8, p0, Lcom/crashlytics/android/core/L;->v5:Z

    iput-object p9, p0, Lcom/crashlytics/android/core/L;->Zo:Ljava/util/Map;

    iput p10, p0, Lcom/crashlytics/android/core/L;->VH:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Ljava/io/FileOutputStream;)V
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Lcom/crashlytics/android/core/K;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/core/K;-><init>(Lcom/crashlytics/android/core/L;)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/FileOutputStream;->write([B)V

    return-void
.end method

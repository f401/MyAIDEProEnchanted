.class Lcom/crashlytics/android/core/B;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crashlytics/android/core/W$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/W;->j6(Ljava/lang/String;Ljava/util/Date;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Ljava/lang/String;

.field final FH:J

.field final Hw:Lcom/crashlytics/android/core/W;

.field final j6:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/W;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6

    iput-object p1, p0, Lcom/crashlytics/android/core/B;->Hw:Lcom/crashlytics/android/core/W;

    iput-object p2, p0, Lcom/crashlytics/android/core/B;->j6:Ljava/lang/String;

    iput-object p3, p0, Lcom/crashlytics/android/core/B;->DW:Ljava/lang/String;

    iput-wide p4, p0, Lcom/crashlytics/android/core/B;->FH:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Ljava/io/FileOutputStream;)V
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Lcom/crashlytics/android/core/A;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/core/A;-><init>(Lcom/crashlytics/android/core/B;)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/FileOutputStream;->write([B)V

    return-void
.end method

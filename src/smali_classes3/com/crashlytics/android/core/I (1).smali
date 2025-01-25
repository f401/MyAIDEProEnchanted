.class Lcom/crashlytics/android/core/I;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crashlytics/android/core/W$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/W;->Zo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Lcom/crashlytics/android/core/W;

.field final j6:Z


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/W;Z)V
    .registers 3

    iput-object p1, p0, Lcom/crashlytics/android/core/I;->DW:Lcom/crashlytics/android/core/W;

    iput-boolean p2, p0, Lcom/crashlytics/android/core/I;->j6:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Ljava/io/FileOutputStream;)V
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Lcom/crashlytics/android/core/H;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/core/H;-><init>(Lcom/crashlytics/android/core/I;)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/FileOutputStream;->write([B)V

    return-void
.end method

.class Lcom/crashlytics/android/core/F;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crashlytics/android/core/W$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/W;->Hw(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Ljava/lang/String;

.field final FH:Ljava/lang/String;

.field final Hw:Ljava/lang/String;

.field final Zo:Lcom/crashlytics/android/core/W;

.field final j6:Ljava/lang/String;

.field final v5:I


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/W;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    iput-object p1, p0, Lcom/crashlytics/android/core/F;->Zo:Lcom/crashlytics/android/core/W;

    iput-object p2, p0, Lcom/crashlytics/android/core/F;->j6:Ljava/lang/String;

    iput-object p3, p0, Lcom/crashlytics/android/core/F;->DW:Ljava/lang/String;

    iput-object p4, p0, Lcom/crashlytics/android/core/F;->FH:Ljava/lang/String;

    iput-object p5, p0, Lcom/crashlytics/android/core/F;->Hw:Ljava/lang/String;

    iput p6, p0, Lcom/crashlytics/android/core/F;->v5:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Ljava/io/FileOutputStream;)V
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Lcom/crashlytics/android/core/E;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/core/E;-><init>(Lcom/crashlytics/android/core/F;)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/FileOutputStream;->write([B)V

    return-void
.end method

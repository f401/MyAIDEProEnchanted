.class public final Lcom/google/android/gms/internal/ads/_d;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# static fields
.field public static final DW:Lcom/google/android/gms/internal/ads/Yd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Yd",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final FH:Lcom/google/android/gms/internal/ads/Wd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Wd",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private static final j6:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/_d;->j6:Ljava/nio/charset/Charset;

    new-instance v0, Lcom/google/android/gms/internal/ads/be;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/be;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/_d;->DW:Lcom/google/android/gms/internal/ads/Yd;

    sget-object v0, Lcom/google/android/gms/internal/ads/ae;->j6:Lcom/google/android/gms/internal/ads/Wd;

    sput-object v0, Lcom/google/android/gms/internal/ads/_d;->FH:Lcom/google/android/gms/internal/ads/Wd;

    return-void
.end method

.method static final synthetic j6(Lorg/json/JSONObject;)Ljava/io/InputStream;
    .registers 4

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/_d;->j6:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.class final Lcom/google/android/gms/internal/ads/kC;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/AD;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/AD<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/hC;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/kC;-><init>()V

    return-void
.end method

.method private static DW(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Long;
    .registers 4

    new-instance p0, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    :try_start_e
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p1, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0
    :try_end_28
    .catch Ljava/text/ParseException; {:try_start_e .. :try_end_28} :catch_2d

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :catch_2d
    move-exception p0

    new-instance p1, Lcom/google/android/gms/internal/ads/My;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public final synthetic j6(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 3

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/kC;->DW(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

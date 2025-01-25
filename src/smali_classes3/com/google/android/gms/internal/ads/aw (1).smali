.class public final Lcom/google/android/gms/internal/ads/aw;
.super Ljava/lang/Object;


# static fields
.field private static final DW:Ljava/nio/charset/Charset;

.field public static final FH:Ljava/lang/Object;

.field protected static final j6:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/aw;->j6:Ljava/nio/charset/Charset;

    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/aw;->DW:Ljava/nio/charset/Charset;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/aw;->FH:Ljava/lang/Object;

    return-void
.end method

.method public static j6(Lcom/google/android/gms/internal/ads/Xv;Lcom/google/android/gms/internal/ads/Xv;)V
    .registers 2

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/Xv;->DW:Lcom/google/android/gms/internal/ads/Zv;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Zv;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/Zv;

    iput-object p0, p1, Lcom/google/android/gms/internal/ads/Xv;->DW:Lcom/google/android/gms/internal/ads/Zv;

    :cond_c
    return-void
.end method

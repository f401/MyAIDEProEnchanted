.class public final Lcom/google/android/gms/internal/measurement/Hb;
.super Ljava/lang/Object;


# static fields
.field private static final DW:Ljava/nio/charset/Charset;

.field public static final FH:[B

.field private static final Hw:Ljava/nio/ByteBuffer;

.field static final j6:Ljava/nio/charset/Charset;

.field private static final v5:Lcom/google/android/gms/internal/measurement/hb;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/Hb;->j6:Ljava/nio/charset/Charset;

    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/Hb;->DW:Ljava/nio/charset/Charset;

    new-array v0, v2, [B

    sput-object v0, Lcom/google/android/gms/internal/measurement/Hb;->FH:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/Hb;->Hw:Ljava/nio/ByteBuffer;

    sget-object v0, Lcom/google/android/gms/internal/measurement/Hb;->FH:[B

    array-length v1, v0

    invoke-static {v0, v2, v1, v2}, Lcom/google/android/gms/internal/measurement/hb;->j6([BIIZ)Lcom/google/android/gms/internal/measurement/hb;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/Hb;->v5:Lcom/google/android/gms/internal/measurement/hb;

    return-void
.end method

.method public static DW([B)Z
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/bd;->j6([B)Z

    move-result v0

    return v0
.end method

.method public static FH([B)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/measurement/Hb;->j6:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method static j6(I[BII)I
    .registers 7

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    mul-int/lit8 v1, p0, 0x1f

    aget-byte v2, p1, v0

    add-int p0, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p0
.end method

.method public static j6(J)I
    .registers 4

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static j6(Z)I
    .registers 2

    if-eqz p0, :cond_0

    const/16 v0, 0x4cf

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x4d5

    goto :goto_0
.end method

.method public static j6([B)I
    .registers 3

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, v0}, Lcom/google/android/gms/internal/measurement/Hb;->j6(I[BII)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static j6(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method static j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p0, Lcom/google/android/gms/internal/measurement/lc;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/lc;->DW()Lcom/google/android/gms/internal/measurement/mc;

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/measurement/lc;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/mc;->j6(Lcom/google/android/gms/internal/measurement/lc;)Lcom/google/android/gms/internal/measurement/mc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/mc;->Ws()Lcom/google/android/gms/internal/measurement/lc;

    move-result-object v0

    return-object v0
.end method

.method static j6(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static j6(Lcom/google/android/gms/internal/measurement/lc;)Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

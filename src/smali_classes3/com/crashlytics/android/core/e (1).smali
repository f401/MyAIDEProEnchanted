.class Lcom/crashlytics/android/core/e;
.super Ljava/lang/Object;


# static fields
.field private static DW:Ljava/lang/String;

.field private static final j6:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/crashlytics/android/core/e;->j6:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Lio/fabric/sdk/android/services/common/v;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [B

    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/e;->FH([B)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/e;->DW([B)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/e;->j6([B)V

    invoke-virtual {p1}, Lio/fabric/sdk/android/services/common/v;->Hw()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/fabric/sdk/android/services/common/i;->FH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/i;->j6([B)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0xc

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/16 v5, 0x10

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v2, v7

    const/16 v6, 0x14

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v5, 0x2

    aput-object v0, v2, v5

    const/4 v0, 0x3

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    const-string p1, "%s-%s-%s-%s"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/crashlytics/android/core/e;->DW:Ljava/lang/String;

    return-void
.end method

.method private DW([B)V
    .registers 5

    sget-object v0, Lcom/crashlytics/android/core/e;->j6:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/crashlytics/android/core/e;->DW(J)[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/4 v2, 0x6

    aput-byte v1, p1, v2

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    const/4 v1, 0x7

    aput-byte v0, p1, v1

    return-void
.end method

.method private static DW(J)[B
    .registers 3

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    long-to-int p1, p0

    int-to-short p0, p1

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    sget-object p0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method private FH([B)V
    .registers 11

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v4, v0, v2

    invoke-static {v4, v5}, Lcom/crashlytics/android/core/e;->j6(J)[B

    move-result-object v4

    const/4 v5, 0x0

    aget-byte v6, v4, v5

    aput-byte v6, p1, v5

    const/4 v6, 0x1

    aget-byte v7, v4, v6

    aput-byte v7, p1, v6

    const/4 v7, 0x2

    aget-byte v8, v4, v7

    aput-byte v8, p1, v7

    const/4 v7, 0x3

    aget-byte v4, v4, v7

    aput-byte v4, p1, v7

    rem-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/crashlytics/android/core/e;->DW(J)[B

    move-result-object v0

    const/4 v1, 0x4

    aget-byte v2, v0, v5

    aput-byte v2, p1, v1

    const/4 v1, 0x5

    aget-byte v0, v0, v6

    aput-byte v0, p1, v1

    return-void
.end method

.method private j6([B)V
    .registers 5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->shortValue()S

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/crashlytics/android/core/e;->DW(J)[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/16 v2, 0x8

    aput-byte v1, p1, v2

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    const/16 v1, 0x9

    aput-byte v0, p1, v1

    return-void
.end method

.method private static j6(J)[B
    .registers 3

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    long-to-int p1, p0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    sget-object p0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/crashlytics/android/core/e;->DW:Ljava/lang/String;

    return-object v0
.end method

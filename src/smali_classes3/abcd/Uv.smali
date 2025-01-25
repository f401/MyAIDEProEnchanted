.class public Labcd/Uv;
.super Ljava/lang/Object;


# static fields
.field private static final DW:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/zip/CRC32;",
            ">;"
        }
    .end annotation
.end field

.field private static final j6:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/zip/Adler32;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/Sv;

    invoke-direct {v0}, Labcd/Sv;-><init>()V

    sput-object v0, Labcd/Uv;->j6:Ljava/lang/ThreadLocal;

    new-instance v0, Labcd/Tv;

    invoke-direct {v0}, Labcd/Tv;-><init>()V

    sput-object v0, Labcd/Uv;->DW:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static j6(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 7

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1b

    mul-int/lit8 v2, v2, 0x1f

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1b
    sget-object v1, Labcd/Uv;->j6:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/Adler32;

    invoke-virtual {v3}, Ljava/util/zip/Adler32;->reset()V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/Adler32;

    array-length v5, v3

    invoke-virtual {v4, v3, v0, v5}, Ljava/util/zip/Adler32;->update([BII)V

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/Adler32;

    invoke-virtual {v1}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v4

    mul-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x1

    int-to-long v1, v2

    mul-long v4, v4, v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v1, 0xa

    if-ge p0, v1, :cond_75

    sget-object p0, Labcd/Uv;->DW:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->reset()V

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/CRC32;

    array-length v2, v3

    invoke-virtual {v1, v3, v0, v2}, Ljava/util/zip/CRC32;->update([BII)V

    const-wide/16 v0, 0x1f

    mul-long v4, v4, v0

    const-wide/16 v0, 0x1

    add-long/2addr v4, v0

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/zip/CRC32;

    invoke-virtual {p0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    mul-long v4, v4, v0

    :cond_75
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Text_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

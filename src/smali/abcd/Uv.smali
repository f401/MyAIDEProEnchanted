.class public Labcd/Uv;
.super Ljava/lang/Object;


# static fields
.field private static final DW:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/zip/CRC32;",
            ">;"
        }
    .end annotation
.end field

.field private static final j6:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/zip/Adler32;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Labcd/Sv;

    invoke-direct {v0}, Labcd/Sv;-><init>()V

    sput-object v0, Labcd/Uv;->j6:Ljava/lang/ThreadLocal;

    new-instance v0, Labcd/Tv;

    invoke-direct {v0}, Labcd/Tv;-><init>()V

    sput-object v0, Labcd/Uv;->DW:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static j6(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 8

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    move v0, v1

    move v2, v1

    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    mul-int/lit8 v2, v2, 0x1f

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget-object v3, Labcd/Uv;->j6:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->reset()V

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/Adler32;

    array-length v6, v5

    invoke-virtual {v0, v5, v1, v6}, Ljava/util/zip/Adler32;->update([BII)V

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v6

    mul-int/lit8 v0, v2, 0x1f

    add-int/lit8 v0, v0, 0x1

    int-to-long v2, v0

    mul-long/2addr v2, v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0xa

    if-ge v0, v4, :cond_2

    sget-object v4, Labcd/Uv;->DW:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/CRC32;

    array-length v6, v5

    invoke-virtual {v0, v5, v1, v6}, Ljava/util/zip/CRC32;->update([BII)V

    const-wide/16 v0, 0x1f

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    mul-long/2addr v0, v2

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Text_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    move-wide v0, v2

    goto :goto_2
.end method

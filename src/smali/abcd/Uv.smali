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
    .registers 8

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    move v1, v2

    move v3, v2

    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v3, v0, :cond_1

    mul-int/lit8 v0, v1, 0x1f

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    sget-object v0, Labcd/Uv;->j6:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->reset()V

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    sget-object v0, Labcd/Uv;->j6:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/Adler32;

    array-length v4, v3

    invoke-virtual {v0, v3, v2, v4}, Ljava/util/zip/Adler32;->update([BII)V

    sget-object v0, Labcd/Uv;->j6:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v4

    mul-int/lit8 v0, v1, 0x1f

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    mul-long/2addr v4, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_2

    sget-object v0, Labcd/Uv;->DW:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    sget-object v0, Labcd/Uv;->DW:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/CRC32;

    array-length v1, v3

    invoke-virtual {v0, v3, v2, v1}, Ljava/util/zip/CRC32;->update([BII)V

    const-wide/16 v0, 0x1f

    mul-long/2addr v0, v4

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sget-object v0, Labcd/Uv;->DW:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

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
    move-wide v0, v4

    goto :goto_2
.end method
